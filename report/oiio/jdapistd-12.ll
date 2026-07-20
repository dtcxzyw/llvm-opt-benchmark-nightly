inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0
; Function Attrs: nounwind uwtable
define void @jpeg12_crop_scanline(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq i32 %i.d, 12
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 16, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 %i.d, ptr %i.g, align 4, !tbaa !37
  %i.h = load ptr, ptr %0, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  tail call void %i.i(ptr noundef nonnull %0) #4
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %.not102 = icmp eq i32 %i.l, 0
  br i1 %.not102, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 48, ptr %i.n, align 8, !tbaa !34
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !38
  tail call void %i.o(ptr noundef nonnull %0) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41   ; 2 uses
  switch i32 %i.q, label %bb.g [
    i32 205, label %bb.f
    i32 207, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = load i32, ptr %i.r, align 8, !tbaa !42
  %.not105 = icmp eq i32 %i.s, 0
  br i1 %.not105, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i32 21, ptr %i.u, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  store i32 %i.q, ptr %i.v, align 4, !tbaa !37
  %i.w = load ptr, ptr %0, align 8, !tbaa !33
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  tail call void %i.x(ptr noundef nonnull %0) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = icmp ne ptr %1, null
  %i.z = icmp ne ptr %2, null
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 5, ptr %i.ab, align 8, !tbaa !34
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !38
  tail call void %i.ac(ptr noundef nonnull %0) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ad = load i32, ptr %2, align 4, !tbaa !3     ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %1, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = zext i32 %i.ad to i64
  %i.ai = add nuw nsw i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.an = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i32 72, ptr %i.ao, align 8, !tbaa !34
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !38
  tail call void %i.ap(ptr noundef nonnull %0) #4
  %.pre113.a = load i32, ptr %2, align 4, !tbaa !3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre114 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = phi i32 [ %.pre114, %bb.l ], [ %i.ak, %bb.k ]
  %i.ar = phi i32 [ %.pre113.a, %bb.l ], [ %i.ad, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.at = icmp eq i32 %i.ar, %i.aq
  br i1 %i.at, label %._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !44
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !45
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !46
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !47
  %i.bg = mul nsw i32 %i.bf, %i.bd
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.096 = phi i32 [ %i.bb, %bb.p ], [ %i.bg, %bb.q ] ; 2 uses
  %i.bh = load i32, ptr %1, align 4, !tbaa !3
  %.fr = freeze i32 %i.bh                         ; 2 uses
  %i.bi = urem i32 %.fr, %.096                    ; 2 uses
  %i.bj = sub nuw i32 %.fr, %i.bi
  store i32 %i.bj, ptr %1, align 4, !tbaa !3
  %i.bk = load i32, ptr %2, align 4, !tbaa !3
  %i.bl = add i32 %i.bi, %i.bk                    ; 4 uses
  store i32 %i.bl, ptr %2, align 4, !tbaa !3
  store i32 %i.bl, ptr %i.as, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !48
  %.not106 = icmp eq i32 %i.bn, 0
  br i1 %.not106, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !50
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !52
  %i.bv = mul i32 %i.bu, %i.bl
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 92
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !53
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.bx = load i32, ptr %1, align 4, !tbaa !3
  %i.by = zext i32 %i.bx to i64
  %i.bz = sext i32 %.096 to i64                   ; 4 uses
  %i.ca = sdiv i64 %i.by, %i.bz
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %i.cb, ptr %i.cd, align 8, !tbaa !58
  %i.ce = load i32, ptr %1, align 4, !tbaa !3
  %i.cf = add i32 %i.ce, %i.bl
  %i.cg = zext i32 %i.cf to i64
  %i.ch = tail call i64 @jdiv_round_up(i64 noundef %i.cg, i64 noundef %i.bz) #4
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = add i32 %i.ci, -1
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  store i32 %i.cj, ptr %i.cl, align 4, !tbaa !59
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !45 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !60
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 416
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %i.ct = phi i32 [ %i.cn, %.lr.ph ], [ %i.ei, %bb.v ]
  %.097110 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.v ]
  %.098109 = phi ptr [ %i.cq, %.lr.ph ], [ %i.eh, %bb.v ] ; 4 uses
  %i.cu = load i32, ptr %i.au, align 8, !tbaa !44
  %i.cv = icmp eq i32 %i.cu, 1
  %i.cw = icmp eq i32 %i.ct, 1
  %or.cond108 = and i1 %i.cw, %i.cv
  %.phi.trans.insert116 = getelementptr inbounds nuw i8, ptr %.098109, i64 8
  %.pre117 = load i32, ptr %.phi.trans.insert116, align 8, !tbaa !61 ; 2 uses
  %..pre117 = select i1 %or.cond108, i32 1, i32 %.pre117 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.098109, i64 44 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !63
  %i.cz = load i32, ptr %i.as, align 8, !tbaa !43
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.098109, i64 36
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !64
  %i.dd = mul nsw i32 %i.dc, %.pre117
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %i.de, %i.da
  %i.dg = load i32, ptr %i.cr, align 8, !tbaa !47
  %i.dh = load i32, ptr %i.cs, align 8, !tbaa !46
  %i.di = mul nsw i32 %i.dh, %i.dg
  %i.dj = sext i32 %i.di to i64
  %i.dk = tail call i64 @jdiv_round_up(i64 noundef %i.df, i64 noundef %i.dj) #4
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  store i32 %i.dl, ptr %i.cx, align 4, !tbaa !63
  %i.dm = icmp ult i32 %i.dl, 2
  %i.dn = icmp sgt i32 %i.cy, 1
  %or.cond3 = select i1 %i.dm, i1 %i.dn, i1 false
  %spec.select = select i1 %or.cond3, i1 true, i1 %.097110 ; 2 uses
  %i.do = load i32, ptr %1, align 4, !tbaa !3
  %i.dp = mul i32 %i.do, %..pre117
  %i.dq = zext i32 %i.dp to i64
  %i.dr = sdiv i64 %i.dq, %i.bz
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  store i32 %i.ds, ptr %i.dv, align 4, !tbaa !3
  %i.dw = load i32, ptr %1, align 4, !tbaa !3
  %i.dx = load i32, ptr %i.as, align 8, !tbaa !43
  %i.dy = add i32 %i.dx, %i.dw
  %i.dz = mul i32 %i.dy, %..pre117
  %i.ea = zext i32 %i.dz to i64
  %i.eb = tail call i64 @jdiv_round_up(i64 noundef %i.ea, i64 noundef %i.bz) #4
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = add i32 %i.ec, -1
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  store i32 %i.ed, ptr %i.eg, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.098109, i64 96
  %i.ei = load i32, ptr %i.cm, align 8, !tbaa !45 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp slt i64 %indvars.iv.next, %i.ej
  br i1 %i.ek, label %bb.v, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.v
  br i1 %spec.select, label %bb.w, label %._crit_edge.thread

bb.w:                                             ; preds = %._crit_edge
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 112
  store i32 1, ptr %i.el, align 8, !tbaa !67
  tail call void @j12init_upsampler(ptr noundef nonnull %0) #4
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 112
  store i32 0, ptr %i.en, align 8, !tbaa !67
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.u, %._crit_edge, %bb.w, %bb.m
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @j12init_upsampler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @jpeg12_read_scanlines(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !39
  %.not = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.g, -13
  %or.cond = icmp ult i32 %i.h, -4
  br i1 %or.cond, label %.sink.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not46 = icmp eq i32 %i.g, 12
  br i1 %.not46, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 16, ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  store i32 %i.g, ptr %i.k, align 4, !tbaa !37
  %i.l = load ptr, ptr %0, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38
  tail call void %i.m(ptr noundef nonnull %0) #4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41   ; 2 uses
  %.not47 = icmp eq i32 %i.o, 205
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 21, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  store i32 %i.o, ptr %i.r, align 4, !tbaa !37
  %i.s = load ptr, ptr %0, align 8, !tbaa !33
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  tail call void %i.t(ptr noundef nonnull %0) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.x = load i32, ptr %i.w, align 4, !tbaa !68   ; 2 uses
  %.not48 = icmp ult i32 %i.v, %i.x
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i32 126, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  tail call void %i.ab(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70 ; 4 uses
  %.not49 = icmp eq ptr %i.ad, null
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = zext i32 %i.v to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !71
  %i.ag = zext i32 %i.x to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !73
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !74
  tail call void %i.ai(ptr noundef nonnull %0) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i32 16, ptr %i.ap, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !37
  %i.at = load ptr, ptr %0, align 8, !tbaa !33
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  tail call void %i.au(ptr noundef nonnull %0) #4
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !75
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre50 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !76
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = phi ptr [ %.pre50, %bb.k ], [ %i.am, %bb.j ]
  call void %i.av(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %2) #4
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ax = load i32, ptr %i.u, align 8, !tbaa !42
  %i.ay = add i32 %i.ax, %i.aw
  store i32 %i.ay, ptr %i.u, align 8, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ %i.aw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @jpeg12_skip_scanlines(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i16], align 2                ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [1 x i16], align 2                ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7    ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq i32 %i.n, 12
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i32 16, ptr %i.p, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store i32 %i.n, ptr %i.q, align 4, !tbaa !37
  %i.r = load ptr, ptr %0, align 8, !tbaa !33
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  tail call void %i.s(ptr noundef nonnull %0) #4
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.j, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39
  %.not173 = icmp eq i32 %i.v, 0
  br i1 %.not173, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i32 48, ptr %i.x, align 8, !tbaa !34
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !38
  tail call void %i.y(ptr noundef nonnull %0) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !79
  %.not174 = icmp eq i32 %i.aa, 0
end_hunk_0
