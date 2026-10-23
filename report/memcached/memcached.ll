Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/memcached?download=true
inline.NumInlined: 142
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@main:bb.a
  %i.km = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite358 = call i64 @fwrite(ptr nonnull @.str.318, i64 58, i64 1, ptr %i.km) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.gi:                                            ; preds = %bb.gg
  %i.kn = icmp samesign ugt i32 %i.kf, 1073741824
  br i1 %i.kn, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.ko = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite357 = call i64 @fwrite(ptr nonnull @.str.319, i64 51, i64 1, ptr %i.ko) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.gk:                                            ; preds = %bb.gi
  %i.kp = icmp samesign ult i32 %i.kf, 1048577
  %or.cond41 = select i1 %i.kp, i1 true, i1 %.0186.lcssa
  br i1 %or.cond41, label %._crit_edge1762, label %bb.gl

._crit_edge1762:                                  ; preds = %bb.gk
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !182
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.kq = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !216
  %i.kr = sdiv i32 %i.kq, 2                       ; 2 uses
  store i32 %i.kr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !182
  br label %bb.gm

bb.gm:                                            ; preds = %._crit_edge1762, %bb.gl
  %i.ks = phi i32 [ %.pre, %._crit_edge1762 ], [ %i.kr, %bb.gl ] ; 6 uses
  %i.kt = icmp sgt i32 %i.ks, %i.kf
  br i1 %i.kt, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.ku = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.kv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ku, ptr noundef nonnull @.str.320, i32 noundef %i.ks, i32 noundef %i.kf) #35 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.kw = srem i32 %i.kf, %i.ks
  %.not292 = icmp eq i32 %i.kw, 0
  br i1 %.not292, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.kx = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ky = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kx, ptr noundef nonnull @.str.321, i32 noundef %i.kf, i32 noundef %i.ks) #35 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.gq:                                            ; preds = %bb.go
  %i.kz = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !216 ; 2 uses
  %i.la = srem i32 %i.kz, %i.ks
  %.not293 = icmp eq i32 %i.la, 0
  br i1 %.not293, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.lb = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.lc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lb, ptr noundef nonnull @.str.322, i32 noundef %i.ks, i32 noundef %i.kz) #35 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.gs:                                            ; preds = %bb.gq
  %i.ld = call i32 @storage_check_config(ptr noundef nonnull %i.ad) #33
  switch i32 %i.ld, label %bb.gv [
    i32 0, label %bb.gt
    i32 1, label %bb.gu
  ]

bb.gt:                                            ; preds = %bb.gs
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  call void @exit(i32 noundef 64) #42
  unreachable

bb.gv:                                            ; preds = %bb.gt, %bb.gs
  %.0182 = phi i1 [ false, %bb.gs ], [ true, %bb.gt ] ; 2 uses
  %.not294.not = icmp eq ptr %.0191.lcssa, null   ; 2 uses
  br i1 %.not294.not, label %bb.hj, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.le = call noalias ptr @strdup(ptr noundef nonnull %.0191.lcssa) #33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr null, ptr %i.e, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store i32 0, ptr %i.f, align 4, !tbaa !16
  %char0.i = load i8, ptr %.0191.lcssa, align 1
  %i.lf = icmp eq i8 %char0.i, 0
  br i1 %i.lf, label %bb.hi, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.lg = call ptr @strtok_r(ptr noundef nonnull %.0191.lcssa, ptr noundef nonnull @.str.455, ptr noundef nonnull %i.e) #33 ; 2 uses
  %.not30.i = icmp eq ptr %i.lg, null
  br i1 %.not30.i, label %.loopexit462, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.gx, %bb.hg
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.hg ], [ 0, %bb.gx ] ; 3 uses
  %.033.i = phi ptr [ %i.lv, %bb.hg ], [ %i.lg, %bb.gx ]
  %.01332.i = phi i32 [ %.pre.i, %bb.hg ], [ 0, %bb.gx ] ; 2 uses
  %i.lh = call zeroext i1 @safe_strtoul(ptr noundef nonnull %.033.i, ptr noundef nonnull %i.f) #33
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !16 ; 9 uses
  br i1 %i.lh, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %.lr.ph.i
  %i.li = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 80), align 8, !tbaa !169
  %i.lj = icmp ult i32 %.pre.i, %i.li
  %i.lk = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8
  %i.ll = icmp ugt i32 %.pre.i, %i.lk
  %or.cond.i = select i1 %i.lj, i1 true, i1 %i.ll
  br i1 %or.cond.i, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy, %.lr.ph.i
  %i.lm = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ln = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lm, ptr noundef nonnull @.str.456, i32 noundef %.pre.i) #35 ; 0 uses
  br label %bb.hi

bb.ha:                                            ; preds = %bb.gy
  %.not20.i = icmp ult i32 %.01332.i, %.pre.i
  br i1 %.not20.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.lo = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.lp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lo, ptr noundef nonnull @.str.457, i32 noundef %.pre.i) #35 ; 0 uses
  br label %bb.hi

bb.hc:                                            ; preds = %bb.ha
  %i.lq = add i32 %.01332.i, 8
  %.not21.i = icmp ugt i32 %.pre.i, %i.lq
  br i1 %.not21.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.lr = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ls = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lr, ptr noundef nonnull @.str.458, i32 noundef %.pre.i, i32 noundef 8) #35 ; 0 uses
  br label %bb.hi

bb.he:                                            ; preds = %bb.hc
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  store i32 %.pre.i, ptr %i.lt, align 4, !tbaa !16
  %exitcond.i = icmp eq i64 %indvars.iv.i, 62
  br i1 %exitcond.i, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.lu = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite.i421.a = call i64 @fwrite(ptr nonnull @.str.459, i64 32, i64 1, ptr %i.lu) #37 ; 0 uses
  br label %bb.hi

bb.hg:                                            ; preds = %bb.he
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lv = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.455, ptr noundef nonnull %i.e) #33 ; 2 uses
  %.not.i420 = icmp eq ptr %i.lv, null
  br i1 %.not.i420, label %.loopexit462, label %.lr.ph.i, !llvm.loop !356

.loopexit462:                                     ; preds = %bb.hg, %bb.gx
  %.014.lcssa.i = phi i64 [ 0, %bb.gx ], [ %indvars.iv.next.i, %bb.hg ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.014.lcssa.i
  store i32 0, ptr %i.lw, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  %i.lx = load ptr, ptr %i.q, align 8, !tbaa !215 ; 2 uses
  %.not296 = icmp eq ptr %i.lx, null
  br i1 %.not296, label %.sink.split, label %bb.hh

bb.hh:                                            ; preds = %.loopexit462
  call void @free(ptr noundef nonnull %i.lx) #33
  br label %.sink.split

bb.hi:                                            ; preds = %bb.gw, %bb.hf, %bb.hd, %bb.hb, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @exit(i32 noundef 64) #42
  unreachable

bb.hj:                                            ; preds = %bb.gv
  %i.ly = load ptr, ptr %i.q, align 8, !tbaa !215
  %.not295 = icmp eq ptr %i.ly, null
  br i1 %.not295, label %.sink.split, label %bb.hk

.sink.split:                                      ; preds = %bb.hj, %.loopexit462, %bb.hh
  %.str.323.sink = phi ptr [ %i.le, %.loopexit462 ], [ %i.le, %bb.hh ], [ @.str.323, %bb.hj ]
  store ptr %.str.323.sink, ptr %i.q, align 8, !tbaa !215
  br label %bb.hk

bb.hk:                                            ; preds = %.sink.split, %bb.hj
  %i.lz = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 208), align 8, !tbaa !189
  %i.ma = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 212), align 4, !tbaa !190
  %i.mb = add nsw i32 %i.ma, %i.lz
  %i.mc = icmp sgt i32 %i.mb, 80
  br i1 %i.mc, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.md = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.me = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.md, ptr noundef nonnull @.str.324) #35 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.hm:                                            ; preds = %bb.hk
  %i.mf = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 236), align 4, !tbaa !193, !range !66, !noundef !67
  %10 = trunc nuw i8 %i.mf to i1
  %.not = xor i1 %10, true
  %or.cond28 = select i1 %.not, i1 true, i1 %.0212.lcssa
  br i1 %or.cond28, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.mg = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite = call i64 @fwrite(ptr nonnull @.str.325, i64 52, i64 1, ptr %i.mg) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.ho:                                            ; preds = %bb.hm
  %i.mh = call i32 @hash_init(i32 noundef %.0197.lcssa) #33
  %.not297 = icmp eq i32 %i.mh, 0
  br i1 %.not297, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.mi = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite356 = call i64 @fwrite(ptr nonnull @.str.326, i64 37, i64 1, ptr %i.mi) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.hq:                                            ; preds = %bb.ho
  %i.mj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 24), align 8, !tbaa !163 ; 2 uses
  %.not298 = icmp eq ptr %i.mj, null
  br i1 %.not298, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.mk = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.mj, i32 noundef 44) #41
  %.not299 = icmp eq ptr %i.mk, null
  br i1 %.not299, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.ml = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 84), align 4, !tbaa !156
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hr, %bb.hs
  %storemerge = phi i32 [ %i.ml, %bb.hs ], [ 1, %bb.hr ]
  store i32 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 88), align 8, !tbaa !170
  %i.mm = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 132), align 4, !tbaa !176, !range !66, !noundef !67
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.hu, label %bb.ia

bb.hu:                                            ; preds = %bb.ht
  br i1 %.0221.lcssa, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  br label %bb.hy

bb.hw:                                            ; preds = %bb.hu
  %i.mo = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  %.not300 = icmp eq i32 %i.mo, 4
  br i1 %.not300, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.mp = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite355 = call i64 @fwrite(ptr nonnull @.str.327, i64 61, i64 1, ptr %i.mp) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.hy:                                            ; preds = %bb.hw, %bb.hv
  %i.mq = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 16), align 8, !tbaa !162
  %.not301 = icmp eq i32 %i.mq, 0
  br i1 %.not301, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.mr = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite354 = call i64 @fwrite(ptr nonnull @.str.328, i64 65, i64 1, ptr %i.mr) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.ia:                                            ; preds = %bb.hy, %bb.ht
  %i.ms = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128
  %.not302 = icmp eq ptr %i.ms, null
  br i1 %.not302, label %bb.if, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  br i1 %.0221.lcssa, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  br label %bb.if

bb.id:                                            ; preds = %bb.ib
  %i.mt = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  %.not303 = icmp eq i32 %i.mt, 3
  br i1 %.not303, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.mu = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite353 = call i64 @fwrite(ptr nonnull @.str.329, i64 85, i64 1, ptr %i.mu) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.if:                                            ; preds = %bb.ic, %bb.id, %bb.ia
  %i.mv = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 16), align 8 ; 3 uses
  %i.mw = icmp eq i32 %i.mv, 0
  %or.cond30 = select i1 %.0217.lcssa, i1 true, i1 %i.mw
  %or.cond32 = select i1 %or.cond30, i1 true, i1 %.0219.lcssa
  br i1 %or.cond32, label %thread-pre-split, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  store i32 %i.mv, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 12), align 4, !tbaa !161
  br label %bb.ih

thread-pre-split:                                 ; preds = %bb.if
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 12), align 4, !tbaa !161
  br label %bb.ih

bb.ih:                                            ; preds = %thread-pre-split, %bb.ig
  %i.mx = phi i32 [ %.pr, %thread-pre-split ], [ %i.mv, %bb.ig ] ; 3 uses
  %i.my = icmp sgt i32 %i.mx, 65535
  br i1 %i.my, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.mz = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.na = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mz, ptr noundef nonnull @.str.330, i32 noundef %i.mx) #35 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.ij:                                            ; preds = %bb.ih
  %i.nb = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 138), align 2, !tbaa !218, !range !66, !noundef !67
  %11 = trunc nuw i8 %i.nb to i1
  %12 = icmp eq i32 %i.mx, 0
  %or.cond44.not = and i1 %12, %11
  br i1 %or.cond44.not, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.nc = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite305 = call i64 @fwrite(ptr nonnull @.str.331, i64 49, i64 1, ptr %i.nc) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.il:                                            ; preds = %bb.ij
  %.not306.a = icmp eq i32 %.0230.lcssa, 0
  br i1 %.not306.a, label %bb.is, label %bb.im

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.nd = call i32 @getrlimit(i32 noundef 4, ptr noundef nonnull %6) #33
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %bb.im
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 -1, i64 16, i1 false)
  %i.nf = call i32 @setrlimit(i32 noundef 4, ptr noundef nonnull %8) #33
  %.not307.a = icmp eq i32 %i.nf, 0
  br i1 %.not307.a, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.ng = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !366 ; 2 uses
  store i64 %i.ni, ptr %i.ng, align 8, !tbaa !366
  store i64 %i.ni, ptr %8, align 8, !tbaa !367
  %i.nj = call i32 @setrlimit(i32 noundef 4, ptr noundef nonnull %8) #33 ; 0 uses
  br label %bb.ip

bb.ip:                                            ; preds = %bb.in, %bb.io, %bb.im
  %i.nk = call i32 @getrlimit(i32 noundef 4, ptr noundef nonnull %6) #33
  %i.nl = icmp ne i32 %i.nk, 0
  %i.nm = load i64, ptr %6, align 8
  %i.nn = icmp eq i64 %i.nm, 0
  %or.cond35 = select i1 %i.nl, i1 true, i1 %i.nn
  br i1 %or.cond35, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.no = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite352 = call i64 @fwrite(ptr nonnull @.str.332, i64 35, i64 1, ptr %i.no) #37 ; 0 uses
  call void @exit(i32 noundef 71) #42
  unreachable

bb.ir:                                            ; preds = %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.il
  %i.np = call i32 @getrlimit(i32 noundef 7, ptr noundef nonnull %6) #33
  %.not308.a = icmp eq i32 %i.np, 0
  br i1 %.not308.a, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.nq = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite351 = call i64 @fwrite(ptr nonnull @.str.333, i64 36, i64 1, ptr %i.nq) #37 ; 0 uses
  call void @exit(i32 noundef 71) #42
  unreachable

bb.iu:                                            ; preds = %bb.is
  %i.nr = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 8), align 8, !tbaa !68
  %i.ns = sext i32 %i.nr to i64                   ; 2 uses
  store i64 %i.ns, ptr %6, align 8, !tbaa !367
  %i.nt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !366
  %i.nu = call i32 @setrlimit(i32 noundef 7, ptr noundef nonnull %6) #33
  %.not309.a = icmp eq i32 %i.nu, 0
  br i1 %.not309.a, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.nv = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite350 = call i64 @fwrite(ptr nonnull @.str.334, i64 96, i64 1, ptr %i.nv) #37 ; 0 uses
  call void @exit(i32 noundef 71) #42
  unreachable

bb.iw:                                            ; preds = %bb.iu
  %i.nw = call i32 @getuid() #33
  %i.nx = icmp eq i32 %i.nw, 0
  br i1 %i.nx, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.ny = call i32 @geteuid() #33
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.iy, label %bb.jj

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.oa = icmp eq ptr %.0228.lcssa, null
  br i1 %i.oa, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ob = load i8, ptr %.0228.lcssa, align 1, !tbaa !80
  %i.oc = icmp eq i8 %i.ob, 0
  br i1 %i.oc, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.od = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite349 = call i64 @fwrite(ptr nonnull @.str.335, i64 36, i64 1, ptr %i.od) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.jb:                                            ; preds = %bb.iz
  %i.oe = call ptr @getpwnam(ptr noundef nonnull %.0228.lcssa) ; 3 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.og = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.oh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.og, ptr noundef nonnull @.str.336, ptr noundef nonnull %.0228.lcssa) #35 ; 0 uses
  call void @exit(i32 noundef 67) #42
  unreachable

bb.jd:                                            ; preds = %bb.jb
  %i.oi = call i32 @setgroups(i64 noundef 0, ptr noundef null) #33
  %i.oj = icmp slt i32 %i.oi, 0
  br i1 %i.oj, label %bb.je, label %bb.jg

bb.je:                                            ; preds = %bb.jd
  %i.ok = tail call ptr @__errno_location() #36
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !16 ; 2 uses
  %.not310.a = icmp eq i32 %i.ol, 1
  %i.om = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.on = call ptr @strerror(i32 noundef %i.ol) #33
  %i.oo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.om, ptr noundef nonnull @.str.337, ptr noundef %i.on) #35 ; 0 uses
  br i1 %.not310.a, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @exit(i32 noundef 71) #42
  unreachable

bb.jg:                                            ; preds = %bb.je, %bb.jd
  %i.op = getelementptr inbounds nuw i8, ptr %i.oe, i64 20
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !369
  %i.or = call i32 @setgid(i32 noundef %i.oq) #33
  %i.os = icmp slt i32 %i.or, 0
  br i1 %i.os, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !370
  %i.ov = call i32 @setuid(i32 noundef %i.ou) #33
  %i.ow = icmp slt i32 %i.ov, 0
  br i1 %i.ow, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %i.ox = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.oy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ox, ptr noundef nonnull @.str.338, ptr noundef nonnull %.0228.lcssa) #35 ; 0 uses
  call void @exit(i32 noundef 71) #42
  unreachable

bb.jj:                                            ; preds = %bb.jh, %bb.ix
  br i1 %.0235.lcssa, label %bb.jk, label %bb.jm

bb.jk:                                            ; preds = %bb.jj
  %i.oz = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.pa = call i32 @daemonize(i32 noundef %.0230.lcssa, i32 noundef %i.oz) #33
  %i.pb = icmp eq i32 %i.pa, -1
  br i1 %i.pb, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.pc = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite348 = call i64 @fwrite(ptr nonnull @.str.339, i64 41, i64 1, ptr %i.pc) #37 ; 0 uses
  call void @exit(i32 noundef 1) #42
  unreachable

bb.jm:                                            ; preds = %bb.jk, %bb.jj
  br i1 %.0237.lcssa, label %bb.jn, label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  %i.pd = call i32 @mlockall(i32 noundef 3) #33
  %.not311.a = icmp eq i32 %i.pd, 0
  br i1 %.not311.a, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.pe = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.pf = tail call ptr @__errno_location() #36
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !16
  %i.ph = call ptr @strerror(i32 noundef %i.pg) #33
  %i.pi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pe, ptr noundef nonnull @.str.340, ptr noundef %i.ph) #35 ; 0 uses
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jn, %bb.jo, %bb.jm
  %i.pj = call ptr @event_config_new() #33        ; 3 uses
  %i.pk = call i32 @event_config_set_flag(ptr noundef %i.pj, i32 noundef 1) #33 ; 0 uses
  %i.pl = call ptr @event_base_new_with_config(ptr noundef %i.pj) #33
  store ptr %i.pl, ptr @main_base, align 8, !tbaa !213
  call void @event_config_free(ptr noundef %i.pj) #33
  %i.pm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128 ; 2 uses
  %.not312.a = icmp eq ptr %i.pm, null
  br i1 %.not312.a, label %bb.jx, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.pn = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 16), align 8, !tbaa !162
  %.not313 = icmp eq i32 %i.pn, 0
  br i1 %.not313, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.po = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite347 = call i64 @fwrite(ptr nonnull @.str.341, i64 67, i64 1, ptr %i.po) #37 ; 0 uses
end_hunk_0
