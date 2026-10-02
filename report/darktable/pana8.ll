Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/pana8?download=true
inline.NumInlined: 252
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN13pana8_param_t7GetDBitEm:bb.a
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !39
  %i.ag = and i64 %i.af, %1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !39
  %i.am = and i64 %i.al, %1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39
  %i.as = and i64 %i.ar, %1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.au = load i64, ptr %i.at, align 8, !tbaa !39
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !39
  %i.ay = and i64 %i.ax, %1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !39
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !39
  %i.be = and i64 %i.bd, %1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !39
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !39
  %i.bk = and i64 %i.bj, %1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !39
  %i.bq = and i64 %i.bp, %1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !39
  %i.bt = icmp eq i64 %i.bq, %i.bs
  br i1 %i.bt, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !39
  %i.bw = and i64 %i.bv, %1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !39
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !39
  %i.cc = and i64 %i.cb, %1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !39
  %i.cf = icmp eq i64 %i.cc, %i.ce
  br i1 %i.cf, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !39
  %i.ci = and i64 %i.ch, %1
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !39
  %i.cl = icmp eq i64 %i.ci, %i.ck
  br i1 %i.cl, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !39
  %i.co = and i64 %i.cn, %1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !39
  %i.cr = icmp eq i64 %i.co, %i.cq
  br i1 %i.cr, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.cu = and i64 %i.ct, %1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !39
  %i.cx = icmp eq i64 %i.cu, %i.cw
  %i.cy = zext i1 %i.cx to i32
  %i.cz = xor i32 %i.cy, 17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.1 = phi i32 [ %i.cz, %bb.q ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 13, %bb.n ], [ 14, %bb.o ], [ 15, %bb.p ]
  ret i32 %.1
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN13pana8_param_tC2ERK12pana8_tags_t(ptr noundef nonnull align 8 dereferenceable(480) initializes((0, 156), (160, 480)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %2 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(148) %0, i8 0, i64 148, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.h, i8 0, i64 320, i1 false)
  store i32 1, ptr %i.j, align 8, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i16, ptr %i.k, align 8, !tbaa !103
  %i.m = zext i16 %i.l to i32
  store i32 %i.m, ptr %i.d, align 8, !tbaa !105
  %i.n = load i32, ptr %1, align 8, !tbaa !105
  store i32 %i.n, ptr %i.e, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.p = load i16, ptr %i.o, align 2, !tbaa !103
  %i.q = zext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.q, ptr %i.r, align 4, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !105
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.t, ptr %i.u, align 4, !tbaa !105
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i16, ptr %i.v, align 4, !tbaa !103
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.x, ptr %i.y, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !105
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !105
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !103
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !103
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.al, ptr %i.am, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !105
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !103
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.as, ptr %i.at, align 4, !tbaa !105
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !105
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !105
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !169
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  store i32 %i.az, ptr %i.c, align 8, !tbaa !123
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !119
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !103
  %i.bd = zext i16 %i.bc to i32
  store i32 %i.bd, ptr %i.f, align 4, !tbaa !105
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 114
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 46
  %4 = load i16, ptr %i.bg, align 2, !tbaa !103
  %5 = zext i16 %4 to i32
  %i.bh = load i16, ptr %3, align 2, !tbaa !103
  %6 = zext i16 %i.bh to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load <4 x i16>, ptr %i.bi, align 4, !tbaa !103
  %7 = insertelement <8 x i32> <i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, i32 %5, i64 3
  %i.bl = shufflevector <4 x i16> %i.bk, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = zext <8 x i16> %i.bl to <8 x i32>
  %9 = shufflevector <8 x i32> %7, <8 x i32> %8, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bm = shl <8 x i32> %9, <i32 0, i32 0, i32 0, i32 24, i32 24, i32 24, i32 24, i32 24>
  %i.bn = load <4 x i16>, ptr %i.bj, align 8, !tbaa !103
  %10 = insertelement <8 x i32> <i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, i32 %6, i64 3
  %i.bo = shufflevector <4 x i16> %i.bn, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = zext <8 x i16> %i.bo to <8 x i32>
  %12 = shufflevector <8 x i32> %10, <8 x i32> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bp = shl nuw <8 x i32> %12, <i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.bq = or <8 x i32> %i.bp, %i.bm
  %i.br = tail call <25 x i16> @llvm.masked.load.v25i16.p0(ptr nonnull align 8 %i.be, <25 x i1> <i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true, i1 true>, <25 x i16> poison), !tbaa !103
  %i.bs = shufflevector <25 x i16> %i.br, <25 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.bt = zext <8 x i16> %i.bs to <8 x i32>
  %i.bu = or disjoint <8 x i32> %i.bq, %i.bt
  store <8 x i32> %i.bu, ptr %i.bf, align 8, !tbaa !105
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = load <8 x i16>, ptr %i.bv, align 4, !tbaa !103
  %i.ca = zext <8 x i16> %i.bz to <8 x i32>
  %i.cb = shl <8 x i32> %i.ca, splat (i32 24)
  %i.cc = load <8 x i16>, ptr %i.bw, align 8, !tbaa !103
  %i.cd = zext <8 x i16> %i.cc to <8 x i32>
  %i.ce = shl nuw <8 x i32> %i.cd, splat (i32 16)
  %i.cf = or <8 x i32> %i.ce, %i.cb
  %i.cg = load <8 x i16>, ptr %i.bx, align 2, !tbaa !103
  %i.ch = zext <8 x i16> %i.cg to <8 x i32>
  %i.ci = or disjoint <8 x i32> %i.cf, %i.ch
  store <8 x i32> %i.ci, ptr %i.by, align 8, !tbaa !105
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cn = load <4 x i16>, ptr %i.cj, align 4, !tbaa !103
  %i.co = zext <4 x i16> %i.cn to <4 x i32>
  %i.cp = shl <4 x i32> %i.co, splat (i32 24)
  %i.cq = load <4 x i16>, ptr %i.ck, align 8, !tbaa !103
  %i.cr = zext <4 x i16> %i.cq to <4 x i32>
  %i.cs = shl nuw <4 x i32> %i.cr, splat (i32 16)
  %i.ct = or <4 x i32> %i.cs, %i.cp
  %i.cu = load <4 x i16>, ptr %i.cl, align 2, !tbaa !103
  %i.cv = zext <4 x i16> %i.cu to <4 x i32>
  %i.cw = or disjoint <4 x i32> %i.ct, %i.cv
  store <4 x i32> %i.cw, ptr %i.cm, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.cx = invoke noalias noundef nonnull dereferenceable(131072) ptr @_Znwm(i64 noundef 131072) #16
          to label %bb.a unwind label %bb.c       ; 4 uses

bb.a:                                             ; preds = %.preheader
  store ptr %i.cx, ptr %2, align 8, !tbaa !110
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 131072 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !111
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.cx, i8 0, i64 131072, i1 false)
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !121
  br label %bb.d

bb.b:                                             ; preds = %bb.f
  %i.db = load i32, ptr %i.j, align 8, !tbaa !122
  %.not = icmp eq i32 %i.db, 0
  br i1 %.not, label %bb.g, label %.preheader124

.preheader124:                                    ; preds = %bb.g, %bb.b
  br label %bb.j

bb.c:                                             ; preds = %.preheader
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit89

bb.d:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv to i32
  %i.de = tail call noundef i32 @_ZN13pana8_param_t10gammaCurveEj(ptr noundef nonnull align 8 dereferenceable(480) %0, i32 noundef %i.dd) ; 2 uses
  %i.df = trunc i32 %i.de to i16
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !103
  %i.dh = zext i32 %i.de to i64
  %.not87 = icmp eq i64 %indvars.iv, %i.dh
  br i1 %.not87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !122
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !165

bb.g:                                             ; preds = %bb.b
  %i.di = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.preheader124 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.i:                                             ; preds = %bb.p
  %i.dk = icmp samesign ult i32 %spec.select, 17
  br i1 %i.dk, label %bb.q, label %.loopexit

bb.j:                                             ; preds = %.preheader124, %bb.p
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %bb.p ], [ 0, %.preheader124 ] ; 4 uses
  %.068101 = phi i32 [ %spec.select, %bb.p ], [ 0, %.preheader124 ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv110
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !105 ; 3 uses
  %i.dn = lshr i32 %i.dm, 16                      ; 2 uses
  %i.do = and i32 %i.dn, 31                       ; 4 uses
  %i.dp = and i32 %i.dm, 2031616
  %.not84 = icmp eq i32 %i.dp, 0
  br i1 %.not84, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dq = and i32 %i.dn, 7                        ; 8 uses
  %i.dr = add nsw i32 %i.do, -8
  %i.ds = icmp ult i32 %i.dr, -7
  br i1 %i.ds, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.dt = sub nsw i32 %i.dq, %i.do
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.066 = phi i32 [ 0, %bb.l ], [ %i.dv, %bb.m ]
  %.064 = phi i32 [ %i.dt, %bb.l ], [ %i.dw, %bb.m ]
  %sext = shl i32 %.066, 16
  %i.du = ashr exact i32 %sext, 8
  %i.dv = or disjoint i32 %i.du, 255              ; 2 uses
  %i.dw = add i32 %.064, 8                        ; 2 uses
  %.not85 = icmp eq i32 %i.dw, 0
  br i1 %.not85, label %bb.n, label %bb.m, !llvm.loop !166

bb.n:                                             ; preds = %bb.m
  %i.dx = trunc i32 %i.dv to i16
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %.1 = phi i16 [ %i.dx, %bb.n ], [ 0, %bb.k ]    ; 2 uses
  %.not8698 = icmp eq i32 %i.dq, 0
  br i1 %.not8698, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.dy = shl i16 %.1, 1
  %i.dz = or disjoint i16 %i.dy, 1                ; 2 uses
  %.not86 = icmp eq i32 %i.dq, 1
  br i1 %.not86, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ea = shl i16 %i.dz, 1
  %i.eb = or disjoint i16 %i.ea, 1                ; 2 uses
  %.not86.1 = icmp eq i32 %i.dq, 2
  br i1 %.not86.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ec = shl i16 %i.eb, 1
  %i.ed = or disjoint i16 %i.ec, 1                ; 2 uses
  %.not86.2 = icmp eq i32 %i.dq, 3
  br i1 %.not86.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ee = shl i16 %i.ed, 1
  %i.ef = or disjoint i16 %i.ee, 1                ; 2 uses
  %.not86.3 = icmp eq i32 %i.dq, 4
  br i1 %.not86.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.eg = shl i16 %i.ef, 1
  %i.eh = or disjoint i16 %i.eg, 1                ; 2 uses
  %.not86.4 = icmp eq i32 %i.dq, 5
  br i1 %.not86.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.ei = shl i16 %i.eh, 1
  %i.ej = or disjoint i16 %i.ei, 1                ; 2 uses
  %.not86.5 = icmp eq i32 %i.dq, 6
  br i1 %.not86.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.ek = shl i16 %i.ej, 1
  %i.el = or disjoint i16 %i.ek, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %bb.o
  %.2.lcssa = phi i16 [ %.1, %bb.o ], [ %i.dz, %.lr.ph ], [ %i.eb, %.lr.ph.1 ], [ %i.ed, %.lr.ph.2 ], [ %i.ef, %.lr.ph.3 ], [ %i.eh, %.lr.ph.4 ], [ %i.ej, %.lr.ph.5 ], [ %i.el, %.lr.ph.6 ]
  %i.em = trunc i32 %i.dm to i16
  %i.en = and i16 %.2.lcssa, %i.em
  %i.eo = zext i16 %i.en to i64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.j
  %.3 = phi i64 [ %i.eo, %._crit_edge ], [ 0, %bb.j ]
  %spec.select = call i32 @llvm.umax.i32(i32 %.068101, i32 %i.do) ; 2 uses
  %i.ep = sub nuw nsw i32 64, %i.do
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.er = shl i64 65535, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv110
  store i64 %i.er, ptr %i.es, align 8, !tbaa !39
  %i.et = shl i64 %.3, %i.eq
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv110
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !39
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, 17
  br i1 %exitcond113.not, label %bb.i, label %bb.j, !llvm.loop !167

bb.q:                                             ; preds = %bb.i
end_hunk_0
