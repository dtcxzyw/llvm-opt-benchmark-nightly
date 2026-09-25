Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/kinsol?download=true
inline.NumInlined: 17
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@KINInit:bb.a

bb.r:                                             ; preds = %bb.q
  %i.at = call ptr @N_VClone(ptr noundef nonnull %2) #12 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 10 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !49
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !48
  call void @N_VDestroy(ptr noundef %i.aw) #12
  br label %bb.as

bb.t:                                             ; preds = %bb.r
  %i.ax = call ptr @N_VClone(ptr noundef nonnull %2) #12 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 9 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !50
  %i.az = icmp eq ptr %i.ax, null
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !48
  call void @N_VDestroy(ptr noundef %i.ba) #12
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !49
  call void @N_VDestroy(ptr noundef %i.bb) #12
  br label %bb.as

bb.v:                                             ; preds = %bb.t
  %i.bc = call ptr @N_VClone(ptr noundef nonnull %2) #12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 8 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !51
  %i.be = icmp eq ptr %i.bc, null
  br i1 %i.be, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !48
  call void @N_VDestroy(ptr noundef %i.bf) #12
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !49
  call void @N_VDestroy(ptr noundef %i.bg) #12
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !50
  call void @N_VDestroy(ptr noundef %i.bh) #12
  br label %bb.as

bb.x:                                             ; preds = %bb.v
  %i.bi = call ptr @N_VClone(ptr noundef nonnull %2) #12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 7 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !52
  %i.bk = icmp eq ptr %i.bi, null
  br i1 %i.bk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bl = load ptr, ptr %i.ar, align 8, !tbaa !48
  call void @N_VDestroy(ptr noundef %i.bl) #12
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !49
  call void @N_VDestroy(ptr noundef %i.bm) #12
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !50
  call void @N_VDestroy(ptr noundef %i.bn) #12
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !51
  call void @N_VDestroy(ptr noundef %i.bo) #12
  br label %bb.as

bb.z:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.br = load <2 x i64>, ptr %i.ao, align 8, !tbaa !45
  %i.bs = mul nsw <2 x i64> %i.br, splat (i64 5)
  %i.bt = load <2 x i64>, ptr %i.bq, align 8, !tbaa !45
  %i.bu = add nsw <2 x i64> %i.bt, %i.bs
  store <2 x i64> %i.bu, ptr %i.bq, align 8, !tbaa !45
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 12 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !53 ; 3 uses
  %.not.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i, label %KINAllocVectors.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = shl i64 %i.bw, 3                        ; 2 uses
  %i.by = mul i64 %i.bx, %i.bw
  %i.bz = call noalias ptr @malloc(i64 noundef %i.by) #14 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !54
  %i.cb = icmp eq ptr %i.bz, null
  br i1 %i.cb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2)
  br label %KINAllocVectors.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cc = call noalias ptr @malloc(i64 noundef %i.bx) #14 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !55
  %i.ce = icmp eq ptr %i.cc, null
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2)
  br label %KINAllocVectors.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cf = call ptr @N_VClone(ptr noundef nonnull %2) #12 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !56
  %i.ch = icmp eq ptr %i.cf, null
  br i1 %i.ch, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ci = load ptr, ptr %i.ar, align 8, !tbaa !48
  call void @N_VDestroy(ptr noundef %i.ci) #12
  %i.cj = load ptr, ptr %i.au, align 8, !tbaa !49
  call void @N_VDestroy(ptr noundef %i.cj) #12
  %i.ck = load ptr, ptr %i.ay, align 8, !tbaa !50
  call void @N_VDestroy(ptr noundef %i.ck) #12
  %i.cl = load ptr, ptr %i.bd, align 8, !tbaa !51
  call void @N_VDestroy(ptr noundef %i.cl) #12
  %i.cm = load ptr, ptr %i.bj, align 8, !tbaa !52
  call void @N_VDestroy(ptr noundef %i.cm) #12
  br label %bb.as

bb.ag:                                            ; preds = %bb.ae
  %i.cn = call ptr @N_VClone(ptr noundef nonnull %2) #12 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !57
  %i.cp = icmp eq ptr %i.cn, null
  br i1 %i.cp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cq = load ptr, ptr %i.ar, align 8, !tbaa !48
  call void @N_VDestroy(ptr noundef %i.cq) #12
  %i.cr = load ptr, ptr %i.au, align 8, !tbaa !49
  call void @N_VDestroy(ptr noundef %i.cr) #12
  %i.cs = load ptr, ptr %i.ay, align 8, !tbaa !50
  call void @N_VDestroy(ptr noundef %i.cs) #12
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !51
  call void @N_VDestroy(ptr noundef %i.ct) #12
  %i.cu = load ptr, ptr %i.bj, align 8, !tbaa !52
  call void @N_VDestroy(ptr noundef %i.cu) #12
  %i.cv = load ptr, ptr %i.cg, align 8, !tbaa !56
  call void @N_VDestroy(ptr noundef %i.cv) #12
  br label %bb.as

bb.ai:                                            ; preds = %bb.ag
  %i.cw = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = call ptr @N_VCloneVectorArray(i32 noundef %i.cx, ptr noundef nonnull %2) #12 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !58
  %i.da = icmp eq ptr %i.cy, null
  br i1 %i.da, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.db = load ptr, ptr %i.ar, align 8, !tbaa !48
  call void @N_VDestroy(ptr noundef %i.db) #12
  %i.dc = load ptr, ptr %i.au, align 8, !tbaa !49
  call void @N_VDestroy(ptr noundef %i.dc) #12
  %i.dd = load ptr, ptr %i.ay, align 8, !tbaa !50
  call void @N_VDestroy(ptr noundef %i.dd) #12
  %i.de = load ptr, ptr %i.bd, align 8, !tbaa !51
  call void @N_VDestroy(ptr noundef %i.de) #12
  %i.df = load ptr, ptr %i.bj, align 8, !tbaa !52
  call void @N_VDestroy(ptr noundef %i.df) #12
  %i.dg = load ptr, ptr %i.cg, align 8, !tbaa !56
  call void @N_VDestroy(ptr noundef %i.dg) #12
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !57
  call void @N_VDestroy(ptr noundef %i.dh) #12
  br label %bb.as

bb.ak:                                            ; preds = %bb.ai
  %i.di = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.dj = trunc i64 %i.di to i32
  %i.dk = call ptr @N_VCloneVectorArray(i32 noundef %i.dj, ptr noundef nonnull %2) #12 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !59
  %i.dm = icmp eq ptr %i.dk, null
  br i1 %i.dm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dn = load ptr, ptr %i.ar, align 8, !tbaa !48
  call void @N_VDestroy(ptr noundef %i.dn) #12
  %i.do = load ptr, ptr %i.au, align 8, !tbaa !49
  call void @N_VDestroy(ptr noundef %i.do) #12
  %i.dp = load ptr, ptr %i.ay, align 8, !tbaa !50
  call void @N_VDestroy(ptr noundef %i.dp) #12
  %i.dq = load ptr, ptr %i.bd, align 8, !tbaa !51
  call void @N_VDestroy(ptr noundef %i.dq) #12
  %i.dr = load ptr, ptr %i.bj, align 8, !tbaa !52
  call void @N_VDestroy(ptr noundef %i.dr) #12
  %i.ds = load ptr, ptr %i.cg, align 8, !tbaa !56
  call void @N_VDestroy(ptr noundef %i.ds) #12
  %i.dt = load ptr, ptr %i.co, align 8, !tbaa !57
  call void @N_VDestroy(ptr noundef %i.dt) #12
  %i.du = load ptr, ptr %i.cz, align 8, !tbaa !58
  %i.dv = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.dw = trunc i64 %i.dv to i32
  call void @N_VDestroyVectorArray(ptr noundef %i.du, i32 noundef %i.dw) #12
  br label %bb.as

bb.am:                                            ; preds = %bb.ak
  %i.dx = load i64, ptr %i.bv, align 8, !tbaa !53 ; 2 uses
  %i.dy = shl nsw i64 %i.dx, 1                    ; 2 uses
  %i.dz = load i64, ptr %i.ap, align 8, !tbaa !47
  %3 = mul nsw i64 %i.dy, %i.dz
  %4 = load i64, ptr %i.ao, align 8, !tbaa !46
  %i.ea = mul nsw i64 %4, %i.dy
  %i.eb = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %i.ec = insertelement <2 x i64> %i.eb, i64 %3, i64 1
  %i.ed = add nsw <2 x i64> %i.ec, splat (i64 2)
  %i.ee = load <2 x i64>, ptr %i.bq, align 8, !tbaa !45
  %i.ef = add nsw <2 x i64> %i.ed, %i.ee
  store <2 x i64> %i.ef, ptr %i.bq, align 8, !tbaa !45
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !60
  %.not128.i = icmp eq i32 %i.eh, 0
  br i1 %.not128.i, label %KINAllocVectors.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ei = trunc i64 %i.dx to i32
  %i.ej = call ptr @N_VCloneVectorArray(i32 noundef %i.ei, ptr noundef nonnull %2) #12 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !61
  %i.el = icmp eq ptr %i.ej, null
  br i1 %i.el, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.em = load ptr, ptr %i.ar, align 8, !tbaa !48
  call void @N_VDestroy(ptr noundef %i.em) #12
  %i.en = load ptr, ptr %i.au, align 8, !tbaa !49
  call void @N_VDestroy(ptr noundef %i.en) #12
  %i.eo = load ptr, ptr %i.ay, align 8, !tbaa !50
  call void @N_VDestroy(ptr noundef %i.eo) #12
  %i.ep = load ptr, ptr %i.bd, align 8, !tbaa !51
  call void @N_VDestroy(ptr noundef %i.ep) #12
  %i.eq = load ptr, ptr %i.bj, align 8, !tbaa !52
  call void @N_VDestroy(ptr noundef %i.eq) #12
  %i.er = load ptr, ptr %i.cg, align 8, !tbaa !56
  call void @N_VDestroy(ptr noundef %i.er) #12
  %i.es = load ptr, ptr %i.co, align 8, !tbaa !57
  call void @N_VDestroy(ptr noundef %i.es) #12
  %i.et = load ptr, ptr %i.cz, align 8, !tbaa !58
  %i.eu = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.ev = trunc i64 %i.eu to i32
  call void @N_VDestroyVectorArray(ptr noundef %i.et, i32 noundef %i.ev) #12
  %i.ew = load ptr, ptr %i.dl, align 8, !tbaa !59
  %i.ex = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.ey = trunc i64 %i.ex to i32
  call void @N_VDestroyVectorArray(ptr noundef %i.ew, i32 noundef %i.ey) #12
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.ez = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = call ptr @N_VCloneVectorArray(i32 noundef %i.fa, ptr noundef nonnull %2) #12 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !62
  %i.fd = icmp eq ptr %i.fb, null
  br i1 %i.fd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fe = load ptr, ptr %i.ar, align 8, !tbaa !48
  call void @N_VDestroy(ptr noundef %i.fe) #12
  %i.ff = load ptr, ptr %i.au, align 8, !tbaa !49
  call void @N_VDestroy(ptr noundef %i.ff) #12
  %i.fg = load ptr, ptr %i.ay, align 8, !tbaa !50
  call void @N_VDestroy(ptr noundef %i.fg) #12
  %i.fh = load ptr, ptr %i.bd, align 8, !tbaa !51
  call void @N_VDestroy(ptr noundef %i.fh) #12
  %i.fi = load ptr, ptr %i.bj, align 8, !tbaa !52
  call void @N_VDestroy(ptr noundef %i.fi) #12
  %i.fj = load ptr, ptr %i.cg, align 8, !tbaa !56
  call void @N_VDestroy(ptr noundef %i.fj) #12
  %i.fk = load ptr, ptr %i.co, align 8, !tbaa !57
  call void @N_VDestroy(ptr noundef %i.fk) #12
  %i.fl = load ptr, ptr %i.cz, align 8, !tbaa !58
  %i.fm = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.fn = trunc i64 %i.fm to i32
  call void @N_VDestroyVectorArray(ptr noundef %i.fl, i32 noundef %i.fn) #12
  %i.fo = load ptr, ptr %i.dl, align 8, !tbaa !59
  %i.fp = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.fq = trunc i64 %i.fp to i32
  call void @N_VDestroyVectorArray(ptr noundef %i.fo, i32 noundef %i.fq) #12
  %i.fr = load ptr, ptr %i.ek, align 8, !tbaa !61
  %i.fs = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.ft = trunc i64 %i.fs to i32
  call void @N_VDestroyVectorArray(ptr noundef %i.fr, i32 noundef %i.ft) #12
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.fu = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.fv = shl nsw i64 %i.fu, 1                    ; 2 uses
  %i.fw = load i64, ptr %i.ap, align 8, !tbaa !47
  %i.fx = mul nsw i64 %i.fv, %i.fw
  %i.fy = load i64, ptr %i.bp, align 8, !tbaa !40
  %i.fz = add nsw i64 %i.fy, %i.fx
  store i64 %i.fz, ptr %i.bp, align 8, !tbaa !40
  %i.ga = load i64, ptr %i.ao, align 8, !tbaa !46
  %i.gb = mul nsw i64 %i.ga, %i.fv
  %i.gc = load i64, ptr %i.bq, align 8, !tbaa !39
  %i.gd = add nsw i64 %i.gc, %i.gb
  store i64 %i.gd, ptr %i.bq, align 8, !tbaa !39
  br label %KINAllocVectors.exit

bb.as:                                            ; preds = %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.ao, %bb.aq
  call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2)
  call void @free(ptr noundef nonnull %0) #12
  br label %bb.at

KINAllocVectors.exit:                             ; preds = %bb.ar, %bb.am, %bb.ad, %bb.ab, %bb.z
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ge, align 8, !tbaa !63
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr null, ptr %i.gg, align 8, !tbaa !88
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gf, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.gh, align 8, !tbaa !35
  br label %bb.at

bb.at:                                            ; preds = %KINAllocVectors.exit, %bb.as, %KINCheckNvector.exit.thread, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %KINAllocVectors.exit ], [ -4, %bb.as ], [ -2, %KINCheckNvector.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

declare void @N_VSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -999, 3) i32 @KINSol(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4)
  br label %KINPicardAA.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  br label %KINPicardAA.exit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 35 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  store ptr %3, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 16 uses
  store ptr %4, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  store i32 %2, ptr %i.h, align 8, !tbaa !65
  %i.i = icmp eq i32 %2, 3
  %i.j = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.x

bb.f:                                             ; preds = %bb.e
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9)
  br label %KINPicardAA.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !66
  %.not150 = icmp eq i32 %i.l, 0
  br i1 %.not150, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10)
  br label %KINPicardAA.exit

bb.j:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !103
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !31
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, double noundef %i.q, double noundef %i.s)
  %.pre398 = load ptr, ptr %i.e, align 8, !tbaa !64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = phi ptr [ %.pre398, %bb.k ], [ %1, %bb.j ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
