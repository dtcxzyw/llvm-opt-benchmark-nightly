Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise?download=true
inline.NumInlined: 58
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnnL20convolutiondepthwiseERKNS_3MatERS0_S2_S2_iiiiiiiiS2_RKNS_6OptionE.omp_outlined.1:bb.a
  %i.fb = fmul fast float %i.fa, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %._crit_edge, %bb.m
  %.1119 = phi nsz float [ %.1.lcssa, %._crit_edge ], [ %i.dv, %bb.g ], [ %i.ea, %bb.h ], [ %i.ee, %bb.j ], [ %.0118, %bb.i ], [ %i.ej, %bb.k ], [ %i.eo, %bb.l ], [ %i.fb, %bb.o ], [ %.1.lcssa, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.078131, i64 %indvars.iv150
  store float %.1119, ptr %i.fc, align 4, !tbaa !62
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge130, label %bb.c, !llvm.loop !137

._crit_edge136.split:                             ; preds = %._crit_edge133, %_ZN4ncnn3MatD2Ev.exit82.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge136.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #14

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4ncnn20ConvolutionDepthWise12make_paddingERKNS_3MatERS1_iiRKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %8 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.c = add nsw i32 %3, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load <2 x i32>, ptr %i.a, align 4, !tbaa !58
  %i.f = freeze <2 x i32> %i.e                    ; 2 uses
  %i.g = load i32, ptr %i.b, align 4, !tbaa !41
  %i.h = mul nsw i32 %i.g, %i.c                   ; 2 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !42
  %i.j = add nsw i32 %4, -1
  %i.k = mul nsw i32 %i.i, %i.j                   ; 2 uses
  %i.l = icmp eq ptr %2, %1
  br i1 %i.l, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = atomicrmw add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.q, i32 -1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.f, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %2, align 8, !tbaa !20     ; 3 uses
  br i1 %.not3.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.v), !inline_history !140
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.h:                                             ; preds = %bb.f
  %.not.i18.i = icmp eq ptr %i.v, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.v) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.h, %bb.i, %bb.g, %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false)
  %i.ae = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.ae, ptr %2, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !56
  store i64 %i.ag, ptr %i.z, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !57
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load <4 x i32>, ptr %i.am, align 8, !tbaa !58
  store <4 x i32> %i.an, ptr %i.ab, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !59
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21
  store i64 %i.ar, ptr %i.ad, align 8, !tbaa !21
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.a, %_ZN4ncnn3Mat7releaseEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.at = load i32, ptr %i.as, align 4, !tbaa !45 ; 4 uses
  %i.au = icmp sgt i32 %i.at, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !46 ; 4 uses
  %i.av = icmp sgt i32 %.pre, 0
  %or.cond69 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond69, label %_ZN4ncnn3MataSERKS0_.exit._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %_ZN4ncnn3MataSERKS0_.exit._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !48 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4ncnn3MataSERKS0_.exit._crit_edge, label %bb.l

_ZN4ncnn3MataSERKS0_.exit._crit_edge:             ; preds = %_ZN4ncnn3MataSERKS0_.exit, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !76
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !77
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !68
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !49
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bg, i32 noundef %i.bi, i32 noundef %i.at, i32 noundef %.pre, i32 noundef 0, float noundef nofpclass(nan inf) %i.bk, ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp eq i32 %i.at, -233
  %i.bm = icmp eq i32 %.pre, -233
  %or.cond54 = and i1 %i.bl, %i.bm
  %i.bn = icmp eq i32 %i.ax, -233
  %or.cond55 = and i1 %or.cond54, %i.bn
  %i.bo = icmp eq i32 %i.ba, -233
  %or.cond56 = and i1 %or.cond55, %i.bo
  br i1 %or.cond56, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bp = add nsw <2 x i32> %i.f, splat (i32 -1)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.br = load <2 x i32>, ptr %i.bq, align 4, !tbaa !58
  %i.bs = srem <2 x i32> %i.bp, %i.br
  %i.bt = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.bu = insertelement <2 x i32> %i.bt, i32 %i.k, i64 1
  %i.bv = sub <2 x i32> %i.bu, %i.bs
  %.fr70 = freeze <2 x i32> %i.bv                 ; 3 uses
  %9 = icmp sgt <2 x i32> %.fr70, zeroinitializer
  %10 = bitcast <2 x i1> %9 to i2
  %or.cond.not = icmp eq i2 %10, 0
  br i1 %or.cond.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !76
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !77
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !68
  %i.bz = sdiv <2 x i32> %.fr70, splat (i32 2)    ; 3 uses
  %i.ca = sub nsw <2 x i32> %.fr70, %i.bz         ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !49
  %i.cd = extractelement <2 x i32> %i.ca, i64 0
  %i.ce = extractelement <2 x i32> %i.ca, i64 1
  %i.cf = extractelement <2 x i32> %i.bz, i64 0
  %i.cg = extractelement <2 x i32> %i.bz, i64 1
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.cg, i32 noundef %i.ce, i32 noundef %i.cf, i32 noundef %i.cd, i32 noundef 0, float noundef nofpclass(nan inf) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.ch = icmp eq i32 %i.at, -234
  %i.ci = icmp eq i32 %.pre, -234
  %or.cond57 = and i1 %i.ch, %i.ci
  %i.cj = icmp eq i32 %i.ax, -234
  %or.cond58 = and i1 %or.cond57, %i.cj
  %i.ck = icmp eq i32 %i.ba, -234
  %or.cond59 = and i1 %or.cond58, %i.ck
  br i1 %or.cond59, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.cm = add <2 x i32> %i.f, splat (i32 -1)
  %i.cn = load <2 x i32>, ptr %i.cl, align 4, !tbaa !58
  %i.co = srem <2 x i32> %i.cm, %i.cn
  %i.cp = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.cq = insertelement <2 x i32> %i.cp, i32 %i.k, i64 1
  %i.cr = sub <2 x i32> %i.cq, %i.co
  %.fr = freeze <2 x i32> %i.cr                   ; 3 uses
  %11 = icmp sgt <2 x i32> %.fr, zeroinitializer
  %12 = bitcast <2 x i1> %11 to i2
  %or.cond3.not = icmp eq i2 %12, 0
  br i1 %or.cond3.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !76
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !77
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !68
  %i.cv = sdiv <2 x i32> %.fr, splat (i32 2)      ; 3 uses
  %i.cw = sub nsw <2 x i32> %.fr, %i.cv           ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !49
  %i.cz = extractelement <2 x i32> %i.cw, i64 0
  %i.da = extractelement <2 x i32> %i.cw, i64 1
  %i.db = extractelement <2 x i32> %i.cv, i64 0
  %i.dc = extractelement <2 x i32> %i.cv, i64 1
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.da, i32 noundef %i.dc, i32 noundef %i.cz, i32 noundef %i.db, i32 noundef 0, float noundef nofpclass(nan inf) %i.cy, ptr noundef nonnull align 8 dereferenceable(64) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.o, %_ZN4ncnn3MataSERKS0_.exit._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn20ConvolutionDepthWise12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %9) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.h, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.i = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !58
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !58
  %i.l = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not109 = icmp sgt i32 %i.l, %i.k
  br i1 %.not109, label %._crit_edge111, label %_ZN4ncnn3MatD2Ev.exit61.lr.ph

_ZN4ncnn3MatD2Ev.exit61.lr.ph:                    ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ab = load i32, ptr %6, align 4, !tbaa !58    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit61.preheader, label %._crit_edge111

_ZN4ncnn3MatD2Ev.exit61.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit61.lr.ph
  %i.ad = sext i32 %i.l to i64
  br label %_ZN4ncnn3MatD2Ev.exit61

_ZN4ncnn3MatD2Ev.exit61:                          ; preds = %_ZN4ncnn3MatD2Ev.exit61.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.ae = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit61.preheader ], [ %i.bi, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.af = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit61.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ag = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit61.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv115 = phi i64 [ %i.ad, %_ZN4ncnn3MatD2Ev.exit61.preheader ], [ %indvars.iv.next116, %_ZN4ncnn3MatD2Ev.exit ] ; 9 uses
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.ai = load i32, ptr %4, align 4, !tbaa !58
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %indvars.iv115, %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak ; 5 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !20, !noalias !150
  %i.an = load i64, ptr %i.q, align 8, !tbaa !21, !noalias !150
  %i.ao = mul i64 %i.an, %indvars.iv115
  %i.ap = load i64, ptr %i.r, align 8, !tbaa !56, !noalias !150 ; 2 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  %i.as = icmp sgt i32 %i.ag, 0
  br i1 %i.as, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit61
  %i.at = load i32, ptr %i.p, align 4, !tbaa !69, !noalias !150
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.ap, %i.au
  %i.aw = load i32, ptr %7, align 4, !tbaa !58    ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ay = load ptr, ptr %3, align 8, !tbaa !20, !noalias !151
  %i.az = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !151
  %i.ba = mul i64 %i.az, %indvars.iv115
  %i.bb = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !151
  %i.bc = mul i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bc
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge105
  %i.be = phi i32 [ %i.bm, %._crit_edge105 ], [ %i.af, %.preheader.preheader ]
  %i.bf = phi i32 [ %i.bn, %._crit_edge105 ], [ %i.aw, %.preheader.preheader ] ; 2 uses
  %i.bg = phi i32 [ %i.bo, %._crit_edge105 ], [ %i.aw, %.preheader.preheader ] ; 2 uses
  %.058108 = phi i32 [ %i.bp, %._crit_edge105 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.059107 = phi ptr [ %.1.lcssa, %._crit_edge105 ], [ %i.bd, %.preheader.preheader ] ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph104, label %._crit_edge105

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge105
  %.pre119 = load i32, ptr %i.b, align 4, !tbaa !58
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZN4ncnn3MatD2Ev.exit61
  %i.bi = phi i32 [ %i.ae, %_ZN4ncnn3MatD2Ev.exit61 ], [ %.pre119, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ae, %.preheader.lr.ph ] ; 2 uses
  %i.bj = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit61 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.af, %.preheader.lr.ph ]
  %i.bk = phi i32 [ %i.ag, %_ZN4ncnn3MatD2Ev.exit61 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ag, %.preheader.lr.ph ]
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, 1
  %i.bl = sext i32 %i.bi to i64
  %.not.not = icmp slt i64 %indvars.iv115, %i.bl
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit61, label %._crit_edge111, !llvm.loop !145

._crit_edge105.loopexit:                          ; preds = %bb.t
  %.pre118 = load i32, ptr %6, align 4, !tbaa !58
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge105.loopexit, %.preheader
  %i.bm = phi i32 [ %i.be, %.preheader ], [ %.pre118, %._crit_edge105.loopexit ] ; 4 uses
  %i.bn = phi i32 [ %i.bf, %.preheader ], [ %i.gp, %._crit_edge105.loopexit ]
  %i.bo = phi i32 [ %i.bg, %.preheader ], [ %i.gp, %._crit_edge105.loopexit ]
  %.1.lcssa = phi ptr [ %.059107, %.preheader ], [ %.2, %._crit_edge105.loopexit ]
  %i.bp = add nuw nsw i32 %.058108, 1             ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.bm
  br i1 %i.bq, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !146

.lr.ph104:                                        ; preds = %.preheader, %bb.t
  %i.br = phi i32 [ %i.gp, %bb.t ], [ %i.bf, %.preheader ]
  %.057103 = phi i32 [ %i.gq, %bb.t ], [ 0, %.preheader ] ; 2 uses
  %.1102 = phi ptr [ %.2, %bb.t ], [ %.059107, %.preheader ] ; 4 uses
  %i.bs = load i32, ptr %i.s, align 8, !tbaa !44
  %i.bt = mul nsw i32 %i.bs, %.058108
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.av, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bv
  %i.bx = load i32, ptr %i.t, align 4, !tbaa !43
  %i.by = mul nsw i32 %i.bx, %.057103
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz ; 5 uses
  %i.cb = load i32, ptr %4, align 4, !tbaa !58    ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph104
  %i.cd = load ptr, ptr %8, align 8, !tbaa !78    ; 5 uses
  %wide.trip.count = zext nneg i32 %i.cb to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ce = icmp ult i32 %i.cb, 4
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.056100.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.em, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %.056100.epil = phi i32 [ %.056100.epil.init, %.epil.preheader ], [ %i.cp, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.epil
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !58
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.ca, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !75
  %i.ck = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.epil
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !75
  %i.cm = sext i8 %i.cj to i32
  %i.cn = sext i8 %i.cl to i32
  %i.co = mul nsw i32 %i.cn, %i.cm
  %i.cp = add nsw i32 %i.co, %.056100.epil        ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
end_hunk_0
