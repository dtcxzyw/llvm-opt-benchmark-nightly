Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_pcg?download=true
inline.NumInlined: 27367
inline.NumDeleted: 13763
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge184 = phi i64 [ %i.x, %bb.i ], [ %.sroa.speculated153, %bb.j ]
  store i64 %storemerge184, ptr %2, align 8, !tbaa !80
  %i.ab = icmp sgt i64 %i.g, %i.f
  br i1 %i.ab, label %bb.l, label %.critedge116

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i64 %i.g, %i.f
  %i.ad = load i64, ptr %0, align 8, !tbaa !80
  %i.ae = shl i64 %3, 3
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = udiv i64 %i.ac, %i.af                   ; 3 uses
  %i.ah = load i64, ptr %1, align 8, !tbaa !80    ; 2 uses
  %i.ai = add i64 %i.u, %i.ah
  %i.aj = sdiv i64 %i.ai, %3                      ; 2 uses
  %i.ak = icmp slt i64 %i.ag, %i.aj
  %i.al = icmp samesign ugt i64 %i.ag, 3
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = and i64 %i.ag, 2305843009213693948
  store i64 %i.am, ptr %1, align 8, !tbaa !80
  br label %.critedge116

bb.n:                                             ; preds = %bb.l
  %i.an = add nsw i64 %i.aj, 3                    ; 2 uses
  %i.ao = srem i64 %i.an, 4
  %i.ap = sub nsw i64 %i.an, %i.ao
  %.sroa.speculated149 = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ah)
  store i64 %.sroa.speculated149, ptr %1, align 8, !tbaa !80
  br label %.critedge116

bb.o:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.aq = load i64, ptr %1, align 8, !tbaa !80    ; 2 uses
  %i.ar = load i64, ptr %2, align 8, !tbaa !80
  %i.as = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.ar)
  %i.at = load i64, ptr %0, align 8, !tbaa !80    ; 8 uses
  %.sroa.speculated145 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 %i.as)
  %i.au = icmp slt i64 %.sroa.speculated145, 48
  br i1 %i.au, label %.critedge116, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = add nsw i64 %i.e, -128                  ; 2 uses
  %i.aw = sdiv i64 %i.av, 256
  %i.ax = and i64 %i.aw, -8
  %.sroa.speculated140 = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 1) ; 7 uses
  %i.ay = icmp sgt i64 %i.at, %.sroa.speculated140
  br i1 %i.ay, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.az = urem i64 %i.at, %.sroa.speculated140    ; 2 uses
  %i.ba = udiv i64 %i.at, %.sroa.speculated140
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = xor i64 %i.az, -1
  %i.bd = add nsw i64 %.sroa.speculated140, %i.bc
  %i.be = shl i64 %i.ba, 3
  %i.bf = add i64 %i.be, 8
  %i.bg = sdiv i64 %i.bd, %i.bf
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = sub nsw i64 %.sroa.speculated140, %i.bh
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bj = phi i64 [ %i.bi, %bb.r ], [ %.sroa.speculated140, %bb.q ] ; 2 uses
  store i64 %i.bj, ptr %0, align 8, !tbaa !80
  %.pre = load i64, ptr %1, align 8, !tbaa !80
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.bk = phi i64 [ %i.bj, %bb.s ], [ %i.at, %bb.p ] ; 5 uses
  %i.bl = phi i64 [ %.pre, %bb.s ], [ %i.aq, %bb.p ] ; 6 uses
  %i.bm = shl i64 %i.bl, 3
  %i.bn = mul i64 %i.bm, %i.bk
  %i.bo = sub nsw i64 %i.av, %i.bn                ; 2 uses
  %i.bp = shl nsw i64 %i.bk, 5
  %.not = icmp slt i64 %i.bo, %i.bp
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = shl i64 %i.bk, 3
  %i.br = udiv i64 %i.bo, %i.bq
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bs = shl i64 %.sroa.speculated140, 5
  %i.bt = udiv i64 4718592, %i.bs
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge = phi i64 [ %i.bt, %bb.v ], [ %i.br, %bb.u ]
  %i.bu = shl i64 %i.bk, 4
  %i.bv = udiv i64 1572864, %i.bu
  %.sroa.speculated135 = tail call i64 @llvm.smin.i64(i64 %storemerge, i64 %i.bv)
  %i.bw = and i64 %.sroa.speculated135, -4        ; 6 uses
  %i.bx = load i64, ptr %2, align 8, !tbaa !80    ; 4 uses
  %i.by = icmp sgt i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bz = srem i64 %i.bx, %i.bw                   ; 2 uses
  %i.ca = sdiv i64 %i.bx, %i.bw
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = sub nsw i64 %i.bw, %i.bz
  %i.cd = shl i64 %i.ca, 2
  %i.ce = add i64 %i.cd, 4
  %i.cf = sdiv i64 %i.cc, %i.ce
  %i.cg = shl nsw i64 %i.cf, 2
  %i.ch = sub nsw i64 %i.bw, %i.cg
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ci = phi i64 [ %i.ch, %bb.y ], [ %i.bw, %bb.x ]
  store i64 %i.ci, ptr %2, align 8, !tbaa !80
  br label %.critedge116

bb.aa:                                            ; preds = %bb.w
  %i.cj = icmp eq i64 %i.at, %i.bk
  br i1 %i.cj, label %bb.ab, label %.critedge116

bb.ab:                                            ; preds = %bb.aa
  %i.ck = shl i64 %i.at, 3
  %i.cl = mul i64 %i.ck, %i.bx                    ; 2 uses
  %i.cm = icmp slt i64 %i.cl, 1025
  br i1 %i.cm, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = icmp ne i64 %i.g, 0
  %i.co = icmp samesign ult i64 %i.cl, 32769
  %or.cond4 = and i1 %i.cn, %i.co
  br i1 %or.cond4, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.speculated128 = tail call i64 @llvm.smin.i64(i64 %i.bl, i64 576)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.0182 = phi i64 [ %i.bl, %bb.ac ], [ %.sroa.speculated128, %bb.ad ], [ %i.bl, %bb.ab ]
  %.093 = phi i64 [ 1572864, %bb.ac ], [ %i.f, %bb.ad ], [ %i.e, %bb.ab ]
  %i.cp = mul i64 %i.at, 24
  %i.cq = udiv i64 %.093, %i.cp
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %.0182, i64 %i.cq) ; 4 uses
  %i.cr = icmp sgt i64 %.sroa.speculated, 4
  br i1 %i.cr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = and i64 %.sroa.speculated, 9223372036854775804
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ct = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.ct, label %.critedge116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi i64 [ %i.cs, %bb.af ], [ %.sroa.speculated, %bb.ag ] ; 5 uses
  %i.cu = srem i64 %i.bl, %.0                     ; 2 uses
  %i.cv = sdiv i64 %i.bl, %.0
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = sub nsw i64 %.0, %i.cu
  %i.cy = shl i64 %i.cv, 2
  %i.cz = add i64 %i.cy, 4
  %i.da = sdiv i64 %i.cx, %i.cz
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = sub nsw i64 %.0, %i.db
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.ai
  %i.dd = phi i64 [ %i.dc, %bb.ai ], [ %.0, %bb.ah ]
  store i64 %i.dd, ptr %1, align 8, !tbaa !80
  br label %.critedge116

.critedge116:                                     ; preds = %.critedge, %bb.aa, %bb.z, %bb.ag, %bb.m, %bb.n, %bb.k, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 -1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  call void @_ZN5Eigen8internal15queryCacheSizesERiS1_S1_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.e = load i32, ptr %i.a, align 4, !tbaa !91   ; 2 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !91   ; 2 uses
  %i.g = icmp slt i32 %i.e, 1
  %narrow = select i1 %i.g, i32 32768, i32 %i.e
  %1 = icmp slt i32 %i.f, 1
  %narrow.a = select i1 %1, i32 262144, i32 %i.f
  %i.h = insertelement <2 x i32> poison, i32 %narrow, i64 0
  %i.i = insertelement <2 x i32> %i.h, i32 %narrow.a, i64 1
  %i.j = sext <2 x i32> %i.i to <2 x i64>
  store <2 x i64> %i.j, ptr %0, align 8, !tbaa !80
  %i.k = load i32, ptr %i.c, align 4, !tbaa !91   ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  %narrow2 = select i1 %i.l, i32 2097152, i32 %i.k
  %i.m = sext i32 %narrow2 to i64
  store i64 %i.m, ptr %i.d, align 8, !tbaa !583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal15queryCacheSizesERiS1_S1_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect "xchg$(q$)\09$(%$)rbx, ${1:q}; cpuid; xchg$(q$)\09$(%$)rbx, ${1:q}", "={ax},=&r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #35, !srcloc !1429 ; 4 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 0 ; 4 uses
  %i.c = extractvalue { i32, i32, i32, i32 } %i.a, 1
  %i.d = extractvalue { i32, i32, i32, i32 } %i.a, 2 ; 3 uses
  %i.e = extractvalue { i32, i32, i32, i32 } %i.a, 3 ; 3 uses
  switch i32 %i.c, label %_ZN5Eigen8internal15cpuid_is_vendorEPiPKi.exit11.thread [
    i32 1970169159, label %bb.b
    i32 1752462657, label %bb.m
    i32 1766083905, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.e, 1231384169
  %i.g = icmp eq i32 %i.d, 1818588270
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN5Eigen8internal15cpuid_is_vendorEPiPKi.exit11.thread

bb.c:                                             ; preds = %bb.b
  %i.h = icmp sgt i32 %i.b, 3
  br i1 %i.h, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4, !tbaa !91
  store i32 0, ptr %1, align 4, !tbaa !91
  store i32 0, ptr %0, align 4, !tbaa !91
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %.0.i.i = phi i32 [ 0, %bb.d ], [ %i.ab, %bb.i ] ; 3 uses
  %i.i = tail call { i32, i32, i32, i32 } asm sideeffect "xchg$(q$)\09$(%$)rbx, ${1:q}; cpuid; xchg$(q$)\09$(%$)rbx, ${1:q}", "={ax},=&r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %.0.i.i) #35, !srcloc !1430 ; 3 uses
  %i.j = extractvalue { i32, i32, i32, i32 } %i.i, 0 ; 3 uses
  %i.k = and i32 %i.j, 15
  %i.l = and i32 %i.j, 13
  %or.cond.i.i = icmp eq i32 %i.l, 1
  br i1 %or.cond.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = extractvalue { i32, i32, i32, i32 } %i.i, 2
  %i.n = extractvalue { i32, i32, i32, i32 } %i.i, 1 ; 3 uses
  %i.o = lshr i32 %i.j, 5
  %i.p = and i32 %i.o, 7
  %i.q = lshr i32 %i.n, 22
  %i.r = lshr i32 %i.n, 12
  %i.s = and i32 %i.r, 1023
  %i.t = and i32 %i.n, 4095
  %i.u = add nuw nsw i32 %i.q, 1
  %i.v = add nuw nsw i32 %i.s, 1
  %i.w = add nuw nsw i32 %i.t, 1
  %i.x = add nsw i32 %i.m, 1
  %i.y = mul i32 %i.u, %i.x
  %i.z = mul i32 %i.y, %i.w
  %i.aa = mul i32 %i.z, %i.v
  switch i32 %i.p, label %bb.i [
    i32 1, label %.sink.split.i.i
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %.sink.split.i.i

bb.h:                                             ; preds = %bb.f
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.h, %bb.g, %bb.f
  %.sink.i.i = phi ptr [ %2, %bb.h ], [ %1, %bb.g ], [ %0, %bb.f ]
  store i32 %i.aa, ptr %.sink.i.i, align 4, !tbaa !91
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i.i, %bb.f, %bb.e
  %i.ab = add nuw nsw i32 %.0.i.i, 1
  %i.ac = icmp ne i32 %i.k, 0
  %i.ad = icmp samesign ult i32 %.0.i.i, 15
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.e, label %_ZN5Eigen8internal21queryCacheSizes_intelERiS1_S1_i.exit, !llvm.loop !1428

bb.j:                                             ; preds = %bb.c
  %i.af = icmp sgt i32 %i.b, 1
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5Eigen8internal27queryCacheSizes_intel_codesERiS1_S1_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %_ZN5Eigen8internal21queryCacheSizes_intelERiS1_S1_i.exit

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %2, align 4, !tbaa !91
  store i32 0, ptr %1, align 4, !tbaa !91
  store i32 0, ptr %0, align 4, !tbaa !91
  br label %_ZN5Eigen8internal21queryCacheSizes_intelERiS1_S1_i.exit

bb.m:                                             ; preds = %bb.a
  %i.ag = icmp eq i32 %i.e, 1769238117
  %i.ah = icmp eq i32 %i.d, 1145913699
  %or.cond33 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond33, label %bb.o, label %_ZN5Eigen8internal15cpuid_is_vendorEPiPKi.exit11.thread

bb.n:                                             ; preds = %bb.a
  %i.ai = icmp eq i32 %i.e, 1952801395
  %i.aj = icmp eq i32 %i.d, 561145204
  %or.cond34 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond34, label %bb.o, label %_ZN5Eigen8internal15cpuid_is_vendorEPiPKi.exit11.thread

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = tail call { i32, i32, i32, i32 } asm sideeffect "xchg$(q$)\09$(%$)rbx, ${1:q}; cpuid; xchg$(q$)\09$(%$)rbx, ${1:q}", "={ax},=&r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483648, i32 0) #35, !srcloc !1431
  %i.al = extractvalue { i32, i32, i32, i32 } %i.ak, 0
  %i.am = icmp ugt i32 %i.al, -2147483643
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = tail call { i32, i32, i32, i32 } asm sideeffect "xchg$(q$)\09$(%$)rbx, ${1:q}; cpuid; xchg$(q$)\09$(%$)rbx, ${1:q}", "={ax},=&r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483643, i32 0) #35, !srcloc !1432
  %i.ao = extractvalue { i32, i32, i32, i32 } %i.an, 2
  %i.ap = ashr i32 %i.ao, 14
  %i.aq = and i32 %i.ap, -1024
  store i32 %i.aq, ptr %0, align 4, !tbaa !91
  %i.ar = tail call { i32, i32, i32, i32 } asm sideeffect "xchg$(q$)\09$(%$)rbx, ${1:q}; cpuid; xchg$(q$)\09$(%$)rbx, ${1:q}", "={ax},=&r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483642, i32 0) #35, !srcloc !1433 ; 2 uses
  %i.as = extractvalue { i32, i32, i32, i32 } %i.ar, 2
  %i.at = extractvalue { i32, i32, i32, i32 } %i.ar, 3
  %i.au = ashr i32 %i.as, 6
  %i.av = and i32 %i.au, -1024
  store i32 %i.av, ptr %1, align 4, !tbaa !91
  %i.aw = shl i32 %i.at, 1
  %i.ax = and i32 %i.aw, 536346624
  store i32 %i.ax, ptr %2, align 4, !tbaa !91
  br label %_ZN5Eigen8internal21queryCacheSizes_intelERiS1_S1_i.exit

bb.q:                                             ; preds = %bb.o
  store i32 0, ptr %2, align 4, !tbaa !91
  store i32 0, ptr %1, align 4, !tbaa !91
  store i32 0, ptr %0, align 4, !tbaa !91
  br label %_ZN5Eigen8internal21queryCacheSizes_intelERiS1_S1_i.exit

_ZN5Eigen8internal15cpuid_is_vendorEPiPKi.exit11.thread: ; preds = %bb.a, %bb.b, %bb.m, %bb.n
  %i.ay = icmp sgt i32 %i.b, 3
  br i1 %i.ay, label %bb.r, label %bb.x

bb.r:                                             ; preds = %_ZN5Eigen8internal15cpuid_is_vendorEPiPKi.exit11.thread
  store i32 0, ptr %2, align 4, !tbaa !91
  store i32 0, ptr %1, align 4, !tbaa !91
  store i32 0, ptr %0, align 4, !tbaa !91
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %bb.r
  %.0.i.i12 = phi i32 [ 0, %bb.r ], [ %i.bs, %bb.w ] ; 3 uses
  %i.az = tail call { i32, i32, i32, i32 } asm sideeffect "xchg$(q$)\09$(%$)rbx, ${1:q}; cpuid; xchg$(q$)\09$(%$)rbx, ${1:q}", "={ax},=&r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %.0.i.i12) #35, !srcloc !1430 ; 3 uses
  %i.ba = extractvalue { i32, i32, i32, i32 } %i.az, 0 ; 3 uses
  %i.bb = and i32 %i.ba, 15
  %i.bc = and i32 %i.ba, 13
  %or.cond.i.i13 = icmp eq i32 %i.bc, 1
  br i1 %or.cond.i.i13, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bd = extractvalue { i32, i32, i32, i32 } %i.az, 2
  %i.be = extractvalue { i32, i32, i32, i32 } %i.az, 1 ; 3 uses
  %i.bf = lshr i32 %i.ba, 5
  %i.bg = and i32 %i.bf, 7
  %i.bh = lshr i32 %i.be, 22
  %i.bi = lshr i32 %i.be, 12
  %i.bj = and i32 %i.bi, 1023
  %i.bk = and i32 %i.be, 4095
  %i.bl = add nuw nsw i32 %i.bh, 1
  %i.bm = add nuw nsw i32 %i.bj, 1
  %i.bn = add nuw nsw i32 %i.bk, 1
  %i.bo = add nsw i32 %i.bd, 1
  %i.bp = mul i32 %i.bl, %i.bo
  %i.bq = mul i32 %i.bp, %i.bn
  %i.br = mul i32 %i.bq, %i.bm
  switch i32 %i.bg, label %bb.w [
    i32 1, label %.sink.split.i.i14
    i32 2, label %bb.u
    i32 3, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  br label %.sink.split.i.i14

bb.v:                                             ; preds = %bb.t
  br label %.sink.split.i.i14

.sink.split.i.i14:                                ; preds = %bb.v, %bb.u, %bb.t
  %.sink.i.i15 = phi ptr [ %2, %bb.v ], [ %1, %bb.u ], [ %0, %bb.t ]
  store i32 %i.br, ptr %.sink.i.i15, align 4, !tbaa !91
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i.i14, %bb.t, %bb.s
end_hunk_0
