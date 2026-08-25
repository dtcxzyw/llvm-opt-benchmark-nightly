Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/padding_x86_avx512?download=true
inline.NumInlined: 24
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 241
loop-unroll.NumUnrolled: 241
begin_hunk_0_@_ZNK4ncnn18Padding_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !52
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !53
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq ptr %2, %1
  br i1 %i.ah, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %.not.i322 = icmp eq ptr %i.aj, null
  br i1 %.not.i322, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = atomicrmw add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = atomicrmw add ptr %i.am, i32 -1 acq_rel, align 4
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.aq, null
  %i.ar = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.ar), !inline_history !54
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.n:                                             ; preds = %bb.l
  %.not.i18.i = icmp eq ptr %i.ar, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.ar) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.n, %bb.o, %bb.m, %bb.k, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ax, i8 0, i64 20, i1 false)
  %i.ba = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.ba, ptr %2, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !56
  store i64 %i.bc, ptr %i.av, align 8, !tbaa !56
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !57
  store i32 %i.be, ptr %i.aw, align 8, !tbaa !57
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = load <4 x i32>, ptr %i.bi, align 8, !tbaa !58
  store <4 x i32> %i.bj, ptr %i.ax, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !59
  store i32 %i.bl, ptr %i.ay, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !20
  store i64 %i.bn, ptr %i.az, align 8, !tbaa !20
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.p:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !57 ; 5 uses
  %.not.i323 = icmp eq i32 %i.bp, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56 ; 14 uses
  br i1 %.not.i323, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread:      ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.br = load <4 x i32>, ptr %i.bq, align 4, !tbaa !58 ; 3 uses
  %i.bs = extractelement <4 x i32> %i.br, i64 2
  store i32 %i.bs, ptr %i.a, align 4, !tbaa !58
  %i.bt = extractelement <4 x i32> %i.br, i64 3
  store i32 %i.bt, ptr %i.b, align 4, !tbaa !58
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !60
  br label %.thread412

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.p
  %.tr.i = trunc i64 %.pre to i32
  %i.bw = shl i32 %.tr.i, 3
  %i.bx = sdiv i32 %i.bw, %i.bp
  switch i32 %i.bx, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread [
    i32 8, label %bb.q
    i32 16, label %bb.r
  ]

bb.q:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.by = tail call noundef i32 @_ZNK4ncnn18Padding_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.r:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.bz = tail call noundef i32 @_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.cb = load <4 x i32>, ptr %i.ca, align 4, !tbaa !58 ; 28 uses
  %i.cc = extractelement <4 x i32> %i.cb, i64 3   ; 7 uses
  %i.cd = extractelement <4 x i32> %i.cb, i64 2   ; 4 uses
  %i.ce = extractelement <4 x i32> %i.cb, i64 1   ; 9 uses
  %i.cf = extractelement <4 x i32> %i.cb, i64 0   ; 12 uses
  store i32 %i.cd, ptr %i.a, align 4, !tbaa !58
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !58
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !60 ; 7 uses
  switch i32 %i.bp, label %.thread412 [
    i32 16, label %bb.s
    i32 8, label %bb.aq
    i32 4, label %bb.bj
  ]

bb.s:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  switch i32 %i.ch, label %.thread412 [
    i32 1, label %bb.t
    i32 2, label %bb.y
    i32 3, label %bb.ad
    i32 4, label %bb.am
  ]

bb.t:                                             ; preds = %bb.s
  %i.ci = shl nsw i32 %i.cf, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !50 ; 2 uses
  %i.cl = add nsw i32 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !51
  %i.co = add nsw i32 %i.cl, %i.cn                ; 2 uses
  %i.cp = and i32 %i.co, 15
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.u, label %.thread412

bb.u:                                             ; preds = %bb.t
  %i.cr = and i64 %.pre, -16
  %i.cs = and i32 %i.ck, 15
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.v, label %.thread412

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !61
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.w, label %.thread412

bb.w:                                             ; preds = %bb.v
  %i.cx = ashr exact i32 %i.co, 4
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.cx, i64 noundef %i.cr, i32 noundef 16, ptr noundef %i.cz)
  %i.da = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %_ZNK4ncnn3Mat5emptyEv.exit335

_ZNK4ncnn3Mat5emptyEv.exit335:                    ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.df = load i32, ptr %i.de, align 8, !tbaa !59
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul i64 %i.dd, %i.dg
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %bb.x

bb.x:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit335
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 228
  %6 = load float, ptr %i.dj, align 4, !tbaa !38
  %7 = insertelement <16 x float> poison, float %6, i64 0
  %i.dk = shufflevector <16 x float> %7, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dl = load <2 x i32>, ptr %i.cj, align 8, !tbaa !58
  %i.dm = sdiv <2 x i32> %i.dl, splat (i32 16)    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val340 = load i32, ptr %i.dn, align 4, !tbaa !63
  %i.do = extractelement <2 x i32> %i.dm, i64 0
  %i.dp = extractelement <2 x i32> %i.dm, i64 1
  tail call fastcc void @_ZN4ncnnL30padding_constant_pack16_avx512ERKNS_3MatERS0_iiiiRKDv16_f(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.da, i32 %.val340, i32 noundef 0, i32 noundef 0, i32 noundef %i.do, i32 noundef %i.dp, <16 x float> %i.dk)
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.y:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !50
  %i.ds = add nsw i32 %i.dr, %i.cf
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !51
  %i.dv = add nsw i32 %i.ds, %i.du
  %i.dw = shl nsw i32 %i.ce, 4
  %i.dx = add nsw i32 %i.q, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !49
  %i.ea = add nsw i32 %i.dx, %i.dz                ; 2 uses
  %i.eb = and i32 %i.ea, 15
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.z, label %.thread412

bb.z:                                             ; preds = %bb.y
  %i.ed = and i64 %.pre, -16
  %i.ee = and i32 %i.q, 15
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.aa, label %.thread412

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !61
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ab, label %.thread412

bb.ab:                                            ; preds = %bb.aa
  %i.ej = ashr exact i32 %i.ea, 4
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.dv, i32 noundef %i.ej, i64 noundef %i.ed, i32 noundef 16, ptr noundef %i.el)
  %i.em = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %_ZNK4ncnn3Mat5emptyEv.exit334

_ZNK4ncnn3Mat5emptyEv.exit334:                    ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !59
  %i.es = sext i32 %i.er to i64
  %i.et = mul i64 %i.ep, %i.es
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit334
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 228
  %8 = load float, ptr %i.ev, align 4, !tbaa !38
  %9 = insertelement <16 x float> poison, float %8, i64 0
  %i.ew = shufflevector <16 x float> %9, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ex = load <2 x i32>, ptr %i.p, align 8, !tbaa !58
  %i.ey = sdiv <2 x i32> %i.ex, splat (i32 16)    ; 2 uses
  %i.ez = load i32, ptr %i.dq, align 8, !tbaa !50
  %i.fa = load i32, ptr %i.dt, align 4, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val337 = load i32, ptr %i.fb, align 4, !tbaa !63
  %i.fc = extractelement <2 x i32> %i.ey, i64 0
  %i.fd = extractelement <2 x i32> %i.ey, i64 1
  tail call fastcc void @_ZN4ncnnL30padding_constant_pack16_avx512ERKNS_3MatERS0_iiiiRKDv16_f(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.em, i32 %.val337, i32 noundef %i.fc, i32 noundef %i.fd, i32 noundef %i.ez, i32 noundef %i.fa, <16 x float> %i.ew)
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.ad:                                            ; preds = %bb.s
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !50
  %i.fg = add nsw i32 %i.ff, %i.cf
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !51
  %i.fj = add nsw i32 %i.fg, %i.fi
  %i.fk = add nsw i32 %i.q, %i.ce
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !49
  %i.fn = add nsw i32 %i.fk, %i.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.fo = shl nsw i32 %i.cc, 4                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !52 ; 2 uses
  %i.fr = add nsw i32 %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !53
  %i.fu = add nsw i32 %i.fr, %i.ft                ; 6 uses
  store i32 %i.fu, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.fv = and i32 %i.fu, 15
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fx = and i32 %i.fu, 7
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fz = and i32 %i.fu, 3
  %i.ga = icmp eq i32 %i.fz, 0
  %i.gb = select i1 %i.ga, i32 4, i32 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.gc = phi i32 [ 16, %bb.ad ], [ %i.gb, %bb.af ], [ 8, %bb.ae ] ; 3 uses
  store i32 %i.gc, ptr %i.d, align 4, !tbaa !58
  %i.gd = lshr i64 %.pre, 4
  %i.ge = zext nneg i32 %i.gc to i64
  %i.gf = mul nuw i64 %i.gd, %i.ge
  %i.gg = and i32 %i.fq, 15
  %i.gh = icmp eq i32 %i.gg, 0
  %i.gi = icmp eq i32 %i.gc, 16
  %or.cond17 = and i1 %i.gh, %i.gi
  br i1 %or.cond17, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %.not = icmp eq i32 %i.fu, %i.fo
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !61
  %.not304 = icmp eq i32 %i.gk, 0
  br i1 %.not304, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gl = sdiv i32 %i.fu, 16
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.fj, i32 noundef %i.fn, i32 noundef %i.gl, i64 noundef %i.gf, i32 noundef 16, ptr noundef %i.gn)
  %i.go = load ptr, ptr %2, align 8, !tbaa !18
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %.thread375, label %_ZNK4ncnn3Mat5emptyEv.exit333

_ZNK4ncnn3Mat5emptyEv.exit333:                    ; preds = %bb.aj
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !20
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !59
  %i.gu = sext i32 %i.gt to i64
  %i.gv = mul i64 %i.gr, %i.gu
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %.thread375, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.gx = load i32, ptr %i.fp, align 8, !tbaa !52
  %i.gy = sdiv i32 %i.gx, 16
  store i32 %i.gy, ptr %i.e, align 4, !tbaa !58
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.ha)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn18Padding_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %.thread375

.thread375:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit333, %bb.ak, %bb.aj
  %.4285.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit333 ], [ 0, %bb.ak ], [ -100, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.al:                                            ; preds = %bb.ag, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.thread412

bb.am:                                            ; preds = %bb.s
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !50
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !51
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !52
  %i.hj = add nsw i32 %i.hi, %i.cd
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !53
  %i.hm = add nsw i32 %i.hj, %i.hl                ; 2 uses
  store i32 %i.hm, ptr %i.f, align 4, !tbaa !58
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !61
  %.not305 = icmp eq i32 %i.ho, 0
  br i1 %.not305, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.hp = add nsw i32 %i.q, %i.ce
  %i.hq = add nsw i32 %i.hp, %i.hg
  %i.hr = add nsw i32 %i.hc, %i.cf
  %i.hs = add nsw i32 %i.hr, %i.he
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.hs, i32 noundef %i.hq, i32 noundef %i.hm, i32 noundef %i.cc, i64 noundef %.pre, i32 noundef 16, ptr noundef %i.hu)
  %i.hv = load ptr, ptr %2, align 8, !tbaa !18
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %.thread382, label %_ZNK4ncnn3Mat5emptyEv.exit332

_ZNK4ncnn3Mat5emptyEv.exit332:                    ; preds = %bb.an
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !20
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !59
  %i.ib = sext i32 %i.ia to i64
  %i.ic = mul i64 %i.hy, %i.ib
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %.thread382, label %bb.ao

bb.ao:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit332
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.if)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn18Padding_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.f, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1)
  br label %.thread382

.thread382:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit332, %bb.ao, %bb.an
  %.6287.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit332 ], [ 0, %bb.ao ], [ -100, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %.thread412

bb.aq:                                            ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  switch i32 %i.ch, label %.thread412 [
    i32 1, label %bb.ar
    i32 2, label %bb.av
    i32 3, label %bb.az
    i32 4, label %bb.bf
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.ig = shl nsw i32 %i.cf, 3
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !50 ; 2 uses
  %i.ij = add nsw i32 %i.ii, %i.ig
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !51
  %i.im = add nsw i32 %i.ij, %i.il                ; 4 uses
  %i.in = and i32 %i.im, 7
  %i.io = icmp eq i32 %i.in, 0
  %i.ip = and i32 %i.im, 3
  %i.iq = icmp eq i32 %i.ip, 0
  %i.ir = lshr i64 %.pre, 3
  %i.is = select i1 %i.iq, i64 2, i64 0
  %i.it = select i1 %i.io, i64 3, i64 %i.is
  %i.iu = shl nuw i64 %i.ir, %i.it
  %i.iv = or i32 %i.im, %i.ii
  %i.iw = and i32 %i.iv, 7
  %or.cond19 = icmp eq i32 %i.iw, 0
  br i1 %or.cond19, label %bb.as, label %.thread412

bb.as:                                            ; preds = %bb.ar
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !61
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.at, label %.thread412

bb.at:                                            ; preds = %bb.as
  %i.ja = sdiv i32 %i.im, 8
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ja, i64 noundef %i.iu, i32 noundef 8, ptr noundef %i.jc)
  %i.jd = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %_ZNK4ncnn3Mat5emptyEv.exit331

_ZNK4ncnn3Mat5emptyEv.exit331:                    ; preds = %bb.at
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !20
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !59
  %i.jj = sext i32 %i.ji to i64
  %i.jk = mul i64 %i.jg, %i.jj
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %bb.au

bb.au:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit331
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 228
  %10 = load float, ptr %i.jm, align 4, !tbaa !38
  %11 = insertelement <8 x float> poison, float %10, i64 0
  %i.jn = shufflevector <8 x float> %11, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jo = load <2 x i32>, ptr %i.ih, align 8, !tbaa !58
  %i.jp = sdiv <2 x i32> %i.jo, splat (i32 8)     ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val346 = load i32, ptr %i.jq, align 4, !tbaa !63
  %i.jr = extractelement <2 x i32> %i.jp, i64 0
  %i.js = extractelement <2 x i32> %i.jp, i64 1
  tail call fastcc void @_ZN4ncnnL26padding_constant_pack8_avxERKNS_3MatERS0_iiiiRKDv8_f(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.jd, i32 %.val346, i32 noundef 0, i32 noundef 0, i32 noundef %i.jr, i32 noundef %i.js, <8 x float> %i.jn)
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.av:                                            ; preds = %bb.aq
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !50
  %i.jv = add nsw i32 %i.ju, %i.cf
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !51
  %i.jy = add nsw i32 %i.jv, %i.jx
  %i.jz = shl nsw i32 %i.ce, 3
  %i.ka = add nsw i32 %i.q, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !49
  %i.kd = add nsw i32 %i.ka, %i.kc                ; 4 uses
  %i.ke = and i32 %i.kd, 7
  %i.kf = icmp eq i32 %i.ke, 0
  %i.kg = and i32 %i.kd, 3
  %i.kh = icmp eq i32 %i.kg, 0
  %i.ki = lshr i64 %.pre, 3
  %i.kj = select i1 %i.kh, i64 2, i64 0
  %i.kk = select i1 %i.kf, i64 3, i64 %i.kj
  %i.kl = shl nuw i64 %i.ki, %i.kk
  %i.km = or i32 %i.kd, %i.q
  %i.kn = and i32 %i.km, 7
  %or.cond21 = icmp eq i32 %i.kn, 0
  br i1 %or.cond21, label %bb.aw, label %.thread412

bb.aw:                                            ; preds = %bb.av
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !61
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.ax, label %.thread412

bb.ax:                                            ; preds = %bb.aw
  %i.kr = sdiv i32 %i.kd, 8
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.jy, i32 noundef %i.kr, i64 noundef %i.kl, i32 noundef 8, ptr noundef %i.kt)
  %i.ku = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %_ZNK4ncnn3Mat5emptyEv.exit330

_ZNK4ncnn3Mat5emptyEv.exit330:                    ; preds = %bb.ax
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !20
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !59
  %i.la = sext i32 %i.kz to i64
  %i.lb = mul i64 %i.kx, %i.la
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %bb.ay

bb.ay:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit330
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 228
  %12 = load float, ptr %i.ld, align 4, !tbaa !38
  %13 = insertelement <8 x float> poison, float %12, i64 0
  %i.le = shufflevector <8 x float> %13, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lf = load <2 x i32>, ptr %i.p, align 8, !tbaa !58
  %i.lg = sdiv <2 x i32> %i.lf, splat (i32 8)     ; 2 uses
  %i.lh = load i32, ptr %i.jt, align 8, !tbaa !50
  %i.li = load i32, ptr %i.jw, align 4, !tbaa !51
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val343 = load i32, ptr %i.lj, align 4, !tbaa !63
  %i.lk = extractelement <2 x i32> %i.lg, i64 0
  %i.ll = extractelement <2 x i32> %i.lg, i64 1
  tail call fastcc void @_ZN4ncnnL26padding_constant_pack8_avxERKNS_3MatERS0_iiiiRKDv8_f(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.ku, i32 %.val343, i32 noundef %i.lk, i32 noundef %i.ll, i32 noundef %i.lh, i32 noundef %i.li, <8 x float> %i.le)
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.az:                                            ; preds = %bb.aq
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !50
  %i.lo = add nsw i32 %i.ln, %i.cf
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !51
  %i.lr = add nsw i32 %i.lo, %i.lq
  %i.ls = add nsw i32 %i.q, %i.ce
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !49
  %i.lv = add nsw i32 %i.ls, %i.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.lw = shl nsw i32 %i.cc, 3                    ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !52 ; 2 uses
  %i.lz = add nsw i32 %i.lw, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !53
  %i.mc = add nsw i32 %i.lz, %i.mb                ; 6 uses
  store i32 %i.mc, ptr %i.g, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.md = and i32 %i.mc, 7
  %i.me = icmp eq i32 %i.md, 0                    ; 2 uses
  %i.mf = and i32 %i.mc, 3
  %i.mg = icmp eq i32 %i.mf, 0                    ; 2 uses
  %i.mh = select i1 %i.mg, i32 4, i32 1
  %i.mi = select i1 %i.me, i32 8, i32 %i.mh
  store i32 %i.mi, ptr %i.h, align 4, !tbaa !58
  %i.mj = lshr i64 %.pre, 3
  %i.mk = select i1 %i.mg, i64 2, i64 0
  %i.ml = select i1 %i.me, i64 3, i64 %i.mk
  %i.mm = shl nuw i64 %i.mj, %i.ml
  %i.mn = or i32 %i.mc, %i.ly
  %i.mo = and i32 %i.mn, 7
  %or.cond23 = icmp eq i32 %i.mo, 0
  br i1 %or.cond23, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %.not306 = icmp eq i32 %i.mc, %i.lw
  br i1 %.not306, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !61
  %.not307 = icmp eq i32 %i.mq, 0
  br i1 %.not307, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.mr = sdiv i32 %i.mc, 8
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.lr, i32 noundef %i.lv, i32 noundef %i.mr, i64 noundef %i.mm, i32 noundef 8, ptr noundef %i.mt)
  %i.mu = load ptr, ptr %2, align 8, !tbaa !18
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %.thread402, label %_ZNK4ncnn3Mat5emptyEv.exit329

_ZNK4ncnn3Mat5emptyEv.exit329:                    ; preds = %bb.bc
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !20
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !59
  %i.na = sext i32 %i.mz to i64
  %i.nb = mul i64 %i.mx, %i.na
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %.thread402, label %bb.bd

bb.bd:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.nd = load i32, ptr %i.lx, align 8, !tbaa !52
  %i.ne = sdiv i32 %i.nd, 8
  store i32 %i.ne, ptr %i.i, align 4, !tbaa !58
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.ng)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn18Padding_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br label %.thread402

.thread402:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit329, %bb.bd, %bb.bc
  %.12293.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit329 ], [ 0, %bb.bd ], [ -100, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.be:                                            ; preds = %bb.az, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %.thread412

bb.bf:                                            ; preds = %bb.aq
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !50
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !51
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !52
  %i.np = add nsw i32 %i.no, %i.cd
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !53
  %i.ns = add nsw i32 %i.np, %i.nr                ; 2 uses
  store i32 %i.ns, ptr %i.j, align 4, !tbaa !58
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !61
  %.not308 = icmp eq i32 %i.nu, 0
  br i1 %.not308, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.nv = add nsw i32 %i.q, %i.ce
  %i.nw = add nsw i32 %i.nv, %i.nm
  %i.nx = add nsw i32 %i.ni, %i.cf
  %i.ny = add nsw i32 %i.nx, %i.nk
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ny, i32 noundef %i.nw, i32 noundef %i.ns, i32 noundef %i.cc, i64 noundef %.pre, i32 noundef 8, ptr noundef %i.oa)
  %i.ob = load ptr, ptr %2, align 8, !tbaa !18
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %.thread409, label %_ZNK4ncnn3Mat5emptyEv.exit328

_ZNK4ncnn3Mat5emptyEv.exit328:                    ; preds = %bb.bg
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !20
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.og = load i32, ptr %i.of, align 8, !tbaa !59
  %i.oh = sext i32 %i.og to i64
  %i.oi = mul i64 %i.oe, %i.oh
  %i.oj = icmp eq i64 %i.oi, 0
  br i1 %i.oj, label %.thread409, label %bb.bh

bb.bh:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit328
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.ol)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn18Padding_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.j, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1)
  br label %.thread409

.thread409:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit328, %bb.bh, %bb.bg
  %.14.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit328 ], [ 0, %bb.bh ], [ -100, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.bi:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  br label %.thread412

bb.bj:                                            ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  switch i32 %i.ch, label %.thread412 [
    i32 1, label %bb.bk
    i32 2, label %bb.bo
    i32 3, label %bb.bs
    i32 4, label %bb.by
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.om = shl nsw i32 %i.cf, 2
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !50 ; 2 uses
  %i.op = add nsw i32 %i.oo, %i.om
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !51
  %i.os = add nsw i32 %i.op, %i.or                ; 3 uses
  %i.ot = and i32 %i.os, 7                        ; 2 uses
  %.not442 = icmp eq i32 %i.ot, 0
  %i.ou = and i32 %i.os, 3
  %i.ov = icmp eq i32 %i.ou, 0
  %i.ow = lshr i64 %.pre, 2
  %i.ox = select i1 %i.ov, i64 2, i64 0
  %i.oy = select i1 %.not442, i64 3, i64 %i.ox
  %i.oz = shl nuw i64 %i.ow, %i.oy
  %i.pa = and i32 %i.oo, 3
  %i.pb = icmp eq i32 %i.pa, 0
  %i.pc = icmp eq i32 %i.ot, 4
  %or.cond25 = and i1 %i.pb, %i.pc
  br i1 %or.cond25, label %bb.bl, label %.thread412

bb.bl:                                            ; preds = %bb.bk
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !61
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.bm, label %.thread412

bb.bm:                                            ; preds = %bb.bl
  %i.pg = ashr exact i32 %i.os, 2
  %i.ph = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.pg, i64 noundef %i.oz, i32 noundef 4, ptr noundef %i.pi)
  %i.pj = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.pk = icmp eq ptr %i.pj, null
  br i1 %i.pk, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %_ZNK4ncnn3Mat5emptyEv.exit327

_ZNK4ncnn3Mat5emptyEv.exit327:                    ; preds = %bb.bm
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !20
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !59
  %i.pp = sext i32 %i.po to i64
  %i.pq = mul i64 %i.pm, %i.pp
  %i.pr = icmp eq i64 %i.pq, 0
  br i1 %i.pr, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %bb.bn

bb.bn:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit327
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 228
  %14 = load float, ptr %i.ps, align 4, !tbaa !38
  %15 = insertelement <4 x float> poison, float %14, i64 0
  %i.pt = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pu = load <2 x i32>, ptr %i.on, align 8, !tbaa !58
  %i.pv = sdiv <2 x i32> %i.pu, splat (i32 4)     ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val352 = load i32, ptr %i.pw, align 4, !tbaa !63
  %i.px = extractelement <2 x i32> %i.pv, i64 0
  %i.py = extractelement <2 x i32> %i.pv, i64 1
  tail call fastcc void @_ZN4ncnnL26padding_constant_pack4_sseERKNS_3MatERS0_iiiiRKDv4_f(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.pj, i32 %.val352, i32 noundef 0, i32 noundef 0, i32 noundef %i.px, i32 noundef %i.py, <4 x float> %i.pt)
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.bo:                                            ; preds = %bb.bj
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !50
  %i.qb = add nsw i32 %i.qa, %i.cf
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !51
  %i.qe = add nsw i32 %i.qb, %i.qd
  %i.qf = shl nsw i32 %i.ce, 2
  %i.qg = add nsw i32 %i.q, %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !49
  %i.qj = add nsw i32 %i.qg, %i.qi                ; 3 uses
  %i.qk = and i32 %i.qj, 7                        ; 2 uses
  %.not441 = icmp eq i32 %i.qk, 0
  %i.ql = and i32 %i.qj, 3
  %i.qm = icmp eq i32 %i.ql, 0
  %i.qn = lshr i64 %.pre, 2
  %i.qo = select i1 %i.qm, i64 2, i64 0
  %i.qp = select i1 %.not441, i64 3, i64 %i.qo
  %i.qq = shl nuw i64 %i.qn, %i.qp
  %i.qr = and i32 %i.q, 3
  %i.qs = icmp eq i32 %i.qr, 0
  %i.qt = icmp eq i32 %i.qk, 4
  %or.cond27 = and i1 %i.qs, %i.qt
  br i1 %or.cond27, label %bb.bp, label %.thread412

bb.bp:                                            ; preds = %bb.bo
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !61
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %bb.bq, label %.thread412

bb.bq:                                            ; preds = %bb.bp
  %i.qx = ashr exact i32 %i.qj, 2
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.qe, i32 noundef %i.qx, i64 noundef %i.qq, i32 noundef 4, ptr noundef %i.qz)
  %i.ra = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.rb = icmp eq ptr %i.ra, null
  br i1 %i.rb, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %_ZNK4ncnn3Mat5emptyEv.exit326

_ZNK4ncnn3Mat5emptyEv.exit326:                    ; preds = %bb.bq
  %i.rc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !20
  %i.re = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !59
  %i.rg = sext i32 %i.rf to i64
  %i.rh = mul i64 %i.rd, %i.rg
  %i.ri = icmp eq i64 %i.rh, 0
  br i1 %i.ri, label %_ZNK4ncnn3Mat5emptyEv.exit335.thread, label %bb.br

bb.br:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit326
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 228
  %16 = load float, ptr %i.rj, align 4, !tbaa !38
  %17 = insertelement <4 x float> poison, float %16, i64 0
  %i.rk = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rl = load <2 x i32>, ptr %i.p, align 8, !tbaa !58
  %i.rm = sdiv <2 x i32> %i.rl, splat (i32 4)     ; 2 uses
  %i.rn = load i32, ptr %i.pz, align 8, !tbaa !50
  %i.ro = load i32, ptr %i.qc, align 4, !tbaa !51
  %i.rp = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val349 = load i32, ptr %i.rp, align 4, !tbaa !63
  %i.rq = extractelement <2 x i32> %i.rm, i64 0
  %i.rr = extractelement <2 x i32> %i.rm, i64 1
  tail call fastcc void @_ZN4ncnnL26padding_constant_pack4_sseERKNS_3MatERS0_iiiiRKDv4_f(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.ra, i32 %.val349, i32 noundef %i.rq, i32 noundef %i.rr, i32 noundef %i.rn, i32 noundef %i.ro, <4 x float> %i.rk)
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.bs:                                            ; preds = %bb.bj
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !50
  %i.ru = add nsw i32 %i.rt, %i.cf
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !51
  %i.rx = add nsw i32 %i.ru, %i.rw
  %i.ry = add nsw i32 %i.q, %i.ce
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !49
  %i.sb = add nsw i32 %i.ry, %i.sa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.sc = shl nsw i32 %i.cc, 2                    ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !52 ; 2 uses
  %i.sf = add nsw i32 %i.sc, %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !53
  %i.si = add nsw i32 %i.sf, %i.sh                ; 5 uses
  store i32 %i.si, ptr %i.k, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.sj = and i32 %i.si, 7                        ; 2 uses
  %.not440 = icmp eq i32 %i.sj, 0                 ; 2 uses
  %i.sk = and i32 %i.si, 3
  %i.sl = icmp eq i32 %i.sk, 0                    ; 2 uses
  %i.sm = select i1 %i.sl, i32 4, i32 1           ; 3 uses
  %i.sn = select i1 %.not440, i32 8, i32 %i.sm
  store i32 %i.sn, ptr %i.l, align 4, !tbaa !58
  %i.so = lshr i64 %.pre, 2
  %i.sp = select i1 %i.sl, i64 2, i64 0
  %i.sq = select i1 %.not440, i64 3, i64 %i.sp
  %i.sr = shl nuw i64 %i.so, %i.sq
  %i.ss = and i32 %i.se, 3
  %i.st = icmp eq i32 %i.ss, 0
  %i.su = icmp eq i32 %i.sj, 4
  %or.cond29 = and i1 %i.st, %i.su
  br i1 %or.cond29, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %.not309 = icmp eq i32 %i.si, %i.sc
  br i1 %.not309, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !61
  %.not310 = icmp eq i32 %i.sw, 0
  br i1 %.not310, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.sx = sdiv i32 %i.si, %i.sm
  %i.sy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.rx, i32 noundef %i.sb, i32 noundef %i.sx, i64 noundef %i.sr, i32 noundef %i.sm, ptr noundef %i.sz)
  %i.ta = load ptr, ptr %2, align 8, !tbaa !18
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %.thread429, label %_ZNK4ncnn3Mat5emptyEv.exit325

_ZNK4ncnn3Mat5emptyEv.exit325:                    ; preds = %bb.bv
  %i.tc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !20
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !59
  %i.tg = sext i32 %i.tf to i64
  %i.th = mul i64 %i.td, %i.tg
  %i.ti = icmp eq i64 %i.th, 0
  br i1 %i.ti, label %.thread429, label %bb.bw

bb.bw:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.tj = load i32, ptr %i.sd, align 8, !tbaa !52
  %i.tk = sdiv i32 %i.tj, 4
  store i32 %i.tk, ptr %i.m, align 4, !tbaa !58
  %i.tl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.tm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn18Padding_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.l, ptr nonnull %i.k, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.m, ptr nonnull %i.b, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  br label %.thread429

.thread429:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit325, %bb.bw, %bb.bv
  %.20.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit325 ], [ 0, %bb.bw ], [ -100, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.bx:                                            ; preds = %bb.bs, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %.thread412

bb.by:                                            ; preds = %bb.bj
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !50
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !51
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !52
  %i.tv = add nsw i32 %i.tu, %i.cd
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !53
  %i.ty = add nsw i32 %i.tv, %i.tx                ; 2 uses
  store i32 %i.ty, ptr %i.n, align 4, !tbaa !58
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !61
  %.not311 = icmp eq i32 %i.ua, 0
  br i1 %.not311, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.ub = add nsw i32 %i.q, %i.ce
  %i.uc = add nsw i32 %i.ub, %i.ts
  %i.ud = add nsw i32 %i.to, %i.cf
  %i.ue = add nsw i32 %i.ud, %i.tq
  %i.uf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ue, i32 noundef %i.uc, i32 noundef %i.ty, i32 noundef %i.cc, i64 noundef %.pre, i32 noundef 4, ptr noundef %i.ug)
  %i.uh = load ptr, ptr %2, align 8, !tbaa !18
  %i.ui = icmp eq ptr %i.uh, null
  br i1 %i.ui, label %.thread436, label %_ZNK4ncnn3Mat5emptyEv.exit324

_ZNK4ncnn3Mat5emptyEv.exit324:                    ; preds = %bb.bz
  %i.uj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !20
  %i.ul = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !59
  %i.un = sext i32 %i.um to i64
  %i.uo = mul i64 %i.uk, %i.un
  %i.up = icmp eq i64 %i.uo, 0
  br i1 %i.up, label %.thread436, label %bb.ca

bb.ca:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit324
  %i.uq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.ur)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn18Padding_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.n, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1)
  br label %.thread436

.thread436:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit324, %bb.ca, %bb.bz
  %.22.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit324 ], [ 0, %bb.ca ], [ -100, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  br label %_ZNK4ncnn3Mat5emptyEv.exit335.thread

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  br label %.thread412

.thread412:                                       ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread, %bb.bj, %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.aq, %bb.s, %bb.y, %bb.t, %bb.bk, %bb.bl, %bb.bo, %bb.bp, %bb.bx, %bb.ar, %bb.as, %bb.av, %bb.aw, %bb.be, %bb.z, %bb.aa, %bb.v, %bb.u, %bb.al, %bb.ap, %bb.bi, %bb.cb
  %i.us = phi i32 [ %i.bv, %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread ], [ %i.ch, %bb.bj ], [ %i.ch, %_ZNK4ncnn3Mat8elembitsEv.exit.thread ], [ %i.ch, %bb.aq ], [ %i.ch, %bb.s ], [ 2, %bb.y ], [ 1, %bb.t ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 2, %bb.bo ], [ 2, %bb.bp ], [ 3, %bb.bx ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 2, %bb.av ], [ 2, %bb.aw ], [ 3, %bb.be ], [ 2, %bb.z ], [ 2, %bb.aa ], [ 1, %bb.v ], [ 1, %bb.u ], [ 3, %bb.al ], [ 4, %bb.ap ], [ 4, %bb.bi ], [ 4, %bb.cb ]
  %i.ut = phi <4 x i32> [ %i.br, %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread ], [ %i.cb, %bb.bj ], [ %i.cb, %_ZNK4ncnn3Mat8elembitsEv.exit.thread ], [ %i.cb, %bb.aq ], [ %i.cb, %bb.s ], [ %i.cb, %bb.y ], [ %i.cb, %bb.t ], [ %i.cb, %bb.bk ], [ %i.cb, %bb.bl ], [ %i.cb, %bb.bo ], [ %i.cb, %bb.bp ], [ %i.cb, %bb.bx ], [ %i.cb, %bb.ar ], [ %i.cb, %bb.as ], [ %i.cb, %bb.av ], [ %i.cb, %bb.aw ], [ %i.cb, %bb.be ], [ %i.cb, %bb.z ], [ %i.cb, %bb.aa ], [ %i.cb, %bb.v ], [ %i.cb, %bb.u ], [ %i.cb, %bb.al ], [ %i.cb, %bb.ap ], [ %i.cb, %bb.bi ], [ %i.cb, %bb.cb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.uu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !11 ; 2 uses
  %i.ux = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.ux, ptr %4, align 16, !tbaa !55
  %i.uy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.pre, ptr %i.uy, align 16, !tbaa !56
  %i.uz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.bp, ptr %i.uz, align 8, !tbaa !57
  %i.va = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !17
  store ptr %i.vc, ptr %i.va, align 16, !tbaa !17
  %i.vd = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.us, ptr %i.vd, align 8, !tbaa !60
  %i.ve = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.vf = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <4 x i32> %i.ut, ptr %i.ve, align 4, !tbaa !58
  %i.vg = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !20
  store i64 %i.vi, ptr %i.vg, align 16, !tbaa !20
  %.not.i336 = icmp eq ptr %i.uw, null
  br i1 %.not.i336, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.cc

bb.cc:                                            ; preds = %.thread412
  %i.vj = atomicrmw add ptr %i.uw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %.thread412, %bb.cc
  %.not312 = icmp eq i32 %i.bp, 1
  br i1 %.not312, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !65
  %i.vk = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_0
