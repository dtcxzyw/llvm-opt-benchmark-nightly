Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pooling3d?download=true
inline.NumInlined: 38
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn9Pooling3D12make_paddingERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !53
  %.fr91 = freeze i32 %i.e                        ; 3 uses
  %i.f = icmp eq ptr %2, %1
  br i1 %i.f, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %.not.i94 = icmp eq ptr %i.k, null
  br i1 %.not.i94, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = atomicrmw add ptr %i.k, i32 -1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %_ZN4ncnn3Mat7releaseEv.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61   ; 3 uses
  %.not3.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %2, align 8, !tbaa !58     ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.h:                                             ; preds = %bb.f
  %.not.i95 = icmp eq ptr %i.p, null
  br i1 %.not.i95, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.p) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.i, %bb.h, %bb.d, %bb.e, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.y = load <2 x ptr>, ptr %1, align 8, !tbaa !64
  store <2 x ptr> %i.y, ptr %2, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !55
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !65
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load <4 x i32>, ptr %i.ag, align 8, !tbaa !51
  store <4 x i32> %i.ah, ptr %i.v, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !54
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !59
  store i64 %i.al, ptr %i.x, align 8, !tbaa !59
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.a, %_ZN4ncnn3Mat7releaseEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load i32, ptr %i.am, align 8, !tbaa !28
  %cond = icmp eq i32 %i.an, 0
  br i1 %cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !55
  %i.aq = icmp eq i64 %i.ap, 1
  %i.ar = select fast i1 %i.aq, float -1.280000e+02, float f0xFF7FFFFF
  br label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit, %bb.j
  %.083 = phi nsz float [ %i.ar, %bb.j ], [ 0.000000e+00, %_ZN4ncnn3MataSERKS0_.exit ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load i32, ptr %i.as, align 8, !tbaa !42
  switch i32 %i.at, label %bb.r [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.av = load i32, ptr %i.au, align 4, !tbaa !35 ; 2 uses
  %i.aw = extractelement <2 x i32> %i.c, i64 0
  %i.ax = add nsw i32 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !36 ; 2 uses
  %i.ba = add nsw i32 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !29
  %i.bd = sub i32 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bg = srem i32 %i.bd, %i.bf                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not = icmp eq i32 %i.bg, 0
  %i.bn = sub nsw i32 %i.bf, %i.bg
  %spec.select = select i1 %.not, i32 0, i32 %i.bn
  %i.bo = load <4 x i32>, ptr %i.bh, align 4, !tbaa !51 ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 8, !tbaa !40
  %i.bq = load i32, ptr %i.bl, align 4, !tbaa !39
  %i.br = load i32, ptr %i.bi, align 8, !tbaa !38
  %i.bs = load i32, ptr %i.bh, align 4, !tbaa !37
  %i.bt = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.bu = shufflevector <2 x i32> %i.c, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bv = insertelement <2 x i32> %i.bu, i32 %.fr91, i64 1
  %i.bw = add nsw <2 x i32> %i.bt, %i.bv
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.by = add nsw <2 x i32> %i.bw, %i.bx
  %i.bz = load <2 x i32>, ptr %i.bj, align 8, !tbaa !51
  %i.ca = sub <2 x i32> %i.by, %i.bz
  %i.cb = load <2 x i32>, ptr %i.bk, align 4, !tbaa !51 ; 2 uses
  %i.cc = srem <2 x i32> %i.ca, %i.cb             ; 2 uses
  %i.cd = sub nsw <2 x i32> %i.cb, %i.cc
  %i.ce = icmp eq <2 x i32> %i.cc, zeroinitializer
  %i.cf = select <2 x i1> %i.ce, <2 x i32> zeroinitializer, <2 x i32> %i.cd ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !69
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !126
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !57
  %i.cj = extractelement <2 x i32> %i.cf, i64 0
  %i.ck = add nsw i32 %i.cj, %i.br
  %i.cl = add nsw i32 %spec.select, %i.az
  %i.cm = extractelement <2 x i32> %i.cf, i64 1
  %i.cn = add nsw i32 %i.cm, %i.bp
  call void @_ZN4ncnn19copy_make_border_3dERKNS_3MatERS0_iiiiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bs, i32 noundef %i.ck, i32 noundef %i.av, i32 noundef %i.cl, i32 noundef %i.bq, i32 noundef %i.cn, i32 noundef 0, float noundef nofpclass(nan inf) %.083, ptr noundef nonnull align 8 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !69
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !126
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !57
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !37
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !38
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !39
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !40
  call void @_ZN4ncnn19copy_make_border_3dERKNS_3MatERS0_iiiiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.cs, i32 noundef %i.cu, i32 noundef %i.cw, i32 noundef %i.cy, i32 noundef %i.da, i32 noundef %i.dc, i32 noundef 0, float noundef nofpclass(nan inf) %.083, ptr noundef nonnull align 8 dereferenceable(64) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.de = add nsw <2 x i32> %i.c, splat (i32 -1)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !31
  %i.di = add nsw i32 %.fr91, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !34
  %i.dl = srem i32 %i.di, %i.dk
  %i.dm = xor i32 %i.dl, -1
  %i.dn = add i32 %i.dh, %i.dm                    ; 3 uses
  %i.do = load <2 x i32>, ptr %i.dd, align 4, !tbaa !51
  %i.dp = load <2 x i32>, ptr %i.df, align 8, !tbaa !51
  %i.dq = srem <2 x i32> %i.de, %i.dp
  %i.dr = xor <2 x i32> %i.dq, splat (i32 -1)
  %i.ds = add <2 x i32> %i.do, %i.dr              ; 3 uses
  %8 = icmp sgt <2 x i32> %i.ds, zeroinitializer  ; 2 uses
  %9 = extractelement <2 x i1> %8, i64 0
  %10 = extractelement <2 x i1> %8, i64 1
  %or.cond = select i1 %9, i1 true, i1 %10
  %i.dt = icmp sgt i32 %i.dn, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.dt
  br i1 %or.cond3, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !69
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !126
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !57
  %i.dx = extractelement <2 x i32> %i.ds, i64 1   ; 2 uses
  %i.dy = sdiv i32 %i.dx, 2                       ; 2 uses
  %i.dz = sub nsw i32 %i.dx, %i.dy
  %i.ea = extractelement <2 x i32> %i.ds, i64 0   ; 2 uses
  %i.eb = sdiv i32 %i.ea, 2                       ; 2 uses
  %i.ec = sub nsw i32 %i.ea, %i.eb
  %i.ed = sdiv i32 %i.dn, 2                       ; 2 uses
  %i.ee = sub nsw i32 %i.dn, %i.ed
  call void @_ZN4ncnn19copy_make_border_3dERKNS_3MatERS0_iiiiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.dy, i32 noundef %i.dz, i32 noundef %i.eb, i32 noundef %i.ec, i32 noundef %i.ed, i32 noundef %i.ee, i32 noundef 0, float noundef nofpclass(nan inf) %.083, ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !31
  %i.ej = add i32 %.fr91, -1
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !34
  %i.em = srem i32 %i.ej, %i.el
  %i.en = xor i32 %i.em, -1
  %i.eo = add i32 %i.ei, %i.en                    ; 3 uses
  %i.ep = load <2 x i32>, ptr %i.ef, align 4, !tbaa !51
  %i.eq = add <2 x i32> %i.c, splat (i32 -1)
  %i.er = load <2 x i32>, ptr %i.eg, align 8, !tbaa !51
  %i.es = srem <2 x i32> %i.eq, %i.er
  %i.et = xor <2 x i32> %i.es, splat (i32 -1)
  %i.eu = add <2 x i32> %i.ep, %i.et              ; 3 uses
  %11 = icmp sgt <2 x i32> %i.eu, zeroinitializer ; 2 uses
  %12 = extractelement <2 x i1> %11, i64 0
  %13 = extractelement <2 x i1> %11, i64 1
  %or.cond5 = select i1 %12, i1 true, i1 %13
  %i.ev = icmp sgt i32 %i.eo, 0
  %or.cond7 = select i1 %or.cond5, i1 true, i1 %i.ev
  br i1 %or.cond7, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !69
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !126
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !57
  %i.ez = extractelement <2 x i32> %i.eu, i64 1   ; 2 uses
  %i.fa = sdiv i32 %i.ez, 2                       ; 2 uses
  %i.fb = sub nsw i32 %i.ez, %i.fa
  %i.fc = extractelement <2 x i32> %i.eu, i64 0   ; 2 uses
  %i.fd = sdiv i32 %i.fc, 2                       ; 2 uses
  %i.fe = sub nsw i32 %i.fc, %i.fd
  %i.ff = sdiv i32 %i.eo, 2                       ; 2 uses
  %i.fg = sub nsw i32 %i.eo, %i.ff
  call void @_ZN4ncnn19copy_make_border_3dERKNS_3MatERS0_iiiiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.fb, i32 noundef %i.fa, i32 noundef %i.fe, i32 noundef %i.fd, i32 noundef %i.ff, i32 noundef %i.fg, i32 noundef 0, float noundef nofpclass(nan inf) %.083, ptr noundef nonnull align 8 dereferenceable(64) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.k, %bb.o, %bb.n, %bb.m, %bb.l
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !51     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.h = load i32, ptr %0, align 4, !tbaa !51     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !51
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !51
  %i.k = load i32, ptr %i.a, align 4, !tbaa !51   ; 3 uses
  %.not126 = icmp sgt i32 %i.k, %i.j
  br i1 %.not126, label %._crit_edge.split131, label %.noexc46.lr.ph

.noexc46.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50, !noalias !142
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !52, !noalias !142
  %i.p = load ptr, ptr %3, align 8, !tbaa !58, !noalias !142 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !59, !noalias !142 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !55, !noalias !142 ; 6 uses
  %factor.op.mul128 = mul i64 %i.r, %i.t          ; 2 uses
  %i.u = sext i32 %i.m to i64                     ; 4 uses
  %i.v = sext i32 %i.o to i64                     ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !58, !noalias !143 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !59, !noalias !143
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !55, !noalias !143
  %factor.op.mul129 = mul i64 %i.y, %i.aa         ; 2 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !51    ; 3 uses
  %factor.op.mul = mul i64 %i.t, %i.v
  %i.ac = icmp sgt i32 %i.ab, 0
  %factor.op.mul105.reass = mul i64 %factor.op.mul, %i.u ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 228
  %i.af = mul i64 %i.t, %i.u                      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 224
  br i1 %i.ac, label %.noexc46.lr.ph.split, label %._crit_edge.split131

.noexc46.lr.ph.split:                             ; preds = %.noexc46.lr.ph
  %i.ah = load i32, ptr %6, align 4, !tbaa !51    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.noexc46.lr.ph.split.split, label %._crit_edge.split131

.noexc46.lr.ph.split.split:                       ; preds = %.noexc46.lr.ph.split
  %i.aj = load i32, ptr %7, align 4, !tbaa !51    ; 5 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = sext i32 %i.aj to i64                   ; 3 uses
  br i1 %i.ak, label %.noexc46.lr.ph.split.split.split.us, label %._crit_edge.split131

.noexc46.lr.ph.split.split.split.us:              ; preds = %.noexc46.lr.ph.split.split
  %i.am = load i32, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !33 ; 2 uses
  %i.ao = load i32, ptr %i.ag, align 8, !tbaa !32 ; 3 uses
  %i.ap = load i32, ptr %9, align 4, !tbaa !51    ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.noexc46.lr.ph.split.split.split.us.split.us, label %.noexc46.us.preheader

.noexc46.us.preheader:                            ; preds = %.noexc46.lr.ph.split.split.split.us
  %i.ar = sext i32 %i.ao to i64                   ; 5 uses
  %i.as = sext i32 %i.an to i64                   ; 2 uses
  %i.at = sext i32 %i.am to i64                   ; 2 uses
  %i.au = sext i32 %i.k to i64                    ; 2 uses
  %i.av = add nsw i32 %i.j, 1
  %wide.trip.count153 = zext nneg i32 %i.ab to i64
  %factor.op.mul193 = mul i64 %factor.op.mul105.reass, %i.at
  %wide.trip.count148 = zext nneg i32 %i.ah to i64 ; 2 uses
  %factor.op.mul192 = mul i64 %i.af, %i.as        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64   ; 7 uses
  %i.aw = add nsw i64 %wide.trip.count148, -1     ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.as
  %i.ay = mul i64 %i.ax, %i.u
  %i.az = mul i64 %i.r, %i.au
  %i.ba = add i64 %i.ay, %i.az
  %i.bb = mul i64 %i.t, %i.ba
  %i.bc = shl nuw nsw i64 %wide.trip.count, 2
  %i.bd = mul i64 %i.r, %i.t
  %i.be = mul i64 %i.t, %i.at
  %i.bf = mul i64 %i.be, %i.v
  %i.bg = mul i64 %i.bf, %i.u
  %i.bh = mul nsw i64 %i.aw, %i.al
  %i.bi = add i64 %i.bh, %wide.trip.count
  %i.bj = shl i64 %i.bi, 2
  %i.bk = getelementptr i8, ptr %i.p, i64 %i.bb
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bc
  %min.iters.check = icmp ugt i32 %i.aj, 7
  %ident.check.not = icmp eq i32 %i.ao, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %stride.check = icmp slt i64 %factor.op.mul192, 0
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc46.us

.noexc46.lr.ph.split.split.split.us.split.us:     ; preds = %.noexc46.lr.ph.split.split.split.us
  %i.bm = load ptr, ptr %10, align 8, !tbaa !70   ; 5 uses
  %i.bn = sext i32 %i.ao to i64
  %i.bo = sext i32 %i.an to i64
  %i.bp = sext i32 %i.am to i64
  %i.bq = sext i32 %i.k to i64
  %i.br = add nsw i32 %i.j, 1
  %wide.trip.count177 = zext nneg i32 %i.ab to i64
  %factor.op.mul197 = mul i64 %factor.op.mul105.reass, %i.bp
  %wide.trip.count172 = zext nneg i32 %i.ah to i64
  %factor.op.mul195 = mul i64 %i.af, %i.bo
  %wide.trip.count167 = zext nneg i32 %i.aj to i64
  %wide.trip.count162 = zext nneg i32 %i.ap to i64 ; 2 uses
  %xtraiter206 = and i64 %wide.trip.count162, 3   ; 3 uses
  %i.bs = icmp ult i32 %i.ap, 4
  %unroll_iter = and i64 %wide.trip.count162, 2147483644
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  %lcmp.mod209 = icmp ne i64 %xtraiter206, 0
  br label %.noexc46.us.us

.noexc46.us.us:                                   ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us.us.us, %.noexc46.lr.ph.split.split.split.us.split.us
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us.us.us ], [ %i.bq, %.noexc46.lr.ph.split.split.split.us.split.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul128, %indvars.iv179
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass.us.us
  %.reass130.us.us = mul i64 %factor.op.mul129, %indvars.iv179
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass130.us.us
  br label %.preheader99.us.us.us.us

.preheader99.us.us.us.us:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc46.us.us
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %._crit_edge.split.us.split.us.us.us.us.us ], [ 0, %.noexc46.us.us ] ; 2 uses
  %.041115.us.us.us.us = phi ptr [ %i.dd, %._crit_edge.split.us.split.us.us.us.us.us ], [ %i.bu, %.noexc46.us.us ]
  %.reass198 = mul i64 %indvars.iv174, %factor.op.mul197
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.reass198
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge103.split.us.us.us.us.us.us.us, %.preheader99.us.us.us.us
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %._crit_edge103.split.us.us.us.us.us.us.us ], [ 0, %.preheader99.us.us.us.us ] ; 2 uses
  %.1106.us.us.us.us.us.us = phi ptr [ %i.dd, %._crit_edge103.split.us.us.us.us.us.us.us ], [ %.041115.us.us.us.us, %.preheader99.us.us.us.us ] ; 2 uses
  %.reass196 = mul i64 %indvars.iv169, %factor.op.mul195
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.reass196
  br label %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us

_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us:     ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %._crit_edge.us.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us.us ] ; 3 uses
  %i.bx = mul nsw i64 %indvars.iv164, %i.bn
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bx ; 6 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !75 ; 2 uses
  br i1 %i.bs, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new

_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new: ; preds = %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new
  %indvars.iv159 = phi i64 [ %indvars.iv.next160.3, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us ] ; 5 uses
  %.098100.us.us.us.us.us.us.us = phi float [ %.sroa.speculated.us.us.us.us.us.us.us.3, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new ], [ %i.bz, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit44.us.us.us.us.us.us.us ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv159
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !51
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !75
  %.sroa.speculated.us.us.us.us.us.us.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.098100.us.us.us.us.us.us.us, float %i.ce)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv159
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !51
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !75
  %.sroa.speculated.us.us.us.us.us.us.us.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us.us.us.us.us, float %i.ck)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv159
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !51
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !75
  %.sroa.speculated.us.us.us.us.us.us.us.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us.us.us.us.us.1, float %i.cq)
end_hunk_0
