Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/padding_x86?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZNK4ncnn11Padding_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = load i32, ptr %i.n, align 8, !tbaa !50
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.u = load i32, ptr %i.t, align 8, !tbaa !52
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.x = load i32, ptr %i.w, align 4, !tbaa !53
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq ptr %2, %1
  br i1 %i.z, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %.not.i130 = icmp eq ptr %i.ab, null
  br i1 %.not.i130, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = atomicrmw add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = atomicrmw add ptr %i.ae, i32 -1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.l, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !17 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.ai, null
  %i.aj = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj), !inline_history !54
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.n:                                             ; preds = %bb.l
  %.not.i18.i = icmp eq ptr %i.aj, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.aj) #11
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.n, %bb.o, %bb.m, %bb.k, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ap, i8 0, i64 20, i1 false)
  %i.as = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.as, ptr %2, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !56
  store i64 %i.au, ptr %i.an, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !57
  store i32 %i.aw, ptr %i.ao, align 8, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load <4 x i32>, ptr %i.ba, align 8, !tbaa !58
  store <4 x i32> %i.bb, ptr %i.ap, align 8, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !59
  store i32 %i.bd, ptr %i.aq, align 8, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !20
  store i64 %i.bf, ptr %i.ar, align 8, !tbaa !20
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.p:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !57 ; 5 uses
  %.not.i131 = icmp eq i32 %i.bh, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56 ; 6 uses
  br i1 %.not.i131, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.p
  %.tr.i = trunc i64 %.pre to i32
  %i.bi = shl i32 %.tr.i, 3
  %i.bj = sdiv i32 %i.bi, %i.bh
  switch i32 %i.bj, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread [
    i32 8, label %bb.q
    i32 16, label %bb.r
  ]

bb.q:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.bk = tail call noundef i32 @_ZNK4ncnn11Padding_x8612forward_int8ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.r:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.bl = tail call noundef i32 @_ZNK4ncnn11Padding_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.p, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !60 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !61 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !62 ; 3 uses
  store i32 %i.br, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !59 ; 4 uses
  store i32 %i.bt, ptr %i.b, align 4, !tbaa !58
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bv = icmp eq i32 %i.bh, 4
  %.pre167 = load i32, ptr %i.bu, align 8, !tbaa !63 ; 2 uses
  br i1 %i.bv, label %bb.s, label %.thread160

bb.s:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  switch i32 %.pre167, label %.thread160 [
    i32 1, label %bb.t
    i32 2, label %bb.x
    i32 3, label %bb.ab
    i32 4, label %bb.ah
  ]

bb.t:                                             ; preds = %bb.s
  %i.bw = shl nsw i32 %i.bn, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !50 ; 2 uses
  %i.bz = add nsw i32 %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !51
  %i.cc = add nsw i32 %i.bz, %i.cb                ; 2 uses
  %i.cd = and i32 %i.cc, 3
  %i.ce = icmp eq i32 %i.cd, 0                    ; 2 uses
  %i.cf = lshr i64 %.pre, 2
  %i.cg = select i1 %i.ce, i64 2, i64 0
  %i.ch = shl nuw i64 %i.cf, %i.cg
  %i.ci = and i32 %i.by, 3
  %i.cj = icmp eq i32 %i.ci, 0
  %or.cond = select i1 %i.cj, i1 %i.ce, i1 false
  br i1 %or.cond, label %bb.u, label %.thread160

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !64
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.v, label %.thread160

bb.v:                                             ; preds = %bb.u
  %i.cn = ashr exact i32 %i.cc, 2
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !65
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.cn, i64 noundef %i.ch, i32 noundef 4, ptr noundef %i.cp)
  %i.cq = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.thread, label %_ZNK4ncnn3Mat5emptyEv.exit135

_ZNK4ncnn3Mat5emptyEv.exit135:                    ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !20
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !59
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.ct, %i.cw
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %.thread, label %bb.w

bb.w:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit135
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 228
  %6 = load float, ptr %i.cz, align 4, !tbaa !38
  %7 = insertelement <4 x float> poison, float %6, i64 0
  %i.da = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = load <2 x i32>, ptr %i.bx, align 8, !tbaa !58
  %i.dc = sdiv <2 x i32> %i.db, splat (i32 4)     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val140 = load i32, ptr %i.dd, align 4, !tbaa !60
  %i.de = extractelement <2 x i32> %i.dc, i64 0
  %i.df = extractelement <2 x i32> %i.dc, i64 1
  tail call fastcc void @_ZN4ncnnL26padding_constant_pack4_sseERKNS_3MatERS0_iiiiRKDv4_f(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.cq, i32 %.val140, i32 noundef 0, i32 noundef 0, i32 noundef %i.de, i32 noundef %i.df, <4 x float> %i.da)
  br label %.thread

bb.x:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !50
  %i.di = add nsw i32 %i.dh, %i.bn
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !51
  %i.dl = add nsw i32 %i.di, %i.dk
  %i.dm = shl nsw i32 %i.bp, 2
  %i.dn = add nsw i32 %i.i, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !49
  %i.dq = add nsw i32 %i.dn, %i.dp                ; 2 uses
  %i.dr = and i32 %i.dq, 3
  %i.ds = icmp eq i32 %i.dr, 0                    ; 2 uses
  %i.dt = lshr i64 %.pre, 2
  %i.du = select i1 %i.ds, i64 2, i64 0
  %i.dv = shl nuw i64 %i.dt, %i.du
  %i.dw = and i32 %i.i, 3
  %i.dx = icmp eq i32 %i.dw, 0
  %or.cond7 = select i1 %i.dx, i1 %i.ds, i1 false
  br i1 %or.cond7, label %bb.y, label %.thread160

bb.y:                                             ; preds = %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !64
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.z, label %.thread160

bb.z:                                             ; preds = %bb.y
  %i.eb = ashr exact i32 %i.dq, 2
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !65
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.dl, i32 noundef %i.eb, i64 noundef %i.dv, i32 noundef 4, ptr noundef %i.ed)
  %i.ee = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %.thread, label %_ZNK4ncnn3Mat5emptyEv.exit134

_ZNK4ncnn3Mat5emptyEv.exit134:                    ; preds = %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !59
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul i64 %i.eh, %i.ek
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit134
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 228
  %8 = load float, ptr %i.en, align 4, !tbaa !38
  %9 = insertelement <4 x float> poison, float %8, i64 0
  %i.eo = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = load <2 x i32>, ptr %i.h, align 8, !tbaa !58
  %i.eq = sdiv <2 x i32> %i.ep, splat (i32 4)     ; 2 uses
  %i.er = load i32, ptr %i.dg, align 8, !tbaa !50
  %i.es = load i32, ptr %i.dj, align 4, !tbaa !51
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val137 = load i32, ptr %i.et, align 4, !tbaa !60
  %i.eu = extractelement <2 x i32> %i.eq, i64 0
  %i.ev = extractelement <2 x i32> %i.eq, i64 1
  tail call fastcc void @_ZN4ncnnL26padding_constant_pack4_sseERKNS_3MatERS0_iiiiRKDv4_f(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.ee, i32 %.val137, i32 noundef %i.eu, i32 noundef %i.ev, i32 noundef %i.er, i32 noundef %i.es, <4 x float> %i.eo)
  br label %.thread

bb.ab:                                            ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !50
  %i.ey = add nsw i32 %i.ex, %i.bn
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !51
  %i.fb = add nsw i32 %i.ey, %i.fa
  %i.fc = add nsw i32 %i.i, %i.bp
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !49
  %i.ff = add nsw i32 %i.fc, %i.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.fg = shl nsw i32 %i.bt, 2                    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !52 ; 2 uses
  %i.fj = add nsw i32 %i.fg, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !53
  %i.fm = add nsw i32 %i.fj, %i.fl                ; 4 uses
  store i32 %i.fm, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.fn = and i32 %i.fm, 3
  %i.fo = icmp eq i32 %i.fn, 0                    ; 3 uses
  %i.fp = select i1 %i.fo, i32 4, i32 1
  store i32 %i.fp, ptr %i.d, align 4, !tbaa !58
  %i.fq = lshr i64 %.pre, 2
  %i.fr = select i1 %i.fo, i64 2, i64 0
  %i.fs = shl nuw i64 %i.fq, %i.fr
  %i.ft = and i32 %i.fi, 3
  %i.fu = icmp eq i32 %i.ft, 0
  %or.cond9 = select i1 %i.fu, i1 %i.fo, i1 false
  br i1 %or.cond9, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %.not = icmp eq i32 %i.fm, %i.fg
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !64
  %.not118 = icmp eq i32 %i.fw, 0
  br i1 %.not118, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fx = ashr exact i32 %i.fm, 2
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !65
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.fb, i32 noundef %i.ff, i32 noundef %i.fx, i64 noundef %i.fs, i32 noundef 4, ptr noundef %i.fz)
  %i.ga = load ptr, ptr %2, align 8, !tbaa !18
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %.thread156, label %_ZNK4ncnn3Mat5emptyEv.exit133

_ZNK4ncnn3Mat5emptyEv.exit133:                    ; preds = %bb.ae
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !20
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !59
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul i64 %i.gd, %i.gg
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %.thread156, label %bb.af

bb.af:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.gj = load i32, ptr %i.fh, align 8, !tbaa !52
  %i.gk = sdiv i32 %i.gj, 4
  store i32 %i.gk, ptr %i.e, align 4, !tbaa !58
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !66
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.gm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn11Padding_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %.thread156

.thread156:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit133, %bb.af, %bb.ae
  %.4115.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit133 ], [ 0, %bb.af ], [ -100, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.thread

bb.ag:                                            ; preds = %bb.ab, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.thread160

bb.ah:                                            ; preds = %bb.s
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !50
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !51
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !52
  %i.gv = add nsw i32 %i.gu, %i.br
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !53
  %i.gy = add nsw i32 %i.gv, %i.gx                ; 2 uses
  store i32 %i.gy, ptr %i.f, align 4, !tbaa !58
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !64
  %.not119 = icmp eq i32 %i.ha, 0
  br i1 %.not119, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hb = add nsw i32 %i.i, %i.bp
  %i.hc = add nsw i32 %i.hb, %i.gs
  %i.hd = add nsw i32 %i.go, %i.bn
  %i.he = add nsw i32 %i.hd, %i.gq
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !65
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.he, i32 noundef %i.hc, i32 noundef %i.gy, i32 noundef %i.bt, i64 noundef %.pre, i32 noundef 4, ptr noundef %i.hg)
  %i.hh = load ptr, ptr %2, align 8, !tbaa !18
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %.thread163, label %_ZNK4ncnn3Mat5emptyEv.exit132

_ZNK4ncnn3Mat5emptyEv.exit132:                    ; preds = %bb.ai
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !20
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !59
  %i.hn = sext i32 %i.hm to i64
  %i.ho = mul i64 %i.hk, %i.hn
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %.thread163, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit132
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !66
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.hr)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn11Padding_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.f, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1)
  br label %.thread163

.thread163:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit132, %bb.aj, %bb.ai
  %.6.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit132 ], [ 0, %bb.aj ], [ -100, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %.thread

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %.thread160

.thread160:                                       ; preds = %bb.s, %bb.t, %bb.u, %bb.x, %bb.y, %bb.ag, %bb.ak, %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !11 ; 2 uses
  %i.hv = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.hv, ptr %4, align 16, !tbaa !55
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.pre, ptr %i.hw, align 16, !tbaa !56
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.bh, ptr %i.hx, align 8, !tbaa !57
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !17
  store ptr %i.ia, ptr %i.hy, align 16, !tbaa !17
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %.pre167, ptr %i.ib, align 8, !tbaa !63
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.bn, ptr %i.ic, align 4, !tbaa !60
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %i.bp, ptr %i.id, align 16, !tbaa !61
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 %i.br, ptr %i.ie, align 4, !tbaa !62
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store i32 %i.bt, ptr %i.if, align 8, !tbaa !59
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !20
  store i64 %i.ii, ptr %i.ig, align 16, !tbaa !20
  %.not.i136 = icmp eq ptr %i.hu, null
  br i1 %.not.i136, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.al

bb.al:                                            ; preds = %.thread160
  %i.ij = atomicrmw add ptr %i.hu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %.thread160, %bb.al
  %.not120 = icmp eq i32 %i.bh, 1
  br i1 %.not120, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !67
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !71
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_0
