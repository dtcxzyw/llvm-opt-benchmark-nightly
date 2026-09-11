Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z08?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@ManifestCl:bb.a
  br label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.uy = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 2 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !8  ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uw, i64 16 ; 3 uses
  store ptr %i.uz, ptr %i.va, align 8, !tbaa !8
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 24
  store ptr %i.uw, ptr %i.vb, align 8, !tbaa !8
  store ptr %i.qv, ptr %i.uv, align 8, !tbaa !8
  store ptr %i.qv, ptr %i.uy, align 8, !tbaa !8
  store ptr %i.uw, ptr @xx_tmp, align 8, !tbaa !12
  store ptr %i.ut, ptr @zz_res, align 8, !tbaa !12
  store ptr %i.uw, ptr @zz_hold, align 8, !tbaa !12
  %i.vc = icmp eq ptr %i.ut, null
  br i1 %i.vc, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.vd = load ptr, ptr %i.va, align 8, !tbaa !8  ; 3 uses
  store ptr %i.vd, ptr @zz_tmp, align 8, !tbaa !12
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ut, i64 16 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !8  ; 2 uses
  store ptr %i.vf, ptr %i.va, align 8, !tbaa !8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  store ptr %i.uw, ptr %i.vg, align 8, !tbaa !8
  store ptr %i.vd, ptr %i.ve, align 8, !tbaa !8
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 24
  store ptr %i.ut, ptr %i.vh, align 8, !tbaa !8
  br label %bb.cw

bb.cw:                                            ; preds = %.thread383, %bb.cv, %bb.cu
  %i.vi = call i32 @DisposeObject(ptr noundef nonnull %i.qv) #9 ; 0 uses
  %.pre416 = load ptr, ptr %i.a, align 8, !tbaa !12
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cj
  %i.vj = phi ptr [ %.pre416, %bb.cw ], [ %i.si, %bb.cj ]
  %.1294 = phi ptr [ %i.ut, %bb.cw ], [ %i.qv, %bb.cj ]
  %i.vk = call ptr @Manifest(ptr noundef %.1294, ptr noundef %i.vj, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef nonnull %9, i32 noundef %10)
  %i.vl = call i32 @DisposeObject(ptr noundef nonnull %i.rf) #9 ; 0 uses
  br label %bb.df

bb.cy:                                            ; preds = %bb.bz, %bb.ca
  tail call void @AttachEnv(ptr noundef %.1296, ptr noundef %0) #9
  %i.vm = load ptr, ptr %3, align 8, !tbaa !12
  %.not354 = icmp eq ptr %i.vm, null
  br i1 %.not354, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.vn = load ptr, ptr %4, align 8, !tbaa !12
  %.not355 = icmp eq ptr %i.vn, null
  %i.vo = select i1 %.not355, i16 0, i16 4
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.vp = phi i16 [ 4, %bb.cy ], [ %i.vo, %bb.cz ]
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.vr = load i16, ptr %i.vq, align 2
  %i.vs = and i16 %i.vr, -5
  %i.vt = or disjoint i16 %i.vs, %i.vp
  store i16 %i.vt, ptr %i.vq, align 2
  %i.vu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !12
  %.not356 = icmp eq ptr %i.vv, null
  br i1 %.not356, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.vw = load ptr, ptr %3, align 8, !tbaa !12
  %.not357 = icmp eq ptr %i.vw, null
  br i1 %.not357, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.vx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !12
  %.not358 = icmp eq ptr %i.vy, null
  br i1 %.not358, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.vz = load ptr, ptr %4, align 8, !tbaa !12
  %.not359 = icmp eq ptr %i.vz, null
  br i1 %.not359, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da
  %i.wa = tail call fastcc ptr @insert_split(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %bb.df

bb.df:                                            ; preds = %bb.bt, %bb.bu, %bb.cx, %bb.de, %bb.dd
  %.2 = phi ptr [ %i.vk, %bb.cx ], [ %i.wa, %bb.de ], [ %0, %bb.dd ], [ %i.ql, %bb.bu ], [ %i.mv, %bb.bt ] ; 2 uses
  %.not361 = icmp eq ptr %.0289, null
  br i1 %.not361, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.wb = call i32 @DisposeObject(ptr noundef nonnull %.0289) #9 ; 0 uses
  br label %bb.dh

bb.dh:                                            ; preds = %bb.df, %bb.dg, %bb.v
  %.0292 = phi ptr [ %i.hp, %bb.v ], [ %.2, %bb.dg ], [ %.2, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0292
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @insert_split(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq i8 %i.b, 9
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.d = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.c, ptr noundef nonnull @.str.55) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 9), align 1, !tbaa !8 ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  store i32 %i.f, ptr @zz_size, align 4, !tbaa !7
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.l = tail call ptr @GetMemory(i32 noundef %i.f, ptr noundef %i.k) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.i, ptr @zz_hold, align 8, !tbaa !12
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %i.l, %bb.d ], [ %i.i, %bb.e ] ; 21 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i8 9, ptr %i.o, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.n, ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.n, ptr %i.r, align 8, !tbaa !8
  store ptr %i.n, ptr %i.n, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 34
  store i16 %i.t, ptr %i.u, align 2, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1048575                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 36 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, -1048576
  %i.ab = or disjoint i32 %i.aa, %i.x
  store i32 %i.ab, ptr %i.y, align 4
  %i.ac = load i32, ptr %i.v, align 4
  %i.ad = and i32 %i.ac, -1048576
  %i.ae = or disjoint i32 %i.ad, %i.x
  store i32 %i.ae, ptr %i.y, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8  ; 6 uses
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  store ptr null, ptr @xx_tmp, align 8, !tbaa !12
  store ptr %i.n, ptr @zz_res, align 8, !tbaa !12
  store ptr null, ptr @zz_hold, align 8, !tbaa !12
  br label %.preheader

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !8  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !8
  store ptr %0, ptr %i.ag, align 8, !tbaa !8
  store ptr %0, ptr %i.af, align 8, !tbaa !8
  store ptr %i.ah, ptr @xx_tmp, align 8, !tbaa !12
  store ptr %i.n, ptr @zz_res, align 8, !tbaa !12
  store ptr %i.ah, ptr @zz_hold, align 8, !tbaa !12
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !8  ; 3 uses
  store ptr %i.am, ptr @zz_tmp, align 8, !tbaa !12
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !8   ; 2 uses
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ah, ptr %i.ao, align 8, !tbaa !8
  store ptr %i.am, ptr %i.q, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.thread, %bb.g
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.ap
  %3 = phi i32 [ 15, %bb.ap ], [ 16, %.preheader ] ; 2 uses
  %i.aq = phi i1 [ false, %bb.ap ], [ true, %.preheader ]
  %indvars.iv = phi i64 [ 1, %bb.ap ], [ 0, %.preheader ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !12
  %.not78 = icmp eq ptr %i.as, null
  br i1 %.not78, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !12
  %.not79 = icmp eq ptr %i.au, null
  br i1 %.not79, label %bb.ak, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %4 = zext nneg i32 %3 to i64
  %i.av = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8   ; 2 uses
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  store i32 %i.ax, ptr @zz_size, align 4, !tbaa !7
  %i.ay = zext i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !12 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.bd = tail call ptr @GetMemory(i32 noundef %i.ax, ptr noundef %i.bc) #9 ; 2 uses
  store ptr %i.bd, ptr @zz_hold, align 8, !tbaa !12
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store ptr %i.ba, ptr @zz_hold, align 8, !tbaa !12
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !8
  store ptr %i.be, ptr %i.az, align 8, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bf = phi ptr [ %i.bd, %bb.k ], [ %i.ba, %bb.l ] ; 25 uses
  %i.bg = trunc nuw nsw i32 %3 to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !8
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bf, ptr %i.bk, align 8, !tbaa !8
  store ptr %i.bf, ptr %i.bf, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 41
  store i8 0, ptr %i.bl, align 1, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bo = xor i64 %indvars.iv, 1                  ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo
  store i32 0, ptr %i.bp, align 4, !tbaa !8
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  store i32 0, ptr %i.bq, align 4, !tbaa !8
  %i.br = load i16, ptr %i.s, align 2, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 34
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !8
  %i.bt = load i32, ptr %i.v, align 4
  %i.bu = and i32 %i.bt, 1048575                  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 36 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, -1048576
  %i.by = or disjoint i32 %i.bx, %i.bu
  store i32 %i.by, ptr %i.bv, align 4
  %i.bz = load i32, ptr %i.v, align 4
  %i.ca = and i32 %i.bz, -1048576
  %i.cb = or disjoint i32 %i.ca, %i.bu
  store i32 %i.cb, ptr %i.bv, align 4
  %i.cc = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  store i32 %i.cd, ptr @zz_size, align 4, !tbaa !7
  %i.ce = zext i8 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !12 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ci = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.cj = tail call ptr @GetMemory(i32 noundef %i.cd, ptr noundef %i.ci) #9
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store ptr %i.cg, ptr @zz_hold, align 8, !tbaa !12
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !8
  store ptr %i.ck, ptr %i.cf, align 8, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cl = phi ptr [ %i.cj, %bb.n ], [ %i.cg, %bb.o ] ; 12 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store i8 0, ptr %i.cm, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.cl, ptr %i.co, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cl, ptr %i.cp, align 8, !tbaa !8
  store ptr %i.cl, ptr %i.cl, align 8, !tbaa !8
  store ptr %i.cl, ptr @xx_link, align 8, !tbaa !12
  store ptr %i.cl, ptr @zz_res, align 8, !tbaa !12
  store ptr %i.n, ptr @zz_hold, align 8, !tbaa !12
  %i.cq = load ptr, ptr %i.n, align 8, !tbaa !8
  store ptr %i.cq, ptr @zz_tmp, align 8, !tbaa !12
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !8
  store ptr %i.cr, ptr %i.n, align 8, !tbaa !8
  %i.cs = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %i.ct = load ptr, ptr @zz_res, align 8, !tbaa !12 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !8
  %i.cw = load ptr, ptr @zz_tmp, align 8, !tbaa !12 ; 2 uses
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !8
  %i.cx = load ptr, ptr @zz_res, align 8, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !8
  %i.cz = load ptr, ptr @xx_link, align 8, !tbaa !12 ; 4 uses
  store ptr %i.cz, ptr @zz_res, align 8, !tbaa !12
  store ptr %i.bf, ptr @zz_hold, align 8, !tbaa !12
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %i.bi, align 8, !tbaa !8  ; 3 uses
  store ptr %i.db, ptr @zz_tmp, align 8, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !8  ; 2 uses
  store ptr %i.dd, ptr %i.bi, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr %i.bf, ptr %i.de, align 8, !tbaa !8
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr %i.cz, ptr %i.df, align 8, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dg = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  store i32 %i.dh, ptr @zz_size, align 4, !tbaa !7
  %i.di = zext i8 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.di ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !12 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dm = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.dn = tail call ptr @GetMemory(i32 noundef %i.dh, ptr noundef %i.dm) #9
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store ptr %i.dk, ptr @zz_hold, align 8, !tbaa !12
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !8
  store ptr %i.do, ptr %i.dj, align 8, !tbaa !12
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.dp = phi ptr [ %i.dn, %bb.s ], [ %i.dk, %bb.t ] ; 12 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store i8 0, ptr %i.dq, align 8, !tbaa !8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dp, ptr %i.dt, align 8, !tbaa !8
  store ptr %i.dp, ptr %i.dp, align 8, !tbaa !8
  store ptr %i.dp, ptr @xx_link, align 8, !tbaa !12
  store ptr %i.dp, ptr @zz_res, align 8, !tbaa !12
  store ptr %i.bf, ptr @zz_hold, align 8, !tbaa !12
  %i.du = load ptr, ptr %i.bf, align 8, !tbaa !8
  store ptr %i.du, ptr @zz_tmp, align 8, !tbaa !12
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !8
  store ptr %i.dv, ptr %i.bf, align 8, !tbaa !8
  %i.dw = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %i.dx = load ptr, ptr @zz_res, align 8, !tbaa !12 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !8
  %i.ea = load ptr, ptr @zz_tmp, align 8, !tbaa !12 ; 2 uses
  store ptr %i.ea, ptr %i.dx, align 8, !tbaa !8
  %i.eb = load ptr, ptr @zz_res, align 8, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !8
  %i.ed = load ptr, ptr @xx_link, align 8, !tbaa !12 ; 4 uses
  store ptr %i.ed, ptr @zz_res, align 8, !tbaa !12
  store ptr %0, ptr @zz_hold, align 8, !tbaa !12
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = load ptr, ptr %i.af, align 8, !tbaa !8  ; 3 uses
  store ptr %i.ef, ptr @zz_tmp, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !8  ; 2 uses
  store ptr %i.eh, ptr %i.af, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store ptr %0, ptr %i.ei, align 8, !tbaa !8
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store ptr %i.ed, ptr %i.ej, align 8, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ek = load ptr, ptr %i.ar, align 8, !tbaa !12
  %.not80 = icmp eq ptr %i.ek, null
  br i1 %.not80, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.em = zext i8 %i.el to i32                    ; 2 uses
  store i32 %i.em, ptr @zz_size, align 4, !tbaa !7
  %i.en = zext i8 %i.el to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.en ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !12 ; 4 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.er = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.es = tail call ptr @GetMemory(i32 noundef %i.em, ptr noundef %i.er) #9 ; 2 uses
  store ptr %i.es, ptr @zz_hold, align 8, !tbaa !12
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store ptr %i.ep, ptr @zz_hold, align 8, !tbaa !12
  %i.et = load ptr, ptr %i.ep, align 8, !tbaa !8
  store ptr %i.et, ptr %i.eo, align 8, !tbaa !12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.eu = phi ptr [ %i.es, %bb.y ], [ %i.ep, %bb.z ] ; 15 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store i8 0, ptr %i.ev, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !8
end_hunk_0
