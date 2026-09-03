Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolutiondepthwise_x86?download=true
inline.NumInlined: 74
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn26DeconvolutionDepthWise_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.x = add nsw i32 %i.w, -1
  %i.y = mul nsw i32 %i.x, %i.u
  %i.z = add nsw i32 %i.y, 1                      ; 2 uses
  store i32 %i.z, ptr %i.d, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !43
  %i.ae = add nsw i32 %i.ad, -1
  %i.af = mul nsw i32 %i.ae, %i.ab
  %i.ag = add nsw i32 %i.af, 1                    ; 2 uses
  store i32 %i.ag, ptr %i.e, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.ah = add nsw i32 %i.k, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !72
  %i.ak = mul nsw i32 %i.aj, %i.ah
  %i.al = add nsw i32 %i.ak, %i.z
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.an = load i32, ptr %i.am, align 4, !tbaa !78
  %i.ao = add nsw i32 %i.al, %i.an                ; 6 uses
  store i32 %i.ao, ptr %i.f, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.ap = add nsw i32 %i.m, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !73
  %i.as = mul nsw i32 %i.ar, %i.ap
  %i.at = add nsw i32 %i.as, %i.ag
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = load i32, ptr %i.au, align 8, !tbaa !79
  %i.aw = add nsw i32 %i.at, %i.av                ; 6 uses
  store i32 %i.aw, ptr %i.g, align 4, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 39 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !48, !range !49, !noundef !50
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !46
  %i.bc = and i32 %i.bb, 3
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = select i1 %i.bd, i32 4, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.094 = phi i32 [ %i.be, %bb.b ], [ 1, %bb.a ]  ; 5 uses
  %i.bf = sext i32 %i.s to i64
  %i.bg = udiv i64 %i.q, %i.bf
  %i.bh = zext nneg i32 %.094 to i64              ; 2 uses
  %i.bi = mul i64 %i.bg, %i.bh                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  store i64 0, ptr %i.bp, align 16, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.bm, i8 0, i64 28, i1 false)
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !74
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.thread.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !75
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.thread.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !76
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.thread.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !77
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.thread.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !80
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !81
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.thread.invoke, label %bb.j

bb.i:                                             ; preds = %.thread.invoke, %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !18 ; 2 uses
  %.not.i182 = icmp eq ptr %i.ck, null
  br i1 %.not.i182, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = atomicrmw add ptr %i.ck, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !18 ; 2 uses
  %.not.i.i183 = icmp eq ptr %.pre, null
  br i1 %.not.i.i183, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.co = load ptr, ptr %i.bm, align 16, !tbaa !19 ; 3 uses
  %.not3.i.i184 = icmp eq ptr %i.co, null
  %i.cp = load ptr, ptr %4, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i.i184, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef %i.cp)
          to label %.thread unwind label %bb.i, !inline_history !1

bb.o:                                             ; preds = %bb.m
  %.not.i18.i185 = icmp eq ptr %i.cp, null
  br i1 %.not.i18.i185, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.cp) #12
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.l, %bb.k, %bb.n, %bb.p, %bb.o
  %i.ct = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.ct, ptr %4, align 16, !tbaa !57
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !58
  store i64 %i.cv, ptr %i.bk, align 16, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !59
  store i32 %i.cx, ptr %i.bl, align 8, !tbaa !59
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !19
  store ptr %i.cz, ptr %i.bm, align 16, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.db = load <4 x i32>, ptr %i.da, align 8, !tbaa !60
  store <4 x i32> %i.db, ptr %i.bn, align 8, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !61
  store i32 %i.dd, ptr %i.bo, align 8, !tbaa !61
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.df = load i64, ptr %i.de, align 8, !tbaa !21
  store i64 %i.df, ptr %i.bp, align 16, !tbaa !21
  %i.dg = load i32, ptr %i.f, align 4, !tbaa !60
  %i.dh = load i32, ptr %i.g, align 4, !tbaa !60
  br label %.thread.invoke

.thread.invoke:                                   ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %.thread
  %.sink334 = phi i64 [ 8, %.thread ], [ 16, %bb.h ], [ 16, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ]
  %i.di = phi i32 [ %i.dg, %.thread ], [ %i.ao, %bb.h ], [ %i.ao, %bb.f ], [ %i.ao, %bb.e ], [ %i.ao, %bb.d ], [ %i.ao, %bb.c ]
  %i.dj = phi i32 [ %i.dh, %.thread ], [ %i.aw, %bb.h ], [ %i.aw, %bb.f ], [ %i.aw, %bb.e ], [ %i.aw, %bb.d ], [ %i.aw, %bb.c ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !46
  %i.dm = sdiv i32 %i.dl, %.094
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 %.sink334
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !117
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.di, i32 noundef %i.dj, i32 noundef %i.dm, i64 noundef %i.bi, i32 noundef %.094, ptr noundef %i.do)
          to label %bb.q unwind label %bb.i

bb.q:                                             ; preds = %.thread.invoke
  %i.dp = load ptr, ptr %4, align 16, !tbaa !20
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZNK4ncnn3Mat5emptyEv.exit192.thread, label %_ZNK4ncnn3Mat5emptyEv.exit192

_ZNK4ncnn3Mat5emptyEv.exit192:                    ; preds = %bb.q
  %i.dr = load i64, ptr %i.bp, align 16, !tbaa !21
  %i.ds = load i32, ptr %i.bo, align 8, !tbaa !61
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul i64 %i.dr, %i.dt
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_ZNK4ncnn3Mat5emptyEv.exit192.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.dw = load i32, ptr %i.v, align 4, !tbaa !42
  %i.dx = load i32, ptr %i.ac, align 8, !tbaa !43
  %i.dy = mul nsw i32 %i.dx, %i.dw
  store i32 %i.dy, ptr %i.h, align 4, !tbaa !60
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !60
  %i.ea = mul nsw i32 %i.dz, %i.s                 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !45 ; 3 uses
  %i.ed = icmp eq i32 %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !46 ; 2 uses
  %i.eg = icmp eq i32 %i.ea, %i.ef
  %or.cond = select i1 %i.ed, i1 %i.eg, i1 false
  br i1 %or.cond, label %bb.s, label %._crit_edge286

bb.s:                                             ; preds = %bb.r
  switch i32 %i.s, label %bb.cu [
    i32 4, label %.sink.split
    i32 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %.sink.split

._crit_edge286:                                   ; preds = %bb.r
  %11 = sdiv i32 %i.ea, %i.ec                     ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %13 = sdiv i32 %i.ef, %i.ec                     ; 3 uses
  %i.eh = load i8, ptr %i.ax, align 1, !tbaa !48, !range !49, !noundef !50
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge286
  %14 = and i32 %11, 3
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 4, i32 1
  %17 = and i32 %13, 3
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 4, i32 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge286
  %.079 = phi i32 [ %16, %bb.u ], [ 1, %._crit_edge286 ] ; 4 uses
  %.078 = phi i32 [ %19, %bb.u ], [ 1, %._crit_edge286 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !18 ; 2 uses
  %i.em = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store <2 x ptr> %i.em, ptr %5, align 16, !tbaa !57
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eo = load i64, ptr %i.p, align 8, !tbaa !58
  store i64 %i.eo, ptr %i.en, align 16, !tbaa !58
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.eq = load i32, ptr %i.r, align 8, !tbaa !59
  store i32 %i.eq, ptr %i.ep, align 8, !tbaa !59
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !19
  store ptr %i.et, ptr %i.er, align 16, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ex = load <4 x i32>, ptr %i.ev, align 8, !tbaa !60
  store <4 x i32> %i.ex, ptr %i.eu, align 8, !tbaa !60
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ez = load i32, ptr %i.n, align 8, !tbaa !61
  store i32 %i.ez, ptr %i.ey, align 8, !tbaa !61
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !21
  store i64 %i.fc, ptr %i.fa, align 16, !tbaa !21
  %.not.i193 = icmp eq ptr %i.el, null
  br i1 %.not.i193, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fd = atomicrmw add ptr %i.el, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.w, %bb.v
  %i.fe = icmp sgt i32 %i.s, %.079
  br i1 %i.fe, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !119
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !68
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !120
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.079, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fi = load ptr, ptr %5, align 16, !tbaa !20
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %_ZNK4ncnn3Mat5emptyEv.exit191.thread, label %_ZNK4ncnn3Mat5emptyEv.exit191

_ZNK4ncnn3Mat5emptyEv.exit191.thread:             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.bz

bb.z:                                             ; preds = %bb.x
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.cn

_ZNK4ncnn3Mat5emptyEv.exit191:                    ; preds = %bb.y
  %i.fl = load i64, ptr %i.fa, align 16, !tbaa !21
  %i.fm = load i32, ptr %i.ey, align 8, !tbaa !61
  %i.fn = sext i32 %i.fm to i64
  %i.fo = mul i64 %i.fl, %i.fn
  %i.fp = icmp eq i64 %i.fo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br i1 %i.fp, label %bb.bz, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit191, %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.fr = load ptr, ptr %i.bj, align 8, !tbaa !18 ; 2 uses
  %i.fs = load <2 x ptr>, ptr %4, align 16, !tbaa !57
  store <2 x ptr> %i.fs, ptr %7, align 16, !tbaa !57
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.fu = load i64, ptr %i.bk, align 16, !tbaa !58
  store i64 %i.fu, ptr %i.ft, align 16, !tbaa !58
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.fw = load i32, ptr %i.bl, align 8, !tbaa !59
  store i32 %i.fw, ptr %i.fv, align 8, !tbaa !59
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.fy = load ptr, ptr %i.bm, align 16, !tbaa !19
  store ptr %i.fy, ptr %i.fx, align 16, !tbaa !19
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.gb = load <4 x i32>, ptr %i.bn, align 8, !tbaa !60
  store <4 x i32> %i.gb, ptr %i.fz, align 8, !tbaa !60
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %i.gd = load i32, ptr %i.bo, align 8, !tbaa !61
  store i32 %i.gd, ptr %i.gc, align 8, !tbaa !61
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.gf = load i64, ptr %i.bp, align 16, !tbaa !21
  store i64 %i.gf, ptr %i.ge, align 16, !tbaa !21
  %.not.i194 = icmp eq ptr %i.fr, null
  br i1 %.not.i194, label %_ZN4ncnn3Mat6addrefEv.exit195, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gg = atomicrmw add ptr %i.fr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit195

_ZN4ncnn3Mat6addrefEv.exit195:                    ; preds = %bb.ab, %bb.aa
  %i.gh = icmp samesign ult i32 %.078, %.094      ; 2 uses
  br i1 %i.gh, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit195
  %i.gi = load i32, ptr %i.f, align 4, !tbaa !60
  %i.gj = load i32, ptr %i.g, align 4, !tbaa !60
  %i.gk = load i32, ptr %12, align 8, !tbaa !46
  %i.gl = sdiv i32 %i.gk, %.078
  %i.gm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bh, i1 true)
  %i.gn = lshr i64 %i.bi, %i.gm
  %i.go = zext nneg i32 %.078 to i64
  %i.gp = mul i64 %i.gn, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !68
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef %i.gi, i32 noundef %i.gj, i32 noundef %i.gl, i64 noundef %i.gp, i32 noundef %.078, ptr noundef %i.gr)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gs = load ptr, ptr %7, align 16, !tbaa !20
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %_ZNK4ncnn3Mat5emptyEv.exit190.thread, label %_ZNK4ncnn3Mat5emptyEv.exit190

_ZNK4ncnn3Mat5emptyEv.exit190:                    ; preds = %bb.ad
  %i.gu = load i64, ptr %i.ge, align 16, !tbaa !21
  %i.gv = load i32, ptr %i.gc, align 8, !tbaa !61
  %i.gw = sext i32 %i.gv to i64
  %i.gx = mul i64 %i.gu, %i.gw
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %_ZNK4ncnn3Mat5emptyEv.exit190.thread, label %bb.af

bb.ae:                                            ; preds = %bb.bp, %bb.bi, %bb.ac
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.af:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit190, %_ZN4ncnn3Mat6addrefEv.exit195
  %i.ha = load i32, ptr %i.eb, align 4, !tbaa !45
  %.not107280 = icmp sgt i32 %i.ha, 0
  br i1 %.not107280, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.af
  %20 = sdiv i32 %11, %.079
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hh = getelementptr inbounds nuw i8, ptr %8, i64 64
  %21 = sdiv i32 %13, %.078
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hr = load i32, ptr %i.eb, align 4, !tbaa !45
  %i.hs = sext i32 %i.hr to i64
  %.not107 = icmp slt i64 %indvars.iv.next, %i.hs
  br i1 %.not107, label %bb.ah, label %._crit_edge, !llvm.loop !112

bb.ah:                                            ; preds = %.lr.ph, %bb.ag
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ag ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ht = trunc i64 %indvars.iv to i32
  %i.hu = mul i32 %11, %i.ht
  %i.hv = sdiv i32 %i.hu, %.079
  %i.hw = load ptr, ptr %5, align 16, !tbaa !20, !noalias !121
  %i.hx = load i64, ptr %i.fa, align 16, !tbaa !21, !noalias !121
  %i.hy = sext i32 %i.hv to i64
  %i.hz = mul i64 %i.hx, %i.hy
  %i.ia = load i64, ptr %i.en, align 16, !tbaa !58, !noalias !121 ; 4 uses
  %i.ib = mul i64 %i.hz, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ib
  %i.id = load i32, ptr %i.ep, align 8, !tbaa !59, !noalias !121
  %i.ie = load ptr, ptr %i.er, align 16, !tbaa !19, !noalias !121
  store ptr %i.ic, ptr %8, align 8, !tbaa !20
  store ptr null, ptr %i.hb, align 8, !tbaa !18
  store i64 %i.ia, ptr %i.hc, align 8, !tbaa !58
  store i32 %i.id, ptr %i.hd, align 8, !tbaa !59
  store ptr %i.ie, ptr %i.he, align 8, !tbaa !19
  store i32 %20, ptr %i.hg, align 8, !tbaa !61
  %i.if = load <4 x i32>, ptr %i.eu, align 8, !tbaa !60, !noalias !121 ; 3 uses
  %i.ig = load i32, ptr %i.ew, align 4, !tbaa !65, !noalias !121
  %i.ih = sext i32 %i.ig to i64
  %i.ii = extractelement <4 x i32> %i.if, i64 2
  %i.ij = sext i32 %i.ii to i64
  %i.ik = mul nsw i64 %i.ij, %i.ih
  %i.il = extractelement <4 x i32> %i.if, i64 3
  %i.im = sext i32 %i.il to i64
  %i.in = mul i64 %i.ik, %i.im
  %i.io = mul i64 %i.in, %i.ia
  %i.ip = add i64 %i.io, 15
  %i.iq = and i64 %i.ip, -16
  %i.ir = udiv i64 %i.iq, %i.ia
  store i64 %i.ir, ptr %i.hh, align 8, !tbaa !21
  store <4 x i32> %i.if, ptr %i.hf, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.is = trunc i64 %indvars.iv to i32
  %i.it = mul i32 %13, %i.is
  %i.iu = sdiv i32 %i.it, %.078
  %i.iv = load ptr, ptr %7, align 16, !tbaa !20, !noalias !122
  %i.iw = load i64, ptr %i.ge, align 16, !tbaa !21, !noalias !122
  %i.ix = sext i32 %i.iu to i64
  %i.iy = mul i64 %i.iw, %i.ix
  %i.iz = load i64, ptr %i.ft, align 16, !tbaa !58, !noalias !122 ; 4 uses
  %i.ja = mul i64 %i.iy, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ja
  %i.jc = load i32, ptr %i.fv, align 8, !tbaa !59, !noalias !122
  %i.jd = load ptr, ptr %i.fx, align 16, !tbaa !19, !noalias !122 ; 2 uses
  store ptr %i.jb, ptr %9, align 8, !tbaa !20
  store ptr null, ptr %i.hi, align 8, !tbaa !18
  store i64 %i.iz, ptr %i.hj, align 8, !tbaa !58
  store i32 %i.jc, ptr %i.hk, align 8, !tbaa !59
  store ptr %i.jd, ptr %i.hl, align 8, !tbaa !19
  store i32 %21, ptr %i.hn, align 8, !tbaa !61
  %i.je = load <4 x i32>, ptr %i.fz, align 8, !tbaa !60, !noalias !122 ; 3 uses
  %i.jf = load i32, ptr %i.ga, align 4, !tbaa !65, !noalias !122
  %i.jg = sext i32 %i.jf to i64
  %i.jh = extractelement <4 x i32> %i.je, i64 2
  %i.ji = sext i32 %i.jh to i64
  %i.jj = mul nsw i64 %i.ji, %i.jg
  %i.jk = extractelement <4 x i32> %i.je, i64 3
  %i.jl = sext i32 %i.jk to i64
  %i.jm = mul i64 %i.jj, %i.jl
  %i.jn = mul i64 %i.jm, %i.iz
  %i.jo = add i64 %i.jn, 15
  %i.jp = and i64 %i.jo, -16
  %i.jq = udiv i64 %i.jp, %i.iz
  store i64 %i.jq, ptr %i.ho, align 8, !tbaa !21
  store <4 x i32> %i.je, ptr %i.hm, align 8, !tbaa !60
  %i.jr = load ptr, ptr %i.hp, align 8, !tbaa !25
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !119
  store ptr %i.jd, ptr %i.hq, align 8, !tbaa !120
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !12
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 56
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = invoke noundef i32 %i.jw(ptr noundef nonnull align 8 dereferenceable(208) %i.jt, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.ai unwind label %bb.av     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %.not = icmp eq i32 %i.jx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.jy = load ptr, ptr %i.hi, align 8, !tbaa !18 ; 2 uses
  %.not.i125 = icmp eq ptr %i.jy, null
  br i1 %.not.i125, label %_ZN4ncnn3MatD2Ev.exit123, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jz = atomicrmw add ptr %i.jy, i32 -1 acq_rel, align 4
  %i.ka = icmp eq i32 %i.jz, 1
  br i1 %i.ka, label %bb.ak, label %_ZN4ncnn3MatD2Ev.exit123

bb.ak:                                            ; preds = %bb.aj
  %i.kb = load ptr, ptr %i.hl, align 8, !tbaa !19 ; 3 uses
  %.not3.i126 = icmp eq ptr %i.kb, null
  %i.kc = load ptr, ptr %9, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i126, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kd = load ptr, ptr %i.kb, align 8, !tbaa !12
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8
  invoke void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, ptr noundef %i.kc)
          to label %_ZN4ncnn3MatD2Ev.exit123 unwind label %bb.ao, !inline_history !0

bb.am:                                            ; preds = %bb.ak
  %.not.i176 = icmp eq ptr %i.kc, null
  br i1 %.not.i176, label %_ZN4ncnn3MatD2Ev.exit123, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.kc) #12
  br label %_ZN4ncnn3MatD2Ev.exit123

bb.ao:                                            ; preds = %bb.al
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit123:                         ; preds = %bb.aj, %bb.ai, %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.ki = load ptr, ptr %i.hb, align 8, !tbaa !18 ; 2 uses
  %.not.i129 = icmp eq ptr %i.ki, null
  br i1 %.not.i129, label %_ZN4ncnn3MatD2Ev.exit122, label %bb.ap

bb.ap:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.kj = atomicrmw add ptr %i.ki, i32 -1 acq_rel, align 4
  %i.kk = icmp eq i32 %i.kj, 1
  br i1 %i.kk, label %bb.aq, label %_ZN4ncnn3MatD2Ev.exit122

bb.aq:                                            ; preds = %bb.ap
  %i.kl = load ptr, ptr %i.he, align 8, !tbaa !19 ; 3 uses
  %.not3.i130 = icmp eq ptr %i.kl, null
  %i.km = load ptr, ptr %8, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i130, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kn = load ptr, ptr %i.kl, align 8, !tbaa !12
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8
  invoke void %i.kp(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef %i.km)
          to label %_ZN4ncnn3MatD2Ev.exit122 unwind label %bb.au, !inline_history !0

bb.as:                                            ; preds = %bb.aq
  %.not.i174 = icmp eq ptr %i.km, null
  br i1 %.not.i174, label %_ZN4ncnn3MatD2Ev.exit122, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @free(ptr noundef nonnull %i.km) #12
  br label %_ZN4ncnn3MatD2Ev.exit122

bb.au:                                            ; preds = %bb.ar
  %i.kq = landingpad { ptr, i32 }
          catch ptr null
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0
  call void @__clang_call_terminate(ptr %i.kr) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %bb.ap, %_ZN4ncnn3MatD2Ev.exit123, %bb.ar, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br i1 %.not, label %bb.ag, label %_ZNK4ncnn3Mat5emptyEv.exit190.thread

bb.av:                                            ; preds = %bb.ah
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.kt = load ptr, ptr %i.hi, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %i.kt, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit124, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ku = atomicrmw add ptr %i.kt, i32 -1 acq_rel, align 4
  %i.kv = icmp eq i32 %i.ku, 1
  br i1 %i.kv, label %bb.ax, label %_ZN4ncnn3MatD2Ev.exit124

bb.ax:                                            ; preds = %bb.aw
  %i.kw = load ptr, ptr %i.hl, align 8, !tbaa !19 ; 3 uses
  %.not3.i = icmp eq ptr %i.kw, null
  %i.kx = load ptr, ptr %9, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ky = load ptr, ptr %i.kw, align 8, !tbaa !12
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8
  invoke void %i.la(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef %i.kx)
          to label %_ZN4ncnn3MatD2Ev.exit124 unwind label %bb.bb, !inline_history !0

bb.az:                                            ; preds = %bb.ax
  %.not.i178 = icmp eq ptr %i.kx, null
  br i1 %.not.i178, label %_ZN4ncnn3MatD2Ev.exit124, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.kx) #12
  br label %_ZN4ncnn3MatD2Ev.exit124

bb.bb:                                            ; preds = %bb.ay
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  %i.lc = extractvalue { ptr, i32 } %i.lb, 0
  call void @__clang_call_terminate(ptr %i.lc) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit124:                         ; preds = %bb.aw, %bb.av, %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.ld = load ptr, ptr %i.hb, align 8, !tbaa !18 ; 2 uses
  %.not.i133 = icmp eq ptr %i.ld, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit121, label %bb.bc

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit124
  %i.le = atomicrmw add ptr %i.ld, i32 -1 acq_rel, align 4
  %i.lf = icmp eq i32 %i.le, 1
  br i1 %i.lf, label %bb.bd, label %_ZN4ncnn3MatD2Ev.exit121

bb.bd:                                            ; preds = %bb.bc
  %i.lg = load ptr, ptr %i.he, align 8, !tbaa !19 ; 3 uses
  %.not3.i134 = icmp eq ptr %i.lg, null
  %i.lh = load ptr, ptr %8, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i134, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.li = load ptr, ptr %i.lg, align 8, !tbaa !12
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8
  invoke void %i.lk(ptr noundef nonnull align 8 dereferenceable(8) %i.lg, ptr noundef %i.lh)
          to label %_ZN4ncnn3MatD2Ev.exit121 unwind label %bb.bh, !inline_history !0

bb.bf:                                            ; preds = %bb.bd
  %.not.i172 = icmp eq ptr %i.lh, null
  br i1 %.not.i172, label %_ZN4ncnn3MatD2Ev.exit121, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @free(ptr noundef nonnull %i.lh) #12
  br label %_ZN4ncnn3MatD2Ev.exit121

bb.bh:                                            ; preds = %bb.be
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %bb.bc, %_ZN4ncnn3MatD2Ev.exit124, %bb.be, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.cg

._crit_edge:                                      ; preds = %bb.ag, %bb.af
  br i1 %i.gh, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %._crit_edge
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.094, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bj unwind label %bb.ae
end_hunk_0
