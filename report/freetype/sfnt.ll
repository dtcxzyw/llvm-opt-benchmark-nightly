Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_cmap14_char_var_isdefault:bb.a
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !29
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 8
  %i.bp = or disjoint i64 %i.bo, %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !29
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bp, %i.bs            ; 2 uses
  %i.bu = icmp samesign ugt i64 %i.bt, %i.bb
  br i1 %i.bu, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !29
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
  br i1 %i.cb, label %bb.h, label %tt_cmap14_char_map_def_binary.exit.thread, !llvm.loop !4

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
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !29
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !29
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 8
  %i.cs = or disjoint i32 %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 6
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !29
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
  br i1 %i.da, label %.lr.ph.i33, label %tt_cmap14_char_map_nondef_binary.exit.thread, !llvm.loop !5

tt_cmap14_char_map_nondef_binary.exit:            ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %i.cj, i64 7
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !29
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !29
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !80   ; 6 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = add i32 %i.d, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !30
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge28

._crit_edge28:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !82
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.k, align 8, !tbaa !83
  %i.l = zext i32 %i.i to i64
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = call ptr @ft_mem_qrealloc(ptr noundef %1, i64 noundef 4, i64 noundef %i.l, i64 noundef %i.m, ptr noundef %i.o, ptr noundef nonnull %i.a) #27 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !82
  %i.q = load i32, ptr %i.a, align 4, !tbaa !30
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.c, label %tt_cmap14_ensure.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.h, align 8, !tbaa !81
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
  %i.u = load i8, ptr %.02125, align 1, !tbaa !29
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16
  %i.x = getelementptr inbounds nuw i8, ptr %.02125, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !29
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = or disjoint i32 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %.02125, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %.02125, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 16
  %i.al = getelementptr inbounds nuw i8, ptr %.02125, i64 12
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 8
  %i.ap = or disjoint i32 %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %.02125, i64 13
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.as = zext i8 %i.ar to i32
  %i.at = or disjoint i32 %i.ap, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %.02125, i64 22 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !381

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.02125.epil.init = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod31 = trunc i64 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ax = load i8, ptr %.02125.epil.init, align 1, !tbaa !29
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.02125.epil.init, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = or disjoint i32 %i.bd, %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %.02125.epil.init, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.be, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !30
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %2 = and i64 %i.c, 4294967295
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit
  %.0.lcssa = phi i64 [ %2, %._crit_edge.loopexit ], [ 0, %bb.d ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0.lcssa
  store i32 0, ptr %i.bk, align 4, !tbaa !30
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !80
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = add i32 %i.d, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !30
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge65

._crit_edge65:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !82
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.k, align 8, !tbaa !83
  %i.l = zext i32 %i.i to i64
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = call ptr @ft_mem_qrealloc(ptr noundef %1, i64 noundef 4, i64 noundef %i.l, i64 noundef %i.m, ptr noundef %i.o, ptr noundef nonnull %i.a) #27 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !82
  %i.q = load i32, ptr %i.a, align 4, !tbaa !30
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.c, label %tt_cmap14_ensure.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.h, align 8, !tbaa !81
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
  %i.u = load i8, ptr %.03762, align 1, !tbaa !29
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16
  %i.x = getelementptr inbounds nuw i8, ptr %.03762, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !29
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = or disjoint i32 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %.03762, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.03762, i64 3
  %i.ah = load i32, ptr %i.ag, align 1            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.03762, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %.03762, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 24
  %i.an = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 16
  %i.ar = or disjoint i64 %i.aq, %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %.03762, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = or disjoint i64 %i.ar, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.03762, i64 10
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.aw, %i.az            ; 2 uses
  %.not43 = icmp eq i32 %i.ah, 0
  br i1 %.not43, label %tt_cmap14_char_map_def_binary.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.bc = zext i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !28
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
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !29
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !29
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 8
  %i.bu = or disjoint i64 %i.bt, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !29
  %i.bx = zext i8 %i.bw to i64
  %i.by = or disjoint i64 %i.bu, %i.bx            ; 2 uses
  %i.bz = icmp samesign ugt i64 %i.by, %i.t
  br i1 %i.bz, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !29
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
  br i1 %i.cg, label %.lr.ph.i, label %tt_cmap14_char_map_def_binary.exit.thread, !llvm.loop !4

tt_cmap14_char_map_def_binary.exit.thread:        ; preds = %bb.i, %bb.f, %bb.e
  %.not45 = icmp eq i64 %i.ba, 0
  br i1 %.not45, label %tt_cmap14_char_map_nondef_binary.exit.thread, label %bb.j

bb.j:                                             ; preds = %tt_cmap14_char_map_def_binary.exit.thread
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ba ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 1            ; 2 uses
  %.not.i48 = icmp eq i32 %i.cj, 0
  br i1 %.not.i48, label %tt_cmap14_char_map_nondef_binary.exit.thread, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.j
  %i.ck = call i32 @llvm.bswap.i32(i32 %i.cj)
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader, %bb.m
  %.02541.i = phi i32 [ %.2.i52, %bb.m ], [ 0, %.lr.ph.i49.preheader ] ; 2 uses
  %.02640.i = phi i32 [ %.228.i51, %bb.m ], [ %i.ck, %.lr.ph.i49.preheader ] ; 2 uses
  %i.cl = add i32 %.02640.i, %.02541.i
  %i.cm = lshr i32 %i.cl, 1                       ; 3 uses
  %i.cn = mul i32 %i.cm, 5
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.co ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !29
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !29
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 8
  %i.cy = or disjoint i32 %i.cx, %i.ct
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 6
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !29
  %i.db = zext i8 %i.da to i32
  %i.dc = or disjoint i32 %i.cy, %i.db            ; 2 uses
  %i.dd = icmp ult i32 %2, %i.dc
  br i1 %i.dd, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i49
  %i.de = icmp ugt i32 %2, %i.dc
  br i1 %i.de, label %bb.l, label %tt_cmap14_char_map_nondef_binary.exit

end_hunk_0
