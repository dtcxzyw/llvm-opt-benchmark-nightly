Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pooling?download=true
inline.NumInlined: 38
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4ncnn7Pooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3:bb.a
  %i.br = fmul fast float %i.bq, %i.at
  %i.bs = fdiv fast float %.us-phi.us, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.054103, i64 %indvars.iv123
  store float %i.bs, ptr %i.bt, align 4, !tbaa !64
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %i.ae
  br i1 %exitcond127.not, label %._crit_edge, label %.preheader.lr.ph.us, !llvm.loop !104

._crit_edge:                                      ; preds = %._crit_edge94.us, %.lr.ph.split.preheader
  %i.bu = getelementptr [4 x i8], ptr %.054103, i64 %i.ac
  %exitcond128.not = icmp eq i32 %i.an, %i.v
  br i1 %exitcond128.not, label %._crit_edge107, label %.lr.ph, !llvm.loop !105

._crit_edge110.split:                             ; preds = %._crit_edge107, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge110.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4ncnn7Pooling12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(268) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %5 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %6 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !46
  %i.c = freeze <2 x i32> %i.b                    ; 3 uses
  %i.d = icmp eq ptr %2, %1
  br i1 %i.d, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %.not.i69 = icmp eq ptr %i.i, null
  br i1 %.not.i69, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = atomicrmw add ptr %i.i, i32 -1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %_ZN4ncnn3Mat7releaseEv.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 3 uses
  %.not3.i = icmp eq ptr %i.m, null
  %i.n = load ptr, ptr %2, align 8, !tbaa !51     ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.n), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.h:                                             ; preds = %bb.f
  %.not.i70 = icmp eq ptr %i.n, null
  br i1 %.not.i70, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.n) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.i, %bb.h, %bb.d, %bb.e, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  %i.w = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store <2 x ptr> %i.w, ptr %2, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !48
  store i64 %i.y, ptr %i.r, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !58
  store i32 %i.aa, ptr %i.s, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load <4 x i32>, ptr %i.ae, align 8, !tbaa !46
  store <4 x i32> %i.af, ptr %i.t, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !47
  store i32 %i.ah, ptr %i.u, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !52
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !52
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.a, %_ZN4ncnn3Mat7releaseEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !28
  %cond = icmp eq i32 %i.al, 0
  br i1 %cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !48
  %i.ao = icmp eq i64 %i.an, 1
  %i.ap = select fast i1 %i.ao, float -1.280000e+02, float f0xFF7FFFFF
  br label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit, %bb.j
  %.061 = phi nsz float [ %i.ap, %bb.j ], [ 0.000000e+00, %_ZN4ncnn3MataSERKS0_.exit ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !38
  switch i32 %i.ar, label %bb.r [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ay = load <4 x i32>, ptr %i.as, align 4, !tbaa !46 ; 2 uses
  %i.az = load i32, ptr %i.ax, align 8, !tbaa !36
  %i.ba = load i32, ptr %i.aw, align 4, !tbaa !35
  %i.bb = load i32, ptr %i.at, align 8, !tbaa !34
  %i.bc = load i32, ptr %i.as, align 4, !tbaa !33
  %i.bd = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.be = add nsw <2 x i32> %i.bd, %i.c
  %i.bf = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bg = add nsw <2 x i32> %i.be, %i.bf
  %i.bh = load <2 x i32>, ptr %i.au, align 4, !tbaa !46
  %i.bi = sub <2 x i32> %i.bg, %i.bh
  %i.bj = load <2 x i32>, ptr %i.av, align 4, !tbaa !46 ; 2 uses
  %i.bk = srem <2 x i32> %i.bi, %i.bj             ; 2 uses
  %i.bl = sub nsw <2 x i32> %i.bj, %i.bk
  %i.bm = icmp eq <2 x i32> %i.bk, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x i32> zeroinitializer, <2 x i32> %i.bl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !111
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !112
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !50
  %i.br = extractelement <2 x i32> %i.bn, i64 1
  %i.bs = add nsw i32 %i.br, %i.az
  %i.bt = extractelement <2 x i32> %i.bn, i64 0
  %i.bu = add nsw i32 %i.bt, %i.bb
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ba, i32 noundef %i.bs, i32 noundef %i.bc, i32 noundef %i.bu, i32 noundef 0, float noundef nofpclass(nan inf) %.061, ptr noundef nonnull align 8 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !111
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !112
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !35
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !36
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !33
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !34
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bz, i32 noundef %i.cb, i32 noundef %i.cd, i32 noundef %i.cf, i32 noundef 0, float noundef nofpclass(nan inf) %.061, ptr noundef nonnull align 8 dereferenceable(64) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ch = add nsw <2 x i32> %i.c, splat (i32 -1)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.cj = load <2 x i32>, ptr %i.cg, align 4, !tbaa !46
  %i.ck = load <2 x i32>, ptr %i.ci, align 4, !tbaa !46
  %i.cl = srem <2 x i32> %i.ch, %i.ck
  %i.cm = xor <2 x i32> %i.cl, splat (i32 -1)
  %i.cn = add <2 x i32> %i.cj, %i.cm              ; 3 uses
  %8 = icmp sgt <2 x i32> %i.cn, zeroinitializer  ; 2 uses
  %9 = extractelement <2 x i1> %8, i64 0
  %10 = extractelement <2 x i1> %8, i64 1
  %or.cond = select i1 %9, i1 true, i1 %10
  br i1 %or.cond, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !111
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !50
  %i.cr = sdiv <2 x i32> %i.cn, splat (i32 2)     ; 3 uses
  %i.cs = sub nsw <2 x i32> %i.cn, %i.cr          ; 2 uses
  %i.ct = extractelement <2 x i32> %i.cs, i64 0
  %i.cu = extractelement <2 x i32> %i.cs, i64 1
  %i.cv = extractelement <2 x i32> %i.cr, i64 0
  %i.cw = extractelement <2 x i32> %i.cr, i64 1
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.cw, i32 noundef %i.cu, i32 noundef %i.cv, i32 noundef %i.ct, i32 noundef 0, float noundef nofpclass(nan inf) %.061, ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.cz = load <2 x i32>, ptr %i.cx, align 4, !tbaa !46
  %i.da = add <2 x i32> %i.c, splat (i32 -1)
  %i.db = load <2 x i32>, ptr %i.cy, align 4, !tbaa !46
  %i.dc = srem <2 x i32> %i.da, %i.db
  %i.dd = xor <2 x i32> %i.dc, splat (i32 -1)
  %i.de = add <2 x i32> %i.cz, %i.dd              ; 3 uses
  %11 = icmp sgt <2 x i32> %i.de, zeroinitializer ; 2 uses
  %12 = extractelement <2 x i1> %11, i64 0
  %13 = extractelement <2 x i1> %11, i64 1
  %or.cond3 = select i1 %12, i1 true, i1 %13
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !111
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !112
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !50
  %i.di = sdiv <2 x i32> %i.de, splat (i32 2)     ; 3 uses
  %i.dj = sub nsw <2 x i32> %i.de, %i.di          ; 2 uses
  %i.dk = extractelement <2 x i32> %i.dj, i64 0
  %i.dl = extractelement <2 x i32> %i.dj, i64 1
  %i.dm = extractelement <2 x i32> %i.di, i64 0
  %i.dn = extractelement <2 x i32> %i.di, i64 1
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.dl, i32 noundef %i.dn, i32 noundef %i.dk, i32 noundef %i.dm, i32 noundef 0, float noundef nofpclass(nan inf) %.061, ptr noundef nonnull align 8 dereferenceable(64) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.k, %bb.o, %bb.n, %bb.m, %bb.l
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Pooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !46     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !46
  %i.h = load i32, ptr %0, align 4, !tbaa !46     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !46
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !46
  %i.k = load i32, ptr %i.a, align 4, !tbaa !46   ; 3 uses
  %.not80 = icmp sgt i32 %i.k, %i.j
  br i1 %.not80, label %._crit_edge.split, label %.noexc40.lr.ph

.noexc40.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45, !noalias !127
  %i.n = load ptr, ptr %3, align 8, !tbaa !51, !noalias !127 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !52, !noalias !127 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48, !noalias !127 ; 4 uses
  %factor.op.mul = mul i64 %i.p, %i.r             ; 2 uses
  %i.s = sext i32 %i.m to i64                     ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !51, !noalias !128 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !52, !noalias !128 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48, !noalias !128 ; 3 uses
  %factor.op.mul82 = mul i64 %i.v, %i.x           ; 2 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !46     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.ab = mul i64 %i.r, %i.s                      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 220
  br i1 %i.z, label %.noexc40.lr.ph.split, label %._crit_edge.split

.noexc40.lr.ph.split:                             ; preds = %.noexc40.lr.ph
  %i.ad = load i32, ptr %6, align 4, !tbaa !46    ; 5 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  br i1 %i.ae, label %.noexc40.lr.ph.split.split, label %._crit_edge.split

.noexc40.lr.ph.split.split:                       ; preds = %.noexc40.lr.ph.split
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  %i.ah = load i32, ptr %i.ac, align 4, !tbaa !31 ; 3 uses
  %i.ai = load i32, ptr %8, align 4, !tbaa !46    ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.noexc40.lr.ph.split.split.split.us, label %.noexc40.preheader

.noexc40.preheader:                               ; preds = %.noexc40.lr.ph.split.split
  %i.ak = sext i32 %i.ah to i64                   ; 5 uses
  %i.al = sext i32 %i.ag to i64                   ; 2 uses
  %i.am = sext i32 %i.k to i64                    ; 3 uses
  %i.an = add nsw i32 %i.j, 1
  %wide.trip.count92 = zext nneg i32 %i.y to i64  ; 2 uses
  %factor.op.mul124 = mul i64 %i.ab, %i.al        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 6 uses
  %i.ao = add nsw i64 %wide.trip.count92, -1      ; 2 uses
  %i.ap = mul nsw i64 %i.ao, %i.al
  %i.aq = mul i64 %i.ap, %i.s
  %i.ar = mul i64 %i.p, %i.am
  %i.as = add i64 %i.aq, %i.ar
  %i.at = mul i64 %i.r, %i.as
  %i.au = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.av = mul i64 %i.p, %i.r
  %i.aw = mul i64 %i.x, %i.v
  %i.ax = mul i64 %i.aw, %i.am
  %i.ay = mul nsw i64 %i.ao, %i.af
  %i.az = shl i64 %i.ay, 2
  %i.ba = mul i64 %i.x, %i.v
  %i.bb = getelementptr i8, ptr %i.n, i64 %i.at
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.au
  %i.bd = getelementptr i8, ptr %i.t, i64 %i.ax
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.az
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.au
  %min.iters.check = icmp ugt i32 %i.ad, 7
  %ident.check.not = icmp eq i32 %i.ah, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %stride.check = icmp slt i64 %factor.op.mul124, 0
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc40

.noexc40.lr.ph.split.split.split.us:              ; preds = %.noexc40.lr.ph.split.split
  %i.bg = load ptr, ptr %9, align 8, !tbaa !59    ; 5 uses
  %i.bh = sext i32 %i.ah to i64
  %i.bi = sext i32 %i.ag to i64
  %i.bj = sext i32 %i.k to i64
  %i.bk = add nsw i32 %i.j, 1
  %wide.trip.count111 = zext nneg i32 %i.y to i64
  %factor.op.mul126 = mul i64 %i.ab, %i.bi
  %wide.trip.count106 = zext nneg i32 %i.ad to i64
  %wide.trip.count101 = zext nneg i32 %i.ai to i64 ; 2 uses
  %xtraiter133 = and i64 %wide.trip.count101, 3   ; 3 uses
  %i.bl = icmp ult i32 %i.ai, 4
  %unroll_iter = and i64 %wide.trip.count101, 2147483644
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  %lcmp.mod136 = icmp ne i64 %xtraiter133, 0
  br label %.noexc40.us

.noexc40.us:                                      ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split79.us.us, %.noexc40.lr.ph.split.split.split.us
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split79.us.us ], [ %i.bj, %.noexc40.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv113
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us
  %.reass83.us = mul i64 %factor.op.mul82, %indvars.iv113
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass83.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge73.split.us.us.us, %.noexc40.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge73.split.us.us.us ], [ 0, %.noexc40.us ] ; 2 uses
  %.03675.us.us = phi ptr [ %i.cv, %._crit_edge73.split.us.us.us ], [ %i.bn, %.noexc40.us ] ; 2 uses
  %.reass127 = mul i64 %indvars.iv108, %factor.op.mul126
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.reass127
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.bp = mul nsw i64 %indvars.iv103, %i.bh
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bp ; 6 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !64 ; 2 uses
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 5 uses
  %.06869.us.us.us = phi float [ %.sroa.speculated.us.us.us.3, %.lr.ph.us.us.us.new ], [ %i.br, %.lr.ph.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv98
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !46
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !64
  %.sroa.speculated.us.us.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.06869.us.us.us, float %i.bw)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv98
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !46
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !64
  %.sroa.speculated.us.us.us.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us, float %i.cc)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv98
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !46
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !64
  %.sroa.speculated.us.us.us.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us.1, float %i.ci)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv98
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !46
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !64
  %.sroa.speculated.us.us.us.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us.2, float %i.co) ; 3 uses
  %indvars.iv.next99.3 = add nuw nsw i64 %indvars.iv98, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !117

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod134.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next99.3, %._crit_edge.us.us.us.unr-lcssa ]
  %.06869.us.us.us.epil.init = phi float [ %i.br, %.lr.ph.us.us.us ], [ %.sroa.speculated.us.us.us.3, %._crit_edge.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod136)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv98.epil = phi i64 [ %indvars.iv.next99.epil, %bb.c ], [ %indvars.iv98.epil.init, %.epil.preheader ] ; 2 uses
end_hunk_0
