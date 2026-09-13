Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnn15Gemm_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.gl = atomicrmw add ptr %i.gk, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.go = atomicrmw add ptr %i.gn, i32 -1 acq_rel, align 4
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
  %10 = sdiv i32 %i.h, 16
  %11 = shl nsw i32 %10, 4
  %.sroa.speculated115 = tail call i32 @llvm.smax.i32(i32 %11, i32 16) ; 6 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !51
  store i32 %.sroa.speculated115, ptr %7, align 4, !tbaa !51
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !51
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = add nuw i32 %i.j, %.sroa.speculated115
  %i.l = udiv i32 %i.k, %.sroa.speculated115      ; 3 uses
  %i.m = add nuw i32 %i.j, %i.l
  %i.n = udiv i32 %i.m, %i.l
  %i.o = add nuw nsw i32 %i.n, 15
  %i.p = and i32 %i.o, -16
  %.sroa.speculated99 = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !51
  %i.q = icmp eq i32 %i.l, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = fmul fast float %i.e, 1.250000e-01
  %i.s = uitofp nneg i32 %.sroa.speculated99 to float
  %i.t = fdiv fast float %i.r, %i.s
  %i.u = fptosi float %i.t to i32
  %12 = sdiv i32 %i.u, 16
  %13 = shl nsw i32 %12, 4
  %.sroa.speculated93 = tail call i32 @llvm.smax.i32(i32 %13, i32 16) ; 2 uses
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !51
  store i32 %.sroa.speculated93, ptr %7, align 4, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.v = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %.0)
  %i.w = load i32, ptr %6, align 4, !tbaa !51
  %i.x = mul nsw i32 %i.w, %.sroa.speculated83    ; 4 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %0, -1                       ; 2 uses
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sdiv i32 %i.aa, %i.x                    ; 2 uses
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 15
  %i.af = sdiv i32 %i.ae, 16
  %i.ag = shl nsw i32 %i.af, 4
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.x)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.x, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !51
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %7, align 4, !tbaa !51    ; 3 uses
  %i.aj = add nsw i32 %1, -1                      ; 2 uses
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai                   ; 2 uses
  %i.am = add i32 %i.aj, %i.al
  %i.an = sdiv i32 %i.am, %i.al
  %i.ao = add nsw i32 %i.an, 15
  %i.ap = sdiv i32 %i.ao, 16
  %i.aq = shl nsw i32 %i.ap, 4
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ai)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = icmp sgt i32 %.0, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %6, align 4, !tbaa !51    ; 2 uses
  %i.at = sdiv i32 %i.as, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1)
  %i.au = add nuw nsw i32 %.sroa.speculated, 15
  %i.av = and i32 %i.au, 2147483632
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.as)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = add nuw nsw i32 %3, 15
  %i.ay = and i32 %i.ax, 2147483632
  store i32 %i.ay, ptr %6, align 4, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = icmp sgt i32 %4, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i32 %4, 15
  %i.bb = and i32 %i.ba, 2147483632
  store i32 %i.bb, ptr %7, align 4, !tbaa !51
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = icmp sgt i32 %5, 0
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = add nuw nsw i32 %5, 15
  %i.be = and i32 %i.bd, 2147483632
  store i32 %i.be, ptr %8, align 4, !tbaa !51
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
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !78, !noalias !142
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !25, !noalias !142
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !26, !noalias !142
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !64, !noalias !142 ; 2 uses
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
begin_hunk_1_@_ZN4ncnnL8gemm_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiRKNS_6OptionE.omp_outlined.8:bb.a
.lr.ph218:                                        ; preds = %bb.j
  %i.ci = icmp sgt i32 %.fr222, 0
  %.pre225 = load i32, ptr %11, align 4, !tbaa !51 ; 2 uses
  br i1 %i.ci, label %.lr.ph218.split.us, label %.lr.ph218.split

.lr.ph218.split.us:                               ; preds = %.lr.ph218, %bb.s
  %i.cj = phi i32 [ %i.ei, %bb.s ], [ %.pre225, %.lr.ph218 ]
  %i.ck = phi i32 [ %i.ek, %bb.s ], [ %i.cg, %.lr.ph218 ]
  %.081216.us = phi i32 [ %i.ej, %bb.s ], [ 0, %.lr.ph218 ] ; 7 uses
  %i.cl = sub nsw i32 %i.ck, %.081216.us
  %.sroa.speculated192.us = call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.cl) ; 3 uses
  %i.cm = load i32, ptr %7, align 4, !tbaa !51
  %i.cn = icmp eq i32 %i.cm, 3
  br i1 %i.cn, label %bb.k, label %.lr.ph.us

bb.k:                                             ; preds = %.lr.ph218.split.us
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val134, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216.us, i32 noundef %.sroa.speculated192.us)
  %.pre226 = load i32, ptr %7, align 4, !tbaa !51
  %i.co = icmp eq i32 %.pre226, 3
  %i.cp = select i1 %i.co, ptr %16, ptr %12
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.k, %.lr.ph218.split.us
  %i.cq = phi ptr [ %i.cp, %bb.k ], [ %12, %.lr.ph218.split.us ]
  %i.cr = icmp eq i32 %.081216.us, 0
  %.pre227 = load i32, ptr %6, align 4, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.us, %_ZN4ncnn3MatD2Ev.exit91.us
  %i.cs = phi i32 [ %.pre227, %.lr.ph.us ], [ %i.ef, %_ZN4ncnn3MatD2Ev.exit91.us ]
  %.0215.us = phi i32 [ 0, %.lr.ph.us ], [ %i.eg, %_ZN4ncnn3MatD2Ev.exit91.us ] ; 7 uses
  %i.ct = sub nsw i32 %.fr222, %.0215.us
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.cs, i32 %i.ct) ; 3 uses
  %i.cu = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc128.us unwind label %.loopexit.split.us

.noexc128.us:                                     ; preds = %bb.l
  %i.cv = load i32, ptr %i.ag, align 4, !tbaa !78, !noalias !661
  %i.cw = load ptr, ptr %13, align 8, !tbaa !25, !noalias !661
  %i.cx = load i64, ptr %i.ah, align 8, !tbaa !26, !noalias !661
  %i.cy = sext i32 %i.cu to i64
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = load i64, ptr %i.ai, align 8, !tbaa !64, !noalias !661 ; 2 uses
  %i.db = mul i64 %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.db
  %i.dd = sext i32 %i.cv to i64
  %i.de = load i32, ptr %6, align 4, !tbaa !51
  %i.df = sdiv i32 %.0215.us, %i.de
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = mul i64 %i.da, %i.dd
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.di ; 3 uses
  %i.dk = load i32, ptr %11, align 4, !tbaa !51
  %i.dl = sdiv i32 %.081216.us, %i.dk
  %i.dm = load i32, ptr %i.aj, align 4, !tbaa !78, !noalias !662
  %i.dn = load ptr, ptr %14, align 8, !tbaa !25, !noalias !662
  %i.do = load i64, ptr %i.ak, align 8, !tbaa !26, !noalias !662
  %i.dp = sext i32 %i.dl to i64
  %i.dq = mul i64 %i.do, %i.dp
  %i.dr = load i64, ptr %i.al, align 8, !tbaa !64, !noalias !662 ; 2 uses
  %i.ds = mul i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ds
  %i.du = sext i32 %i.dm to i64
  %i.dv = mul i64 %i.dr, %i.du
  %i.dw = mul i64 %i.dv, %i.dg
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dw
  br i1 %i.cr, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.noexc128.us
  %i.dy = load i32, ptr %4, align 4, !tbaa !51
  %.not89.us = icmp eq i32 %i.dy, 0
  br i1 %.not89.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @_ZN4ncnnL21transpose_pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr %i.dj, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.0215.us, i32 noundef %.sroa.speculated.us)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr %i.dj, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.0215.us, i32 noundef %.sroa.speculated.us)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.noexc128.us
  %i.dz = load i32, ptr %8, align 4, !tbaa !51
  %.not90.us = icmp eq i32 %i.dz, 0
  br i1 %.not90.us, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit91.us

bb.q:                                             ; preds = %bb.p
  %i.ea = load i32, ptr %6, align 4, !tbaa !51
  %i.eb = add nsw i32 %i.ea, %.0215.us
  %i.ec = icmp sge i32 %i.eb, %.fr222
  br label %_ZN4ncnn3MatD2Ev.exit91.us

_ZN4ncnn3MatD2Ev.exit91.us:                       ; preds = %bb.q, %bb.p
  %i.ed = phi i1 [ false, %bb.p ], [ %i.ec, %bb.q ]
  %i.ee = load i32, ptr %7, align 4, !tbaa !51
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib(ptr %i.dj, ptr %i.dx, ptr noundef nonnull align 8 dereferenceable(72) %i.cq, ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.ee, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216.us, i32 noundef %.sroa.speculated192.us, i32 noundef %.0215.us, i32 noundef %.sroa.speculated.us, i1 noundef zeroext %i.ed)
  %i.ef = load i32, ptr %6, align 4, !tbaa !51    ; 2 uses
  %i.eg = add nsw i32 %i.ef, %.0215.us            ; 2 uses
  %i.eh = icmp slt i32 %i.eg, %.fr222
  br i1 %i.eh, label %bb.l, label %._crit_edge.us, !llvm.loop !658

bb.r:                                             ; preds = %._crit_edge.us
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216.us, i32 noundef %.sroa.speculated192.us)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.us
  %i.ei = load i32, ptr %11, align 4, !tbaa !51   ; 2 uses
  %i.ej = add nsw i32 %i.ei, %.081216.us          ; 2 uses
  %i.ek = load i32, ptr %10, align 4, !tbaa !51   ; 2 uses
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph218.split.us, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !659

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit91.us
  %i.em = load i32, ptr %8, align 4, !tbaa !51
  %.not88.us = icmp eq i32 %i.em, 0
  br i1 %.not88.us, label %bb.s, label %bb.r

.loopexit.split.us:                               ; preds = %bb.l
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.w, %bb.s, %bb.j
  %.pre230 = load i32, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.en = add nsw i32 %.082221, 1
  %.not.not = icmp slt i32 %.082221, %.pre230
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph218.split:                                  ; preds = %.lr.ph218, %bb.w
  %i.eo = phi i32 [ %i.eu, %bb.w ], [ %.pre225, %.lr.ph218 ]
  %i.ep = phi i32 [ %i.ew, %bb.w ], [ %i.cg, %.lr.ph218 ]
  %.081216 = phi i32 [ %i.ev, %bb.w ], [ 0, %.lr.ph218 ] ; 4 uses
  %i.eq = sub nsw i32 %i.ep, %.081216
  %.sroa.speculated192 = call i32 @llvm.smin.i32(i32 %i.eo, i32 %i.eq) ; 2 uses
  %i.er = load i32, ptr %7, align 4, !tbaa !51
  %i.es = icmp eq i32 %i.er, 3
  br i1 %i.es, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph218.split
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val134, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216, i32 noundef %.sroa.speculated192)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph218.split
  %i.et = load i32, ptr %8, align 4, !tbaa !51
  %.not88 = icmp eq i32 %i.et, 0
  br i1 %.not88, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216, i32 noundef %.sroa.speculated192)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eu = load i32, ptr %11, align 4, !tbaa !51   ; 2 uses
  %i.ev = add nsw i32 %i.eu, %.081216             ; 2 uses
  %i.ew = load i32, ptr %10, align 4, !tbaa !51   ; 2 uses
  %i.ex = icmp slt i32 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph218.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !659

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.a
  ret void

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ey = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ey) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %7, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %8, i32 noundef %9) unnamed_addr #2 {
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
  %i.f = fmul fast float %i.e, f0x3E2AAAAB
  %i.g = tail call fast float @llvm.sqrt.f32(float %i.f)
  %i.h = fptosi float %i.g to i32
  %10 = sdiv i32 %i.h, 16
  %11 = shl nsw i32 %10, 4
  %.sroa.speculated115 = tail call i32 @llvm.smax.i32(i32 %11, i32 16) ; 6 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !51
  store i32 %.sroa.speculated115, ptr %7, align 4, !tbaa !51
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !51
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = add nuw i32 %i.j, %.sroa.speculated115
  %i.l = udiv i32 %i.k, %.sroa.speculated115      ; 3 uses
  %i.m = add nuw i32 %i.j, %i.l
  %i.n = udiv i32 %i.m, %i.l
  %i.o = add nuw nsw i32 %i.n, 15
  %i.p = and i32 %i.o, -16
  %.sroa.speculated99 = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !51
  %i.q = icmp eq i32 %i.l, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = fmul fast float %i.e, 5.000000e-01
  %i.s = uitofp nneg i32 %.sroa.speculated99 to float
  %i.t = fdiv fast float %i.r, %i.s
  %i.u = fptosi float %i.t to i32
  %12 = sdiv i32 %i.u, 16
  %13 = shl nsw i32 %12, 4
  %.sroa.speculated93 = tail call i32 @llvm.smax.i32(i32 %13, i32 16) ; 2 uses
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !51
  store i32 %.sroa.speculated93, ptr %7, align 4, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.v = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %.0)
  %i.w = load i32, ptr %6, align 4, !tbaa !51
  %i.x = mul nsw i32 %i.w, %.sroa.speculated83    ; 4 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %0, -1                       ; 2 uses
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sdiv i32 %i.aa, %i.x                    ; 2 uses
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 15
  %i.af = sdiv i32 %i.ae, 16
  %i.ag = shl nsw i32 %i.af, 4
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.x)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.x, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !51
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %7, align 4, !tbaa !51    ; 3 uses
  %i.aj = add nsw i32 %1, -1                      ; 2 uses
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai                   ; 2 uses
  %i.am = add i32 %i.aj, %i.al
  %i.an = sdiv i32 %i.am, %i.al
  %i.ao = add nsw i32 %i.an, 15
  %i.ap = sdiv i32 %i.ao, 16
  %i.aq = shl nsw i32 %i.ap, 4
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ai)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = icmp sgt i32 %.0, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %6, align 4, !tbaa !51    ; 2 uses
  %i.at = sdiv i32 %i.as, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1)
  %i.au = add nuw nsw i32 %.sroa.speculated, 15
  %i.av = and i32 %i.au, 2147483632
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.as)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = add nuw nsw i32 %3, 15
  %i.ay = and i32 %i.ax, 2147483632
  store i32 %i.ay, ptr %6, align 4, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = icmp sgt i32 %4, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i32 %4, 15
  %i.bb = and i32 %i.ba, 2147483632
  store i32 %i.bb, ptr %7, align 4, !tbaa !51
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = icmp sgt i32 %5, 0
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = add nuw nsw i32 %5, 15
  %i.be = and i32 %i.bd, 2147483632
  store i32 %i.be, ptr %8, align 4, !tbaa !51
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev() local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn15Gemm_x86_avx51220create_pipeline_int8ERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr noundef %7) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !51     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.u

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !51
  %i.k = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %.not78 = icmp sgt i32 %i.k, %i.j
  br i1 %.not78, label %._crit_edge81, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 584
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 628
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 648
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 608
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 616
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 216
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 332 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 304 ; 6 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !51    ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.split, label %._crit_edge81

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.ae = phi i32 [ %i.ak, %._crit_edge ], [ %i.j, %.lr.ph ]
  %i.af = phi i32 [ %i.al, %._crit_edge ], [ %i.ac, %.lr.ph ] ; 3 uses
  %.03079 = phi i32 [ %i.am, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.ag = load i32, ptr %3, align 4, !tbaa !51
  %i.ah = mul nsw i32 %i.ag, %.03079              ; 7 uses
  %i.ai = icmp sgt i32 %i.af, 0
  br i1 %i.ai, label %.noexc40.lr.ph, label %._crit_edge

.noexc40.lr.ph:                                   ; preds = %.lr.ph.split
  %i.aj = sext i32 %i.ah to i64                   ; 6 uses
  %.pre = load i32, ptr %5, align 4, !tbaa !51
  br label %.noexc40

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %.pre96 = load i32, ptr %i.b, align 4, !tbaa !51
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.ak = phi i32 [ %.pre96, %._crit_edge.loopexit ], [ %i.ae, %.lr.ph.split ] ; 2 uses
  %i.al = phi i32 [ %i.sd, %._crit_edge.loopexit ], [ %i.af, %.lr.ph.split ]
  %i.am = add nsw i32 %.03079, 1
  %.not.not = icmp slt i32 %.03079, %i.ak
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge81, !llvm.loop !663

.noexc40:                                         ; preds = %.noexc40.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.an = phi i32 [ %.pre, %.noexc40.lr.ph ], [ %i.sb, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ao = phi i32 [ %i.af, %.noexc40.lr.ph ], [ %i.sd, %_ZN4ncnn3MatD2Ev.exit ]
  %.077 = phi i32 [ 0, %.noexc40.lr.ph ], [ %i.sc, %_ZN4ncnn3MatD2Ev.exit ] ; 12 uses
  %i.ap = load i32, ptr %6, align 4, !tbaa !51
  %i.aq = sub nsw i32 %i.ap, %i.ah
  %i.ar = load i32, ptr %3, align 4, !tbaa !51    ; 2 uses
  %.sroa.speculated60 = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.aq) ; 16 uses
  %i.as = sub i32 %i.ao, %.077
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.an, i32 %i.as) ; 37 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.at = sdiv i32 %i.ah, %i.ar
  %i.au = load i32, ptr %i.m, align 4, !tbaa !78, !noalias !687 ; 2 uses
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !25, !noalias !687
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !26, !noalias !687
  %i.ax = sext i32 %i.at to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.o, align 8, !tbaa !64, !noalias !687 ; 3 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  %i.bc = load i32, ptr %i.p, align 8, !tbaa !65, !noalias !687
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !24, !noalias !687
  %i.be = sext i32 %i.au to i64                   ; 2 uses
  %i.bf = sdiv i32 %.077, %i.an
end_hunk_1
begin_hunk_2_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.17:bb.a
  br i1 %i.lr, label %bb.t, label %_ZN4ncnn3MatD2Ev.exit89.us

bb.t:                                             ; preds = %bb.s
  %i.ls = load ptr, ptr %i.bg, align 8, !tbaa !24 ; 3 uses
  %.not3.i97.us = icmp eq ptr %i.ls, null
  %i.lt = load ptr, ptr %16, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i97.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.lu = load ptr, ptr %i.ls, align 8, !tbaa !17
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
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
  br i1 %i.mg, label %bb.h, label %._crit_edge.us, !llvm.loop !1255

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit88.us
  %.val.us = load ptr, ptr %14, align 8
  call fastcc void @_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr %.val.us, ptr noundef nonnull readonly align 8 dereferenceable(72) %12, ptr noundef nonnull readonly align 8 dereferenceable(72) %13, i32 noundef %i.bo, i32 noundef %i.ch, i32 noundef %.sroa.speculated163, i32 noundef %.083187.us, i32 noundef %.sroa.speculated159.us, ptr noundef nonnull readonly align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.br, float noundef nofpclass(nan inf) %i.bs, i32 noundef %i.bq)
  %i.mh = add nsw i32 %.083187.us, %i.bn          ; 2 uses
  %i.mi = load i32, ptr %6, align 4, !tbaa !51    ; 2 uses
  %i.mj = icmp slt i32 %i.mh, %i.mi
  br i1 %i.mj, label %.lr.ph.us, label %._crit_edge189, !llvm.loop !1256

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
  br i1 %i.ne, label %.lr.ph188.split, label %._crit_edge189, !llvm.loop !1256

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
  %10 = sdiv i32 %i.h, 16
  %11 = shl nsw i32 %10, 4
  %.sroa.speculated115 = tail call i32 @llvm.smax.i32(i32 %11, i32 16) ; 6 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !51
  store i32 %.sroa.speculated115, ptr %7, align 4, !tbaa !51
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !51
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = add nuw i32 %i.j, %.sroa.speculated115
  %i.l = udiv i32 %i.k, %.sroa.speculated115      ; 3 uses
  %i.m = add nuw i32 %i.j, %i.l
  %i.n = udiv i32 %i.m, %i.l
  %i.o = add nuw nsw i32 %i.n, 15
  %i.p = and i32 %i.o, -16
  %.sroa.speculated99 = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !51
  %i.q = icmp eq i32 %i.l, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = fmul fast float %i.e, 2.500000e-01
  %i.s = uitofp nneg i32 %.sroa.speculated99 to float
  %i.t = fdiv fast float %i.r, %i.s
  %i.u = fptosi float %i.t to i32
  %12 = sdiv i32 %i.u, 16
  %13 = shl nsw i32 %12, 4
  %.sroa.speculated93 = tail call i32 @llvm.smax.i32(i32 %13, i32 16) ; 2 uses
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !51
  store i32 %.sroa.speculated93, ptr %7, align 4, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.v = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %.0)
  %i.w = load i32, ptr %6, align 4, !tbaa !51
  %i.x = mul nsw i32 %i.w, %.sroa.speculated83    ; 4 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %0, -1                       ; 2 uses
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sdiv i32 %i.aa, %i.x                    ; 2 uses
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 15
  %i.af = sdiv i32 %i.ae, 16
  %i.ag = shl nsw i32 %i.af, 4
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.x)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.x, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !51
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %7, align 4, !tbaa !51    ; 3 uses
  %i.aj = add nsw i32 %1, -1                      ; 2 uses
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai                   ; 2 uses
  %i.am = add i32 %i.aj, %i.al
  %i.an = sdiv i32 %i.am, %i.al
  %i.ao = add nsw i32 %i.an, 15
  %i.ap = sdiv i32 %i.ao, 16
  %i.aq = shl nsw i32 %i.ap, 4
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ai)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = icmp sgt i32 %.0, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %6, align 4, !tbaa !51    ; 2 uses
  %i.at = sdiv i32 %i.as, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1)
  %i.au = add nuw nsw i32 %.sroa.speculated, 15
  %i.av = and i32 %i.au, 2147483632
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.as)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = add nuw nsw i32 %3, 15
  %i.ay = and i32 %i.ax, 2147483632
  store i32 %i.ay, ptr %6, align 4, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = icmp sgt i32 %4, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i32 %4, 15
  %i.bb = and i32 %i.ba, 2147483632
  store i32 %i.bb, ptr %7, align 4, !tbaa !51
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = icmp sgt i32 %5, 0
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = add nuw nsw i32 %5, 15
  %i.be = and i32 %i.bd, 2147483632
  store i32 %i.be, ptr %8, align 4, !tbaa !51
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
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !78, !noalias !1266 ; 2 uses
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !25, !noalias !1266
  %i.am = load i64, ptr %i.n, align 8, !tbaa !26, !noalias !1266
  %i.an = sext i32 %i.aa to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !64, !noalias !1266 ; 3 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = load i32, ptr %i.p, align 8, !tbaa !65, !noalias !1266
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !24, !noalias !1266
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
  store i64 %i.au, ptr %i.x, align 8, !tbaa !26, !alias.scope !1267
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
end_hunk_2
begin_hunk_3_@_ZN4ncnnL14gemm_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiffiiiiiRKNS_6OptionE.omp_outlined.24:bb.a
  %.not3.i89.us = icmp eq ptr %i.eq, null
  %i.er = load ptr, ptr %21, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i89.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !17
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  invoke void %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef %i.er)
          to label %_ZN4ncnn3MatD2Ev.exit81.us unwind label %.split.us, !inline_history !0

bb.q:                                             ; preds = %bb.o
  %.not.i103.us = icmp eq ptr %i.er, null
  br i1 %.not.i103.us, label %_ZN4ncnn3MatD2Ev.exit81.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.er) #9
  br label %_ZN4ncnn3MatD2Ev.exit81.us

_ZN4ncnn3MatD2Ev.exit81.us:                       ; preds = %bb.r, %bb.q, %bb.p, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #9
  %i.ev = load ptr, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %.not.i92.us = icmp eq ptr %i.ev, null
  br i1 %.not.i92.us, label %_ZN4ncnn3MatD2Ev.exit80.us, label %bb.s

bb.s:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit81.us
  %i.ew = atomicrmw add ptr %i.ev, i32 -1 acq_rel, align 4
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.t, label %_ZN4ncnn3MatD2Ev.exit80.us

bb.t:                                             ; preds = %bb.s
  %i.ey = load ptr, ptr %i.ao, align 8, !tbaa !24 ; 3 uses
  %.not3.i93.us = icmp eq ptr %i.ey, null
  %i.ez = load ptr, ptr %20, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i93.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  invoke void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef %i.ez)
          to label %_ZN4ncnn3MatD2Ev.exit80.us unwind label %.split160.us, !inline_history !0

bb.v:                                             ; preds = %bb.t
  %.not.i101.us = icmp eq ptr %i.ez, null
  br i1 %.not.i101.us, label %_ZN4ncnn3MatD2Ev.exit80.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.ez) #9
  br label %_ZN4ncnn3MatD2Ev.exit80.us

_ZN4ncnn3MatD2Ev.exit80.us:                       ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %_ZN4ncnn3MatD2Ev.exit81.us
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #9
  %i.fd = load i32, ptr %9, align 4, !tbaa !51    ; 2 uses
  %i.fe = add nsw i32 %i.fd, %.0154.us            ; 2 uses
  %i.ff = icmp slt i32 %i.fe, %i.bu
  br i1 %i.ff, label %bb.h, label %._crit_edge.us, !llvm.loop !1710

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit80.us
  %i.fg = load i32, ptr %14, align 4, !tbaa !51
  %i.fh = load float, ptr %15, align 4, !tbaa !69
  %i.fi = load float, ptr %16, align 4, !tbaa !69
  %i.fj = load i32, ptr %17, align 4, !tbaa !51
  %i.fk = load i32, ptr %18, align 4, !tbaa !51
  %.val.us = load ptr, ptr %19, align 8
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %.val.us, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.fg, i32 noundef %i.bf, i32 noundef %.sroa.speculated151, i32 noundef %.073155.us, i32 noundef %.sroa.speculated147.us, float noundef nofpclass(nan inf) %i.fh, float noundef nofpclass(nan inf) %i.fi, i32 noundef %i.fj, i32 noundef %i.fk)
  %i.fl = load i32, ptr %8, align 4, !tbaa !51    ; 2 uses
  %i.fm = add nsw i32 %i.fl, %.073155.us          ; 2 uses
  %i.fn = load i32, ptr %7, align 4, !tbaa !51    ; 2 uses
  %i.fo = icmp slt i32 %i.fm, %i.fn
  br i1 %i.fo, label %.lr.ph.us, label %._crit_edge157, !llvm.loop !1711

.loopexit.split.us:                               ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ae

.split.us:                                        ; preds = %bb.p
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #30
  unreachable

.split160.us:                                     ; preds = %bb.u
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #30
  unreachable

._crit_edge157:                                   ; preds = %.lr.ph156.split, %._crit_edge.us, %_ZN4ncnn3Mat7channelEi.exit113
  %i.ft = load ptr, ptr %i.v, align 8, !tbaa !23  ; 2 uses
  %.not.i96 = icmp eq ptr %i.ft, null
  br i1 %.not.i96, label %_ZN4ncnn3MatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge157
  %i.fu = atomicrmw add ptr %i.ft, i32 -1 acq_rel, align 4
  %i.fv = icmp eq i32 %i.fu, 1
  br i1 %i.fv, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.fw = load ptr, ptr %i.y, align 8, !tbaa !24  ; 3 uses
  %.not3.i97 = icmp eq ptr %i.fw, null
  %i.fx = load ptr, ptr %19, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i97, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !17
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  invoke void %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef %i.fx)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ac, !inline_history !0

bb.aa:                                            ; preds = %bb.y
  %.not.i100 = icmp eq ptr %i.fx, null
  br i1 %.not.i100, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.fx) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.x, %._crit_edge157, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #9
  %i.gd = add nsw i32 %.074163, 1
  %i.ge = load i32, ptr %i.b, align 4, !tbaa !51
  %.not.not = icmp slt i32 %.074163, %i.ge
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph156.split:                                  ; preds = %.lr.ph156, %.lr.ph156.split
  %i.gf = phi i32 [ %i.gn, %.lr.ph156.split ], [ %.pre165, %.lr.ph156 ]
  %i.gg = phi i32 [ %i.gp, %.lr.ph156.split ], [ %i.ct, %.lr.ph156 ]
  %.073155 = phi i32 [ %i.go, %.lr.ph156.split ], [ 0, %.lr.ph156 ] ; 3 uses
  %i.gh = sub nsw i32 %i.gg, %.073155
  %.sroa.speculated147 = call i32 @llvm.smin.i32(i32 %i.gf, i32 %i.gh)
  %i.gi = load i32, ptr %14, align 4, !tbaa !51
  %i.gj = load float, ptr %15, align 4, !tbaa !69
  %i.gk = load float, ptr %16, align 4, !tbaa !69
  %i.gl = load i32, ptr %17, align 4, !tbaa !51
  %i.gm = load i32, ptr %18, align 4, !tbaa !51
  %.val = load ptr, ptr %19, align 8
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %.val, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.gi, i32 noundef %i.bf, i32 noundef %.sroa.speculated151, i32 noundef %.073155, i32 noundef %.sroa.speculated147, float noundef nofpclass(nan inf) %i.gj, float noundef nofpclass(nan inf) %i.gk, i32 noundef %i.gl, i32 noundef %i.gm)
  %i.gn = load i32, ptr %8, align 4, !tbaa !51    ; 2 uses
  %i.go = add nsw i32 %i.gn, %.073155             ; 2 uses
  %i.gp = load i32, ptr %7, align 4, !tbaa !51    ; 2 uses
  %i.gq = icmp slt i32 %i.go, %i.gp
  br i1 %i.gq, label %.lr.ph156.split, label %._crit_edge157, !llvm.loop !1711

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %bb.a
  ret void

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.gr = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.gr) #30
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.copysign.v8f32(<8 x float>, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.copysign.v16f32(<16 x float>, <16 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fabs.v16f32(<16 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v16f32.v16p0(<16 x float>, <16 x ptr>, <16 x i1>) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.round.v16f32(<16 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.smin.v32i32(<32 x i32>, <32 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.smax.v32i32(<32 x i32>, <32 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.round.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.smax.v32i8(<32 x i8>, <32 x i8>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v13f32.p0(<13 x float>, ptr captures(none), <13 x i1>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v13i16.p0(<13 x i16>, ptr captures(none), <13 x i1>) #26

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress norecurse uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { cold nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = distinct !{null}
!3 = distinct !{!3, !70}
!4 = distinct !{!4, !70}
!5 = distinct !{!5, !70}
!6 = distinct !{!6, !70}
!7 = !{i32 7, !"openmp", i32 51}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"vtable pointer", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"any pointer", !12, i64 0}
!19 = !{!"p1 int", !18, i64 0}
!20 = !{!"long", !12, i64 0}
!21 = !{!"p1 _ZTSN4ncnn9AllocatorE", !18, i64 0}
!22 = !{!"_ZTSN4ncnn3MatE", !18, i64 0, !19, i64 8, !20, i64 16, !13, i64 24, !21, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !20, i64 64}
!23 = !{!22, !19, i64 8}
!24 = !{!22, !21, i64 32}
!25 = !{!22, !18, i64 0}
!26 = !{!22, !20, i64 64}
!27 = !{!"bool", !12, i64 0}
!28 = !{!"p1 omnipotent char", !18, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !20, i64 8, !12, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIiSaIiEE", !33, i64 0}
!35 = !{!"p1 _ZTSN4ncnn3MatE", !18, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !38, i64 0}
!40 = !{!"_ZTSN4ncnn5LayerE", !27, i64 8, !27, i64 9, !27, i64 10, !27, i64 11, !27, i64 12, !27, i64 13, !27, i64 14, !27, i64 15, !27, i64 16, !27, i64 17, !27, i64 18, !27, i64 19, !27, i64 20, !27, i64 21, !27, i64 22, !27, i64 23, !27, i64 24, !27, i64 25, !27, i64 26, !27, i64 27, !13, i64 28, !18, i64 32, !13, i64 40, !30, i64 48, !30, i64 80, !34, i64 112, !34, i64 136, !39, i64 160, !39, i64 184}
!41 = !{!"float", !12, i64 0}
!42 = !{!"_ZTSN4ncnn4GemmE", !40, i64 0, !41, i64 208, !41, i64 212, !13, i64 216, !13, i64 220, !13, i64 224, !13, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !13, i64 248, !13, i64 252, !13, i64 256, !13, i64 260, !13, i64 264, !13, i64 268, !13, i64 272, !13, i64 276, !13, i64 280, !22, i64 288, !22, i64 360, !22, i64 432, !22, i64 504, !41, i64 576}
!43 = !{!42, !13, i64 268}
!44 = !{!40, !27, i64 12}
!45 = !{!"_ZTSN4ncnn6OptionE", !27, i64 0, !27, i64 1, !27, i64 2, !27, i64 3, !13, i64 4, !21, i64 8, !21, i64 16, !13, i64 24, !27, i64 28, !27, i64 29, !27, i64 30, !27, i64 31, !27, i64 32, !27, i64 33, !27, i64 34, !27, i64 35, !27, i64 36, !27, i64 37, !27, i64 38, !27, i64 39, !13, i64 40, !27, i64 44, !27, i64 45, !27, i64 46, !27, i64 47, !12, i64 48, !27, i64 49, !27, i64 50, !27, i64 51, !27, i64 52, !27, i64 53, !27, i64 54, !27, i64 55, !27, i64 56, !27, i64 57, !27, i64 58, !27, i64 59, !27, i64 60, !27, i64 61, !27, i64 62, !27, i64 63}
!46 = !{!45, !27, i64 32}
!47 = !{i8 0, i8 2}
!48 = !{}
end_hunk_3
