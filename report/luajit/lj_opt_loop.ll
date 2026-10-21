Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_opt_loop?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LoopState = type { ptr, ptr, i32 }

@lj_ir_mode = external hidden local_unnamed_addr constant [102 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @lj_opt_loop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.LoopState, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !29
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  store ptr %0, ptr %1, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = call i32 @lj_vm_cpcall(ptr noundef %i.k, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull @cploop_opt) #6 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 -744
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.o = load i32, ptr %i.i, align 8, !tbaa !36
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 -728 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !57
  %i.t = sub i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8, !tbaa !57
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.v = getelementptr inbounds i8, ptr %0, i64 -736
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !59
  %i.x = call ptr %i.u(ptr noundef %i.w, ptr noundef %i.n, i64 noundef range(i64 0, 8589934591) %i.q, i64 noundef 0) #6, !inline_history !48 ; 0 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.g, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %i.z = icmp eq i32 %i.l, 2
  br i1 %i.z, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp ult i64 %i.ad, -1829587348619264
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = bitcast i64 %i.ad to double
  %i.ag = fptosi double %i.af to i32
  switch i32 %i.ag, label %bb.f [
    i32 26, label %bb.e
    i32 24, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !64 ; 2 uses
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !64
  %i.ak = icmp slt i32 %i.ai, 1
  br i1 %i.ak, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.e
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !63
  call fastcc void @loop_undo(ptr noundef nonnull %0, i32 noundef %i.b, i32 noundef %i.e, i32 noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  call void @lj_err_throw(ptr noundef %i.y, i32 noundef %i.l) #7
  unreachable

bb.g:                                             ; preds = %bb.a, %.critedge
  %.1 = phi i32 [ 1, %.critedge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden i32 @lj_vm_cpcall(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @cploop_opt(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) initializes((8, 20)) %2) #0 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !34     ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 8 uses
  %i.e = add i32 %i.d, -32768                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.e, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = zext i32 %i.e to i64
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = tail call ptr @lj_mem_realloc(ptr noundef %i.h, ptr noundef null, i64 noundef 0, i64 noundef %i.j) #6 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -65536 ; 9 uses
  store i16 -32768, ptr %i.k, align 2, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 188 ; 3 uses
  store i16 4480, ptr %i.o, align 4, !tbaa !38
  store i16 0, ptr %i.n, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 186 ; 4 uses
  store i16 0, ptr %i.p, align 2, !tbaa !38
  %i.q = tail call i32 @lj_ir_emit(ptr noundef %i.b) #6 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 6 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !29
  %i.t = zext i16 %i.s to i32                     ; 5 uses
  %i.u = shl nuw nsw i32 %i.t, 1
  %i.v = add nsw i32 %i.u, -2                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 348
  %i.x = load i32, ptr %i.w, align 4, !tbaa !79
  %i.y = icmp ugt i32 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %lj_snap_grow_buf.exit.i, !prof !80

bb.b:                                             ; preds = %bb.a
  tail call void @lj_snap_grow_buf_(ptr noundef nonnull %i.b, i32 noundef range(i32 -2, 131069) %i.v) #6
  br label %lj_snap_grow_buf.exit.i

lj_snap_grow_buf.exit.i:                          ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !30
  %i.ab = shl i32 %i.aa, 1
  %i.ac = add nsw i32 %i.t, -2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.af = add nsw i32 %i.t, -1
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !41  ; 2 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul nsw i32 %i.ac, %i.ak
  %i.am = add i32 %i.al, %i.ab                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !81
  %i.ap = icmp ugt i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.c, label %lj_snap_grow_map.exit.i, !prof !80

bb.c:                                             ; preds = %lj_snap_grow_buf.exit.i
  tail call void @lj_snap_grow_map_(ptr noundef nonnull %i.b, i32 noundef %i.am) #6
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [12 x i8], ptr %.pre.i, i64 %i.ag
  %.phi.trans.insert197.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %.pre198.i = load i8, ptr %.phi.trans.insert197.i, align 2, !tbaa !41
  br label %lj_snap_grow_map.exit.i

lj_snap_grow_map.exit.i:                          ; preds = %bb.c, %lj_snap_grow_buf.exit.i
  %i.aq = phi i8 [ %i.aj, %lj_snap_grow_buf.exit.i ], [ %.pre198.i, %bb.c ]
  %i.ar = phi ptr [ %i.ae, %lj_snap_grow_buf.exit.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %i.ag
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.av = load i32, ptr %i.as, align 4, !tbaa !43
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aw ; 4 uses
  %i.ay = zext i8 %i.aq to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  store i32 -16777216, ptr %i.az, align 4, !tbaa !44
  %i.ba = icmp ugt i32 %i.d, 32769
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %lj_snap_grow_map.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 182 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %wide.trip.count.i = zext i32 %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %.thread170.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 32769, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread170.i ] ; 7 uses
  %.0140186.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.1141.i, %.thread170.i ] ; 7 uses
  %.0142185.i = phi i32 [ 0, %.lr.ph.i ], [ %.8.i, %.thread170.i ] ; 12 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0140186.i, i64 4
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !82
  %i.bg = zext i16 %i.bf to i64
  %.not151.i = icmp samesign ult i64 %indvars.iv.i, %i.bg
  br i1 %.not151.i, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %.0140186.i, i64 12 ; 3 uses
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !42 ; 5 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64              ; 3 uses
  %i.bk = load i32, ptr %.0140186.i, align 4, !tbaa !43
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.bl, 2            ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i ; 2 uses
  %i.bn = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.bo = load i16, ptr %i.r, align 2, !tbaa !84  ; 2 uses
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %i.bp ; 3 uses
  %i.br = icmp eq ptr %i.bh, %i.bq
  %.0.in.i.i.i = select i1 %i.br, ptr %i.z, ptr %i.bh
  %.0.i.i.i = load i32, ptr %.0.in.i.i.i, align 4, !tbaa !44
  %i.bs = zext i32 %.0.i.i.i to i64
  %.idx98.i.i = shl nuw nsw i64 %i.bs, 2          ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx98.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.0140186.i, i64 10
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !41  ; 3 uses
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %.0140186.i, i64 8
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !85  ; 2 uses
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = load i8, ptr %i.bc, align 2, !tbaa !45
  %.not.i.i = icmp sgt i8 %i.ca, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = load i32, ptr %i.z, align 4, !tbaa !30
  %i.cc = add i16 %i.bo, 1
  store i16 %i.cc, ptr %i.r, align 2, !tbaa !29
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds i8, ptr %i.bq, i64 -12 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.076.i.i = phi i32 [ %i.cb, %bb.f ], [ %i.ce, %bb.g ] ; 2 uses
  %.069.i.i = phi ptr [ %i.bq, %bb.f ], [ %i.cd, %bb.g ] ; 7 uses
  store i8 0, ptr %i.bc, align 2, !tbaa !45
  store i32 %.076.i.i, ptr %.069.i.i, align 4, !tbaa !43
  %i.cf = load i32, ptr %i.c, align 4, !tbaa !28
  %i.cg = trunc i32 %i.cf to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 4
  store i16 %i.cg, ptr %i.ch, align 4, !tbaa !82
  %i.ci = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 6
  store i16 0, ptr %i.ci, align 2, !tbaa !86
  %i.cj = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 8
  store i8 %i.by, ptr %i.cj, align 4, !tbaa !85
  %i.ck = getelementptr inbounds nuw i8, ptr %.0140186.i, i64 9
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !87
  %i.cm = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 9
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !87
  %i.cn = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 11
  store i8 0, ptr %i.cn, align 1, !tbaa !88
  %i.co = zext i32 %.076.i.i to i64               ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.co ; 4 uses
  %.not96.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not96.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.m, %bb.h
  %.071.lcssa.i.i = phi i32 [ 0, %bb.h ], [ %.273.i.i, %bb.m ] ; 2 uses
  %.070.lcssa.i.i = phi i32 [ 0, %bb.h ], [ %.1.i.i, %bb.m ] ; 2 uses
  %i.cq = zext i32 %.071.lcssa.i.i to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !44 ; 2 uses
  %i.ct = lshr i32 %i.cs, 24
  %i.cu = icmp samesign ult i32 %i.ct, %i.bz
  br i1 %i.cu, label %.lr.ph88.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.m
  %.07084.i.i = phi i32 [ %.1.i.i, %bb.m ], [ 0, %bb.h ] ; 3 uses
  %.07183.i.i = phi i32 [ %.273.i.i, %bb.m ], [ 0, %bb.h ] ; 3 uses
  %.07482.i.i = phi i32 [ %.175.i.i, %bb.m ], [ 0, %bb.h ] ; 3 uses
  %i.cv = zext nneg i32 %.07482.i.i to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !44 ; 4 uses
  %i.cy = zext i32 %.07183.i.i to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !44 ; 2 uses
  %i.db = lshr i32 %i.da, 24                      ; 2 uses
  %i.dc = lshr i32 %i.cx, 24                      ; 2 uses
  %i.dd = icmp samesign ult i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.de = zext i32 %.07084.i.i to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.de
  store i32 %i.da, ptr %i.df, align 4, !tbaa !44
  %i.dg = add i32 %.07183.i.i, 1
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.dh = icmp eq i32 %i.db, %i.dc
  %i.di = zext i1 %i.dh to i32
  %spec.select.i.i = add i32 %.07183.i.i, %i.di
  %i.dj = and i32 %i.cx, 65535                    ; 2 uses
  %i.dk = icmp samesign ult i32 %i.dj, 32768
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dl = and i32 %i.cx, -327680
  %i.dm = zext nneg i32 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !78
  %i.dp = zext i16 %i.do to i32
  %i.dq = or disjoint i32 %i.dl, %i.dp
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i.i = phi i32 [ %i.cx, %bb.j ], [ %i.dq, %bb.k ]
  %i.dr = zext i32 %.07084.i.i to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dr
  store i32 %.0.i.i, ptr %i.ds, align 4, !tbaa !44
  %i.dt = add nuw nsw i32 %.07482.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.175.i.i = phi i32 [ %.07482.i.i, %bb.i ], [ %i.dt, %bb.l ] ; 2 uses
  %.273.i.i = phi i32 [ %i.dg, %bb.i ], [ %spec.select.i.i, %bb.l ] ; 2 uses
  %.1.i.i = add i32 %.07084.i.i, 1                ; 2 uses
  %i.du = icmp ult i32 %.175.i.i, %i.bw
  br i1 %i.du, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !65

.lr.ph88.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph88.i.i
  %i.dv = phi i32 [ %i.ec, %.lr.ph88.i.i ], [ %i.cs, %.preheader.i.i ]
  %.287.i.i = phi i32 [ %i.dx, %.lr.ph88.i.i ], [ %.070.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.386.i.i = phi i32 [ %i.dw, %.lr.ph88.i.i ], [ %.071.lcssa.i.i, %.preheader.i.i ]
  %i.dw = add i32 %.386.i.i, 1                    ; 2 uses
  %i.dx = add i32 %.287.i.i, 1                    ; 2 uses
  %i.dy = zext i32 %.287.i.i to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dy
  store i32 %i.dv, ptr %i.dz, align 4, !tbaa !44
  %i.ea = zext i32 %i.dw to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !44 ; 2 uses
  %i.ed = lshr i32 %i.ec, 24
  %i.ee = icmp samesign ult i32 %i.ed, %i.bz
  br i1 %i.ee, label %.lr.ph88.i.i, label %._crit_edge.i.i, !llvm.loop !66

._crit_edge.i.i:                                  ; preds = %.lr.ph88.i.i, %.preheader.i.i
  %.2.lcssa.i.i = phi i32 [ %.070.lcssa.i.i, %.preheader.i.i ], [ %i.dx, %.lr.ph88.i.i ] ; 2 uses
  %i.ef = trunc i32 %.2.lcssa.i.i to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 10
  store i8 %i.ef, ptr %i.eg, align 2, !tbaa !41
  %i.eh = zext i8 %i.bv to i64                    ; 2 uses
  %.idx97.i.i = shl nuw nsw i64 %i.eh, 2          ; 4 uses
  %i.ei = zext i32 %.2.lcssa.i.i to i64           ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ei ; 5 uses
  %i.ek = add nuw nsw i64 %.idx97.i.i, %.idx.i.i
  %i.el = icmp samesign ult i64 %i.ek, %.idx98.i.i
  br i1 %i.el, label %.lr.ph93.preheader.i.i, label %loop_subst_snap.exit.i

.lr.ph93.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx97.i.i ; 4 uses
  %i.en = add i64 %.idx.i.i, %i.bj
  %i.eo = add i64 %i.en, %.idx97.i.i
  %i.ep = add i64 %i.eo, 4
  %i.eq = add i64 %.idx98.i.i, %i.bj
  %i.er = tail call i64 @llvm.umax.i64(i64 %i.ep, i64 %i.eq)
  %i.es = xor i64 %i.bj, -1
  %i.et = add i64 %i.er, %i.es
  %i.eu = add nuw nsw i64 %.idx.i.i, %.idx97.i.i
  %i.ev = sub i64 %i.et, %i.eu                    ; 2 uses
  %i.ew = lshr i64 %i.ev, 2
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ev, 44
  br i1 %min.iters.check, label %.lr.ph93.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph93.preheader.i.i
end_hunk_0
begin_hunk_1_@cploop_opt:bb.a
  %i.jj = add i16 %i.ji, -1                       ; 2 uses
  store i16 %i.jj, ptr %i.r, align 2, !tbaa !29
  %i.jk = zext i16 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [12 x i8], ptr %.pre203.i, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !43
  store i32 %i.jm, ptr %i.z, align 4, !tbaa !30
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i
  %i.jn = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre203.i, i64 10
  %i.jp = load i8, ptr %i.jo, align 2, !tbaa !41
  %i.jq = zext i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !44
  store i32 %i.js, ptr %i.az, align 4, !tbaa !44
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 436
  %i.ju = load i16, ptr %i.jt, align 4, !tbaa !78 ; 4 uses
  %i.jv = zext i16 %i.ju to i32                   ; 2 uses
  %.not209.i.i = icmp eq i32 %.0142.lcssa.i, 0
  br i1 %.not209.i.i, label %.loopexit172.i.i, label %.lr.ph.i163.i

.lr.ph.i163.i:                                    ; preds = %bb.ar
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 10 uses
  %wide.trip.count.i.i = zext i32 %.0142.lcssa.i to i64 ; 2 uses
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %.thread.i.i, %.lr.ph.i163.i
  %indvars.iv.ph.i.i = phi i64 [ %indvars.iv.next269.i.i, %.thread.i.i ], [ 0, %.lr.ph.i163.i ]
  %.0135177.ph.i.i = phi i32 [ %i.kk, %.thread.i.i ], [ 0, %.lr.ph.i163.i ]
  %i.jx = phi i1 [ false, %.thread.i.i ], [ true, %.lr.ph.i163.i ]
  br label %bb.as

bb.as:                                            ; preds = %bb.aw, %.outer.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.aw ], [ %indvars.iv.ph.i.i, %.outer.i.i ] ; 3 uses
  %.0135177.i.i = phi i32 [ %.1136.i.i, %bb.aw ], [ %.0135177.ph.i.i, %.outer.i.i ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !78 ; 5 uses
  %i.ka = zext i16 %i.jz to i64                   ; 3 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !78 ; 3 uses
  %i.kd = icmp eq i16 %i.jz, %i.kc
  %i.ke = icmp eq i16 %i.kc, -1
  %or.cond.i.i = or i1 %i.kd, %i.ke
  br i1 %or.cond.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kf = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.ka
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4 ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 4, !tbaa !38
  %i.kj = and i8 %i.ki, -65
  store i8 %i.kj, ptr %i.kh, align 4, !tbaa !38
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.kk = add nuw i32 %.0135177.i.i, 1            ; 4 uses
  %i.kl = zext i32 %.0135177.i.i to i64
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kl
  store i16 %i.jz, ptr %i.km, align 2, !tbaa !78
  %i.kn = load ptr, ptr %i.jw, align 8, !tbaa !47 ; 2 uses
  %i.ko = zext i16 %i.kc to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ko ; 2 uses
  %i.kq = load i16, ptr %i.kp, align 8, !tbaa !38
  %i.kr = icmp eq i16 %i.kq, %i.jz
  br i1 %i.kr, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 2
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !38
  %i.ku = icmp eq i16 %i.kt, %i.jz
  br i1 %i.ku, label %bb.aw, label %.thread.i.i

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.1136.i.i = phi i32 [ %.0135177.i.i, %bb.at ], [ %i.kk, %bb.au ], [ %i.kk, %bb.av ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i165.i, label %bb.as, !llvm.loop !70

.thread.i.i:                                      ; preds = %bb.av
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ka
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 4, !tbaa !38
  %i.ky = or i8 %i.kx, 32
  store i8 %i.ky, ptr %i.kw, align 4, !tbaa !38
  %indvars.iv.next269.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not270.i.i = icmp eq i64 %indvars.iv.next269.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not270.i.i, label %._crit_edge.thread273.i.i, label %.outer.i.i, !llvm.loop !70

._crit_edge.i165.i:                               ; preds = %bb.aw
  br i1 %i.jx, label %.loopexit172.i.i, label %._crit_edge.thread273.i.i

._crit_edge.thread273.i.i:                        ; preds = %.thread.i.i, %._crit_edge.i165.i
  %.1136272276.i.i = phi i32 [ %.1136.i.i, %._crit_edge.i165.i ], [ %i.kk, %.thread.i.i ] ; 2 uses
  %i.kz = load i32, ptr %i.c, align 4, !tbaa !28
  %.1138183.i.i = add i32 %i.kz, -1               ; 2 uses
  %i.la = icmp ugt i32 %.1138183.i.i, %i.jv
  br i1 %i.la, label %.lr.ph186.i.i, label %._crit_edge187.i.i

.lr.ph186.i.i:                                    ; preds = %._crit_edge.thread273.i.i
  %i.lb = zext i32 %.1138183.i.i to i64
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit173.i.i, %.lr.ph186.i.i
  %indvars.iv214.i.i = phi i64 [ %i.lb, %.lr.ph186.i.i ], [ %indvars.iv.next215.i.i, %.loopexit173.i.i ] ; 2 uses
  %i.lc = load ptr, ptr %i.jw, align 8, !tbaa !47 ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv214.i.i ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !38 ; 2 uses
  %i.lg = icmp sgt i16 %i.lf, -1
  br i1 %i.lg, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lh = zext i16 %i.lf to i64
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 4, !tbaa !38
  %i.ll = and i8 %i.lk, -33
  store i8 %i.ll, ptr %i.lj, align 4, !tbaa !38
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.lm = load i16, ptr %i.ld, align 8, !tbaa !38 ; 2 uses
  %i.ln = icmp sgt i16 %i.lm, -1
  br i1 %i.ln, label %.loopexit173.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lo = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.lp = zext i16 %i.lm to i64
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4 ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 4, !tbaa !38
  %i.lt = and i8 %i.ls, -33
  store i8 %i.lt, ptr %i.lr, align 4, !tbaa !38
  %i.lu = load i16, ptr %i.ld, align 8, !tbaa !38 ; 2 uses
  %i.lv = icmp ult i16 %i.lu, %i.ju
  br i1 %i.lv, label %bb.bb, label %.loopexit173.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ld, i64 5
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !38
  %i.ly = add i8 %i.lx, -95
  %or.cond163.i.i = icmp ult i8 %i.ly, 6
  br i1 %or.cond163.i.i, label %bb.bc, label %.loopexit173.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.lz = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.ma = zext i16 %i.lu to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.ma ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 5
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !38
  %i.me = icmp eq i8 %i.md, 100
  br i1 %i.me, label %.lr.ph181.i.i, label %.loopexit173.i.i

.lr.ph181.i.i:                                    ; preds = %bb.bc, %bb.bf
  %.0133179.i.i = phi ptr [ %i.ms, %bb.bf ], [ %i.mb, %bb.bc ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0133179.i.i, i64 2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !38 ; 2 uses
  %i.mh = icmp sgt i16 %i.mg, -1
  br i1 %i.mh, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph181.i.i
  %i.mi = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.mj = zext i16 %i.mg to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 4 ; 2 uses
  %i.mm = load i8, ptr %i.ml, align 4, !tbaa !38
  %i.mn = and i8 %i.mm, -33
  store i8 %i.mn, ptr %i.ml, align 4, !tbaa !38
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph181.i.i
  %i.mo = load i16, ptr %.0133179.i.i, align 8, !tbaa !38 ; 2 uses
  %i.mp = icmp sgt i16 %i.mo, -1
  br i1 %i.mp, label %.loopexit173.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mq = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.mr = zext i16 %i.mo to i64
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.mr ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4 ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 4, !tbaa !38
  %i.mv = and i8 %i.mu, -33
  store i8 %i.mv, ptr %i.mt, align 4, !tbaa !38
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 5
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !38
  %i.my = icmp eq i8 %i.mx, 100
  br i1 %i.my, label %.lr.ph181.i.i, label %.loopexit173.i.i, !llvm.loop !71

.loopexit173.i.i:                                 ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %indvars.iv.next215.i.i = add nsw i64 %indvars.iv214.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next215.i.i to i32
  %i.mz = icmp ugt i32 %indvars.i.i, %i.jv
  br i1 %i.mz, label %bb.ax, label %._crit_edge187.i.i, !llvm.loop !72

._crit_edge187.i.i:                               ; preds = %.loopexit173.i.i, %._crit_edge.thread273.i.i
  %i.na = load i16, ptr %i.r, align 2, !tbaa !29
  %i.nb = zext i16 %i.na to i32
  %.0134191.i.i = add nsw i32 %i.nb, -1           ; 2 uses
  %.not156192.i.i = icmp ult i32 %.0134191.i.i, %i.t
  br i1 %.not156192.i.i, label %.loopexit172.i.i, label %.lr.ph195.i.i.a

.loopexit171.i.i.loopexit.unr-lcssa:              ; preds = %bb.bj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit171.i.i, label %.lr.ph190.i.i.epil.preheader

.lr.ph190.i.i.epil.preheader:                     ; preds = %.loopexit171.i.i.loopexit.unr-lcssa, %.lr.ph190.preheader.i.i
  %indvars.iv217.i.i.epil.init = phi i64 [ 0, %.lr.ph190.preheader.i.i ], [ %indvars.iv.next218.i.i.1, %.loopexit171.i.i.loopexit.unr-lcssa ]
  %lcmp.mod72 = trunc i8 %i.nq to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv217.i.i.epil.init
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !44
  %i.ne = and i32 %i.nd, 65535                    ; 2 uses
  %i.nf = icmp samesign ult i32 %i.ne, 32768
  br i1 %i.nf, label %.loopexit171.i.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph190.i.i.epil.preheader
  %i.ng = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.nh = zext nneg i32 %i.ne to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4 ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 4, !tbaa !38
  %i.nl = and i8 %i.nk, -33
  store i8 %i.nl, ptr %i.nj, align 4, !tbaa !38
  br label %.loopexit171.i.i

.loopexit171.i.i:                                 ; preds = %.loopexit171.i.i.loopexit.unr-lcssa, %bb.bg, %.lr.ph190.i.i.epil.preheader, %.lr.ph195.i.i.a
  %.0134.i.i = add i32 %.0134193.i.i, -1          ; 2 uses
  %.not156.i.i = icmp ult i32 %.0134.i.i, %i.t
  br i1 %.not156.i.i, label %.loopexit172.i.i, label %.lr.ph195.i.i.a, !llvm.loop !73

.lr.ph195.i.i.a:                                  ; preds = %._crit_edge187.i.i, %.loopexit171.i.i
  %.0134193.i.i = phi i32 [ %.0134.i.i, %.loopexit171.i.i ], [ %.0134191.i.i, %._crit_edge187.i.i ] ; 2 uses
  %3 = load ptr, ptr %i.ad, align 8, !tbaa !39
  %4 = zext i32 %.0134193.i.i to i64
  %5 = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %4 ; 2 uses
  %6 = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.nm = load i32, ptr %5, align 4, !tbaa !43
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.nn ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.nq = load i8, ptr %i.np, align 2, !tbaa !41  ; 4 uses
  %.not210.i.i = icmp eq i8 %i.nq, 0
  br i1 %.not210.i.i, label %.loopexit171.i.i, label %.lr.ph190.preheader.i.i

.lr.ph190.preheader.i.i:                          ; preds = %.lr.ph195.i.i.a
  %wide.trip.count221.i.i = zext i8 %i.nq to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count221.i.i, 1
  %i.nr = icmp eq i8 %i.nq, 1
  br i1 %i.nr, label %.lr.ph190.i.i.epil.preheader, label %.lr.ph190.preheader.i.i.new

.lr.ph190.preheader.i.i.new:                      ; preds = %.lr.ph190.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count221.i.i, 254
  br label %.lr.ph190.i.i

.lr.ph190.i.i:                                    ; preds = %bb.bj, %.lr.ph190.preheader.i.i.new
  %indvars.iv217.i.i = phi i64 [ 0, %.lr.ph190.preheader.i.i.new ], [ %indvars.iv.next218.i.i.1, %bb.bj ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph190.preheader.i.i.new ], [ %niter.next.1, %bb.bj ]
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv217.i.i
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !44
  %i.nu = and i32 %i.nt, 65535                    ; 2 uses
  %i.nv = icmp samesign ult i32 %i.nu, 32768
  br i1 %i.nv, label %.lr.ph190.i.i.1, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph190.i.i
  %i.nw = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.nx = zext nneg i32 %i.nu to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 4 ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 4, !tbaa !38
  %i.ob = and i8 %i.oa, -33
  store i8 %i.ob, ptr %i.nz, align 4, !tbaa !38
  br label %.lr.ph190.i.i.1

.lr.ph190.i.i.1:                                  ; preds = %bb.bh, %.lr.ph190.i.i
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv217.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !44
  %i.of = and i32 %i.oe, 65535                    ; 2 uses
  %i.og = icmp samesign ult i32 %i.of, 32768
  br i1 %i.og, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph190.i.i.1
  %i.oh = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.oi = zext nneg i32 %i.of to i64
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 2 uses
  %i.ol = load i8, ptr %i.ok, align 4, !tbaa !38
  %i.om = and i8 %i.ol, -33
  store i8 %i.om, ptr %i.ok, align 4, !tbaa !38
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph190.i.i.1
  %indvars.iv.next218.i.i.1 = add nuw nsw i64 %indvars.iv217.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit171.i.i.loopexit.unr-lcssa, label %.lr.ph190.i.i, !llvm.loop !74

.loopexit172.i.i:                                 ; preds = %.loopexit171.i.i, %._crit_edge187.i.i, %._crit_edge.i165.i, %bb.ar
  %.0135.lcssa266.i.i = phi i32 [ 0, %bb.ar ], [ %.1136.i.i, %._crit_edge.i165.i ], [ %.1136272276.i.i, %._crit_edge187.i.i ], [ %.1136272276.i.i, %.loopexit171.i.i ] ; 2 uses
  %.0139.lcssa265.i.i = phi i1 [ true, %bb.ar ], [ true, %._crit_edge.i165.i ], [ false, %._crit_edge187.i.i ], [ false, %.loopexit171.i.i ]
  %i.on = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !91
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !92
  %i.or = add i32 %i.oq, %i.oo                    ; 2 uses
  %i.os = icmp ugt i32 %i.or, 1
  br i1 %i.os, label %.lr.ph199.i.i, label %.preheader170.i.i

.lr.ph199.i.i:                                    ; preds = %.loopexit172.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 604
  %i.ou = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %wide.trip.count232.i.i = zext i32 %i.or to i64
  br label %bb.bn

.preheader170.i.i:                                ; preds = %.critedge.i.i, %.loopexit172.i.i
  %.0144.lcssa.i.i = phi i32 [ %.0135.lcssa266.i.i, %.loopexit172.i.i ], [ %.3147.i.i, %.critedge.i.i ] ; 4 uses
  br i1 %.0139.lcssa265.i.i, label %.preheader.i164.i, label %.preheader169.lr.ph.i.i

.preheader169.lr.ph.i.i:                          ; preds = %.preheader170.i.i
  %.not211.i.i = icmp eq i32 %.0144.lcssa.i.i, 0
  %i.ov = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  br i1 %.not211.i.i, label %loop_unroll.exit, label %.preheader169.us.preheader.i.i

.preheader169.us.preheader.i.i:                   ; preds = %.preheader169.lr.ph.i.i
  %.pre246.pre.i.i = load ptr, ptr %i.ov, align 8, !tbaa !47 ; 2 uses
  %wide.trip.count238.i.i = zext i32 %.0144.lcssa.i.i to i64
  br label %.preheader169.us.i.i

.preheader169.us.i.i:                             ; preds = %.preheader169.us.i.i.backedge, %.preheader169.us.preheader.i.i
  %.pre246249.i.i = phi ptr [ %.pre246.pre.i.i, %.preheader169.us.preheader.i.i ], [ %.pre246248.i.i, %.preheader169.us.i.i.backedge ] ; 2 uses
  %i.ow = phi ptr [ %.pre246.pre.i.i, %.preheader169.us.preheader.i.i ], [ %.be, %.preheader169.us.i.i.backedge ] ; 4 uses
  %indvars.iv234.i.i = phi i64 [ 0, %.preheader169.us.preheader.i.i ], [ %indvars.iv234.i.i.be, %.preheader169.us.i.i.backedge ] ; 2 uses
  %.3142201.us.i.i = phi i32 [ 0, %.preheader169.us.preheader.i.i ], [ %.3142201.us.i.i.be, %.preheader169.us.i.i.backedge ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv234.i.i
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !78
  %i.oz = zext i16 %i.oy to i64                   ; 2 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %i.pc = load i8, ptr %i.pb, align 4, !tbaa !38
  %i.pd = and i8 %i.pc, 32
  %.not159.us.i.i = icmp eq i8 %i.pd, 0
  br i1 %.not159.us.i.i, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.preheader169.us.i.i
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.oz
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !78
  %i.pg = zext i16 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 4 ; 2 uses
  %i.pj = load i8, ptr %i.pi, align 4, !tbaa !38  ; 2 uses
  %i.pk = and i8 %i.pj, 32
  %.not160.us.i.i = icmp eq i8 %i.pk, 0
  br i1 %.not160.us.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pl = and i8 %i.pj, -33
  store i8 %i.pl, ptr %i.pi, align 4, !tbaa !38
  %.pre.i.i.a = load ptr, ptr %i.ov, align 8, !tbaa !47 ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %.preheader169.us.i.i
  %.pre246248.i.i = phi ptr [ %.pre246249.i.i, %.preheader169.us.i.i ], [ %.pre.i.i.a, %bb.bl ], [ %.pre246249.i.i, %bb.bk ] ; 2 uses
  %i.pm = phi ptr [ %i.ow, %.preheader169.us.i.i ], [ %.pre.i.i.a, %bb.bl ], [ %i.ow, %bb.bk ]
  %.5.us.i.i = phi i32 [ %.3142201.us.i.i, %.preheader169.us.i.i ], [ 1, %bb.bl ], [ %.3142201.us.i.i, %bb.bk ] ; 2 uses
  %indvars.iv.next235.i.i = add nuw nsw i64 %indvars.iv234.i.i, 1 ; 2 uses
  %exitcond239.not.i.i = icmp eq i64 %indvars.iv.next235.i.i, %wide.trip.count238.i.i
  br i1 %exitcond239.not.i.i, label %..loopexit_crit_edge.us.i.i, label %.preheader169.us.i.i.backedge

.preheader169.us.i.i.backedge:                    ; preds = %bb.bm, %..loopexit_crit_edge.us.i.i
  %.be = phi ptr [ %i.pm, %bb.bm ], [ %.pre246248.i.i, %..loopexit_crit_edge.us.i.i ]
  %indvars.iv234.i.i.be = phi i64 [ %indvars.iv.next235.i.i, %bb.bm ], [ 0, %..loopexit_crit_edge.us.i.i ]
  %.3142201.us.i.i.be = phi i32 [ %.5.us.i.i, %bb.bm ], [ 0, %..loopexit_crit_edge.us.i.i ]
  br label %.preheader169.us.i.i, !llvm.loop !75

..loopexit_crit_edge.us.i.i:                      ; preds = %bb.bm
  %.not157.us.i.i = icmp eq i32 %.5.us.i.i, 0
  br i1 %.not157.us.i.i, label %.preheader.i164.i, label %.preheader169.us.i.i.backedge

bb.bn:                                            ; preds = %.critedge.i.i, %.lr.ph199.i.i
  %indvars.iv228.i.i = phi i64 [ 1, %.lr.ph199.i.i ], [ %indvars.iv.next229.i.i, %.critedge.i.i ] ; 2 uses
  %.0144196.i.i = phi i32 [ %.0135.lcssa266.i.i, %.lr.ph199.i.i ], [ %.3147.i.i, %.critedge.i.i ]
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv228.i.i
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !44
  %i.pp = and i32 %i.po, 65535
  %i.pq = zext i32 %.0144196.i.i to i64           ; 2 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.pq, i64 64)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bt, %bb.bn
  %indvars.iv223.i.i = phi i64 [ %indvars.iv.next224.i.i, %bb.bt ], [ %i.pq, %bb.bn ] ; 6 uses
  %.0131.i.i = phi i32 [ %i.qj, %bb.bt ], [ %i.pp, %bb.bn ] ; 4 uses
  %i.pr = icmp samesign ult i32 %.0131.i.i, 32768
  br i1 %i.pr, label %.critedge.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ps = zext nneg i32 %.0131.i.i to i64         ; 2 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ps ; 2 uses
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !78
  %i.pv = zext i16 %i.pu to i32
  %.not161.i.i = icmp eq i32 %.0131.i.i, %i.pv
  br i1 %.not161.i.i, label %.critedge.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pw = load ptr, ptr %i.ou, align 8, !tbaa !47
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %i.ps
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 4 ; 3 uses
  %i.pz = load i8, ptr %i.py, align 4, !tbaa !38
  %i.qa = and i8 %i.pz, -33                       ; 3 uses
  store i8 %i.qa, ptr %i.py, align 4, !tbaa !38
  %i.qb = zext i8 %i.qa to i32                    ; 2 uses
  %i.qc = and i32 %i.qb, 64
  %.not162.i.i = icmp ne i32 %i.qc, 0
  %i.qd = and i32 %i.qb, 31
  %i.qe = icmp samesign ult i32 %i.qd, 3
  %or.cond165.i.i = select i1 %.not162.i.i, i1 true, i1 %i.qe
  br i1 %or.cond165.i.i, label %.critedge.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qf = or i8 %i.qa, 64
  store i8 %i.qf, ptr %i.py, align 4, !tbaa !38
  %exitcond227.i.i = icmp eq i64 %indvars.iv223.i.i, %umax.i.i
  br i1 %exitcond227.i.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  tail call void @lj_trace_err(ptr noundef nonnull %i.b, i32 noundef 25) #7
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.qg = trunc nuw i32 %.0131.i.i to i16
  %indvars.iv.next224.i.i = add nuw nsw i64 %indvars.iv223.i.i, 1 ; 2 uses
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv223.i.i
  store i16 %i.qg, ptr %i.qh, align 2, !tbaa !78
  %i.qi = load i16, ptr %i.pt, align 2, !tbaa !78 ; 2 uses
  %i.qj = zext i16 %i.qi to i32
  %i.qk = icmp ugt i16 %i.qi, %i.ju
  br i1 %i.qk, label %.critedge.i.i, label %bb.bo

.critedge.i.i:                                    ; preds = %bb.bt, %bb.bq, %bb.bp, %bb.bo
  %.3147.in.i.i = phi i64 [ %indvars.iv223.i.i, %bb.bo ], [ %indvars.iv223.i.i, %bb.bp ], [ %indvars.iv223.i.i, %bb.bq ], [ %indvars.iv.next224.i.i, %bb.bt ]
  %.3147.i.i = trunc i64 %.3147.in.i.i to i32     ; 2 uses
end_hunk_1
