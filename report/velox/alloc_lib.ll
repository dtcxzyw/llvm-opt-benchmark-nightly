inline.NumInlined: 59
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@tmalloc_large:bb.a
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !44
  %i.ft = and i64 %i.fs, -8
  %.not299 = icmp eq i64 %i.ft, %.4226.lcssa
  br i1 %.not299, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fu = getelementptr inbounds nuw i8, ptr %.0220, i64 32 ; 2 uses
  %i.fv = lshr i64 %.0219, 63                     ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = shl i64 %.0219, 1
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !42 ; 2 uses
  %.not301 = icmp eq ptr %i.fy, null
  br i1 %.not301, label %bb.bi, label %bb.bg

bb.bi:                                            ; preds = %bb.bh
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fv ; 2 uses
  %.not302 = icmp ult ptr %i.fz, %i.bo
  br i1 %.not302, label %bb.bj, label %.thread317, !prof !25

.thread317:                                       ; preds = %bb.bi
  store ptr %i.bp, ptr %i.fz, align 8, !tbaa !42
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store ptr %.0220, ptr %i.ga, align 8, !tbaa !47
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.bp, ptr %i.gb, align 8, !tbaa !48
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bp, ptr %i.gc, align 8, !tbaa !49
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  tail call void @abort() #17
  unreachable

bb.bk:                                            ; preds = %bb.bg
  %i.gd = getelementptr inbounds nuw i8, ptr %.0220, i64 16 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !49 ; 3 uses
  %.not300 = icmp uge ptr %.0220, %i.bo
  %i.gf = icmp uge ptr %i.ge, %i.bo
  %spec.select310 = select i1 %.not300, i1 %i.gf, i1 false, !prof !27
  br i1 %spec.select310, label %bb.bl, label %bb.bm, !prof !27

bb.bl:                                            ; preds = %bb.bk
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  store ptr %i.bp, ptr %i.gg, align 8, !tbaa !48
  store ptr %i.bp, ptr %i.gd, align 8, !tbaa !49
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !49
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %.0220, ptr %i.gi, align 8, !tbaa !48
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store ptr null, ptr %i.gj, align 8, !tbaa !47
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  tail call void @abort() #17
  unreachable

bb.bn:                                            ; preds = %.thread317, %bb.be, %bb.bl, %bb.az, %bb.at
  %i.gk = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 16
  br label %._crit_edge.thread

bb.bo:                                            ; preds = %bb.n
  tail call void @abort() #17
  unreachable

._crit_edge.thread:                               ; preds = %bb.i, %._crit_edge, %bb.m, %bb.bn
  %.1 = phi ptr [ %i.gk, %bb.bn ], [ null, %bb.m ], [ null, %._crit_edge ], [ null, %bb.i ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sys_alloc(ptr noundef %0, i64 noundef range(i64 -1, -105) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11
  %i.d = and i32 %i.c, 1
  %.not145 = icmp eq i32 %i.d, 0
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 24), align 8
  %.not146 = icmp ult i64 %1, %i.e
  %or.cond = select i1 %.not145, i1 true, i1 %.not146
  br i1 %or.cond, label %mmap_alloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !33
  %.not147 = icmp eq i64 %i.g, 0
  br i1 %.not147, label %mmap_alloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !36 ; 2 uses
  %i.i = add i64 %1, 62
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 0, %i.h
  %i.l = and i64 %i.j, %i.k                       ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.n = load i64, ptr %i.m, align 8, !tbaa !54   ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.p = load i64, ptr %i.o, align 8, !tbaa !55   ; 2 uses
  %i.q = add i64 %i.p, %i.l                       ; 2 uses
  %.not47.i = icmp ugt i64 %i.q, %i.p
  %i.r = icmp ule i64 %i.q, %i.n
  %or.cond.not.i = and i1 %.not47.i, %i.r
  %i.s = icmp ugt i64 %i.l, %1
  %or.cond51.i = select i1 %or.cond.not.i, i1 %i.s, i1 false
  br i1 %or.cond51.i, label %bb.h, label %mmap_alloc.exit.thread

bb.g:                                             ; preds = %bb.e
  %.old.i = icmp ugt i64 %i.l, %1
  br i1 %.old.i, label %bb.h, label %mmap_alloc.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = tail call ptr @mmap(ptr noundef null, i64 noundef %i.l, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #16 ; 6 uses
  %.not48.i = icmp eq ptr %i.t, inttoptr (i64 -1 to ptr)
  br i1 %.not48.i, label %mmap_alloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 0, %i.v
  %i.x = and i64 %i.w, 15                         ; 3 uses
  %i.y = sub i64 %i.l, %i.x
  %i.z = add i64 %i.y, -32                        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x ; 4 uses
  store i64 %i.x, ptr %i.aa, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 11, ptr %i.ad, align 8, !tbaa !28
  %i.ae = getelementptr i8, ptr %i.t, i64 %i.l
  %i.af = getelementptr i8, ptr %i.ae, i64 -16
  store i64 0, ptr %i.af, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !24 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = icmp ult ptr %i.t, %i.ah
  %or.cond49.i = or i1 %i.ai, %i.aj
  br i1 %or.cond49.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.t, ptr %i.ag, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !55
  %i.am = add i64 %i.al, %i.l                     ; 3 uses
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !56
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.l, label %mmap_alloc.exit

bb.l:                                             ; preds = %bb.k
  store i64 %i.am, ptr %i.an, align 8, !tbaa !56
  br label %mmap_alloc.exit

mmap_alloc.exit:                                  ; preds = %bb.k, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %bb.be

mmap_alloc.exit.thread:                           ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !35 ; 2 uses
  %i.as = add i64 %1, 95
  %i.at = add i64 %i.as, %i.ar
  %i.au = sub i64 0, %i.ar
  %i.av = and i64 %i.at, %i.au                    ; 8 uses
  %.not149 = icmp ugt i64 %i.av, %1
  br i1 %.not149, label %bb.m, label %bb.be

bb.m:                                             ; preds = %mmap_alloc.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !54 ; 2 uses
  %.not150 = icmp eq i64 %i.ax, 0
  br i1 %.not150, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !55 ; 2 uses
  %i.ba = add i64 %i.az, %i.av                    ; 2 uses
  %.not151 = icmp ugt i64 %i.ba, %i.az
  %i.bb = icmp ule i64 %i.ba, %i.ax
  %or.cond162.not = and i1 %.not151, %i.bb
  br i1 %or.cond162.not, label %bb.o, label %bb.be

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bc = tail call ptr @mmap(ptr noundef null, i64 noundef %i.av, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #16 ; 9 uses
  %.not152 = icmp ne ptr %i.bc, inttoptr (i64 -1 to ptr) ; 4 uses
  %.0126 = zext i1 %.not152 to i32
  %.0124 = select i1 %.not152, i64 %i.av, i64 0   ; 6 uses
  %.0122 = select i1 %.not152, ptr %i.bc, ptr inttoptr (i64 -1 to ptr) ; 11 uses
  br i1 %.not152, label %bb.p, label %bb.bd

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !55
  %i.bf = add i64 %i.be, %i.av                    ; 3 uses
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !56
  %i.bi = icmp ugt i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !56
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34 ; 30 uses
  %.not154 = icmp eq ptr %i.bk, null
  br i1 %.not154, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = icmp ult ptr %i.bc, %i.bm
  %or.cond163 = or i1 %i.bn, %i.bo
  br i1 %or.cond163, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %i.bc, ptr %i.bl, align 8, !tbaa !24
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 888
  store ptr %i.bc, ptr %i.bp, align 8, !tbaa !57
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i64 %i.av, ptr %i.bq, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i32 1, ptr %i.br, align 8, !tbaa !59
  %i.bs = load i64, ptr @mparams, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !60
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 4095, ptr %i.bu, align 8, !tbaa !61
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !26
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !26
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !22
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !26
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !22
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !22
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !22
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !26
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !22
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !26
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !26
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !22
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !26
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !26
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !22
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !26
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !26
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !22
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !26
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !22
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !26
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !22
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !26
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !26
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !22
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !26
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !22
  %i.ei = icmp eq ptr %0, @_gm_
  br i1 %i.ei, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ej = add i64 %i.av, -80                      ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 0, %i.el
  %i.en = and i64 %i.em, 15                       ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.en ; 2 uses
  %i.ep = sub i64 %i.ej, %i.en                    ; 2 uses
  store ptr %i.eo, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34
  store i64 %i.ep, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33
  %i.eq = or i64 %i.ep, 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !28
  %i.es = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ej
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 80, ptr %i.et, align 8, !tbaa !28
  %i.eu = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  store i64 %i.eu, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 48), align 8, !tbaa !62
  br label %add_segment.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.ev = getelementptr inbounds i8, ptr %0, i64 -16
  %i.ew = getelementptr inbounds i8, ptr %0, i64 -8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !28
  %i.ey = and i64 %i.ex, -8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ey ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.av
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ez to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = add i64 %i.fd, -80                      ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = sub i64 0, %i.fg
  %i.fi = and i64 %i.fh, 15                       ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fi ; 2 uses
  %i.fk = sub i64 %i.fe, %i.fi                    ; 2 uses
  store ptr %i.fj, ptr %i.bj, align 8, !tbaa !34
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !33
  %i.fm = or i64 %i.fk, 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !28
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fe
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 80, ptr %i.fp, align 8, !tbaa !28
  %i.fq = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !62
  br label %add_segment.exit.thread

bb.x:                                             ; preds = %bb.r
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 5 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.z
  %.0128189 = phi ptr [ %i.fs, %bb.x ], [ %i.fy, %bb.z ] ; 5 uses
  %i.ft = load ptr, ptr %.0128189, align 8, !tbaa !63 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0128189, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !64 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fv
  %.not156 = icmp eq ptr %.0122, %i.fw
  br i1 %.not156, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %.0128189, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !65 ; 2 uses
  %.not155 = icmp eq ptr %i.fy, null
  br i1 %.not155, label %.critedge164, label %bb.y, !llvm.loop !66

.critedge:                                        ; preds = %bb.y
  %i.fz = getelementptr inbounds nuw i8, ptr %.0128189, i64 24
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !67
  %i.gb = and i32 %i.ga, 9
  %or.cond166.not178 = icmp ne i32 %i.gb, 1
  %.not158 = icmp ult ptr %i.bk, %i.ft
  %or.cond175 = or i1 %.not158, %or.cond166.not178
  %i.gc = icmp uge ptr %i.bk, %.0122
  %or.cond176.not = or i1 %i.gc, %or.cond175
  br i1 %or.cond176.not, label %.critedge164, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  %i.gd = getelementptr inbounds nuw i8, ptr %.0128189, i64 8
  %i.ge = add i64 %i.fv, %.0124
  store i64 %i.ge, ptr %i.gd, align 8, !tbaa !64
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !33
  %i.gh = add i64 %i.gg, %.0124                   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = sub i64 0, %i.gj
  %i.gl = and i64 %i.gk, 15                       ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.gl ; 2 uses
  %i.gn = sub i64 %i.gh, %i.gl                    ; 2 uses
  store ptr %i.gm, ptr %i.bj, align 8, !tbaa !34
  store i64 %i.gn, ptr %i.gf, align 8, !tbaa !33
  %i.go = or i64 %i.gn, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !28
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.gh
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i64 80, ptr %i.gr, align 8, !tbaa !28
  %i.gs = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !62
  br label %add_segment.exit.thread

.critedge164:                                     ; preds = %bb.z, %.critedge
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !24
  %i.gw = icmp ult ptr %.0122, %i.gv
  br i1 %i.gw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge164
  store ptr %.0122, ptr %i.gu, align 8, !tbaa !24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge164
  %i.gx = getelementptr inbounds nuw i8, ptr %.0122, i64 %.0124
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ae
  %.1129190 = phi ptr [ %i.fs, %bb.ac ], [ %i.ha, %bb.ae ] ; 5 uses
  %i.gy = load ptr, ptr %.1129190, align 8, !tbaa !63 ; 2 uses
  %.not160 = icmp eq ptr %i.gy, %i.gx
  br i1 %.not160, label %.critedge4, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gz = getelementptr inbounds nuw i8, ptr %.1129190, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !65 ; 2 uses
  %.not159 = icmp eq ptr %i.ha, null
  br i1 %.not159, label %.critedge167.preheader, label %bb.ad, !llvm.loop !68

.critedge4:                                       ; preds = %bb.ad
  %i.hb = getelementptr inbounds nuw i8, ptr %.1129190, i64 24
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !67
  %i.hd = and i32 %i.hc, 9
  %or.cond169.not.not = icmp eq i32 %i.hd, 1
  br i1 %or.cond169.not.not, label %add_segment.exit, label %.critedge167.preheader

.critedge167.preheader:                           ; preds = %bb.ae, %.critedge4
  br label %.critedge167

.critedge167:                                     ; preds = %.critedge167.preheader, %bb.ag
  %.0.i.i = phi ptr [ %i.hk, %bb.ag ], [ %i.fs, %.critedge167.preheader ] ; 3 uses
  %i.he = load ptr, ptr %.0.i.i, align 8, !tbaa !63 ; 2 uses
  %.not.i.i = icmp ult ptr %i.bk, %i.he
  br i1 %.not.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.critedge167
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hg ; 4 uses
  %i.hi = icmp ult ptr %i.bk, %i.hh
  br i1 %i.hi, label %segment_holding.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.critedge167
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !65, !nonnull !69, !noundef !69
  br label %.critedge167

segment_holding.exit.i:                           ; preds = %bb.af
  %i.hl = getelementptr inbounds i8, ptr %i.hh, i64 -95
  %i.hm = getelementptr inbounds i8, ptr %i.hh, i64 -79
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = sub i64 0, %i.hn
  %i.hp = and i64 %i.ho, 15
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.hs = icmp ult ptr %i.hq, %i.hr
  %i.ht = select i1 %i.hs, ptr %i.bk, ptr %i.hq   ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.hw = add i64 %.0124, -80                     ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0122, i64 16
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = sub i64 0, %i.hy
  %i.ia = and i64 %i.hz, 15                       ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0122, i64 %i.ia ; 2 uses
  %i.ic = sub i64 %i.hw, %i.ia                    ; 2 uses
  store ptr %i.ib, ptr %i.bj, align 8, !tbaa !34
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !33
  %i.ie = or i64 %i.ic, 1
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !28
  %i.ig = getelementptr inbounds nuw i8, ptr %.0122, i64 %i.hw
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store i64 80, ptr %i.ih, align 8, !tbaa !28
  %i.ii = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !62
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i64 51, ptr %i.ik, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hu, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i64 32, i1 false), !tbaa.struct !70
  store ptr %.0122, ptr %i.fs, align 8, !tbaa !57
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i64 %.0124, ptr %i.il, align 8, !tbaa !58
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i32 %.0126, ptr %i.im, align 8, !tbaa !59
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %i.hu, ptr %i.in, align 8, !tbaa !73
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %segment_holding.exit.i
  %.0.i = phi ptr [ %i.hv, %segment_holding.exit.i ], [ %i.io, %bb.ah ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i64 11, ptr %i.io, align 8, !tbaa !28
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.iq = icmp ult ptr %i.ip, %i.hh
  br i1 %i.iq, label %bb.ah, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i170 = icmp eq ptr %i.ht, %i.bk
  br i1 %.not.i170, label %add_segment.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ir = ptrtoint ptr %i.ht to i64
  %i.is = ptrtoint ptr %i.bk to i64
  %i.it = sub i64 %i.ir, %i.is                    ; 9 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.it ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !28
  %i.ix = and i64 %i.iw, -2
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !28
  %i.iy = or i64 %i.it, 1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.iy, ptr %i.iz, align 8, !tbaa !28
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !30
  %i.ja = icmp ult i64 %i.it, 256
  br i1 %i.ja, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.jb = lshr i64 %i.it, 3                       ; 2 uses
  %i.jc = trunc nuw nsw i64 %i.jb to i32
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx.i = shl nuw nsw i64 %i.jb, 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.idx.i ; 4 uses
  %i.jf = load i32, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.jg = shl nuw i32 1, %i.jc                    ; 2 uses
  %i.jh = and i32 %i.jf, %i.jg
  %.not154.i = icmp eq i32 %i.jh, 0
  br i1 %.not154.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ji = or i32 %i.jf, %i.jg
  store i32 %i.ji, ptr %0, align 8, !tbaa !21
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !22 ; 2 uses
  %i.jl = load ptr, ptr %i.gu, align 8, !tbaa !24
  %.not155.i = icmp ult ptr %i.jk, %i.jl
  br i1 %.not155.i, label %bb.an, label %bb.ao, !prof !25

bb.an:                                            ; preds = %bb.am
  tail call void @abort() #17
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al
  %.0139.i = phi ptr [ %i.je, %bb.al ], [ %i.jk, %bb.am ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %i.bk, ptr %i.jm, align 8, !tbaa !22
  %i.jn = getelementptr inbounds nuw i8, ptr %.0139.i, i64 24
  store ptr %i.bk, ptr %i.jn, align 8, !tbaa !26
  br label %.sink.split.i

bb.ap:                                            ; preds = %bb.aj
  %i.jo = lshr i64 %i.it, 8
  %i.jp = trunc i64 %i.jo to i32                  ; 3 uses
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jr = icmp ugt i32 %i.jp, 65535
  br i1 %i.jr, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.js = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.jp, i1 true) ; 2 uses
  %i.jt = shl nuw nsw i32 %i.js, 1
  %i.ju = sub nuw nsw i32 38, %i.js
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = lshr i64 %i.it, %i.jv
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = and i32 %i.jx, 1
  %i.jz = or disjoint i32 %i.jy, %i.jt
  %i.ka = xor i32 %i.jz, 62
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0140.i = phi i32 [ %i.ka, %bb.ar ], [ 0, %bb.ap ], [ 31, %bb.aq ] ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.kc = zext nneg i32 %.0140.i to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.kc ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store i32 %.0140.i, ptr %i.ke, align 8, !tbaa !51
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i8 0, i64 16, i1 false)
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !32 ; 2 uses
  %i.kh = shl nuw i32 1, %.0140.i                 ; 2 uses
  %i.ki = and i32 %i.kg, %i.kh
  %.not149.i = icmp eq i32 %i.ki, 0
  br i1 %.not149.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kj = or i32 %i.kg, %i.kh
  store i32 %i.kj, ptr %i.kf, align 4, !tbaa !32
  store ptr %i.bk, ptr %i.kd, align 8, !tbaa !42
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %i.kd, ptr %i.kk, align 8, !tbaa !47
  br label %.sink.split.i

bb.au:                                            ; preds = %bb.as
  %i.kl = load ptr, ptr %i.kd, align 8, !tbaa !42
  %i.km = icmp eq i32 %.0140.i, 31
  %i.kn = lshr i32 %.0140.i, 1
  %i.ko = add nuw nsw i32 %i.kn, 6
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = sub nuw nsw i64 63, %i.kp
  %i.kr = select i1 %i.km, i64 0, i64 %i.kq
  %i.ks = shl i64 %i.it, %i.kr
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.0135.i = phi ptr [ %i.kl, %bb.au ], [ %i.la, %bb.aw ] ; 6 uses
  %.0134.i = phi i64 [ %i.ks, %bb.au ], [ %i.kz, %bb.aw ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.0135.i, i64 8
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !44
  %i.kv = and i64 %i.ku, -8
  %.not150.i = icmp eq i64 %i.kv, %i.it
  br i1 %.not150.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kw = getelementptr inbounds nuw i8, ptr %.0135.i, i64 32 ; 2 uses
  %i.kx = lshr i64 %.0134.i, 63                   ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.kx
  %i.kz = shl i64 %.0134.i, 1
  %i.la = load ptr, ptr %i.ky, align 8, !tbaa !42 ; 2 uses
  %.not152.i = icmp eq ptr %i.la, null
  br i1 %.not152.i, label %bb.ax, label %bb.av

bb.ax:                                            ; preds = %bb.aw
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.kx ; 2 uses
  %i.lc = load ptr, ptr %i.gu, align 8, !tbaa !24
  %.not153.i = icmp ult ptr %i.lb, %i.lc
  br i1 %.not153.i, label %bb.ay, label %.thread.i, !prof !25

.thread.i:                                        ; preds = %bb.ax
  store ptr %i.bk, ptr %i.lb, align 8, !tbaa !42
  %i.ld = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.0135.i, ptr %i.ld, align 8, !tbaa !47
  br label %.sink.split.i

bb.ay:                                            ; preds = %bb.ax
  tail call void @abort() #17
  unreachable

bb.az:                                            ; preds = %bb.av
  %i.le = getelementptr inbounds nuw i8, ptr %.0135.i, i64 16 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !49 ; 3 uses
  %i.lg = load ptr, ptr %i.gu, align 8, !tbaa !24 ; 2 uses
  %.not151.i = icmp uge ptr %.0135.i, %i.lg
  %i.lh = icmp uge ptr %i.lf, %i.lg
  %spec.select.i = select i1 %.not151.i, i1 %i.lh, i1 false, !prof !27
  br i1 %spec.select.i, label %bb.ba, label %bb.bb, !prof !27

bb.ba:                                            ; preds = %bb.az
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  store ptr %i.bk, ptr %i.li, align 8, !tbaa !48
  store ptr %i.bk, ptr %i.le, align 8, !tbaa !49
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.lf, ptr %i.lj, align 8, !tbaa !49
  br label %.sink.split.i

bb.bb:                                            ; preds = %bb.az
  tail call void @abort() #17
  unreachable

.sink.split.i:                                    ; preds = %bb.ba, %.thread.i, %bb.at, %bb.ao
  %.sink181.i = phi i64 [ 24, %.thread.i ], [ 16, %bb.ao ], [ 24, %bb.ba ], [ 24, %bb.at ]
  %.sink179.i = phi ptr [ %i.bk, %.thread.i ], [ %.0139.i, %bb.ao ], [ %.0135.i, %bb.ba ], [ %i.bk, %bb.at ]
  %.sink178.i = phi i64 [ 16, %.thread.i ], [ 24, %bb.ao ], [ 48, %bb.ba ], [ 16, %bb.at ]
  %.sink.i = phi ptr [ %i.bk, %.thread.i ], [ %i.je, %bb.ao ], [ null, %bb.ba ], [ %i.bk, %bb.at ]
  %i.lk = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sink181.i
  store ptr %.sink179.i, ptr %i.lk, align 8, !tbaa !74
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sink178.i
  store ptr %.sink.i, ptr %i.ll, align 8, !tbaa !74
  br label %add_segment.exit.thread

add_segment.exit:                                 ; preds = %.critedge4
  store ptr %.0122, ptr %.1129190, align 8, !tbaa !63
  %i.lm = getelementptr inbounds nuw i8, ptr %.1129190, i64 8 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !64
  %i.lo = add i64 %i.ln, %.0124
  store i64 %i.lo, ptr %i.lm, align 8, !tbaa !64
  %i.lp = tail call fastcc ptr @prepend_alloc(ptr noundef %0, ptr noundef %.0122, ptr noundef %i.gy, i64 noundef %1)
  br label %bb.be

add_segment.exit.thread:                          ; preds = %.sink.split.i, %bb.ai, %bb.aa, %bb.v, %bb.w
end_hunk_0
