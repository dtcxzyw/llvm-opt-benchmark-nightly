inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_cmap14_char_var_isdefault:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 8
  %i.bp = or disjoint i64 %i.bo, %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bp, %i.bs            ; 2 uses
  %i.bu = icmp samesign ugt i64 %i.bt, %i.bb
  br i1 %i.bu, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.bx = zext i8 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bt, %i.bx
  %i.bz = icmp samesign ult i64 %i.by, %i.bb
  br i1 %i.bz, label %bb.j, label %tt_cmap14_char_map_def_binary.exit

bb.j:                                             ; preds = %bb.i
  %i.ca = add nuw i32 %i.bd, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.228.i = phi i32 [ %i.bd, %bb.h ], [ %.02634.i, %bb.j ] ; 2 uses
  %.2.i31 = phi i32 [ %.02535.i, %bb.h ], [ %i.ca, %bb.j ] ; 2 uses
  %i.cb = icmp ult i32 %.2.i31, %.228.i
  br i1 %i.cb, label %bb.h, label %tt_cmap14_char_map_def_binary.exit.thread, !llvm.loop !97

tt_cmap14_char_map_def_binary.exit.thread:        ; preds = %bb.k, %bb.g, %bb.f
  %.not27 = icmp eq i64 %i.av, 0
  br i1 %.not27, label %tt_cmap14_char_map_nondef_binary.exit.thread, label %bb.l

bb.l:                                             ; preds = %tt_cmap14_char_map_def_binary.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 1            ; 2 uses
  %.not.i32 = icmp eq i32 %i.cd, 0
  br i1 %.not.i32, label %tt_cmap14_char_map_nondef_binary.exit.thread, label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %bb.l
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader, %bb.o
  %.02541.i = phi i32 [ %.2.i36, %bb.o ], [ 0, %.lr.ph.i33.preheader ] ; 2 uses
  %.02640.i = phi i32 [ %.228.i35, %bb.o ], [ %i.ce, %.lr.ph.i33.preheader ] ; 2 uses
  %i.cf = add i32 %.02640.i, %.02541.i
  %i.cg = lshr i32 %i.cf, 1                       ; 3 uses
  %i.ch = mul i32 %i.cg, 5
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ci ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 8
  %i.cs = or disjoint i32 %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 6
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !17
  %i.cv = zext i8 %i.cu to i32
  %i.cw = or disjoint i32 %i.cs, %i.cv            ; 2 uses
  %i.cx = icmp ult i32 %1, %i.cw
  br i1 %i.cx, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i33
  %i.cy = icmp ugt i32 %1, %i.cw
  br i1 %i.cy, label %bb.n, label %tt_cmap14_char_map_nondef_binary.exit

bb.n:                                             ; preds = %bb.m
  %i.cz = add nuw i32 %i.cg, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i33
  %.228.i35 = phi i32 [ %i.cg, %.lr.ph.i33 ], [ %.02640.i, %bb.n ] ; 2 uses
  %.2.i36 = phi i32 [ %.02541.i, %.lr.ph.i33 ], [ %i.cz, %bb.n ] ; 2 uses
  %i.da = icmp ult i32 %.2.i36, %.228.i35
  br i1 %i.da, label %.lr.ph.i33, label %tt_cmap14_char_map_nondef_binary.exit.thread, !llvm.loop !101

tt_cmap14_char_map_nondef_binary.exit:            ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %i.cj, i64 7
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !17
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !17
  %i.df = or i8 %i.de, %i.dc
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %tt_cmap14_char_map_nondef_binary.exit.thread, label %tt_cmap14_char_map_def_binary.exit

tt_cmap14_char_map_nondef_binary.exit.thread:     ; preds = %bb.o, %bb.l, %tt_cmap14_char_map_nondef_binary.exit, %tt_cmap14_char_map_def_binary.exit.thread
  br label %tt_cmap14_char_map_def_binary.exit

tt_cmap14_char_map_def_binary.exit:               ; preds = %bb.e, %bb.i, %bb.a, %tt_cmap14_char_map_nondef_binary.exit, %tt_cmap14_char_map_nondef_binary.exit.thread
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %tt_cmap14_char_map_nondef_binary.exit ], [ -1, %tt_cmap14_char_map_nondef_binary.exit.thread ], [ -1, %bb.a ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @tt_cmap14_variants(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !92   ; 6 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = add i32 %i.d, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !18
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge28

._crit_edge28:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !94
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.k, align 8, !tbaa !95
  %i.l = zext i32 %i.i to i64
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.p = call ptr @ft_mem_qrealloc(ptr noundef %1, i64 noundef 4, i64 noundef %i.l, i64 noundef %i.m, ptr noundef %i.o, ptr noundef nonnull %i.a) #27 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !94
  %i.q = load i32, ptr %i.a, align 4, !tbaa !18
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.c, label %tt_cmap14_ensure.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.h, align 8, !tbaa !93
  br label %bb.d

tt_cmap14_ensure.exit:                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge28, %bb.c
  %i.r = phi ptr [ %.pre, %._crit_edge28 ], [ %i.p, %bb.c ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 10 ; 2 uses
  %wide.trip.count = and i64 %i.c, 4294967295
  %xtraiter = and i64 %i.c, 1
  %i.t = icmp eq i64 %wide.trip.count, 1
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.02125 = phi ptr [ %i.s, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.u = load i8, ptr %.02125, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16
  %i.x = getelementptr inbounds nuw i8, ptr %.02125, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = or disjoint i32 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %.02125, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.02125, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 16
  %i.al = getelementptr inbounds nuw i8, ptr %.02125, i64 12
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 8
  %i.ap = or disjoint i32 %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %.02125, i64 13
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = zext i8 %i.ar to i32
  %i.at = or disjoint i32 %i.ap, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.02125, i64 22 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !102

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.02125.epil.init = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod31 = trunc i64 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ax = load i8, ptr %.02125.epil.init, align 1, !tbaa !17
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.02125.epil.init, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = or disjoint i32 %i.bd, %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %.02125.epil.init, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.be, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !18
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %i.bk = and i64 %i.c, 4294967295
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit
  %.0.lcssa = phi i64 [ %i.bk, %._crit_edge.loopexit ], [ 0, %bb.d ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0.lcssa
  store i32 0, ptr %i.bl, align 4, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %tt_cmap14_ensure.exit, %._crit_edge
  %.022 = phi ptr [ %i.r, %._crit_edge ], [ null, %tt_cmap14_ensure.exit ]
  ret ptr %.022
}

; Function Attrs: nounwind uwtable
define internal ptr @tt_cmap14_char_variants(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !92
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = add i32 %i.d, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !18
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge65

._crit_edge65:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !94
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.k, align 8, !tbaa !95
  %i.l = zext i32 %i.i to i64
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.p = call ptr @ft_mem_qrealloc(ptr noundef %1, i64 noundef 4, i64 noundef %i.l, i64 noundef %i.m, ptr noundef %i.o, ptr noundef nonnull %i.a) #27 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !94
  %i.q = load i32, ptr %i.a, align 4, !tbaa !18
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.c, label %tt_cmap14_ensure.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.h, align 8, !tbaa !93
  br label %bb.d

tt_cmap14_ensure.exit:                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.n

bb.d:                                             ; preds = %._crit_edge65, %bb.c
  %i.r = phi ptr [ %.pre, %._crit_edge65 ], [ %i.p, %bb.c ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not4260 = icmp eq i32 %i.d, 0
  br i1 %.not4260, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.t = zext i32 %2 to i64                       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %tt_cmap14_char_map_nondef_binary.exit.thread
  %.063 = phi ptr [ %i.r, %.lr.ph ], [ %.1, %tt_cmap14_char_map_nondef_binary.exit.thread ] ; 6 uses
  %.03762 = phi ptr [ %i.s, %.lr.ph ], [ %i.ai, %tt_cmap14_char_map_nondef_binary.exit.thread ] ; 9 uses
  %.03861 = phi i32 [ %i.d, %.lr.ph ], [ %i.do, %tt_cmap14_char_map_nondef_binary.exit.thread ]
  %i.u = load i8, ptr %.03762, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16
  %i.x = getelementptr inbounds nuw i8, ptr %.03762, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = or disjoint i32 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %.03762, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.03762, i64 3
  %i.ah = load i32, ptr %i.ag, align 1            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.03762, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %.03762, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 24
  %i.an = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 16
  %i.ar = or disjoint i64 %i.aq, %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %.03762, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = or disjoint i64 %i.ar, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.03762, i64 10
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.aw, %i.az            ; 2 uses
  %.not43 = icmp eq i32 %i.ah, 0
  br i1 %.not43, label %tt_cmap14_char_map_def_binary.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.bc = zext i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc ; 2 uses
  %i.bf = load i32, ptr %i.be, align 1            ; 2 uses
  %.not.i47 = icmp eq i32 %i.bf, 0
  br i1 %.not.i47, label %tt_cmap14_char_map_def_binary.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.bg = call i32 @llvm.bswap.i32(i32 %i.bf)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.i
  %.02535.i = phi i32 [ %.2.i, %bb.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.02634.i = phi i32 [ %.228.i, %bb.i ], [ %i.bg, %.lr.ph.i.preheader ] ; 2 uses
  %i.bh = add i32 %.02634.i, %.02535.i
  %i.bi = lshr i32 %i.bh, 1                       ; 3 uses
  %i.bj = shl i32 %i.bi, 2
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bk ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 8
  %i.bu = or disjoint i64 %i.bt, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.bx = zext i8 %i.bw to i64
  %i.by = or disjoint i64 %i.bu, %i.bx            ; 2 uses
  %i.bz = icmp samesign ugt i64 %i.by, %i.t
  br i1 %i.bz, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !17
  %i.cc = zext i8 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.by, %i.cc
  %i.ce = icmp samesign ult i64 %i.cd, %i.t
  br i1 %i.ce, label %bb.h, label %tt_cmap14_char_map_def_binary.exit

bb.h:                                             ; preds = %bb.g
  %i.cf = add nuw i32 %i.bi, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %.228.i = phi i32 [ %i.bi, %.lr.ph.i ], [ %.02634.i, %bb.h ] ; 2 uses
  %.2.i = phi i32 [ %.02535.i, %.lr.ph.i ], [ %i.cf, %bb.h ] ; 2 uses
  %i.cg = icmp ult i32 %.2.i, %.228.i
  br i1 %i.cg, label %.lr.ph.i, label %tt_cmap14_char_map_def_binary.exit.thread, !llvm.loop !97

tt_cmap14_char_map_def_binary.exit.thread:        ; preds = %bb.i, %bb.f, %bb.e
  %.not45 = icmp eq i64 %i.ba, 0
  br i1 %.not45, label %tt_cmap14_char_map_nondef_binary.exit.thread, label %bb.j

bb.j:                                             ; preds = %tt_cmap14_char_map_def_binary.exit.thread
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ba ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 1            ; 2 uses
end_hunk_0
begin_hunk_1_@tt_cmap14_char_variants:bb.a
bb.m:                                             ; preds = %bb.l, %.lr.ph.i49
  %.228.i51 = phi i32 [ %i.cm, %.lr.ph.i49 ], [ %.02640.i, %bb.l ] ; 2 uses
  %.2.i52 = phi i32 [ %.02541.i, %.lr.ph.i49 ], [ %i.df, %bb.l ] ; 2 uses
  %i.dg = icmp ult i32 %.2.i52, %.228.i51
  br i1 %i.dg, label %.lr.ph.i49, label %tt_cmap14_char_map_nondef_binary.exit.thread, !llvm.loop !101

tt_cmap14_char_map_nondef_binary.exit:            ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 7
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !17
  %i.dl = or i8 %i.dk, %i.di
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %tt_cmap14_char_map_nondef_binary.exit.thread, label %tt_cmap14_char_map_def_binary.exit

tt_cmap14_char_map_def_binary.exit:               ; preds = %bb.g, %tt_cmap14_char_map_nondef_binary.exit
  store i32 %i.af, ptr %.063, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.063, i64 4
  br label %tt_cmap14_char_map_nondef_binary.exit.thread

tt_cmap14_char_map_nondef_binary.exit.thread:     ; preds = %bb.m, %bb.j, %tt_cmap14_char_map_def_binary.exit, %tt_cmap14_char_map_nondef_binary.exit, %tt_cmap14_char_map_def_binary.exit.thread
  %.1 = phi ptr [ %i.dn, %tt_cmap14_char_map_def_binary.exit ], [ %.063, %tt_cmap14_char_map_nondef_binary.exit ], [ %.063, %tt_cmap14_char_map_def_binary.exit.thread ], [ %.063, %bb.j ], [ %.063, %bb.m ] ; 2 uses
  %i.do = add i32 %.03861, -1                     ; 2 uses
  %.not42 = icmp eq i32 %i.do, 0
  br i1 %.not42, label %._crit_edge, label %bb.e, !llvm.loop !103

._crit_edge:                                      ; preds = %tt_cmap14_char_map_nondef_binary.exit.thread, %bb.d
  %.0.lcssa = phi ptr [ %i.r, %bb.d ], [ %.1, %tt_cmap14_char_map_nondef_binary.exit.thread ]
  store i32 0, ptr %.0.lcssa, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %tt_cmap14_ensure.exit, %._crit_edge
  %.039 = phi ptr [ %i.r, %._crit_edge ], [ null, %tt_cmap14_ensure.exit ]
  ret ptr %.039
}

; Function Attrs: nounwind uwtable
define internal ptr @tt_cmap14_variant_chars(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 2 uses
  %i.g = load i32, ptr %i.f, align 1              ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %tt_cmap14_get_nondef_chars.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = zext i32 %2 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.02440.i = phi i32 [ 0, %.lr.ph.i ], [ %.2.i, %bb.e ] ; 2 uses
  %.02539.i = phi i32 [ %i.h, %.lr.ph.i ], [ %.227.i, %bb.e ] ; 2 uses
  %i.j = add i32 %.02539.i, %.02440.i
  %i.k = lshr i32 %i.j, 1                         ; 3 uses
  %i.l = mul i32 %i.k, 11
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = or disjoint i64 %i.v, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = zext i8 %i.y to i64
  %i.aa = or disjoint i64 %i.w, %i.z              ; 2 uses
  %i.ab = icmp samesign ugt i64 %i.aa, %i.i
  br i1 %i.ab, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp samesign ult i64 %i.aa, %i.i
  br i1 %i.ac, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ad = add nuw i32 %i.k, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.227.i = phi i32 [ %i.k, %bb.b ], [ %.02539.i, %bb.d ] ; 2 uses
  %.2.i = phi i32 [ %.02440.i, %bb.b ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ae = icmp ult i32 %.2.i, %.227.i
  br i1 %i.ae, label %bb.b, label %tt_cmap14_get_nondef_chars.exit, !llvm.loop !96

bb.f:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %i.ag = load i32, ptr %i.af, align 1            ; 2 uses
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.ak = load i32, ptr %i.aj, align 1            ; 2 uses
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp eq i32 %i.ag, 0                    ; 2 uses
  %i.ao = icmp eq i32 %i.ak, 0                    ; 2 uses
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %tt_cmap14_get_nondef_chars.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.an, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1            ; 3 uses
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq) ; 3 uses
  %i.as = add i32 %i.ar, 1                        ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !93 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %i.av = icmp ugt i32 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %._crit_edge30.i

._crit_edge30.i:                                  ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !94
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.aw, align 8, !tbaa !95
  %i.ax = zext i32 %i.au to i64
  %i.ay = zext i32 %i.as to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !94
  %i.bb = call ptr @ft_mem_qrealloc(ptr noundef %1, i64 noundef 4, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef %i.ba, ptr noundef nonnull %i.c) #27 ; 2 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !94
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !18
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %bb.j, label %tt_cmap14_ensure.exit.i

bb.j:                                             ; preds = %bb.i
  store i32 %i.as, ptr %i.at, align 8, !tbaa !93
  br label %bb.k

tt_cmap14_ensure.exit.i:                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %tt_cmap14_get_nondef_chars.exit

bb.k:                                             ; preds = %bb.j, %._crit_edge30.i
  %i.bd = phi ptr [ %.pre.i, %._crit_edge30.i ], [ %i.bb, %bb.j ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %.not.i182 = icmp eq i32 %i.aq, 0
  br i1 %.not.i182, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %wide.trip.count.i = zext i32 %i.ar to i64      ; 4 uses
  %xtraiter358 = and i64 %wide.trip.count.i, 1
  %i.bf = icmp eq i32 %i.aq, 16777216
  br i1 %i.bf, label %.lr.ph.i183.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter361 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %.lr.ph.i183, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i183 ] ; 3 uses
  %.02427.i = phi ptr [ %i.be, %.lr.ph.preheader.i.new ], [ %i.ci, %.lr.ph.i183 ] ; 7 uses
  %niter362 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter362.next.1, %.lr.ph.i183 ]
  %i.bg = load i8, ptr %.02427.i, align 1, !tbaa !17
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.02427.i, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = or disjoint i32 %i.bm, %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %.02427.i, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.02427.i, i64 5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !17
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.02427.i, i64 6
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  %i.bz = zext i8 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 8
  %i.cb = or disjoint i32 %i.ca, %i.bw
  %i.cc = getelementptr inbounds nuw i8, ptr %.02427.i, i64 7
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.ce = zext i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.02427.i, i64 10 ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter362.next.1 = add nuw i64 %niter362, 2     ; 2 uses
  %niter362.ncmp.1 = icmp eq i64 %niter362.next.1, %unroll_iter361
  br i1 %niter362.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i183, !llvm.loop !104

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i183
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %._crit_edge.i, label %.lr.ph.i183.epil.preheader

.lr.ph.i183.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02427.i.epil.init = phi ptr [ %i.be, %.lr.ph.preheader.i ], [ %i.ci, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod360 = trunc i32 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod360)
  %i.cj = load i8, ptr %.02427.i.epil.init, align 1, !tbaa !17
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.02427.i.epil.init, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !17
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 8
  %i.cq = or disjoint i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.02427.i.epil.init, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !17
  %i.ct = zext i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cq, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i.epil.init
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i183.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.k
  %.0.lcssa.i = phi i64 [ 0, %bb.k ], [ %wide.trip.count.i, %._crit_edge.i.loopexit.unr-lcssa ], [ %wide.trip.count.i, %.lr.ph.i183.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.0.lcssa.i
  store i32 0, ptr %i.cw, align 4, !tbaa !18
  br label %tt_cmap14_get_nondef_chars.exit

bb.l:                                             ; preds = %bb.g
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ai
  %i.cy = tail call fastcc ptr @tt_cmap14_get_def_chars(ptr noundef %0, ptr noundef nonnull %i.cx, ptr noundef %1)
  br label %tt_cmap14_get_nondef_chars.exit

bb.n:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ai ; 10 uses
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !17
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw i32 %i.dc, 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !17
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 16
  %i.di = or disjoint i32 %i.dh, %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !17
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = or disjoint i32 %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !17  ; 2 uses
  %i.dq = zext i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.dn, %i.dq            ; 10 uses
  %i.ds = load i8, ptr %i.da, align 1, !tbaa !17  ; 2 uses
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw i32 %i.dt, 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !17  ; 2 uses
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 16
  %i.dz = or disjoint i32 %i.dy, %i.du
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !17  ; 2 uses
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 8
  %i.ee = or disjoint i32 %i.dz, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.da, i64 3
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !17  ; 2 uses
  %i.eh = zext i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ee, %i.eh            ; 7 uses
  %.not13.i = icmp eq i32 %i.ei, 0
  br i1 %.not13.i, label %tt_cmap14_def_char_count.exit.thread, label %.lr.ph.preheader.i184

.lr.ph.preheader.i184:                            ; preds = %bb.n
  %i.ej = getelementptr inbounds nuw i8, ptr %i.da, i64 7 ; 11 uses
  %i.ek = zext i8 %i.ds to i64
  %i.el = shl nuw nsw i64 %i.ek, 24
  %i.em = zext i8 %i.dw to i64
  %i.en = shl nuw nsw i64 %i.em, 16
  %i.eo = zext i8 %i.eb to i64
  %i.ep = shl nuw nsw i64 %i.eo, 8
  %i.eq = zext i8 %i.eg to i64                    ; 2 uses
  %i.er = or disjoint i64 %i.el, %i.en
  %i.es = or disjoint i64 %i.er, %i.ep
  %i.et = or disjoint i64 %i.es, %i.eq            ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.et, 9
  br i1 %min.iters.check, label %.lr.ph.i185.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i184
  %i.eu = and i64 %i.eq, 7                        ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 0
  %i.ew = select i1 %i.ev, i64 8, i64 %i.eu
  %n.vec = sub nsw i64 %i.et, %i.ew               ; 3 uses
  %i.ex = trunc i64 %n.vec to i32
  %i.ey = sub i32 %i.ei, %i.ex
  %i.ez = shl nsw i64 %n.vec, 2
  %i.fa = getelementptr i8, ptr %i.ej, i64 %i.ez
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gd, %vector.body ]
  %vec.phi276 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ge, %vector.body ]
  %i.fb = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ej, i64 %i.fb
  %i.fc = getelementptr i8, ptr %i.ej, i64 %i.fb
  %next.gep277 = getelementptr i8, ptr %i.fc, i64 4
  %i.fd = getelementptr i8, ptr %i.ej, i64 %i.fb
  %next.gep278 = getelementptr i8, ptr %i.fd, i64 8
  %i.fe = getelementptr i8, ptr %i.ej, i64 %i.fb
  %next.gep279 = getelementptr i8, ptr %i.fe, i64 12
  %i.ff = getelementptr i8, ptr %i.ej, i64 %i.fb
  %next.gep280 = getelementptr i8, ptr %i.ff, i64 16
  %i.fg = getelementptr i8, ptr %i.ej, i64 %i.fb
  %next.gep281 = getelementptr i8, ptr %i.fg, i64 20
  %i.fh = getelementptr i8, ptr %i.ej, i64 %i.fb
  %next.gep282 = getelementptr i8, ptr %i.fh, i64 24
  %i.fi = getelementptr i8, ptr %i.ej, i64 %i.fb
  %next.gep283 = getelementptr i8, ptr %i.fi, i64 28
  %i.fj = load i8, ptr %next.gep, align 1, !tbaa !17
  %i.fk = load i8, ptr %next.gep277, align 1, !tbaa !17
  %i.fl = load i8, ptr %next.gep278, align 1, !tbaa !17
  %i.fm = load i8, ptr %next.gep279, align 1, !tbaa !17
  %i.fn = insertelement <4 x i8> poison, i8 %i.fj, i64 0
  %i.fo = insertelement <4 x i8> %i.fn, i8 %i.fk, i64 1
  %i.fp = insertelement <4 x i8> %i.fo, i8 %i.fl, i64 2
  %i.fq = insertelement <4 x i8> %i.fp, i8 %i.fm, i64 3
  %i.fr = load i8, ptr %next.gep280, align 1, !tbaa !17
  %i.fs = load i8, ptr %next.gep281, align 1, !tbaa !17
  %i.ft = load i8, ptr %next.gep282, align 1, !tbaa !17
  %i.fu = load i8, ptr %next.gep283, align 1, !tbaa !17
  %i.fv = insertelement <4 x i8> poison, i8 %i.fr, i64 0
  %i.fw = insertelement <4 x i8> %i.fv, i8 %i.fs, i64 1
  %i.fx = insertelement <4 x i8> %i.fw, i8 %i.ft, i64 2
  %i.fy = insertelement <4 x i8> %i.fx, i8 %i.fu, i64 3
  %i.fz = zext <4 x i8> %i.fq to <4 x i32>
  %i.ga = zext <4 x i8> %i.fy to <4 x i32>
  %i.gb = add <4 x i32> %vec.phi, splat (i32 1)
  %i.gc = add <4 x i32> %vec.phi276, splat (i32 1)
  %i.gd = add <4 x i32> %i.gb, %i.fz              ; 2 uses
  %i.ge = add <4 x i32> %i.gc, %i.ga              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ge, %i.gd
  %i.gg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.lr.ph.preheader.i184, %middle.block
  %.016.i.ph = phi i32 [ 0, %.lr.ph.preheader.i184 ], [ %i.gg, %middle.block ]
  %.01115.i.ph = phi i32 [ %i.ei, %.lr.ph.preheader.i184 ], [ %i.ey, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.ej, %.lr.ph.preheader.i184 ], [ %i.fa, %middle.block ]
  br label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader, %.lr.ph.i185
  %.016.i = phi i32 [ %i.gk, %.lr.ph.i185 ], [ %.016.i.ph, %.lr.ph.i185.preheader ]
  %.01115.i = phi i32 [ %i.gm, %.lr.ph.i185 ], [ %.01115.i.ph, %.lr.ph.i185.preheader ]
  %.01214.i = phi ptr [ %i.gl, %.lr.ph.i185 ], [ %.01214.i.ph, %.lr.ph.i185.preheader ] ; 2 uses
  %i.gh = load i8, ptr %.01214.i, align 1, !tbaa !17
  %i.gi = zext i8 %i.gh to i32
  %i.gj = add i32 %.016.i, 1
  %i.gk = add i32 %i.gj, %i.gi                    ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %i.gm = add i32 %.01115.i, -1                   ; 2 uses
  %.not.i186 = icmp eq i32 %i.gm, 0
  br i1 %.not.i186, label %tt_cmap14_def_char_count.exit, label %.lr.ph.i185, !llvm.loop !108

tt_cmap14_def_char_count.exit:                    ; preds = %.lr.ph.i185
  %i.gn = icmp eq i32 %i.dr, 0
  br i1 %i.gn, label %bb.o, label %bb.p

tt_cmap14_def_char_count.exit.thread:             ; preds = %bb.n
  %i.go = icmp eq i32 %i.dr, 0
  br i1 %i.go, label %bb.o, label %.thread

bb.o:                                             ; preds = %tt_cmap14_def_char_count.exit.thread, %tt_cmap14_def_char_count.exit
  %i.gp = tail call fastcc ptr @tt_cmap14_get_def_chars(ptr noundef %0, ptr noundef nonnull %i.da, ptr noundef %1)
  br label %tt_cmap14_get_nondef_chars.exit

bb.p:                                             ; preds = %tt_cmap14_def_char_count.exit
  %i.gq = icmp eq i32 %i.gk, 0
  br i1 %i.gq, label %.thread, label %bb.s

.thread:                                          ; preds = %tt_cmap14_def_char_count.exit.thread, %bb.p
  %i.gr = add i32 %i.dr, 1                        ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !93 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4, !tbaa !18
  %i.gu = icmp ugt i32 %i.gr, %i.gt
  br i1 %i.gu, label %bb.q, label %._crit_edge30.i189

._crit_edge30.i189:                               ; preds = %.thread
  %.phi.trans.insert.i190 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i191 = load ptr, ptr %.phi.trans.insert.i190, align 8, !tbaa !94
  br label %.lr.ph.preheader.i193

bb.q:                                             ; preds = %.thread
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.gv, align 8, !tbaa !95
  %i.gw = zext i32 %i.gt to i64
  %i.gx = zext i32 %i.gr to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !94
  %i.ha = call ptr @ft_mem_qrealloc(ptr noundef %1, i64 noundef 4, i64 noundef %i.gw, i64 noundef %i.gx, ptr noundef %i.gz, ptr noundef nonnull %i.b) #27 ; 2 uses
  store ptr %i.ha, ptr %i.gy, align 8, !tbaa !94
  %i.hb = load i32, ptr %i.b, align 4, !tbaa !18
  %.not.i.i204 = icmp eq i32 %i.hb, 0
  br i1 %.not.i.i204, label %bb.r, label %tt_cmap14_ensure.exit.i205

bb.r:                                             ; preds = %bb.q
  store i32 %i.gr, ptr %i.gs, align 8, !tbaa !93
  br label %.lr.ph.preheader.i193

tt_cmap14_ensure.exit.i205:                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %tt_cmap14_get_nondef_chars.exit

.lr.ph.preheader.i193:                            ; preds = %._crit_edge30.i189, %bb.r
  %i.hc = phi ptr [ %.pre.i191, %._crit_edge30.i189 ], [ %i.ha, %bb.r ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %wide.trip.count.i194 = zext i32 %i.dr to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i194, 1
  %i.he = icmp eq i32 %i.dr, 1
  br i1 %i.he, label %.lr.ph.i195.epil.preheader, label %.lr.ph.preheader.i193.new

.lr.ph.preheader.i193.new:                        ; preds = %.lr.ph.preheader.i193
  %unroll_iter = and i64 %wide.trip.count.i194, 4294967294
  br label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %.lr.ph.i195, %.lr.ph.preheader.i193.new
  %indvars.iv.i196 = phi i64 [ 0, %.lr.ph.preheader.i193.new ], [ %indvars.iv.next.i198.1, %.lr.ph.i195 ] ; 3 uses
  %.02427.i197 = phi ptr [ %i.hd, %.lr.ph.preheader.i193.new ], [ %i.ih, %.lr.ph.i195 ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i193.new ], [ %niter.next.1, %.lr.ph.i195 ]
  %i.hf = load i8, ptr %.02427.i197, align 1, !tbaa !17
  %i.hg = zext i8 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hg, 16
  %i.hi = getelementptr inbounds nuw i8, ptr %.02427.i197, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !17
  %i.hk = zext i8 %i.hj to i32
  %i.hl = shl nuw nsw i32 %i.hk, 8
  %i.hm = or disjoint i32 %i.hl, %i.hh
  %i.hn = getelementptr inbounds nuw i8, ptr %.02427.i197, i64 2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !17
  %i.hp = zext i8 %i.ho to i32
  %i.hq = or disjoint i32 %i.hm, %i.hp
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i196
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.02427.i197, i64 5
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !17
  %i.hu = zext i8 %i.ht to i32
  %i.hv = shl nuw nsw i32 %i.hu, 16
  %i.hw = getelementptr inbounds nuw i8, ptr %.02427.i197, i64 6
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !17
  %i.hy = zext i8 %i.hx to i32
  %i.hz = shl nuw nsw i32 %i.hy, 8
  %i.ia = or disjoint i32 %i.hz, %i.hv
  %i.ib = getelementptr inbounds nuw i8, ptr %.02427.i197, i64 7
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !17
  %i.id = zext i8 %i.ic to i32
  %i.ie = or disjoint i32 %i.ia, %i.id
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i196
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store i32 %i.ie, ptr %i.ig, align 4, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %.02427.i197, i64 10 ; 2 uses
  %indvars.iv.next.i198.1 = add nuw nsw i64 %indvars.iv.i196, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i201.unr-lcssa, label %.lr.ph.i195, !llvm.loop !104

._crit_edge.i201.unr-lcssa:                       ; preds = %.lr.ph.i195
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i201, label %.lr.ph.i195.epil.preheader

.lr.ph.i195.epil.preheader:                       ; preds = %._crit_edge.i201.unr-lcssa, %.lr.ph.preheader.i193
  %indvars.iv.i196.epil.init = phi i64 [ 0, %.lr.ph.preheader.i193 ], [ %indvars.iv.next.i198.1, %._crit_edge.i201.unr-lcssa ]
  %.02427.i197.epil.init = phi ptr [ %i.hd, %.lr.ph.preheader.i193 ], [ %i.ih, %._crit_edge.i201.unr-lcssa ] ; 3 uses
  %lcmp.mod357 = trunc i8 %i.dp to i1
  call void @llvm.assume(i1 %lcmp.mod357)
  %i.ii = load i8, ptr %.02427.i197.epil.init, align 1, !tbaa !17
  %i.ij = zext i8 %i.ii to i32
  %i.ik = shl nuw nsw i32 %i.ij, 16
  %i.il = getelementptr inbounds nuw i8, ptr %.02427.i197.epil.init, i64 1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !17
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw nsw i32 %i.in, 8
  %i.ip = or disjoint i32 %i.io, %i.ik
  %i.iq = getelementptr inbounds nuw i8, ptr %.02427.i197.epil.init, i64 2
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !17
  %i.is = zext i8 %i.ir to i32
  %i.it = or disjoint i32 %i.ip, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i196.epil.init
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !18
  br label %._crit_edge.i201

._crit_edge.i201:                                 ; preds = %._crit_edge.i201.unr-lcssa, %.lr.ph.i195.epil.preheader
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %wide.trip.count.i194
  store i32 0, ptr %i.iv, align 4, !tbaa !18
  br label %tt_cmap14_get_nondef_chars.exit

bb.s:                                             ; preds = %bb.p
  %i.iw = add i32 %i.dr, 1
  %i.ix = add i32 %i.iw, %i.gk                    ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !93 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !18
  %i.ja = icmp ugt i32 %i.ix, %i.iz
  br i1 %i.ja, label %bb.t, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !94
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.jb, align 8, !tbaa !95
  %i.jc = zext i32 %i.iz to i64
  %i.jd = zext i32 %i.ix to i64
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !94
  %i.jg = call ptr @ft_mem_qrealloc(ptr noundef %1, i64 noundef 4, i64 noundef %i.jc, i64 noundef %i.jd, ptr noundef %i.jf, ptr noundef nonnull %i.a) #27 ; 2 uses
  store ptr %i.jg, ptr %i.je, align 8, !tbaa !94
  %i.jh = load i32, ptr %i.a, align 4, !tbaa !18
  %.not.i207 = icmp eq i32 %i.jh, 0
  br i1 %.not.i207, label %bb.u, label %tt_cmap14_ensure.exit

bb.u:                                             ; preds = %bb.t
  store i32 %i.ix, ptr %i.iy, align 8, !tbaa !93
  br label %bb.v

tt_cmap14_ensure.exit:                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %tt_cmap14_get_nondef_chars.exit

bb.v:                                             ; preds = %._crit_edge, %bb.u
  %i.ji = phi ptr [ %.pre, %._crit_edge ], [ %i.jg, %bb.u ] ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.jj = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !17
  %i.jl = zext i8 %i.jk to i32
  %i.jm = shl nuw nsw i32 %i.jl, 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.da, i64 5
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !17
  %i.jp = zext i8 %i.jo to i32
  %i.jq = shl nuw nsw i32 %i.jp, 8
  %i.jr = or disjoint i32 %i.jq, %i.jm
  %i.js = getelementptr inbounds nuw i8, ptr %i.da, i64 6
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !17
  %i.ju = zext i8 %i.jt to i32
  %i.jv = or disjoint i32 %i.jr, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.jx = load i8, ptr %i.ej, align 1, !tbaa !17
  %i.jy = zext i8 %i.jx to i32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !17
  %i.kb = zext i8 %i.ka to i32
  %i.kc = shl nuw nsw i32 %i.kb, 16
  %i.kd = getelementptr inbounds nuw i8, ptr %i.cz, i64 5
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !17
  %i.kf = zext i8 %i.ke to i32
  %i.kg = shl nuw nsw i32 %i.kf, 8
  %i.kh = or disjoint i32 %i.kg, %i.kc
  %i.ki = getelementptr inbounds nuw i8, ptr %i.cz, i64 6
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !17
  %i.kk = zext i8 %i.kj to i32
  %i.kl = or disjoint i32 %i.kh, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.cz, i64 9
  br label %.outer

.outer:                                           ; preds = %bb.ab, %bb.v
  %.0161.ph = phi ptr [ %i.mk, %bb.ab ], [ %i.km, %bb.v ] ; 5 uses
  %.0157.ph = phi i32 [ %.2159, %bb.ab ], [ 0, %bb.v ]
  %.0155.ph = phi i32 [ %.0155, %bb.ab ], [ %i.jv, %bb.v ]
  %.0153.ph = phi i32 [ %.0153, %bb.ab ], [ %i.jy, %bb.v ]
  %.0151.ph = phi i32 [ %i.mj, %bb.ab ], [ %i.kl, %bb.v ] ; 4 uses
  %.0148.ph = phi ptr [ %.0148, %bb.ab ], [ %i.jw, %bb.v ]
  %.0144.ph = phi i32 [ %.0144, %bb.ab ], [ 1, %bb.v ]
  %.0141.ph = phi i32 [ %i.lw, %bb.ab ], [ 1, %bb.v ] ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.outer, %bb.x
  %.0157 = phi i32 [ %i.kz, %bb.x ], [ %.0157.ph, %.outer ] ; 4 uses
  %.0155 = phi i32 [ %i.lo, %bb.x ], [ %.0155.ph, %.outer ] ; 7 uses
  %.0153 = phi i32 [ %i.lr, %bb.x ], [ %.0153.ph, %.outer ] ; 8 uses
  %.0148 = phi ptr [ %i.lp, %bb.x ], [ %.0148.ph, %.outer ] ; 7 uses
  %.0144 = phi i32 [ %i.la, %bb.x ], [ %.0144.ph, %.outer ] ; 3 uses
  %i.kn = add nuw nsw i32 %.0153, %.0155
  %i.ko = icmp ugt i32 %.0151.ph, %i.kn
  br i1 %i.ko, label %.preheader217.preheader, label %bb.y

.preheader217.preheader:                          ; preds = %bb.w
  %i.kp = sext i32 %.0157 to i64                  ; 3 uses
  %narrow = add nuw nsw i32 %.0153, 1
  %i.kq = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check286 = icmp samesign ult i32 %.0153, 7
  br i1 %min.iters.check286, label %.preheader217.preheader333, label %vector.ph287

vector.ph287:                                     ; preds = %.preheader217.preheader
  %n.vec288 = and i64 %i.kq, 504                  ; 4 uses
  %i.kr = add nsw i64 %n.vec288, %i.kp            ; 2 uses
  %i.ks = trunc nuw nsw i64 %n.vec288 to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0155, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw nsw <4 x i32> splat (i32 4), %broadcast.splat
  %invariant.gep = getelementptr [4 x i8], ptr %i.ji, i64 %i.kp
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next291, %vector.body289 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph287 ], [ %vec.ind.next, %vector.body289 ] ; 3 uses
  %i.kt = add nuw nsw <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add nuw nsw <4 x i32> %vec.ind, %invariant.op
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index290 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.kt, ptr %gep, align 4, !tbaa !18
  store <4 x i32> %.reass, ptr %i.ku, align 4, !tbaa !18
  %index.next291 = add nuw i64 %index290, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.kv = icmp eq i64 %index.next291, %n.vec288
  br i1 %i.kv, label %middle.block292, label %vector.body289, !llvm.loop !109

middle.block292:                                  ; preds = %vector.body289
  %cmp.n = icmp eq i64 %n.vec288, %i.kq
  br i1 %cmp.n, label %.loopexit328, label %.preheader217.preheader333

.preheader217.preheader333:                       ; preds = %.preheader217.preheader, %middle.block292
  %indvars.iv.ph = phi i64 [ %i.kp, %.preheader217.preheader ], [ %i.kr, %middle.block292 ]
  %.0221.ph = phi i32 [ 0, %.preheader217.preheader ], [ %i.ks, %middle.block292 ]
  br label %.preheader217

.preheader217:                                    ; preds = %.preheader217.preheader333, %.preheader217
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader217 ], [ %indvars.iv.ph, %.preheader217.preheader333 ] ; 2 uses
  %.0221 = phi i32 [ %i.ky, %.preheader217 ], [ %.0221.ph, %.preheader217.preheader333 ] ; 3 uses
  %i.kw = add nuw nsw i32 %.0221, %.0155
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %indvars.iv
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !18
  %i.ky = add nuw nsw i32 %.0221, 1
  %exitcond.not = icmp eq i32 %.0221, %.0153
  br i1 %exitcond.not, label %.loopexit328, label %.preheader217, !llvm.loop !110

.loopexit328:                                     ; preds = %.preheader217, %middle.block292
  %indvars.iv.next.lcssa = phi i64 [ %i.kr, %middle.block292 ], [ %indvars.iv.next, %.preheader217 ]
  %i.kz = trunc nsw i64 %indvars.iv.next.lcssa to i32 ; 2 uses
  %i.la = add i32 %.0144, 1                       ; 3 uses
  %i.lb = icmp ugt i32 %i.la, %i.ei
  br i1 %i.lb, label %.loopexit334, label %bb.x

bb.x:                                             ; preds = %.loopexit328
  %i.lc = getelementptr inbounds nuw i8, ptr %.0148, i64 3
  %i.ld = load i8, ptr %.0148, align 1, !tbaa !17
  %i.le = zext i8 %i.ld to i32
  %i.lf = shl nuw nsw i32 %i.le, 16
  %i.lg = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !17
  %i.li = zext i8 %i.lh to i32
  %i.lj = shl nuw nsw i32 %i.li, 8
  %i.lk = or disjoint i32 %i.lj, %i.lf
  %i.ll = getelementptr inbounds nuw i8, ptr %.0148, i64 2
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !17
  %i.ln = zext i8 %i.lm to i32
  %i.lo = or disjoint i32 %i.lk, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %.0148, i64 4
  %i.lq = load i8, ptr %i.lc, align 1, !tbaa !17
  %i.lr = zext i8 %i.lq to i32
end_hunk_1
begin_hunk_2_@sfnt_init_face:bb.a

bb.cn:                                            ; preds = %._crit_edge371.i.i
  %i.ra = icmp samesign ule i32 %.0232.lcssa.i.i, %.0229.lcssa.i.i
  %i.rb = sub nuw nsw i32 %.0229.lcssa.i.i, %.0232.lcssa.i.i
  %.not298.i.i = icmp eq i32 %i.rb, 1
  %or.cond320.i.i = select i1 %i.ra, i1 %.not298.i.i, i1 false
  br i1 %or.cond320.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i32 8, ptr %i.b, align 4, !tbaa !18
  br label %.thread.i93.i

bb.cp:                                            ; preds = %bb.cn, %._crit_edge371.i.i
  %indvars.iv.next400.i.i = add nuw nsw i64 %indvars.iv399.i.i, 1 ; 2 uses
  %i.rc = load i16, ptr %i.az, align 8, !tbaa !231
  %i.rd = zext i16 %i.rc to i64
  %i.re = icmp samesign ult i64 %indvars.iv.next400.i.i, %i.rd
  br i1 %i.re, label %.lr.ph375.i.i, label %.loopexit.i99.i, !llvm.loop !239

bb.cq:                                            ; preds = %bb.ca
  store ptr null, ptr %i.ax, align 8, !tbaa !216
  br label %.loopexit.i99.i

.loopexit.i99.i:                                  ; preds = %bb.cp, %bb.cq, %.preheader353.i.i
  %i.rf = call i64 @FT_Stream_Pos(ptr noundef %.069132.i) #27 ; 2 uses
  store i64 %i.rf, ptr %i.bb, align 8, !tbaa !240
  %i.rg = load i64, ptr %i.bc, align 8, !tbaa !241
  %i.rh = add i64 %i.rg, %i.rf
  %i.ri = trunc i64 %i.rh to i32
  %i.rj = add i32 %i.ri, 3                        ; 2 uses
  %i.rk = and i32 %i.rj, -4                       ; 2 uses
  %i.rl = zext i32 %i.rk to i64                   ; 2 uses
  %i.rm = load i64, ptr %i.ar, align 8, !tbaa !212 ; 2 uses
  %i.rn = icmp ult i64 %i.rm, %i.rl
  br i1 %i.rn, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.loopexit.i99.i
  store i32 8, ptr %i.b, align 4, !tbaa !18
  br label %.thread.i93.i

bb.cs:                                            ; preds = %.loopexit.i99.i
  %i.ro = load i64, ptr %i.at, align 8, !tbaa !213 ; 2 uses
  %.not278.i.i = icmp eq i64 %i.ro, 0
  br i1 %.not278.i.i, label %bb.cw, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.not279.i.i = icmp eq i64 %i.ro, %i.rl
  br i1 %.not279.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 8, ptr %i.b, align 4, !tbaa !18
  br label %.thread.i93.i

bb.cv:                                            ; preds = %bb.ct
  %i.rp = load i64, ptr %i.au, align 8, !tbaa !214
  %i.rq = trunc i64 %i.rp to i32
  %i.rr = or i32 %i.rj, 3
  %i.rs = add i32 %i.rr, %i.rq
  %i.rt = and i32 %i.rs, -4
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cs
  %.0227.i.i = phi i32 [ %i.rt, %bb.cv ], [ %i.rk, %bb.cs ] ; 2 uses
  %i.ru = load i64, ptr %i.av, align 8, !tbaa !215 ; 3 uses
  %.not280.i.i = icmp eq i64 %i.ru, 0
  br i1 %.not280.i.i, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.rv = zext i32 %.0227.i.i to i64
  %.not281.i.i = icmp eq i64 %i.ru, %i.rv
  br i1 %.not281.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store i32 8, ptr %i.b, align 4, !tbaa !18
  br label %.thread.i93.i

bb.cz:                                            ; preds = %bb.cx
  %i.rw = load i64, ptr %i.aw, align 8, !tbaa !242
  %i.rx = add i64 %i.rw, %i.ru
  %i.ry = trunc i64 %i.rx to i32
  %i.rz = add i32 %i.ry, 3
  %i.sa = and i32 %i.rz, -4
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cw
  %.1228.i.i = phi i32 [ %i.sa, %bb.cz ], [ %.0227.i.i, %bb.cw ]
  %i.sb = zext i32 %.1228.i.i to i64
  %i.sc = add i64 %i.rm, 3
  %i.sd = and i64 %i.sc, -4
  %.not282.i.i = icmp eq i64 %i.sd, %i.sb
  br i1 %.not282.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i32 8, ptr %i.b, align 4, !tbaa !18
  br label %.thread.i93.i

bb.dc:                                            ; preds = %bb.da
  %i.se = load i16, ptr %i.az, align 8, !tbaa !231 ; 2 uses
  %i.sf = zext i16 %i.se to i64                   ; 15 uses
  %i.sg = icmp slt i32 %.0207, 0
  %i.sh = icmp ne i32 %i.mb, 0
  %or.cond23.i.i = select i1 %i.sg, i1 %i.sh, i1 false
  %i.si = sext i1 %or.cond23.i.i to i32
  %spec.select322.i.i = add nsw i32 %i.mb, %i.si  ; 2 uses
  %i.sj = zext i16 %i.se to i32
  %.not283.i.i = icmp slt i32 %spec.select322.i.i, %i.sj
  br i1 %.not283.i.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sk = icmp sgt i32 %.0207, -1
  br i1 %i.sk, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 6, ptr %i.b, align 4, !tbaa !18
  br label %.thread.i93.i

bb.df:                                            ; preds = %bb.dd, %bb.dc
  %.1.i.i = phi i32 [ %spec.select322.i.i, %bb.dc ], [ 0, %bb.dd ]
  %i.sl = load i64, ptr %i.ba, align 8, !tbaa !232
  %.not284.i.i = icmp eq i64 %i.sl, 0
  br i1 %.not284.i.i, label %._crit_edge421.i.i, label %bb.dg

._crit_edge421.i.i:                               ; preds = %bb.df
  %.pre422.i.i = load i16, ptr %i.as, align 8, !tbaa !217
  br label %bb.dl

bb.dg:                                            ; preds = %bb.df
  %i.sm = load ptr, ptr %i.ax, align 8, !tbaa !216
  %i.sn = zext nneg i32 %.1.i.i to i64
  %i.so = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %i.sn ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8 ; 4 uses
  %i.sq = load i16, ptr %i.sp, align 8, !tbaa !235 ; 2 uses
  %i.sr = add i16 %i.sq, -4096
  %or.cond323.i.i = icmp ult i16 %i.sr, -4095
  br i1 %or.cond323.i.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 8, ptr %i.b, align 4, !tbaa !18
  br label %.thread.i93.i

bb.di:                                            ; preds = %bb.dg
  %i.ss = zext nneg i16 %i.sq to i64
  %i.st = call ptr @ft_mem_qrealloc(ptr noundef %i.lz, i64 noundef 8, i64 noundef 0, i64 noundef %i.ss, ptr noundef null, ptr noundef nonnull %i.b) #27 ; 13 uses
  %i.su = ptrtoaddr ptr %i.st to i64
  %i.sv = load i32, ptr %i.b, align 4, !tbaa !18
  %.not285.i.i = icmp eq i32 %i.sv, 0
  br i1 %.not285.i.i, label %.preheader351.i.i, label %.thread.i93.i

.preheader351.i.i:                                ; preds = %bb.di
  %i.sw = load i16, ptr %i.sp, align 8, !tbaa !235 ; 3 uses
  %.not393.i.i = icmp eq i16 %i.sw, 0
  br i1 %.not393.i.i, label %._crit_edge378.i.i, label %.lr.ph377.i.i

.lr.ph377.i.i:                                    ; preds = %.preheader351.i.i
  %i.sx = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !236 ; 5 uses
  %wide.trip.count.i100.i = zext i16 %i.sw to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i100.i, 3  ; 3 uses
  %i.sz = icmp ult i16 %i.sw, 4
  br i1 %i.sz, label %.epil.preheader, label %.lr.ph377.i.i.new

.lr.ph377.i.i.new:                                ; preds = %.lr.ph377.i.i
  %unroll_iter = and i64 %wide.trip.count.i100.i, 65532
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %.lr.ph377.i.i.new
  %indvars.iv402.i.i = phi i64 [ 0, %.lr.ph377.i.i.new ], [ %indvars.iv.next403.i.i.3, %bb.dj ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph377.i.i.new ], [ %niter.next.3, %bb.dj ]
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.sy, i64 %indvars.iv402.i.i
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !237
  %i.tc = zext i16 %i.tb to i64
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.tc
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !227
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv402.i.i
  store ptr %i.te, ptr %i.tf, align 8, !tbaa !227
  %indvars.iv.next403.i.i = or disjoint i64 %indvars.iv402.i.i, 1 ; 2 uses
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.sy, i64 %indvars.iv.next403.i.i
  %i.th = load i16, ptr %i.tg, align 2, !tbaa !237
  %i.ti = zext i16 %i.th to i64
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !227
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv.next403.i.i
  store ptr %i.tk, ptr %i.tl, align 8, !tbaa !227
  %indvars.iv.next403.i.i.1 = or disjoint i64 %indvars.iv402.i.i, 2 ; 2 uses
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.sy, i64 %indvars.iv.next403.i.i.1
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !237
  %i.to = zext i16 %i.tn to i64
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.to
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !227
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv.next403.i.i.1
  store ptr %i.tq, ptr %i.tr, align 8, !tbaa !227
  %indvars.iv.next403.i.i.2 = or disjoint i64 %indvars.iv402.i.i, 3 ; 2 uses
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.sy, i64 %indvars.iv.next403.i.i.2
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !237
  %i.tu = zext i16 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.tu
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !227
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv.next403.i.i.2
  store ptr %i.tw, ptr %i.tx, align 8, !tbaa !227
  %indvars.iv.next403.i.i.3 = add nuw nsw i64 %indvars.iv402.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge378.i.i.loopexit.unr-lcssa, label %bb.dj, !llvm.loop !243

._crit_edge378.i.i.loopexit.unr-lcssa:            ; preds = %bb.dj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge378.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge378.i.i.loopexit.unr-lcssa, %.lr.ph377.i.i
  %indvars.iv402.i.i.epil.init = phi i64 [ 0, %.lr.ph377.i.i ], [ %indvars.iv.next403.i.i.3, %._crit_edge378.i.i.loopexit.unr-lcssa ]
  %lcmp.mod392 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod392)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %.epil.preheader
  %indvars.iv402.i.i.epil = phi i64 [ %indvars.iv402.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next403.i.i.epil, %bb.dk ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.dk ]
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %i.sy, i64 %indvars.iv402.i.i.epil
  %i.tz = load i16, ptr %i.ty, align 2, !tbaa !237
  %i.ua = zext i16 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.ua
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !227
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv402.i.i.epil
  store ptr %i.uc, ptr %i.ud, align 8, !tbaa !227
  %indvars.iv.next403.i.i.epil = add nuw nsw i64 %indvars.iv402.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge378.i.i, label %bb.dk, !llvm.loop !244

._crit_edge378.i.i:                               ; preds = %._crit_edge378.i.i.loopexit.unr-lcssa, %bb.dk, %.preheader351.i.i
  %.pre-phi.i = phi i64 [ 0, %.preheader351.i.i ], [ %wide.trip.count.i100.i, %bb.dk ], [ %wide.trip.count.i100.i, %._crit_edge378.i.i.loopexit.unr-lcssa ]
  %i.ue = load i16, ptr %i.as, align 8, !tbaa !217
  %i.uf = zext i16 %i.ue to i64
  %i.ug = call ptr @ft_mem_qrealloc(ptr noundef %i.lz, i64 noundef 8, i64 noundef %i.uf, i64 noundef %.pre-phi.i, ptr noundef %i.nk, ptr noundef nonnull %i.b) #27 ; 9 uses
  %i.uh = ptrtoaddr ptr %i.ug to i64
  %i.ui = load i32, ptr %i.b, align 4, !tbaa !18
  %.not286.i.i = icmp eq i32 %i.ui, 0
  br i1 %.not286.i.i, label %.preheader350.i.i, label %.thread.i93.i

.preheader350.i.i:                                ; preds = %._crit_edge378.i.i
  %i.uj = load i16, ptr %i.sp, align 8, !tbaa !235 ; 3 uses
  %.not394.i.i = icmp eq i16 %i.uj, 0
  br i1 %.not394.i.i, label %._crit_edge382.i.i, label %.lr.ph381.preheader.i.i

.lr.ph381.preheader.i.i:                          ; preds = %.preheader350.i.i
  %wide.trip.count408.i.i = zext i16 %i.uj to i64 ; 5 uses
  %min.iters.check = icmp ult i16 %i.uj, 4
  %i.uk = sub i64 %i.su, %i.uh
  %diff.check = icmp ugt i64 %i.uk, -32
  %or.cond371 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond371, label %.lr.ph381.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph381.preheader.i.i
  %n.vec = and i64 %wide.trip.count408.i.i, 65532 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %index ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ul, align 8, !tbaa !227
  %wide.load370 = load <2 x ptr>, ptr %i.um, align 8, !tbaa !227
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %index ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  store <2 x ptr> %wide.load, ptr %i.un, align 8, !tbaa !227
  store <2 x ptr> %wide.load370, ptr %i.uo, align 8, !tbaa !227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.up = icmp eq i64 %index.next, %n.vec
  br i1 %i.up, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count408.i.i
  br i1 %cmp.n, label %._crit_edge382.i.i, label %.lr.ph381.i.i.preheader

.lr.ph381.i.i.preheader:                          ; preds = %.lr.ph381.preheader.i.i, %middle.block
  %indvars.iv405.i.i.ph = phi i64 [ 0, %.lr.ph381.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter393 = and i64 %wide.trip.count408.i.i, 3 ; 2 uses
  %lcmp.mod394.not = icmp eq i64 %xtraiter393, 0
  br i1 %lcmp.mod394.not, label %.lr.ph381.i.i.prol.loopexit, label %.lr.ph381.i.i.prol

.lr.ph381.i.i.prol:                               ; preds = %.lr.ph381.i.i.preheader, %.lr.ph381.i.i.prol
  %indvars.iv405.i.i.prol = phi i64 [ %indvars.iv.next406.i.i.prol, %.lr.ph381.i.i.prol ], [ %indvars.iv405.i.i.ph, %.lr.ph381.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph381.i.i.prol ], [ 0, %.lr.ph381.i.i.preheader ]
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv405.i.i.prol
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !227
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv405.i.i.prol
  store ptr %i.ur, ptr %i.us, align 8, !tbaa !227
  %indvars.iv.next406.i.i.prol = add nuw nsw i64 %indvars.iv405.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter393
  br i1 %prol.iter.cmp.not, label %.lr.ph381.i.i.prol.loopexit, label %.lr.ph381.i.i.prol, !llvm.loop !247

.lr.ph381.i.i.prol.loopexit:                      ; preds = %.lr.ph381.i.i.prol, %.lr.ph381.i.i.preheader
  %indvars.iv405.i.i.unr = phi i64 [ %indvars.iv405.i.i.ph, %.lr.ph381.i.i.preheader ], [ %indvars.iv.next406.i.i.prol, %.lr.ph381.i.i.prol ]
  %i.ut = sub nsw i64 %indvars.iv405.i.i.ph, %wide.trip.count408.i.i
  %i.uu = icmp ugt i64 %i.ut, -4
  br i1 %i.uu, label %._crit_edge382.i.i, label %.lr.ph381.i.i

.lr.ph381.i.i:                                    ; preds = %.lr.ph381.i.i.prol.loopexit, %.lr.ph381.i.i
  %indvars.iv405.i.i = phi i64 [ %indvars.iv.next406.i.i.3, %.lr.ph381.i.i ], [ %indvars.iv405.i.i.unr, %.lr.ph381.i.i.prol.loopexit ] ; 6 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv405.i.i
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !227
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv405.i.i
  store ptr %i.uw, ptr %i.ux, align 8, !tbaa !227
  %indvars.iv.next406.i.i = add nuw nsw i64 %indvars.iv405.i.i, 1 ; 2 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv.next406.i.i
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !227
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv.next406.i.i
  store ptr %i.uz, ptr %i.va, align 8, !tbaa !227
  %indvars.iv.next406.i.i.1 = add nuw nsw i64 %indvars.iv405.i.i, 2 ; 2 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv.next406.i.i.1
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !227
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv.next406.i.i.1
  store ptr %i.vc, ptr %i.vd, align 8, !tbaa !227
  %indvars.iv.next406.i.i.2 = add nuw nsw i64 %indvars.iv405.i.i, 3 ; 2 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv.next406.i.i.2
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !227
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv.next406.i.i.2
  store ptr %i.vf, ptr %i.vg, align 8, !tbaa !227
  %indvars.iv.next406.i.i.3 = add nuw nsw i64 %indvars.iv405.i.i, 4 ; 2 uses
  %exitcond409.not.i.i.3 = icmp eq i64 %indvars.iv.next406.i.i.3, %wide.trip.count408.i.i
  br i1 %exitcond409.not.i.i.3, label %._crit_edge382.i.i, label %.lr.ph381.i.i, !llvm.loop !248

._crit_edge382.i.i:                               ; preds = %.lr.ph381.i.i.prol.loopexit, %.lr.ph381.i.i, %middle.block, %.preheader350.i.i
  call void @ft_mem_free(ptr noundef %i.lz, ptr noundef %i.st) #27
  %i.vh = load i64, ptr %i.so, align 8, !tbaa !233
  store i64 %i.vh, ptr %i.aq, align 8, !tbaa !209
  %i.vi = load i16, ptr %i.sp, align 8, !tbaa !235 ; 2 uses
  store i16 %i.vi, ptr %i.as, align 8, !tbaa !217
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge382.i.i, %._crit_edge421.i.i
  %i.vj = phi i16 [ %i.vi, %._crit_edge382.i.i ], [ %.pre422.i.i, %._crit_edge421.i.i ]
  %.1245.i.i = phi ptr [ %i.ug, %._crit_edge382.i.i ], [ %i.nk, %._crit_edge421.i.i ] ; 14 uses
  %i.vk = zext i16 %i.vj to i64
  %i.vl = shl nuw nsw i64 %i.vk, 4
  %i.vm = or disjoint i64 %i.vl, 12               ; 3 uses
  store i64 %i.vm, ptr %i.d, align 8, !tbaa !162
  %i.vn = load i64, ptr %i.bd, align 8, !tbaa !249 ; 3 uses
  %i.vo = icmp ugt i64 %i.vn, %i.vm
  br i1 %i.vo, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.vp = lshr i64 %i.vn, 6
  %i.vq = load i64, ptr %i.ar, align 8, !tbaa !212 ; 2 uses
  %i.vr = icmp ugt i64 %i.vp, %i.vq
  %i.vs = shl nuw i64 %i.vq, 6
  %storemerge.i.i = select i1 %i.vr, i64 %i.vs, i64 %i.vn
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %storemerge.i.i, i64 67108864) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.d, align 8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.vt = phi i64 [ %spec.store.select.i.i, %bb.dm ], [ %i.vm, %bb.dl ]
  %i.vu = call ptr @ft_mem_qalloc(ptr noundef %i.lz, i64 noundef %i.vt, ptr noundef nonnull %i.b) #27 ; 13 uses
  store ptr %i.vu, ptr %i.c, align 8, !tbaa !208
  %i.vv = load i32, ptr %i.b, align 4, !tbaa !18
  %.not287.i102.i = icmp eq i32 %i.vv, 0
  br i1 %.not287.i102.i, label %bb.do, label %.thread.i93.i

bb.do:                                            ; preds = %bb.dn
  %i.vw = call ptr @ft_mem_alloc(ptr noundef %i.lz, i64 noundef 80, ptr noundef nonnull %i.b) #27 ; 14 uses
  %i.vx = load i32, ptr %i.b, align 4, !tbaa !18
  %.not288.i103.i = icmp eq i32 %i.vx, 0
  br i1 %.not288.i103.i, label %.lr.ph.i.i.i, label %.thread.i93.i

.lr.ph.i.i.i:                                     ; preds = %bb.do
  %i.vy = load i16, ptr %i.as, align 8, !tbaa !217
  %i.vz = zext i16 %i.vy to i32                   ; 2 uses
  %i.wa = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.vz, i1 true) ; 3 uses
  %i.wb = lshr exact i32 -2147483648, %i.wa       ; 2 uses
  %i.wc = sub nsw i32 %i.vz, %i.wb                ; 2 uses
  %i.wd = load i64, ptr %i.aq, align 8, !tbaa !209 ; 2 uses
  %i.we = lshr i64 %i.wd, 24
  %i.wf = trunc i64 %i.we to i8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vu, i64 1
  store i8 %i.wf, ptr %i.vu, align 1, !tbaa !17
  %i.wh = load i64, ptr %i.aq, align 8, !tbaa !209 ; 2 uses
  %i.wi = lshr i64 %i.wh, 16
  %i.wj = trunc i64 %i.wi to i8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vu, i64 2
  store i8 %i.wj, ptr %i.wg, align 1, !tbaa !17
  %i.wl = load i64, ptr %i.aq, align 8, !tbaa !209 ; 2 uses
  %i.wm = lshr i64 %i.wl, 8
  %i.wn = trunc i64 %i.wm to i8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vu, i64 3
  store i8 %i.wn, ptr %i.wk, align 1, !tbaa !17
  %i.wp = load i64, ptr %i.aq, align 8, !tbaa !209 ; 2 uses
  %i.wq = trunc i64 %i.wp to i8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  store i8 %i.wq, ptr %i.wo, align 1, !tbaa !17
  %i.ws = load i16, ptr %i.as, align 8, !tbaa !217
  %i.wt = lshr i16 %i.ws, 8                       ; 2 uses
  %i.wu = trunc nuw i16 %i.wt to i8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.vu, i64 5
  store i8 %i.wu, ptr %i.wr, align 1, !tbaa !17
  %i.ww = load i16, ptr %i.as, align 8, !tbaa !217 ; 2 uses
  %i.wx = trunc i16 %i.ww to i8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vu, i64 6
  store i8 %i.wx, ptr %i.wv, align 1, !tbaa !17
  %i.wz = lshr i32 134217728, %i.wa               ; 2 uses
end_hunk_2
begin_hunk_3_@sfnt_init_face:bb.a
  %i.aen = call i64 @FT_Stream_Pos(ptr noundef %i.abp) #27
  %i.aeo = add nsw i64 %.0151, -16
  %i.aep = add i64 %i.aeo, %i.aen                 ; 2 uses
  %.not257 = icmp eq i16 %.0150, 0
  br i1 %.not257, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fg
  %i.aeq = add i64 %i.aep, 8
  %i.aer = zext i16 %.0149 to i64
  br label %bb.fh

bb.fh:                                            ; preds = %.lr.ph, %bb.fh
  %.0247 = phi i32 [ 0, %.lr.ph ], [ %i.aev, %bb.fh ]
  %.0141246 = phi ptr [ %i.aej, %.lr.ph ], [ %i.aeu, %bb.fh ] ; 2 uses
  %.0143245 = phi i64 [ %i.aeq, %.lr.ph ], [ %i.aet, %bb.fh ] ; 2 uses
  %i.aes = call i32 @FT_Stream_ReadAt(ptr noundef %i.abp, i64 noundef %.0143245, ptr noundef %.0141246, i64 noundef 4) #27
  store i32 %i.aes, ptr %i.i, align 4, !tbaa !18
  %i.aet = add i64 %.0143245, %i.aer
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0141246, i64 4
  %i.aev = add nuw nsw i32 %.0247, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aev, %i.adi
  br i1 %exitcond.not, label %._crit_edge, label %bb.fh, !llvm.loop !264

._crit_edge:                                      ; preds = %bb.fh, %bb.fg
  %i.aew = zext nneg i16 %.1148 to i32            ; 3 uses
  %.not258 = icmp eq i16 %.1148, 0
  br i1 %.not258, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %._crit_edge
  %i.aex = mul nuw nsw i32 %i.adg, %i.adi
  %narrow = add nuw i32 %i.aex, 4
  %i.aey = zext i32 %narrow to i64
  %i.aez = add i64 %i.aep, %i.aey
  %i.afa = zext i16 %.0146 to i64
  br label %bb.fi

bb.fi:                                            ; preds = %.lr.ph251, %bb.fj
  %.1249 = phi i32 [ 0, %.lr.ph251 ], [ %i.afd, %bb.fj ] ; 2 uses
  %.0142248 = phi i64 [ %i.aez, %.lr.ph251 ], [ %i.afc, %bb.fj ] ; 2 uses
  %i.afb = call i32 @FT_Stream_ReadAt(ptr noundef %i.abp, i64 noundef %.0142248, ptr noundef %i.ael, i64 noundef %i.aei) #27
  store i32 %i.afb, ptr %i.i, align 4, !tbaa !18
  %bcmp = call i32 @bcmp(ptr %i.aej, ptr %i.ael, i64 %i.aei)
  %.not188 = icmp eq i32 %bcmp, 0
  br i1 %.not188, label %._crit_edge252, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.afc = add i64 %.0142248, %i.afa
  %i.afd = add nuw nsw i32 %.1249, 1              ; 2 uses
  %exitcond279.not = icmp eq i32 %i.afd, %i.aew
  br i1 %exitcond279.not, label %._crit_edge252, label %bb.fi, !llvm.loop !265

._crit_edge252:                                   ; preds = %bb.fj, %bb.fi, %._crit_edge
  %.1.lcssa = phi i32 [ 0, %._crit_edge ], [ %.1249, %bb.fi ], [ %i.aew, %bb.fj ] ; 2 uses
  %i.afe = add nuw i32 %.1.lcssa, 1
  %i.aff = getelementptr inbounds nuw i8, ptr %1, i64 1236
  store i32 %i.afe, ptr %i.aff, align 4, !tbaa !266
  %i.afg = icmp eq i32 %.1.lcssa, %i.aew
  %i.afh = zext i1 %i.afg to i16
  %spec.select193 = add i16 %.1148, %i.afh
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fd, %bb.fe, %bb.ff, %._crit_edge252
  %.3 = phi i16 [ %.1148, %bb.fe ], [ %.1148, %bb.ff ], [ %spec.select193, %._crit_edge252 ], [ %.1148, %bb.fd ] ; 3 uses
  %.0145 = phi ptr [ %i.aej, %bb.fe ], [ %i.aej, %bb.ff ], [ %i.aej, %._crit_edge252 ], [ null, %bb.fd ]
  %.0144 = phi ptr [ null, %bb.fe ], [ %i.ael, %bb.ff ], [ %i.ael, %._crit_edge252 ], [ null, %bb.fd ]
  call void @ft_mem_free(ptr noundef %i.aci, ptr noundef %.0145) #27
  call void @ft_mem_free(ptr noundef %i.aci, ptr noundef %.0144) #27
  %i.afi = load ptr, ptr %i.ack, align 8, !tbaa !175
  %i.afj = call i32 %i.afi(ptr noundef nonnull %1, i64 noundef 1735162214, ptr noundef %i.abp, ptr noundef null) #27
  %.not189 = icmp eq i32 %i.afj, 0
  br i1 %.not189, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.afk = load ptr, ptr %i.ack, align 8, !tbaa !175
  %i.afl = call i32 %i.afk(ptr noundef nonnull %1, i64 noundef 1128678962, ptr noundef %i.abp, ptr noundef null) #27
  %.not190 = icmp eq i32 %i.afl, 0
  br i1 %.not190, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.afm = load ptr, ptr %i.ack, align 8, !tbaa !175
  %i.afn = call i32 %i.afm(ptr noundef nonnull %1, i64 noundef 1128678944, ptr noundef %i.abp, ptr noundef null) #27
  %.not191 = icmp eq i32 %i.afn, 0
  %spec.select194 = select i1 %.not191, i16 0, i16 %.3
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %bb.fk
  %.4 = phi i16 [ %spec.select194, %bb.fm ], [ %.3, %bb.fk ], [ %.3, %bb.fl ] ; 2 uses
  %i.afo = zext i16 %.4 to i32
  %i.afp = icmp samesign ugt i32 %i.acj, %i.afo
  br i1 %i.afp, label %bb.fo, label %.critedge

bb.fo:                                            ; preds = %bb.fn
  %i.afq = icmp sgt i32 %.0207, -1
  br i1 %i.afq, label %bb.fp, label %.critedge

.critedge:                                        ; preds = %bb.fo, %bb.fn
  %.5 = phi i16 [ %.4, %bb.fn ], [ 0, %bb.fo ]
  %i.afr = zext i16 %.5 to i64
  %i.afs = shl nuw nsw i64 %i.afr, 16
  %i.aft = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.afs, ptr %i.aft, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %i.afu = load i64, ptr %i.am, align 8, !tbaa !257
  store i64 %i.afu, ptr %1, align 8, !tbaa !268
  %i.afv = sext i32 %.0207 to i64
  %i.afw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.afv, ptr %i.afw, align 8, !tbaa !269
  %.not192 = icmp eq i64 %.0203, 0
  br i1 %.not192, label %bb.fr, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  br label %bb.fs

bb.fq:                                            ; preds = %.critedge
  store i64 %.0203, ptr %1, align 8, !tbaa !268
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %.critedge
  %i.afx = load i32, ptr %i.i, align 4, !tbaa !18
  br label %bb.fs

bb.fs:                                            ; preds = %sfnt_open_font.exit.thread, %bb.fp, %bb.en, %._crit_edge280, %bb.em, %sfnt_open_font.exit, %bb.b, %bb.fr
  %.1154 = phi i32 [ 11, %bb.b ], [ %.pre.i, %sfnt_open_font.exit ], [ 6, %bb.em ], [ %i.acd, %._crit_edge280 ], [ %i.afx, %bb.fr ], [ 6, %bb.fp ], [ %i.acg, %bb.en ], [ %.1.i.ph, %sfnt_open_font.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  ret i32 %.1154
}

; Function Attrs: nounwind uwtable
define internal i32 @sfnt_load_face(ptr noundef %0, ptr noundef %1, i32 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 32 uses
  %5 = alloca %struct.FT_CharMapRec_, align 8     ; 8 uses
  %6 = alloca %struct.FT_Size_Metrics_, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 18 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %3, 1
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %.0353547 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %.1354.1, %bb.f ] ; 3 uses
  %.0355546 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %.1356.1, %bb.f ] ; 3 uses
  %.0357545 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %.1358.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  %i.g = load i64, ptr %i.f, align 8, !tbaa !270
  switch i64 %i.g, label %.fold.split [
    i64 1768386662, label %.lr.ph.1
    i64 1768386675, label %bb.b
    i64 1769169528, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  br label %.lr.ph.1

.fold.split:                                      ; preds = %.lr.ph
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %.fold.split, %bb.c, %bb.b
  %.1358 = phi i8 [ 1, %.lr.ph ], [ %.0357545, %bb.b ], [ %.0357545, %bb.c ], [ %.0357545, %.fold.split ] ; 3 uses
  %.1356 = phi i8 [ %.0355546, %.lr.ph ], [ 1, %bb.b ], [ %.0355546, %bb.c ], [ %.0355546, %.fold.split ] ; 3 uses
  %.1354 = phi i8 [ %.0353547, %.lr.ph ], [ %.0353547, %bb.b ], [ 1, %bb.c ], [ %.0353547, %.fold.split ] ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !270
  switch i64 %i.j, label %.fold.split.1 [
    i64 1768386662, label %bb.f
    i64 1768386675, label %bb.e
    i64 1769169528, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.1
  br label %bb.f

.fold.split.1:                                    ; preds = %.lr.ph.1
  br label %bb.f

bb.f:                                             ; preds = %.fold.split.1, %bb.e, %bb.d, %.lr.ph.1
  %.1358.1 = phi i8 [ 1, %.lr.ph.1 ], [ %.1358, %bb.e ], [ %.1358, %bb.d ], [ %.1358, %.fold.split.1 ] ; 3 uses
  %.1356.1 = phi i8 [ %.1356, %.lr.ph.1 ], [ 1, %bb.e ], [ %.1356, %bb.d ], [ %.1356, %.fold.split.1 ] ; 3 uses
  %.1354.1 = phi i8 [ %.1354, %.lr.ph.1 ], [ %.1354, %bb.e ], [ 1, %bb.d ], [ %.1354, %.fold.split.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !272

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0353547.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %.1354.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0355546.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %.1356.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0357545.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %.1358.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod624 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod624)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.l = load i64, ptr %i.k, align 8, !tbaa !270
  switch i64 %i.l, label %.fold.split.epil [
    i64 1768386662, label %._crit_edge.loopexit
    i64 1768386675, label %bb.h
    i64 1769169528, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  br label %._crit_edge.loopexit

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  br label %._crit_edge.loopexit

.fold.split.epil:                                 ; preds = %.lr.ph.epil.preheader
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil.preheader, %bb.g, %bb.h, %.fold.split.epil, %._crit_edge.loopexit.unr-lcssa
  %.1358.lcssa = phi i8 [ %.1358.1, %._crit_edge.loopexit.unr-lcssa ], [ 1, %.lr.ph.epil.preheader ], [ %.0357545.epil.init, %bb.h ], [ %.0357545.epil.init, %bb.g ], [ %.0357545.epil.init, %.fold.split.epil ]
  %.1356.lcssa = phi i8 [ %.1356.1, %._crit_edge.loopexit.unr-lcssa ], [ %.0355546.epil.init, %.lr.ph.epil.preheader ], [ 1, %bb.h ], [ %.0355546.epil.init, %bb.g ], [ %.0355546.epil.init, %.fold.split.epil ]
  %.1354.lcssa = phi i8 [ %.1354.1, %._crit_edge.loopexit.unr-lcssa ], [ %.0353547.epil.init, %.lr.ph.epil.preheader ], [ %.0353547.epil.init, %bb.h ], [ 1, %bb.g ], [ %.0353547.epil.init, %.fold.split.epil ]
  %i.m = icmp eq i8 %.1354.lcssa, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0357.lcssa = phi i8 [ 0, %bb.a ], [ %.1358.lcssa, %._crit_edge.loopexit ] ; 2 uses
  %.0355.lcssa = phi i8 [ 0, %bb.a ], [ %.1356.lcssa, %._crit_edge.loopexit ] ; 2 uses
  %.0353.lcssa = phi i1 [ true, %bb.a ], [ %i.m, %._crit_edge.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !273
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !274
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.i, label %tt_face_lookup_table.exit

bb.i:                                             ; preds = %._crit_edge
  %i.r = getelementptr i8, ptr %1, i64 288
  %.val478 = load i16, ptr %i.r, align 8, !tbaa !156 ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 296
  %.val479 = load ptr, ptr %i.s, align 8, !tbaa !157 ; 4 uses
  %i.t = zext i16 %.val478 to i64
  %.idx.i = shl nuw nsw i64 %i.t, 5
  %i.u = getelementptr inbounds nuw i8, ptr %.val479, i64 %.idx.i ; 3 uses
  %.not4.i = icmp eq i16 %.val478, 0
  br i1 %.not4.i, label %tt_face_lookup_table.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.k
  %.01.i = phi ptr [ %i.z, %bb.k ], [ %.val479, %bb.i ] ; 3 uses
  %i.v = load i64, ptr %.01.i, align 8, !tbaa !158
  %i.w = icmp eq i64 %i.v, 1735162214
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01.i, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !160
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.k, label %tt_face_lookup_table.exit

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01.i, i64 32 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %i.u
  br i1 %i.aa, label %.lr.ph.i, label %.lr.ph.i482, !llvm.loop !161

.lr.ph.i482:                                      ; preds = %bb.k, %bb.m
  %.01.i483 = phi ptr [ %i.af, %bb.m ], [ %.val479, %bb.k ] ; 3 uses
  %i.ab = load i64, ptr %.01.i483, align 8, !tbaa !158
  %i.ac = icmp eq i64 %i.ab, 1128678944
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i482
  %i.ad = getelementptr inbounds nuw i8, ptr %.01.i483, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !160
  %.not.i485 = icmp eq i64 %i.ae, 0
  br i1 %.not.i485, label %bb.m, label %tt_face_lookup_table.exit

bb.m:                                             ; preds = %bb.l, %.lr.ph.i482
  %i.af = getelementptr inbounds nuw i8, ptr %.01.i483, i64 32 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %i.u
  br i1 %i.ag, label %.lr.ph.i482, label %.lr.ph.i489, !llvm.loop !161

.lr.ph.i489:                                      ; preds = %bb.m, %bb.o
  %.01.i490 = phi ptr [ %i.al, %bb.o ], [ %.val479, %bb.m ] ; 3 uses
  %i.ah = load i64, ptr %.01.i490, align 8, !tbaa !158
  %i.ai = icmp eq i64 %i.ah, 1128678962
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i489
  %i.aj = getelementptr inbounds nuw i8, ptr %.01.i490, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !160
  %.not.i492 = icmp eq i64 %i.ak, 0
  br i1 %.not.i492, label %bb.o, label %tt_face_lookup_table.exit

bb.o:                                             ; preds = %bb.n, %.lr.ph.i489
  %i.al = getelementptr inbounds nuw i8, ptr %.01.i490, i64 32 ; 2 uses
  %i.am = icmp ult ptr %i.al, %i.u
  br i1 %i.am, label %.lr.ph.i489, label %tt_face_lookup_table.exit, !llvm.loop !161

tt_face_lookup_table.exit:                        ; preds = %bb.j, %bb.l, %bb.o, %bb.n, %bb.i, %._crit_edge
  %.not388 = phi i1 [ true, %bb.o ], [ false, %bb.l ], [ false, %._crit_edge ], [ true, %bb.i ], [ false, %bb.n ], [ false, %bb.j ]
  %i.an = phi i8 [ 0, %bb.o ], [ 1, %bb.l ], [ 1, %._crit_edge ], [ 0, %bb.i ], [ 1, %bb.n ], [ 1, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !175
  %i.aq = tail call i32 %i.ap(ptr noundef %1, i64 noundef 1128418371, ptr noundef %0, ptr noundef null) #27
  %.not382 = icmp eq i32 %i.aq, 0                 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !175
  %i.as = tail call i32 %i.ar(ptr noundef %1, i64 noundef 1128416340, ptr noundef %0, ptr noundef null) #27
  %.not383 = icmp eq i32 %i.as, 0
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !175
  %i.au = tail call i32 %i.at(ptr noundef %1, i64 noundef 1161972803, ptr noundef %0, ptr noundef null) #27
  %.not384 = icmp eq i32 %i.au, 0
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !175
  %i.aw = tail call i32 %i.av(ptr noundef %1, i64 noundef 1651273571, ptr noundef %0, ptr noundef null) #27
  %.not385 = icmp eq i32 %i.aw, 0
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !175
  %i.ay = tail call i32 %i.ax(ptr noundef %1, i64 noundef 1935829368, ptr noundef %0, ptr noundef null) #27
  %.not386 = icmp eq i32 %i.ay, 0
  %spec.select = select i1 %.0353.lcssa, i1 %.not386, i1 false ; 3 uses
  br i1 %.not388, label %bb.p, label %.thread501

bb.p:                                             ; preds = %tt_face_lookup_table.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !280 ; 2 uses
  %.not389 = icmp eq ptr %i.ba, null
  br i1 %.not389, label %.thread501, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = tail call i32 %i.ba(ptr noundef nonnull %1, ptr noundef %0) #27
  %.not390 = icmp ne i32 %i.bb, 0                 ; 2 uses
  %or.cond = select i1 %.not390, i1 true, i1 %spec.select
  br i1 %or.cond, label %.thread501, label %bb.r

.thread501:                                       ; preds = %bb.p, %tt_face_lookup_table.exit, %bb.q
  %.0360505 = phi i1 [ %.not390, %bb.q ], [ true, %tt_face_lookup_table.exit ], [ true, %bb.p ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !281
  %i.be = tail call i32 %i.bd(ptr noundef nonnull %1, ptr noundef %0) #27 ; 2 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !18
  %.not391 = icmp eq i32 %i.be, 0
  br i1 %.not391, label %bb.r, label %.thread512

bb.r:                                             ; preds = %.thread501, %bb.q
  %.0360504 = phi i1 [ %.0360505, %.thread501 ], [ false, %bb.q ]
  %or.cond8 = select i1 %.not382, i1 true, i1 %.not383
  %spec.select464 = select i1 %or.cond8, i8 0, i8 %i.an ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 338 ; 3 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !282
  %i.bh = add i16 %i.bg, -16385
  %or.cond465 = icmp ult i16 %i.bh, -16369
  br i1 %or.cond465, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 8, ptr %i.a, align 4, !tbaa !18
  br label %.thread512

bb.t:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !283
  %i.bk = tail call i32 %i.bj(ptr noundef nonnull %1, ptr noundef %0) #27 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !284
  %i.bn = tail call i32 %i.bm(ptr noundef nonnull %1, ptr noundef %0) #27 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !285
  %i.bq = tail call i32 %i.bp(ptr noundef nonnull %1, ptr noundef %0) #27 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !286
  %i.bt = tail call i32 %i.bs(ptr noundef nonnull %1, ptr noundef %0) #27
  br i1 %.0360504, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !287
  %i.bw = tail call i32 %i.bv(ptr noundef nonnull %1, ptr noundef %0, i8 noundef zeroext 0) #27 ; 3 uses
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !18
  %.not393 = icmp eq i32 %i.bw, 0
  br i1 %.not393, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !288
  %i.bz = tail call i32 %i.by(ptr noundef nonnull %1, ptr noundef %0, i8 noundef zeroext 0) #27 ; 3 uses
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !18
  %i.ca = and i32 %i.bz, 255
  %i.cb = icmp eq i32 %i.ca, 142
  br i1 %i.cb, label %bb.w, label %thread-pre-split

end_hunk_3
begin_hunk_4_@ReadBase128:bb.a
  %i.d = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not.1 = icmp eq i32 %i.e, 0
  br i1 %.not.1, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.ag, 7
  %i.g = and i8 %i.d, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = or disjoint i64 %i.f, %i.h               ; 2 uses
  %i.j = icmp sgt i8 %i.d, -1
  br i1 %i.j, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not.2 = icmp eq i32 %i.l, 0
  br i1 %.not.2, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.i, 7
  %i.n = and i8 %i.k, 127
  %i.o = zext nneg i8 %i.n to i64
  %i.p = or disjoint i64 %i.m, %i.o               ; 2 uses
  %i.q = icmp sgt i8 %i.k, -1
  br i1 %i.q, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not.3 = icmp eq i32 %i.s, 0
  br i1 %.not.3, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.t = shl nuw nsw i64 %i.p, 7
  %i.u = and i8 %i.r, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v               ; 2 uses
  %i.x = icmp sgt i8 %i.r, -1
  br i1 %i.x, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not.4 = icmp eq i32 %i.z, 0
  br i1 %.not.4, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.not16.4 = icmp samesign ult i8 %i.af, 16
  br i1 %.not16.4, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aa = shl nuw nsw i64 %i.w, 7
  %i.ab = and i8 %i.y, 127
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = or disjoint i64 %i.aa, %i.ac
  %i.ae = icmp sgt i8 %i.y, -1
  br i1 %i.ae, label %bb.m, label %.loopexit

bb.k:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.b, -128
  br i1 %.not28, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = and i8 %i.b, 127                        ; 2 uses
  %i.ag = zext nneg i8 %i.af to i64               ; 2 uses
  %i.ah = icmp sgt i8 %i.b, -1
  br i1 %i.ah, label %bb.m, label %bb.b

bb.m:                                             ; preds = %bb.j, %bb.g, %bb.e, %bb.c, %bb.l
  %.lcssa = phi i64 [ %i.ag, %bb.l ], [ %i.i, %bb.c ], [ %i.p, %bb.e ], [ %i.w, %bb.g ], [ %i.ad, %bb.j ]
  store i64 %.lcssa, ptr %1, align 8, !tbaa !162
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.a, %bb.b, %bb.d, %bb.f, %bb.h, %bb.i, %bb.j, %bb.m
  %.014 = phi i32 [ 0, %bb.m ], [ %i.s, %bb.f ], [ %i.c, %bb.a ], [ 8, %bb.k ], [ %i.e, %bb.b ], [ %i.z, %bb.h ], [ 8, %bb.i ], [ %i.l, %bb.d ], [ 8, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Read255UShort(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !18
  %i.b = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  switch i8 %i.b, label %bb.h [
    i8 -3, label %bb.c
    i8 -1, label %bb.d
    i8 -2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %0, ptr noundef nonnull %i.a) #27
  %i.e = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %.sink.split, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27
  %i.g = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.h = zext i8 %i.f to i16
  %i.i = add nuw nsw i16 %i.h, 253
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.j = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not20 = icmp eq i32 %i.k, 0
  br i1 %.not20, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = zext i8 %i.j to i16
  %i.m = add nuw nsw i16 %i.l, 506
  br label %.sink.split

bb.h:                                             ; preds = %bb.b
  %i.n = zext i8 %i.b to i16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  %.sink = phi i16 [ %i.n, %bb.h ], [ %i.m, %bb.g ], [ %i.i, %bb.e ], [ %i.d, %bb.c ]
  store i16 %.sink, ptr %1, align 2, !tbaa !237
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ %i.k, %bb.f ], [ %i.c, %bb.a ], [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @compute_ULong_sum(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #14 {
bb.a:
  %i.a = and i64 %1, -4                           ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i64 %1, -4                           ; 2 uses
  %i.c = lshr i64 %i.b, 2
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.b, 12
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, 9223372036854775804
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01823.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ai, %.preheader.loopexit.unr-lcssa ]
  %.02022.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ae, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01823.epil = phi i64 [ %i.j, %.lr.ph.epil ], [ %.01823.epil.init, %.lr.ph.epil.preheader ]
  %.02022.epil = phi ptr [ %i.f, %.lr.ph.epil ], [ %.02022.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.02022.epil, i64 4 ; 2 uses
  %i.g = load i32, ptr %.02022.epil, align 1
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = zext i32 %i.h to i64
  %i.j = add i64 %.01823.epil, %i.i               ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.loopexit, label %.lr.ph.epil, !llvm.loop !651

.preheader.loopexit:                              ; preds = %.lr.ph.epil, %.preheader.loopexit.unr-lcssa
  %.lcssa42 = phi ptr [ %i.ae, %.preheader.loopexit.unr-lcssa ], [ %i.f, %.lr.ph.epil ]
  %.lcssa41 = phi i64 [ %i.ai, %.preheader.loopexit.unr-lcssa ], [ %i.j, %.lr.ph.epil ]
  %i.k = and i64 %1, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.020.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa42, %.preheader.loopexit ] ; 2 uses
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %.lcssa41, %.preheader.loopexit ] ; 3 uses
  %.017.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %.preheader.loopexit ]
  %i.l = icmp ult i64 %.017.lcssa, %1
  br i1 %i.l, label %.lr.ph31.preheader, label %._crit_edge

.lr.ph31.preheader:                               ; preds = %.preheader
  %i.m = and i64 %1, 3                            ; 2 uses
  %i.n = sub i64 %i.a, %1
  %i.o = icmp ugt i64 %i.n, -4
  br i1 %i.o, label %.lr.ph31.epil.preheader, label %.lr.ph31

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01823 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %.02022 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.p = getelementptr inbounds nuw i8, ptr %.02022, i64 4
  %i.q = load i32, ptr %.02022, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %.01823, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.02022, i64 8
  %i.v = load i32, ptr %i.p, align 1
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = add i64 %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.02022, i64 12
  %i.aa = load i32, ptr %i.u, align 1
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.02022, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.z, align 1
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add i64 %i.ad, %i.ah                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !652

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %.lr.ph31
  %.030 = phi i32 [ %i.bk, %.lr.ph31 ], [ 24, %.lr.ph31.preheader ] ; 5 uses
  %.11928 = phi i64 [ %i.bj, %.lr.ph31 ], [ %.018.lcssa, %.lr.ph31.preheader ]
  %.12127 = phi ptr [ %i.be, %.lr.ph31 ], [ %.020.lcssa, %.lr.ph31.preheader ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.12127, i64 1
  %i.ak = load i8, ptr %.12127, align 1, !tbaa !17
  %i.al = zext i8 %i.ak to i32
  %i.am = shl i32 %i.al, %.030
  %i.an = zext i32 %i.am to i64
  %i.ao = add i64 %.11928, %i.an
  %i.ap = add nsw i32 %.030, -8
  %i.aq = getelementptr inbounds nuw i8, ptr %.12127, i64 2
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.as = zext i8 %i.ar to i32
  %i.at = shl i32 %i.as, %i.ap
  %i.au = zext i32 %i.at to i64
  %i.av = add i64 %i.ao, %i.au
  %i.aw = add nsw i32 %.030, -16
  %i.ax = getelementptr inbounds nuw i8, ptr %.12127, i64 3
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl i32 %i.az, %i.aw
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add i64 %i.av, %i.bb
  %i.bd = add nsw i32 %.030, -24
  %i.be = getelementptr inbounds nuw i8, ptr %.12127, i64 4
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl i32 %i.bg, %i.bd
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add i64 %i.bc, %i.bi
  %i.bk = add nsw i32 %.030, -32
  br label %.lr.ph31, !llvm.loop !653

.lr.ph31.epil.preheader:                          ; preds = %.lr.ph31.preheader
  %lcmp.mod50 = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph31.epil

.lr.ph31.epil:                                    ; preds = %.lr.ph31.epil, %.lr.ph31.epil.preheader
  %.030.epil = phi i32 [ %i.br, %.lr.ph31.epil ], [ 24, %.lr.ph31.epil.preheader ] ; 2 uses
  %.11928.epil = phi i64 [ %i.bq, %.lr.ph31.epil ], [ %.018.lcssa, %.lr.ph31.epil.preheader ]
  %.12127.epil = phi ptr [ %i.bl, %.lr.ph31.epil ], [ %.020.lcssa, %.lr.ph31.epil.preheader ] ; 2 uses
  %epil.iter47 = phi i64 [ %epil.iter47.next, %.lr.ph31.epil ], [ 0, %.lr.ph31.epil.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.12127.epil, i64 1
  %i.bm = load i8, ptr %.12127.epil, align 1, !tbaa !17
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl i32 %i.bn, %.030.epil
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add i64 %.11928.epil, %i.bp             ; 2 uses
  %i.br = add nsw i32 %.030.epil, -8
  %epil.iter47.next = add i64 %epil.iter47, 1     ; 2 uses
  %epil.iter47.cmp.not = icmp eq i64 %epil.iter47.next, %i.m
  br i1 %epil.iter47.cmp.not, label %._crit_edge, label %.lr.ph31.epil, !llvm.loop !654

._crit_edge:                                      ; preds = %.lr.ph31.epil, %.preheader
  %.119.lcssa = phi i64 [ %.018.lcssa, %.preheader ], [ %i.bq, %.lr.ph31.epil ]
  ret i64 %.119.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_tags(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !227
  %i.b = load ptr, ptr %1, align 8, !tbaa !227
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !220
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !220
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.d, i32 %i.f)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @reconstruct_font(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 19 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 26 uses
  %i.g = alloca i32, align 4                      ; 74 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %i.i = alloca i64, align 8                      ; 9 uses
  %i.j = alloca i64, align 8                      ; 27 uses
  %i.k = alloca i16, align 2                      ; 8 uses
  %i.l = alloca i8, align 1                       ; 7 uses
  %i.m = alloca i16, align 2                      ; 10 uses
  %i.n = alloca i64, align 8                      ; 8 uses
  %i.o = alloca i16, align 2                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %i.q = alloca i16, align 2                      ; 7 uses
  %i.r = alloca i32, align 4                      ; 7 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca i32, align 4                      ; 9 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #27
  store i32 0, ptr %i.t, align 4, !tbaa !18
  %i.v = load ptr, ptr %5, align 8, !tbaa !208    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load i16, ptr %i.w, align 8, !tbaa !217  ; 3 uses
  %i.y = zext i16 %i.x to i64                     ; 6 uses
  %i.z = shl nuw nsw i64 %i.y, 4
  %i.aa = or disjoint i64 %i.z, 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #27
  store i64 0, ptr %i.u, align 8, !tbaa !162
  %i.ab = load i64, ptr %4, align 8, !tbaa !250
  %.not.i = icmp eq i16 %i.x, 0                   ; 2 uses
  br i1 %.not.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.y
  br i1 %exitcond.not.i, label %find_table.exit, label %.lr.ph.i, !llvm.loop !655

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !227 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220
  %i.ai = icmp eq i32 %i.ah, 1735162214
  br i1 %i.ai, label %find_table.exit, label %bb.b

find_table.exit:                                  ; preds = %bb.b, %.lr.ph.i
  %.08.i = phi ptr [ %i.af, %.lr.ph.i ], [ null, %bb.b ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %.08.i, ptr %i.aj, align 8, !tbaa !656
  br label %.lr.ph.i148

bb.c:                                             ; preds = %.lr.ph.i148
  %indvars.iv.next.i150 = add nuw nsw i64 %indvars.iv.i149, 1 ; 2 uses
  %exitcond.not.i151 = icmp eq i64 %indvars.iv.next.i150, %i.y
  br i1 %exitcond.not.i151, label %find_table.exit153.thr_comm, label %.lr.ph.i148, !llvm.loop !655

.lr.ph.i148:                                      ; preds = %find_table.exit, %bb.c
  %indvars.iv.i149 = phi i64 [ %indvars.iv.next.i150, %bb.c ], [ 0, %find_table.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i149
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !227 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !220
  %i.ao = icmp eq i32 %i.an, 1819239265
  br i1 %i.ao, label %find_table.exit153, label %bb.c

find_table.exit153.thr_comm:                      ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !657
  %.not = icmp eq ptr %.08.i, null
  br i1 %.not, label %bb.d, label %bb.en

find_table.exit153:                               ; preds = %.lr.ph.i148
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !657
  %i.ar = icmp eq ptr %.08.i, null
  br i1 %i.ar, label %bb.en, label %.thread278

.thread278:                                       ; preds = %find_table.exit153
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !223
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !223
  %i.aw = xor i64 %i.av, %i.at
  %i.ax = and i64 %i.aw, 256
  %.not131 = icmp eq i64 %i.ax, 0
  br i1 %.not131, label %bb.d, label %bb.en

bb.d:                                             ; preds = %find_table.exit153.thr_comm, %.thread, %.thread278
  %i.ay = phi ptr [ %i.ac, %.thread ], [ %i.aj, %.thread278 ], [ %i.aj, %find_table.exit153.thr_comm ] ; 11 uses
  %i.az = phi ptr [ %i.ad, %.thread ], [ %i.aq, %.thread278 ], [ %i.ap, %find_table.exit153.thr_comm ] ; 5 uses
  %i.ba = call ptr @ft_mem_alloc(ptr noundef %7, i64 noundef 80, ptr noundef nonnull %i.t) #27 ; 69 uses
  %i.bb = load i32, ptr %i.t, align 4, !tbaa !18
  %.not132 = icmp eq i32 %i.bb, 0
  br i1 %.not132, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  call void @FT_Stream_OpenMemory(ptr noundef %i.ba, ptr noundef %0, i64 noundef %1) #27
  br i1 %.not.i, label %find_table.exit219.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %wide.trip.count = zext i16 %i.x to i64
  br label %bb.g

bb.f:                                             ; preds = %pad4.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.i213, label %bb.g, !llvm.loop !658

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.0124433 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 4 uses
  %.0125432 = phi i64 [ %i.ab, %.lr.ph ], [ %i.aap, %bb.f ]
  %.0247430 = phi i64 [ 12, %.lr.ph ], [ %.2249, %bb.f ] ; 4 uses
  %.0250429 = phi i16 [ 0, %.lr.ph ], [ %.1251290, %bb.f ] ; 7 uses
  %.0257428 = phi i64 [ %i.aa, %.lr.ph ], [ %.6263, %bb.f ] ; 27 uses
  %.0264427 = phi ptr [ %i.v, %.lr.ph ], [ %.8, %bb.f ] ; 13 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !227 ; 6 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !18 ; 8 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !162 ; 6 uses
  %.sroa.1713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %.sroa.1713.0.copyload = load i64, ptr %.sroa.1713.0..sroa_idx, align 8, !tbaa !162 ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !162 ; 4 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !162 ; 9 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !162
  %i.bh = call i32 @FT_Stream_Seek(ptr noundef %i.ba, i64 noundef %.sroa.18.0.copyload) #27 ; 3 uses
  store i32 %i.bh, ptr %i.t, align 4, !tbaa !18
  %.not134 = icmp ne i32 %i.bh, 0
  %i.bi = add i64 %.sroa.23.0.copyload, %.sroa.18.0.copyload
  %i.bj = icmp ugt i64 %i.bi, %1
  %or.cond = select i1 %.not134, i1 true, i1 %i.bj
  br i1 %or.cond, label %.thread313, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = icmp eq i32 %.sroa.3.0.copyload, 1751672161
  br i1 %i.bk, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #27
  %i.bl = call i32 @FT_Stream_Skip(ptr noundef %i.ba, i64 noundef 34) #27 ; 2 uses
  store i32 %i.bl, ptr %i.s, align 4, !tbaa !18
  %.not.i154 = icmp eq i32 %i.bl, 0
  br i1 %.not.i154, label %bb.j, label %read_num_hmetrics.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bm = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.s) #27 ; 2 uses
  %i.bn = load i32, ptr %i.s, align 4, !tbaa !18
  %.not4.i = icmp eq i32 %i.bn, 0
  br i1 %.not4.i, label %.thread286, label %read_num_hmetrics.exit.thread

read_num_hmetrics.exit.thread:                    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  br label %.thread313thread-pre-split

bb.k:                                             ; preds = %bb.h
  store i16 %.0250429, ptr %i.bc, align 2, !tbaa !659
  %i.bo = and i64 %.sroa.1713.0.copyload, 256
  %.not136.not = icmp eq i64 %i.bo, 0
  br i1 %.not136.not, label %bb.l, label %bb.r

.thread286:                                       ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  store i16 %i.bm, ptr %i.bc, align 2, !tbaa !659
  %i.bp = and i64 %.sroa.1713.0.copyload, 256
  %.not136.not288 = icmp eq i64 %i.bp, 0
  br i1 %.not136.not288, label %.thread292, label %.thread313thread-pre-split

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp eq i32 %.sroa.3.0.copyload, 1751474532
  br i1 %i.bq, label %bb.m, label %.thread292

bb.m:                                             ; preds = %bb.l
  %i.br = icmp ult i64 %.sroa.23.0.copyload, 12
  br i1 %i.br, label %.thread313thread-pre-split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.18.0.copyload
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 0, ptr %i.bt, align 1
  br label %.thread292

.thread292:                                       ; preds = %.thread286, %bb.n, %bb.l
  %.1251289294 = phi i16 [ %.0250429, %bb.l ], [ %.0250429, %bb.n ], [ %i.bm, %.thread286 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.18.0.copyload ; 4 uses
  %i.bv = and i64 %.sroa.23.0.copyload, -4        ; 3 uses
  %.not.i155 = icmp eq i64 %i.bv, 0
  br i1 %.not.i155, label %.preheader.i, label %.lr.ph.i156.preheader

.lr.ph.i156.preheader:                            ; preds = %.thread292
  %i.bw = add i64 %.sroa.23.0.copyload, -4        ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %xtraiter824 = and i64 %i.by, 3                 ; 3 uses
  %i.bz = icmp ult i64 %i.bw, 12
  br i1 %i.bz, label %.lr.ph.i156.epil.preheader, label %.lr.ph.i156.preheader.new

.lr.ph.i156.preheader.new:                        ; preds = %.lr.ph.i156.preheader
  %unroll_iter = and i64 %i.by, 9223372036854775804
  br label %.lr.ph.i156

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i156
  %lcmp.mod825.not = icmp eq i64 %xtraiter824, 0
  br i1 %lcmp.mod825.not, label %.preheader.i, label %.lr.ph.i156.epil.preheader

.lr.ph.i156.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i156.preheader
  %.01823.i.epil.init = phi i64 [ 0, %.lr.ph.i156.preheader ], [ %i.db, %.preheader.i.loopexit.unr-lcssa ]
  %.02022.i.epil.init = phi ptr [ %i.bu, %.lr.ph.i156.preheader ], [ %i.cx, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod828 = icmp ne i64 %xtraiter824, 0
  call void @llvm.assume(i1 %lcmp.mod828)
  br label %.lr.ph.i156.epil

.lr.ph.i156.epil:                                 ; preds = %.lr.ph.i156.epil, %.lr.ph.i156.epil.preheader
  %.01823.i.epil = phi i64 [ %i.ce, %.lr.ph.i156.epil ], [ %.01823.i.epil.init, %.lr.ph.i156.epil.preheader ]
  %.02022.i.epil = phi ptr [ %i.ca, %.lr.ph.i156.epil ], [ %.02022.i.epil.init, %.lr.ph.i156.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i156.epil ], [ 0, %.lr.ph.i156.epil.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.02022.i.epil, i64 4 ; 2 uses
  %i.cb = load i32, ptr %.02022.i.epil, align 1
  %i.cc = call i32 @llvm.bswap.i32(i32 %i.cb)
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add i64 %.01823.i.epil, %i.cd           ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter824
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i156.epil, !llvm.loop !660

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i156.epil, %.thread292
  %.020.lcssa.i = phi ptr [ %i.bu, %.thread292 ], [ %i.cx, %.preheader.i.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph.i156.epil ] ; 2 uses
  %.018.lcssa.i = phi i64 [ 0, %.thread292 ], [ %i.db, %.preheader.i.loopexit.unr-lcssa ], [ %i.ce, %.lr.ph.i156.epil ] ; 3 uses
  %.not327 = icmp eq i64 %i.bv, %.sroa.23.0.copyload
  br i1 %.not327, label %compute_ULong_sum.exit, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %.preheader.i
  %i.cf = and i64 %.sroa.23.0.copyload, 3         ; 2 uses
  %i.cg = sub i64 %i.bv, %.sroa.23.0.copyload
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.lr.ph31.i.epil.preheader, label %.lr.ph31.i

.lr.ph.i156:                                      ; preds = %.lr.ph.i156, %.lr.ph.i156.preheader.new
  %.01823.i = phi i64 [ 0, %.lr.ph.i156.preheader.new ], [ %i.db, %.lr.ph.i156 ]
  %.02022.i = phi ptr [ %i.bu, %.lr.ph.i156.preheader.new ], [ %i.cx, %.lr.ph.i156 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i156.preheader.new ], [ %niter.next.3, %.lr.ph.i156 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.02022.i, i64 4
  %i.cj = load i32, ptr %.02022.i, align 1
  %i.ck = call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cl = zext i32 %i.ck to i64
  %i.cm = add i64 %.01823.i, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.02022.i, i64 8
  %i.co = load i32, ptr %i.ci, align 1
  %i.cp = call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = zext i32 %i.cp to i64
  %i.cr = add i64 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.02022.i, i64 12
  %i.ct = load i32, ptr %i.cn, align 1
  %i.cu = call i32 @llvm.bswap.i32(i32 %i.ct)
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add i64 %i.cr, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.02022.i, i64 16 ; 3 uses
  %i.cy = load i32, ptr %i.cs, align 1
  %i.cz = call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.da = zext i32 %i.cz to i64
  %i.db = add i64 %i.cw, %i.da                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i156, !llvm.loop !652

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %.030.i = phi i32 [ %i.ed, %.lr.ph31.i ], [ 24, %.lr.ph31.i.preheader ] ; 5 uses
  %.11928.i = phi i64 [ %i.ec, %.lr.ph31.i ], [ %.018.lcssa.i, %.lr.ph31.i.preheader ]
  %.12127.i = phi ptr [ %i.dx, %.lr.ph31.i ], [ %.020.lcssa.i, %.lr.ph31.i.preheader ] ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.12127.i, i64 1
  %i.dd = load i8, ptr %.12127.i, align 1, !tbaa !17
  %i.de = zext i8 %i.dd to i32
  %i.df = shl i32 %i.de, %.030.i
  %i.dg = zext i32 %i.df to i64
  %i.dh = add i64 %.11928.i, %i.dg
  %i.di = add nsw i32 %.030.i, -8
  %i.dj = getelementptr inbounds nuw i8, ptr %.12127.i, i64 2
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !17
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl i32 %i.dl, %i.di
  %i.dn = zext i32 %i.dm to i64
  %i.do = add i64 %i.dh, %i.dn
  %i.dp = add nsw i32 %.030.i, -16
  %i.dq = getelementptr inbounds nuw i8, ptr %.12127.i, i64 3
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !17
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl i32 %i.ds, %i.dp
  %i.du = zext i32 %i.dt to i64
  %i.dv = add i64 %i.do, %i.du
  %i.dw = add nsw i32 %.030.i, -24
  %i.dx = getelementptr inbounds nuw i8, ptr %.12127.i, i64 4
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !17
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl i32 %i.dz, %i.dw
  %i.eb = zext i32 %i.ea to i64
  %i.ec = add i64 %i.dv, %i.eb
  %i.ed = add nsw i32 %.030.i, -32
  br label %.lr.ph31.i, !llvm.loop !653

.lr.ph31.i.epil.preheader:                        ; preds = %.lr.ph31.i.preheader
  %lcmp.mod833 = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %lcmp.mod833)
  br label %.lr.ph31.i.epil

.lr.ph31.i.epil:                                  ; preds = %.lr.ph31.i.epil, %.lr.ph31.i.epil.preheader
  %.030.i.epil = phi i32 [ %i.ek, %.lr.ph31.i.epil ], [ 24, %.lr.ph31.i.epil.preheader ] ; 2 uses
  %.11928.i.epil = phi i64 [ %i.ej, %.lr.ph31.i.epil ], [ %.018.lcssa.i, %.lr.ph31.i.epil.preheader ]
  %.12127.i.epil = phi ptr [ %i.ee, %.lr.ph31.i.epil ], [ %.020.lcssa.i, %.lr.ph31.i.epil.preheader ] ; 2 uses
  %epil.iter830 = phi i64 [ %epil.iter830.next, %.lr.ph31.i.epil ], [ 0, %.lr.ph31.i.epil.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.12127.i.epil, i64 1
  %i.ef = load i8, ptr %.12127.i.epil, align 1, !tbaa !17
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl i32 %i.eg, %.030.i.epil
  %i.ei = zext i32 %i.eh to i64
  %i.ej = add i64 %.11928.i.epil, %i.ei           ; 2 uses
  %i.ek = add nsw i32 %.030.i.epil, -8
  %epil.iter830.next = add i64 %epil.iter830, 1   ; 2 uses
  %epil.iter830.cmp.not = icmp eq i64 %epil.iter830.next, %i.cf
  br i1 %epil.iter830.cmp.not, label %compute_ULong_sum.exit, label %.lr.ph31.i.epil, !llvm.loop !661

compute_ULong_sum.exit:                           ; preds = %.lr.ph31.i.epil, %.preheader.i
  %.119.lcssa.i = phi i64 [ %.018.lcssa.i, %.preheader.i ], [ %i.ej, %.lr.ph31.i.epil ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #27
  store i32 0, ptr %i.r, align 4, !tbaa !18
  %i.el = add i64 %.sroa.23.0.copyload, %.0257428 ; 5 uses
  %i.em = icmp ugt i64 %i.el, 31457280
  br i1 %i.em, label %write_buf.exit.thread, label %bb.o

bb.o:                                             ; preds = %compute_ULong_sum.exit
  %i.en = load i64, ptr %6, align 8, !tbaa !162   ; 2 uses
  %i.eo = icmp ugt i64 %i.el, %i.en
  br i1 %i.eo, label %bb.p, label %write_buf.exit

bb.p:                                             ; preds = %bb.o
  %i.ep = call ptr @ft_mem_qrealloc(ptr noundef %7, i64 noundef 1, i64 noundef %i.en, i64 noundef %i.el, ptr noundef %.0264427, ptr noundef nonnull %i.r) #27
  %i.eq = load i32, ptr %i.r, align 4, !tbaa !18
  %.not.i159 = icmp eq i32 %i.eq, 0
  br i1 %.not.i159, label %bb.q, label %write_buf.exit.thread

bb.q:                                             ; preds = %bb.p
  store i64 %i.el, ptr %6, align 8, !tbaa !162
  br label %write_buf.exit

write_buf.exit.thread:                            ; preds = %compute_ULong_sum.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #27
  br label %.thread313thread-pre-split

write_buf.exit:                                   ; preds = %bb.o, %bb.q
  %.0.i158 = phi ptr [ %i.ep, %bb.q ], [ %.0264427, %bb.o ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i158, i64 %.0257428
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr readonly align 1 %i.bu, i64 %.sroa.23.0.copyload, i1 false)
  %.pre25.i = load i32, ptr %i.r, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #27
  %.not141 = icmp eq i32 %.pre25.i, 0
  br i1 %.not141, label %bb.dz, label %.thread313thread-pre-split

bb.r:                                             ; preds = %bb.k
  switch i32 %.sroa.3.0.copyload, label %.thread313thread-pre-split [
    i32 1735162214, label %bb.s
    i32 1819239265, label %bb.cr
    i32 1752003704, label %bb.cs
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i32 0, ptr %i.g, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  store ptr %.0264427, ptr %i.h, align 8, !tbaa !208
  %i.es = call i64 @FT_Stream_Pos(ptr noundef %i.ba) #27 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i64 %.0257428, ptr %i.i, align 8, !tbaa !162
  %i.et = call ptr @ft_mem_qrealloc(ptr noundef %7, i64 noundef 24, i64 noundef 0, i64 noundef 7, ptr noundef null, ptr noundef nonnull %i.g) #27 ; 22 uses
  %i.eu = load i32, ptr %i.g, align 4, !tbaa !18
  %.not.i160 = icmp eq i32 %i.eu, 0
  br i1 %.not.i160, label %bb.t, label %reconstruct_glyf.exit

bb.t:                                             ; preds = %bb.s
  %i.ev = call i32 @FT_Stream_Skip(ptr noundef %i.ba, i64 noundef 2) #27 ; 2 uses
  store i32 %i.ev, ptr %i.g, align 4, !tbaa !18
  %.not330.i = icmp eq i32 %i.ev, 0
  br i1 %.not330.i, label %bb.u, label %reconstruct_glyf.exit

bb.u:                                             ; preds = %bb.t
  %i.ew = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27
  %i.ex = load i32, ptr %i.g, align 4, !tbaa !18
  %.not331.i = icmp eq i32 %i.ex, 0
  br i1 %.not331.i, label %bb.v, label %reconstruct_glyf.exit

bb.v:                                             ; preds = %bb.u
  %i.ey = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27 ; 4 uses
  %i.ez = load i32, ptr %i.g, align 4, !tbaa !18
  %.not332.i = icmp eq i32 %i.ez, 0
  br i1 %.not332.i, label %bb.w, label %reconstruct_glyf.exit

bb.w:                                             ; preds = %bb.v
  %i.fa = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27 ; 2 uses
  %i.fb = load i32, ptr %i.g, align 4, !tbaa !18
  %.not333.i = icmp eq i32 %i.fb, 0
  br i1 %.not333.i, label %bb.x, label %reconstruct_glyf.exit

bb.x:                                             ; preds = %bb.w
  store i16 %i.ey, ptr %i.bd, align 8, !tbaa !662
  %.not334.i = icmp eq i16 %i.fa, 0
  %i.fc = zext i16 %i.ey to i64                   ; 5 uses
  %i.fd = add nuw nsw i64 %i.fc, 1
  %i.fe = select i1 %.not334.i, i64 1, i64 2
  %i.ff = shl nuw nsw i64 %i.fd, %i.fe
  %i.fg = load ptr, ptr %i.az, align 8, !tbaa !657
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !221
  %.not335.i = icmp eq i64 %i.fi, %i.ff
  br i1 %.not335.i, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.fj = load ptr, ptr %i.ay, align 8, !tbaa !656
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !222
  %i.fm = icmp ult i64 %i.fl, 36
  br i1 %i.fm, label %.thread.i, label %.preheader435.preheader.i

.preheader435.preheader.i:                        ; preds = %bb.y
  %i.fn = call i32 @FT_Stream_ReadULong(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27 ; 2 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = load i32, ptr %i.g, align 4, !tbaa !18
  %.not385.i = icmp eq i32 %i.fp, 0
  br i1 %.not385.i, label %bb.z, label %reconstruct_glyf.exit

bb.z:                                             ; preds = %.preheader435.preheader.i
  %i.fq = load ptr, ptr %i.ay, align 8, !tbaa !656
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !222
  %i.ft = add i64 %i.fs, -36
  %i.fu = icmp ult i64 %i.ft, %i.fo
  br i1 %i.fu, label %.thread.i, label %.preheader435.1.i

.preheader435.1.i:                                ; preds = %bb.z
  %i.fv = add i64 %i.es, 36                       ; 2 uses
  store i64 %i.fv, ptr %i.et, align 8, !tbaa !663
  %i.fw = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 4 uses
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !665
  %i.fx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %i.fo, ptr %i.fx, align 8, !tbaa !666
  %i.fy = add i32 %i.fn, 36                       ; 2 uses
  %i.fz = call i32 @FT_Stream_ReadULong(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27 ; 2 uses
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %i.gb = load i32, ptr %i.g, align 4, !tbaa !18
  %.not385.1.i = icmp eq i32 %i.gb, 0
  br i1 %.not385.1.i, label %bb.aa, label %reconstruct_glyf.exit

bb.aa:                                            ; preds = %.preheader435.1.i
  %i.gc = load ptr, ptr %i.ay, align 8, !tbaa !656
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !222
  %i.gf = zext i32 %i.fy to i64                   ; 2 uses
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = icmp ult i64 %i.gg, %i.ga
  br i1 %i.gh, label %.thread.i, label %.preheader435.2.i

.preheader435.2.i:                                ; preds = %bb.aa
  %i.gi = add i64 %i.es, %i.gf                    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !663
  %i.gk = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 3 uses
  store i64 %i.gi, ptr %i.gk, align 8, !tbaa !665
  %i.gl = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store i64 %i.ga, ptr %i.gl, align 8, !tbaa !666
  %i.gm = add i32 %i.fz, %i.fy                    ; 2 uses
  %i.gn = call i32 @FT_Stream_ReadULong(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27 ; 2 uses
  %i.go = zext i32 %i.gn to i64                   ; 2 uses
  %i.gp = load i32, ptr %i.g, align 4, !tbaa !18
  %.not385.2.i = icmp eq i32 %i.gp, 0
  br i1 %.not385.2.i, label %bb.ab, label %reconstruct_glyf.exit

bb.ab:                                            ; preds = %.preheader435.2.i
  %i.gq = load ptr, ptr %i.ay, align 8, !tbaa !656
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !222
  %i.gt = zext i32 %i.gm to i64                   ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = icmp ult i64 %i.gu, %i.go
  br i1 %i.gv, label %.thread.i, label %.preheader435.3.i

.preheader435.3.i:                                ; preds = %bb.ab
  %i.gw = add i64 %i.es, %i.gt                    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !663
  %i.gy = getelementptr inbounds nuw i8, ptr %i.et, i64 56 ; 4 uses
  store i64 %i.gw, ptr %i.gy, align 8, !tbaa !665
  %i.gz = getelementptr inbounds nuw i8, ptr %i.et, i64 64 ; 2 uses
  store i64 %i.go, ptr %i.gz, align 8, !tbaa !666
  %i.ha = add i32 %i.gn, %i.gm                    ; 2 uses
  %i.hb = call i32 @FT_Stream_ReadULong(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27 ; 2 uses
  %i.hc = zext i32 %i.hb to i64                   ; 2 uses
  %i.hd = load i32, ptr %i.g, align 4, !tbaa !18
  %.not385.3.i = icmp eq i32 %i.hd, 0
  br i1 %.not385.3.i, label %bb.ac, label %reconstruct_glyf.exit

bb.ac:                                            ; preds = %.preheader435.3.i
  %i.he = load ptr, ptr %i.ay, align 8, !tbaa !656
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !222
  %i.hh = zext i32 %i.ha to i64                   ; 2 uses
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = icmp ult i64 %i.hi, %i.hc
  br i1 %i.hj, label %.thread.i, label %.preheader435.4.i

.preheader435.4.i:                                ; preds = %bb.ac
  %i.hk = add i64 %i.es, %i.hh                    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.et, i64 72 ; 2 uses
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !663
  %i.hm = getelementptr inbounds nuw i8, ptr %i.et, i64 80 ; 7 uses
  store i64 %i.hk, ptr %i.hm, align 8, !tbaa !665
  %i.hn = getelementptr inbounds nuw i8, ptr %i.et, i64 88 ; 2 uses
  store i64 %i.hc, ptr %i.hn, align 8, !tbaa !666
  %i.ho = add i32 %i.hb, %i.ha                    ; 2 uses
  %i.hp = call i32 @FT_Stream_ReadULong(ptr noundef %i.ba, ptr noundef nonnull %i.g) #27 ; 2 uses
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
  %i.hr = load i32, ptr %i.g, align 4, !tbaa !18
  %.not385.4.i = icmp eq i32 %i.hr, 0
  br i1 %.not385.4.i, label %bb.ad, label %reconstruct_glyf.exit

bb.ad:                                            ; preds = %.preheader435.4.i
end_hunk_4
begin_hunk_5_@store_loca:bb.a
  %indvars.iv72 = phi i64 [ 0, %.preheader.split.us.preheader.new ], [ %indvars.iv.next73.3, %.preheader.split.us ] ; 5 uses
  %.04166.us = phi ptr [ %i.g, %.preheader.split.us.preheader.new ], [ %i.as, %.preheader.split.us ] ; 9 uses
  %niter93 = phi i64 [ 0, %.preheader.split.us.preheader.new ], [ %niter93.next.3, %.preheader.split.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !162  ; 2 uses
  %i.m = lshr i64 %i.l, 1
  %i.n = lshr i64 %i.l, 9
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.04166.us, i64 1
  store i8 %i.o, ptr %.04166.us, align 1, !tbaa !17
  %i.q = trunc i64 %i.m to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.04166.us, i64 2
  store i8 %i.q, ptr %i.p, align 1, !tbaa !17
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !162  ; 2 uses
  %i.v = lshr i64 %i.u, 1
  %i.w = lshr i64 %i.u, 9
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %.04166.us, i64 3
  store i8 %i.x, ptr %i.r, align 1, !tbaa !17
  %i.z = trunc i64 %i.v to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.04166.us, i64 4
  store i8 %i.z, ptr %i.y, align 1, !tbaa !17
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !162 ; 2 uses
  %i.ae = lshr i64 %i.ad, 1
  %i.af = lshr i64 %i.ad, 9
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.04166.us, i64 5
  store i8 %i.ag, ptr %i.aa, align 1, !tbaa !17
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.04166.us, i64 6
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !17
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !162 ; 2 uses
  %i.an = lshr i64 %i.am, 1
  %i.ao = lshr i64 %i.am, 9
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.04166.us, i64 7
  store i8 %i.ap, ptr %i.aj, align 1, !tbaa !17
  %i.ar = trunc i64 %i.an to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.04166.us, i64 8 ; 2 uses
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !17
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %niter93.next.3 = add nuw nsw i64 %niter93, 4   ; 2 uses
  %niter93.ncmp.3 = icmp eq i64 %niter93.next.3, %unroll_iter92
  br i1 %niter93.ncmp.3, label %.split.us.loopexit.unr-lcssa, label %.preheader.split.us, !llvm.loop !693

.preheader.split:                                 ; preds = %.preheader.split, %.preheader.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.split.preheader.new ], [ %indvars.iv.next.1, %.preheader.split ] ; 3 uses
  %.04166 = phi ptr [ %i.g, %.preheader.split.preheader.new ], [ %i.bt, %.preheader.split ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.split.preheader.new ], [ %niter.next.1, %.preheader.split ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.au = load i64, ptr %i.at, align 8, !tbaa !162 ; 4 uses
  %i.av = lshr i64 %i.au, 24
  %i.aw = trunc i64 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.04166, i64 1
  store i8 %i.aw, ptr %.04166, align 1, !tbaa !17
  %i.ay = lshr i64 %i.au, 16
  %i.az = trunc i64 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.04166, i64 2
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !17
  %i.bb = lshr i64 %i.au, 8
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.04166, i64 3
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !17
  %i.be = trunc i64 %i.au to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %.04166, i64 4
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !17
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !162 ; 4 uses
  %i.bj = lshr i64 %i.bi, 24
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.04166, i64 5
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !17
  %i.bm = lshr i64 %i.bi, 16
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.04166, i64 6
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !17
  %i.bp = lshr i64 %i.bi, 8
  %i.bq = trunc i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.04166, i64 7
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !17
  %i.bs = trunc i64 %i.bi to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.04166, i64 8 ; 2 uses
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.us.loopexit87.unr-lcssa, label %.preheader.split, !llvm.loop !693

.split.us.loopexit.unr-lcssa:                     ; preds = %.preheader.split.us
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.split.us, label %.preheader.split.us.epil.preheader

.preheader.split.us.epil.preheader:               ; preds = %.split.us.loopexit.unr-lcssa, %.preheader.split.us.preheader
  %indvars.iv72.epil.init = phi i64 [ 0, %.preheader.split.us.preheader ], [ %indvars.iv.next73.3, %.split.us.loopexit.unr-lcssa ]
  %.04166.us.epil.init = phi ptr [ %i.g, %.preheader.split.us.preheader ], [ %i.as, %.split.us.loopexit.unr-lcssa ]
  %lcmp.mod91 = icmp ne i64 %xtraiter89, 0
  call void @llvm.assume(i1 %lcmp.mod91)
  br label %.preheader.split.us.epil

.preheader.split.us.epil:                         ; preds = %.preheader.split.us.epil, %.preheader.split.us.epil.preheader
  %indvars.iv72.epil = phi i64 [ %indvars.iv.next73.epil, %.preheader.split.us.epil ], [ %indvars.iv72.epil.init, %.preheader.split.us.epil.preheader ] ; 2 uses
  %.04166.us.epil = phi ptr [ %i.cb, %.preheader.split.us.epil ], [ %.04166.us.epil.init, %.preheader.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.split.us.epil ], [ 0, %.preheader.split.us.epil.preheader ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72.epil
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !162 ; 2 uses
  %i.bw = lshr i64 %i.bv, 1
  %i.bx = lshr i64 %i.bv, 9
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.04166.us.epil, i64 1
  store i8 %i.by, ptr %.04166.us.epil, align 1, !tbaa !17
  %i.ca = trunc i64 %i.bw to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.04166.us.epil, i64 2
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !17
  %indvars.iv.next73.epil = add nuw nsw i64 %indvars.iv72.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter89
  br i1 %epil.iter.cmp.not, label %.split.us, label %.preheader.split.us.epil, !llvm.loop !694

.split.us.loopexit87.unr-lcssa:                   ; preds = %.preheader.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us, label %.preheader.split.epil.preheader

.preheader.split.epil.preheader:                  ; preds = %.split.us.loopexit87.unr-lcssa, %.preheader.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.split.preheader ], [ %indvars.iv.next.1, %.split.us.loopexit87.unr-lcssa ]
  %.04166.epil.init = phi ptr [ %i.g, %.preheader.split.preheader ], [ %i.bt, %.split.us.loopexit87.unr-lcssa ] ; 4 uses
  %lcmp.mod88 = trunc i64 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod88)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !162 ; 4 uses
  %i.ce = lshr i64 %i.cd, 24
  %i.cf = trunc i64 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.04166.epil.init, i64 1
  store i8 %i.cf, ptr %.04166.epil.init, align 1, !tbaa !17
  %i.ch = lshr i64 %i.cd, 16
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.04166.epil.init, i64 2
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !17
  %i.ck = lshr i64 %i.cd, 8
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.04166.epil.init, i64 3
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !17
  %i.cn = trunc i64 %i.cd to i8
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !17
  br label %.split.us

.split.us:                                        ; preds = %.preheader.split.epil.preheader, %.split.us.loopexit87.unr-lcssa, %.split.us.loopexit.unr-lcssa, %.preheader.split.us.epil
  %i.co = and i64 %i.f, 1048572                   ; 3 uses
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.split.us
  %i.cp = add nsw i64 %i.f, -4                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %xtraiter94 = and i64 %i.cr, 3                  ; 3 uses
  %i.cs = icmp ult i64 %i.cp, 12
  br i1 %i.cs, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter100 = and i64 %i.cr, 9223372036854775804
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod96.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod96.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01823.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.du, %.preheader.i.loopexit.unr-lcssa ]
  %.02022.i.epil.init = phi ptr [ %i.g, %.lr.ph.i.preheader ], [ %i.dq, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter94, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.01823.i.epil = phi i64 [ %i.cx, %.lr.ph.i.epil ], [ %.01823.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.02022.i.epil = phi ptr [ %i.ct, %.lr.ph.i.epil ], [ %.02022.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter95 = phi i64 [ %epil.iter95.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.02022.i.epil, i64 4 ; 2 uses
  %i.cu = load i32, ptr %.02022.i.epil, align 1
  %i.cv = call i32 @llvm.bswap.i32(i32 %i.cu)
  %i.cw = zext i32 %i.cv to i64
  %i.cx = add i64 %.01823.i.epil, %i.cw           ; 2 uses
  %epil.iter95.next = add i64 %epil.iter95, 1     ; 2 uses
  %epil.iter95.cmp.not = icmp eq i64 %epil.iter95.next, %xtraiter94
  br i1 %epil.iter95.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !695

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.split.us
  %.020.lcssa.i = phi ptr [ %i.g, %.split.us ], [ %i.dq, %.preheader.i.loopexit.unr-lcssa ], [ %i.ct, %.lr.ph.i.epil ] ; 2 uses
  %.018.lcssa.i = phi i64 [ 0, %.split.us ], [ %i.du, %.preheader.i.loopexit.unr-lcssa ], [ %i.cx, %.lr.ph.i.epil ] ; 3 uses
  %.not63 = icmp eq i64 %i.co, %i.f
  br i1 %.not63, label %compute_ULong_sum.exit, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %.preheader.i
  %i.cy = and i64 %i.f, 2
  %i.cz = sub nsw i64 %i.co, %i.f
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %.lr.ph31.i.epil.preheader, label %.lr.ph31.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01823.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.du, %.lr.ph.i ]
  %.02022.i = phi ptr [ %i.g, %.lr.ph.i.preheader.new ], [ %i.dq, %.lr.ph.i ] ; 5 uses
  %niter101 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter101.next.3, %.lr.ph.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %.02022.i, i64 4
  %i.dc = load i32, ptr %.02022.i, align 1
  %i.dd = call i32 @llvm.bswap.i32(i32 %i.dc)
  %i.de = zext i32 %i.dd to i64
  %i.df = add i64 %.01823.i, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.02022.i, i64 8
  %i.dh = load i32, ptr %i.db, align 1
  %i.di = call i32 @llvm.bswap.i32(i32 %i.dh)
  %i.dj = zext i32 %i.di to i64
  %i.dk = add i64 %i.df, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.02022.i, i64 12
  %i.dm = load i32, ptr %i.dg, align 1
  %i.dn = call i32 @llvm.bswap.i32(i32 %i.dm)
  %i.do = zext i32 %i.dn to i64
  %i.dp = add i64 %i.dk, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %.02022.i, i64 16 ; 3 uses
  %i.dr = load i32, ptr %i.dl, align 1
  %i.ds = call i32 @llvm.bswap.i32(i32 %i.dr)
  %i.dt = zext i32 %i.ds to i64
  %i.du = add i64 %i.dp, %i.dt                    ; 3 uses
  %niter101.next.3 = add nuw nsw i64 %niter101, 4 ; 2 uses
  %niter101.ncmp.3.not = icmp eq i64 %niter101.next.3, %unroll_iter100
  br i1 %niter101.ncmp.3.not, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !652

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %.030.i = phi i32 [ %i.ew, %.lr.ph31.i ], [ 24, %.lr.ph31.i.preheader ] ; 5 uses
  %.11928.i = phi i64 [ %i.ev, %.lr.ph31.i ], [ %.018.lcssa.i, %.lr.ph31.i.preheader ]
  %.12127.i = phi ptr [ %i.eq, %.lr.ph31.i ], [ %.020.lcssa.i, %.lr.ph31.i.preheader ] ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.12127.i, i64 1
  %i.dw = load i8, ptr %.12127.i, align 1, !tbaa !17
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl i32 %i.dx, %.030.i
  %i.dz = zext i32 %i.dy to i64
  %i.ea = add i64 %.11928.i, %i.dz
  %i.eb = add nsw i32 %.030.i, -8
  %i.ec = getelementptr inbounds nuw i8, ptr %.12127.i, i64 2
  %i.ed = load i8, ptr %i.dv, align 1, !tbaa !17
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl i32 %i.ee, %i.eb
  %i.eg = zext i32 %i.ef to i64
  %i.eh = add i64 %i.ea, %i.eg
  %i.ei = add nsw i32 %.030.i, -16
  %i.ej = getelementptr inbounds nuw i8, ptr %.12127.i, i64 3
  %i.ek = load i8, ptr %i.ec, align 1, !tbaa !17
  %i.el = zext i8 %i.ek to i32
  %i.em = shl i32 %i.el, %i.ei
  %i.en = zext i32 %i.em to i64
  %i.eo = add i64 %i.eh, %i.en
  %i.ep = add nsw i32 %.030.i, -24
  %i.eq = getelementptr inbounds nuw i8, ptr %.12127.i, i64 4
  %i.er = load i8, ptr %i.ej, align 1, !tbaa !17
  %i.es = zext i8 %i.er to i32
  %i.et = shl i32 %i.es, %i.ep
  %i.eu = zext i32 %i.et to i64
  %i.ev = add i64 %i.eo, %i.eu
  %i.ew = add nsw i32 %.030.i, -32
  br label %.lr.ph31.i, !llvm.loop !653

.lr.ph31.i.epil.preheader:                        ; preds = %.lr.ph31.i.preheader
  %lcmp.mod106 = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph31.i.epil

.lr.ph31.i.epil:                                  ; preds = %.lr.ph31.i.epil, %.lr.ph31.i.epil.preheader
  %.030.i.epil = phi i32 [ %i.fd, %.lr.ph31.i.epil ], [ 24, %.lr.ph31.i.epil.preheader ] ; 2 uses
  %.11928.i.epil = phi i64 [ %i.fc, %.lr.ph31.i.epil ], [ %.018.lcssa.i, %.lr.ph31.i.epil.preheader ]
  %.12127.i.epil = phi ptr [ %i.ex, %.lr.ph31.i.epil ], [ %.020.lcssa.i, %.lr.ph31.i.epil.preheader ] ; 2 uses
  %epil.iter103 = phi i64 [ %epil.iter103.next, %.lr.ph31.i.epil ], [ 0, %.lr.ph31.i.epil.preheader ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.12127.i.epil, i64 1
  %i.ey = load i8, ptr %.12127.i.epil, align 1, !tbaa !17
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl i32 %i.ez, %.030.i.epil
  %i.fb = zext i32 %i.fa to i64
  %i.fc = add i64 %.11928.i.epil, %i.fb           ; 2 uses
  %i.fd = add nsw i32 %.030.i.epil, -8
  %epil.iter103.next = add i64 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i64 %epil.iter103.next, 2
  br i1 %epil.iter103.cmp.not, label %compute_ULong_sum.exit, label %.lr.ph31.i.epil, !llvm.loop !696

compute_ULong_sum.exit:                           ; preds = %.lr.ph31.i.epil, %.preheader.i
  %.119.lcssa.i = phi i64 [ %.018.lcssa.i, %.preheader.i ], [ %i.fc, %.lr.ph31.i.epil ]
  store i64 %.119.lcssa.i, ptr %3, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !18
  %i.fe = add i64 %i.d, %i.f                      ; 5 uses
  %i.ff = icmp ugt i64 %i.fe, 31457280
  br i1 %i.ff, label %write_buf.exit.thread, label %bb.b

bb.b:                                             ; preds = %compute_ULong_sum.exit
  %i.fg = load i64, ptr %5, align 8, !tbaa !162   ; 2 uses
  %i.fh = icmp ugt i64 %i.fe, %i.fg
  br i1 %i.fh, label %bb.c, label %write_buf.exit

bb.c:                                             ; preds = %bb.b
  %i.fi = call ptr @ft_mem_qrealloc(ptr noundef %7, i64 noundef 1, i64 noundef %i.fg, i64 noundef %i.fe, ptr noundef %i.c, ptr noundef nonnull %i.a) #27
  %i.fj = load i32, ptr %i.a, align 4, !tbaa !18
  %.not.i50 = icmp eq i32 %i.fj, 0
  br i1 %.not.i50, label %bb.d, label %write_buf.exit.thread

bb.d:                                             ; preds = %bb.c
  store i64 %i.fe, ptr %5, align 8, !tbaa !162
  br label %write_buf.exit

write_buf.exit.thread:                            ; preds = %compute_ULong_sum.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.f

write_buf.exit:                                   ; preds = %bb.b, %bb.d
  %.0.i = phi ptr [ %i.fi, %bb.d ], [ %i.c, %bb.b ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.g, i64 %i.f, i1 false)
  %.pre25.i = load i32, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not47 = icmp eq i32 %.pre25.i, 0
  br i1 %.not47, label %bb.e, label %bb.f

bb.e:                                             ; preds = %write_buf.exit
  store ptr %.0.i, ptr %4, align 8, !tbaa !208
  store i64 %i.fe, ptr %6, align 8, !tbaa !162
  br label %.thread

bb.f:                                             ; preds = %write_buf.exit.thread, %write_buf.exit
  %.pr = load i32, ptr %i.b, align 4, !tbaa !18
  %.not49 = icmp eq i32 %.pr, 0
  br i1 %.not49, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  store i32 8, ptr %i.b, align 4, !tbaa !18
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.a, %bb.e
  call void @ft_mem_free(ptr noundef %7, ptr noundef %i.g) #27
  %.043 = load i32, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret i32 %.043
}

declare hidden ptr @ft_mem_strdup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @tt_face_build_cmaps(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 25 uses
  %1 = alloca %struct.FT_CharMapRec_, align 8     ; 7 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct.TT_ValidatorRec_, align 8   ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !697  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile ptr %i.j, ptr %i.b, align 8, !tbaa !208
  %.0..0..0..0.17 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %.not = icmp eq ptr %.0..0..0..0.17, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !375  ; 2 uses
  %i.m = icmp ult i64 %i.l, 4
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0..0..0..0.18 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.n = getelementptr inbounds nuw i8, ptr %.0..0..0..0.18, i64 2
  store volatile ptr %i.n, ptr %i.b, align 8, !tbaa !208
  %.0..0..0..0.19 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.o = getelementptr inbounds nuw i8, ptr %.0..0..0..0.19, i64 2
  store volatile ptr %i.o, ptr %i.b, align 8, !tbaa !208
  %.0..0..0..0.20 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.p = getelementptr inbounds i8, ptr %.0..0..0..0.20, i64 -2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !17
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 8
  %.0..0..0..0.21 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.t = getelementptr inbounds i8, ptr %.0..0..0..0.21, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v
  store volatile i32 %i.w, ptr %i.a, align 4, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l ; 2 uses
  %.0..0..0..0.3461 = load volatile i32, ptr %i.a, align 4, !tbaa !18
  %.not5262 = icmp eq i32 %.0..0..0..0.3461, 0
  br i1 %.not5262, label %.critedge, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 220
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph63, %bb.p
  %.0..0..0..0.22 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.ae = getelementptr inbounds nuw i8, ptr %.0..0..0..0.22, i64 8
  %.not53 = icmp ugt ptr %i.ae, %i.x
  br i1 %.not53, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %.0..0..0..0.23 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.af = getelementptr inbounds nuw i8, ptr %.0..0..0..0.23, i64 2
  store volatile ptr %i.af, ptr %i.b, align 8, !tbaa !208
  %.0..0..0..0.24 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.ag = getelementptr inbounds i8, ptr %.0..0..0..0.24, i64 -2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = zext i8 %i.ah to i16
  %i.aj = shl nuw i16 %i.ai, 8
  %.0..0..0..0.25 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.ak = getelementptr inbounds i8, ptr %.0..0..0..0.25, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %i.am = zext i8 %i.al to i16
  %i.an = or disjoint i16 %i.aj, %i.am
  store i16 %i.an, ptr %i.y, align 4, !tbaa !324
  %.0..0..0..0.26 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.ao = getelementptr inbounds nuw i8, ptr %.0..0..0..0.26, i64 2
  store volatile ptr %i.ao, ptr %i.b, align 8, !tbaa !208
  %.0..0..0..0.27 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.ap = getelementptr inbounds i8, ptr %.0..0..0..0.27, i64 -2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = zext i8 %i.aq to i16
  %i.as = shl nuw i16 %i.ar, 8
  %.0..0..0..0.28 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.at = getelementptr inbounds i8, ptr %.0..0..0..0.28, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i16
  %i.aw = or disjoint i16 %i.as, %i.av
  store i16 %i.aw, ptr %i.z, align 2, !tbaa !325
  store ptr %0, ptr %1, align 8, !tbaa !330
  store i32 0, ptr %i.aa, align 8, !tbaa !326
  %.0..0..0..0.29 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.ax = getelementptr inbounds nuw i8, ptr %.0..0..0..0.29, i64 4
  store volatile ptr %i.ax, ptr %i.b, align 8, !tbaa !208
  %.0..0..0..0.30 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.ay = getelementptr inbounds i8, ptr %.0..0..0..0.30, i64 -4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw i32 %i.ba, 24
  %.0..0..0..0.31 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.bc = getelementptr inbounds i8, ptr %.0..0..0..0.31, i64 -3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 16
  %i.bg = or disjoint i32 %i.bf, %i.bb
  %.0..0..0..0.32 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.bh = getelementptr inbounds i8, ptr %.0..0..0..0.32, i64 -2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = or disjoint i32 %i.bg, %i.bk
  %.0..0..0..0.33 = load volatile ptr, ptr %i.b, align 8, !tbaa !208
  %i.bm = getelementptr inbounds i8, ptr %.0..0..0..0.33, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bl, %i.bo            ; 2 uses
  %.not54 = icmp eq i32 %i.bp, 0
  br i1 %.not54, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = load i64, ptr %i.k, align 8, !tbaa !375
  %i.bs = add i64 %i.br, -2
  %.not55 = icmp ult i64 %i.bs, %i.bq
  br i1 %.not55, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bq
  store volatile ptr %i.bt, ptr %i.c, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.0..0..0..0.9 = load volatile ptr, ptr %i.c, align 8, !tbaa !208
  %i.bu = load i8, ptr %.0..0..0..0.9, align 1, !tbaa !17
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
end_hunk_5
