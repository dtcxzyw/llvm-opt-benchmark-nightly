inline.NumInlined: 15
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jinit_read_gif(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq i32 %i.b, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 16, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.b, ptr %i.e, align 4, !tbaa !33
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  tail call void %i.g(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = tail call ptr %i.j(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 456) #4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %0, ptr %i.l, align 8, !tbaa !38
  store ptr @start_input_gif, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr @finish_input_gif, ptr %i.m, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  store i32 0, ptr %i.n, align 4, !tbaa !49
  ret ptr %i.k
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @start_input_gif(ptr noundef %0, ptr nofree noundef captures(none) initializes((72, 80)) %1) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %i.b = alloca [10 x i8], align 2                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 6, ptr noundef %i.d)
  %i.f = icmp eq i64 %i.e, 6
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 1019, ptr %i.h, align 8, !tbaa !28
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  tail call void %i.i(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load i8, ptr %i.b, align 2, !tbaa !33
  %i.k = icmp ne i8 %i.j, 71
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp ne i8 %i.m, 73
  %or.cond = select i1 %i.k, i1 true, i1 %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.o, align 2
  %i.q = icmp ne i8 %i.p, 70
  %or.cond7 = select i1 %or.cond, i1 true, i1 %i.q
  br i1 %or.cond7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 1019, ptr %i.s, align 8, !tbaa !28
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !34
  tail call void %i.t(ptr noundef %0) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33    ; 2 uses
  %i.w = zext i8 %i.v to i32
  %i.x = icmp ne i8 %i.v, 56                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.z = load i8, ptr %i.y, align 2               ; 3 uses
  %i.aa = icmp ne i8 %i.z, 55
  %or.cond11 = select i1 %i.x, i1 true, i1 %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = icmp ne i8 %i.ac, 97                    ; 2 uses
  %or.cond15 = select i1 %or.cond11, i1 true, i1 %i.ad
  br i1 %or.cond15, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ne i8 %i.z, 57
  %or.cond19 = select i1 %i.x, i1 true, i1 %i.ae
  %or.cond23 = select i1 %or.cond19, i1 true, i1 %i.ad
  br i1 %or.cond23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  store i32 %i.w, ptr %i.ag, align 4, !tbaa !4
  %i.ah = zext i8 %i.z to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %i.aj = zext i8 %i.ac to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i32 1021, ptr %i.al, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51
  tail call void %i.an(ptr noundef %0, i32 noundef 1) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.ap = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 7, ptr noundef %i.ao)
  %i.aq = icmp eq i64 %i.ap, 7
  br i1 %i.aq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i32 44, ptr %i.as, align 8, !tbaa !28
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !34
  tail call void %i.at(ptr noundef nonnull %0) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = load i16, ptr %i.b, align 2             ; 2 uses
  %i.av = zext i16 %i.au to i32
  %i.aw = load i16, ptr %i.o, align 2             ; 2 uses
  %i.ax = zext i16 %i.aw to i32
  %i.ay = icmp eq i16 %i.au, 0
  %i.az = icmp eq i16 %i.aw, 0
  %or.cond25 = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond25, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i32 1017, ptr %i.bb, align 8, !tbaa !28
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !34
  tail call void %i.bc(ptr noundef %0) #4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !52 ; 3 uses
  %.not = icmp ne i32 %i.be, 0
  %narrow = mul nuw i32 %i.ax, %i.av
  %i.bf = icmp ugt i32 %narrow, %i.be
  %or.cond185 = select i1 %.not, i1 %i.bf, i1 false
  br i1 %or.cond185, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i32 42, ptr %i.bh, align 8, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  store i32 %i.be, ptr %i.bi, align 4, !tbaa !33
  %i.bj = load ptr, ptr %0, align 8, !tbaa !27
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34
  tail call void %i.bk(ptr noundef %0) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !33
  switch i8 %i.bm, label %bb.o [
    i8 49, label %bb.p
    i8 0, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i32 1023, ptr %i.bo, align 8, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !51
  tail call void %i.bq(ptr noundef %0, i32 noundef 1) #4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !53
  %i.bv = tail call ptr %i.bu(ptr noundef %0, i32 noundef 1, i32 noundef 256, i32 noundef 3) #4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !54
  %i.bx = load i8, ptr %i.y, align 2, !tbaa !33   ; 2 uses
  %.not177 = icmp sgt i8 %i.bx, -1
  br i1 %.not177, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = and i8 %i.bx, 7
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = shl nuw nsw i32 2, %i.bz                ; 2 uses
  tail call fastcc void @ReadColorMap(ptr noundef nonnull %1, i32 noundef %i.ca, ptr noundef %i.bv)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i32 [ %i.ca, %bb.q ], [ 0, %bb.p ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.r
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.cd = tail call i32 @getc(ptr noundef %i.cc)  ; 2 uses
  switch i32 %i.cd, label %bb.w [
    i32 -1, label %ReadByte.exit.thread
    i32 59, label %.sink.split
    i32 33, label %bb.s
    i32 44, label %bb.x
  ]

ReadByte.exit.thread:                             ; preds = %.backedge
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !38
  br label %.sink.split

bb.s:                                             ; preds = %.backedge
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.cg = tail call i32 @getc(ptr noundef %i.cf)  ; 2 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %bb.t, label %ReadByte.exit.i

bb.t:                                             ; preds = %bb.s
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !38 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !27 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store i32 44, ptr %i.ck, align 8, !tbaa !28
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !34
  tail call void %i.cl(ptr noundef nonnull %i.ci) #4, !inline_history !55
  br label %ReadByte.exit.i

ReadByte.exit.i:                                  ; preds = %bb.t, %bb.s
  %i.cm = load ptr, ptr %i.cb, align 8, !tbaa !38
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !27 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store i32 1022, ptr %i.co, align 8, !tbaa !28
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 44
  store i32 %i.cg, ptr %i.cp, align 4, !tbaa !33
  %i.cq = load ptr, ptr %i.cb, align 8, !tbaa !38 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !51
  tail call void %i.ct(ptr noundef nonnull %i.cq, i32 noundef 1) #4, !inline_history !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br label %bb.u

bb.u:                                             ; preds = %GetDataBlock.exit.i.i, %ReadByte.exit.i
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.cv = tail call i32 @getc(ptr noundef %i.cu)  ; 4 uses
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %.sink.split.i.i.i, label %ReadByte.exit.i.i.i

ReadByte.exit.i.i.i:                              ; preds = %bb.u
  %i.cx = icmp sgt i32 %i.cv, 0
  br i1 %i.cx, label %bb.v, label %DoExtension.exit

bb.v:                                             ; preds = %ReadByte.exit.i.i.i
  %i.cy = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cz = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.da = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.cy, ptr noundef %i.cz)
  %i.db = icmp eq i64 %i.da, %i.cy
  br i1 %i.db, label %GetDataBlock.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.v, %bb.u
  %i.dc = load ptr, ptr %i.cb, align 8, !tbaa !38 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !27 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store i32 44, ptr %i.de, align 8, !tbaa !28
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !34
  tail call void %i.df(ptr noundef nonnull %i.dc) #4, !inline_history !57
  br label %GetDataBlock.exit.i.i

GetDataBlock.exit.i.i:                            ; preds = %.sink.split.i.i.i, %bb.v
  %i.dg = icmp sgt i32 %i.cv, 0
  br i1 %i.dg, label %bb.u, label %DoExtension.exit, !llvm.loop !58

DoExtension.exit:                                 ; preds = %ReadByte.exit.i.i.i, %GetDataBlock.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %DoExtension.exit, %bb.w
  br label %.backedge

.sink.split:                                      ; preds = %.backedge, %ReadByte.exit.thread
  %.sink205 = phi ptr [ %i.ce, %ReadByte.exit.thread ], [ %0, %.backedge ] ; 2 uses
  %.sink202 = phi i32 [ 44, %ReadByte.exit.thread ], [ 1018, %.backedge ]
  %i.dh = load ptr, ptr %.sink205, align 8, !tbaa !27 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store i32 %.sink202, ptr %i.di, align 8, !tbaa !28
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !34
  tail call void %i.dj(ptr noundef nonnull %.sink205) #4
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %.backedge
  %i.dk = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  store i32 1025, ptr %i.dl, align 8, !tbaa !28
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 44
  store i32 %i.cd, ptr %i.dm, align 4, !tbaa !33
  %i.dn = load ptr, ptr %0, align 8, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !51
  tail call void %i.dp(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %.backedge.backedge

bb.x:                                             ; preds = %.backedge
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.dr = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 9, ptr noundef %i.dq)
  %i.ds = icmp eq i64 %i.dr, 9
  br i1 %i.ds, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store i32 44, ptr %i.du, align 8, !tbaa !28
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !34
  tail call void %i.dv(ptr noundef nonnull %0) #4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dw = load i16, ptr %i.y, align 2             ; 2 uses
  %i.dx = zext i16 %i.dw to i32                   ; 5 uses
  %i.dy = load i16, ptr %i.bl, align 2            ; 2 uses
  %i.dz = zext i16 %i.dy to i32                   ; 4 uses
  %i.ea = icmp eq i16 %i.dw, 0
  %i.eb = icmp eq i16 %i.dy, 0
  %or.cond29 = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond29, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ec = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store i32 1017, ptr %i.ed, align 8, !tbaa !28
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !34
  tail call void %i.ee(ptr noundef nonnull %0) #4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.ef = load i32, ptr %i.bd, align 4, !tbaa !52 ; 3 uses
  %.not179 = icmp ne i32 %i.ef, 0
  %narrow180 = mul nuw i32 %i.dz, %i.dx
  %i.eg = icmp ugt i32 %narrow180, %i.ef
  %or.cond186 = select i1 %.not179, i1 %i.eg, i1 false
  br i1 %or.cond186, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eh = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store i32 42, ptr %i.ei, align 8, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 44
  store i32 %i.ef, ptr %i.ej, align 4, !tbaa !33
  %i.ek = load ptr, ptr %0, align 8, !tbaa !27
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !34
  tail call void %i.el(ptr noundef nonnull %0) #4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.en = load i8, ptr %i.em, align 2, !tbaa !33  ; 3 uses
  %i.eo = lshr i8 %i.en, 6
  %.lobit = and i8 %i.eo, 1
  %i.ep = zext nneg i8 %.lobit to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  store i32 %i.ep, ptr %i.eq, align 8, !tbaa !60
  %.not181 = icmp sgt i8 %i.en, -1
  br i1 %.not181, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = and i8 %i.en, 7
  %i.es = zext nneg i8 %i.er to i32
  %i.et = shl nuw nsw i32 2, %i.es                ; 2 uses
  %i.eu = load ptr, ptr %i.bw, align 8, !tbaa !54
  tail call fastcc void @ReadColorMap(ptr noundef nonnull %1, i32 noundef %i.et, ptr noundef %i.eu)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
end_hunk_0
