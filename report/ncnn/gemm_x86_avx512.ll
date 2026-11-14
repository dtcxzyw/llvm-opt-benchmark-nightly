Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 212
loop-unroll.NumUnrolled: 216
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
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !78, !noalias !141
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !25, !noalias !141
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !26, !noalias !141
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !64, !noalias !141 ; 2 uses
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
  store i64 %spec.select, ptr %i.x, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %.noexc130, %bb.h
  %.val134 = phi ptr [ %i.bt, %.noexc130 ], [ null, %bb.h ] ; 5 uses
  %i.cg = load i32, ptr %10, align 4, !tbaa !51   ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph218, label %_ZN4ncnn3MatD2Ev.exit

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
          to label %.noexc128.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.en) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.w, %bb.s, %bb.j
  %.pre230 = load i32, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.eo = add nsw i32 %.082221, 1
  %.not.not = icmp slt i32 %.082221, %.pre230
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph218.split:                                  ; preds = %.lr.ph218, %bb.w
  %i.ep = phi i32 [ %i.ev, %bb.w ], [ %.pre225, %.lr.ph218 ]
  %i.eq = phi i32 [ %i.ex, %bb.w ], [ %i.cg, %.lr.ph218 ]
  %.081216 = phi i32 [ %i.ew, %bb.w ], [ 0, %.lr.ph218 ] ; 4 uses
  %i.er = sub nsw i32 %i.eq, %.081216
  %.sroa.speculated192 = call i32 @llvm.smin.i32(i32 %i.ep, i32 %i.er) ; 2 uses
  %i.es = load i32, ptr %7, align 4, !tbaa !51
  %i.et = icmp eq i32 %i.es, 3
  br i1 %i.et, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph218.split
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val134, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216, i32 noundef %.sroa.speculated192)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph218.split
  %i.eu = load i32, ptr %8, align 4, !tbaa !51
  %.not88 = icmp eq i32 %i.eu, 0
  br i1 %.not88, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216, i32 noundef %.sroa.speculated192)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ev = load i32, ptr %11, align 4, !tbaa !51   ; 2 uses
  %i.ew = add nsw i32 %i.ev, %.081216             ; 2 uses
  %i.ex = load i32, ptr %10, align 4, !tbaa !51   ; 2 uses
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph218.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !659

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.a
  ret void
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
begin_hunk_2_@_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  br label %.thread3386

bb.gz:                                            ; preds = %bb.gy
  %i.dlc = shufflevector <8 x float> %.52764, <8 x float> %.52758, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dld = shufflevector <8 x float> %.52764, <8 x float> %.52758, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.dlc, ptr %.1343633798, align 1, !tbaa !90
  %i.dle = getelementptr inbounds nuw i8, ptr %.1343633798, i64 %.idx4627
  store <8 x float> %i.dld, ptr %i.dle, align 1, !tbaa !90
  %i.dlf = getelementptr inbounds nuw i8, ptr %.1343633798, i64 32
  br label %.thread3386

bb.ha:                                            ; preds = %bb.gy
  tail call void @llvm.x86.avx512.mask.scattersiv8.sf(ptr %.1343633798, <8 x i1> splat (i1 true), <8 x i32> %i.cu, <8 x float> %.52764, i32 4)
  %i.dlg = getelementptr inbounds nuw i8, ptr %.1343633798, i64 4
  tail call void @llvm.x86.avx512.mask.scattersiv8.sf(ptr nonnull %i.dlg, <8 x i1> splat (i1 true), <8 x i32> %i.cu, <8 x float> %.52758, i32 4)
  %i.dlh = getelementptr inbounds nuw i8, ptr %.1343633798, i64 8
  br label %.thread3386

.thread3386:                                      ; preds = %bb.gy, %bb.gz, %.thread3383, %bb.ha, %bb.gx
  %.164366 = phi ptr [ %i.dkz, %bb.gx ], [ %i.dlh, %bb.ha ], [ %.1343633798, %bb.gy ], [ %i.dlb, %.thread3383 ], [ %i.dlf, %bb.gz ] ; 2 uses
  %i.dli = add nuw nsw i32 %.343813797, 2         ; 3 uses
  %i.dlj = or disjoint i32 %i.dli, 1
  %i.dlk = icmp slt i32 %i.dlj, %6
  br i1 %i.dlk, label %.lr.ph3801, label %.preheader3697, !llvm.loop !924

.lr.ph3812:                                       ; preds = %.preheader3697, %.thread3402
  %.443811 = phi ptr [ %.47, %.thread3402 ], [ %.40.lcssa, %.preheader3697 ] ; 11 uses
  %.1142243810 = phi ptr [ %i.dln, %.thread3402 ], [ %.104223.lcssa, %.preheader3697 ] ; 2 uses
  %.1743673809 = phi ptr [ %.204370, %.thread3402 ], [ %.134363.lcssa, %.preheader3697 ] ; 10 uses
  %.443823808 = phi i32 [ %i.dmn, %.thread3402 ], [ %.34381.lcssa, %.preheader3697 ]
  %.1529633807 = phi <8 x float> [ %.182966, %.thread3402 ], [ %.112959.lcssa, %.preheader3697 ] ; 6 uses
  %i.dll = load <8 x i32>, ptr %.1142243810, align 32, !tbaa !90
  %i.dlm = sitofp fast <8 x i32> %i.dll to <8 x float>
  %i.dln = getelementptr inbounds nuw i8, ptr %.1142243810, i64 32 ; 2 uses
  %i.dlo = fmul fast <8 x float> %i.bxz, %i.dlm   ; 6 uses
  %.not4562 = icmp eq ptr %.443811, null
  br i1 %.not4562, label %.thread3395, label %bb.hb

bb.hb:                                            ; preds = %.lr.ph3812
  br i1 %i.bu, label %.thread3388, label %bb.hc

.thread3388:                                      ; preds = %bb.hb
  %i.dlp = fadd fast <8 x float> %i.dlo, %.1529633807
  br label %.thread3395

bb.hc:                                            ; preds = %bb.hb
  br i1 %or.cond13, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.dlq = fadd fast <8 x float> %i.dlo, %.1529633807
  br label %.thread3395

bb.he:                                            ; preds = %bb.hc
  switch i32 %2, label %.thread3395 [
    i32 3, label %bb.hf
    i32 4, label %bb.hk
  ]

bb.hf:                                            ; preds = %bb.he
  switch i32 %i.v, label %bb.hi [
    i32 8, label %bb.hg
    i32 4, label %bb.hh
  ]

bb.hg:                                            ; preds = %bb.hf
  %i.dlr = load <8 x float>, ptr %.443811, align 1, !tbaa !90
  br label %bb.hj

bb.hh:                                            ; preds = %bb.hf
  %i.dls = load <4 x float>, ptr %.443811, align 1, !tbaa !90
  %i.dlt = getelementptr inbounds nuw i8, ptr %.443811, i64 %.idx4617
  %i.dlu = load <4 x float>, ptr %i.dlt, align 1, !tbaa !90
  %i.dlv = shufflevector <4 x float> %i.dls, <4 x float> %i.dlu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.hj

bb.hi:                                            ; preds = %bb.hf
  %i.dlw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %.443811, <8 x i32> %i.cq, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hh, %bb.hi, %bb.hg
  %.sink4177.a = phi i64 [ 16, %bb.hh ], [ 4, %bb.hi ], [ 32, %bb.hg ]
  %.162964 = phi nsz <8 x float> [ %i.dlv, %bb.hh ], [ %i.dlw, %bb.hi ], [ %i.dlr, %bb.hg ] ; 2 uses
  %i.dlx = getelementptr inbounds nuw i8, ptr %.443811, i64 %.sink4177.a
  %i.dly = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.162964, <8 x float> nofpclass(nan inf) %i.bz, <8 x float> nofpclass(nan inf) %i.dlo)
  br label %.thread3395

bb.hk:                                            ; preds = %bb.he
  %i.dlz = load float, ptr %.443811, align 4, !tbaa !69
  %i.dma = fmul fast float %i.dlz, %9
  %i.dmb = insertelement <8 x float> poison, float %i.dma, i64 0
  %i.dmc = shufflevector <8 x float> %i.dmb, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dmd = fadd fast <8 x float> %i.dmc, %i.dlo
  %i.dme = getelementptr inbounds nuw i8, ptr %.443811, i64 4
  br label %.thread3395

.thread3395:                                      ; preds = %bb.he, %bb.hd, %.thread3388, %bb.hj, %bb.hk, %.lr.ph3812
  %.182966 = phi nsz <8 x float> [ %.1529633807, %.lr.ph3812 ], [ %i.dmc, %bb.hk ], [ %.1529633807, %bb.he ], [ %.162964, %bb.hj ], [ %.1529633807, %.thread3388 ], [ %.1529633807, %bb.hd ]
  %.32750 = phi nsz <8 x float> [ %i.dlo, %.lr.ph3812 ], [ %i.dmd, %bb.hk ], [ %i.dlo, %bb.he ], [ %i.dly, %bb.hj ], [ %i.dlp, %.thread3388 ], [ %i.dlq, %bb.hd ]
  %.47 = phi ptr [ null, %.lr.ph3812 ], [ %i.dme, %bb.hk ], [ %.443811, %bb.he ], [ %i.dlx, %bb.hj ], [ %.443811, %.thread3388 ], [ %.443811, %bb.hd ] ; 2 uses
  %i.dmf = fmul fast <8 x float> %.32750, %i.cm   ; 5 uses
  br i1 %.not4560, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %.thread3395
  store <8 x float> %i.dmf, ptr %.1743673809, align 1, !tbaa !90
  %i.dmg = getelementptr inbounds nuw [4 x i8], ptr %.1743673809, i64 %i.k
  br label %.thread3402

bb.hm:                                            ; preds = %.thread3395
  switch i32 %i.b, label %.thread3402 [
    i32 8, label %.thread3399
    i32 4, label %bb.hn
    i32 1, label %bb.ho
  ]

.thread3399:                                      ; preds = %bb.hm
  store <8 x float> %i.dmf, ptr %.1743673809, align 1, !tbaa !90
  %i.dmh = getelementptr inbounds nuw i8, ptr %.1743673809, i64 32
  br label %.thread3402

bb.hn:                                            ; preds = %bb.hm
  %i.dmi = shufflevector <8 x float> %i.dmf, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.dmi, ptr %.1743673809, align 16, !tbaa !90
  %i.dmj = getelementptr inbounds nuw i8, ptr %.1743673809, i64 %.idx4627
  %i.dmk = shufflevector <8 x float> %i.dmf, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.dmk, ptr %i.dmj, align 16, !tbaa !90
  %i.dml = getelementptr inbounds nuw i8, ptr %.1743673809, i64 16
  br label %.thread3402

bb.ho:                                            ; preds = %bb.hm
  tail call void @llvm.x86.avx512.mask.scattersiv8.sf(ptr %.1743673809, <8 x i1> splat (i1 true), <8 x i32> %i.cu, <8 x float> %i.dmf, i32 4)
  %i.dmm = getelementptr inbounds nuw i8, ptr %.1743673809, i64 4
  br label %.thread3402

.thread3402:                                      ; preds = %bb.hm, %bb.hn, %.thread3399, %bb.ho, %bb.hl
  %.204370 = phi ptr [ %i.dmg, %bb.hl ], [ %i.dmm, %bb.ho ], [ %.1743673809, %bb.hm ], [ %i.dmh, %.thread3399 ], [ %i.dml, %bb.hn ]
  %i.dmn = add i32 %.443823808, 1                 ; 2 uses
  %exitcond4046.not = icmp eq i32 %i.dmn, %6
  br i1 %exitcond4046.not, label %._crit_edge3813, label %.lr.ph3812, !llvm.loop !925

._crit_edge3813:                                  ; preds = %.thread3402, %.preheader3697
  %.114224.lcssa = phi ptr [ %.104223.lcssa, %.preheader3697 ], [ %i.dln, %.thread3402 ] ; 2 uses
  %.44.lcssa = phi ptr [ %.40.lcssa, %.preheader3697 ], [ %.47, %.thread3402 ] ; 2 uses
  %indvars.iv.next4048 = add nuw nsw i64 %indvars.iv4047, 8 ; 3 uses
  %i.dmo = icmp slt i64 %indvars.iv.next4048, %invariant.op4153.a
  br i1 %i.dmo, label %bb.dn, label %.preheader3696.loopexit, !llvm.loop !926

.preheader3691.loopexit:                          ; preds = %._crit_edge3872
  %i.dmp = trunc nsw i64 %indvars.iv.next4052 to i32
  br label %.preheader3691

.preheader3691:                                   ; preds = %.preheader3691.loopexit, %.preheader3696
  %.24245.lcssa = phi i32 [ %.14244.lcssa, %.preheader3696 ], [ %i.dmp, %.preheader3691.loopexit ] ; 3 uses
  %.124225.lcssa = phi ptr [ %.64219.lcssa, %.preheader3696 ], [ %.174230.lcssa, %.preheader3691.loopexit ] ; 2 uses
  %.48.lcssa = phi ptr [ %.24.lcssa, %.preheader3696 ], [ %.68.lcssa, %.preheader3691.loopexit ] ; 2 uses
  %i.dmq = or disjoint i32 %.24245.lcssa, 1
  %i.dmr = icmp slt i32 %i.dmq, %4
  br i1 %i.dmr, label %.lr.ph3939, label %.preheader3686

.lr.ph3939:                                       ; preds = %.preheader3691
  %.not4489 = icmp eq i32 %10, 0                  ; 8 uses
  %i.dms = sext i32 %5 to i64                     ; 4 uses
  %i.dmt = mul i64 %i.k, %i.dms
  %i.dmu = icmp eq i32 %2, 0                      ; 6 uses
  %i.dmv = add i32 %2, -1
  %or.cond37 = icmp ult i32 %i.dmv, 2             ; 6 uses
  %i.dmw = sext i32 %3 to i64                     ; 3 uses
  %i.dmx = icmp sgt i32 %6, 15
  %i.dmy = insertelement <16 x float> poison, float %9, i64 0
  %i.dmz = shufflevector <16 x float> %i.dmy, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dna = fcmp fast oeq float %9, 1.000000e+00   ; 5 uses
  %i.dnb = fcmp fast une float %8, 1.000000e+00   ; 3 uses
  %i.dnc = insertelement <16 x float> poison, float %8, i64 0
  %i.dnd = shufflevector <16 x float> %i.dnc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dne = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.dnf = icmp eq i32 %i.dne, 1
  %i.dng = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %.idx4500 = shl i64 %i.k, 5                     ; 7 uses
  %.idx4501 = shl i64 %i.k, 4                     ; 6 uses
  %.idx4503 = mul i64 %i.k, 48
  %i.dnh = icmp eq i32 %i.b, 1
  %i.dni = trunc i64 %i.k to i32
  %i.dnj = insertelement <16 x i32> poison, i32 %i.dni, i64 0
  %i.dnk = shufflevector <16 x i32> %i.dnj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dnl = mul <16 x i32> %i.dnk, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %.idx4504 = shl i64 %i.k, 6                     ; 7 uses
  %i.dnm = insertelement <4 x float> poison, float %9, i64 0
  %i.dnn = shufflevector <4 x float> %i.dnm, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.dno = insertelement <4 x float> poison, float %8, i64 0
  %i.dnp = shufflevector <4 x float> %i.dno, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx3675 = shl i64 %i.k, 3                     ; 3 uses
  %.idx3676 = mul i64 %i.k, 12                    ; 2 uses
  %.idx3678 = mul i64 %i.k, 20
  %.idx3679 = mul i64 %i.k, 24
  %.idx3680 = mul i64 %i.k, 28
  %i.dnq = sext i32 %.24245.lcssa to i64
  %i.dnr = sext i32 %4 to i64
  %i.dns = sext i32 %i.b to i64
  %i.dnt = select ninf nsz i1 %i.dnb, <16 x float> %i.dnd, <16 x float> splat (float 1.000000e+00) ; 2 uses
  %i.dnu = select ninf nsz i1 %i.dnb, <4 x float> %i.dnp, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %invariant.op4155 = add nsw i64 %i.dnr, -1
  %11 = insertelement <2 x float> poison, float %9, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %..idx3675 = select i1 %.not4489, i64 8, i64 %.idx3675
  %13 = insertelement <2 x i1> poison, i1 %or.cond37, i64 0
  %14 = shufflevector <2 x i1> %13, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.ls

bb.hp:                                            ; preds = %.lr.ph3878, %._crit_edge3872
  %indvars.iv4051 = phi i64 [ %i.bxe, %.lr.ph3878 ], [ %indvars.iv.next4052, %._crit_edge3872 ] ; 6 uses
  %.483877 = phi ptr [ %.24.lcssa, %.lr.ph3878 ], [ %.68.lcssa, %._crit_edge3872 ] ; 4 uses
  %.1242253876 = phi ptr [ %.64219.lcssa, %.lr.ph3878 ], [ %.174230.lcssa, %._crit_edge3872 ] ; 2 uses
  %i.dnv = load ptr, ptr %1, align 8, !tbaa !25   ; 2 uses
  br i1 %.not4505, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.dnw = getelementptr inbounds nuw [4 x i8], ptr %i.dnv, i64 %i.bwa
  %i.dnx = add nsw i64 %indvars.iv4051, %i.bwd
  %i.dny = mul nsw i64 %i.dnx, %i.bxg
  %i.dnz = getelementptr inbounds [4 x i8], ptr %i.dnw, i64 %i.dny
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hp
  %i.doa = add nsw i64 %indvars.iv4051, %i.bwd
  %i.dob = mul i64 %i.k, %i.doa
  %i.doc = getelementptr inbounds nuw [4 x i8], ptr %i.dnv, i64 %i.dob
  %i.dod = getelementptr inbounds [4 x i8], ptr %i.doc, i64 %i.bwc
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.04390 = phi ptr [ %i.dnz, %bb.hq ], [ %i.dod, %bb.hr ] ; 2 uses
  %i.doe = load ptr, ptr %7, align 8, !tbaa !25
  %i.dof = getelementptr inbounds [4 x i8], ptr %i.doe, i64 %i.bwd
  %i.dog = getelementptr inbounds nuw [4 x i8], ptr %i.dof, i64 %indvars.iv4051
  %i.doh = load <4 x float>, ptr %i.dog, align 16, !tbaa !90 ; 16 uses
  %i.doi = shufflevector <4 x float> %i.doh, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %.not4506 = icmp eq ptr %.483877, null
  br i1 %.not4506, label %.thread3416, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  br i1 %i.bwe, label %.thread3404, label %bb.hu

.thread3404:                                      ; preds = %bb.ht
  %i.doj = load float, ptr %.483877, align 4, !tbaa !69
  %i.dok = fmul fast float %i.doj, %9             ; 2 uses
  %i.dol = insertelement <4 x float> poison, float %i.dok, i64 0
  %i.dom = shufflevector <4 x float> %i.dol, <4 x float> poison, <4 x i32> zeroinitializer
  %i.don = insertelement <16 x float> poison, float %i.dok, i64 0
  %i.doo = shufflevector <16 x float> %i.don, <16 x float> poison, <16 x i32> zeroinitializer
  br label %.thread3416

bb.hu:                                            ; preds = %bb.ht
  br i1 %or.cond25, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.dop = load ptr, ptr %0, align 8, !tbaa !25
  %i.doq = getelementptr inbounds [4 x i8], ptr %i.dop, i64 %i.bwd
  %i.dor = getelementptr inbounds nuw [4 x i8], ptr %i.doq, i64 %indvars.iv4051 ; 2 uses
  %i.dos = load <4 x float>, ptr %i.dor, align 1, !tbaa !90
  %i.dot = fmul fast <4 x float> %i.dos, %i.bwj   ; 2 uses
  %i.dou = shufflevector <4 x float> %i.dot, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %.thread3416

bb.hw:                                            ; preds = %bb.hu
  switch i32 %2, label %.thread3416 [
    i32 3, label %bb.hx
    i32 4, label %bb.hy
  ]

bb.hx:                                            ; preds = %bb.hw
  %i.dov = load ptr, ptr %0, align 8, !tbaa !25
  %i.dow = add nsw i64 %indvars.iv4051, %i.bwd
  %i.dox = mul i64 %i.t, %i.dow
  %i.doy = getelementptr inbounds nuw [4 x i8], ptr %i.dov, i64 %i.dox
  %i.doz = getelementptr inbounds [4 x i8], ptr %i.doy, i64 %i.bwh
  br label %.thread3416

bb.hy:                                            ; preds = %bb.hw
  %i.dpa = load ptr, ptr %0, align 8, !tbaa !25
  %i.dpb = getelementptr inbounds [4 x i8], ptr %i.dpa, i64 %i.bvz
  br label %.thread3416

.thread3416:                                      ; preds = %bb.hw, %bb.hv, %.thread3404, %bb.hx, %bb.hy, %bb.hs
  %.22726 = phi nsz <4 x float> [ zeroinitializer, %bb.hs ], [ zeroinitializer, %bb.hy ], [ zeroinitializer, %bb.hw ], [ zeroinitializer, %bb.hx ], [ %i.dom, %.thread3404 ], [ %i.dot, %bb.hv ] ; 2 uses
  %.24408 = phi nsz <16 x float> [ zeroinitializer, %bb.hs ], [ zeroinitializer, %bb.hy ], [ zeroinitializer, %bb.hw ], [ zeroinitializer, %bb.hx ], [ %i.doo, %.thread3404 ], [ %i.dou, %bb.hv ]
  %.51 = phi ptr [ null, %bb.hs ], [ %i.dpb, %bb.hy ], [ %.483877, %bb.hw ], [ %i.doz, %bb.hx ], [ %.483877, %.thread3404 ], [ %i.dor, %bb.hv ] ; 2 uses
  br i1 %i.bwk, label %.lr.ph3828, label %.preheader3695

.preheader3695:                                   ; preds = %bb.iu, %.thread3416
  %.04413.lcssa = phi i32 [ 0, %.thread3416 ], [ %i.bxd, %bb.iu ] ; 3 uses
  %.14391.lcssa = phi ptr [ %.04390, %.thread3416 ], [ %.34393, %bb.iu ] ; 2 uses
  %.134226.lcssa = phi ptr [ %.1242253876, %.thread3416 ], [ %i.dyo, %bb.iu ] ; 2 uses
  %.52.lcssa = phi ptr [ %.51, %.thread3416 ], [ %.55, %bb.iu ] ; 2 uses
  %i.dpc = or disjoint i32 %.04413.lcssa, 7
  %i.dpd = icmp slt i32 %i.dpc, %6
  br i1 %i.dpd, label %.lr.ph3838, label %.preheader3694

.lr.ph3828:                                       ; preds = %.thread3416, %bb.iu
  %.523827 = phi ptr [ %.55, %bb.iu ], [ %.51, %.thread3416 ] ; 14 uses
  %.1342263826 = phi ptr [ %i.dyo, %bb.iu ], [ %.1242253876, %.thread3416 ] ; 5 uses
  %.143913825 = phi ptr [ %.34393, %bb.iu ], [ %.04390, %.thread3416 ] ; 57 uses
  %.344093824 = phi <16 x float> [ %.64412, %bb.iu ], [ %.24408, %.thread3416 ] ; 12 uses
  %.044133823 = phi i32 [ %i.dyp, %bb.iu ], [ 0, %.thread3416 ]
  %i.dpe = load <16 x i32>, ptr %.1342263826, align 1, !tbaa !90
  %i.dpf = sitofp fast <16 x i32> %i.dpe to <16 x float> ; 2 uses
  %i.dpg = getelementptr inbounds nuw i8, ptr %.1342263826, i64 64
  %i.dph = load <16 x i32>, ptr %i.dpg, align 1, !tbaa !90
  %i.dpi = getelementptr inbounds nuw i8, ptr %.1342263826, i64 128
  %i.dpj = load <16 x i32>, ptr %i.dpi, align 1, !tbaa !90
  %i.dpk = sitofp fast <16 x i32> %i.dpj to <16 x float> ; 2 uses
  %i.dpl = getelementptr inbounds nuw i8, ptr %.1342263826, i64 192
  %i.dpm = load <16 x i32>, ptr %i.dpl, align 1, !tbaa !90
  %i.dpn = sitofp <16 x i32> %i.dph to <16 x float>
  %i.dpo = shufflevector <16 x float> %i.dpn, <16 x float> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.dpp = sitofp <16 x i32> %i.dpm to <16 x float>
  %i.dpq = shufflevector <16 x float> %i.dpp, <16 x float> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.dpr = shufflevector <16 x float> %i.dpf, <16 x float> %i.dpq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dps = shufflevector <16 x float> %i.dpk, <16 x float> %i.dpo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dpt = shufflevector <16 x float> %i.dpf, <16 x float> %i.dpq, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dpu = shufflevector <16 x float> %i.dpk, <16 x float> %i.dpo, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dpv = shufflevector <16 x float> %i.dpr, <16 x float> %i.dps, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.dpw = shufflevector <16 x float> %i.dpr, <16 x float> %i.dps, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.dpx = shufflevector <16 x float> %i.dpu, <16 x float> %i.dpt, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.dpy = shufflevector <16 x float> %i.dpu, <16 x float> %i.dpt, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.dpz = shufflevector <16 x float> %i.dpw, <16 x float> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.dqa = shufflevector <16 x float> %i.dpy, <16 x float> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.dqb = fmul fast <16 x float> %i.doi, %i.dpv  ; 7 uses
  %i.dqc = fmul fast <16 x float> %i.dpz, %i.doi  ; 7 uses
  %i.dqd = fmul fast <16 x float> %i.doi, %i.dpx  ; 7 uses
  %i.dqe = fmul fast <16 x float> %i.dqa, %i.doi  ; 7 uses
  %.not4535 = icmp eq ptr %.523827, null
  br i1 %.not4535, label %.thread3433, label %bb.hz

bb.hz:                                            ; preds = %.lr.ph3828
  br i1 %i.bwe, label %.thread3420, label %bb.ia

.thread3420:                                      ; preds = %bb.hz
  %i.dqf = fadd fast <16 x float> %i.dqb, %.344093824
  %i.dqg = fadd fast <16 x float> %i.dqc, %.344093824
  %i.dqh = fadd fast <16 x float> %i.dqd, %.344093824
  %i.dqi = fadd fast <16 x float> %i.dqe, %.344093824
  br label %.thread3433

bb.ia:                                            ; preds = %bb.hz
  br i1 %or.cond25, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.dqj = fadd fast <16 x float> %i.dqb, %.344093824
  %i.dqk = fadd fast <16 x float> %i.dqc, %.344093824
  %i.dql = fadd fast <16 x float> %i.dqd, %.344093824
  %i.dqm = fadd fast <16 x float> %i.dqe, %.344093824
  br label %.thread3433

bb.ic:                                            ; preds = %bb.ia
  switch i32 %2, label %.thread3433 [
    i32 3, label %bb.id
    i32 4, label %bb.ij
  ]

bb.id:                                            ; preds = %bb.ic
  %i.dqn = load <16 x float>, ptr %.523827, align 1, !tbaa !90 ; 4 uses
  br i1 %i.bwn, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.dqo = getelementptr inbounds nuw i8, ptr %.523827, i64 64
  %i.dqp = load <16 x float>, ptr %i.dqo, align 1, !tbaa !90 ; 2 uses
  %i.dqq = getelementptr inbounds nuw i8, ptr %.523827, i64 128
  %i.dqr = load <32 x float>, ptr %i.dqq, align 1, !tbaa !90 ; 2 uses
  %i.dqs = getelementptr inbounds nuw i8, ptr %.523827, i64 256
  %i.dqt = shufflevector <16 x float> %i.dqn, <16 x float> %i.dqp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.dqu = shufflevector <32 x float> %i.dqr, <32 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.dqv = shufflevector <16 x float> %i.dqn, <16 x float> %i.dqp, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dqw = shufflevector <32 x float> %i.dqr, <32 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dqx = shufflevector <16 x float> %i.dqt, <16 x float> %i.dqu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.dqy = shufflevector <16 x float> %i.dqt, <16 x float> %i.dqu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.dqz = shufflevector <16 x float> %i.dqv, <16 x float> %i.dqw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.dra = shufflevector <16 x float> %i.dqv, <16 x float> %i.dqw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  br label %bb.ig

bb.if:                                            ; preds = %bb.id
  %i.drb = getelementptr inbounds nuw [4 x i8], ptr %.523827, i64 %i.t
  %i.drc = load <16 x float>, ptr %i.drb, align 1, !tbaa !90 ; 2 uses
  %i.drd = getelementptr inbounds nuw i8, ptr %.523827, i64 %.idx4536
  %i.dre = load <16 x float>, ptr %i.drd, align 1, !tbaa !90 ; 2 uses
  %i.drf = getelementptr inbounds nuw i8, ptr %.523827, i64 %.idx4537
  %i.drg = load <16 x float>, ptr %i.drf, align 1, !tbaa !90 ; 2 uses
  %i.drh = getelementptr inbounds nuw i8, ptr %.523827, i64 64
  %i.dri = shufflevector <16 x float> %i.dqn, <16 x float> %i.drc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.drj = shufflevector <16 x float> %i.dre, <16 x float> %i.drg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.drk = shufflevector <16 x float> %i.dqn, <16 x float> %i.drc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.drl = shufflevector <16 x float> %i.dre, <16 x float> %i.drg, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.drm = shufflevector <16 x float> %i.dri, <16 x float> %i.drj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.drn = shufflevector <16 x float> %i.dri, <16 x float> %i.drj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.dro = shufflevector <16 x float> %i.drk, <16 x float> %i.drl, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.drp = shufflevector <16 x float> %i.drk, <16 x float> %i.drl, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.04420 = phi nsz <16 x float> [ %i.dra, %bb.ie ], [ %i.drp, %bb.if ] ; 2 uses
  %.04419 = phi nsz <16 x float> [ %i.dqz, %bb.ie ], [ %i.dro, %bb.if ] ; 2 uses
  %.04418 = phi nsz <16 x float> [ %i.dqy, %bb.ie ], [ %i.drn, %bb.if ] ; 2 uses
  %.44410 = phi nsz <16 x float> [ %i.dqx, %bb.ie ], [ %i.drm, %bb.if ] ; 4 uses
  %.53 = phi ptr [ %i.dqs, %bb.ie ], [ %i.drh, %bb.if ] ; 2 uses
  br i1 %i.bwo, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
end_hunk_2
begin_hunk_3_@_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a

bb.li:                                            ; preds = %bb.lg
  switch i32 %2, label %.thread3525 [
    i32 3, label %bb.lj
    i32 4, label %bb.ln
  ]

bb.lj:                                            ; preds = %bb.li
  br i1 %i.bwn, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.epr = load <4 x float>, ptr %.683870, align 1, !tbaa !90
  br label %bb.lm

bb.ll:                                            ; preds = %bb.lj
  %i.eps = load float, ptr %.683870, align 4, !tbaa !69
  %i.ept = getelementptr inbounds nuw [4 x i8], ptr %.683870, i64 %i.t
  %i.epu = load float, ptr %i.ept, align 4, !tbaa !69
  %i.epv = getelementptr inbounds nuw i8, ptr %.683870, i64 %.idx4536
  %i.epw = load float, ptr %i.epv, align 4, !tbaa !69
  %i.epx = getelementptr inbounds nuw i8, ptr %.683870, i64 %.idx4537
  %i.epy = load float, ptr %i.epx, align 4, !tbaa !69
  %i.epz = insertelement <4 x float> poison, float %i.eps, i64 0
  %i.eqa = insertelement <4 x float> %i.epz, float %i.epu, i64 1
  %i.eqb = insertelement <4 x float> %i.eqa, float %i.epw, i64 2
  %i.eqc = insertelement <4 x float> %i.eqb, float %i.epy, i64 3
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lk
  %.sink4181.a = phi i64 [ 4, %bb.ll ], [ 16, %bb.lk ]
  %.172741 = phi nsz <4 x float> [ %i.eqc, %bb.ll ], [ %i.epr, %bb.lk ] ; 2 uses
  %i.eqd = getelementptr inbounds nuw i8, ptr %.683870, i64 %.sink4181.a
  %i.eqe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.172741, <4 x float> nofpclass(nan inf) %i.bwj, <4 x float> nofpclass(nan inf) %i.epo)
  br label %.thread3525

bb.ln:                                            ; preds = %bb.li
  %i.eqf = load float, ptr %.683870, align 4, !tbaa !69
  %i.eqg = fmul fast float %i.eqf, %9
  %i.eqh = insertelement <4 x float> poison, float %i.eqg, i64 0
  %i.eqi = shufflevector <4 x float> %i.eqh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eqj = fadd fast <4 x float> %i.eqi, %i.epo
  %i.eqk = getelementptr inbounds nuw i8, ptr %.683870, i64 4
  br label %.thread3525

.thread3525:                                      ; preds = %bb.li, %bb.lh, %.thread3518, %bb.lm, %bb.ln, %.lr.ph3871
  %.192743 = phi nsz <4 x float> [ %.1627403866, %.lr.ph3871 ], [ %i.eqi, %bb.ln ], [ %.1627403866, %bb.li ], [ %.172741, %bb.lm ], [ %.1627403866, %.thread3518 ], [ %.1627403866, %bb.lh ]
  %.32579 = phi nsz <4 x float> [ %i.epo, %.lr.ph3871 ], [ %i.eqj, %bb.ln ], [ %i.epo, %bb.li ], [ %i.eqe, %bb.lm ], [ %i.epp, %.thread3518 ], [ %i.epq, %bb.lh ]
  %.71 = phi ptr [ null, %.lr.ph3871 ], [ %i.eqk, %bb.ln ], [ %.683870, %bb.li ], [ %i.eqd, %bb.lm ], [ %.683870, %.thread3518 ], [ %.683870, %bb.lh ] ; 2 uses
  %i.eql = fmul fast <4 x float> %.32579, %i.bwx  ; 3 uses
  br i1 %.not4505, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %.thread3525
  store <4 x float> %i.eql, ptr %.1344033868, align 1, !tbaa !90
  %i.eqm = getelementptr inbounds nuw [4 x i8], ptr %.1344033868, i64 %i.k
  br label %bb.lr

bb.lp:                                            ; preds = %.thread3525
  switch i32 %i.b, label %bb.lr [
    i32 4, label %.thread3529
    i32 1, label %bb.lq
  ]

.thread3529:                                      ; preds = %bb.lp
  store <4 x float> %i.eql, ptr %.1344033868, align 16, !tbaa !90
  %i.eqn = getelementptr inbounds nuw i8, ptr %.1344033868, i64 16
  br label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  tail call void @llvm.x86.avx512.mask.scattersiv4.sf(ptr %.1344033868, <4 x i1> splat (i1 true), <4 x i32> %i.bxc, <4 x float> %i.eql, i32 4)
  %i.eqo = getelementptr inbounds nuw i8, ptr %.1344033868, i64 4
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lp, %.thread3529, %bb.lq, %bb.lo
  %.154405 = phi ptr [ %i.eqm, %bb.lo ], [ %i.eqo, %bb.lq ], [ %.1344033868, %bb.lp ], [ %i.eqn, %.thread3529 ]
  %i.eqp = getelementptr inbounds nuw i8, ptr %.1742303869, i64 16 ; 2 uses
  %i.eqq = add i32 %.444173867, 1                 ; 2 uses
  %exitcond4050.not = icmp eq i32 %i.eqq, %6
  br i1 %exitcond4050.not, label %._crit_edge3872, label %.lr.ph3871, !llvm.loop !931

._crit_edge3872:                                  ; preds = %bb.lr, %.preheader3692
  %.174230.lcssa = phi ptr [ %.164229.lcssa, %.preheader3692 ], [ %i.eqp, %bb.lr ] ; 2 uses
  %.68.lcssa = phi ptr [ %.64.lcssa, %.preheader3692 ], [ %.71, %bb.lr ] ; 2 uses
  %indvars.iv.next4052 = add nuw nsw i64 %indvars.iv4051, 4 ; 3 uses
  %i.eqr = icmp slt i64 %indvars.iv.next4052, %invariant.op4154
  br i1 %i.eqr, label %bb.hp, label %.preheader3691.loopexit, !llvm.loop !932

.preheader3686.loopexit:                          ; preds = %._crit_edge3932
  %i.eqs = trunc nsw i64 %indvars.iv.next4056 to i32
  br label %.preheader3686

.preheader3686:                                   ; preds = %.preheader3686.loopexit, %.preheader3691
  %.34246.lcssa = phi i32 [ %.24245.lcssa, %.preheader3691 ], [ %i.eqs, %.preheader3686.loopexit ] ; 2 uses
  %.184231.lcssa = phi ptr [ %.124225.lcssa, %.preheader3691 ], [ %.234236.lcssa, %.preheader3686.loopexit ]
  %.72.lcssa = phi ptr [ %.48.lcssa, %.preheader3691 ], [ %.88.lcssa, %.preheader3686.loopexit ]
  %i.eqt = icmp slt i32 %.34246.lcssa, %4
  br i1 %i.eqt, label %.lr.ph3995, label %._crit_edge3996

.lr.ph3995:                                       ; preds = %.preheader3686
  %.not = icmp eq i32 %10, 0                      ; 6 uses
  %i.equ = sext i32 %5 to i64                     ; 4 uses
  %i.eqv = mul i64 %i.k, %i.equ
  %i.eqw = icmp eq i32 %2, 0
  %i.eqx = add i32 %2, -1
  %or.cond49 = icmp ult i32 %i.eqx, 2
  %i.eqy = sext i32 %3 to i64                     ; 3 uses
  %i.eqz = icmp sgt i32 %6, 15
  %or.cond53 = icmp ult i32 %2, 3                 ; 5 uses
  %i.era = add i32 %2, -3
  %or.cond55 = icmp ult i32 %i.era, 2             ; 5 uses
  %i.erb = insertelement <16 x float> poison, float %9, i64 0
  %i.erc = shufflevector <16 x float> %i.erb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.erd = fcmp fast une float %8, 1.000000e+00   ; 2 uses
  %i.ere = insertelement <16 x float> poison, float %8, i64 0
  %i.erf = shufflevector <16 x float> %i.ere, <16 x float> poison, <16 x i32> zeroinitializer
  %i.erg = select ninf nsz i1 %i.erd, <16 x float> %i.erf, <16 x float> splat (float 1.000000e+00)
  %i.erh = icmp eq i64 %i.k, 1                    ; 3 uses
  %i.eri = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.erj = icmp eq i32 %i.eri, 1
  %i.erk = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %.idx4484 = shl i64 %i.k, 5                     ; 8 uses
  %.idx4485 = shl i64 %i.k, 4                     ; 7 uses
  %.idx4487 = mul i64 %i.k, 48
  %i.erl = icmp eq i32 %i.b, 1
  %i.erm = trunc i64 %i.k to i32
  %i.ern = insertelement <16 x i32> poison, i32 %i.erm, i64 0
  %i.ero = shufflevector <16 x i32> %i.ern, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.erp = mul <16 x i32> %i.ero, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.idx4488 = shl i64 %i.k, 6                     ; 8 uses
  %i.erq = insertelement <4 x float> poison, float %9, i64 0
  %i.err = shufflevector <4 x float> %i.erq, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ers = insertelement <4 x float> poison, float %8, i64 0
  %i.ert = shufflevector <4 x float> %i.ers, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eru = select ninf nsz i1 %i.erd, <4 x float> %i.ert, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %.idx4476 = shl i64 %i.k, 3                     ; 3 uses
  %.idx4477 = mul i64 %i.k, 12                    ; 2 uses
  %.idx4479 = mul i64 %i.k, 20
  %.idx4480 = mul i64 %i.k, 24
  %.idx4481 = mul i64 %i.k, 28
  %i.erv = sext i32 %.34246.lcssa to i64
  %i.erw = sext i32 %i.b to i64
  %i.erx = insertelement <2 x float> poison, float %9, i64 0
  %i.ery = shufflevector <2 x float> %i.erx, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.oe

bb.ls:                                            ; preds = %.lr.ph3939, %._crit_edge3932
  %indvars.iv4055 = phi i64 [ %i.dnq, %.lr.ph3939 ], [ %indvars.iv.next4056, %._crit_edge3932 ] ; 4 uses
  %.723938 = phi ptr [ %.48.lcssa, %.lr.ph3939 ], [ %.88.lcssa, %._crit_edge3932 ] ; 4 uses
  %.1842313937 = phi ptr [ %.124225.lcssa, %.lr.ph3939 ], [ %.234236.lcssa, %._crit_edge3932 ] ; 2 uses
  %i.erz = load ptr, ptr %1, align 8, !tbaa !25   ; 2 uses
  br i1 %.not4489, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.esa = getelementptr inbounds nuw [4 x i8], ptr %i.erz, i64 %i.dmt
  %i.esb = add nsw i64 %indvars.iv4055, %i.dmw    ; 2 uses
  %i.esc = mul nsw i64 %i.esb, %i.dns
  %i.esd = getelementptr inbounds [4 x i8], ptr %i.esa, i64 %i.esc
  br label %bb.lv

bb.lu:                                            ; preds = %bb.ls
  %i.ese = add nsw i64 %indvars.iv4055, %i.dmw    ; 2 uses
  %i.esf = mul i64 %i.k, %i.ese
  %i.esg = getelementptr inbounds nuw [4 x i8], ptr %i.erz, i64 %i.esf
  %i.esh = getelementptr inbounds [4 x i8], ptr %i.esg, i64 %i.dms
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %.pre-phi = phi i64 [ %i.ese, %bb.lu ], [ %i.esb, %bb.lt ] ; 2 uses
  %.04317 = phi ptr [ %i.esh, %bb.lu ], [ %i.esd, %bb.lt ] ; 2 uses
  %i.esi = load ptr, ptr %7, align 8, !tbaa !25
  %i.esj = getelementptr [4 x i8], ptr %i.esi, i64 %.pre-phi
  %i.esk = load <2 x float>, ptr %i.esj, align 4, !tbaa !69 ; 6 uses
  %i.esl = shufflevector <2 x float> %i.esk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.esm = shufflevector <2 x float> %i.esk, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.esn = shufflevector <2 x float> %i.esk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.eso = shufflevector <2 x float> %i.esk, <2 x float> poison, <16 x i32> zeroinitializer
  %i.esp = shufflevector <2 x float> %i.esk, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %.not4490 = icmp eq ptr %.723938, null
  br i1 %.not4490, label %.thread3552, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  br i1 %i.dmu, label %.thread3531, label %bb.lx

.thread3531:                                      ; preds = %bb.lw
  %i.esq = load float, ptr %.723938, align 4, !tbaa !69
  %i.esr = fmul fast float %i.esq, %9             ; 4 uses
  %i.ess = insertelement <4 x float> poison, float %i.esr, i64 0
  %i.est = shufflevector <4 x float> %i.ess, <4 x float> poison, <4 x i32> zeroinitializer
  %i.esu = insertelement <16 x float> poison, float %i.esr, i64 0
  %i.esv = shufflevector <16 x float> %i.esu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.esw = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.esr, i64 0
  br label %.thread3552

bb.lx:                                            ; preds = %bb.lw
  br i1 %or.cond37, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  %i.esx = load ptr, ptr %0, align 8, !tbaa !25
  %i.esy = getelementptr inbounds [4 x i8], ptr %i.esx, i64 %i.dmw
  %i.esz = getelementptr inbounds nuw [4 x i8], ptr %i.esy, i64 %indvars.iv4055 ; 2 uses
  %i.eta = load <2 x float>, ptr %i.esz, align 4, !tbaa !69
  %i.etb = fmul fast <2 x float> %i.eta, %12      ; 6 uses
  %i.etc = extractelement <2 x float> %i.etb, i64 0
  %i.etd = shufflevector <2 x float> %i.etb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ete = shufflevector <2 x float> %i.etb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.etf = shufflevector <2 x float> %i.etb, <2 x float> poison, <16 x i32> zeroinitializer
  %i.etg = shufflevector <2 x float> %i.etb, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %.thread3552

bb.lz:                                            ; preds = %bb.lx
  switch i32 %2, label %.thread3552 [
    i32 3, label %bb.ma
    i32 4, label %bb.mb
  ]

bb.ma:                                            ; preds = %bb.lz
  %i.eth = load ptr, ptr %0, align 8, !tbaa !25
  %i.eti = mul i64 %i.t, %.pre-phi
  %i.etj = getelementptr inbounds nuw [4 x i8], ptr %i.eth, i64 %i.eti
  %i.etk = getelementptr inbounds [4 x i8], ptr %i.etj, i64 %i.dms
  br label %.thread3552

bb.mb:                                            ; preds = %bb.lz
  %i.etl = load ptr, ptr %0, align 8, !tbaa !25
  %i.etm = getelementptr inbounds [4 x i8], ptr %i.etl, i64 %i.dms
  br label %.thread3552

.thread3552:                                      ; preds = %bb.lz, %bb.ly, %.thread3531, %bb.ma, %bb.mb, %bb.lv
  %.22559 = phi nsz <4 x float> [ zeroinitializer, %bb.lv ], [ zeroinitializer, %bb.mb ], [ zeroinitializer, %bb.lz ], [ zeroinitializer, %bb.ma ], [ %i.est, %.thread3531 ], [ %i.etd, %bb.ly ] ; 2 uses
  %.12550 = phi nsz <4 x float> [ zeroinitializer, %bb.lv ], [ zeroinitializer, %bb.mb ], [ zeroinitializer, %bb.lz ], [ zeroinitializer, %bb.ma ], [ zeroinitializer, %.thread3531 ], [ %i.ete, %bb.ly ] ; 2 uses
  %.24316 = phi nsz float [ 0.000000e+00, %bb.lv ], [ 0.000000e+00, %bb.mb ], [ 0.000000e+00, %bb.lz ], [ 0.000000e+00, %bb.ma ], [ %i.esr, %.thread3531 ], [ %i.etc, %bb.ly ]
  %.24308 = phi nsz <16 x float> [ zeroinitializer, %bb.lv ], [ zeroinitializer, %bb.mb ], [ zeroinitializer, %bb.lz ], [ zeroinitializer, %bb.ma ], [ %i.esv, %.thread3531 ], [ %i.etf, %bb.ly ]
  %.14302 = phi nsz <16 x float> [ zeroinitializer, %bb.lv ], [ zeroinitializer, %bb.mb ], [ zeroinitializer, %bb.lz ], [ zeroinitializer, %bb.ma ], [ zeroinitializer, %.thread3531 ], [ %i.etg, %bb.ly ]
  %.75 = phi ptr [ null, %bb.lv ], [ %i.etm, %bb.mb ], [ %.723938, %bb.lz ], [ %i.etk, %bb.ma ], [ %.723938, %.thread3531 ], [ %i.esz, %bb.ly ] ; 2 uses
  %i.etn = phi <2 x float> [ zeroinitializer, %bb.lv ], [ zeroinitializer, %bb.mb ], [ zeroinitializer, %bb.lz ], [ zeroinitializer, %bb.ma ], [ %i.esw, %.thread3531 ], [ %i.etb, %bb.ly ] ; 3 uses
  %i.eto = shufflevector <2 x float> %i.etn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.dmx, label %.lr.ph3889, label %.preheader3690

.preheader3690:                                   ; preds = %bb.mo, %.thread3552
  %.14318.lcssa = phi ptr [ %.04317, %.thread3552 ], [ %i.evy, %bb.mo ] ; 2 uses
  %.04296.lcssa = phi i32 [ 0, %.thread3552 ], [ %i.ewa, %bb.mo ] ; 3 uses
  %.194232.lcssa = phi ptr [ %.1842313937, %.thread3552 ], [ %i.evz, %bb.mo ] ; 2 uses
  %.76.lcssa = phi ptr [ %.75, %.thread3552 ], [ %.78, %bb.mo ] ; 2 uses
  %i.etp = or disjoint i32 %.04296.lcssa, 7
  %i.etq = icmp slt i32 %i.etp, %6
  br i1 %i.etq, label %.lr.ph3900, label %.preheader3689

.lr.ph3889:                                       ; preds = %.thread3552, %bb.mo
  %.763888 = phi ptr [ %.78, %bb.mo ], [ %.75, %.thread3552 ] ; 9 uses
  %.1942323887 = phi ptr [ %i.evz, %bb.mo ], [ %.1842313937, %.thread3552 ] ; 3 uses
  %.042963886 = phi i32 [ %i.ewa, %bb.mo ], [ 0, %.thread3552 ]
  %.243033885 = phi <16 x float> [ %.44305, %bb.mo ], [ %.14302, %.thread3552 ] ; 6 uses
  %.343093884 = phi <16 x float> [ %.54311, %bb.mo ], [ %.24308, %.thread3552 ] ; 7 uses
  %.143183882 = phi ptr [ %i.evy, %bb.mo ], [ %.04317, %.thread3552 ] ; 18 uses
  %i.etr = load <16 x i32>, ptr %.1942323887, align 1, !tbaa !90
  %i.ets = sitofp fast <16 x i32> %i.etr to <16 x float> ; 2 uses
  %i.ett = getelementptr inbounds nuw i8, ptr %.1942323887, i64 64
  %i.etu = load <16 x i32>, ptr %i.ett, align 1, !tbaa !90
  %i.etv = sitofp fast <16 x i32> %i.etu to <16 x float> ; 2 uses
  %i.etw = shufflevector <16 x float> %i.ets, <16 x float> %i.etv, <16 x i32> <i32 0, i32 16, i32 2, i32 18, i32 4, i32 20, i32 6, i32 22, i32 8, i32 24, i32 10, i32 26, i32 12, i32 28, i32 14, i32 30>
  %i.etx = shufflevector <16 x float> %i.ets, <16 x float> %i.etv, <16 x i32> <i32 1, i32 17, i32 3, i32 19, i32 5, i32 21, i32 7, i32 23, i32 9, i32 25, i32 11, i32 27, i32 13, i32 29, i32 15, i32 31>
  %i.ety = shufflevector <16 x float> %i.etx, <16 x float> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.etz = fmul fast <16 x float> %i.eso, %i.etw  ; 7 uses
  %i.eua = fmul fast <16 x float> %i.ety, %i.esp  ; 7 uses
  %.not4499 = icmp eq ptr %.763888, null
  br i1 %.not4499, label %.thread3569, label %bb.mc

bb.mc:                                            ; preds = %.lr.ph3889
  br i1 %i.dmu, label %.thread3560, label %bb.md

.thread3560:                                      ; preds = %bb.mc
  %i.eub = fadd fast <16 x float> %i.etz, %.343093884
  %i.euc = fadd fast <16 x float> %i.eua, %.343093884
  br label %.thread3569

bb.md:                                            ; preds = %bb.mc
  br i1 %or.cond37, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %bb.md
  %i.eud = fadd fast <16 x float> %i.etz, %.343093884
  %i.eue = fadd fast <16 x float> %i.eua, %.243033885
  br label %.thread3569

bb.mf:                                            ; preds = %bb.md
  switch i32 %2, label %.thread3569 [
    i32 3, label %bb.mg
    i32 4, label %bb.mh
  ]

bb.mg:                                            ; preds = %bb.mf
  %i.euf = load <16 x float>, ptr %.763888, align 1, !tbaa !90 ; 3 uses
  %i.eug = getelementptr inbounds nuw [4 x i8], ptr %.763888, i64 %i.t
  %i.euh = load <16 x float>, ptr %i.eug, align 1, !tbaa !90 ; 3 uses
  %i.eui = fadd fast <16 x float> %i.euf, %i.etz
  %i.euj = fadd fast <16 x float> %i.euh, %i.eua
  %i.euk = tail call fast nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.euf, <16 x float> nofpclass(nan inf) %i.dmz, <16 x float> nofpclass(nan inf) %i.etz)
  %i.eul = tail call fast nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.euh, <16 x float> nofpclass(nan inf) %i.dmz, <16 x float> nofpclass(nan inf) %i.eua)
  %.24292 = select nsz i1 %i.dna, <16 x float> %i.eui, <16 x float> %i.euk
  %.24286 = select nsz i1 %i.dna, <16 x float> %i.euj, <16 x float> %i.eul
  %i.eum = getelementptr inbounds nuw i8, ptr %.763888, i64 64
  br label %.thread3569

bb.mh:                                            ; preds = %bb.mf
  %i.eun = load <16 x float>, ptr %.763888, align 1, !tbaa !90
  %i.euo = fmul fast <16 x float> %i.eun, %i.dmz  ; 3 uses
  %i.eup = fadd fast <16 x float> %i.euo, %i.etz
  %i.euq = fadd fast <16 x float> %i.euo, %i.eua
  %i.eur = getelementptr inbounds nuw i8, ptr %.763888, i64 64
  br label %.thread3569

.thread3569:                                      ; preds = %bb.mf, %bb.me, %.thread3560, %bb.mg, %bb.mh, %.lr.ph3889
  %.54311 = phi nsz <16 x float> [ %i.euo, %bb.mh ], [ %.343093884, %bb.mf ], [ %.343093884, %.lr.ph3889 ], [ %i.euf, %bb.mg ], [ %.343093884, %.thread3560 ], [ %.343093884, %bb.me ]
  %.44305 = phi nsz <16 x float> [ %.243033885, %bb.mh ], [ %.243033885, %bb.mf ], [ %.243033885, %.lr.ph3889 ], [ %i.euh, %bb.mg ], [ %.243033885, %.thread3560 ], [ %.243033885, %bb.me ]
  %.44294 = phi nsz <16 x float> [ %i.eup, %bb.mh ], [ %i.etz, %bb.mf ], [ %i.etz, %.lr.ph3889 ], [ %.24292, %bb.mg ], [ %i.eub, %.thread3560 ], [ %i.eud, %bb.me ]
  %.44288 = phi nsz <16 x float> [ %i.euq, %bb.mh ], [ %i.eua, %bb.mf ], [ %i.eua, %.lr.ph3889 ], [ %.24286, %bb.mg ], [ %i.euc, %.thread3560 ], [ %i.eue, %bb.me ]
  %.78 = phi ptr [ %i.eur, %bb.mh ], [ %.763888, %bb.mf ], [ null, %.lr.ph3889 ], [ %i.eum, %bb.mg ], [ %.763888, %.thread3560 ], [ %.763888, %bb.me ] ; 2 uses
  %.54295 = fmul reassoc nsz arcp contract afn <16 x float> %.44294, %i.dnt ; 11 uses
  %.54289 = fmul reassoc nsz arcp contract afn <16 x float> %.44288, %i.dnt ; 11 uses
  br i1 %.not4489, label %bb.mn, label %bb.mi

bb.mi:                                            ; preds = %.thread3569
  br i1 %i.dnf, label %.split4812, label %bb.mo

.split4812:                                       ; preds = %bb.mi
  switch i32 %i.dng, label %bb.mo [
    i32 4, label %bb.mj
    i32 3, label %bb.mk
    i32 2, label %bb.ml
    i32 0, label %bb.mm
  ]

bb.mj:                                            ; preds = %.split4812
  store <16 x float> %.54295, ptr %.143183882, align 64, !tbaa !90
  %i.eus = getelementptr inbounds nuw i8, ptr %.143183882, i64 64
  store <16 x float> %.54289, ptr %i.eus, align 64, !tbaa !90
  switch i32 %i.b, label %bb.mo [
    i32 8, label %.thread3575
    i32 4, label %bb.ml
    i32 1, label %bb.mm
  ]

.thread3575:                                      ; preds = %bb.mj
  %i.eut = shufflevector <16 x float> %.54295, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.eut, ptr %.143183882, align 64, !tbaa !90
  %i.euu = getelementptr inbounds nuw i8, ptr %.143183882, i64 32
  %i.euv = shufflevector <16 x float> %.54289, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.euv, ptr %i.euu, align 32, !tbaa !90
  %i.euw = getelementptr inbounds nuw i8, ptr %.143183882, i64 %.idx4500 ; 2 uses
  %i.eux = shufflevector <16 x float> %.54295, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.eux, ptr %i.euw, align 32, !tbaa !90
  %i.euy = getelementptr inbounds nuw i8, ptr %i.euw, i64 32
  %i.euz = shufflevector <16 x float> %.54289, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.euz, ptr %i.euy, align 32, !tbaa !90
  br label %bb.mo

bb.mk:                                            ; preds = %.split4812
  %i.eva = shufflevector <16 x float> %.54295, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.eva, ptr %.143183882, align 32, !tbaa !90
  %i.evb = getelementptr inbounds nuw i8, ptr %.143183882, i64 32
  %i.evc = shufflevector <16 x float> %.54289, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.evc, ptr %i.evb, align 32, !tbaa !90
  %i.evd = getelementptr inbounds nuw i8, ptr %.143183882, i64 %.idx4500 ; 2 uses
  %i.eve = shufflevector <16 x float> %.54295, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.eve, ptr %i.evd, align 32, !tbaa !90
  %i.evf = getelementptr inbounds nuw i8, ptr %i.evd, i64 32
  %i.evg = shufflevector <16 x float> %.54289, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.evg, ptr %i.evf, align 32, !tbaa !90
  switch i32 %i.b, label %bb.mo [
    i32 4, label %bb.ml
    i32 1, label %bb.mm
  ]

bb.ml:                                            ; preds = %.split4812, %bb.mj, %bb.mk
  %i.evh = shufflevector <16 x float> %.54295, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.evh, ptr %.143183882, align 16, !tbaa !90
  %i.evi = getelementptr inbounds nuw i8, ptr %.143183882, i64 16
  %i.evj = shufflevector <16 x float> %.54289, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.evj, ptr %i.evi, align 16, !tbaa !90
  %i.evk = getelementptr inbounds nuw i8, ptr %.143183882, i64 %.idx4501 ; 2 uses
  %i.evl = shufflevector <16 x float> %.54295, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.evl, ptr %i.evk, align 16, !tbaa !90
  %i.evm = getelementptr inbounds nuw i8, ptr %i.evk, i64 16
  %i.evn = shufflevector <16 x float> %.54289, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.evn, ptr %i.evm, align 16, !tbaa !90
  %i.evo = getelementptr inbounds nuw i8, ptr %.143183882, i64 %.idx4500 ; 2 uses
  %i.evp = shufflevector <16 x float> %.54295, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %i.evp, ptr %i.evo, align 16, !tbaa !90
  %i.evq = getelementptr inbounds nuw i8, ptr %i.evo, i64 16
  %i.evr = shufflevector <16 x float> %.54289, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %i.evr, ptr %i.evq, align 16, !tbaa !90
  %i.evs = getelementptr inbounds nuw i8, ptr %.143183882, i64 %.idx4503 ; 2 uses
  %i.evt = shufflevector <16 x float> %.54295, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %i.evt, ptr %i.evs, align 16, !tbaa !90
  %i.evu = getelementptr inbounds nuw i8, ptr %i.evs, i64 16
  %i.evv = shufflevector <16 x float> %.54289, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %i.evv, ptr %i.evu, align 16, !tbaa !90
  br i1 %i.dnh, label %bb.mm, label %bb.mo

bb.mm:                                            ; preds = %.split4812, %bb.mj, %bb.mk, %bb.ml
  tail call void @llvm.x86.avx512.mask.scatter.dps.512(ptr %.143183882, <16 x i1> splat (i1 true), <16 x i32> %i.dnl, <16 x float> %.54295, i32 4)
  %i.evw = getelementptr inbounds nuw i8, ptr %.143183882, i64 4
  tail call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.evw, <16 x i1> splat (i1 true), <16 x i32> %i.dnl, <16 x float> %.54289, i32 4)
end_hunk_3
begin_hunk_4_@_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  store <4 x float> %.52548, ptr %.343203896, align 16, !tbaa !90
  %i.eyr = getelementptr inbounds nuw i8, ptr %.343203896, i64 16
  store <4 x float> %.52536, ptr %i.eyr, align 16, !tbaa !90
  %i.eys = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx4501 ; 2 uses
  store <4 x float> %.52542, ptr %i.eys, align 16, !tbaa !90
  %i.eyt = getelementptr inbounds nuw i8, ptr %i.eys, i64 16
  store <4 x float> %.52530, ptr %i.eyt, align 16, !tbaa !90
  br label %bb.nf

bb.nd:                                            ; preds = %bb.na
  %.sroa.056.0.vec.extract = extractelement <4 x float> %.52548, i64 0
  store float %.sroa.056.0.vec.extract, ptr %.343203896, align 4, !tbaa !69
  %.sroa.12.32.vec.extract = extractelement <4 x float> %.52536, i64 0
  %i.eyu = getelementptr inbounds nuw i8, ptr %.343203896, i64 4
  store float %.sroa.12.32.vec.extract, ptr %i.eyu, align 4, !tbaa !69
  %i.eyv = getelementptr inbounds nuw [4 x i8], ptr %.343203896, i64 %i.k
  %i.eyw = shufflevector <4 x float> %.52548, <4 x float> %.52536, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.eyw, ptr %i.eyv, align 4, !tbaa !69
  %i.eyx = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx3675
  %i.eyy = shufflevector <4 x float> %.52548, <4 x float> %.52536, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.eyy, ptr %i.eyx, align 4, !tbaa !69
  %i.eyz = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx3676
  %i.eza = shufflevector <4 x float> %.52548, <4 x float> %.52536, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.eza, ptr %i.eyz, align 4, !tbaa !69
  %.sroa.757.16.vec.extract = extractelement <4 x float> %.52542, i64 0
  %i.ezb = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx4501 ; 2 uses
  store float %.sroa.757.16.vec.extract, ptr %i.ezb, align 4, !tbaa !69
  %.sroa.17.48.vec.extract = extractelement <4 x float> %.52530, i64 0
  %i.ezc = getelementptr inbounds nuw i8, ptr %i.ezb, i64 4
  store float %.sroa.17.48.vec.extract, ptr %i.ezc, align 4, !tbaa !69
  %i.ezd = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx3678
  %i.eze = shufflevector <4 x float> %.52542, <4 x float> %.52530, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.eze, ptr %i.ezd, align 4, !tbaa !69
  %i.ezf = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx3679
  %i.ezg = shufflevector <4 x float> %.52542, <4 x float> %.52530, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ezg, ptr %i.ezf, align 4, !tbaa !69
  %i.ezh = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.idx3680
  %i.ezi = shufflevector <4 x float> %.52542, <4 x float> %.52530, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ezi, ptr %i.ezh, align 4, !tbaa !69
  br label %bb.nf

bb.ne:                                            ; preds = %bb.mz
  store <4 x float> %.52548, ptr %.343203896, align 1, !tbaa !90
  %i.ezj = getelementptr inbounds nuw i8, ptr %.343203896, i64 16
  store <4 x float> %.52542, ptr %i.ezj, align 1, !tbaa !90
  %i.ezk = getelementptr inbounds nuw [4 x i8], ptr %.343203896, i64 %i.k ; 2 uses
  store <4 x float> %.52536, ptr %i.ezk, align 1, !tbaa !90
  %i.ezl = getelementptr inbounds nuw i8, ptr %i.ezk, i64 16
  store <4 x float> %.52530, ptr %i.ezl, align 1, !tbaa !90
  br label %bb.nf

bb.nf:                                            ; preds = %bb.nd, %bb.na, %bb.nb, %bb.nc, %bb.ne
  %.sink4183 = phi i64 [ 32, %bb.ne ], [ %.idx4500, %bb.nc ], [ %.idx4500, %bb.nb ], [ %.idx4500, %bb.na ], [ %.idx4500, %bb.nd ]
  %i.ezm = getelementptr inbounds nuw i8, ptr %.343203896, i64 %.sink4183 ; 2 uses
  %i.ezn = getelementptr inbounds nuw i8, ptr %.2042333898, i64 64 ; 2 uses
  %i.ezo = add nuw nsw i32 %.142973897, 8         ; 3 uses
  %i.ezp = or disjoint i32 %i.ezo, 7
  %i.ezq = icmp slt i32 %i.ezp, %6
  br i1 %i.ezq, label %.lr.ph3900, label %.preheader3689, !llvm.loop !934

.preheader3688:                                   ; preds = %bb.nq, %.preheader3689
  %.54322.lcssa = phi ptr [ %.34320.lcssa, %.preheader3689 ], [ %i.fbe, %bb.nq ] ; 2 uses
  %.24298.lcssa = phi i32 [ %.14297.lcssa, %.preheader3689 ], [ %i.fbg, %bb.nq ] ; 3 uses
  %.214234.lcssa = phi ptr [ %.204233.lcssa, %.preheader3689 ], [ %i.fbf, %bb.nq ] ; 2 uses
  %.82.lcssa = phi ptr [ %.79.lcssa, %.preheader3689 ], [ %.84, %bb.nq ] ; 2 uses
  %i.ezr = or disjoint i32 %.24298.lcssa, 1
  %i.ezs = icmp slt i32 %i.ezr, %6
  br i1 %i.ezs, label %.lr.ph3922.preheader, label %.preheader3687

.lr.ph3922.preheader:                             ; preds = %.preheader3688
  %i.ezt = shufflevector <2 x float> %i.etn, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph3922

.lr.ph3913:                                       ; preds = %.preheader3689, %bb.nq
  %.823912 = phi ptr [ %.84, %bb.nq ], [ %.79.lcssa, %.preheader3689 ] ; 9 uses
  %.2142343911 = phi ptr [ %i.fbf, %bb.nq ], [ %.204233.lcssa, %.preheader3689 ] ; 3 uses
  %.242983910 = phi i32 [ %i.fbg, %bb.nq ], [ %.14297.lcssa, %.preheader3689 ]
  %.543223909 = phi ptr [ %i.fbe, %bb.nq ], [ %.34320.lcssa, %.preheader3689 ] ; 10 uses
  %.525543908 = phi <4 x float> [ %.72556, %bb.nq ], [ %.22551.lcssa, %.preheader3689 ] ; 6 uses
  %.625633907 = phi <4 x float> [ %.82565, %bb.nq ], [ %.32560.lcssa, %.preheader3689 ] ; 7 uses
  %i.ezu = load <4 x i32>, ptr %.2142343911, align 16, !tbaa !90
  %i.ezv = sitofp fast <4 x i32> %i.ezu to <4 x float> ; 2 uses
  %i.ezw = getelementptr inbounds nuw i8, ptr %.2142343911, i64 16
  %i.ezx = load <4 x i32>, ptr %i.ezw, align 16, !tbaa !90
  %i.ezy = sitofp fast <4 x i32> %i.ezx to <4 x float> ; 2 uses
  %i.ezz = shufflevector <4 x float> %i.ezv, <4 x float> %i.ezy, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.faa = shufflevector <4 x float> %i.ezv, <4 x float> %i.ezy, <4 x i32> <i32 3, i32 7, i32 1, i32 5>
  %i.fab = shufflevector <4 x float> %i.faa, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.fac = fmul fast <4 x float> %i.esm, %i.ezz   ; 7 uses
  %i.fad = fmul fast <4 x float> %i.fab, %i.esn   ; 7 uses
  %.not4494 = icmp eq ptr %.823912, null
  br i1 %.not4494, label %.thread3607, label %bb.ng

bb.ng:                                            ; preds = %.lr.ph3913
  br i1 %i.dmu, label %.thread3598, label %bb.nh

.thread3598:                                      ; preds = %bb.ng
  %i.fae = fadd fast <4 x float> %i.fac, %.625633907
  %i.faf = fadd fast <4 x float> %i.fad, %.625633907
  br label %.thread3607

bb.nh:                                            ; preds = %bb.ng
  br i1 %or.cond37, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.fag = fadd fast <4 x float> %i.fac, %.625633907
  %i.fah = fadd fast <4 x float> %i.fad, %.525543908
  br label %.thread3607

bb.nj:                                            ; preds = %bb.nh
  switch i32 %2, label %.thread3607 [
    i32 3, label %bb.nk
    i32 4, label %bb.nl
  ]

bb.nk:                                            ; preds = %bb.nj
  %i.fai = load <4 x float>, ptr %.823912, align 1, !tbaa !90 ; 3 uses
  %i.faj = getelementptr inbounds nuw [4 x i8], ptr %.823912, i64 %i.t
  %i.fak = load <4 x float>, ptr %i.faj, align 1, !tbaa !90 ; 3 uses
  %i.fal = fadd fast <4 x float> %i.fai, %i.fac
  %i.fam = fadd fast <4 x float> %i.fak, %i.fad
  %i.fan = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fai, <4 x float> nofpclass(nan inf) %i.dnn, <4 x float> nofpclass(nan inf) %i.fac)
  %i.fao = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fak, <4 x float> nofpclass(nan inf) %i.dnn, <4 x float> nofpclass(nan inf) %i.fad)
  %.22471 = select nsz i1 %i.dna, <4 x float> %i.fal, <4 x float> %i.fan
  %.22465 = select nsz i1 %i.dna, <4 x float> %i.fam, <4 x float> %i.fao
  %i.fap = getelementptr inbounds nuw i8, ptr %.823912, i64 16
  br label %.thread3607

bb.nl:                                            ; preds = %bb.nj
  %i.faq = load <4 x float>, ptr %.823912, align 1, !tbaa !90
  %i.far = fmul fast <4 x float> %i.faq, %i.dnn   ; 3 uses
  %i.fas = fadd fast <4 x float> %i.far, %i.fac
  %i.fat = fadd fast <4 x float> %i.far, %i.fad
  %i.fau = getelementptr inbounds nuw i8, ptr %.823912, i64 16
  br label %.thread3607

.thread3607:                                      ; preds = %bb.nj, %bb.ni, %.thread3598, %bb.nk, %bb.nl, %.lr.ph3913
  %.82565 = phi nsz <4 x float> [ %.625633907, %.lr.ph3913 ], [ %i.far, %bb.nl ], [ %.625633907, %bb.nj ], [ %i.fai, %bb.nk ], [ %.625633907, %.thread3598 ], [ %.625633907, %bb.ni ]
  %.72556 = phi nsz <4 x float> [ %.525543908, %.lr.ph3913 ], [ %.525543908, %bb.nl ], [ %.525543908, %bb.nj ], [ %i.fak, %bb.nk ], [ %.525543908, %.thread3598 ], [ %.525543908, %bb.ni ]
  %.42473 = phi nsz <4 x float> [ %i.fac, %.lr.ph3913 ], [ %i.fas, %bb.nl ], [ %i.fac, %bb.nj ], [ %.22471, %bb.nk ], [ %i.fae, %.thread3598 ], [ %i.fag, %bb.ni ]
  %.42467 = phi nsz <4 x float> [ %i.fad, %.lr.ph3913 ], [ %i.fat, %bb.nl ], [ %i.fad, %bb.nj ], [ %.22465, %bb.nk ], [ %i.faf, %.thread3598 ], [ %i.fah, %bb.ni ]
  %.84 = phi ptr [ null, %.lr.ph3913 ], [ %i.fau, %bb.nl ], [ %.823912, %bb.nj ], [ %i.fap, %bb.nk ], [ %.823912, %.thread3598 ], [ %.823912, %bb.ni ] ; 2 uses
  %.52474 = fmul reassoc nsz arcp contract afn <4 x float> %.42473, %i.dnu ; 6 uses
  %.52468 = fmul reassoc nsz arcp contract afn <4 x float> %.42467, %i.dnu ; 6 uses
  br i1 %.not4489, label %bb.np, label %bb.nm

bb.nm:                                            ; preds = %.thread3607
  switch i32 %i.b, label %bb.nq [
    i32 4, label %bb.nn
    i32 1, label %bb.no
  ]

bb.nn:                                            ; preds = %bb.nm
  store <4 x float> %.52474, ptr %.543223909, align 16, !tbaa !90
  %i.fav = getelementptr inbounds nuw i8, ptr %.543223909, i64 16
  store <4 x float> %.52468, ptr %i.fav, align 16, !tbaa !90
  br label %bb.nq

bb.no:                                            ; preds = %bb.nm
  %.sroa.029.0.vec.extract = extractelement <4 x float> %.52474, i64 0
  store float %.sroa.029.0.vec.extract, ptr %.543223909, align 4, !tbaa !69
  %.sroa.730.16.vec.extract = extractelement <4 x float> %.52468, i64 0
  %i.faw = getelementptr inbounds nuw i8, ptr %.543223909, i64 4
  store float %.sroa.730.16.vec.extract, ptr %i.faw, align 4, !tbaa !69
  %i.fax = getelementptr inbounds nuw [4 x i8], ptr %.543223909, i64 %i.k
  %i.fay = shufflevector <4 x float> %.52474, <4 x float> %.52468, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.fay, ptr %i.fax, align 4, !tbaa !69
  %i.faz = getelementptr inbounds nuw i8, ptr %.543223909, i64 %.idx3675
  %i.fba = shufflevector <4 x float> %.52474, <4 x float> %.52468, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.fba, ptr %i.faz, align 4, !tbaa !69
  %i.fbb = getelementptr inbounds nuw i8, ptr %.543223909, i64 %.idx3676
  %i.fbc = shufflevector <4 x float> %.52474, <4 x float> %.52468, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.fbc, ptr %i.fbb, align 4, !tbaa !69
  br label %bb.nq

bb.np:                                            ; preds = %.thread3607
  store <4 x float> %.52474, ptr %.543223909, align 1, !tbaa !90
  %i.fbd = getelementptr inbounds nuw [4 x i8], ptr %.543223909, i64 %i.k
  store <4 x float> %.52468, ptr %i.fbd, align 1, !tbaa !90
  br label %bb.nq

bb.nq:                                            ; preds = %bb.no, %bb.nm, %bb.nn, %bb.np
  %.sink4184 = phi i64 [ 16, %bb.np ], [ %.idx4501, %bb.nn ], [ %.idx4501, %bb.nm ], [ %.idx4501, %bb.no ]
  %i.fbe = getelementptr inbounds nuw i8, ptr %.543223909, i64 %.sink4184 ; 2 uses
  %i.fbf = getelementptr inbounds nuw i8, ptr %.2142343911, i64 32 ; 2 uses
  %i.fbg = add nuw nsw i32 %.242983910, 4         ; 3 uses
  %i.fbh = or disjoint i32 %i.fbg, 3
  %i.fbi = icmp slt i32 %i.fbh, %6
  br i1 %i.fbi, label %.lr.ph3913, label %.preheader3688, !llvm.loop !935

.preheader3687:                                   ; preds = %.thread3626, %.preheader3688
  %.74324.lcssa = phi ptr [ %.54322.lcssa, %.preheader3688 ], [ %i.fcq, %.thread3626 ]
  %.34299.lcssa = phi i32 [ %.24298.lcssa, %.preheader3688 ], [ %i.fcs, %.thread3626 ] ; 2 uses
  %.224235.lcssa = phi ptr [ %.214234.lcssa, %.preheader3688 ], [ %i.fcr, %.thread3626 ] ; 2 uses
  %.85.lcssa = phi ptr [ %.82.lcssa, %.preheader3688 ], [ %.87, %.thread3626 ] ; 2 uses
  %i.fbj = icmp slt i32 %.34299.lcssa, %6
  br i1 %i.fbj, label %.lr.ph3931, label %._crit_edge3932

.lr.ph3931:                                       ; preds = %.preheader3687
  %i.fbk = select ninf nsz i1 %i.dmu, float %.24316, float 0.000000e+00
  %i.fbl = insertelement <2 x float> poison, float %i.fbk, i64 0
  %i.fbm = shufflevector <2 x float> %i.fbl, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.nx

.lr.ph3922:                                       ; preds = %.lr.ph3922.preheader, %.thread3626
  %.853921 = phi ptr [ %.87, %.thread3626 ], [ %.82.lcssa, %.lr.ph3922.preheader ] ; 9 uses
  %.2242353920 = phi ptr [ %i.fcr, %.thread3626 ], [ %.214234.lcssa, %.lr.ph3922.preheader ] ; 2 uses
  %.342993919 = phi i32 [ %i.fcs, %.thread3626 ], [ %.24298.lcssa, %.lr.ph3922.preheader ]
  %.743243918 = phi ptr [ %i.fcq, %.thread3626 ], [ %.54322.lcssa, %.lr.ph3922.preheader ] ; 4 uses
  %i.fbn = load <4 x i32>, ptr %.2242353920, align 4, !tbaa !51
  %i.fbo = sitofp fast <4 x i32> %i.fbn to <4 x float>
  %i.fbp = fmul fast <4 x float> %i.esl, %i.fbo   ; 6 uses
  %.not4492 = icmp eq ptr %.853921, null
  br i1 %.not4492, label %.thread3626, label %bb.nr

bb.nr:                                            ; preds = %.lr.ph3922
  br i1 %i.dmu, label %.thread3613, label %bb.ns

.thread3613:                                      ; preds = %bb.nr
  %i.fbq = fadd fast <4 x float> %i.fbp, %i.ezt
  br label %.thread3626

bb.ns:                                            ; preds = %bb.nr
  br i1 %or.cond37, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %bb.ns
  %i.fbr = fadd fast <4 x float> %i.fbp, %i.eto
  br label %.thread3626

bb.nu:                                            ; preds = %bb.ns
  switch i32 %2, label %.thread3626 [
    i32 3, label %bb.nv
    i32 4, label %bb.nw
  ]

bb.nv:                                            ; preds = %bb.nu
  %i.fbs = getelementptr inbounds nuw [4 x i8], ptr %.853921, i64 %i.t
  %i.fbt = load <2 x float>, ptr %.853921, align 4, !tbaa !69
  %i.fbu = load <2 x float>, ptr %i.fbs, align 4, !tbaa !69
  %i.fbv = shufflevector <2 x float> %i.fbt, <2 x float> %i.fbu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fbw = fmul fast <4 x float> %i.fbv, %i.dnn
  %i.fbx = fadd fast <4 x float> %i.fbw, %i.fbp
  %i.fby = getelementptr inbounds nuw i8, ptr %.853921, i64 8
  br label %.thread3626

bb.nw:                                            ; preds = %bb.nu
  %i.fbz = load <2 x float>, ptr %.853921, align 4, !tbaa !69
  %i.fca = fmul fast <2 x float> %i.fbz, %12
  %i.fcb = shufflevector <2 x float> %i.fca, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fcc = fadd fast <4 x float> %i.fcb, %i.fbp
  %i.fcd = getelementptr inbounds nuw i8, ptr %.853921, i64 8
  br label %.thread3626

.thread3626:                                      ; preds = %bb.nu, %bb.nt, %.thread3613, %bb.nv, %bb.nw, %.lr.ph3922
  %.87 = phi ptr [ %i.fcd, %bb.nw ], [ %.853921, %bb.nu ], [ null, %.lr.ph3922 ], [ %i.fby, %bb.nv ], [ %.853921, %.thread3613 ], [ %.853921, %bb.nt ] ; 2 uses
  %i.fce = phi <4 x float> [ %i.fcc, %bb.nw ], [ %i.fbp, %bb.nu ], [ %i.fbp, %.lr.ph3922 ], [ %i.fbx, %bb.nv ], [ %i.fbq, %.thread3613 ], [ %i.fbr, %bb.nt ] ; 4 uses
  %i.fcf = extractelement <4 x float> %i.fce, i64 0
  %i.fcg = fmul fast float %i.fcf, %8
  %i.fch = extractelement <4 x float> %i.fce, i64 1
  %i.fci = fmul fast float %i.fch, %8             ; 2 uses
  %i.fcj = extractelement <4 x float> %i.fce, i64 2
  %i.fck = fmul fast float %i.fcj, %8             ; 2 uses
  %i.fcl = extractelement <4 x float> %i.fce, i64 3
  %i.fcm = fmul fast float %i.fcl, %8
  store float %i.fcg, ptr %.743243918, align 4, !tbaa !69
  %i.fcn = getelementptr inbounds nuw i8, ptr %.743243918, i64 4
  %i.fco = getelementptr inbounds nuw [4 x i8], ptr %.743243918, i64 %i.k ; 2 uses
  %i.fcp = getelementptr i8, ptr %i.fco, i64 4
  %. = select i1 %.not4489, float %i.fci, float %i.fck
  %.4192 = select i1 %.not4489, float %i.fck, float %i.fci
  store float %., ptr %i.fcn, align 4, !tbaa !69
  store float %.4192, ptr %i.fco, align 4, !tbaa !69
  store float %i.fcm, ptr %i.fcp, align 4, !tbaa !69
  %i.fcq = getelementptr inbounds nuw i8, ptr %.743243918, i64 %..idx3675 ; 2 uses
  %i.fcr = getelementptr inbounds nuw i8, ptr %.2242353920, i64 16 ; 2 uses
  %i.fcs = add nuw nsw i32 %.342993919, 2         ; 3 uses
  %i.fct = or disjoint i32 %i.fcs, 1
  %i.fcu = icmp slt i32 %i.fct, %6
  br i1 %i.fcu, label %.lr.ph3922, label %.preheader3687, !llvm.loop !936

bb.nx:                                            ; preds = %.lr.ph3931, %bb.od
  %.883930 = phi ptr [ %.85.lcssa, %.lr.ph3931 ], [ %.90, %bb.od ] ; 7 uses
  %.2342363929 = phi ptr [ %.224235.lcssa, %.lr.ph3931 ], [ %i.fdw, %bb.od ] ; 2 uses
  %.443003928 = phi i32 [ %.34299.lcssa, %.lr.ph3931 ], [ %i.fdx, %bb.od ]
  %.943263927 = phi ptr [ %.74324.lcssa, %.lr.ph3931 ], [ %.104327, %bb.od ] ; 5 uses
  %i.fcv = load <2 x i32>, ptr %.2342363929, align 4, !tbaa !51
  %i.fcw = sitofp fast <2 x i32> %i.fcv to <2 x float>
  %i.fcx = fmul fast <2 x float> %i.esk, %i.fcw   ; 2 uses
  %.not4491 = icmp eq ptr %.883930, null
  br i1 %.not4491, label %bb.oa, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %15 = fadd reassoc nsz arcp contract afn <2 x float> %i.fcx, %i.fbm ; 4 uses
  %i.fcy = fadd fast <2 x float> %15, %i.etn
  %16 = select <2 x i1> %14, <2 x float> %i.fcy, <2 x float> %15
  switch i32 %2, label %bb.oa [
    i32 3, label %.thread3632
    i32 4, label %bb.nz
  ]

.thread3632:                                      ; preds = %bb.ny
  %i.fcz = load float, ptr %.883930, align 4, !tbaa !69
  %i.fda = getelementptr inbounds nuw [4 x i8], ptr %.883930, i64 %i.t
  %i.fdb = load float, ptr %i.fda, align 4, !tbaa !69
  %i.fdc = insertelement <2 x float> poison, float %i.fcz, i64 0
  %i.fdd = insertelement <2 x float> %i.fdc, float %i.fdb, i64 1
  %i.fde = fmul fast <2 x float> %i.fdd, %12
  %i.fdf = fadd fast <2 x float> %i.fde, %15
  %i.fdg = getelementptr inbounds nuw i8, ptr %.883930, i64 4
  br label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.fdh = load float, ptr %.883930, align 4, !tbaa !69
  %i.fdi = fmul fast float %i.fdh, %9
  %i.fdj = insertelement <2 x float> poison, float %i.fdi, i64 0
  %i.fdk = shufflevector <2 x float> %i.fdj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fdl = fadd fast <2 x float> %i.fdk, %15
  %i.fdm = getelementptr inbounds nuw i8, ptr %.883930, i64 4
  br label %bb.oa

bb.oa:                                            ; preds = %bb.ny, %.thread3632, %bb.nz, %bb.nx
  %.90 = phi ptr [ %i.fdm, %bb.nz ], [ %.883930, %bb.ny ], [ null, %bb.nx ], [ %i.fdg, %.thread3632 ] ; 2 uses
  %i.fdn = phi <2 x float> [ %i.fdl, %bb.nz ], [ %16, %bb.ny ], [ %i.fcx, %bb.nx ], [ %i.fdf, %.thread3632 ] ; 2 uses
  %i.fdo = extractelement <2 x float> %i.fdn, i64 0
  %i.fdp = fmul fast float %i.fdo, %8
  %i.fdq = extractelement <2 x float> %i.fdn, i64 1
  %i.fdr = fmul fast float %i.fdq, %8             ; 2 uses
  store float %i.fdp, ptr %.943263927, align 4, !tbaa !69
  br i1 %.not4489, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.fds = getelementptr inbounds nuw i8, ptr %.943263927, i64 4
  store float %i.fdr, ptr %i.fds, align 4, !tbaa !69
  %i.fdt = getelementptr inbounds nuw [4 x i8], ptr %.943263927, i64 %i.k
  br label %bb.od

bb.oc:                                            ; preds = %bb.oa
  %i.fdu = getelementptr inbounds nuw [4 x i8], ptr %.943263927, i64 %i.k
  store float %i.fdr, ptr %i.fdu, align 4, !tbaa !69
  %i.fdv = getelementptr inbounds nuw i8, ptr %.943263927, i64 4
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %.104327 = phi ptr [ %i.fdt, %bb.ob ], [ %i.fdv, %bb.oc ]
  %i.fdw = getelementptr inbounds nuw i8, ptr %.2342363929, i64 8 ; 2 uses
  %i.fdx = add nuw nsw i32 %.443003928, 1         ; 2 uses
  %exitcond4054.not = icmp eq i32 %i.fdx, %6
  br i1 %exitcond4054.not, label %._crit_edge3932, label %bb.nx, !llvm.loop !937

._crit_edge3932:                                  ; preds = %bb.od, %.preheader3687
  %.234236.lcssa = phi ptr [ %.224235.lcssa, %.preheader3687 ], [ %i.fdw, %bb.od ] ; 2 uses
  %.88.lcssa = phi ptr [ %.85.lcssa, %.preheader3687 ], [ %.90, %bb.od ] ; 2 uses
  %indvars.iv.next4056 = add nuw nsw i64 %indvars.iv4055, 2 ; 3 uses
  %i.fdy = icmp slt i64 %indvars.iv.next4056, %invariant.op4155
  br i1 %i.fdy, label %bb.ls, label %.preheader3686.loopexit, !llvm.loop !938

bb.oe:                                            ; preds = %.lr.ph3995, %._crit_edge3989
  %indvars.iv4059 = phi i64 [ %i.erv, %.lr.ph3995 ], [ %indvars.iv.next4060, %._crit_edge3989 ] ; 4 uses
  %.913994 = phi ptr [ %.72.lcssa, %.lr.ph3995 ], [ %.103.lcssa, %._crit_edge3989 ] ; 4 uses
  %.2442373993 = phi ptr [ %.184231.lcssa, %.lr.ph3995 ], [ %.294242.lcssa, %._crit_edge3989 ] ; 2 uses
  %i.fdz = load ptr, ptr %1, align 8, !tbaa !25   ; 2 uses
  br i1 %.not, label %bb.og, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.fea = getelementptr inbounds nuw [4 x i8], ptr %i.fdz, i64 %i.eqv
  %i.feb = add nsw i64 %indvars.iv4059, %i.eqy    ; 2 uses
  %i.fec = mul nsw i64 %i.feb, %i.erw
  %i.fed = getelementptr inbounds [4 x i8], ptr %i.fea, i64 %i.fec
  br label %bb.oh

bb.og:                                            ; preds = %bb.oe
  %i.fee = add nsw i64 %indvars.iv4059, %i.eqy    ; 2 uses
  %i.fef = mul i64 %i.k, %i.fee
  %i.feg = getelementptr inbounds nuw [4 x i8], ptr %i.fdz, i64 %i.fef
  %i.feh = getelementptr inbounds [4 x i8], ptr %i.feg, i64 %i.equ
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of
  %.pre-phi4063 = phi i64 [ %i.fee, %bb.og ], [ %i.feb, %bb.of ] ; 2 uses
  %.04173 = phi ptr [ %i.feh, %bb.og ], [ %i.fed, %bb.of ] ; 2 uses
  %i.fei = load ptr, ptr %7, align 8, !tbaa !25
  %i.fej = getelementptr inbounds nuw [4 x i8], ptr %i.fei, i64 %.pre-phi4063
  %i.fek = load float, ptr %i.fej, align 4, !tbaa !69 ; 4 uses
  %i.fel = insertelement <4 x float> poison, float %i.fek, i64 0
  %i.fem = shufflevector <4 x float> %i.fel, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.fen = insertelement <16 x float> poison, float %i.fek, i64 0
  %i.feo = shufflevector <16 x float> %i.fen, <16 x float> poison, <16 x i32> zeroinitializer
  %.not4467 = icmp eq ptr %.913994, null
  br i1 %.not4467, label %.thread3651, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  br i1 %i.eqw, label %.thread3636, label %bb.oj

.thread3636:                                      ; preds = %bb.oi
  %i.fep = load float, ptr %.913994, align 4, !tbaa !69
  %i.feq = fmul fast float %i.fep, %9             ; 3 uses
  %i.fer = insertelement <4 x float> poison, float %i.feq, i64 0
  %i.fes = shufflevector <4 x float> %i.fer, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fet = insertelement <16 x float> poison, float %i.feq, i64 0
  %i.feu = shufflevector <16 x float> %i.fet, <16 x float> poison, <16 x i32> zeroinitializer
  br label %.thread3651

bb.oj:                                            ; preds = %bb.oi
  br i1 %or.cond49, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  %i.fev = load ptr, ptr %0, align 8, !tbaa !25
  %i.few = getelementptr inbounds [4 x i8], ptr %i.fev, i64 %i.eqy
  %i.fex = getelementptr inbounds nuw [4 x i8], ptr %i.few, i64 %indvars.iv4059 ; 2 uses
  %i.fey = load float, ptr %i.fex, align 4, !tbaa !69
  %i.fez = fmul fast float %i.fey, %9             ; 3 uses
  %i.ffa = insertelement <4 x float> poison, float %i.fez, i64 0
  %i.ffb = shufflevector <4 x float> %i.ffa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ffc = insertelement <16 x float> poison, float %i.fez, i64 0
  %i.ffd = shufflevector <16 x float> %i.ffc, <16 x float> poison, <16 x i32> zeroinitializer
  br label %.thread3651

bb.ol:                                            ; preds = %bb.oj
  switch i32 %2, label %.thread3651 [
    i32 3, label %bb.om
    i32 4, label %bb.on
  ]

bb.om:                                            ; preds = %bb.ol
  %i.ffe = load ptr, ptr %0, align 8, !tbaa !25
  %i.fff = mul i64 %i.t, %.pre-phi4063
  %i.ffg = getelementptr inbounds nuw [4 x i8], ptr %i.ffe, i64 %i.fff
  %i.ffh = getelementptr inbounds [4 x i8], ptr %i.ffg, i64 %i.equ
  br label %.thread3651

bb.on:                                            ; preds = %bb.ol
  %i.ffi = load ptr, ptr %0, align 8, !tbaa !25
  %i.ffj = getelementptr inbounds [4 x i8], ptr %i.ffi, i64 %i.equ
  br label %.thread3651

.thread3651:                                      ; preds = %bb.ol, %bb.ok, %.thread3636, %bb.om, %bb.on, %bb.oh
  %.22428 = phi nsz <4 x float> [ zeroinitializer, %bb.oh ], [ zeroinitializer, %bb.on ], [ zeroinitializer, %bb.ol ], [ zeroinitializer, %bb.om ], [ %i.fes, %.thread3636 ], [ %i.ffb, %bb.ok ] ; 2 uses
  %.94 = phi ptr [ null, %bb.oh ], [ %i.ffj, %bb.on ], [ %.913994, %bb.ol ], [ %i.ffh, %bb.om ], [ %.913994, %.thread3636 ], [ %i.fex, %bb.ok ] ; 2 uses
  %.24172 = phi nsz float [ 0.000000e+00, %bb.oh ], [ 0.000000e+00, %bb.on ], [ 0.000000e+00, %bb.ol ], [ 0.000000e+00, %bb.om ], [ %i.feq, %.thread3636 ], [ %i.fez, %bb.ok ] ; 2 uses
  %.24167 = phi nsz <16 x float> [ zeroinitializer, %bb.oh ], [ zeroinitializer, %bb.on ], [ zeroinitializer, %bb.ol ], [ zeroinitializer, %bb.om ], [ %i.feu, %.thread3636 ], [ %i.ffd, %bb.ok ]
  br i1 %i.eqz, label %.lr.ph3949, label %.preheader3685

.preheader3685:                                   ; preds = %bb.pa, %.thread3651
  %.254238.lcssa = phi ptr [ %.2442373993, %.thread3651 ], [ %i.fgh, %bb.pa ] ; 2 uses
  %.95.lcssa = phi ptr [ %.94, %.thread3651 ], [ %.96, %bb.pa ] ; 2 uses
  %.14174.lcssa = phi ptr [ %.04173, %.thread3651 ], [ %i.fgg, %bb.pa ] ; 2 uses
  %.04162.lcssa = phi i32 [ 0, %.thread3651 ], [ %i.fgi, %bb.pa ] ; 3 uses
  %i.ffk = or disjoint i32 %.04162.lcssa, 7
  %i.ffl = icmp slt i32 %i.ffk, %6
  br i1 %i.ffl, label %.lr.ph3959, label %.preheader3684

.lr.ph3949:                                       ; preds = %.thread3651, %bb.pa
  %.041623948 = phi i32 [ %i.fgi, %bb.pa ], [ 0, %.thread3651 ]
  %.341683947 = phi <16 x float> [ %.44169, %bb.pa ], [ %.24167, %.thread3651 ] ; 4 uses
  %.141743945 = phi ptr [ %i.fgg, %bb.pa ], [ %.04173, %.thread3651 ] ; 13 uses
  %.953944 = phi ptr [ %.96, %bb.pa ], [ %.94, %.thread3651 ] ; 5 uses
  %.2542383943 = phi ptr [ %i.fgh, %bb.pa ], [ %.2442373993, %.thread3651 ] ; 2 uses
  %i.ffm = load <16 x i32>, ptr %.2542383943, align 1, !tbaa !90
  %i.ffn = sitofp fast <16 x i32> %i.ffm to <16 x float>
  %i.ffo = fmul fast <16 x float> %i.feo, %i.ffn  ; 4 uses
  %.not4483 = icmp eq ptr %.953944, null
  br i1 %.not4483, label %bb.or, label %bb.oo

bb.oo:                                            ; preds = %.lr.ph3949
  br i1 %or.cond53, label %.thread3656, label %bb.op

.thread3656:                                      ; preds = %bb.oo
  %i.ffp = fadd fast <16 x float> %i.ffo, %.341683947
  br label %bb.or

bb.op:                                            ; preds = %bb.oo
  br i1 %or.cond55, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  %i.ffq = load <16 x float>, ptr %.953944, align 1, !tbaa !90 ; 2 uses
  %i.ffr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ffq, <16 x float> nofpclass(nan inf) %i.erc, <16 x float> nofpclass(nan inf) %i.ffo)
  %i.ffs = getelementptr inbounds nuw i8, ptr %.953944, i64 64
  br label %bb.or

bb.or:                                            ; preds = %.thread3656, %bb.oq, %bb.op, %.lr.ph3949
  %.96 = phi ptr [ %i.ffs, %bb.oq ], [ %.953944, %bb.op ], [ null, %.lr.ph3949 ], [ %.953944, %.thread3656 ] ; 2 uses
  %.44169 = phi nsz <16 x float> [ %i.ffq, %bb.oq ], [ %.341683947, %bb.op ], [ %.341683947, %.lr.ph3949 ], [ %.341683947, %.thread3656 ]
  %.14161 = phi nsz <16 x float> [ %i.ffr, %bb.oq ], [ %i.ffo, %bb.op ], [ %i.ffo, %.lr.ph3949 ], [ %i.ffp, %.thread3656 ]
  %.2 = fmul reassoc nsz arcp contract afn <16 x float> %.14161, %i.erg ; 12 uses
  br i1 %.not, label %bb.oz, label %bb.os

bb.os:                                            ; preds = %bb.or
  br i1 %i.erh, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  store <16 x float> %.2, ptr %.141743945, align 1, !tbaa !90
  br label %bb.pa

bb.ou:                                            ; preds = %bb.os
  br i1 %i.erj, label %.split4813, label %bb.pa

.split4813:                                       ; preds = %bb.ou
  switch i32 %i.erk, label %bb.pa [
    i32 4, label %bb.ov
    i32 3, label %bb.ow
    i32 2, label %bb.ox
    i32 0, label %bb.oy
  ]

bb.ov:                                            ; preds = %.split4813
  store <16 x float> %.2, ptr %.141743945, align 1, !tbaa !90
  switch i32 %i.b, label %bb.pa [
    i32 8, label %.thread3659
    i32 4, label %bb.ox
    i32 1, label %bb.oy
  ]

.thread3659:                                      ; preds = %bb.ov
  %i.fft = shufflevector <16 x float> %.2, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.fft, ptr %.141743945, align 1, !tbaa !90
  %i.ffu = getelementptr inbounds nuw i8, ptr %.141743945, i64 %.idx4484
  %i.ffv = shufflevector <16 x float> %.2, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ffv, ptr %i.ffu, align 1, !tbaa !90
  br label %bb.pa

bb.ow:                                            ; preds = %.split4813
  %i.ffw = shufflevector <16 x float> %.2, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.ffw, ptr %.141743945, align 1, !tbaa !90
end_hunk_4
begin_hunk_5_@_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  br label %bb.pe

bb.pe:                                            ; preds = %.thread3661, %bb.pd, %bb.pc, %.lr.ph3959
  %.42430 = phi nsz <4 x float> [ %.324293954, %.lr.ph3959 ], [ %i.fgw, %bb.pd ], [ %.324293954, %bb.pc ], [ %.324293954, %.thread3661 ] ; 2 uses
  %.12424 = phi nsz <4 x float> [ %i.fgp, %.lr.ph3959 ], [ %i.fgz, %bb.pd ], [ %i.fgp, %bb.pc ], [ %i.fgu, %.thread3661 ]
  %.12421 = phi nsz <4 x float> [ %i.fgt, %.lr.ph3959 ], [ %i.fha, %bb.pd ], [ %i.fgt, %bb.pc ], [ %i.fgv, %.thread3661 ]
  %.98 = phi ptr [ null, %.lr.ph3959 ], [ %i.fhb, %bb.pd ], [ %.973956, %bb.pc ], [ %.973956, %.thread3661 ] ; 2 uses
  %.22425 = fmul reassoc nsz arcp contract afn <4 x float> %.12424, %i.eru ; 8 uses
  %.22422 = fmul reassoc nsz arcp contract afn <4 x float> %.12421, %i.eru ; 8 uses
  br i1 %.not, label %bb.pl, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  br i1 %i.erh, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  store <4 x float> %.22425, ptr %.341763957, align 1, !tbaa !90
  %i.fhc = getelementptr inbounds nuw i8, ptr %.341763957, i64 16
  store <4 x float> %.22422, ptr %i.fhc, align 1, !tbaa !90
  br label %bb.pm

bb.ph:                                            ; preds = %bb.pf
  switch i32 %i.b, label %bb.pm [
    i32 8, label %bb.pi
    i32 4, label %bb.pj
    i32 1, label %bb.pk
  ]

bb.pi:                                            ; preds = %bb.ph
  store <4 x float> %.22425, ptr %.341763957, align 1, !tbaa !90
  %i.fhd = getelementptr inbounds nuw i8, ptr %.341763957, i64 16
  store <4 x float> %.22422, ptr %i.fhd, align 1, !tbaa !90
  br label %bb.pm

bb.pj:                                            ; preds = %bb.ph
  store <4 x float> %.22425, ptr %.341763957, align 1, !tbaa !90
  %i.fhe = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4485
  store <4 x float> %.22422, ptr %i.fhe, align 1, !tbaa !90
  br label %bb.pm

bb.pk:                                            ; preds = %bb.ph
  %.sroa.04.0.vec.extract = extractelement <4 x float> %.22425, i64 0
  store float %.sroa.04.0.vec.extract, ptr %.341763957, align 4, !tbaa !69
  %.sroa.04.4.vec.extract = extractelement <4 x float> %.22425, i64 1
  %i.fhf = getelementptr inbounds nuw [4 x i8], ptr %.341763957, i64 %i.k
  store float %.sroa.04.4.vec.extract, ptr %i.fhf, align 4, !tbaa !69
  %.sroa.04.8.vec.extract = extractelement <4 x float> %.22425, i64 2
  %i.fhg = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4476
  store float %.sroa.04.8.vec.extract, ptr %i.fhg, align 4, !tbaa !69
  %.sroa.04.12.vec.extract = extractelement <4 x float> %.22425, i64 3
  %i.fhh = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4477
  store float %.sroa.04.12.vec.extract, ptr %i.fhh, align 4, !tbaa !69
  %.sroa.7.16.vec.extract = extractelement <4 x float> %.22422, i64 0
  %i.fhi = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4485
  store float %.sroa.7.16.vec.extract, ptr %i.fhi, align 4, !tbaa !69
  %.sroa.7.20.vec.extract = extractelement <4 x float> %.22422, i64 1
  %i.fhj = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4479
  store float %.sroa.7.20.vec.extract, ptr %i.fhj, align 4, !tbaa !69
  %.sroa.7.24.vec.extract = extractelement <4 x float> %.22422, i64 2
  %i.fhk = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4480
  store float %.sroa.7.24.vec.extract, ptr %i.fhk, align 4, !tbaa !69
  %.sroa.7.28.vec.extract = extractelement <4 x float> %.22422, i64 3
  %i.fhl = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.idx4481
  store float %.sroa.7.28.vec.extract, ptr %i.fhl, align 4, !tbaa !69
  br label %bb.pm

bb.pl:                                            ; preds = %bb.pe
  store <4 x float> %.22425, ptr %.341763957, align 1, !tbaa !90
  %i.fhm = getelementptr inbounds nuw i8, ptr %.341763957, i64 16
  store <4 x float> %.22422, ptr %i.fhm, align 1, !tbaa !90
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pg, %bb.pk, %bb.ph, %bb.pi, %bb.pj, %bb.pl
  %.sink4189.a = phi i64 [ 32, %bb.pl ], [ %.idx4484, %bb.pj ], [ %.idx4484, %bb.pi ], [ %.idx4484, %bb.ph ], [ %.idx4484, %bb.pk ], [ %.idx4484, %bb.pg ]
  %i.fhn = getelementptr inbounds nuw i8, ptr %.341763957, i64 %.sink4189.a ; 2 uses
  %i.fho = getelementptr inbounds nuw i8, ptr %.2642393955, i64 32 ; 2 uses
  %i.fhp = add nuw nsw i32 %.141633958, 8         ; 3 uses
  %i.fhq = or disjoint i32 %i.fhp, 7
  %i.fhr = icmp slt i32 %i.fhq, %6
  br i1 %i.fhr, label %.lr.ph3959, label %.preheader3684, !llvm.loop !940

.preheader3683:                                   ; preds = %bb.px, %.preheader3684
  %.274240.lcssa = phi ptr [ %.264239.lcssa, %.preheader3684 ], [ %i.fil, %bb.px ] ; 2 uses
  %.99.lcssa = phi ptr [ %.97.lcssa, %.preheader3684 ], [ %.100, %bb.px ] ; 2 uses
  %.5.lcssa = phi ptr [ %.34176.lcssa, %.preheader3684 ], [ %i.fik, %bb.px ] ; 2 uses
  %.24164.lcssa = phi i32 [ %.14163.lcssa, %.preheader3684 ], [ %i.fim, %bb.px ] ; 3 uses
  %i.fhs = or disjoint i32 %.24164.lcssa, 1
  %i.fht = icmp slt i32 %i.fhs, %6
  br i1 %i.fht, label %.lr.ph3979, label %.preheader

.lr.ph3979:                                       ; preds = %.preheader3683
  %i.fhu = select ninf nsz i1 %or.cond53, float %.24172, float 0.000000e+00
  %i.fhv = insertelement <2 x float> poison, float %i.fek, i64 0
  %i.fhw = shufflevector <2 x float> %i.fhv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fhx = insertelement <2 x float> poison, float %i.fhu, i64 0
  %i.fhy = shufflevector <2 x float> %i.fhx, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.py

.lr.ph3970:                                       ; preds = %.preheader3684, %bb.px
  %.241643969 = phi i32 [ %i.fim, %bb.px ], [ %.14163.lcssa, %.preheader3684 ]
  %.53968 = phi ptr [ %i.fik, %bb.px ], [ %.34176.lcssa, %.preheader3684 ] ; 8 uses
  %.993967 = phi ptr [ %.100, %bb.px ], [ %.97.lcssa, %.preheader3684 ] ; 5 uses
  %.2742403966 = phi ptr [ %i.fil, %bb.px ], [ %.264239.lcssa, %.preheader3684 ] ; 2 uses
  %.524313965 = phi <4 x float> [ %.62432, %bb.px ], [ %.32429.lcssa, %.preheader3684 ] ; 4 uses
  %i.fhz = load <4 x i32>, ptr %.2742403966, align 1, !tbaa !90
  %i.fia = sitofp fast <4 x i32> %i.fhz to <4 x float>
  %i.fib = fmul fast <4 x float> %i.fem, %i.fia   ; 4 uses
  %.not4470 = icmp eq ptr %.993967, null
  br i1 %.not4470, label %bb.pq, label %bb.pn

bb.pn:                                            ; preds = %.lr.ph3970
  br i1 %or.cond53, label %.thread3665, label %bb.po

.thread3665:                                      ; preds = %bb.pn
  %i.fic = fadd fast <4 x float> %i.fib, %.524313965
  br label %bb.pq

bb.po:                                            ; preds = %bb.pn
  br i1 %or.cond55, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  %i.fid = load <4 x float>, ptr %.993967, align 1, !tbaa !90 ; 2 uses
  %i.fie = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fid, <4 x float> nofpclass(nan inf) %i.err, <4 x float> nofpclass(nan inf) %i.fib)
  %i.fif = getelementptr inbounds nuw i8, ptr %.993967, i64 16
  br label %bb.pq

bb.pq:                                            ; preds = %.thread3665, %bb.pp, %bb.po, %.lr.ph3970
  %.62432 = phi nsz <4 x float> [ %.524313965, %.lr.ph3970 ], [ %i.fid, %bb.pp ], [ %.524313965, %bb.po ], [ %.524313965, %.thread3665 ]
  %.12369 = phi nsz <4 x float> [ %i.fib, %.lr.ph3970 ], [ %i.fie, %bb.pp ], [ %i.fib, %bb.po ], [ %i.fic, %.thread3665 ]
  %.100 = phi ptr [ null, %.lr.ph3970 ], [ %i.fif, %bb.pp ], [ %.993967, %bb.po ], [ %.993967, %.thread3665 ] ; 2 uses
  %i.fig = fmul fast <4 x float> %.12369, %i.ert  ; 7 uses
  br i1 %.not, label %bb.pw, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  br i1 %i.erh, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %bb.pr
  store <4 x float> %i.fig, ptr %.53968, align 1, !tbaa !90
  br label %bb.px

bb.pt:                                            ; preds = %bb.pr
  switch i32 %i.b, label %bb.px [
    i32 4, label %bb.pu
    i32 1, label %bb.pv
  ]

bb.pu:                                            ; preds = %bb.pt
  store <4 x float> %i.fig, ptr %.53968, align 1, !tbaa !90
  br label %bb.px

bb.pv:                                            ; preds = %bb.pt
  %.sroa.0.0.vec.extract = extractelement <4 x float> %i.fig, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.53968, align 4, !tbaa !69
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.fig, i64 1
  %i.fih = getelementptr inbounds nuw [4 x i8], ptr %.53968, i64 %i.k
  store float %.sroa.0.4.vec.extract, ptr %i.fih, align 4, !tbaa !69
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.fig, i64 2
  %i.fii = getelementptr inbounds nuw i8, ptr %.53968, i64 %.idx4476
  store float %.sroa.0.8.vec.extract, ptr %i.fii, align 4, !tbaa !69
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.fig, i64 3
  %i.fij = getelementptr inbounds nuw i8, ptr %.53968, i64 %.idx4477
  store float %.sroa.0.12.vec.extract, ptr %i.fij, align 4, !tbaa !69
  br label %bb.px

bb.pw:                                            ; preds = %bb.pq
  store <4 x float> %i.fig, ptr %.53968, align 1, !tbaa !90
  br label %bb.px

bb.px:                                            ; preds = %bb.ps, %bb.pv, %bb.pt, %bb.pu, %bb.pw
  %.sink4190 = phi i64 [ 16, %bb.pw ], [ %.idx4485, %bb.pu ], [ %.idx4485, %bb.pt ], [ %.idx4485, %bb.pv ], [ %.idx4485, %bb.ps ]
  %i.fik = getelementptr inbounds nuw i8, ptr %.53968, i64 %.sink4190 ; 2 uses
  %i.fil = getelementptr inbounds nuw i8, ptr %.2742403966, i64 16 ; 2 uses
  %i.fim = add nuw nsw i32 %.241643969, 4         ; 3 uses
  %i.fin = or disjoint i32 %i.fim, 3
  %i.fio = icmp slt i32 %i.fin, %6
  br i1 %i.fio, label %.lr.ph3970, label %.preheader3683, !llvm.loop !941

.preheader:                                       ; preds = %bb.qe, %.preheader3683
  %.284241.lcssa = phi ptr [ %.274240.lcssa, %.preheader3683 ], [ %i.fjh, %bb.qe ] ; 2 uses
  %.101.lcssa = phi ptr [ %.99.lcssa, %.preheader3683 ], [ %.102, %bb.qe ] ; 2 uses
  %.7.lcssa = phi ptr [ %.5.lcssa, %.preheader3683 ], [ %i.fjg, %bb.qe ]
  %.3.lcssa = phi i32 [ %.24164.lcssa, %.preheader3683 ], [ %i.fji, %bb.qe ] ; 2 uses
  %i.fip = icmp slt i32 %.3.lcssa, %6
  br i1 %i.fip, label %.lr.ph3988, label %._crit_edge3989

.lr.ph3988:                                       ; preds = %.preheader
  %i.fiq = select ninf nsz i1 %or.cond53, float %.24172, float 0.000000e+00
  br label %bb.qf

bb.py:                                            ; preds = %.lr.ph3979, %bb.qe
  %.33978 = phi i32 [ %.24164.lcssa, %.lr.ph3979 ], [ %i.fji, %bb.qe ]
  %.73977 = phi ptr [ %.5.lcssa, %.lr.ph3979 ], [ %i.fjg, %bb.qe ] ; 4 uses
  %.1013976 = phi ptr [ %.99.lcssa, %.lr.ph3979 ], [ %.102, %bb.qe ] ; 4 uses
  %.2842413975 = phi ptr [ %.274240.lcssa, %.lr.ph3979 ], [ %i.fjh, %bb.qe ] ; 2 uses
  %i.fir = load <2 x i32>, ptr %.2842413975, align 4, !tbaa !51
  %i.fis = sitofp fast <2 x i32> %i.fir to <2 x float>
  %i.fit = fmul fast <2 x float> %i.fhw, %i.fis   ; 3 uses
  %.not4469 = icmp eq ptr %.1013976, null
  br i1 %.not4469, label %bb.qb, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.fiu = fadd reassoc nsz arcp contract afn <2 x float> %i.fit, %i.fhy
  br i1 %or.cond55, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %bb.pz
  %i.fiv = load <2 x float>, ptr %.1013976, align 4, !tbaa !69
  %i.fiw = fmul fast <2 x float> %i.fiv, %i.ery
  %i.fix = fadd fast <2 x float> %i.fiw, %i.fit
  %i.fiy = getelementptr inbounds nuw i8, ptr %.1013976, i64 8
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz, %bb.py
  %.102 = phi ptr [ %i.fiy, %bb.qa ], [ %.1013976, %bb.pz ], [ null, %bb.py ] ; 2 uses
  %i.fiz = phi <2 x float> [ %i.fix, %bb.qa ], [ %i.fiu, %bb.pz ], [ %i.fit, %bb.py ] ; 2 uses
  %i.fja = extractelement <2 x float> %i.fiz, i64 0
  %i.fjb = fmul fast float %i.fja, %8
  %i.fjc = extractelement <2 x float> %i.fiz, i64 1
  %i.fjd = fmul fast float %i.fjc, %8             ; 2 uses
  store float %i.fjb, ptr %.73977, align 4, !tbaa !69
  br i1 %.not, label %bb.qd, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.fje = getelementptr inbounds nuw [4 x i8], ptr %.73977, i64 %i.k
  store float %i.fjd, ptr %i.fje, align 4, !tbaa !69
  br label %bb.qe

bb.qd:                                            ; preds = %bb.qb
  %i.fjf = getelementptr inbounds nuw i8, ptr %.73977, i64 4
  store float %i.fjd, ptr %i.fjf, align 4, !tbaa !69
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc
  %.sink4191 = phi i64 [ 8, %bb.qd ], [ %.idx4476, %bb.qc ]
  %i.fjg = getelementptr inbounds nuw i8, ptr %.73977, i64 %.sink4191 ; 2 uses
  %i.fjh = getelementptr inbounds nuw i8, ptr %.2842413975, i64 8 ; 2 uses
  %i.fji = add nuw nsw i32 %.33978, 2             ; 3 uses
  %i.fjj = or disjoint i32 %i.fji, 1
  %i.fjk = icmp slt i32 %i.fjj, %6
  br i1 %i.fjk, label %bb.py, label %.preheader, !llvm.loop !942

bb.qf:                                            ; preds = %.lr.ph3988, %bb.qi
  %.43987 = phi i32 [ %.3.lcssa, %.lr.ph3988 ], [ %i.fjw, %bb.qi ]
  %.93986 = phi ptr [ %.7.lcssa, %.lr.ph3988 ], [ %.10, %bb.qi ] ; 3 uses
  %.1033985 = phi ptr [ %.101.lcssa, %.lr.ph3988 ], [ %.104, %bb.qi ] ; 4 uses
  %.2942423984 = phi ptr [ %.284241.lcssa, %.lr.ph3988 ], [ %i.fjv, %bb.qi ] ; 2 uses
  %i.fjl = load i32, ptr %.2942423984, align 4, !tbaa !51
  %i.fjm = sitofp fast i32 %i.fjl to float
  %i.fjn = fmul fast float %i.fek, %i.fjm         ; 3 uses
  %.not4468 = icmp eq ptr %.1033985, null
  br i1 %.not4468, label %bb.qi, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %spec.select = fadd reassoc nsz arcp contract afn float %i.fjn, %i.fiq
  br i1 %or.cond55, label %bb.qh, label %bb.qi

bb.qh:                                            ; preds = %bb.qg
  %i.fjo = load float, ptr %.1033985, align 4, !tbaa !69
  %i.fjp = fmul fast float %i.fjo, %9
  %i.fjq = fadd fast float %i.fjp, %i.fjn
  %i.fjr = getelementptr inbounds nuw i8, ptr %.1033985, i64 4
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.qg, %bb.qf
  %.104 = phi ptr [ %i.fjr, %bb.qh ], [ %.1033985, %bb.qg ], [ null, %bb.qf ] ; 2 uses
  %.1 = phi nsz float [ %i.fjq, %bb.qh ], [ %spec.select, %bb.qg ], [ %i.fjn, %bb.qf ]
  %i.fjs = fmul fast float %.1, %8
  store float %i.fjs, ptr %.93986, align 4, !tbaa !69
  %i.fjt = getelementptr inbounds nuw [4 x i8], ptr %.93986, i64 %i.k
  %i.fju = getelementptr inbounds nuw i8, ptr %.93986, i64 4
  %.10 = select i1 %.not, ptr %i.fju, ptr %i.fjt
  %i.fjv = getelementptr inbounds nuw i8, ptr %.2942423984, i64 4 ; 2 uses
  %i.fjw = add nuw nsw i32 %.43987, 1             ; 2 uses
  %exitcond4058.not = icmp eq i32 %i.fjw, %6
  br i1 %exitcond4058.not, label %._crit_edge3989, label %bb.qf, !llvm.loop !943

._crit_edge3989:                                  ; preds = %bb.qi, %.preheader
  %.294242.lcssa = phi ptr [ %.284241.lcssa, %.preheader ], [ %i.fjv, %bb.qi ]
  %.103.lcssa = phi ptr [ %.101.lcssa, %.preheader ], [ %.104, %bb.qi ]
  %indvars.iv.next4060 = add nsw i64 %indvars.iv4059, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next4060 to i32
  %exitcond4062.not = icmp eq i32 %4, %lftr.wideiv
  br i1 %exitcond4062.not, label %._crit_edge3996, label %bb.oe, !llvm.loop !944

._crit_edge3996:                                  ; preds = %._crit_edge3989, %.preheader3686
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #16

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scatter.dps.512(ptr, <16 x i1>, <16 x i32>, <16 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #16

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scattersiv8.sf(ptr, <8 x i1>, <8 x i32>, <8 x float>, i32 immarg) #9

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scattersiv4.sf(ptr, <4 x i1>, <4 x i32>, <4 x float>, i32 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL20compute_B_int8_scaleERKNS_3MatERf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  %i.c = icmp eq i32 %i.b, 3                      ; 5 uses
  %.in.v.i = select i1 %i.c, i64 56, i64 48
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.d = load i32, ptr %.in.i, align 8, !tbaa !51 ; 6 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph106.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit

.lr.ph106.i:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8              ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !25     ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !65   ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 5 uses
  %i.o = mul nsw i32 %i.m, %i.g                   ; 22 uses
  %i.p = icmp sgt i32 %i.o, 15
  br i1 %i.p, label %.lr.ph106.split.us.preheader.i, label %.lr.ph106.split.i

.lr.ph106.split.us.preheader.i:                   ; preds = %.lr.ph106.i
  %i.q = and i32 %i.o, 2147483632                 ; 3 uses
  %wide.trip.count276.i = zext nneg i32 %i.d to i64
  %..i = select i1 %i.c, i64 %i.j, i64 %i.h
  %factor.op.mul297.i = mul i64 %..i, %i.n
  %i.r = or disjoint i32 %i.q, 7
  %i.s = icmp samesign ult i32 %i.r, %i.o
  %i.t = add nsw i32 %i.o, -16                    ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = add nuw nsw i32 %i.u, 1                  ; 2 uses
  %xtraiter248 = and i32 %i.v, 3                  ; 3 uses
  %i.w = icmp ult i32 %i.t, 48
  %unroll_iter254 = and i32 %i.v, 536870908
  %lcmp.mod250.not = icmp eq i32 %xtraiter248, 0
  %lcmp.mod253 = icmp ne i32 %xtraiter248, 0
  br label %.lr.ph106.split.us.i

.lr.ph106.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph106.split.us.preheader.i
  %indvars.iv273.i = phi i64 [ 0, %.lr.ph106.split.us.preheader.i ], [ %indvars.iv.next274.i, %._crit_edge.us.i ] ; 2 uses
  %.066103.us.i = phi float [ 0.000000e+00, %.lr.ph106.split.us.preheader.i ], [ %.167.lcssa.us.i, %._crit_edge.us.i ] ; 4 uses
  %.068102.us.i = phi <16 x float> [ zeroinitializer, %.lr.ph106.split.us.preheader.i ], [ %.lcssa209, %._crit_edge.us.i ] ; 2 uses
  %.070101.us.i = phi <8 x float> [ zeroinitializer, %.lr.ph106.split.us.preheader.i ], [ %.171.lcssa.us.i, %._crit_edge.us.i ] ; 2 uses
  %.072100.us.i = phi <4 x float> [ zeroinitializer, %.lr.ph106.split.us.preheader.i ], [ %.173.lcssa.us.i, %._crit_edge.us.i ] ; 2 uses
  %.reass298.i = mul i64 %factor.op.mul297.i, %indvars.iv273.i
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass298.i ; 2 uses
  br i1 %i.w, label %.epil.preheader, label %.lr.ph106.split.us.i.new

.lr.ph106.split.us.i.new:                         ; preds = %.lr.ph106.split.us.i, %.lr.ph106.split.us.i.new
  %.03477.us.i = phi ptr [ %i.ar, %.lr.ph106.split.us.i.new ], [ %i.x, %.lr.ph106.split.us.i ] ; 5 uses
  %.16976.us.i = phi <16 x float> [ %i.aq, %.lr.ph106.split.us.i.new ], [ %.068102.us.i, %.lr.ph106.split.us.i ]
  %niter255 = phi i32 [ %niter255.next.3, %.lr.ph106.split.us.i.new ], [ 0, %.lr.ph106.split.us.i ]
  %i.y = load <16 x i32>, ptr %.03477.us.i, align 1, !tbaa !90
  %i.z = and <16 x i32> %i.y, splat (i32 2147483647)
  %i.aa = bitcast <16 x i32> %i.z to <16 x float>
  %i.ab = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.16976.us.i, <16 x float> nofpclass(nan inf) %i.aa, i32 4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 64
  %i.ad = load <16 x i32>, ptr %i.ac, align 1, !tbaa !90
  %i.ae = and <16 x i32> %i.ad, splat (i32 2147483647)
  %i.af = bitcast <16 x i32> %i.ae to <16 x float>
  %i.ag = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ab, <16 x float> nofpclass(nan inf) %i.af, i32 4)
  %i.ah = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 128
  %i.ai = load <16 x i32>, ptr %i.ah, align 1, !tbaa !90
  %i.aj = and <16 x i32> %i.ai, splat (i32 2147483647)
  %i.ak = bitcast <16 x i32> %i.aj to <16 x float>
  %i.al = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.ak, i32 4)
  %i.am = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 192
  %i.an = load <16 x i32>, ptr %i.am, align 1, !tbaa !90
  %i.ao = and <16 x i32> %i.an, splat (i32 2147483647)
  %i.ap = bitcast <16 x i32> %i.ao to <16 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.al, <16 x float> nofpclass(nan inf) %i.ap, i32 4) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03477.us.i, i64 256 ; 3 uses
  %niter255.next.3 = add i32 %niter255, 4         ; 2 uses
  %niter255.ncmp.3.not = icmp eq i32 %niter255.next.3, %unroll_iter254
  br i1 %niter255.ncmp.3.not, label %..preheader75_crit_edge.us.i.unr-lcssa, label %.lr.ph106.split.us.i.new, !llvm.loop !945

.lr.ph84.us.i:                                    ; preds = %..preheader75_crit_edge.us.i, %.lr.ph84.us.i
  %.183.us.i = phi i32 [ %i.ax, %.lr.ph84.us.i ], [ %i.q, %..preheader75_crit_edge.us.i ]
  %.13582.us.i = phi ptr [ %i.aw, %.lr.ph84.us.i ], [ %.lcssa, %..preheader75_crit_edge.us.i ] ; 2 uses
  %.17181.us.i = phi <8 x float> [ %i.av, %.lr.ph84.us.i ], [ %.070101.us.i, %..preheader75_crit_edge.us.i ]
  %i.as = load <8 x i32>, ptr %.13582.us.i, align 1, !tbaa !90
  %i.at = and <8 x i32> %i.as, splat (i32 2147483647)
  %i.au = bitcast <8 x i32> %i.at to <8 x float>
  %i.av = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.17181.us.i, <8 x float> nofpclass(nan inf) %i.au) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.13582.us.i, i64 32 ; 2 uses
  %i.ax = add nuw nsw i32 %.183.us.i, 8           ; 3 uses
  %i.ay = or disjoint i32 %i.ax, 7
  %i.az = icmp slt i32 %i.ay, %i.o
  br i1 %i.az, label %.lr.ph84.us.i, label %.preheader74.us.i, !llvm.loop !946

.lr.ph91.us.i:                                    ; preds = %.preheader74.us.i, %.lr.ph91.us.i
  %.290.us.i = phi i32 [ %i.bf, %.lr.ph91.us.i ], [ %.1.lcssa.us.i, %.preheader74.us.i ]
  %.23689.us.i = phi ptr [ %i.be, %.lr.ph91.us.i ], [ %.135.lcssa.us.i, %.preheader74.us.i ] ; 2 uses
  %.17388.us.i = phi <4 x float> [ %i.bd, %.lr.ph91.us.i ], [ %.072100.us.i, %.preheader74.us.i ]
  %i.ba = load <4 x i32>, ptr %.23689.us.i, align 1, !tbaa !90
  %i.bb = and <4 x i32> %i.ba, splat (i32 2147483647)
  %i.bc = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.17388.us.i, <4 x float> nofpclass(nan inf) %i.bc) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.23689.us.i, i64 16 ; 2 uses
  %i.bf = add nuw nsw i32 %.290.us.i, 4           ; 3 uses
  %i.bg = or disjoint i32 %i.bf, 3
  %i.bh = icmp slt i32 %i.bg, %i.o
  br i1 %i.bh, label %.lr.ph91.us.i, label %.preheader.us.i, !llvm.loop !947

.lr.ph98.us.i:                                    ; preds = %.lr.ph98.us.i.preheader, %.lr.ph98.us.i
  %.397.us.i = phi i32 [ %i.bl, %.lr.ph98.us.i ], [ %.397.us.i.ph, %.lr.ph98.us.i.preheader ]
  %.33796.us.i = phi ptr [ %i.bk, %.lr.ph98.us.i ], [ %.33796.us.i.ph, %.lr.ph98.us.i.preheader ] ; 2 uses
  %.16795.us.i = phi float [ %.sroa.speculated51.us.i, %.lr.ph98.us.i ], [ %.16795.us.i.ph, %.lr.ph98.us.i.preheader ]
  %i.bi = load float, ptr %.33796.us.i, align 4, !tbaa !69
  %i.bj = tail call fast float @llvm.fabs.f32(float %i.bi)
  %.sroa.speculated51.us.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.16795.us.i, float %i.bj) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.33796.us.i, i64 4
  %i.bl = add nuw nsw i32 %.397.us.i, 1           ; 2 uses
  %exitcond272.not.i = icmp eq i32 %i.bl, %i.o
  br i1 %exitcond272.not.i, label %._crit_edge.us.i, label %.lr.ph98.us.i, !llvm.loop !948

._crit_edge.us.i:                                 ; preds = %.lr.ph98.us.i, %middle.block180, %vec.epilog.middle.block204, %.preheader.us.i
  %.167.lcssa.us.i = phi float [ %.066103.us.i, %.preheader.us.i ], [ %i.cs, %vec.epilog.middle.block204 ], [ %i.cj, %middle.block180 ], [ %.sroa.speculated51.us.i, %.lr.ph98.us.i ] ; 2 uses
  %indvars.iv.next274.i = add nuw nsw i64 %indvars.iv273.i, 1 ; 2 uses
  %exitcond277.not.i = icmp eq i64 %indvars.iv.next274.i, %wide.trip.count276.i
  br i1 %exitcond277.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %.lr.ph106.split.us.i, !llvm.loop !949

.preheader.us.i:                                  ; preds = %.lr.ph91.us.i, %.preheader74.us.i
  %.173.lcssa.us.i = phi <4 x float> [ %.072100.us.i, %.preheader74.us.i ], [ %i.bd, %.lr.ph91.us.i ] ; 2 uses
  %.236.lcssa.us.i = phi ptr [ %.135.lcssa.us.i, %.preheader74.us.i ], [ %i.be, %.lr.ph91.us.i ] ; 5 uses
  %.2.lcssa.us.i = phi i32 [ %.1.lcssa.us.i, %.preheader74.us.i ], [ %i.bf, %.lr.ph91.us.i ] ; 5 uses
  %i.bm = icmp slt i32 %.2.lcssa.us.i, %i.o
  br i1 %i.bm, label %iter.check188, label %._crit_edge.us.i

iter.check188:                                    ; preds = %.preheader.us.i
  %i.bn = xor i32 %.2.lcssa.us.i, -1
  %i.bo = add i32 %i.o, %i.bn                     ; 3 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 5 uses
  %min.iters.check161 = icmp ult i32 %i.bo, 7
  br i1 %min.iters.check161, label %.lr.ph98.us.i.preheader, label %vector.main.loop.iter.check162

vector.main.loop.iter.check162:                   ; preds = %iter.check188
  %min.iters.check163 = icmp ult i32 %i.bo, 63
  br i1 %min.iters.check163, label %vec.epilog.ph192, label %vector.ph164

vector.ph164:                                     ; preds = %vector.main.loop.iter.check162
  %i.br = and i64 %i.bq, 56
  %n.vec165 = and i64 %i.bq, 8589934528           ; 5 uses
  %i.bs = trunc i64 %n.vec165 to i32
  %i.bt = add i32 %.2.lcssa.us.i, %i.bs
end_hunk_5
begin_hunk_6_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.17:bb.a

bb.r:                                             ; preds = %bb.q
  %i.lp = load ptr, ptr %i.bd, align 8, !tbaa !23 ; 2 uses
  %.not.i96.us = icmp eq ptr %i.lp, null
  br i1 %.not.i96.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lq = atomicrmw add ptr %i.lp, i32 -1 acq_rel, align 4
  %i.lr = icmp eq i32 %i.lq, 1
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
  br i1 %i.mg, label %bb.h, label %._crit_edge.us, !llvm.loop !1254

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit88.us
  %.val.us = load ptr, ptr %14, align 8
  call fastcc void @_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr %.val.us, ptr noundef nonnull readonly align 8 dereferenceable(72) %12, ptr noundef nonnull readonly align 8 dereferenceable(72) %13, i32 noundef %i.bo, i32 noundef %i.ch, i32 noundef %.sroa.speculated163, i32 noundef %.083187.us, i32 noundef %.sroa.speculated159.us, ptr noundef nonnull readonly align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.br, float noundef nofpclass(nan inf) %i.bs, i32 noundef %i.bq)
  %i.mh = add nsw i32 %.083187.us, %i.bn          ; 2 uses
  %i.mi = load i32, ptr %6, align 4, !tbaa !51    ; 2 uses
  %i.mj = icmp slt i32 %i.mh, %i.mi
  br i1 %i.mj, label %.lr.ph.us, label %._crit_edge189, !llvm.loop !1255

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread178.us, %bb.h, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.mk = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.mk) #30
  unreachable

.split.us:                                        ; preds = %bb.u
  %i.ml = landingpad { ptr, i32 }
          catch ptr null
  %i.mm = extractvalue { ptr, i32 } %i.ml, 0
  call void @__clang_call_terminate(ptr %i.mm) #30
  unreachable

.split192.us:                                     ; preds = %bb.z
  %i.mn = landingpad { ptr, i32 }
          catch ptr null
  %i.mo = extractvalue { ptr, i32 } %i.mn, 0
  call void @__clang_call_terminate(ptr %i.mo) #30
  unreachable

._crit_edge189:                                   ; preds = %.lr.ph188.split, %._crit_edge.us, %_ZN4ncnn3Mat7channelEi.exit121
  %i.mp = load ptr, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %.not.i104 = icmp eq ptr %i.mp, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge189
  %i.mq = atomicrmw add ptr %i.mp, i32 -1 acq_rel, align 4
  %i.mr = icmp eq i32 %i.mq, 1
  br i1 %i.mr, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ms = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %.not3.i105 = icmp eq ptr %i.ms, null
  %i.mt = load ptr, ptr %14, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i105, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !17
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8
  invoke void %i.mw(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef %i.mt)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ah, !inline_history !0

bb.af:                                            ; preds = %bb.ad
  %.not.i108 = icmp eq ptr %i.mt, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.mt) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ah:                                            ; preds = %bb.ae
  %i.mx = landingpad { ptr, i32 }
          catch ptr null
  %i.my = extractvalue { ptr, i32 } %i.mx, 0
  call void @__clang_call_terminate(ptr %i.my) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ac, %._crit_edge189, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.mz = add nsw i32 %.084195, 1
  %i.na = load i32, ptr %i.b, align 4, !tbaa !51
  %.not.not = icmp slt i32 %.084195, %i.na
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph188.split:                                  ; preds = %.lr.ph188, %.lr.ph188.split
  %i.nb = phi i32 [ %i.ne, %.lr.ph188.split ], [ %i.dg, %.lr.ph188 ]
  %.083187 = phi i32 [ %i.nd, %.lr.ph188.split ], [ 0, %.lr.ph188 ] ; 3 uses
  %i.nc = sub nsw i32 %i.nb, %.083187
  %.sroa.speculated159 = call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.nc)
  %.val = load ptr, ptr %14, align 8
  call fastcc void @_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr %.val, ptr noundef nonnull readonly align 8 dereferenceable(72) %12, ptr noundef nonnull readonly align 8 dereferenceable(72) %13, i32 noundef %i.bo, i32 noundef %i.ch, i32 noundef %.sroa.speculated163, i32 noundef %.083187, i32 noundef %.sroa.speculated159, ptr noundef nonnull readonly align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.br, float noundef nofpclass(nan inf) %i.bs, i32 noundef %i.bq)
  %i.nd = add nsw i32 %.083187, %i.bn             ; 2 uses
  %i.ne = load i32, ptr %6, align 4, !tbaa !51    ; 2 uses
  %i.nf = icmp slt i32 %i.nd, %i.ne
  br i1 %i.nf, label %.lr.ph188.split, label %._crit_edge189, !llvm.loop !1255

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge, %bb.a
  ret void
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
end_hunk_6
begin_hunk_7_@_ZN4ncnnL14gemm_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiffiiiiiRKNS_6OptionE.omp_outlined.24:bb.a
  %i.eo = atomicrmw add ptr %i.en, i32 -1 acq_rel, align 4
  %i.ep = icmp eq i32 %i.eo, 1
  br i1 %i.ep, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit81.us

bb.o:                                             ; preds = %bb.n
  %i.eq = load ptr, ptr %i.ba, align 8, !tbaa !24 ; 3 uses
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
  br i1 %i.ff, label %bb.h, label %._crit_edge.us, !llvm.loop !1709

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
  br i1 %i.fo, label %.lr.ph.us, label %._crit_edge157, !llvm.loop !1710

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.fp) #30
  unreachable

.split.us:                                        ; preds = %bb.p
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #30
  unreachable

.split160.us:                                     ; preds = %bb.u
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #30
  unreachable

._crit_edge157:                                   ; preds = %.lr.ph156.split, %._crit_edge.us, %_ZN4ncnn3Mat7channelEi.exit113
  %i.fu = load ptr, ptr %i.v, align 8, !tbaa !23  ; 2 uses
  %.not.i96 = icmp eq ptr %i.fu, null
  br i1 %.not.i96, label %_ZN4ncnn3MatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge157
  %i.fv = atomicrmw add ptr %i.fu, i32 -1 acq_rel, align 4
  %i.fw = icmp eq i32 %i.fv, 1
  br i1 %i.fw, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.fx = load ptr, ptr %i.y, align 8, !tbaa !24  ; 3 uses
  %.not3.i97 = icmp eq ptr %i.fx, null
  %i.fy = load ptr, ptr %19, align 8, !tbaa !25   ; 3 uses
  br i1 %.not3.i97, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  invoke void %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef %i.fy)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ac, !inline_history !0

bb.aa:                                            ; preds = %bb.y
  %.not.i100 = icmp eq ptr %i.fy, null
  br i1 %.not.i100, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.fy) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.x, %._crit_edge157, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #9
  %i.ge = add nsw i32 %.074163, 1
  %i.gf = load i32, ptr %i.b, align 4, !tbaa !51
  %.not.not = icmp slt i32 %.074163, %i.gf
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph156.split:                                  ; preds = %.lr.ph156, %.lr.ph156.split
  %i.gg = phi i32 [ %i.go, %.lr.ph156.split ], [ %.pre165, %.lr.ph156 ]
  %i.gh = phi i32 [ %i.gq, %.lr.ph156.split ], [ %i.ct, %.lr.ph156 ]
  %.073155 = phi i32 [ %i.gp, %.lr.ph156.split ], [ 0, %.lr.ph156 ] ; 3 uses
  %i.gi = sub nsw i32 %i.gh, %.073155
  %.sroa.speculated147 = call i32 @llvm.smin.i32(i32 %i.gg, i32 %i.gi)
  %i.gj = load i32, ptr %14, align 4, !tbaa !51
  %i.gk = load float, ptr %15, align 4, !tbaa !69
  %i.gl = load float, ptr %16, align 4, !tbaa !69
  %i.gm = load i32, ptr %17, align 4, !tbaa !51
  %i.gn = load i32, ptr %18, align 4, !tbaa !51
  %.val = load ptr, ptr %19, align 8
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %.val, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.gj, i32 noundef %i.bf, i32 noundef %.sroa.speculated151, i32 noundef %.073155, i32 noundef %.sroa.speculated147, float noundef nofpclass(nan inf) %i.gk, float noundef nofpclass(nan inf) %i.gl, i32 noundef %i.gm, i32 noundef %i.gn)
  %i.go = load i32, ptr %8, align 4, !tbaa !51    ; 2 uses
  %i.gp = add nsw i32 %i.go, %.073155             ; 2 uses
  %i.gq = load i32, ptr %7, align 4, !tbaa !51    ; 2 uses
  %i.gr = icmp slt i32 %i.gp, %i.gq
  br i1 %i.gr, label %.lr.ph156.split, label %._crit_edge157, !llvm.loop !1710

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #11

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <31 x float> @llvm.masked.load.v31f32.p0(ptr captures(none), <31 x i1>, <31 x float>) #29

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
end_hunk_7
