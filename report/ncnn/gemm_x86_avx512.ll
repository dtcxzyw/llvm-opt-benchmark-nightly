Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnn15Gemm_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.gp = icmp eq i32 %i.go, 1
  br i1 %i.gp, label %bb.bi, label %_ZN4ncnn3MataSERKS0_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !24 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.gr, null
  %i.gs = load ptr, ptr %i.gi, align 8, !tbaa !25 ; 3 uses
  br i1 %.not3.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef %i.gs), !inline_history !1
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.bk:                                            ; preds = %bb.bi
  %.not.i18.i = icmp eq ptr %i.gs, null
  br i1 %.not.i18.i, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.gs) #9
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.bk, %bb.bl, %bb.bg, %bb.bh, %bb.bj
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.hb = load <2 x ptr>, ptr %i.gh, align 8, !tbaa !63
  store <2 x ptr> %i.hb, ptr %i.gi, align 8, !tbaa !63
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !64
  store i64 %i.hd, ptr %i.gw, align 8, !tbaa !64
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !65
  store i32 %i.hf, ptr %i.gx, align 8, !tbaa !65
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !24
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !24
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.hk = load <4 x i32>, ptr %i.hj, align 8, !tbaa !51
  store <4 x i32> %i.hk, ptr %i.gy, align 8, !tbaa !51
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !57
  store i32 %i.hm, ptr %i.gz, align 8, !tbaa !57
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !26
  store i64 %i.ho, ptr %i.ha, align 8, !tbaa !26
  %i.hp = load i32, ptr %i.gf, align 8, !tbaa !62
  %i.hq = icmp eq i32 %i.hp, 3
  br i1 %i.hq, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !66, !range !47, !noundef !48
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !50 ; 3 uses
  %i.hw = and i32 %i.hv, 15
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hy = and i32 %i.hv, 7
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ia = and i32 %i.hv, 3
  %i.ib = icmp eq i32 %i.ia, 0
  %i.ic = select i1 %i.ib, i32 4, i32 1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.id = phi i32 [ 16, %bb.bn ], [ %i.ic, %bb.bp ], [ 8, %bb.bo ]
  call void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.gh, ptr noundef nonnull align 8 dereferenceable(72) %i.gi, i32 noundef %i.id, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.ie = load ptr, ptr %i.gi, align 8, !tbaa !25
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.bq
  %i.ig = load i64, ptr %i.ha, align 8, !tbaa !26
  %i.ih = load i32, ptr %i.gz, align 8, !tbaa !57
  %i.ii = sext i32 %i.ih to i64
  %i.ij = mul i64 %i.ig, %i.ii
  %.not84 = icmp eq i64 %i.ij, 0
  br i1 %.not84, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.br

bb.br:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit, %bb.bm, %_ZN4ncnn3MataSERKS0_.exit
  %i.ik = load i8, ptr %1, align 8, !tbaa !58, !range !47, !noundef !48
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.im = load ptr, ptr %i.gj, align 8, !tbaa !23 ; 2 uses
  %.not.i57 = icmp eq ptr %i.im, null
  br i1 %.not.i57, label %_ZN4ncnn3Mat7releaseEv.exit59, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.in = atomicrmw add ptr %i.im, i32 -1 acq_rel, align 4
  %i.io = icmp eq i32 %i.in, 1
  br i1 %i.io, label %bb.bu, label %_ZN4ncnn3Mat7releaseEv.exit59

bb.bu:                                            ; preds = %bb.bt
  %i.ip = load ptr, ptr %i.hg, align 8, !tbaa !24 ; 3 uses
  %.not3.i58 = icmp eq ptr %i.ip, null
  %i.iq = load ptr, ptr %i.gh, align 8, !tbaa !25 ; 3 uses
  br i1 %.not3.i58, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ir = load ptr, ptr %i.ip, align 8, !tbaa !17
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef %i.iq), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit59

bb.bw:                                            ; preds = %bb.bu
  %.not.i71 = icmp eq ptr %i.iq, null
  br i1 %.not.i71, label %_ZN4ncnn3Mat7releaseEv.exit59, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @free(ptr noundef nonnull %i.iq) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit59

_ZN4ncnn3Mat7releaseEv.exit59:                    ; preds = %bb.bx, %bb.bw, %bb.bs, %bb.bt, %bb.bv
  store i64 0, ptr %i.hn, align 8, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gh, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.hj, i8 0, i64 20, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %bb.br, %_ZN4ncnn3Mat7releaseEv.exit59, %bb.bd, %bb.bc
  %i.iu = load i32, ptr %i.p, align 8, !tbaa !49
  %.not39 = icmp eq i32 %i.iu, 0
  br i1 %.not39, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.iv = load i32, ptr %i.cw, align 4, !tbaa !59
  %.not40 = icmp eq i32 %i.iv, 0
  br i1 %.not40, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.iw = load i32, ptr %i.gd, align 8, !tbaa !61
  %.not41 = icmp eq i32 %i.iw, 0
  br i1 %.not41, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !56
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 580
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !75
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.bq, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.ca, %bb.cb, %_ZN4ncnn3MatD2Ev.exit42, %_ZN4ncnn3MatD2Ev.exit44
  %.5 = phi i32 [ -100, %_ZN4ncnn3MatD2Ev.exit44 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZN4ncnn3MatD2Ev.exit42 ], [ 0, %bb.cb ], [ 0, %bb.ca ], [ -100, %bb.bq ]
  ret i32 %.5

bb.cc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit43
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %_ZN4ncnn3MatD2Ev.exit ], [ %.pn, %_ZN4ncnn3MatD2Ev.exit43 ]
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %7, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %8, i32 noundef %9) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = sext i32 %i.a to i64
  %i.c = icmp eq i32 %9, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %9, %bb.a ]    ; 3 uses
  %i.e = uitofp fast i64 %i.b to float            ; 2 uses
  %i.f = fmul fast float %i.e, f0x3DAAAAAB
  %i.g = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.h = fptosi float %i.g to i32
  %i.i = and i32 %i.h, 2147483632
  %.sroa.speculated115 = tail call i32 @llvm.umax.i32(i32 %i.i, i32 16) ; 6 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !51
  store i32 %.sroa.speculated115, ptr %7, align 4, !tbaa !51
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !51
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %2, -1                       ; 2 uses
  %i.l = add nuw i32 %i.k, %.sroa.speculated115
  %10 = sdiv i32 %i.l, %.sroa.speculated115       ; 3 uses
  %i.m = add i32 %i.k, %10
  %11 = sdiv i32 %i.m, %10
  %i.n = add nsw i32 %11, 15
  %12 = sdiv i32 %i.n, 16
  %13 = shl nsw i32 %12, 4
  %.sroa.speculated99 = tail call i32 @llvm.smin.i32(i32 %13, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !51
  %i.o = icmp eq i32 %10, 1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = fmul fast float %i.e, 1.250000e-01
  %14 = sitofp fast i32 %.sroa.speculated99 to float
  %i.q = fdiv fast float %i.p, %14
  %i.r = fptosi float %i.q to i32
  %15 = sdiv i32 %i.r, 16
  %16 = shl nsw i32 %15, 4
  %.sroa.speculated93 = tail call i32 @llvm.smax.i32(i32 %16, i32 16) ; 2 uses
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !51
  store i32 %.sroa.speculated93, ptr %7, align 4, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.0)
  %i.t = load i32, ptr %6, align 4, !tbaa !51
  %i.u = mul nsw i32 %i.t, %.sroa.speculated83    ; 4 uses
  %i.v = icmp sgt i32 %0, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %0, -1                       ; 2 uses
  %i.x = add i32 %i.w, %i.u
  %i.y = sdiv i32 %i.x, %i.u                      ; 2 uses
  %i.z = add i32 %i.w, %i.y
  %i.aa = sdiv i32 %i.z, %i.y
  %i.ab = add nsw i32 %i.aa, 15
  %i.ac = sdiv i32 %i.ab, 16
  %i.ad = shl nsw i32 %i.ac, 4
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.u)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.u, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !51
  %i.ae = icmp sgt i32 %1, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %7, align 4, !tbaa !51    ; 3 uses
  %i.ag = add nsw i32 %1, -1                      ; 2 uses
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = sdiv i32 %i.ah, %i.af                   ; 2 uses
  %i.aj = add i32 %i.ag, %i.ai
  %i.ak = sdiv i32 %i.aj, %i.ai
  %i.al = add nsw i32 %i.ak, 15
  %i.am = sdiv i32 %i.al, 16
  %i.an = shl nsw i32 %i.am, 4
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.af)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = icmp sgt i32 %.0, 1
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %6, align 4, !tbaa !51    ; 2 uses
  %i.aq = sdiv i32 %i.ap, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 1)
  %i.ar = add nuw nsw i32 %.sroa.speculated, 15
  %i.as = and i32 %i.ar, 2147483632
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ap)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = icmp sgt i32 %3, 0
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = add nuw nsw i32 %3, 15
  %i.av = and i32 %i.au, 2147483632
  store i32 %i.av, ptr %6, align 4, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = icmp sgt i32 %4, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = add nuw nsw i32 %4, 15
  %i.ay = and i32 %i.ax, 2147483632
  store i32 %i.ay, ptr %7, align 4, !tbaa !51
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = icmp sgt i32 %5, 0
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = add nuw nsw i32 %5, 15
  %i.bb = and i32 %i.ba, 2147483632
  store i32 %i.bb, ptr %8, align 4, !tbaa !51
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn15Gemm_x86_avx51215create_pipelineERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !51     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.h = load i32, ptr %0, align 4, !tbaa !51     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !51
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !51
  %i.k = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %.not67 = icmp sgt i32 %i.k, %i.j
  br i1 %.not67, label %._crit_edge, label %.noexc41.lr.ph

.noexc41.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 584
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 628
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 648
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 288 ; 2 uses
  br label %.noexc41

.noexc41:                                         ; preds = %.noexc41.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.068 = phi i32 [ %i.k, %.noexc41.lr.ph ], [ %i.aq, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !51     ; 2 uses
  %i.s = sdiv i32 %.068, %i.r                     ; 2 uses
  %i.t = srem i32 %.068, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !51     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !51     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.t                   ; 3 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !51
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 2 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !51
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !78, !noalias !140
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !25, !noalias !140
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !26, !noalias !140
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !64, !noalias !140 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.p, align 8, !tbaa !79
  %.not32 = icmp eq i32 %i.ap, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc41
  call fastcc void @_ZN4ncnnL21transpose_pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc41
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %i.aq = add nsw i32 %.068, 1
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !51
  %.not.not = icmp slt i32 %.068, %i.ar
  br i1 %.not.not, label %.noexc41, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL21transpose_pack_A_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.17:bb.a
  %i.lw = load ptr, ptr %i.lv, align 8
  invoke void %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %i.ls, ptr noundef %i.lt)
          to label %_ZN4ncnn3MatD2Ev.exit89.us unwind label %.split.us, !inline_history !0

bb.v:                                             ; preds = %bb.t
  %.not.i111.us = icmp eq ptr %i.lt, null
  br i1 %.not.i111.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.lt) #9
  br label %_ZN4ncnn3MatD2Ev.exit89.us

_ZN4ncnn3MatD2Ev.exit89.us:                       ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.lx = load ptr, ptr %i.ar, align 8, !tbaa !23 ; 2 uses
  %.not.i100.us = icmp eq ptr %i.lx, null
  br i1 %.not.i100.us, label %_ZN4ncnn3MatD2Ev.exit88.us, label %bb.x

bb.x:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit89.us
  %i.ly = atomicrmw add ptr %i.lx, i32 -1 acq_rel, align 4
  %i.lz = icmp eq i32 %i.ly, 1
  br i1 %i.lz, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit88.us

bb.y:                                             ; preds = %bb.x
  %i.ma = load ptr, ptr %i.au, align 8, !tbaa !24 ; 3 uses
  %.not3.i101.us = icmp eq ptr %i.ma, null
  %i.mb = load ptr, ptr %15, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i101.us, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mc = load ptr, ptr %i.ma, align 8, !tbaa !17
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.me = load ptr, ptr %i.md, align 8
  invoke void %i.me(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef %i.mb)
          to label %_ZN4ncnn3MatD2Ev.exit88.us unwind label %.split192.us, !inline_history !0

bb.aa:                                            ; preds = %bb.y
  %.not.i109.us = icmp eq ptr %i.mb, null
  br i1 %.not.i109.us, label %_ZN4ncnn3MatD2Ev.exit88.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.mb) #9
  br label %_ZN4ncnn3MatD2Ev.exit88.us

_ZN4ncnn3MatD2Ev.exit88.us:                       ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %_ZN4ncnn3MatD2Ev.exit89.us
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.mf = add nsw i32 %.0186.us, %i.dk            ; 2 uses
  %i.mg = icmp slt i32 %i.mf, %i.cg
  br i1 %i.mg, label %bb.h, label %._crit_edge.us, !llvm.loop !1254

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit88.us
  %.val.us = load ptr, ptr %14, align 8
  call fastcc void @_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr %.val.us, ptr noundef nonnull readonly align 8 dereferenceable(72) %12, ptr noundef nonnull readonly align 8 dereferenceable(72) %13, i32 noundef %i.bo, i32 noundef %i.ch, i32 noundef %.sroa.speculated163, i32 noundef %.083187.us, i32 noundef %.sroa.speculated159.us, ptr noundef nonnull readonly align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.br, float noundef nofpclass(nan inf) %i.bs, i32 noundef %i.bq)
  %i.mh = add nsw i32 %.083187.us, %i.bn          ; 2 uses
  %i.mi = load i32, ptr %6, align 4, !tbaa !51    ; 2 uses
  %i.mj = icmp slt i32 %i.mh, %i.mi
  br i1 %i.mj, label %.lr.ph.us, label %._crit_edge189, !llvm.loop !1255

.loopexit.split.us:                               ; preds = %bb.q, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread178.us, %bb.h
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

.split.us:                                        ; preds = %bb.u
  %i.mk = landingpad { ptr, i32 }
          catch ptr null
  %i.ml = extractvalue { ptr, i32 } %i.mk, 0
  call void @__clang_call_terminate(ptr %i.ml) #30
  unreachable

.split192.us:                                     ; preds = %bb.z
  %i.mm = landingpad { ptr, i32 }
          catch ptr null
  %i.mn = extractvalue { ptr, i32 } %i.mm, 0
  call void @__clang_call_terminate(ptr %i.mn) #30
  unreachable

._crit_edge189:                                   ; preds = %.lr.ph188.split, %._crit_edge.us, %_ZN4ncnn3Mat7channelEi.exit121
  %i.mo = load ptr, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %.not.i104 = icmp eq ptr %i.mo, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge189
  %i.mp = atomicrmw add ptr %i.mo, i32 -1 acq_rel, align 4
  %i.mq = icmp eq i32 %i.mp, 1
  br i1 %i.mq, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.mr = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %.not3.i105 = icmp eq ptr %i.mr, null
  %i.ms = load ptr, ptr %14, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i105, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !17
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef %i.ms)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ah, !inline_history !0

bb.af:                                            ; preds = %bb.ad
  %.not.i108 = icmp eq ptr %i.ms, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.ms) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ah:                                            ; preds = %bb.ae
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ac, %._crit_edge189, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.my = add nsw i32 %.084195, 1
  %i.mz = load i32, ptr %i.b, align 4, !tbaa !51
  %.not.not = icmp slt i32 %.084195, %i.mz
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph188.split:                                  ; preds = %.lr.ph188, %.lr.ph188.split
  %i.na = phi i32 [ %i.nd, %.lr.ph188.split ], [ %i.dg, %.lr.ph188 ]
  %.083187 = phi i32 [ %i.nc, %.lr.ph188.split ], [ 0, %.lr.ph188 ] ; 3 uses
  %i.nb = sub nsw i32 %i.na, %.083187
  %.sroa.speculated159 = call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.nb)
  %.val = load ptr, ptr %14, align 8
  call fastcc void @_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr %.val, ptr noundef nonnull readonly align 8 dereferenceable(72) %12, ptr noundef nonnull readonly align 8 dereferenceable(72) %13, i32 noundef %i.bo, i32 noundef %i.ch, i32 noundef %.sroa.speculated163, i32 noundef %.083187, i32 noundef %.sroa.speculated159, ptr noundef nonnull readonly align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.br, float noundef nofpclass(nan inf) %i.bs, i32 noundef %i.bq)
  %i.nc = add nsw i32 %.083187, %i.bn             ; 2 uses
  %i.nd = load i32, ptr %6, align 4, !tbaa !51    ; 2 uses
  %i.ne = icmp slt i32 %i.nc, %i.nd
  br i1 %i.ne, label %.lr.ph188.split, label %._crit_edge189, !llvm.loop !1255

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge, %bb.a
  ret void

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.nf = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.nf) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn23Gemm_x86_avx512_utility16pack_A_tile_int8ERKNS_3MatERS1_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn23Gemm_x86_avx512_utility28gemm_transB_packed_tile_int8ERKNS_3MatES3_RS1_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_bf16EiiiiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %7, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %8, i32 noundef %9) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = sext i32 %i.a to i64
  %i.c = icmp eq i32 %9, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %9, %bb.a ]    ; 3 uses
  %i.e = uitofp fast i64 %i.b to float            ; 2 uses
  %i.f = fmul fast float %i.e, 1.250000e-01
  %i.g = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.h = fptosi float %i.g to i32
  %i.i = and i32 %i.h, 2147483632
  %.sroa.speculated115 = tail call i32 @llvm.umax.i32(i32 %i.i, i32 16) ; 6 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !51
  store i32 %.sroa.speculated115, ptr %7, align 4, !tbaa !51
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !51
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %2, -1                       ; 2 uses
  %i.l = add nuw i32 %i.k, %.sroa.speculated115
  %10 = sdiv i32 %i.l, %.sroa.speculated115       ; 3 uses
  %i.m = add i32 %i.k, %10
  %11 = sdiv i32 %i.m, %10
  %i.n = add nsw i32 %11, 15
  %12 = sdiv i32 %i.n, 16
  %13 = shl nsw i32 %12, 4
  %.sroa.speculated99 = tail call i32 @llvm.smin.i32(i32 %13, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !51
  %i.o = icmp eq i32 %10, 1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = fmul fast float %i.e, 2.500000e-01
  %14 = sitofp fast i32 %.sroa.speculated99 to float
  %i.q = fdiv fast float %i.p, %14
  %i.r = fptosi float %i.q to i32
  %15 = sdiv i32 %i.r, 16
  %16 = shl nsw i32 %15, 4
  %.sroa.speculated93 = tail call i32 @llvm.smax.i32(i32 %16, i32 16) ; 2 uses
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !51
  store i32 %.sroa.speculated93, ptr %7, align 4, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.0)
  %i.t = load i32, ptr %6, align 4, !tbaa !51
  %i.u = mul nsw i32 %i.t, %.sroa.speculated83    ; 4 uses
  %i.v = icmp sgt i32 %0, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %0, -1                       ; 2 uses
  %i.x = add i32 %i.w, %i.u
  %i.y = sdiv i32 %i.x, %i.u                      ; 2 uses
  %i.z = add i32 %i.w, %i.y
  %i.aa = sdiv i32 %i.z, %i.y
  %i.ab = add nsw i32 %i.aa, 15
  %i.ac = sdiv i32 %i.ab, 16
  %i.ad = shl nsw i32 %i.ac, 4
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.u)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.u, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !51
  %i.ae = icmp sgt i32 %1, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %7, align 4, !tbaa !51    ; 3 uses
  %i.ag = add nsw i32 %1, -1                      ; 2 uses
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = sdiv i32 %i.ah, %i.af                   ; 2 uses
  %i.aj = add i32 %i.ag, %i.ai
  %i.ak = sdiv i32 %i.aj, %i.ai
  %i.al = add nsw i32 %i.ak, 15
  %i.am = sdiv i32 %i.al, 16
  %i.an = shl nsw i32 %i.am, 4
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.af)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = icmp sgt i32 %.0, 1
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %6, align 4, !tbaa !51    ; 2 uses
  %i.aq = sdiv i32 %i.ap, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 1)
  %i.ar = add nuw nsw i32 %.sroa.speculated, 15
  %i.as = and i32 %i.ar, 2147483632
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ap)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = icmp sgt i32 %3, 0
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = add nuw nsw i32 %3, 15
  %i.av = and i32 %i.au, 2147483632
  store i32 %i.av, ptr %6, align 4, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = icmp sgt i32 %4, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = add nuw nsw i32 %4, 15
  %i.ay = and i32 %i.ax, 2147483632
  store i32 %i.ay, ptr %7, align 4, !tbaa !51
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = icmp sgt i32 %5, 0
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = add nuw nsw i32 %5, 15
  %i.bb = and i32 %i.ba, 2147483632
  store i32 %i.bb, ptr %8, align 4, !tbaa !51
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

declare void @_ZN4ncnn24cast_float32_to_bfloat16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn15Gemm_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8, ptr noundef nonnull align 8 dereferenceable(72) %9) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !51     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.h = load i32, ptr %0, align 4, !tbaa !51     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !51
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !51
  %i.k = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %.not58 = icmp sgt i32 %i.k, %i.j
  br i1 %.not58, label %._crit_edge, label %.noexc42.lr.ph

.noexc42.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 584
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 628
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 648
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 608
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 616
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 216
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc42.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.059 = phi i32 [ %i.k, %.noexc42.lr.ph ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !51     ; 2 uses
  %i.aa = sdiv i32 %.059, %i.z                    ; 2 uses
  %i.ab = srem i32 %.059, %i.z                    ; 2 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !51    ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %i.aa                ; 3 uses
  %i.ae = load i32, ptr %5, align 4, !tbaa !51    ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.ab                ; 3 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !51
  %i.ah = sub nsw i32 %i.ag, %i.ad
  %.sroa.speculated55 = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ah) ; 2 uses
  %i.ai = load i32, ptr %7, align 4, !tbaa !51
  %i.aj = sub nsw i32 %i.ai, %i.af
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.aj) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !78, !noalias !1265 ; 2 uses
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !25, !noalias !1265
  %i.am = load i64, ptr %i.n, align 8, !tbaa !26, !noalias !1265
  %i.an = sext i32 %i.aa to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !64, !noalias !1265 ; 3 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = load i32, ptr %i.p, align 8, !tbaa !65, !noalias !1265
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !24, !noalias !1265
  %i.au = sext i32 %i.ak to i64                   ; 2 uses
  %i.av = sext i32 %i.ab to i64
  %i.aw = mul nsw i64 %i.au, %i.av
  %i.ax = mul i64 %i.aw, %i.ap
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  store ptr %i.ay, ptr %10, align 8, !tbaa !25
  store ptr null, ptr %i.r, align 8, !tbaa !23
  store i64 %i.ap, ptr %i.s, align 8, !tbaa !64
  store i32 %i.as, ptr %i.t, align 8, !tbaa !65
  store ptr %i.at, ptr %i.u, align 8, !tbaa !24
  %i.az = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.ak, i64 1
  store <4 x i32> %i.az, ptr %i.v, align 8, !tbaa !51
  store i32 1, ptr %i.w, align 8, !tbaa !57
  store i64 %i.au, ptr %i.x, align 8, !tbaa !26, !alias.scope !1266
  %i.ba = load i32, ptr %i.y, align 8, !tbaa !79
  %.not33 = icmp eq i32 %i.ba, 0
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc42
  invoke fastcc void @_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.ad, i32 noundef %.sroa.speculated55, i32 noundef %i.af, i32 noundef %.sroa.speculated)
          to label %bb.e unwind label %bb.m

bb.d:                                             ; preds = %.noexc42
  invoke fastcc void @_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.ad, i32 noundef %.sroa.speculated55, i32 noundef %i.af, i32 noundef %.sroa.speculated)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !23  ; 2 uses
  %.not.i35 = icmp eq ptr %i.bb, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_1
