Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 133
loop-unroll.NumUnrolled: 137
begin_hunk_0_@_ZN4ncnn12Gemm_x86_avx21create_pipeline_bf16sERKNS_6OptionE:bb.a
  br i1 %.not38, label %bb.bv, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !22 ; 2 uses
  %.not.i83 = icmp eq ptr %i.ge, null
  br i1 %.not.i83, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gf = atomicrmw add ptr %i.ge, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gi = atomicrmw add ptr %i.gh, i32 -1 acq_rel, align 4
  %i.gj = icmp eq i32 %i.gi, 1
  br i1 %i.gj, label %bb.bi, label %_ZN4ncnn3MataSERKS0_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !23 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.gl, null
  %i.gm = load ptr, ptr %i.gc, align 8, !tbaa !24 ; 3 uses
  br i1 %.not3.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef %i.gm), !inline_history !1
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.bk:                                            ; preds = %bb.bi
  %.not.i18.i = icmp eq ptr %i.gm, null
  br i1 %.not.i18.i, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.gm) #9
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.bk, %bb.bl, %bb.bg, %bb.bh, %bb.bj
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.gv = load <2 x ptr>, ptr %i.gb, align 8, !tbaa !62
  store <2 x ptr> %i.gv, ptr %i.gc, align 8, !tbaa !62
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !63
  store i64 %i.gx, ptr %i.gq, align 8, !tbaa !63
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !64
  store i32 %i.gz, ptr %i.gr, align 8, !tbaa !64
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !23
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !23
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.he = load <4 x i32>, ptr %i.hd, align 8, !tbaa !50
  store <4 x i32> %i.he, ptr %i.gs, align 8, !tbaa !50
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !56
  store i32 %i.hg, ptr %i.gt, align 8, !tbaa !56
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !25
  store i64 %i.hi, ptr %i.gu, align 8, !tbaa !25
  %i.hj = load i32, ptr %i.fz, align 8, !tbaa !61
  %i.hk = icmp eq i32 %i.hj, 3
  br i1 %i.hk, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !65, !range !46, !noundef !47
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !49 ; 2 uses
  %i.hq = and i32 %i.hp, 7
  %i.hr = icmp eq i32 %i.hq, 0
  %i.hs = and i32 %i.hp, 3
  %i.ht = icmp eq i32 %i.hs, 0
  %i.hu = select i1 %i.ht, i32 4, i32 1
  %i.hv = select i1 %i.hr, i32 8, i32 %i.hu
  call void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.gb, ptr noundef nonnull align 8 dereferenceable(72) %i.gc, i32 noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.hw = load ptr, ptr %i.gc, align 8, !tbaa !24
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.bn
  %i.hy = load i64, ptr %i.gu, align 8, !tbaa !25
  %i.hz = load i32, ptr %i.gt, align 8, !tbaa !56
  %i.ia = sext i32 %i.hz to i64
  %i.ib = mul i64 %i.hy, %i.ia
  %.not84 = icmp eq i64 %i.ib, 0
  br i1 %.not84, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit, %bb.bm, %_ZN4ncnn3MataSERKS0_.exit
  %i.ic = load i8, ptr %1, align 8, !tbaa !57, !range !46, !noundef !47
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.ie = load ptr, ptr %i.gd, align 8, !tbaa !22 ; 2 uses
  %.not.i57 = icmp eq ptr %i.ie, null
  br i1 %.not.i57, label %_ZN4ncnn3Mat7releaseEv.exit59, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.if = atomicrmw add ptr %i.ie, i32 -1 acq_rel, align 4
  %i.ig = icmp eq i32 %i.if, 1
  br i1 %i.ig, label %bb.br, label %_ZN4ncnn3Mat7releaseEv.exit59

bb.br:                                            ; preds = %bb.bq
  %i.ih = load ptr, ptr %i.ha, align 8, !tbaa !23 ; 3 uses
  %.not3.i58 = icmp eq ptr %i.ih, null
  %i.ii = load ptr, ptr %i.gb, align 8, !tbaa !24 ; 3 uses
  br i1 %.not3.i58, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef %i.ii), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit59

bb.bt:                                            ; preds = %bb.br
  %.not.i71 = icmp eq ptr %i.ii, null
  br i1 %.not.i71, label %_ZN4ncnn3Mat7releaseEv.exit59, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @free(ptr noundef nonnull %i.ii) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit59

_ZN4ncnn3Mat7releaseEv.exit59:                    ; preds = %bb.bu, %bb.bt, %bb.bp, %bb.bq, %bb.bs
  store i64 0, ptr %i.hh, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gb, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.hd, i8 0, i64 20, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bo, %_ZN4ncnn3Mat7releaseEv.exit59, %bb.bd, %bb.bc
  %i.im = load i32, ptr %i.p, align 8, !tbaa !48
  %.not39 = icmp eq i32 %i.im, 0
  br i1 %.not39, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.in = load i32, ptr %i.ct, align 4, !tbaa !58
  %.not40 = icmp eq i32 %i.in, 0
  br i1 %.not40, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.io = load i32, ptr %i.fx, align 8, !tbaa !60
  %.not41 = icmp eq i32 %i.io, 0
  br i1 %.not41, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !55
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 580
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !74
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.bn, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.bx, %bb.by, %_ZN4ncnn3MatD2Ev.exit42, %_ZN4ncnn3MatD2Ev.exit44
  %.5 = phi i32 [ -100, %_ZN4ncnn3MatD2Ev.exit44 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZN4ncnn3MatD2Ev.exit42 ], [ 0, %bb.by ], [ 0, %bb.bx ], [ -100, %bb.bn ]
  ret i32 %.5

bb.bz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit43
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
  %i.h = fptosi float %i.g to i32                 ; 2 uses
  %10 = sdiv i32 %i.h, 8
  %11 = shl nsw i32 %10, 3
  %.sroa.speculated115 = tail call i32 @llvm.smax.i32(i32 %11, i32 8) ; 5 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !50
  %12 = sdiv i32 %i.h, 4
  %13 = shl nsw i32 %12, 2
  %.sroa.speculated109 = tail call i32 @llvm.smax.i32(i32 %13, i32 4)
  store i32 %.sroa.speculated109, ptr %7, align 4, !tbaa !50
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !50
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = add nuw i32 %i.j, %.sroa.speculated115
  %i.l = udiv i32 %i.k, %.sroa.speculated115      ; 3 uses
  %i.m = add nuw i32 %i.j, %i.l
  %i.n = udiv i32 %i.m, %i.l
  %i.o = add nuw nsw i32 %i.n, 7
  %i.p = and i32 %i.o, -8
  %.sroa.speculated99 = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !50
  %i.q = icmp eq i32 %i.l, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = fmul fast float %i.e, 1.250000e-01
  %i.s = uitofp nneg i32 %.sroa.speculated99 to float
  %i.t = fdiv fast float %i.r, %i.s
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %14 = sdiv i32 %i.u, 8
  %15 = shl nsw i32 %14, 3
  %.sroa.speculated93 = tail call i32 @llvm.smax.i32(i32 %15, i32 8)
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !50
  %16 = sdiv i32 %i.u, 4
  %17 = shl nsw i32 %16, 2
  %.sroa.speculated87 = tail call i32 @llvm.smax.i32(i32 %17, i32 4)
  store i32 %.sroa.speculated87, ptr %7, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.v = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %.0)
  %i.w = load i32, ptr %6, align 4, !tbaa !50
  %i.x = mul nsw i32 %i.w, %.sroa.speculated83    ; 4 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %0, -1                       ; 2 uses
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sdiv i32 %i.aa, %i.x                    ; 2 uses
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 7
  %i.af = sdiv i32 %i.ae, 8
  %i.ag = shl nsw i32 %i.af, 3
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.x)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.x, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !50
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %7, align 4, !tbaa !50    ; 3 uses
  %i.aj = add nsw i32 %1, -1                      ; 2 uses
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai                   ; 2 uses
  %i.am = add i32 %i.aj, %i.al
  %i.an = sdiv i32 %i.am, %i.al
  %i.ao = add nsw i32 %i.an, 3
  %i.ap = sdiv i32 %i.ao, 4
  %i.aq = shl nsw i32 %i.ap, 2
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ai)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = icmp sgt i32 %.0, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.at = sdiv i32 %i.as, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1)
  %i.au = add nuw nsw i32 %.sroa.speculated, 7
  %i.av = and i32 %i.au, 2147483640
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.as)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = add nuw nsw i32 %3, 7
  %i.ay = and i32 %i.ax, 2147483640
  store i32 %i.ay, ptr %6, align 4, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = icmp sgt i32 %4, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i32 %4, 3
  %i.bb = and i32 %i.ba, 2147483644
  store i32 %i.bb, ptr %7, align 4, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = icmp sgt i32 %5, 0
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = add nuw nsw i32 %5, 7
  %i.be = and i32 %i.bd, 2147483640
  store i32 %i.be, ptr %8, align 4, !tbaa !50
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn12Gemm_x86_avx15create_pipelineERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.h = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !50
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !50
  %i.k = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
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
  %i.r = load i32, ptr %3, align 4, !tbaa !50     ; 2 uses
  %i.s = sdiv i32 %.068, %i.r                     ; 2 uses
  %i.t = srem i32 %.068, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !50     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !50     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.t                   ; 3 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !50
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 2 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !50
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !77, !noalias !139
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !24, !noalias !139
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !139
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !63, !noalias !139 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.p, align 8, !tbaa !78
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
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !50
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
define internal fastcc void @_ZN4ncnnL21transpose_pack_A_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_ZN4ncnnL8gemm_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiRKNS_6OptionE.omp_outlined.8:bb.a
  store i64 %spec.select, ptr %i.x, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %.noexc130, %bb.h
  %.val134 = phi ptr [ %i.bt, %.noexc130 ], [ null, %bb.h ] ; 5 uses
  %i.cg = load i32, ptr %10, align 4, !tbaa !50   ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph218, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph218:                                        ; preds = %bb.j
  %i.ci = icmp sgt i32 %.fr222, 0
  %.pre225 = load i32, ptr %11, align 4, !tbaa !50 ; 2 uses
  br i1 %i.ci, label %.lr.ph218.split.us, label %.lr.ph218.split

.lr.ph218.split.us:                               ; preds = %.lr.ph218, %bb.s
  %i.cj = phi i32 [ %i.ei, %bb.s ], [ %.pre225, %.lr.ph218 ]
  %i.ck = phi i32 [ %i.ek, %bb.s ], [ %i.cg, %.lr.ph218 ]
  %.081216.us = phi i32 [ %i.ej, %bb.s ], [ 0, %.lr.ph218 ] ; 7 uses
  %i.cl = sub nsw i32 %i.ck, %.081216.us
  %.sroa.speculated192.us = call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.cl) ; 3 uses
  %i.cm = load i32, ptr %7, align 4, !tbaa !50
  %i.cn = icmp eq i32 %i.cm, 3
  br i1 %i.cn, label %bb.k, label %.lr.ph.us

bb.k:                                             ; preds = %.lr.ph218.split.us
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val134, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216.us, i32 noundef %.sroa.speculated192.us)
  %.pre226 = load i32, ptr %7, align 4, !tbaa !50
  %i.co = icmp eq i32 %.pre226, 3
  %i.cp = select i1 %i.co, ptr %16, ptr %12
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.k, %.lr.ph218.split.us
  %i.cq = phi ptr [ %i.cp, %bb.k ], [ %12, %.lr.ph218.split.us ]
  %i.cr = icmp eq i32 %.081216.us, 0
  %.pre227 = load i32, ptr %6, align 4, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.us, %_ZN4ncnn3MatD2Ev.exit91.us
  %i.cs = phi i32 [ %.pre227, %.lr.ph.us ], [ %i.ef, %_ZN4ncnn3MatD2Ev.exit91.us ]
  %.0215.us = phi i32 [ 0, %.lr.ph.us ], [ %i.eg, %_ZN4ncnn3MatD2Ev.exit91.us ] ; 7 uses
  %i.ct = sub nsw i32 %.fr222, %.0215.us
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.cs, i32 %i.ct) ; 3 uses
  %i.cu = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc128.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc128.us:                                     ; preds = %bb.l
  %i.cv = load i32, ptr %i.ag, align 4, !tbaa !77, !noalias !529
  %i.cw = load ptr, ptr %13, align 8, !tbaa !24, !noalias !529
  %i.cx = load i64, ptr %i.ah, align 8, !tbaa !25, !noalias !529
  %i.cy = sext i32 %i.cu to i64
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = load i64, ptr %i.ai, align 8, !tbaa !63, !noalias !529 ; 2 uses
  %i.db = mul i64 %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.db
  %i.dd = sext i32 %i.cv to i64
  %i.de = load i32, ptr %6, align 4, !tbaa !50
  %i.df = sdiv i32 %.0215.us, %i.de
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = mul i64 %i.da, %i.dd
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.di ; 3 uses
  %i.dk = load i32, ptr %11, align 4, !tbaa !50
  %i.dl = sdiv i32 %.081216.us, %i.dk
  %i.dm = load i32, ptr %i.aj, align 4, !tbaa !77, !noalias !530
  %i.dn = load ptr, ptr %14, align 8, !tbaa !24, !noalias !530
  %i.do = load i64, ptr %i.ak, align 8, !tbaa !25, !noalias !530
  %i.dp = sext i32 %i.dl to i64
  %i.dq = mul i64 %i.do, %i.dp
  %i.dr = load i64, ptr %i.al, align 8, !tbaa !63, !noalias !530 ; 2 uses
  %i.ds = mul i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ds
  %i.du = sext i32 %i.dm to i64
  %i.dv = mul i64 %i.dr, %i.du
  %i.dw = mul i64 %i.dv, %i.dg
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dw
  br i1 %i.cr, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.noexc128.us
  %i.dy = load i32, ptr %4, align 4, !tbaa !50
  %.not89.us = icmp eq i32 %i.dy, 0
  br i1 %.not89.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @_ZN4ncnnL21transpose_pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr %i.dj, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.0215.us, i32 noundef %.sroa.speculated.us)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr %i.dj, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.0215.us, i32 noundef %.sroa.speculated.us)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.noexc128.us
  %i.dz = load i32, ptr %8, align 4, !tbaa !50
  %.not90.us = icmp eq i32 %i.dz, 0
  br i1 %.not90.us, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit91.us

bb.q:                                             ; preds = %bb.p
  %i.ea = load i32, ptr %6, align 4, !tbaa !50
  %i.eb = add nsw i32 %i.ea, %.0215.us
  %i.ec = icmp sge i32 %i.eb, %.fr222
  br label %_ZN4ncnn3MatD2Ev.exit91.us

_ZN4ncnn3MatD2Ev.exit91.us:                       ; preds = %bb.q, %bb.p
  %i.ed = phi i1 [ false, %bb.p ], [ %i.ec, %bb.q ]
  %i.ee = load i32, ptr %7, align 4, !tbaa !50
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib(ptr %i.dj, ptr %i.dx, ptr noundef nonnull align 8 dereferenceable(72) %i.cq, ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.ee, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216.us, i32 noundef %.sroa.speculated192.us, i32 noundef %.0215.us, i32 noundef %.sroa.speculated.us, i1 noundef zeroext %i.ed)
  %i.ef = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.eg = add nsw i32 %i.ef, %.0215.us            ; 2 uses
  %i.eh = icmp slt i32 %i.eg, %.fr222
  br i1 %i.eh, label %bb.l, label %._crit_edge.us, !llvm.loop !526

bb.r:                                             ; preds = %._crit_edge.us
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216.us, i32 noundef %.sroa.speculated192.us)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.us
  %i.ei = load i32, ptr %11, align 4, !tbaa !50   ; 2 uses
  %i.ej = add nsw i32 %i.ei, %.081216.us          ; 2 uses
  %i.ek = load i32, ptr %10, align 4, !tbaa !50   ; 2 uses
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph218.split.us, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !527

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit91.us
  %i.em = load i32, ptr %8, align 4, !tbaa !50
  %.not88.us = icmp eq i32 %i.em, 0
  br i1 %.not88.us, label %bb.s, label %bb.r

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.en) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.w, %bb.s, %bb.j
  %.pre230 = load i32, ptr %i.b, align 4, !tbaa !50
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
  %i.es = load i32, ptr %7, align 4, !tbaa !50
  %i.et = icmp eq i32 %i.es, 3
  br i1 %i.et, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph218.split
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val134, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216, i32 noundef %.sroa.speculated192)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph218.split
  %i.eu = load i32, ptr %8, align 4, !tbaa !50
  %.not88 = icmp eq i32 %i.eu, 0
  br i1 %.not88, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216, i32 noundef %.sroa.speculated192)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ev = load i32, ptr %11, align 4, !tbaa !50   ; 2 uses
  %i.ew = add nsw i32 %i.ev, %.081216             ; 2 uses
  %i.ex = load i32, ptr %10, align 4, !tbaa !50   ; 2 uses
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph218.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !527

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
  %10 = sdiv i32 %i.h, 8
  %11 = shl nsw i32 %10, 3
  %.sroa.speculated115 = tail call i32 @llvm.smax.i32(i32 %11, i32 8) ; 6 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !50
  store i32 %.sroa.speculated115, ptr %7, align 4, !tbaa !50
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !50
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = add nuw i32 %i.j, %.sroa.speculated115
  %i.l = udiv i32 %i.k, %.sroa.speculated115      ; 3 uses
  %i.m = add nuw i32 %i.j, %i.l
  %i.n = udiv i32 %i.m, %i.l
  %i.o = add nuw nsw i32 %i.n, 7
  %i.p = and i32 %i.o, -8
  %.sroa.speculated99 = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !50
  %i.q = icmp eq i32 %i.l, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = fmul fast float %i.e, 5.000000e-01
  %i.s = uitofp nneg i32 %.sroa.speculated99 to float
  %i.t = fdiv fast float %i.r, %i.s
  %i.u = fptosi float %i.t to i32
  %12 = sdiv i32 %i.u, 8
  %13 = shl nsw i32 %12, 3
  %.sroa.speculated93 = tail call i32 @llvm.smax.i32(i32 %13, i32 8) ; 2 uses
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !50
  store i32 %.sroa.speculated93, ptr %7, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.v = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %.0)
  %i.w = load i32, ptr %6, align 4, !tbaa !50
  %i.x = mul nsw i32 %i.w, %.sroa.speculated83    ; 4 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %0, -1                       ; 2 uses
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sdiv i32 %i.aa, %i.x                    ; 2 uses
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 7
  %i.af = sdiv i32 %i.ae, 8
  %i.ag = shl nsw i32 %i.af, 3
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.x)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.x, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !50
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %7, align 4, !tbaa !50    ; 3 uses
  %i.aj = add nsw i32 %1, -1                      ; 2 uses
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai                   ; 2 uses
  %i.am = add i32 %i.aj, %i.al
  %i.an = sdiv i32 %i.am, %i.al
  %i.ao = add nsw i32 %i.an, 7
  %i.ap = sdiv i32 %i.ao, 8
  %i.aq = shl nsw i32 %i.ap, 3
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ai)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = icmp sgt i32 %.0, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.at = sdiv i32 %i.as, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1)
  %i.au = add nuw nsw i32 %.sroa.speculated, 7
  %i.av = and i32 %i.au, 2147483640
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.as)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = add nuw nsw i32 %3, 7
  %i.ay = and i32 %i.ax, 2147483640
  store i32 %i.ay, ptr %6, align 4, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = icmp sgt i32 %4, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i32 %4, 7
  %i.bb = and i32 %i.ba, 2147483640
  store i32 %i.bb, ptr %7, align 4, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = icmp sgt i32 %5, 0
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = add nuw nsw i32 %5, 7
  %i.be = and i32 %i.bd, 2147483640
  store i32 %i.be, ptr %8, align 4, !tbaa !50
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev() local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn12Gemm_x86_avx20create_pipeline_int8ERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr noundef %7) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.h = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !50
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !50
  %i.k = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %.not72 = icmp sgt i32 %i.k, %i.j
  br i1 %.not72, label %._crit_edge75, label %.lr.ph

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
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 332 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 304 ; 4 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !50    ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.split, label %._crit_edge75

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.ae = phi i32 [ %i.ak, %._crit_edge ], [ %i.j, %.lr.ph ]
  %i.af = phi i32 [ %i.al, %._crit_edge ], [ %i.ac, %.lr.ph ] ; 3 uses
  %.03073 = phi i32 [ %i.am, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.ag = load i32, ptr %3, align 4, !tbaa !50
  %i.ah = mul nsw i32 %i.ag, %.03073              ; 7 uses
  %i.ai = icmp sgt i32 %i.af, 0
  br i1 %i.ai, label %.noexc40.lr.ph, label %._crit_edge

.noexc40.lr.ph:                                   ; preds = %.lr.ph.split
  %i.aj = sext i32 %i.ah to i64                   ; 4 uses
  %.pre = load i32, ptr %5, align 4, !tbaa !50
  br label %.noexc40

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %.pre84 = load i32, ptr %i.b, align 4, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.ak = phi i32 [ %.pre84, %._crit_edge.loopexit ], [ %i.ae, %.lr.ph.split ] ; 2 uses
  %i.al = phi i32 [ %i.lw, %._crit_edge.loopexit ], [ %i.af, %.lr.ph.split ]
  %i.am = add nsw i32 %.03073, 1
  %.not.not = icmp slt i32 %.03073, %i.ak
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge75, !llvm.loop !531

.noexc40:                                         ; preds = %.noexc40.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.an = phi i32 [ %.pre, %.noexc40.lr.ph ], [ %i.lu, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ao = phi i32 [ %i.af, %.noexc40.lr.ph ], [ %i.lw, %_ZN4ncnn3MatD2Ev.exit ]
  %.071 = phi i32 [ 0, %.noexc40.lr.ph ], [ %i.lv, %_ZN4ncnn3MatD2Ev.exit ] ; 10 uses
  %i.ap = load i32, ptr %6, align 4, !tbaa !50
  %i.aq = sub nsw i32 %i.ap, %i.ah
  %i.ar = load i32, ptr %3, align 4, !tbaa !50    ; 2 uses
  %.sroa.speculated60 = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.aq) ; 12 uses
  %i.as = sub i32 %i.ao, %.071
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.an, i32 %i.as) ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.at = sdiv i32 %i.ah, %i.ar
  %i.au = load i32, ptr %i.m, align 4, !tbaa !77, !noalias !547 ; 2 uses
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !24, !noalias !547
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !547
  %i.ax = sext i32 %i.at to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.o, align 8, !tbaa !63, !noalias !547 ; 3 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  %i.bc = load i32, ptr %i.p, align 8, !tbaa !64, !noalias !547
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !23, !noalias !547
  %i.be = sext i32 %i.au to i64                   ; 2 uses
  %i.bf = sdiv i32 %.071, %i.an
end_hunk_1
begin_hunk_2_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a

bb.bj:                                            ; preds = %bb.bh
  %i.wt = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 3 uses
  %i.wu = shufflevector <8 x float> %.53190.i, <8 x float> %.53200.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.wv = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 3 uses
  %i.ww = shufflevector <8 x float> %.53206.i, <8 x float> %.53212.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.wx = shufflevector <8 x float> %i.wt, <8 x float> %i.wv, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.wy = shufflevector <8 x float> %i.wu, <8 x float> %i.ww, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.wz = shufflevector <8 x float> %i.wt, <8 x float> %i.wv, <4 x i32> <i32 0, i32 1, i32 8, i32 9>
  store <4 x float> %i.wz, ptr %.519273705.i, align 1, !tbaa !89
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.519273705.i, i64 %i.l
  %i.xb = shufflevector <8 x float> %i.wt, <8 x float> %i.wv, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  store <4 x float> %i.xb, ptr %i.xa, align 1, !tbaa !89
  %i.xc = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2116.i
  %i.xd = shufflevector <8 x float> %i.wu, <8 x float> %i.ww, <4 x i32> <i32 0, i32 1, i32 8, i32 9>
  store <4 x float> %i.xd, ptr %i.xc, align 1, !tbaa !89
  %i.xe = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2117.i
  %i.xf = shufflevector <8 x float> %i.wu, <8 x float> %i.ww, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  store <4 x float> %i.xf, ptr %i.xe, align 1, !tbaa !89
  %i.xg = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2118.i
  %i.xh = shufflevector <8 x float> %i.wx, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.xh, ptr %i.xg, align 1, !tbaa !89
  %i.xi = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2119.i
  %i.xj = shufflevector <8 x float> %i.wx, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.xj, ptr %i.xi, align 1, !tbaa !89
  %i.xk = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2120.i
  %i.xl = shufflevector <8 x float> %i.wy, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.xl, ptr %i.xk, align 1, !tbaa !89
  %i.xm = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 %.idx2121.i
  %i.xn = shufflevector <8 x float> %i.wy, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.xn, ptr %i.xm, align 1, !tbaa !89
  %i.xo = getelementptr inbounds nuw i8, ptr %.519273705.i, i64 16
  br label %.thread3416.i

.thread3416.i:                                    ; preds = %bb.bj, %bb.bi, %.thread3413.i, %bb.bh, %bb.bg
  %.81930.i = phi ptr [ %i.wg, %bb.bg ], [ %i.xo, %bb.bj ], [ %.519273705.i, %bb.bh ], [ %i.wk, %.thread3413.i ], [ %i.ws, %bb.bi ] ; 2 uses
  %i.xp = add nuw nsw i32 %.119403704.i, 4        ; 3 uses
  %i.xq = or disjoint i32 %i.xp, 3
  %i.xr = icmp slt i32 %i.xq, %7
  br i1 %i.xr, label %.lr.ph3709.i, label %.preheader3690.i, !llvm.loop !733

.preheader3689.i:                                 ; preds = %.thread3435.i, %.preheader3690.i
  %.113054.lcssa.i = phi <8 x float> [ %.73050.lcssa.i, %.preheader3690.i ], [ %.143057.i, %.thread3435.i ]
  %.21941.lcssa.i = phi i32 [ %.11940.lcssa.i, %.preheader3690.i ], [ %i.abz, %.thread3435.i ] ; 2 uses
  %.91931.lcssa.i = phi ptr [ %.51927.lcssa.i, %.preheader3690.i ], [ %.121934.i, %.thread3435.i ]
  %.31920.lcssa.i = phi ptr [ %.21919.lcssa.i, %.preheader3690.i ], [ %i.xz, %.thread3435.i ] ; 2 uses
  %.31896.lcssa.i = phi ptr [ %.21895.lcssa.i, %.preheader3690.i ], [ %i.xy, %.thread3435.i ]
  %.12.lcssa.i = phi ptr [ %.81892.lcssa.i, %.preheader3690.i ], [ %.15.i, %.thread3435.i ] ; 2 uses
  %i.xs = icmp slt i32 %.21941.lcssa.i, %7
  br i1 %i.xs, label %.lr.ph3735.i, label %._crit_edge.i

.lr.ph3722.i:                                     ; preds = %.preheader3690.i, %.thread3435.i
  %.123721.i = phi ptr [ %.15.i, %.thread3435.i ], [ %.81892.lcssa.i, %.preheader3690.i ] ; 20 uses
  %.318963720.i = phi ptr [ %i.xy, %.thread3435.i ], [ %.21895.lcssa.i, %.preheader3690.i ] ; 2 uses
  %.319203719.i = phi ptr [ %i.xz, %.thread3435.i ], [ %.21919.lcssa.i, %.preheader3690.i ] ; 2 uses
  %.919313718.i = phi ptr [ %.121934.i, %.thread3435.i ], [ %.51927.lcssa.i, %.preheader3690.i ] ; 20 uses
  %.219413717.i = phi i32 [ %i.abz, %.thread3435.i ], [ %.11940.lcssa.i, %.preheader3690.i ]
  %.1130543716.i = phi <8 x float> [ %.143057.i, %.thread3435.i ], [ %.73050.lcssa.i, %.preheader3690.i ] ; 8 uses
  %i.xt = load <8 x i32>, ptr %.318963720.i, align 1, !tbaa !89
  %i.xu = sitofp fast <8 x i32> %i.xt to <8 x float> ; 2 uses
  %i.xv = load <8 x i32>, ptr %.319203719.i, align 1, !tbaa !89
  %i.xw = sitofp fast <8 x i32> %i.xv to <8 x float> ; 2 uses
  %i.xx = shufflevector <8 x float> %i.xu, <8 x float> %i.xw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.xy = getelementptr inbounds nuw i8, ptr %.318963720.i, i64 32 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.319203719.i, i64 32 ; 2 uses
  %i.ya = shufflevector <8 x float> %i.xx, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7> ; 2 uses
  %i.yb = shufflevector <8 x float> %i.xu, <8 x float> %i.xw, <8 x i32> <i32 5, i32 7, i32 6, i32 4, i32 13, i32 15, i32 14, i32 12> ; 2 uses
  %i.yc = shufflevector <8 x float> %i.ya, <8 x float> %i.yb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.yd = shufflevector <8 x float> %i.yb, <8 x float> %i.ya, <8 x i32> <i32 3, i32 10, i32 2, i32 11, i32 7, i32 14, i32 6, i32 15>
  %i.ye = fmul fast <8 x float> %i.yc, %i.ct      ; 7 uses
  %i.yf = fmul fast <8 x float> %i.yd, %i.ct      ; 7 uses
  %.not2078.i = icmp eq ptr %.123721.i, null
  br i1 %.not2078.i, label %.thread3427.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph3722.i
  br i1 %i.ah, label %.thread3418.i, label %bb.bl

.thread3418.i:                                    ; preds = %bb.bk
  %i.yg = fadd fast <8 x float> %i.ye, %.1130543716.i
  %i.yh = fadd fast <8 x float> %i.yf, %.1130543716.i
  br label %.thread3427.i

bb.bl:                                            ; preds = %bb.bk
  br i1 %or.cond.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.yi = fadd fast <8 x float> %i.ye, %.1130543716.i
  %i.yj = fadd fast <8 x float> %i.yf, %.1130543716.i
  br label %.thread3427.i

bb.bn:                                            ; preds = %bb.bl
  switch i32 %3, label %.thread3427.i [
    i32 3, label %bb.bo
    i32 4, label %bb.bv
  ]

bb.bo:                                            ; preds = %bb.bn
  switch i32 %i.w, label %bb.br [
    i32 8, label %bb.bp
    i32 4, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.yk = load <8 x float>, ptr %.123721.i, align 1, !tbaa !89
  %i.yl = getelementptr inbounds nuw i8, ptr %.123721.i, i64 32
  %i.ym = load <8 x float>, ptr %i.yl, align 1, !tbaa !89
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.yn = load <8 x float>, ptr %.123721.i, align 1, !tbaa !89 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2107.i
  %i.yp = load <8 x float>, ptr %i.yo, align 1, !tbaa !89 ; 2 uses
  %i.yq = shufflevector <8 x float> %i.yn, <8 x float> %i.yp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.yr = shufflevector <8 x float> %i.yn, <8 x float> %i.yp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  br label %bb.bs

bb.br:                                            ; preds = %bb.bo
  %i.ys = load float, ptr %.123721.i, align 4, !tbaa !68
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.123721.i, i64 %i.u ; 2 uses
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !68
  %i.yv = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2101.i ; 2 uses
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !68
  %i.yx = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2102.i ; 2 uses
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !68
  %i.yz = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2107.i ; 2 uses
  %i.za = load float, ptr %i.yz, align 4, !tbaa !68
  %i.zb = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2104.i ; 2 uses
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !68
  %i.zd = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2105.i ; 2 uses
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !68
  %i.zf = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.idx2106.i ; 2 uses
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !68
  %i.zh = insertelement <8 x float> poison, float %i.ys, i64 0
  %i.zi = insertelement <8 x float> %i.zh, float %i.yu, i64 1
  %i.zj = insertelement <8 x float> %i.zi, float %i.yw, i64 2
  %i.zk = insertelement <8 x float> %i.zj, float %i.yy, i64 3
  %i.zl = insertelement <8 x float> %i.zk, float %i.za, i64 4
  %i.zm = insertelement <8 x float> %i.zl, float %i.zc, i64 5
  %i.zn = insertelement <8 x float> %i.zm, float %i.ze, i64 6
  %i.zo = insertelement <8 x float> %i.zn, float %i.zg, i64 7
  %i.zp = getelementptr inbounds nuw i8, ptr %.123721.i, i64 4
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !68
  %i.zr = getelementptr i8, ptr %i.yt, i64 4
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !68
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !68
  %i.zv = getelementptr i8, ptr %i.yx, i64 4
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !68
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !68
  %i.zz = getelementptr i8, ptr %i.zb, i64 4
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !68
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zd, i64 4
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !68
  %i.aad = getelementptr i8, ptr %i.zf, i64 4
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !68
  %i.aaf = insertelement <8 x float> poison, float %i.zq, i64 0
  %i.aag = insertelement <8 x float> %i.aaf, float %i.zs, i64 1
  %i.aah = insertelement <8 x float> %i.aag, float %i.zu, i64 2
  %i.aai = insertelement <8 x float> %i.aah, float %i.zw, i64 3
  %i.aaj = insertelement <8 x float> %i.aai, float %i.zy, i64 4
  %i.aak = insertelement <8 x float> %i.aaj, float %i.aaa, i64 5
  %i.aal = insertelement <8 x float> %i.aak, float %i.aac, i64 6
  %i.aam = insertelement <8 x float> %i.aal, float %i.aae, i64 7
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.sink4009.i.a = phi i64 [ 32, %bb.bq ], [ 8, %bb.br ], [ 64, %bb.bp ]
  %.03341.i = phi nsz <8 x float> [ %i.yr, %bb.bq ], [ %i.aam, %bb.br ], [ %i.ym, %bb.bp ] ; 2 uses
  %.123055.i = phi nsz <8 x float> [ %i.yq, %bb.bq ], [ %i.zo, %bb.br ], [ %i.yk, %bb.bp ] ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.123721.i, i64 %.sink4009.i.a ; 2 uses
  br i1 %i.ao, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.aao = fadd fast <8 x float> %.123055.i, %i.ye
  %i.aap = fadd fast <8 x float> %.03341.i, %i.yf
  br label %.thread3427.i

bb.bu:                                            ; preds = %bb.bs
  %i.aaq = fmul fast <8 x float> %.123055.i, %i.am
  %i.aar = fadd fast <8 x float> %i.aaq, %i.ye
  %i.aas = fmul fast <8 x float> %.03341.i, %i.am
  %i.aat = fadd fast <8 x float> %i.aas, %i.yf
  br label %.thread3427.i

bb.bv:                                            ; preds = %bb.bn
  %i.aau = load <2 x float>, ptr %.123721.i, align 4, !tbaa !68
  %i.aav = fmul fast <2 x float> %i.aau, %i.bb    ; 2 uses
  %i.aaw = shufflevector <2 x float> %i.aav, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aax = shufflevector <2 x float> %i.aav, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aay = fadd fast <8 x float> %i.aaw, %i.ye
  %i.aaz = fadd fast <8 x float> %i.aax, %i.yf
  %i.aba = getelementptr inbounds nuw i8, ptr %.123721.i, i64 8
  br label %.thread3427.i

.thread3427.i:                                    ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bn, %bb.bm, %.thread3418.i, %.lr.ph3722.i
  %.43339.i = phi nsz <8 x float> [ %i.yf, %.lr.ph3722.i ], [ %i.aaz, %bb.bv ], [ %i.yf, %bb.bn ], [ %i.aat, %bb.bu ], [ %i.aap, %bb.bt ], [ %i.yh, %.thread3418.i ], [ %i.yj, %bb.bm ]
  %.43333.i = phi nsz <8 x float> [ %i.ye, %.lr.ph3722.i ], [ %i.aay, %bb.bv ], [ %i.ye, %bb.bn ], [ %i.aar, %bb.bu ], [ %i.aao, %bb.bt ], [ %i.yg, %.thread3418.i ], [ %i.yi, %bb.bm ]
  %.143057.i = phi nsz <8 x float> [ %.1130543716.i, %.lr.ph3722.i ], [ %i.aaw, %bb.bv ], [ %.1130543716.i, %bb.bn ], [ %.123055.i, %bb.bu ], [ %.123055.i, %bb.bt ], [ %.1130543716.i, %.thread3418.i ], [ %.1130543716.i, %bb.bm ] ; 2 uses
  %.15.i = phi ptr [ null, %.lr.ph3722.i ], [ %i.aba, %bb.bv ], [ %.123721.i, %bb.bn ], [ %i.aan, %bb.bu ], [ %i.aan, %bb.bt ], [ %.123721.i, %.thread3418.i ], [ %.123721.i, %bb.bm ] ; 2 uses
  %.53340.i = fmul reassoc nsz arcp contract afn <8 x float> %.43339.i, %i.av ; 12 uses
  %.53334.i = fmul reassoc nsz arcp contract afn <8 x float> %.43333.i, %i.av ; 12 uses
  br i1 %.not2061.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.thread3427.i
  store <8 x float> %.53334.i, ptr %.919313718.i, align 1, !tbaa !89
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %.919313718.i, i64 %i.l
  store <8 x float> %.53340.i, ptr %i.abb, align 1, !tbaa !89
  %i.abc = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2116.i
  br label %.thread3435.i

bb.bx:                                            ; preds = %.thread3427.i
  switch i32 %i.c, label %.thread3435.i [
    i32 8, label %.thread3432.i
    i32 4, label %bb.by
    i32 1, label %bb.bz
  ]

.thread3432.i:                                    ; preds = %bb.bx
  store <8 x float> %.53334.i, ptr %.919313718.i, align 1, !tbaa !89
  %i.abd = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 32
  store <8 x float> %.53340.i, ptr %i.abd, align 1, !tbaa !89
  %i.abe = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 64
  br label %.thread3435.i

bb.by:                                            ; preds = %bb.bx
  %i.abf = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.abg = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.abf, ptr %.919313718.i, align 1, !tbaa !89
  %i.abh = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2118.i
  store <8 x float> %i.abg, ptr %i.abh, align 1, !tbaa !89
  %i.abi = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 32
  br label %.thread3435.i

bb.bz:                                            ; preds = %bb.bx
  %.sroa.02648.0.vec.extract.i = extractelement <8 x float> %.53334.i, i64 0
  store float %.sroa.02648.0.vec.extract.i, ptr %.919313718.i, align 4, !tbaa !68
  %.sroa.11.32.vec.extract.i = extractelement <8 x float> %.53340.i, i64 0
  %i.abj = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 4
  store float %.sroa.11.32.vec.extract.i, ptr %i.abj, align 4, !tbaa !68
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.919313718.i, i64 %i.l
  %i.abl = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 1, i32 9>
  store <2 x float> %i.abl, ptr %i.abk, align 4, !tbaa !68
  %i.abm = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2116.i
  %i.abn = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 2, i32 10>
  store <2 x float> %i.abn, ptr %i.abm, align 4, !tbaa !68
  %i.abo = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2117.i
  %i.abp = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 3, i32 11>
  store <2 x float> %i.abp, ptr %i.abo, align 4, !tbaa !68
  %.sroa.02648.16.vec.extract.i = extractelement <8 x float> %.53334.i, i64 4
  %i.abq = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2118.i ; 2 uses
  store float %.sroa.02648.16.vec.extract.i, ptr %i.abq, align 4, !tbaa !68
  %.sroa.11.48.vec.extract.i = extractelement <8 x float> %.53340.i, i64 4
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 4
  store float %.sroa.11.48.vec.extract.i, ptr %i.abr, align 4, !tbaa !68
  %i.abs = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2119.i
  %i.abt = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 5, i32 13>
  store <2 x float> %i.abt, ptr %i.abs, align 4, !tbaa !68
  %i.abu = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2120.i
  %i.abv = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 6, i32 14>
  store <2 x float> %i.abv, ptr %i.abu, align 4, !tbaa !68
  %i.abw = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2121.i
  %i.abx = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 7, i32 15>
  store <2 x float> %i.abx, ptr %i.abw, align 4, !tbaa !68
  %i.aby = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 8
  br label %.thread3435.i

.thread3435.i:                                    ; preds = %bb.bz, %bb.by, %.thread3432.i, %bb.bx, %bb.bw
  %.121934.i = phi ptr [ %i.abc, %bb.bw ], [ %i.aby, %bb.bz ], [ %.919313718.i, %bb.bx ], [ %i.abe, %.thread3432.i ], [ %i.abi, %bb.by ] ; 2 uses
  %i.abz = add nuw nsw i32 %.219413717.i, 2       ; 3 uses
  %i.aca = or disjoint i32 %i.abz, 1
  %i.acb = icmp slt i32 %i.aca, %7
  br i1 %i.acb, label %.lr.ph3722.i, label %.preheader3689.i, !llvm.loop !734

.lr.ph3735.i:                                     ; preds = %.preheader3689.i, %.thread3451.i
  %.163734.i = phi ptr [ %.19.i, %.thread3451.i ], [ %.12.lcssa.i, %.preheader3689.i ] ; 18 uses
  %.418973733.i = phi ptr [ %i.acg, %.thread3451.i ], [ %.31896.lcssa.i, %.preheader3689.i ] ; 2 uses
  %.419213732.i = phi ptr [ %i.ach, %.thread3451.i ], [ %.31920.lcssa.i, %.preheader3689.i ] ; 2 uses
  %.1319353731.i = phi ptr [ %.161938.i, %.thread3451.i ], [ %.91931.lcssa.i, %.preheader3689.i ] ; 17 uses
  %.319423730.i = phi i32 [ %i.ael, %.thread3451.i ], [ %.21941.lcssa.i, %.preheader3689.i ]
  %.1530583729.i = phi <8 x float> [ %.183061.i, %.thread3451.i ], [ %.113054.lcssa.i, %.preheader3689.i ] ; 6 uses
  %i.acc = load <4 x i32>, ptr %.418973733.i, align 16, !tbaa !89
  %i.acd = load <4 x i32>, ptr %.419213732.i, align 16, !tbaa !89
  %i.ace = shufflevector <4 x i32> %i.acc, <4 x i32> %i.acd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.acf = sitofp fast <8 x i32> %i.ace to <8 x float>
  %i.acg = getelementptr inbounds nuw i8, ptr %.418973733.i, i64 16
  %i.ach = getelementptr inbounds nuw i8, ptr %.419213732.i, i64 16 ; 2 uses
  %i.aci = fmul fast <8 x float> %i.ct, %i.acf    ; 6 uses
  %.not2063.i = icmp eq ptr %.163734.i, null
  br i1 %.not2063.i, label %.thread3444.i, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph3735.i
  br i1 %i.ah, label %.thread3437.i, label %bb.cb

.thread3437.i:                                    ; preds = %bb.ca
  %i.acj = fadd fast <8 x float> %i.aci, %.1530583729.i
  br label %.thread3444.i

bb.cb:                                            ; preds = %bb.ca
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ack = fadd fast <8 x float> %i.aci, %.1530583729.i
  br label %.thread3444.i

bb.cd:                                            ; preds = %bb.cb
  switch i32 %3, label %.thread3444.i [
    i32 3, label %bb.ce
    i32 4, label %bb.cj
  ]

bb.ce:                                            ; preds = %bb.cd
  switch i32 %i.w, label %bb.ch [
    i32 8, label %bb.cf
    i32 4, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.acl = load <8 x float>, ptr %.163734.i, align 1, !tbaa !89
  br label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  %i.acm = load <4 x float>, ptr %.163734.i, align 1, !tbaa !89
  %i.acn = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2107.i
  %i.aco = load <4 x float>, ptr %i.acn, align 1, !tbaa !89
  %i.acp = shufflevector <4 x float> %i.acm, <4 x float> %i.aco, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.ci

bb.ch:                                            ; preds = %bb.ce
  %i.acq = load float, ptr %.163734.i, align 4, !tbaa !68
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %.163734.i, i64 %i.u
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !68
  %i.act = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2101.i
  %i.acu = load float, ptr %i.act, align 4, !tbaa !68
  %i.acv = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2102.i
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !68
  %i.acx = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2107.i
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !68
  %i.acz = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2104.i
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !68
  %i.adb = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2105.i
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !68
  %i.add = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2106.i
  %i.ade = load float, ptr %i.add, align 4, !tbaa !68
  %i.adf = insertelement <8 x float> poison, float %i.acq, i64 0
  %i.adg = insertelement <8 x float> %i.adf, float %i.acs, i64 1
  %i.adh = insertelement <8 x float> %i.adg, float %i.acu, i64 2
  %i.adi = insertelement <8 x float> %i.adh, float %i.acw, i64 3
  %i.adj = insertelement <8 x float> %i.adi, float %i.acy, i64 4
  %i.adk = insertelement <8 x float> %i.adj, float %i.ada, i64 5
  %i.adl = insertelement <8 x float> %i.adk, float %i.adc, i64 6
  %i.adm = insertelement <8 x float> %i.adl, float %i.ade, i64 7
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.sink4010.i.a = phi i64 [ 16, %bb.cg ], [ 4, %bb.ch ], [ 32, %bb.cf ]
  %.163059.i = phi nsz <8 x float> [ %i.acp, %bb.cg ], [ %i.adm, %bb.ch ], [ %i.acl, %bb.cf ] ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.sink4010.i.a
  %i.ado = fmul fast <8 x float> %.163059.i, %i.am
  %i.adp = fadd fast <8 x float> %i.ado, %i.aci
  br label %.thread3444.i

bb.cj:                                            ; preds = %bb.cd
  %i.adq = load float, ptr %.163734.i, align 4, !tbaa !68
  %i.adr = fmul fast float %i.adq, %10
  %i.ads = insertelement <8 x float> poison, float %i.adr, i64 0
  %i.adt = shufflevector <8 x float> %i.ads, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.adu = fadd fast <8 x float> %i.adt, %i.aci
  %i.adv = getelementptr inbounds nuw i8, ptr %.163734.i, i64 4
  br label %.thread3444.i

.thread3444.i:                                    ; preds = %bb.cj, %bb.ci, %bb.cd, %bb.cc, %.thread3437.i, %.lr.ph3735.i
  %.33345.i = phi nsz <8 x float> [ %i.aci, %.lr.ph3735.i ], [ %i.adu, %bb.cj ], [ %i.aci, %bb.cd ], [ %i.adp, %bb.ci ], [ %i.acj, %.thread3437.i ], [ %i.ack, %bb.cc ]
  %.183061.i = phi nsz <8 x float> [ %.1530583729.i, %.lr.ph3735.i ], [ %i.adt, %bb.cj ], [ %.1530583729.i, %bb.cd ], [ %.163059.i, %bb.ci ], [ %.1530583729.i, %.thread3437.i ], [ %.1530583729.i, %bb.cc ]
  %.19.i = phi ptr [ null, %.lr.ph3735.i ], [ %i.adv, %bb.cj ], [ %.163734.i, %bb.cd ], [ %i.adn, %bb.ci ], [ %.163734.i, %.thread3437.i ], [ %.163734.i, %bb.cc ] ; 2 uses
  %i.adw = fmul fast <8 x float> %.33345.i, %i.ar ; 12 uses
  br i1 %.not2061.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.thread3444.i
  store <8 x float> %i.adw, ptr %.1319353731.i, align 1, !tbaa !89
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %.1319353731.i, i64 %i.l
  br label %.thread3451.i

bb.cl:                                            ; preds = %.thread3444.i
  switch i32 %i.c, label %.thread3451.i [
    i32 8, label %.thread3448.i
    i32 4, label %bb.cm
    i32 1, label %bb.cn
  ]

.thread3448.i:                                    ; preds = %bb.cl
  store <8 x float> %i.adw, ptr %.1319353731.i, align 1, !tbaa !89
  %i.ady = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 32
  br label %.thread3451.i

bb.cm:                                            ; preds = %bb.cl
  %i.adz = shufflevector <8 x float> %i.adw, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.adz, ptr %.1319353731.i, align 16, !tbaa !89
  %i.aea = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2118.i
  %i.aeb = shufflevector <8 x float> %i.adw, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.aeb, ptr %i.aea, align 16, !tbaa !89
  %i.aec = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 16
  br label %.thread3451.i

bb.cn:                                            ; preds = %bb.cl
  %.sroa.02635.0.vec.extract.i = extractelement <8 x float> %i.adw, i64 0
  store float %.sroa.02635.0.vec.extract.i, ptr %.1319353731.i, align 4, !tbaa !68
  %.sroa.02635.4.vec.extract.i = extractelement <8 x float> %i.adw, i64 1
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.1319353731.i, i64 %i.l
  store float %.sroa.02635.4.vec.extract.i, ptr %i.aed, align 4, !tbaa !68
  %.sroa.02635.8.vec.extract.i = extractelement <8 x float> %i.adw, i64 2
  %i.aee = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2116.i
  store float %.sroa.02635.8.vec.extract.i, ptr %i.aee, align 4, !tbaa !68
  %.sroa.02635.12.vec.extract.i = extractelement <8 x float> %i.adw, i64 3
  %i.aef = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2117.i
  store float %.sroa.02635.12.vec.extract.i, ptr %i.aef, align 4, !tbaa !68
  %.sroa.02635.16.vec.extract.i = extractelement <8 x float> %i.adw, i64 4
  %i.aeg = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2118.i
  store float %.sroa.02635.16.vec.extract.i, ptr %i.aeg, align 4, !tbaa !68
  %.sroa.02635.20.vec.extract.i = extractelement <8 x float> %i.adw, i64 5
  %i.aeh = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2119.i
  store float %.sroa.02635.20.vec.extract.i, ptr %i.aeh, align 4, !tbaa !68
  %.sroa.02635.24.vec.extract.i = extractelement <8 x float> %i.adw, i64 6
  %i.aei = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2120.i
  store float %.sroa.02635.24.vec.extract.i, ptr %i.aei, align 4, !tbaa !68
  %.sroa.02635.28.vec.extract.i = extractelement <8 x float> %i.adw, i64 7
  %i.aej = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2121.i
  store float %.sroa.02635.28.vec.extract.i, ptr %i.aej, align 4, !tbaa !68
  %i.aek = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 4
  br label %.thread3451.i

.thread3451.i:                                    ; preds = %bb.cn, %bb.cm, %.thread3448.i, %bb.cl, %bb.ck
  %.161938.i = phi ptr [ %i.adx, %bb.ck ], [ %i.aek, %bb.cn ], [ %.1319353731.i, %bb.cl ], [ %i.ady, %.thread3448.i ], [ %i.aec, %bb.cm ]
  %i.ael = add nuw nsw i32 %.319423730.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ael, %7
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph3735.i, !llvm.loop !735

._crit_edge.i:                                    ; preds = %.thread3451.i, %.preheader3689.i
  %.41921.lcssa.i = phi ptr [ %.31920.lcssa.i, %.preheader3689.i ], [ %i.ach, %.thread3451.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader3689.i ], [ %.19.i, %.thread3451.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.aem = or disjoint i64 %indvars.iv.next.i, 7
  %i.aen = icmp samesign ult i64 %i.aem, %i.at
  br i1 %i.aen, label %bb.j, label %.preheader3688.loopexit.i, !llvm.loop !736

.preheader3684.loopexit.i:                        ; preds = %._crit_edge3787.i
  %i.aeo = trunc nuw nsw i64 %indvars.iv.next3929.i to i32
  br label %.preheader3684.i

.preheader3684.i:                                 ; preds = %.preheader3684.loopexit.i, %.preheader3688.i
  %.11914.lcssa.i = phi i32 [ %.01913.lcssa.i, %.preheader3688.i ], [ %i.aeo, %.preheader3684.loopexit.i ] ; 3 uses
  %.51898.lcssa.i = phi ptr [ %.01893.lcssa.i, %.preheader3688.i ], [ %.91902.lcssa.i, %.preheader3684.loopexit.i ] ; 2 uses
  %.20.lcssa.i = phi ptr [ %.01884.lcssa.i, %.preheader3688.i ], [ %.36.lcssa.i, %.preheader3684.loopexit.i ] ; 2 uses
  %i.aep = or disjoint i32 %.11914.lcssa.i, 1
  %i.aeq = icmp slt i32 %i.aep, %5
  br i1 %i.aeq, label %.lr.ph3842.i, label %.preheader3680.i

.lr.ph3842.i:                                     ; preds = %.preheader3684.i
  %.not2019.i = icmp eq i32 %11, 0                ; 6 uses
  %i.aer = sext i32 %6 to i64                     ; 4 uses
  %i.aes = mul i64 %i.l, %i.aer
  %12 = icmp eq i32 %3, 0                         ; 5 uses
  %13 = add i32 %3, -1
  %or.cond21.i = icmp ult i32 %13, 2              ; 5 uses
  %i.aet = sext i32 %4 to i64                     ; 3 uses
  %i.aeu = icmp sgt i32 %7, 7
  %i.aev = insertelement <4 x float> poison, float %10, i64 0
  %i.aew = shufflevector <4 x float> %i.aev, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.aex = fcmp fast oeq float %10, 1.000000e+00  ; 3 uses
  %i.aey = fcmp fast une float %9, 1.000000e+00   ; 2 uses
  %i.aez = insertelement <4 x float> poison, float %9, i64 0
  %i.afa = shufflevector <4 x float> %i.aez, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx3656.i = shl i64 %i.l, 3                   ; 3 uses
  %.idx3657.i = mul i64 %i.l, 12                  ; 2 uses
  %.idx3658.i = shl i64 %i.l, 4                   ; 5 uses
  %.idx3659.i = mul i64 %i.l, 20
  %.idx3660.i = mul i64 %i.l, 24
  %.idx3661.i = mul i64 %i.l, 28
  %.idx2028.i = shl i64 %i.l, 5                   ; 4 uses
  %i.afb = and i32 %7, -8
  %i.afc = zext nneg i32 %.11914.lcssa.i to i64
  %i.afd = sext i32 %5 to i64
  %i.afe = sext i32 %i.c to i64
  %i.aff = select ninf nsz i1 %i.aey, <4 x float> %i.afa, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %invariant.op4001.i = add nsw i64 %i.afd, -1
  %..idx3656.i = select i1 %.not2019.i, i64 8, i64 %.idx3656.i
  %i.afg = insertelement <2 x float> poison, float %10, i64 0
  %i.afh = shufflevector <2 x float> %i.afg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %14 = insertelement <2 x float> poison, float %9, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x i1> poison, i1 %.not2019.i, i64 0
  %17 = shufflevector <2 x i1> %16, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.afi = insertelement <2 x i1> poison, i1 %or.cond21.i, i64 0
  %i.afj = shufflevector <2 x i1> %i.afi, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.fu

bb.co:                                            ; preds = %._crit_edge3787.i, %.lr.ph3793.i
  %indvars.iv3928.i = phi i64 [ %i.by, %.lr.ph3793.i ], [ %indvars.iv.next3929.i, %._crit_edge3787.i ] ; 6 uses
  %.203792.i = phi ptr [ %.01884.lcssa.i, %.lr.ph3793.i ], [ %.36.lcssa.i, %._crit_edge3787.i ] ; 4 uses
  %.518983791.i = phi ptr [ %.01893.lcssa.i, %.lr.ph3793.i ], [ %.91902.lcssa.i, %._crit_edge3787.i ] ; 2 uses
  %i.afk = load ptr, ptr %2, align 8, !tbaa !24   ; 2 uses
  br i1 %.not2029.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %i.bg
  %i.afm = add nsw i64 %indvars.iv3928.i, %i.bj
  %i.afn = mul nsw i64 %i.afm, %i.ca
  %i.afo = getelementptr inbounds [4 x i8], ptr %i.afl, i64 %i.afn
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.afp = add nsw i64 %indvars.iv3928.i, %i.bj
  %i.afq = mul i64 %i.afp, %i.l
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %i.afq
  %i.afs = getelementptr inbounds [4 x i8], ptr %i.afr, i64 %i.bi
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.01961.i = phi ptr [ %i.afo, %bb.cp ], [ %i.afs, %bb.cq ] ; 2 uses
  %i.aft = load ptr, ptr %8, align 8, !tbaa !24
  %i.afu = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.bj
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %indvars.iv3928.i
  %i.afw = load <4 x float>, ptr %i.afv, align 16, !tbaa !89 ; 15 uses
  %.not2030.i = icmp eq ptr %.203792.i, null
  br i1 %.not2030.i, label %.thread3462.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.bk, label %.thread3453.i, label %bb.ct

.thread3453.i:                                    ; preds = %bb.cs
  %i.afx = load float, ptr %.203792.i, align 4, !tbaa !68
  %i.afy = fmul fast float %i.afx, %10
  %i.afz = insertelement <4 x float> poison, float %i.afy, i64 0
  %i.aga = shufflevector <4 x float> %i.afz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread3462.i

bb.ct:                                            ; preds = %bb.cs
  br i1 %or.cond11.i, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.agb = load ptr, ptr %1, align 8, !tbaa !24
  %i.agc = getelementptr inbounds [4 x i8], ptr %i.agb, i64 %i.bj
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %indvars.iv3928.i ; 2 uses
  %i.age = load <4 x float>, ptr %i.agd, align 1, !tbaa !89
  %i.agf = fmul fast <4 x float> %i.age, %i.bp
  br label %.thread3462.i

bb.cv:                                            ; preds = %bb.ct
  switch i32 %3, label %.thread3462.i [
    i32 3, label %bb.cw
    i32 4, label %bb.cx
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.agg = load ptr, ptr %1, align 8, !tbaa !24
  %i.agh = add nsw i64 %indvars.iv3928.i, %i.bj
  %i.agi = mul i64 %i.agh, %i.u
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %i.agi
  %i.agk = getelementptr inbounds [4 x i8], ptr %i.agj, i64 %i.bn
  br label %.thread3462.i

bb.cx:                                            ; preds = %bb.cv
  %i.agl = load ptr, ptr %1, align 8, !tbaa !24
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.agl, i64 %i.bf
  br label %.thread3462.i

.thread3462.i:                                    ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu, %.thread3453.i, %bb.cr
  %.23311.i = phi nsz <4 x float> [ zeroinitializer, %bb.cr ], [ zeroinitializer, %bb.cx ], [ zeroinitializer, %bb.cv ], [ zeroinitializer, %bb.cw ], [ %i.aga, %.thread3453.i ], [ %i.agf, %bb.cu ] ; 2 uses
  %.23.i = phi ptr [ null, %bb.cr ], [ %i.agm, %bb.cx ], [ %.203792.i, %bb.cv ], [ %i.agk, %bb.cw ], [ %.203792.i, %.thread3453.i ], [ %i.agd, %bb.cu ] ; 2 uses
  br i1 %i.bq, label %.lr.ph3753.i, label %.preheader3687.i

.preheader3687.i:                                 ; preds = %bb.dx, %.thread3462.i
  %.33312.lcssa.i = phi <4 x float> [ %.23311.i, %.thread3462.i ], [ %.73316.i, %bb.dx ] ; 2 uses
  %.01974.lcssa.i = phi i32 [ 0, %.thread3462.i ], [ %i.bx, %bb.dx ] ; 3 uses
  %.11962.lcssa.i = phi ptr [ %.01961.i, %.thread3462.i ], [ %.31964.i, %bb.dx ] ; 2 uses
  %.61899.lcssa.i = phi ptr [ %.518983791.i, %.thread3462.i ], [ %i.aqh, %bb.dx ] ; 2 uses
  %.24.lcssa.i = phi ptr [ %.23.i, %.thread3462.i ], [ %.27.i, %bb.dx ] ; 2 uses
  %i.agn = or disjoint i32 %.01974.lcssa.i, 3
  %i.ago = icmp slt i32 %i.agn, %7
  br i1 %i.ago, label %.lr.ph3764.i, label %.preheader3686.i

.lr.ph3753.i:                                     ; preds = %.thread3462.i, %bb.dx
  %.243752.i = phi ptr [ %.27.i, %bb.dx ], [ %.23.i, %.thread3462.i ] ; 23 uses
  %.618993751.i = phi ptr [ %i.aqh, %bb.dx ], [ %.518983791.i, %.thread3462.i ] ; 9 uses
  %.119623750.i = phi ptr [ %.31964.i, %bb.dx ], [ %.01961.i, %.thread3462.i ] ; 38 uses
  %.019743749.i = phi i32 [ %i.aqi, %bb.dx ], [ 0, %.thread3462.i ]
  %.333123748.i = phi <4 x float> [ %.73316.i, %bb.dx ], [ %.23311.i, %.thread3462.i ] ; 20 uses
  %i.agp = load <4 x i32>, ptr %.618993751.i, align 16, !tbaa !89
  %i.agq = sitofp fast <4 x i32> %i.agp to <4 x float> ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 16
  %i.ags = load <4 x i32>, ptr %i.agr, align 16, !tbaa !89
  %i.agt = sitofp fast <4 x i32> %i.ags to <4 x float> ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 32
  %i.agv = load <4 x i32>, ptr %i.agu, align 16, !tbaa !89
  %i.agw = sitofp fast <4 x i32> %i.agv to <4 x float> ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 48
  %i.agy = load <4 x i32>, ptr %i.agx, align 16, !tbaa !89
  %i.agz = sitofp fast <4 x i32> %i.agy to <4 x float> ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 64
  %i.ahb = load <4 x i32>, ptr %i.aha, align 16, !tbaa !89
  %i.ahc = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 80
  %i.ahd = load <4 x i32>, ptr %i.ahc, align 16, !tbaa !89
  %i.ahe = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 96
  %i.ahf = load <4 x i32>, ptr %i.ahe, align 16, !tbaa !89
  %i.ahg = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 112
  %i.ahh = load <4 x i32>, ptr %i.ahg, align 16, !tbaa !89
  %i.ahi = sitofp <4 x i32> %i.ahb to <4 x float>
  %i.ahj = shufflevector <4 x float> %i.ahi, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ahk = sitofp <4 x i32> %i.ahd to <4 x float>
  %i.ahl = shufflevector <4 x float> %i.ahk, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ahm = sitofp <4 x i32> %i.ahf to <4 x float>
  %i.ahn = shufflevector <4 x float> %i.ahm, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.aho = sitofp <4 x i32> %i.ahh to <4 x float>
  %i.ahp = shufflevector <4 x float> %i.aho, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ahq = shufflevector <4 x float> %i.agq, <4 x float> %i.ahn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ahr = shufflevector <4 x float> %i.agq, <4 x float> %i.ahn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahs = shufflevector <4 x float> %i.agt, <4 x float> %i.ahp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aht = shufflevector <4 x float> %i.agt, <4 x float> %i.ahp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahu = shufflevector <4 x float> %i.agw, <4 x float> %i.ahj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ahv = shufflevector <4 x float> %i.agw, <4 x float> %i.ahj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahw = shufflevector <4 x float> %i.agz, <4 x float> %i.ahl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ahx = shufflevector <4 x float> %i.agz, <4 x float> %i.ahl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahy = shufflevector <4 x float> %i.ahq, <4 x float> %i.ahu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ahz = shufflevector <4 x float> %i.ahq, <4 x float> %i.ahu, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aia = shufflevector <4 x float> %i.ahv, <4 x float> %i.ahr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aib = shufflevector <4 x float> %i.ahv, <4 x float> %i.ahr, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aic = shufflevector <4 x float> %i.ahs, <4 x float> %i.ahw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aid = shufflevector <4 x float> %i.ahs, <4 x float> %i.ahw, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aie = shufflevector <4 x float> %i.ahx, <4 x float> %i.aht, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aif = shufflevector <4 x float> %i.ahx, <4 x float> %i.aht, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aig = shufflevector <4 x float> %i.ahz, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aih = shufflevector <4 x float> %i.aib, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aii = shufflevector <4 x float> %i.aid, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aij = shufflevector <4 x float> %i.aif, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aik = fmul fast <4 x float> %i.afw, %i.ahy   ; 6 uses
  %i.ail = fmul fast <4 x float> %i.aig, %i.afw   ; 6 uses
  %i.aim = fmul fast <4 x float> %i.afw, %i.aia   ; 6 uses
  %i.ain = fmul fast <4 x float> %i.aih, %i.afw   ; 6 uses
  %i.aio = fmul fast <4 x float> %i.afw, %i.aic   ; 7 uses
  %i.aip = fmul fast <4 x float> %i.aii, %i.afw   ; 7 uses
  %i.aiq = fmul fast <4 x float> %i.afw, %i.aie   ; 7 uses
  %i.air = fmul fast <4 x float> %i.aij, %i.afw   ; 7 uses
  %.not2046.i = icmp eq ptr %.243752.i, null
  br i1 %.not2046.i, label %.thread3486.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph3753.i
  br i1 %i.bk, label %.thread3465.i, label %bb.cz

.thread3465.i:                                    ; preds = %bb.cy
  %i.ais = fadd fast <4 x float> %i.aik, %.333123748.i
  %i.ait = fadd fast <4 x float> %i.ail, %.333123748.i
  %i.aiu = fadd fast <4 x float> %i.aim, %.333123748.i
  %i.aiv = fadd fast <4 x float> %i.ain, %.333123748.i
  %i.aiw = fadd fast <4 x float> %i.aio, %.333123748.i
  %i.aix = fadd fast <4 x float> %i.aip, %.333123748.i
  %i.aiy = fadd fast <4 x float> %i.aiq, %.333123748.i
  %i.aiz = fadd fast <4 x float> %i.air, %.333123748.i
  br label %.thread3486.i

bb.cz:                                            ; preds = %bb.cy
  br i1 %or.cond11.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.aja = fadd fast <4 x float> %i.aik, %.333123748.i
  %i.ajb = fadd fast <4 x float> %i.ail, %.333123748.i
  %i.ajc = fadd fast <4 x float> %i.aim, %.333123748.i
  %i.ajd = fadd fast <4 x float> %i.ain, %.333123748.i
  %i.aje = fadd fast <4 x float> %i.aio, %.333123748.i
  %i.ajf = fadd fast <4 x float> %i.aip, %.333123748.i
  %i.ajg = fadd fast <4 x float> %i.aiq, %.333123748.i
  %i.ajh = fadd fast <4 x float> %i.air, %.333123748.i
  br label %.thread3486.i

bb.db:                                            ; preds = %bb.cz
  switch i32 %3, label %.thread3486.i [
    i32 3, label %bb.dc
    i32 4, label %bb.dn
  ]

bb.dc:                                            ; preds = %bb.db
  %i.aji = load <4 x float>, ptr %.243752.i, align 1, !tbaa !89 ; 3 uses
  br i1 %i.br, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ajj = getelementptr inbounds nuw i8, ptr %.243752.i, i64 16
  %i.ajk = load <4 x float>, ptr %i.ajj, align 1, !tbaa !89
  %i.ajl = getelementptr inbounds nuw i8, ptr %.243752.i, i64 32
  %i.ajm = load <4 x float>, ptr %i.ajl, align 1, !tbaa !89
  %i.ajn = getelementptr inbounds nuw i8, ptr %.243752.i, i64 48
  %i.ajo = load <4 x float>, ptr %i.ajn, align 1, !tbaa !89
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
end_hunk_2
begin_hunk_3_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
    i32 4, label %bb.em
    i32 1, label %bb.en
  ]

bb.em:                                            ; preds = %bb.el
  %i.att = shufflevector <4 x float> %.53253.i, <4 x float> %.53247.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.atu = shufflevector <4 x float> %.53241.i, <4 x float> %.53235.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.atv = shufflevector <4 x float> %.53253.i, <4 x float> %.53247.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.atw = shufflevector <4 x float> %.53241.i, <4 x float> %.53235.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.atx = shufflevector <4 x float> %i.att, <4 x float> %i.atu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aty = shufflevector <4 x float> %i.atu, <4 x float> %i.att, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.atz = shufflevector <4 x float> %i.atv, <4 x float> %i.atw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aua = shufflevector <4 x float> %i.atw, <4 x float> %i.atv, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.atx, ptr %.419653761.i, align 16, !tbaa !89
  %i.aub = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 16
  store <4 x float> %i.aty, ptr %i.aub, align 16, !tbaa !89
  %i.auc = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 32
  store <4 x float> %i.atz, ptr %i.auc, align 16, !tbaa !89
  %i.aud = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 48
  store <4 x float> %i.aua, ptr %i.aud, align 16, !tbaa !89
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  store <4 x float> %.53253.i, ptr %.419653761.i, align 1, !tbaa !89
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %.419653761.i, i64 %i.l
  store <4 x float> %.53247.i, ptr %i.aue, align 1, !tbaa !89
  %i.auf = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 %.idx2054.i
  store <4 x float> %.53241.i, ptr %i.auf, align 1, !tbaa !89
  %i.aug = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 %.idx2055.i
  store <4 x float> %.53235.i, ptr %i.aug, align 1, !tbaa !89
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %bb.el
  %i.auh = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 %.idx2056.i
  br label %bb.er

bb.ep:                                            ; preds = %bb.ek
  switch i32 %i.c, label %bb.er [
    i32 4, label %.thread3519.i
    i32 1, label %bb.eq
  ]

.thread3519.i:                                    ; preds = %bb.ep
  store <4 x float> %.53253.i, ptr %.419653761.i, align 16, !tbaa !89
  %i.aui = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 16
  store <4 x float> %.53247.i, ptr %i.aui, align 16, !tbaa !89
  %i.auj = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 32
  store <4 x float> %.53241.i, ptr %i.auj, align 16, !tbaa !89
  %i.auk = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 48
  store <4 x float> %.53235.i, ptr %i.auk, align 16, !tbaa !89
  %i.aul = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 64
  br label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aum = shufflevector <4 x float> %.53253.i, <4 x float> %.53247.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aun = shufflevector <4 x float> %.53241.i, <4 x float> %.53235.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.auo = shufflevector <4 x float> %.53253.i, <4 x float> %.53247.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aup = shufflevector <4 x float> %.53241.i, <4 x float> %.53235.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.auq = shufflevector <4 x float> %i.aum, <4 x float> %i.aun, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aur = shufflevector <4 x float> %i.aun, <4 x float> %i.aum, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.aus = shufflevector <4 x float> %i.auo, <4 x float> %i.aup, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aut = shufflevector <4 x float> %i.aup, <4 x float> %i.auo, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.auq, ptr %.419653761.i, align 1, !tbaa !89
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %.419653761.i, i64 %i.l
  store <4 x float> %i.aur, ptr %i.auu, align 1, !tbaa !89
  %i.auv = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 %.idx2054.i
  store <4 x float> %i.aus, ptr %i.auv, align 1, !tbaa !89
  %i.auw = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 %.idx2055.i
  store <4 x float> %i.aut, ptr %i.auw, align 1, !tbaa !89
  %i.aux = getelementptr inbounds nuw i8, ptr %.419653761.i, i64 16
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.thread3519.i, %bb.ep, %bb.eo
  %.61967.i = phi ptr [ %i.auh, %bb.eo ], [ %i.aux, %bb.eq ], [ %.419653761.i, %bb.ep ], [ %i.aul, %.thread3519.i ] ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %.719003762.i, i64 64 ; 2 uses
  %i.auz = add nuw nsw i32 %.119753760.i, 4       ; 3 uses
  %i.ava = or disjoint i32 %i.auz, 3
  %i.avb = icmp slt i32 %i.ava, %7
  br i1 %i.avb, label %.lr.ph3764.i, label %.preheader3686.i, !llvm.loop !738

.preheader3685.i:                                 ; preds = %bb.fg, %.preheader3686.i
  %.123321.lcssa.i = phi <4 x float> [ %.83317.lcssa.i, %.preheader3686.i ], [ %.153324.i, %bb.fg ]
  %.21976.lcssa.i = phi i32 [ %.11975.lcssa.i, %.preheader3686.i ], [ %i.axt, %bb.fg ] ; 2 uses
  %.71968.lcssa.i = phi ptr [ %.41965.lcssa.i, %.preheader3686.i ], [ %.91970.i, %bb.fg ]
  %.81901.lcssa.i = phi ptr [ %.71900.lcssa.i, %.preheader3686.i ], [ %i.axs, %bb.fg ] ; 2 uses
  %.32.lcssa.i = phi ptr [ %.28.lcssa.i, %.preheader3686.i ], [ %.35.i, %bb.fg ] ; 2 uses
  %i.avc = icmp slt i32 %.21976.lcssa.i, %7
  br i1 %i.avc, label %.lr.ph3786.i, label %._crit_edge3787.i

.lr.ph3775.i:                                     ; preds = %.preheader3686.i, %bb.fg
  %.323774.i = phi ptr [ %.35.i, %bb.fg ], [ %.28.lcssa.i, %.preheader3686.i ] ; 14 uses
  %.819013773.i = phi ptr [ %i.axs, %bb.fg ], [ %.71900.lcssa.i, %.preheader3686.i ] ; 3 uses
  %.719683772.i = phi ptr [ %.91970.i, %bb.fg ], [ %.41965.lcssa.i, %.preheader3686.i ] ; 13 uses
  %.219763771.i = phi i32 [ %i.axt, %bb.fg ], [ %.11975.lcssa.i, %.preheader3686.i ]
  %.1233213770.i = phi <4 x float> [ %.153324.i, %bb.fg ], [ %.83317.lcssa.i, %.preheader3686.i ] ; 8 uses
  %i.avd = load <4 x i32>, ptr %.819013773.i, align 16, !tbaa !89
  %i.ave = getelementptr inbounds nuw i8, ptr %.819013773.i, i64 16
  %i.avf = load <4 x i32>, ptr %i.ave, align 16, !tbaa !89
  %i.avg = sitofp <4 x i32> %i.avd to <4 x float>
  %i.avh = shufflevector <4 x float> %i.avg, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.avi = sitofp <4 x i32> %i.avf to <4 x float>
  %i.avj = shufflevector <4 x float> %i.avi, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 2, i32 0> ; 2 uses
  %i.avk = shufflevector <4 x float> %i.avh, <4 x float> %i.avj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.avl = shufflevector <4 x float> %i.avj, <4 x float> %i.avh, <4 x i32> <i32 3, i32 6, i32 2, i32 7>
  %i.avm = fmul fast <4 x float> %i.avk, %i.afw   ; 7 uses
  %i.avn = fmul fast <4 x float> %i.avl, %i.afw   ; 7 uses
  %.not2036.i = icmp eq ptr %.323774.i, null
  br i1 %.not2036.i, label %.thread3530.i, label %bb.es

bb.es:                                            ; preds = %.lr.ph3775.i
  br i1 %i.bk, label %.thread3521.i, label %bb.et

.thread3521.i:                                    ; preds = %bb.es
  %i.avo = fadd fast <4 x float> %i.avm, %.1233213770.i
  %i.avp = fadd fast <4 x float> %i.avn, %.1233213770.i
  br label %.thread3530.i

bb.et:                                            ; preds = %bb.es
  br i1 %or.cond11.i, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.avq = fadd fast <4 x float> %i.avm, %.1233213770.i
  %i.avr = fadd fast <4 x float> %i.avn, %.1233213770.i
  br label %.thread3530.i

bb.ev:                                            ; preds = %bb.et
  switch i32 %3, label %.thread3530.i [
    i32 3, label %bb.ew
    i32 4, label %bb.fc
  ]

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.br, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.avs = load <4 x float>, ptr %.323774.i, align 1, !tbaa !89
  %i.avt = getelementptr inbounds nuw i8, ptr %.323774.i, i64 16
  %i.avu = load <4 x float>, ptr %i.avt, align 1, !tbaa !89
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %i.avv = load float, ptr %.323774.i, align 4, !tbaa !68
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %.323774.i, i64 %i.u ; 2 uses
  %i.avx = load float, ptr %i.avw, align 4, !tbaa !68
  %i.avy = getelementptr inbounds nuw i8, ptr %.323774.i, i64 %.idx2047.i ; 2 uses
  %i.avz = load float, ptr %i.avy, align 4, !tbaa !68
  %i.awa = getelementptr inbounds nuw i8, ptr %.323774.i, i64 %.idx2048.i ; 2 uses
  %i.awb = load float, ptr %i.awa, align 4, !tbaa !68
  %i.awc = insertelement <4 x float> poison, float %i.avv, i64 0
  %i.awd = insertelement <4 x float> %i.awc, float %i.avx, i64 1
  %i.awe = insertelement <4 x float> %i.awd, float %i.avz, i64 2
  %i.awf = insertelement <4 x float> %i.awe, float %i.awb, i64 3
  %i.awg = getelementptr inbounds nuw i8, ptr %.323774.i, i64 4
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !68
  %i.awi = getelementptr i8, ptr %i.avw, i64 4
  %i.awj = load float, ptr %i.awi, align 4, !tbaa !68
  %i.awk = getelementptr inbounds nuw i8, ptr %i.avy, i64 4
  %i.awl = load float, ptr %i.awk, align 4, !tbaa !68
  %i.awm = getelementptr i8, ptr %i.awa, i64 4
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !68
  %i.awo = insertelement <4 x float> poison, float %i.awh, i64 0
  %i.awp = insertelement <4 x float> %i.awo, float %i.awj, i64 1
  %i.awq = insertelement <4 x float> %i.awp, float %i.awl, i64 2
  %i.awr = insertelement <4 x float> %i.awq, float %i.awn, i64 3
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.sink4013.i.a = phi i64 [ 8, %bb.ey ], [ 32, %bb.ex ]
  %.133322.i = phi nsz <4 x float> [ %i.awf, %bb.ey ], [ %i.avs, %bb.ex ] ; 4 uses
  %.03213.i = phi nsz <4 x float> [ %i.awr, %bb.ey ], [ %i.avu, %bb.ex ] ; 2 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %.323774.i, i64 %.sink4013.i.a ; 2 uses
  br i1 %i.bs, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.awt = fadd fast <4 x float> %.133322.i, %i.avm
  %i.awu = fadd fast <4 x float> %.03213.i, %i.avn
  br label %.thread3530.i

bb.fb:                                            ; preds = %bb.ez
  %i.awv = fmul fast <4 x float> %.133322.i, %i.bp
  %i.aww = fadd fast <4 x float> %i.awv, %i.avm
  %i.awx = fmul fast <4 x float> %.03213.i, %i.bp
  %i.awy = fadd fast <4 x float> %i.awx, %i.avn
  br label %.thread3530.i

bb.fc:                                            ; preds = %bb.ev
  %i.awz = load <2 x float>, ptr %.323774.i, align 4, !tbaa !68
  %i.axa = fmul fast <2 x float> %i.awz, %i.cg    ; 2 uses
  %i.axb = shufflevector <2 x float> %i.axa, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.axc = shufflevector <2 x float> %i.axa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.axd = fadd fast <4 x float> %i.axb, %i.avm
  %i.axe = fadd fast <4 x float> %i.axc, %i.avn
  %i.axf = getelementptr inbounds nuw i8, ptr %.323774.i, i64 8
  br label %.thread3530.i

.thread3530.i:                                    ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ev, %bb.eu, %.thread3521.i, %.lr.ph3775.i
  %.153324.i = phi nsz <4 x float> [ %.1233213770.i, %.lr.ph3775.i ], [ %i.axb, %bb.fc ], [ %.1233213770.i, %bb.ev ], [ %.133322.i, %bb.fa ], [ %.133322.i, %bb.fb ], [ %.1233213770.i, %.thread3521.i ], [ %.1233213770.i, %bb.eu ] ; 2 uses
  %.43224.i = phi nsz <4 x float> [ %i.avm, %.lr.ph3775.i ], [ %i.axd, %bb.fc ], [ %i.avm, %bb.ev ], [ %i.awt, %bb.fa ], [ %i.aww, %bb.fb ], [ %i.avo, %.thread3521.i ], [ %i.avq, %bb.eu ]
  %.43218.i = phi nsz <4 x float> [ %i.avn, %.lr.ph3775.i ], [ %i.axe, %bb.fc ], [ %i.avn, %bb.ev ], [ %i.awu, %bb.fa ], [ %i.awy, %bb.fb ], [ %i.avp, %.thread3521.i ], [ %i.avr, %bb.eu ]
  %.35.i = phi ptr [ null, %.lr.ph3775.i ], [ %i.axf, %bb.fc ], [ %.323774.i, %bb.ev ], [ %i.aws, %bb.fa ], [ %i.aws, %bb.fb ], [ %.323774.i, %.thread3521.i ], [ %.323774.i, %bb.eu ] ; 2 uses
  %.53225.i = fmul reassoc nsz arcp contract afn <4 x float> %.43224.i, %i.bw ; 6 uses
  %.53219.i = fmul reassoc nsz arcp contract afn <4 x float> %.43218.i, %i.bw ; 6 uses
  br i1 %.not2029.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %.thread3530.i
  store <4 x float> %.53225.i, ptr %.719683772.i, align 1, !tbaa !89
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %.719683772.i, i64 %i.l
  store <4 x float> %.53219.i, ptr %i.axg, align 1, !tbaa !89
  %i.axh = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 %.idx2054.i
  br label %bb.fg

bb.fe:                                            ; preds = %.thread3530.i
  switch i32 %i.c, label %bb.fg [
    i32 4, label %.thread3535.i
    i32 1, label %bb.ff
  ]

.thread3535.i:                                    ; preds = %bb.fe
  store <4 x float> %.53225.i, ptr %.719683772.i, align 16, !tbaa !89
  %i.axi = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 16
  store <4 x float> %.53219.i, ptr %i.axi, align 16, !tbaa !89
  %i.axj = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 32
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %.sroa.02275.0.vec.extract.i = extractelement <4 x float> %.53225.i, i64 0
  store float %.sroa.02275.0.vec.extract.i, ptr %.719683772.i, align 4, !tbaa !68
  %.sroa.72276.16.vec.extract.i = extractelement <4 x float> %.53219.i, i64 0
  %i.axk = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 4
  store float %.sroa.72276.16.vec.extract.i, ptr %i.axk, align 4, !tbaa !68
  %i.axl = getelementptr inbounds nuw [4 x i8], ptr %.719683772.i, i64 %i.l
  %i.axm = shufflevector <4 x float> %.53225.i, <4 x float> %.53219.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.axm, ptr %i.axl, align 4, !tbaa !68
  %i.axn = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 %.idx2054.i
  %i.axo = shufflevector <4 x float> %.53225.i, <4 x float> %.53219.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.axo, ptr %i.axn, align 4, !tbaa !68
  %i.axp = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 %.idx2055.i
  %i.axq = shufflevector <4 x float> %.53225.i, <4 x float> %.53219.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.axq, ptr %i.axp, align 4, !tbaa !68
  %i.axr = getelementptr inbounds nuw i8, ptr %.719683772.i, i64 8
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.thread3535.i, %bb.fe, %bb.fd
  %.91970.i = phi ptr [ %i.axh, %bb.fd ], [ %i.axr, %bb.ff ], [ %.719683772.i, %bb.fe ], [ %i.axj, %.thread3535.i ] ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %.819013773.i, i64 32 ; 2 uses
  %i.axt = add nuw nsw i32 %.219763771.i, 2       ; 3 uses
  %i.axu = or disjoint i32 %i.axt, 1
  %i.axv = icmp slt i32 %i.axu, %7
  br i1 %i.axv, label %.lr.ph3775.i, label %.preheader3685.i, !llvm.loop !739

.lr.ph3786.i:                                     ; preds = %.preheader3685.i, %bb.ft
  %.363785.i = phi ptr [ %.39.i, %bb.ft ], [ %.32.lcssa.i, %.preheader3685.i ] ; 12 uses
  %.919023784.i = phi ptr [ %i.azd, %bb.ft ], [ %.81901.lcssa.i, %.preheader3685.i ] ; 2 uses
  %.1019713783.i = phi ptr [ %.121973.i, %bb.ft ], [ %.71968.lcssa.i, %.preheader3685.i ] ; 10 uses
  %.319773782.i = phi i32 [ %i.aze, %bb.ft ], [ %.21976.lcssa.i, %.preheader3685.i ]
  %.1633253781.i = phi <4 x float> [ %.193328.i, %bb.ft ], [ %.123321.lcssa.i, %.preheader3685.i ] ; 6 uses
  %i.axw = load <4 x i32>, ptr %.919023784.i, align 16, !tbaa !89
  %i.axx = sitofp fast <4 x i32> %i.axw to <4 x float>
  %i.axy = fmul fast <4 x float> %i.afw, %i.axx   ; 6 uses
  %.not2031.i = icmp eq ptr %.363785.i, null
  br i1 %.not2031.i, label %.thread3544.i, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph3786.i
  br i1 %i.bk, label %.thread3537.i, label %bb.fi

.thread3537.i:                                    ; preds = %bb.fh
  %i.axz = fadd fast <4 x float> %i.axy, %.1633253781.i
  br label %.thread3544.i

bb.fi:                                            ; preds = %bb.fh
  br i1 %or.cond11.i, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.aya = fadd fast <4 x float> %i.axy, %.1633253781.i
  br label %.thread3544.i

bb.fk:                                            ; preds = %bb.fi
  switch i32 %3, label %.thread3544.i [
    i32 3, label %bb.fl
    i32 4, label %bb.fp
  ]

bb.fl:                                            ; preds = %bb.fk
  br i1 %i.br, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.ayb = load <4 x float>, ptr %.363785.i, align 1, !tbaa !89
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fl
  %i.ayc = load float, ptr %.363785.i, align 4, !tbaa !68
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %.363785.i, i64 %i.u
  %i.aye = load float, ptr %i.ayd, align 4, !tbaa !68
  %i.ayf = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.idx2047.i
  %i.ayg = load float, ptr %i.ayf, align 4, !tbaa !68
  %i.ayh = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.idx2048.i
  %i.ayi = load float, ptr %i.ayh, align 4, !tbaa !68
  %i.ayj = insertelement <4 x float> poison, float %i.ayc, i64 0
  %i.ayk = insertelement <4 x float> %i.ayj, float %i.aye, i64 1
  %i.ayl = insertelement <4 x float> %i.ayk, float %i.ayg, i64 2
  %i.aym = insertelement <4 x float> %i.ayl, float %i.ayi, i64 3
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.sink4014.i.a = phi i64 [ 4, %bb.fn ], [ 16, %bb.fm ]
  %.173326.i = phi nsz <4 x float> [ %i.aym, %bb.fn ], [ %i.ayb, %bb.fm ] ; 2 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.sink4014.i.a
  %i.ayo = fmul fast <4 x float> %.173326.i, %i.bp
  %i.ayp = fadd fast <4 x float> %i.ayo, %i.axy
  br label %.thread3544.i

bb.fp:                                            ; preds = %bb.fk
  %i.ayq = load float, ptr %.363785.i, align 4, !tbaa !68
  %i.ayr = fmul fast float %i.ayq, %10
  %i.ays = insertelement <4 x float> poison, float %i.ayr, i64 0
  %i.ayt = shufflevector <4 x float> %i.ays, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ayu = fadd fast <4 x float> %i.ayt, %i.axy
  %i.ayv = getelementptr inbounds nuw i8, ptr %.363785.i, i64 4
  br label %.thread3544.i

.thread3544.i:                                    ; preds = %bb.fp, %bb.fo, %bb.fk, %bb.fj, %.thread3537.i, %.lr.ph3786.i
  %.193328.i = phi nsz <4 x float> [ %.1633253781.i, %.lr.ph3786.i ], [ %i.ayt, %bb.fp ], [ %.1633253781.i, %bb.fk ], [ %.173326.i, %bb.fo ], [ %.1633253781.i, %.thread3537.i ], [ %.1633253781.i, %bb.fj ]
  %.33194.i = phi nsz <4 x float> [ %i.axy, %.lr.ph3786.i ], [ %i.ayu, %bb.fp ], [ %i.axy, %bb.fk ], [ %i.ayp, %bb.fo ], [ %i.axz, %.thread3537.i ], [ %i.aya, %bb.fj ]
  %.39.i = phi ptr [ null, %.lr.ph3786.i ], [ %i.ayv, %bb.fp ], [ %.363785.i, %bb.fk ], [ %i.ayn, %bb.fo ], [ %.363785.i, %.thread3537.i ], [ %.363785.i, %bb.fj ] ; 2 uses
  %i.ayw = fmul fast <4 x float> %.33194.i, %i.bv ; 6 uses
  br i1 %.not2029.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %.thread3544.i
  store <4 x float> %i.ayw, ptr %.1019713783.i, align 1, !tbaa !89
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %.1019713783.i, i64 %i.l
  br label %bb.ft

bb.fr:                                            ; preds = %.thread3544.i
  switch i32 %i.c, label %bb.ft [
    i32 4, label %.thread3548.i
    i32 1, label %bb.fs
  ]

.thread3548.i:                                    ; preds = %bb.fr
  store <4 x float> %i.ayw, ptr %.1019713783.i, align 16, !tbaa !89
  %i.ayy = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 16
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %.sroa.02268.0.vec.extract.i = extractelement <4 x float> %i.ayw, i64 0
  store float %.sroa.02268.0.vec.extract.i, ptr %.1019713783.i, align 4, !tbaa !68
  %.sroa.02268.4.vec.extract.i = extractelement <4 x float> %i.ayw, i64 1
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %.1019713783.i, i64 %i.l
  store float %.sroa.02268.4.vec.extract.i, ptr %i.ayz, align 4, !tbaa !68
  %.sroa.02268.8.vec.extract.i = extractelement <4 x float> %i.ayw, i64 2
  %i.aza = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2054.i
  store float %.sroa.02268.8.vec.extract.i, ptr %i.aza, align 4, !tbaa !68
  %.sroa.02268.12.vec.extract.i = extractelement <4 x float> %i.ayw, i64 3
  %i.azb = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2055.i
  store float %.sroa.02268.12.vec.extract.i, ptr %i.azb, align 4, !tbaa !68
  %i.azc = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 4
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.thread3548.i, %bb.fr, %bb.fq
  %.121973.i = phi ptr [ %i.ayx, %bb.fq ], [ %i.azc, %bb.fs ], [ %.1019713783.i, %bb.fr ], [ %i.ayy, %.thread3548.i ]
  %i.azd = getelementptr inbounds nuw i8, ptr %.919023784.i, i64 16 ; 2 uses
  %i.aze = add nuw nsw i32 %.319773782.i, 1       ; 2 uses
  %exitcond3927.not.i = icmp eq i32 %i.aze, %7
  br i1 %exitcond3927.not.i, label %._crit_edge3787.i, label %.lr.ph3786.i, !llvm.loop !740

._crit_edge3787.i:                                ; preds = %bb.ft, %.preheader3685.i
  %.91902.lcssa.i = phi ptr [ %.81901.lcssa.i, %.preheader3685.i ], [ %i.azd, %bb.ft ] ; 2 uses
  %.36.lcssa.i = phi ptr [ %.32.lcssa.i, %.preheader3685.i ], [ %.39.i, %bb.ft ] ; 2 uses
  %indvars.iv.next3929.i = add nuw nsw i64 %indvars.iv3928.i, 4 ; 3 uses
  %i.azf = icmp slt i64 %indvars.iv.next3929.i, %invariant.op4000.i
  br i1 %i.azf, label %bb.co, label %.preheader3684.loopexit.i, !llvm.loop !741

.preheader3680.loopexit.i:                        ; preds = %._crit_edge3835.i
  %i.azg = trunc nuw nsw i64 %indvars.iv.next3933.i to i32
  br label %.preheader3680.i

.preheader3680.i:                                 ; preds = %.preheader3680.loopexit.i, %.preheader3684.i
  %.21915.lcssa.i = phi i32 [ %.11914.lcssa.i, %.preheader3684.i ], [ %i.azg, %.preheader3680.loopexit.i ] ; 2 uses
  %.101903.lcssa.i = phi ptr [ %.51898.lcssa.i, %.preheader3684.i ], [ %.141907.lcssa.i, %.preheader3680.loopexit.i ]
  %.40.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader3684.i ], [ %.53.lcssa.i, %.preheader3680.loopexit.i ]
  %i.azh = icmp slt i32 %.21915.lcssa.i, %5
  br i1 %i.azh, label %.lr.ph3887.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph3887.i:                                     ; preds = %.preheader3680.i
  %.not2002.i = icmp eq i32 %11, 0                ; 5 uses
  %i.azi = sext i32 %6 to i64                     ; 4 uses
  %i.azj = mul i64 %i.l, %i.azi
  %i.azk = icmp eq i32 %3, 0
  %i.azl = add i32 %3, -1
  %or.cond31.i = icmp ult i32 %i.azl, 2
  %i.azm = sext i32 %4 to i64                     ; 3 uses
  %i.azn = icmp sgt i32 %7, 7
  %or.cond35.i = icmp ult i32 %3, 3               ; 4 uses
  %i.azo = add i32 %3, -3
  %or.cond37.i = icmp ult i32 %i.azo, 2           ; 4 uses
  %i.azp = insertelement <4 x float> poison, float %10, i64 0
  %i.azq = shufflevector <4 x float> %i.azp, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.azr = fcmp fast une float %9, 1.000000e+00
  %i.azs = insertelement <4 x float> poison, float %9, i64 0
  %i.azt = shufflevector <4 x float> %i.azs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.azu = select ninf nsz i1 %i.azr, <4 x float> %i.azt, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.azv = icmp eq i64 %i.l, 1                    ; 2 uses
  %.idx2012.i = shl i64 %i.l, 3                   ; 3 uses
  %.idx2013.i = mul i64 %i.l, 12                  ; 2 uses
  %.idx2014.i = shl i64 %i.l, 4                   ; 5 uses
  %.idx2015.i = mul i64 %i.l, 20
  %.idx2016.i = mul i64 %i.l, 24
  %.idx2017.i = mul i64 %i.l, 28
  %.idx2018.i = shl i64 %i.l, 5                   ; 4 uses
  %i.azw = and i32 %7, -8
  %i.azx = sext i32 %.21915.lcssa.i to i64
  %i.azy = sext i32 %i.c to i64
  %wide.trip.count.i = sext i32 %5 to i64
  %i.azz = insertelement <2 x float> poison, float %10, i64 0
  %i.baa = shufflevector <2 x float> %i.azz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hs

bb.fu:                                            ; preds = %._crit_edge3835.i, %.lr.ph3842.i
  %indvars.iv3932.i = phi i64 [ %i.afc, %.lr.ph3842.i ], [ %indvars.iv.next3933.i, %._crit_edge3835.i ] ; 4 uses
  %.403841.i = phi ptr [ %.20.lcssa.i, %.lr.ph3842.i ], [ %.53.lcssa.i, %._crit_edge3835.i ] ; 4 uses
  %.1019033840.i = phi ptr [ %.51898.lcssa.i, %.lr.ph3842.i ], [ %.141907.lcssa.i, %._crit_edge3835.i ] ; 2 uses
  %i.bab = load ptr, ptr %2, align 8, !tbaa !24   ; 2 uses
  br i1 %.not2019.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.bac = getelementptr inbounds nuw [4 x i8], ptr %i.bab, i64 %i.aes
  %i.bad = add nsw i64 %indvars.iv3932.i, %i.aet  ; 2 uses
  %i.bae = mul nsw i64 %i.bad, %i.afe
  %i.baf = getelementptr inbounds [4 x i8], ptr %i.bac, i64 %i.bae
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu
  %i.bag = add nsw i64 %indvars.iv3932.i, %i.aet  ; 2 uses
  %i.bah = mul i64 %i.bag, %i.l
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %i.bab, i64 %i.bah
  %i.baj = getelementptr inbounds [4 x i8], ptr %i.bai, i64 %i.aer
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.pre-phi.i = phi i64 [ %i.bag, %bb.fw ], [ %i.bad, %bb.fv ] ; 2 uses
  %.01952.i = phi ptr [ %i.baj, %bb.fw ], [ %i.baf, %bb.fv ] ; 2 uses
  %i.bak = load ptr, ptr %8, align 8, !tbaa !24
  %i.bal = getelementptr [4 x i8], ptr %i.bak, i64 %.pre-phi.i
  %i.bam = load <2 x float>, ptr %i.bal, align 4, !tbaa !68 ; 4 uses
  %i.ban = shufflevector <2 x float> %i.bam, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bao = shufflevector <2 x float> %i.bam, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.bap = shufflevector <2 x float> %i.bam, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not2020.i = icmp eq ptr %.403841.i, null
  br i1 %.not2020.i, label %.thread3566.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  br i1 %12, label %.thread3550.i, label %bb.fz

.thread3550.i:                                    ; preds = %bb.fy
  %i.baq = load float, ptr %.403841.i, align 4, !tbaa !68
  %i.bar = fmul fast float %i.baq, %10            ; 3 uses
  %i.bas = insertelement <4 x float> poison, float %i.bar, i64 0
  %i.bat = shufflevector <4 x float> %i.bas, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bau = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bar, i64 0
  br label %.thread3566.i

bb.fz:                                            ; preds = %bb.fy
  br i1 %or.cond21.i, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.bav = load ptr, ptr %1, align 8, !tbaa !24
  %i.baw = getelementptr inbounds [4 x i8], ptr %i.bav, i64 %i.aet
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %i.baw, i64 %indvars.iv3932.i ; 2 uses
  %i.bay = load <2 x float>, ptr %i.bax, align 4, !tbaa !68
  %i.baz = fmul fast <2 x float> %i.bay, %i.afh   ; 4 uses
  %i.bba = extractelement <2 x float> %i.baz, i64 0
  %i.bbb = shufflevector <2 x float> %i.baz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bbc = shufflevector <2 x float> %i.baz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread3566.i

bb.gb:                                            ; preds = %bb.fz
  switch i32 %3, label %.thread3566.i [
    i32 3, label %bb.gc
    i32 4, label %bb.gd
  ]

bb.gc:                                            ; preds = %bb.gb
  %i.bbd = load ptr, ptr %1, align 8, !tbaa !24
  %i.bbe = mul i64 %.pre-phi.i, %i.u
  %i.bbf = getelementptr inbounds nuw [4 x i8], ptr %i.bbd, i64 %i.bbe
  %i.bbg = getelementptr inbounds [4 x i8], ptr %i.bbf, i64 %i.aer
  br label %.thread3566.i

bb.gd:                                            ; preds = %bb.gb
  %i.bbh = load ptr, ptr %1, align 8, !tbaa !24
  %i.bbi = getelementptr inbounds [4 x i8], ptr %i.bbh, i64 %i.aer
  br label %.thread3566.i

.thread3566.i:                                    ; preds = %bb.gd, %bb.gc, %bb.gb, %bb.ga, %.thread3550.i, %bb.fx
  %.23177.i = phi nsz <4 x float> [ zeroinitializer, %bb.fx ], [ zeroinitializer, %bb.gd ], [ zeroinitializer, %bb.gb ], [ zeroinitializer, %bb.gc ], [ %i.bat, %.thread3550.i ], [ %i.bbb, %bb.ga ] ; 2 uses
  %.13168.i = phi nsz <4 x float> [ zeroinitializer, %bb.fx ], [ zeroinitializer, %bb.gd ], [ zeroinitializer, %bb.gb ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %.thread3550.i ], [ %i.bbc, %bb.ga ] ; 2 uses
  %.21951.i = phi nsz float [ 0.000000e+00, %bb.fx ], [ 0.000000e+00, %bb.gd ], [ 0.000000e+00, %bb.gb ], [ 0.000000e+00, %bb.gc ], [ %i.bar, %.thread3550.i ], [ %i.bba, %bb.ga ]
  %.43.i = phi ptr [ null, %bb.fx ], [ %i.bbi, %bb.gd ], [ %.403841.i, %bb.gb ], [ %i.bbg, %bb.gc ], [ %.403841.i, %.thread3550.i ], [ %i.bax, %bb.ga ] ; 2 uses
  %i.bbj = phi <2 x float> [ zeroinitializer, %bb.fx ], [ zeroinitializer, %bb.gd ], [ zeroinitializer, %bb.gb ], [ zeroinitializer, %bb.gc ], [ %i.bau, %.thread3550.i ], [ %i.baz, %bb.ga ] ; 3 uses
  %i.bbk = shufflevector <2 x float> %i.bbj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.aeu, label %.lr.ph3803.i, label %.preheader3683.i

.preheader3683.i:                                 ; preds = %bb.gt, %.thread3566.i
  %.33178.lcssa.i = phi <4 x float> [ %.23177.i, %.thread3566.i ], [ %.53180.i, %bb.gt ]
  %.23169.lcssa.i = phi <4 x float> [ %.13168.i, %.thread3566.i ], [ %.43171.i, %bb.gt ]
  %.11953.lcssa.i = phi ptr [ %.01952.i, %.thread3566.i ], [ %i.beu, %bb.gt ] ; 2 uses
  %.01943.lcssa.i = phi i32 [ 0, %.thread3566.i ], [ %i.afb, %bb.gt ] ; 3 uses
  %.111904.lcssa.i = phi ptr [ %.1019033840.i, %.thread3566.i ], [ %i.bev, %bb.gt ] ; 2 uses
  %.44.lcssa.i = phi ptr [ %.43.i, %.thread3566.i ], [ %.46.i, %bb.gt ] ; 2 uses
  %i.bbl = or disjoint i32 %.01943.lcssa.i, 3
  %i.bbm = icmp slt i32 %i.bbl, %7
  br i1 %i.bbm, label %.lr.ph3816.i, label %.preheader3682.i

.lr.ph3803.i:                                     ; preds = %.thread3566.i, %bb.gt
  %.443802.i = phi ptr [ %.46.i, %bb.gt ], [ %.43.i, %.thread3566.i ] ; 11 uses
  %.1119043801.i = phi ptr [ %i.bev, %bb.gt ], [ %.1019033840.i, %.thread3566.i ] ; 5 uses
  %.019433800.i = phi i32 [ %i.bew, %bb.gt ], [ 0, %.thread3566.i ]
  %.119533799.i = phi ptr [ %i.beu, %bb.gt ], [ %.01952.i, %.thread3566.i ] ; 20 uses
  %.231693798.i = phi <4 x float> [ %.43171.i, %bb.gt ], [ %.13168.i, %.thread3566.i ] ; 6 uses
  %.331783797.i = phi <4 x float> [ %.53180.i, %bb.gt ], [ %.23177.i, %.thread3566.i ] ; 10 uses
  %i.bbn = load <4 x i32>, ptr %.1119043801.i, align 16, !tbaa !89
  %i.bbo = sitofp fast <4 x i32> %i.bbn to <4 x float> ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 16
  %i.bbq = load <4 x i32>, ptr %i.bbp, align 16, !tbaa !89
  %i.bbr = sitofp fast <4 x i32> %i.bbq to <4 x float> ; 2 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 32
  %i.bbt = load <4 x i32>, ptr %i.bbs, align 16, !tbaa !89
  %i.bbu = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 48
  %i.bbv = load <4 x i32>, ptr %i.bbu, align 16, !tbaa !89
  %i.bbw = sitofp <4 x i32> %i.bbt to <4 x float>
  %i.bbx = shufflevector <4 x float> %i.bbw, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bby = sitofp <4 x i32> %i.bbv to <4 x float>
  %i.bbz = shufflevector <4 x float> %i.bby, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bca = shufflevector <4 x float> %i.bbo, <4 x float> %i.bbx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bcb = shufflevector <4 x float> %i.bbo, <4 x float> %i.bbx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bcc = shufflevector <4 x float> %i.bbr, <4 x float> %i.bbz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bcd = shufflevector <4 x float> %i.bbr, <4 x float> %i.bbz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bce = shufflevector <4 x float> %i.bca, <4 x float> %i.bcb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bcf = shufflevector <4 x float> %i.bcc, <4 x float> %i.bcd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bcg = shufflevector <4 x float> %i.bca, <4 x float> %i.bcb, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bch = shufflevector <4 x float> %i.bcc, <4 x float> %i.bcd, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bci = shufflevector <4 x float> %i.bcg, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bcj = shufflevector <4 x float> %i.bch, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bck = fmul fast <4 x float> %i.bao, %i.bce   ; 6 uses
  %i.bcl = fmul fast <4 x float> %i.bao, %i.bcf   ; 6 uses
  %i.bcm = fmul fast <4 x float> %i.bci, %i.bap   ; 6 uses
  %i.bcn = fmul fast <4 x float> %i.bcj, %i.bap   ; 6 uses
  %.not2026.i = icmp eq ptr %.443802.i, null
  br i1 %.not2026.i, label %.thread3585.i, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph3803.i
  br i1 %12, label %.thread3572.i, label %bb.gf

.thread3572.i:                                    ; preds = %bb.ge
  %i.bco = fadd fast <4 x float> %i.bck, %.331783797.i
  %i.bcp = fadd fast <4 x float> %i.bcl, %.331783797.i
  %i.bcq = fadd fast <4 x float> %i.bcm, %.331783797.i
  %i.bcr = fadd fast <4 x float> %i.bcn, %.331783797.i
  br label %.thread3585.i

bb.gf:                                            ; preds = %bb.ge
  br i1 %or.cond21.i, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.bcs = fadd fast <4 x float> %i.bck, %.331783797.i
  %i.bct = fadd fast <4 x float> %i.bcl, %.331783797.i
  %i.bcu = fadd fast <4 x float> %i.bcm, %.231693798.i
  %i.bcv = fadd fast <4 x float> %i.bcn, %.231693798.i
  br label %.thread3585.i

bb.gh:                                            ; preds = %bb.gf
  switch i32 %3, label %.thread3585.i [
    i32 3, label %bb.gi
    i32 4, label %bb.gl
  ]

bb.gi:                                            ; preds = %bb.gh
  %i.bcw = load <4 x float>, ptr %.443802.i, align 1, !tbaa !89 ; 3 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %.443802.i, i64 16
  %i.bcy = load <4 x float>, ptr %i.bcx, align 1, !tbaa !89 ; 3 uses
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %.443802.i, i64 %i.u ; 2 uses
  %i.bda = load <4 x float>, ptr %i.bcz, align 1, !tbaa !89 ; 2 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcz, i64 16
  %i.bdc = load <4 x float>, ptr %i.bdb, align 1, !tbaa !89 ; 2 uses
  br i1 %i.aex, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.bdd = fmul fast <4 x float> %i.bcw, %i.aew
  %i.bde = fmul fast <4 x float> %i.bcy, %i.aew
  %i.bdf = fmul fast <4 x float> %i.bda, %i.aew
  %i.bdg = fmul fast <4 x float> %i.bdc, %i.aew
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.pn.i = phi <4 x float> [ %i.bdd, %bb.gj ], [ %i.bcw, %bb.gi ]
  %.pn3888.i.a = phi <4 x float> [ %i.bde, %bb.gj ], [ %i.bcy, %bb.gi ]
  %.pn3889.i.a = phi <4 x float> [ %i.bdf, %bb.gj ], [ %i.bda, %bb.gi ]
  %.pn3890.i.a = phi <4 x float> [ %i.bdg, %bb.gj ], [ %i.bdc, %bb.gi ]
  %.23145.i = fadd fast <4 x float> %.pn3890.i.a, %i.bcn
  %.23151.i = fadd fast <4 x float> %.pn3889.i.a, %i.bcm
  %.23157.i = fadd fast <4 x float> %.pn3888.i.a, %i.bcl
  %.23163.i = fadd fast <4 x float> %.pn.i, %i.bck
  %i.bdh = getelementptr inbounds nuw i8, ptr %.443802.i, i64 32
  br label %.thread3585.i

bb.gl:                                            ; preds = %bb.gh
  %i.bdi = load <4 x float>, ptr %.443802.i, align 1, !tbaa !89
  %i.bdj = getelementptr inbounds nuw i8, ptr %.443802.i, i64 16
  %i.bdk = load <4 x float>, ptr %i.bdj, align 1, !tbaa !89
  %i.bdl = fmul fast <4 x float> %i.bdi, %i.aew   ; 3 uses
  %i.bdm = fmul fast <4 x float> %i.bdk, %i.aew   ; 3 uses
  %i.bdn = fadd fast <4 x float> %i.bdl, %i.bck
  %i.bdo = fadd fast <4 x float> %i.bdm, %i.bcl
  %i.bdp = fadd fast <4 x float> %i.bdl, %i.bcm
  %i.bdq = fadd fast <4 x float> %i.bdm, %i.bcn
  %i.bdr = getelementptr inbounds nuw i8, ptr %.443802.i, i64 32
  br label %.thread3585.i

.thread3585.i:                                    ; preds = %bb.gl, %bb.gk, %bb.gh, %bb.gg, %.thread3572.i, %.lr.ph3803.i
  %.53180.i = phi nsz <4 x float> [ %.331783797.i, %.lr.ph3803.i ], [ %i.bdl, %bb.gl ], [ %.331783797.i, %bb.gh ], [ %i.bcw, %bb.gk ], [ %.331783797.i, %.thread3572.i ], [ %.331783797.i, %bb.gg ] ; 2 uses
  %.43171.i = phi nsz <4 x float> [ %.231693798.i, %.lr.ph3803.i ], [ %i.bdm, %bb.gl ], [ %.231693798.i, %bb.gh ], [ %i.bcy, %bb.gk ], [ %.231693798.i, %.thread3572.i ], [ %.231693798.i, %bb.gg ] ; 2 uses
  %.43165.i = phi nsz <4 x float> [ %i.bck, %.lr.ph3803.i ], [ %i.bdn, %bb.gl ], [ %i.bck, %bb.gh ], [ %.23163.i, %bb.gk ], [ %i.bco, %.thread3572.i ], [ %i.bcs, %bb.gg ] ; 2 uses
  %.43159.i = phi nsz <4 x float> [ %i.bcl, %.lr.ph3803.i ], [ %i.bdo, %bb.gl ], [ %i.bcl, %bb.gh ], [ %.23157.i, %bb.gk ], [ %i.bcp, %.thread3572.i ], [ %i.bct, %bb.gg ] ; 2 uses
  %.43153.i = phi nsz <4 x float> [ %i.bcm, %.lr.ph3803.i ], [ %i.bdp, %bb.gl ], [ %i.bcm, %bb.gh ], [ %.23151.i, %bb.gk ], [ %i.bcq, %.thread3572.i ], [ %i.bcu, %bb.gg ] ; 2 uses
  %.43147.i = phi nsz <4 x float> [ %i.bcn, %.lr.ph3803.i ], [ %i.bdq, %bb.gl ], [ %i.bcn, %bb.gh ], [ %.23145.i, %bb.gk ], [ %i.bcr, %.thread3572.i ], [ %i.bcv, %bb.gg ] ; 2 uses
  %.46.i = phi ptr [ null, %.lr.ph3803.i ], [ %i.bdr, %bb.gl ], [ %.443802.i, %bb.gh ], [ %i.bdh, %bb.gk ], [ %.443802.i, %.thread3572.i ], [ %.443802.i, %bb.gg ] ; 2 uses
  br i1 %i.aey, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %.thread3585.i
  %i.bds = fmul fast <4 x float> %.43165.i, %i.afa
  %i.bdt = fmul fast <4 x float> %.43159.i, %i.afa
  %i.bdu = fmul fast <4 x float> %.43153.i, %i.afa
  %i.bdv = fmul fast <4 x float> %.43147.i, %i.afa
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %.thread3585.i
  %.53166.i = phi nsz <4 x float> [ %i.bds, %bb.gm ], [ %.43165.i, %.thread3585.i ] ; 7 uses
  %.53160.i = phi nsz <4 x float> [ %i.bdt, %bb.gm ], [ %.43159.i, %.thread3585.i ] ; 7 uses
  %.53154.i = phi nsz <4 x float> [ %i.bdu, %bb.gm ], [ %.43153.i, %.thread3585.i ] ; 7 uses
  %.53148.i = phi nsz <4 x float> [ %i.bdv, %bb.gm ], [ %.43147.i, %.thread3585.i ] ; 7 uses
  br i1 %.not2019.i, label %bb.gs, label %bb.go

bb.go:                                            ; preds = %bb.gn
  switch i32 %i.c, label %bb.gt [
    i32 8, label %bb.gp
    i32 4, label %bb.gq
    i32 1, label %bb.gr
  ]

bb.gp:                                            ; preds = %bb.go
  store <4 x float> %.53166.i, ptr %.119533799.i, align 16, !tbaa !89
  %i.bdw = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53160.i, ptr %i.bdw, align 16, !tbaa !89
  %i.bdx = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 32
  store <4 x float> %.53154.i, ptr %i.bdx, align 16, !tbaa !89
  %i.bdy = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 48
  store <4 x float> %.53148.i, ptr %i.bdy, align 16, !tbaa !89
  br label %bb.gt

bb.gq:                                            ; preds = %bb.go
  store <4 x float> %.53166.i, ptr %.119533799.i, align 16, !tbaa !89
  %i.bdz = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53154.i, ptr %i.bdz, align 16, !tbaa !89
  %i.bea = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3658.i ; 2 uses
  store <4 x float> %.53160.i, ptr %i.bea, align 16, !tbaa !89
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 16
  store <4 x float> %.53148.i, ptr %i.beb, align 16, !tbaa !89
  br label %bb.gt

bb.gr:                                            ; preds = %bb.go
  %.sroa.02178.0.vec.extract.i = extractelement <4 x float> %.53166.i, i64 0
  store float %.sroa.02178.0.vec.extract.i, ptr %.119533799.i, align 4, !tbaa !68
  %.sroa.12.32.vec.extract.i = extractelement <4 x float> %.53154.i, i64 0
  %i.bec = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 4
  store float %.sroa.12.32.vec.extract.i, ptr %i.bec, align 4, !tbaa !68
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %.119533799.i, i64 %i.l
  %i.bee = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bee, ptr %i.bed, align 4, !tbaa !68
  %i.bef = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3656.i
  %i.beg = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.beg, ptr %i.bef, align 4, !tbaa !68
  %i.beh = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3657.i
  %i.bei = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bei, ptr %i.beh, align 4, !tbaa !68
  %.sroa.72179.16.vec.extract.i = extractelement <4 x float> %.53160.i, i64 0
  %i.bej = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3658.i ; 2 uses
  store float %.sroa.72179.16.vec.extract.i, ptr %i.bej, align 4, !tbaa !68
  %.sroa.17.48.vec.extract.i = extractelement <4 x float> %.53148.i, i64 0
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 4
  store float %.sroa.17.48.vec.extract.i, ptr %i.bek, align 4, !tbaa !68
  %i.bel = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3659.i
  %i.bem = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bem, ptr %i.bel, align 4, !tbaa !68
  %i.ben = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3660.i
  %i.beo = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.beo, ptr %i.ben, align 4, !tbaa !68
  %i.bep = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3661.i
  %i.beq = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.beq, ptr %i.bep, align 4, !tbaa !68
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gn
  store <4 x float> %.53166.i, ptr %.119533799.i, align 1, !tbaa !89
  %i.ber = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53160.i, ptr %i.ber, align 1, !tbaa !89
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %.119533799.i, i64 %i.l ; 2 uses
  store <4 x float> %.53154.i, ptr %i.bes, align 1, !tbaa !89
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 16
  store <4 x float> %.53148.i, ptr %i.bet, align 1, !tbaa !89
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go
  %.sink4015.i = phi i64 [ 32, %bb.gs ], [ %.idx2028.i, %bb.gq ], [ %.idx2028.i, %bb.gp ], [ %.idx2028.i, %bb.go ], [ %.idx2028.i, %bb.gr ]
  %i.beu = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.sink4015.i ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 64 ; 2 uses
  %i.bew = add nuw nsw i32 %.019433800.i, 8       ; 2 uses
  %i.bex = or disjoint i32 %i.bew, 7
  %i.bey = icmp slt i32 %i.bex, %7
  br i1 %i.bey, label %.lr.ph3803.i, label %.preheader3683.i, !llvm.loop !742

.preheader3682.i:                                 ; preds = %bb.he, %.preheader3683.i
  %.31955.lcssa.i = phi ptr [ %.11953.lcssa.i, %.preheader3683.i ], [ %i.bgm, %bb.he ] ; 2 uses
  %.11944.lcssa.i = phi i32 [ %.01943.lcssa.i, %.preheader3683.i ], [ %i.bgo, %bb.he ] ; 3 uses
  %.121905.lcssa.i = phi ptr [ %.111904.lcssa.i, %.preheader3683.i ], [ %i.bgn, %bb.he ] ; 2 uses
  %.47.lcssa.i = phi ptr [ %.44.lcssa.i, %.preheader3683.i ], [ %.49.i, %bb.he ] ; 2 uses
  %i.bez = or disjoint i32 %.11944.lcssa.i, 1
  %i.bfa = icmp slt i32 %i.bez, %7
  br i1 %i.bfa, label %.lr.ph3825.i.preheader, label %.preheader3681.i

.lr.ph3825.i.preheader:                           ; preds = %.preheader3682.i
  %i.bfb = shufflevector <2 x float> %i.bbj, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph3825.i

.lr.ph3816.i:                                     ; preds = %.preheader3683.i, %bb.he
  %.473815.i = phi ptr [ %.49.i, %bb.he ], [ %.44.lcssa.i, %.preheader3683.i ] ; 9 uses
  %.1219053814.i = phi ptr [ %i.bgn, %bb.he ], [ %.111904.lcssa.i, %.preheader3683.i ] ; 3 uses
  %.119443813.i = phi i32 [ %i.bgo, %bb.he ], [ %.01943.lcssa.i, %.preheader3683.i ]
  %.319553812.i = phi ptr [ %i.bgm, %bb.he ], [ %.11953.lcssa.i, %.preheader3683.i ] ; 10 uses
  %.531723811.i = phi <4 x float> [ %.73174.i, %bb.he ], [ %.23169.lcssa.i, %.preheader3683.i ] ; 6 uses
  %.631813810.i = phi <4 x float> [ %.83183.i, %bb.he ], [ %.33178.lcssa.i, %.preheader3683.i ] ; 7 uses
  %i.bfc = load <4 x i32>, ptr %.1219053814.i, align 16, !tbaa !89
  %i.bfd = sitofp fast <4 x i32> %i.bfc to <4 x float> ; 2 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %.1219053814.i, i64 16
  %i.bff = load <4 x i32>, ptr %i.bfe, align 16, !tbaa !89
  %i.bfg = sitofp fast <4 x i32> %i.bff to <4 x float> ; 2 uses
  %i.bfh = shufflevector <4 x float> %i.bfd, <4 x float> %i.bfg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bfi = shufflevector <4 x float> %i.bfd, <4 x float> %i.bfg, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bfj = shufflevector <4 x float> %i.bfh, <4 x float> %i.bfi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bfk = shufflevector <4 x float> %i.bfi, <4 x float> %i.bfh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bfl = shufflevector <4 x float> %i.bfk, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bfm = fmul fast <4 x float> %i.bao, %i.bfj   ; 6 uses
  %i.bfn = fmul fast <4 x float> %i.bfl, %i.bap   ; 6 uses
  %.not2024.i = icmp eq ptr %.473815.i, null
  br i1 %.not2024.i, label %.thread3602.i, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph3816.i
  br i1 %12, label %.thread3593.i, label %bb.gv

.thread3593.i:                                    ; preds = %bb.gu
  %i.bfo = fadd fast <4 x float> %i.bfm, %.631813810.i
  %i.bfp = fadd fast <4 x float> %i.bfn, %.631813810.i
  br label %.thread3602.i

bb.gv:                                            ; preds = %bb.gu
  br i1 %or.cond21.i, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.bfq = fadd fast <4 x float> %i.bfm, %.631813810.i
  %i.bfr = fadd fast <4 x float> %i.bfn, %.531723811.i
  br label %.thread3602.i

bb.gx:                                            ; preds = %bb.gv
  switch i32 %3, label %.thread3602.i [
    i32 3, label %bb.gy
    i32 4, label %bb.gz
  ]

bb.gy:                                            ; preds = %bb.gx
  %i.bfs = load <4 x float>, ptr %.473815.i, align 1, !tbaa !89 ; 3 uses
  %i.bft = getelementptr inbounds nuw [4 x i8], ptr %.473815.i, i64 %i.u
  %i.bfu = load <4 x float>, ptr %i.bft, align 1, !tbaa !89 ; 3 uses
  %i.bfv = fmul fast <4 x float> %i.bfs, %i.aew
  %i.bfw = fmul fast <4 x float> %i.bfu, %i.aew
  %.pn3891.i.a = select i1 %i.aex, <4 x float> %i.bfs, <4 x float> %i.bfv
  %.pn3892.i = select i1 %i.aex, <4 x float> %i.bfu, <4 x float> %i.bfw
  %.23128.i = fadd fast <4 x float> %.pn3892.i, %i.bfn
  %.23134.i = fadd fast <4 x float> %.pn3891.i.a, %i.bfm
  %i.bfx = getelementptr inbounds nuw i8, ptr %.473815.i, i64 16
  br label %.thread3602.i

bb.gz:                                            ; preds = %bb.gx
  %i.bfy = load <4 x float>, ptr %.473815.i, align 1, !tbaa !89
  %i.bfz = fmul fast <4 x float> %i.bfy, %i.aew   ; 3 uses
  %i.bga = fadd fast <4 x float> %i.bfz, %i.bfm
  %i.bgb = fadd fast <4 x float> %i.bfz, %i.bfn
  %i.bgc = getelementptr inbounds nuw i8, ptr %.473815.i, i64 16
  br label %.thread3602.i

.thread3602.i:                                    ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gw, %.thread3593.i, %.lr.ph3816.i
  %.83183.i = phi nsz <4 x float> [ %.631813810.i, %.lr.ph3816.i ], [ %i.bfz, %bb.gz ], [ %.631813810.i, %bb.gx ], [ %i.bfs, %bb.gy ], [ %.631813810.i, %.thread3593.i ], [ %.631813810.i, %bb.gw ]
  %.73174.i = phi nsz <4 x float> [ %.531723811.i, %.lr.ph3816.i ], [ %.531723811.i, %bb.gz ], [ %.531723811.i, %bb.gx ], [ %i.bfu, %bb.gy ], [ %.531723811.i, %.thread3593.i ], [ %.531723811.i, %bb.gw ]
  %.43136.i = phi nsz <4 x float> [ %i.bfm, %.lr.ph3816.i ], [ %i.bga, %bb.gz ], [ %i.bfm, %bb.gx ], [ %.23134.i, %bb.gy ], [ %i.bfo, %.thread3593.i ], [ %i.bfq, %bb.gw ]
  %.43130.i = phi nsz <4 x float> [ %i.bfn, %.lr.ph3816.i ], [ %i.bgb, %bb.gz ], [ %i.bfn, %bb.gx ], [ %.23128.i, %bb.gy ], [ %i.bfp, %.thread3593.i ], [ %i.bfr, %bb.gw ]
  %.49.i = phi ptr [ null, %.lr.ph3816.i ], [ %i.bgc, %bb.gz ], [ %.473815.i, %bb.gx ], [ %i.bfx, %bb.gy ], [ %.473815.i, %.thread3593.i ], [ %.473815.i, %bb.gw ] ; 2 uses
  %.53137.i = fmul reassoc nsz arcp contract afn <4 x float> %.43136.i, %i.aff ; 6 uses
  %.53131.i = fmul reassoc nsz arcp contract afn <4 x float> %.43130.i, %i.aff ; 6 uses
  br i1 %.not2019.i, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %.thread3602.i
  switch i32 %i.c, label %bb.he [
    i32 4, label %bb.hb
    i32 1, label %bb.hc
  ]

bb.hb:                                            ; preds = %bb.ha
  store <4 x float> %.53137.i, ptr %.319553812.i, align 16, !tbaa !89
  %i.bgd = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 16
  store <4 x float> %.53131.i, ptr %i.bgd, align 16, !tbaa !89
  br label %bb.he

bb.hc:                                            ; preds = %bb.ha
  %.sroa.02151.0.vec.extract.i = extractelement <4 x float> %.53137.i, i64 0
  store float %.sroa.02151.0.vec.extract.i, ptr %.319553812.i, align 4, !tbaa !68
  %.sroa.72152.16.vec.extract.i = extractelement <4 x float> %.53131.i, i64 0
  %i.bge = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 4
  store float %.sroa.72152.16.vec.extract.i, ptr %i.bge, align 4, !tbaa !68
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %.319553812.i, i64 %i.l
  %i.bgg = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bgg, ptr %i.bgf, align 4, !tbaa !68
  %i.bgh = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.idx3656.i
  %i.bgi = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bgi, ptr %i.bgh, align 4, !tbaa !68
  %i.bgj = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.idx3657.i
  %i.bgk = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bgk, ptr %i.bgj, align 4, !tbaa !68
  br label %bb.he

bb.hd:                                            ; preds = %.thread3602.i
  store <4 x float> %.53137.i, ptr %.319553812.i, align 1, !tbaa !89
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %.319553812.i, i64 %i.l
  store <4 x float> %.53131.i, ptr %i.bgl, align 1, !tbaa !89
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.ha
  %.sink4016.i = phi i64 [ 16, %bb.hd ], [ %.idx3658.i, %bb.hb ], [ %.idx3658.i, %bb.ha ], [ %.idx3658.i, %bb.hc ]
  %i.bgm = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.sink4016.i ; 2 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %.1219053814.i, i64 32 ; 2 uses
  %i.bgo = add nuw nsw i32 %.119443813.i, 4       ; 3 uses
  %i.bgp = or disjoint i32 %i.bgo, 3
  %i.bgq = icmp slt i32 %i.bgp, %7
  br i1 %i.bgq, label %.lr.ph3816.i, label %.preheader3682.i, !llvm.loop !743

.preheader3681.i:                                 ; preds = %.thread3621.i, %.preheader3682.i
  %.51957.lcssa.i = phi ptr [ %.31955.lcssa.i, %.preheader3682.i ], [ %i.bhz, %.thread3621.i ]
  %.21945.lcssa.i = phi i32 [ %.11944.lcssa.i, %.preheader3682.i ], [ %i.bib, %.thread3621.i ] ; 2 uses
  %.131906.lcssa.i = phi ptr [ %.121905.lcssa.i, %.preheader3682.i ], [ %i.bia, %.thread3621.i ] ; 2 uses
  %.50.lcssa.i = phi ptr [ %.47.lcssa.i, %.preheader3682.i ], [ %.52.i, %.thread3621.i ] ; 2 uses
  %i.bgr = icmp slt i32 %.21945.lcssa.i, %7
  br i1 %i.bgr, label %.lr.ph3834.i, label %._crit_edge3835.i

.lr.ph3834.i:                                     ; preds = %.preheader3681.i
  %i.bgs = select ninf nsz i1 %12, float %.21951.i, float 0.000000e+00
  %i.bgt = insertelement <2 x float> poison, float %i.bgs, i64 0
  %18 = shufflevector <2 x float> %i.bgt, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hl

.lr.ph3825.i:                                     ; preds = %.lr.ph3825.i.preheader, %.thread3621.i
  %.503824.i = phi ptr [ %.52.i, %.thread3621.i ], [ %.47.lcssa.i, %.lr.ph3825.i.preheader ] ; 9 uses
  %.1319063823.i = phi ptr [ %i.bia, %.thread3621.i ], [ %.121905.lcssa.i, %.lr.ph3825.i.preheader ] ; 2 uses
  %.219453822.i = phi i32 [ %i.bib, %.thread3621.i ], [ %.11944.lcssa.i, %.lr.ph3825.i.preheader ]
  %.519573821.i = phi ptr [ %i.bhz, %.thread3621.i ], [ %.31955.lcssa.i, %.lr.ph3825.i.preheader ] ; 4 uses
  %i.bgu = load <4 x i32>, ptr %.1319063823.i, align 4, !tbaa !50
  %i.bgv = sitofp fast <4 x i32> %i.bgu to <4 x float>
  %i.bgw = fmul fast <4 x float> %i.ban, %i.bgv   ; 6 uses
  %.not2022.i = icmp eq ptr %.503824.i, null
  br i1 %.not2022.i, label %.thread3621.i, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph3825.i
  br i1 %12, label %.thread3608.i, label %bb.hg

.thread3608.i:                                    ; preds = %bb.hf
  %i.bgx = fadd fast <4 x float> %i.bgw, %i.bfb
  br label %.thread3621.i

bb.hg:                                            ; preds = %bb.hf
  br i1 %or.cond21.i, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.bgy = fadd fast <4 x float> %i.bgw, %i.bbk
  br label %.thread3621.i

bb.hi:                                            ; preds = %bb.hg
  switch i32 %3, label %.thread3621.i [
    i32 3, label %bb.hj
    i32 4, label %bb.hk
  ]

bb.hj:                                            ; preds = %bb.hi
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr %.503824.i, i64 %i.u
  %i.bha = load <2 x float>, ptr %.503824.i, align 4, !tbaa !68
  %i.bhb = load <2 x float>, ptr %i.bgz, align 4, !tbaa !68
  %i.bhc = shufflevector <2 x float> %i.bha, <2 x float> %i.bhb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bhd = fmul fast <4 x float> %i.bhc, %i.aew
  %i.bhe = fadd fast <4 x float> %i.bhd, %i.bgw
  %i.bhf = getelementptr inbounds nuw i8, ptr %.503824.i, i64 8
  br label %.thread3621.i

bb.hk:                                            ; preds = %bb.hi
  %i.bhg = load <2 x float>, ptr %.503824.i, align 4, !tbaa !68
  %i.bhh = fmul fast <2 x float> %i.bhg, %i.afh
  %i.bhi = shufflevector <2 x float> %i.bhh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bhj = fadd fast <4 x float> %i.bhi, %i.bgw
  %i.bhk = getelementptr inbounds nuw i8, ptr %.503824.i, i64 8
  br label %.thread3621.i

.thread3621.i:                                    ; preds = %bb.hk, %bb.hj, %bb.hi, %bb.hh, %.thread3608.i, %.lr.ph3825.i
  %.52.i = phi ptr [ %i.bhk, %bb.hk ], [ %.503824.i, %bb.hi ], [ null, %.lr.ph3825.i ], [ %i.bhf, %bb.hj ], [ %.503824.i, %.thread3608.i ], [ %.503824.i, %bb.hh ] ; 2 uses
  %i.bhl = phi <4 x float> [ %i.bhj, %bb.hk ], [ %i.bgw, %bb.hi ], [ %i.bgw, %.lr.ph3825.i ], [ %i.bhe, %bb.hj ], [ %i.bgx, %.thread3608.i ], [ %i.bgy, %bb.hh ] ; 3 uses
  %i.bhm = extractelement <4 x float> %i.bhl, i64 0
  %i.bhn = fmul fast float %i.bhm, %9
  %i.bho = extractelement <4 x float> %i.bhl, i64 3
  %i.bhp = fmul fast float %i.bho, %9
  store float %i.bhn, ptr %.519573821.i, align 4, !tbaa !68
  %i.bhq = getelementptr inbounds nuw i8, ptr %.519573821.i, i64 4
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %.519573821.i, i64 %i.l ; 2 uses
  %i.bhs = getelementptr i8, ptr %i.bhr, i64 4
  %i.bht = shufflevector <4 x float> %i.bhl, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bhu = fmul fast <2 x float> %i.bht, %15      ; 2 uses
  %i.bhv = shufflevector <2 x float> %i.bhu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bhw = select <2 x i1> %17, <2 x float> %i.bhu, <2 x float> %i.bhv ; 2 uses
  %i.bhx = extractelement <2 x float> %i.bhw, i64 0
  store float %i.bhx, ptr %i.bhq, align 4, !tbaa !68
  %i.bhy = extractelement <2 x float> %i.bhw, i64 1
  store float %i.bhy, ptr %i.bhr, align 4, !tbaa !68
  store float %i.bhp, ptr %i.bhs, align 4, !tbaa !68
  %i.bhz = getelementptr inbounds nuw i8, ptr %.519573821.i, i64 %..idx3656.i ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %.1319063823.i, i64 16 ; 2 uses
  %i.bib = add nuw nsw i32 %.219453822.i, 2       ; 3 uses
  %i.bic = or disjoint i32 %i.bib, 1
  %i.bid = icmp slt i32 %i.bic, %7
  br i1 %i.bid, label %.lr.ph3825.i, label %.preheader3681.i, !llvm.loop !744

bb.hl:                                            ; preds = %bb.hr, %.lr.ph3834.i
  %.533833.i = phi ptr [ %.50.lcssa.i, %.lr.ph3834.i ], [ %.55.i, %bb.hr ] ; 7 uses
  %.1419073832.i = phi ptr [ %.131906.lcssa.i, %.lr.ph3834.i ], [ %i.bjf, %bb.hr ] ; 2 uses
  %.319463831.i = phi i32 [ %.21945.lcssa.i, %.lr.ph3834.i ], [ %i.bjg, %bb.hr ]
  %.719593830.i = phi ptr [ %.51957.lcssa.i, %.lr.ph3834.i ], [ %.81960.i, %bb.hr ] ; 5 uses
  %i.bie = load <2 x i32>, ptr %.1419073832.i, align 4, !tbaa !50
  %i.bif = sitofp fast <2 x i32> %i.bie to <2 x float>
  %i.big = fmul fast <2 x float> %i.bam, %i.bif   ; 2 uses
  %.not2021.i = icmp eq ptr %.533833.i, null
  br i1 %.not2021.i, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %19 = fadd reassoc nsz arcp contract afn <2 x float> %i.big, %18 ; 4 uses
  %i.bih = fadd fast <2 x float> %19, %i.bbj
  %20 = select <2 x i1> %i.afj, <2 x float> %i.bih, <2 x float> %19
  switch i32 %3, label %bb.ho [
    i32 3, label %.thread3627.i
    i32 4, label %bb.hn
  ]

.thread3627.i:                                    ; preds = %bb.hm
  %i.bii = load float, ptr %.533833.i, align 4, !tbaa !68
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr %.533833.i, i64 %i.u
  %i.bik = load float, ptr %i.bij, align 4, !tbaa !68
  %i.bil = insertelement <2 x float> poison, float %i.bii, i64 0
  %i.bim = insertelement <2 x float> %i.bil, float %i.bik, i64 1
  %i.bin = fmul fast <2 x float> %i.bim, %i.afh
  %i.bio = fadd fast <2 x float> %i.bin, %19
  %i.bip = getelementptr inbounds nuw i8, ptr %.533833.i, i64 4
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.biq = load float, ptr %.533833.i, align 4, !tbaa !68
  %i.bir = fmul fast float %i.biq, %10
  %i.bis = insertelement <2 x float> poison, float %i.bir, i64 0
  %i.bit = shufflevector <2 x float> %i.bis, <2 x float> poison, <2 x i32> zeroinitializer
  %i.biu = fadd fast <2 x float> %i.bit, %19
  %i.biv = getelementptr inbounds nuw i8, ptr %.533833.i, i64 4
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %.thread3627.i, %bb.hm, %bb.hl
  %.55.i = phi ptr [ %i.biv, %bb.hn ], [ %.533833.i, %bb.hm ], [ null, %bb.hl ], [ %i.bip, %.thread3627.i ] ; 2 uses
  %i.biw = phi <2 x float> [ %i.biu, %bb.hn ], [ %20, %bb.hm ], [ %i.big, %bb.hl ], [ %i.bio, %.thread3627.i ] ; 2 uses
  %i.bix = extractelement <2 x float> %i.biw, i64 0
  %i.biy = fmul fast float %i.bix, %9
  %i.biz = extractelement <2 x float> %i.biw, i64 1
  %i.bja = fmul fast float %i.biz, %9             ; 2 uses
  store float %i.biy, ptr %.719593830.i, align 4, !tbaa !68
  br i1 %.not2019.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.bjb = getelementptr inbounds nuw i8, ptr %.719593830.i, i64 4
  store float %i.bja, ptr %i.bjb, align 4, !tbaa !68
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %.719593830.i, i64 %i.l
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %.719593830.i, i64 %i.l
  store float %i.bja, ptr %i.bjd, align 4, !tbaa !68
  %i.bje = getelementptr inbounds nuw i8, ptr %.719593830.i, i64 4
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.81960.i = phi ptr [ %i.bjc, %bb.hp ], [ %i.bje, %bb.hq ]
  %i.bjf = getelementptr inbounds nuw i8, ptr %.1419073832.i, i64 8 ; 2 uses
  %i.bjg = add nuw nsw i32 %.319463831.i, 1       ; 2 uses
  %exitcond3931.not.i = icmp eq i32 %i.bjg, %7
  br i1 %exitcond3931.not.i, label %._crit_edge3835.i, label %bb.hl, !llvm.loop !745

._crit_edge3835.i:                                ; preds = %bb.hr, %.preheader3681.i
  %.141907.lcssa.i = phi ptr [ %.131906.lcssa.i, %.preheader3681.i ], [ %i.bjf, %bb.hr ] ; 2 uses
  %.53.lcssa.i = phi ptr [ %.50.lcssa.i, %.preheader3681.i ], [ %.55.i, %bb.hr ] ; 2 uses
  %indvars.iv.next3933.i = add nuw nsw i64 %indvars.iv3932.i, 2 ; 3 uses
  %i.bjh = icmp slt i64 %indvars.iv.next3933.i, %invariant.op4001.i
  br i1 %i.bjh, label %bb.fu, label %.preheader3680.loopexit.i, !llvm.loop !746

bb.hs:                                            ; preds = %._crit_edge3881.i, %.lr.ph3887.i
  %indvars.iv3936.i = phi i64 [ %i.azx, %.lr.ph3887.i ], [ %indvars.iv.next3937.i, %._crit_edge3881.i ] ; 4 uses
  %.563886.i = phi ptr [ %.40.lcssa.i, %.lr.ph3887.i ], [ %.66.lcssa.i, %._crit_edge3881.i ] ; 4 uses
  %.1519083885.i = phi ptr [ %.101903.lcssa.i, %.lr.ph3887.i ], [ %.191912.lcssa.i, %._crit_edge3881.i ] ; 2 uses
  %i.bji = load ptr, ptr %2, align 8, !tbaa !24   ; 2 uses
  br i1 %.not2002.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.bji, i64 %i.azj
  %i.bjk = add nsw i64 %indvars.iv3936.i, %i.azm  ; 2 uses
  %i.bjl = mul nsw i64 %i.bjk, %i.azy
  %i.bjm = getelementptr inbounds [4 x i8], ptr %i.bjj, i64 %i.bjl
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  %i.bjn = add nsw i64 %indvars.iv3936.i, %i.azm  ; 2 uses
  %i.bjo = mul i64 %i.bjn, %i.l
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bji, i64 %i.bjo
  %i.bjq = getelementptr inbounds [4 x i8], ptr %i.bjp, i64 %i.azi
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.pre-phi3940.i = phi i64 [ %i.bjn, %bb.hu ], [ %i.bjk, %bb.ht ] ; 2 uses
  %.01856.i = phi ptr [ %i.bjq, %bb.hu ], [ %i.bjm, %bb.ht ] ; 2 uses
  %i.bjr = load ptr, ptr %8, align 8, !tbaa !24
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %.pre-phi3940.i
  %i.bjt = load float, ptr %i.bjs, align 4, !tbaa !68 ; 3 uses
  %i.bju = insertelement <4 x float> poison, float %i.bjt, i64 0
  %i.bjv = shufflevector <4 x float> %i.bju, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %.not2003.i = icmp eq ptr %.563886.i, null
  br i1 %.not2003.i, label %.thread3643.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  br i1 %i.azk, label %.thread3631.i, label %bb.hx

.thread3631.i:                                    ; preds = %bb.hw
  %i.bjw = load float, ptr %.563886.i, align 4, !tbaa !68
  %i.bjx = fmul fast float %i.bjw, %10            ; 2 uses
  %i.bjy = insertelement <4 x float> poison, float %i.bjx, i64 0
  %i.bjz = shufflevector <4 x float> %i.bjy, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread3643.i

bb.hx:                                            ; preds = %bb.hw
  br i1 %or.cond31.i, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.bka = load ptr, ptr %1, align 8, !tbaa !24
  %i.bkb = getelementptr inbounds [4 x i8], ptr %i.bka, i64 %i.azm
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %i.bkb, i64 %indvars.iv3936.i ; 2 uses
  %i.bkd = load float, ptr %i.bkc, align 4, !tbaa !68
  %i.bke = fmul fast float %i.bkd, %10            ; 2 uses
  %i.bkf = insertelement <4 x float> poison, float %i.bke, i64 0
  %i.bkg = shufflevector <4 x float> %i.bkf, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread3643.i

bb.hz:                                            ; preds = %bb.hx
  switch i32 %3, label %.thread3643.i [
    i32 3, label %bb.ia
    i32 4, label %bb.ib
  ]

bb.ia:                                            ; preds = %bb.hz
  %i.bkh = load ptr, ptr %1, align 8, !tbaa !24
  %i.bki = mul i64 %.pre-phi3940.i, %i.u
  %i.bkj = getelementptr inbounds nuw [4 x i8], ptr %i.bkh, i64 %i.bki
  %i.bkk = getelementptr inbounds [4 x i8], ptr %i.bkj, i64 %i.azi
  br label %.thread3643.i

bb.ib:                                            ; preds = %bb.hz
  %i.bkl = load ptr, ptr %1, align 8, !tbaa !24
  %i.bkm = getelementptr inbounds [4 x i8], ptr %i.bkl, i64 %i.azi
  br label %.thread3643.i

.thread3643.i:                                    ; preds = %bb.ib, %bb.ia, %bb.hz, %bb.hy, %.thread3631.i, %bb.hv
  %.23108.i = phi nsz <4 x float> [ zeroinitializer, %bb.hv ], [ zeroinitializer, %bb.ib ], [ zeroinitializer, %bb.hz ], [ zeroinitializer, %bb.ia ], [ %i.bjz, %.thread3631.i ], [ %i.bkg, %bb.hy ] ; 2 uses
  %.59.i = phi ptr [ null, %bb.hv ], [ %i.bkm, %bb.ib ], [ %.563886.i, %bb.hz ], [ %i.bkk, %bb.ia ], [ %.563886.i, %.thread3631.i ], [ %i.bkc, %bb.hy ] ; 2 uses
  %.21855.i = phi nsz float [ 0.000000e+00, %bb.hv ], [ 0.000000e+00, %bb.ib ], [ 0.000000e+00, %bb.hz ], [ 0.000000e+00, %bb.ia ], [ %i.bjx, %.thread3631.i ], [ %i.bke, %bb.hy ] ; 2 uses
  br i1 %i.azn, label %.lr.ph3851.i, label %.preheader3679.i

.preheader3679.i:                                 ; preds = %bb.in, %.thread3643.i
  %.33109.lcssa.i = phi <4 x float> [ %.23108.i, %.thread3643.i ], [ %.43110.i, %bb.in ]
  %.161909.lcssa.i = phi ptr [ %.1519083885.i, %.thread3643.i ], [ %i.bls, %bb.in ] ; 2 uses
  %.60.lcssa.i = phi ptr [ %.59.i, %.thread3643.i ], [ %.61.i, %bb.in ] ; 2 uses
  %.11857.lcssa.i = phi ptr [ %.01856.i, %.thread3643.i ], [ %i.blr, %bb.in ] ; 2 uses
  %.01851.lcssa.i = phi i32 [ 0, %.thread3643.i ], [ %i.azw, %bb.in ] ; 3 uses
  %i.bkn = or disjoint i32 %.01851.lcssa.i, 3
  %i.bko = icmp slt i32 %i.bkn, %7
  br i1 %i.bko, label %.lr.ph3862.i, label %.preheader3678.i

.lr.ph3851.i:                                     ; preds = %.thread3643.i, %bb.in
  %.018513850.i = phi i32 [ %i.blt, %bb.in ], [ 0, %.thread3643.i ]
  %.118573849.i = phi ptr [ %i.blr, %bb.in ], [ %.01856.i, %.thread3643.i ] ; 17 uses
  %.603848.i = phi ptr [ %.61.i, %bb.in ], [ %.59.i, %.thread3643.i ] ; 6 uses
  %.1619093847.i = phi ptr [ %i.bls, %bb.in ], [ %.1519083885.i, %.thread3643.i ] ; 3 uses
  %.331093846.i = phi <4 x float> [ %.43110.i, %bb.in ], [ %.23108.i, %.thread3643.i ] ; 5 uses
  %i.bkp = load <4 x i32>, ptr %.1619093847.i, align 1, !tbaa !89
  %i.bkq = sitofp fast <4 x i32> %i.bkp to <4 x float>
  %i.bkr = fmul fast <4 x float> %i.bjv, %i.bkq   ; 4 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %.1619093847.i, i64 16
  %i.bkt = load <4 x i32>, ptr %i.bks, align 1, !tbaa !89
  %i.bku = sitofp fast <4 x i32> %i.bkt to <4 x float>
  %i.bkv = fmul fast <4 x float> %i.bjv, %i.bku   ; 4 uses
  %.not2010.i = icmp eq ptr %.603848.i, null
  br i1 %.not2010.i, label %bb.if, label %bb.ic

bb.ic:                                            ; preds = %.lr.ph3851.i
  br i1 %or.cond35.i, label %.thread3647.i, label %bb.id

.thread3647.i:                                    ; preds = %bb.ic
  %i.bkw = fadd fast <4 x float> %i.bkr, %.331093846.i
  %i.bkx = fadd fast <4 x float> %i.bkv, %.331093846.i
  br label %bb.if

bb.id:                                            ; preds = %bb.ic
  br i1 %or.cond37.i, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.bky = load <4 x float>, ptr %.603848.i, align 1, !tbaa !89 ; 2 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %.603848.i, i64 16
  %i.bla = load <4 x float>, ptr %i.bkz, align 1, !tbaa !89
  %i.blb = fmul fast <4 x float> %i.bky, %i.azq
  %i.blc = fadd fast <4 x float> %i.blb, %i.bkr
  %i.bld = fmul fast <4 x float> %i.bla, %i.azq
  %i.ble = fadd fast <4 x float> %i.bld, %i.bkv
  %i.blf = getelementptr inbounds nuw i8, ptr %.603848.i, i64 32
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id, %.thread3647.i, %.lr.ph3851.i
  %.43110.i = phi nsz <4 x float> [ %.331093846.i, %.lr.ph3851.i ], [ %i.bky, %bb.ie ], [ %.331093846.i, %bb.id ], [ %.331093846.i, %.thread3647.i ] ; 2 uses
  %.13104.i = phi nsz <4 x float> [ %i.bkr, %.lr.ph3851.i ], [ %i.blc, %bb.ie ], [ %i.bkr, %bb.id ], [ %i.bkw, %.thread3647.i ]
  %.13101.i = phi nsz <4 x float> [ %i.bkv, %.lr.ph3851.i ], [ %i.ble, %bb.ie ], [ %i.bkv, %bb.id ], [ %i.bkx, %.thread3647.i ]
  %.61.i = phi ptr [ null, %.lr.ph3851.i ], [ %i.blf, %bb.ie ], [ %.603848.i, %bb.id ], [ %.603848.i, %.thread3647.i ] ; 2 uses
  %.23105.i = fmul reassoc nsz arcp contract afn <4 x float> %.13104.i, %i.azu ; 8 uses
  %.23102.i = fmul reassoc nsz arcp contract afn <4 x float> %.13101.i, %i.azu ; 8 uses
  br i1 %.not2002.i, label %bb.im, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  br i1 %i.azv, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  store <4 x float> %.23105.i, ptr %.118573849.i, align 1, !tbaa !89
  %i.blg = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 16
  store <4 x float> %.23102.i, ptr %i.blg, align 1, !tbaa !89
  br label %bb.in

bb.ii:                                            ; preds = %bb.ig
  switch i32 %i.c, label %bb.in [
    i32 8, label %bb.ij
    i32 4, label %bb.ik
    i32 1, label %bb.il
  ]

bb.ij:                                            ; preds = %bb.ii
  store <4 x float> %.23105.i, ptr %.118573849.i, align 1, !tbaa !89
  %i.blh = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 16
  store <4 x float> %.23102.i, ptr %i.blh, align 1, !tbaa !89
  br label %bb.in

bb.ik:                                            ; preds = %bb.ii
  store <4 x float> %.23105.i, ptr %.118573849.i, align 1, !tbaa !89
  %i.bli = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2014.i
  store <4 x float> %.23102.i, ptr %i.bli, align 1, !tbaa !89
  br label %bb.in

bb.il:                                            ; preds = %bb.ii
  %.sroa.02126.0.vec.extract.i = extractelement <4 x float> %.23105.i, i64 0
  store float %.sroa.02126.0.vec.extract.i, ptr %.118573849.i, align 4, !tbaa !68
  %.sroa.02126.4.vec.extract.i = extractelement <4 x float> %.23105.i, i64 1
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %.118573849.i, i64 %i.l
  store float %.sroa.02126.4.vec.extract.i, ptr %i.blj, align 4, !tbaa !68
  %.sroa.02126.8.vec.extract.i = extractelement <4 x float> %.23105.i, i64 2
  %i.blk = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2012.i
  store float %.sroa.02126.8.vec.extract.i, ptr %i.blk, align 4, !tbaa !68
  %.sroa.02126.12.vec.extract.i = extractelement <4 x float> %.23105.i, i64 3
  %i.bll = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2013.i
  store float %.sroa.02126.12.vec.extract.i, ptr %i.bll, align 4, !tbaa !68
  %.sroa.7.16.vec.extract.i = extractelement <4 x float> %.23102.i, i64 0
  %i.blm = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2014.i
  store float %.sroa.7.16.vec.extract.i, ptr %i.blm, align 4, !tbaa !68
  %.sroa.7.20.vec.extract.i = extractelement <4 x float> %.23102.i, i64 1
  %i.bln = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2015.i
  store float %.sroa.7.20.vec.extract.i, ptr %i.bln, align 4, !tbaa !68
  %.sroa.7.24.vec.extract.i = extractelement <4 x float> %.23102.i, i64 2
  %i.blo = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2016.i
  store float %.sroa.7.24.vec.extract.i, ptr %i.blo, align 4, !tbaa !68
  %.sroa.7.28.vec.extract.i = extractelement <4 x float> %.23102.i, i64 3
  %i.blp = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2017.i
  store float %.sroa.7.28.vec.extract.i, ptr %i.blp, align 4, !tbaa !68
  br label %bb.in

bb.im:                                            ; preds = %bb.if
  store <4 x float> %.23105.i, ptr %.118573849.i, align 1, !tbaa !89
  %i.blq = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 16
  store <4 x float> %.23102.i, ptr %i.blq, align 1, !tbaa !89
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih
  %.sink4020.i.a = phi i64 [ 32, %bb.im ], [ %.idx2018.i, %bb.ik ], [ %.idx2018.i, %bb.ij ], [ %.idx2018.i, %bb.ii ], [ %.idx2018.i, %bb.il ], [ 32, %bb.ih ]
  %i.blr = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.sink4020.i.a ; 2 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %.1619093847.i, i64 32 ; 2 uses
  %i.blt = add nuw nsw i32 %.018513850.i, 8       ; 2 uses
  %i.blu = or disjoint i32 %i.blt, 7
  %i.blv = icmp slt i32 %i.blu, %7
  br i1 %i.blv, label %.lr.ph3851.i, label %.preheader3679.i, !llvm.loop !747

.preheader3678.i:                                 ; preds = %bb.iy, %.preheader3679.i
  %.171910.lcssa.i = phi ptr [ %.161909.lcssa.i, %.preheader3679.i ], [ %i.bmq, %bb.iy ] ; 2 uses
  %.62.lcssa.i = phi ptr [ %.60.lcssa.i, %.preheader3679.i ], [ %.63.i, %bb.iy ] ; 2 uses
  %.31859.lcssa.i = phi ptr [ %.11857.lcssa.i, %.preheader3679.i ], [ %i.bmp, %bb.iy ] ; 2 uses
  %.11852.lcssa.i = phi i32 [ %.01851.lcssa.i, %.preheader3679.i ], [ %i.bmr, %bb.iy ] ; 3 uses
  %i.blw = or disjoint i32 %.11852.lcssa.i, 1
  %i.blx = icmp slt i32 %i.blw, %7
  br i1 %i.blx, label %.lr.ph3871.i, label %.preheader.i

.lr.ph3871.i:                                     ; preds = %.preheader3678.i
  %i.bly = select ninf nsz i1 %or.cond35.i, float %.21855.i, float 0.000000e+00
  %i.blz = insertelement <2 x float> poison, float %i.bjt, i64 0
  %i.bma = shufflevector <2 x float> %i.blz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmb = insertelement <2 x float> poison, float %i.bly, i64 0
  %i.bmc = shufflevector <2 x float> %i.bmb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.iz

.lr.ph3862.i:                                     ; preds = %.preheader3679.i, %bb.iy
  %.118523861.i = phi i32 [ %i.bmr, %bb.iy ], [ %.01851.lcssa.i, %.preheader3679.i ]
  %.318593860.i = phi ptr [ %i.bmp, %bb.iy ], [ %.11857.lcssa.i, %.preheader3679.i ] ; 8 uses
  %.623859.i = phi ptr [ %.63.i, %bb.iy ], [ %.60.lcssa.i, %.preheader3679.i ] ; 5 uses
  %.1719103858.i = phi ptr [ %i.bmq, %bb.iy ], [ %.161909.lcssa.i, %.preheader3679.i ] ; 2 uses
  %.531113857.i = phi <4 x float> [ %.63112.i, %bb.iy ], [ %.33109.lcssa.i, %.preheader3679.i ] ; 4 uses
  %i.bmd = load <4 x i32>, ptr %.1719103858.i, align 1, !tbaa !89
  %i.bme = sitofp fast <4 x i32> %i.bmd to <4 x float>
  %i.bmf = fmul fast <4 x float> %i.bjv, %i.bme   ; 4 uses
  %.not2006.i = icmp eq ptr %.623859.i, null
  br i1 %.not2006.i, label %bb.ir, label %bb.io

bb.io:                                            ; preds = %.lr.ph3862.i
  br i1 %or.cond35.i, label %.thread3651.i, label %bb.ip

.thread3651.i:                                    ; preds = %bb.io
  %i.bmg = fadd fast <4 x float> %i.bmf, %.531113857.i
  br label %bb.ir

bb.ip:                                            ; preds = %bb.io
  br i1 %or.cond37.i, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.bmh = load <4 x float>, ptr %.623859.i, align 1, !tbaa !89 ; 2 uses
  %i.bmi = fmul fast <4 x float> %i.bmh, %i.azq
  %i.bmj = fadd fast <4 x float> %i.bmi, %i.bmf
  %i.bmk = getelementptr inbounds nuw i8, ptr %.623859.i, i64 16
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip, %.thread3651.i, %.lr.ph3862.i
  %.63112.i = phi nsz <4 x float> [ %.531113857.i, %.lr.ph3862.i ], [ %i.bmh, %bb.iq ], [ %.531113857.i, %bb.ip ], [ %.531113857.i, %.thread3651.i ]
  %.13069.i = phi nsz <4 x float> [ %i.bmf, %.lr.ph3862.i ], [ %i.bmj, %bb.iq ], [ %i.bmf, %bb.ip ], [ %i.bmg, %.thread3651.i ]
  %.63.i = phi ptr [ null, %.lr.ph3862.i ], [ %i.bmk, %bb.iq ], [ %.623859.i, %bb.ip ], [ %.623859.i, %.thread3651.i ] ; 2 uses
  %i.bml = fmul fast <4 x float> %.13069.i, %i.azt ; 7 uses
  br i1 %.not2002.i, label %bb.ix, label %bb.is

bb.is:                                            ; preds = %bb.ir
  br i1 %i.azv, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  store <4 x float> %i.bml, ptr %.318593860.i, align 1, !tbaa !89
  br label %bb.iy

bb.iu:                                            ; preds = %bb.is
  switch i32 %i.c, label %bb.iy [
    i32 4, label %bb.iv
    i32 1, label %bb.iw
  ]

bb.iv:                                            ; preds = %bb.iu
  store <4 x float> %i.bml, ptr %.318593860.i, align 1, !tbaa !89
  br label %bb.iy

bb.iw:                                            ; preds = %bb.iu
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.bml, i64 0
  store float %.sroa.0.0.vec.extract.i, ptr %.318593860.i, align 4, !tbaa !68
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.bml, i64 1
  %i.bmm = getelementptr inbounds nuw [4 x i8], ptr %.318593860.i, i64 %i.l
  store float %.sroa.0.4.vec.extract.i, ptr %i.bmm, align 4, !tbaa !68
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.bml, i64 2
  %i.bmn = getelementptr inbounds nuw i8, ptr %.318593860.i, i64 %.idx2012.i
  store float %.sroa.0.8.vec.extract.i, ptr %i.bmn, align 4, !tbaa !68
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.bml, i64 3
  %i.bmo = getelementptr inbounds nuw i8, ptr %.318593860.i, i64 %.idx2013.i
  store float %.sroa.0.12.vec.extract.i, ptr %i.bmo, align 4, !tbaa !68
  br label %bb.iy

bb.ix:                                            ; preds = %bb.ir
  store <4 x float> %i.bml, ptr %.318593860.i, align 1, !tbaa !89
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it
  %.sink4021.i = phi i64 [ 16, %bb.ix ], [ %.idx2014.i, %bb.iv ], [ %.idx2014.i, %bb.iu ], [ %.idx2014.i, %bb.iw ], [ 16, %bb.it ]
  %i.bmp = getelementptr inbounds nuw i8, ptr %.318593860.i, i64 %.sink4021.i ; 2 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %.1719103858.i, i64 16 ; 2 uses
  %i.bmr = add nuw nsw i32 %.118523861.i, 4       ; 3 uses
  %i.bms = or disjoint i32 %i.bmr, 3
  %i.bmt = icmp slt i32 %i.bms, %7
  br i1 %i.bmt, label %.lr.ph3862.i, label %.preheader3678.i, !llvm.loop !748

.preheader.i:                                     ; preds = %bb.jf, %.preheader3678.i
  %.181911.lcssa.i = phi ptr [ %.171910.lcssa.i, %.preheader3678.i ], [ %i.bnm, %bb.jf ] ; 2 uses
  %.64.lcssa.i = phi ptr [ %.62.lcssa.i, %.preheader3678.i ], [ %.65.i, %bb.jf ] ; 2 uses
  %.5.lcssa.i = phi ptr [ %.31859.lcssa.i, %.preheader3678.i ], [ %i.bnl, %bb.jf ]
  %.2.lcssa.i = phi i32 [ %.11852.lcssa.i, %.preheader3678.i ], [ %i.bnn, %bb.jf ] ; 2 uses
  %i.bmu = icmp slt i32 %.2.lcssa.i, %7
  br i1 %i.bmu, label %.lr.ph3880.i, label %._crit_edge3881.i

.lr.ph3880.i:                                     ; preds = %.preheader.i
  %i.bmv = select ninf nsz i1 %or.cond35.i, float %.21855.i, float 0.000000e+00
  br label %bb.jg

bb.iz:                                            ; preds = %bb.jf, %.lr.ph3871.i
  %.23870.i = phi i32 [ %.11852.lcssa.i, %.lr.ph3871.i ], [ %i.bnn, %bb.jf ]
  %.53869.i = phi ptr [ %.31859.lcssa.i, %.lr.ph3871.i ], [ %i.bnl, %bb.jf ] ; 4 uses
  %.643868.i = phi ptr [ %.62.lcssa.i, %.lr.ph3871.i ], [ %.65.i, %bb.jf ] ; 4 uses
  %.1819113867.i = phi ptr [ %.171910.lcssa.i, %.lr.ph3871.i ], [ %i.bnm, %bb.jf ] ; 2 uses
  %i.bmw = load <2 x i32>, ptr %.1819113867.i, align 4, !tbaa !50
  %i.bmx = sitofp fast <2 x i32> %i.bmw to <2 x float>
  %i.bmy = fmul fast <2 x float> %i.bma, %i.bmx   ; 3 uses
  %.not2005.i = icmp eq ptr %.643868.i, null
  br i1 %.not2005.i, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.bmz = fadd reassoc nsz arcp contract afn <2 x float> %i.bmy, %i.bmc
  br i1 %or.cond37.i, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.bna = load <2 x float>, ptr %.643868.i, align 4, !tbaa !68
  %i.bnb = fmul fast <2 x float> %i.bna, %i.baa
  %i.bnc = fadd fast <2 x float> %i.bnb, %i.bmy
  %i.bnd = getelementptr inbounds nuw i8, ptr %.643868.i, i64 8
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %bb.iz
  %.65.i = phi ptr [ %i.bnd, %bb.jb ], [ %.643868.i, %bb.ja ], [ null, %bb.iz ] ; 2 uses
  %i.bne = phi <2 x float> [ %i.bnc, %bb.jb ], [ %i.bmz, %bb.ja ], [ %i.bmy, %bb.iz ] ; 2 uses
  %i.bnf = extractelement <2 x float> %i.bne, i64 0
  %i.bng = fmul fast float %i.bnf, %9
  %i.bnh = extractelement <2 x float> %i.bne, i64 1
  %i.bni = fmul fast float %i.bnh, %9             ; 2 uses
  store float %i.bng, ptr %.53869.i, align 4, !tbaa !68
  br i1 %.not2002.i, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %.53869.i, i64 %i.l
  store float %i.bni, ptr %i.bnj, align 4, !tbaa !68
  br label %bb.jf

bb.je:                                            ; preds = %bb.jc
  %i.bnk = getelementptr inbounds nuw i8, ptr %.53869.i, i64 4
  store float %i.bni, ptr %i.bnk, align 4, !tbaa !68
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %.sink4022.i = phi i64 [ 8, %bb.je ], [ %.idx2012.i, %bb.jd ]
  %i.bnl = getelementptr inbounds nuw i8, ptr %.53869.i, i64 %.sink4022.i ; 2 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %.1819113867.i, i64 8 ; 2 uses
  %i.bnn = add nuw nsw i32 %.23870.i, 2           ; 3 uses
  %i.bno = or disjoint i32 %i.bnn, 1
  %i.bnp = icmp slt i32 %i.bno, %7
  br i1 %i.bnp, label %bb.iz, label %.preheader.i, !llvm.loop !749

bb.jg:                                            ; preds = %bb.jj, %.lr.ph3880.i
  %.33879.i = phi i32 [ %.2.lcssa.i, %.lr.ph3880.i ], [ %i.bob, %bb.jj ]
  %.73878.i = phi ptr [ %.5.lcssa.i, %.lr.ph3880.i ], [ %.8.i, %bb.jj ] ; 3 uses
  %.663877.i = phi ptr [ %.64.lcssa.i, %.lr.ph3880.i ], [ %.67.i, %bb.jj ] ; 4 uses
  %.1919123876.i = phi ptr [ %.181911.lcssa.i, %.lr.ph3880.i ], [ %i.boa, %bb.jj ] ; 2 uses
  %i.bnq = load i32, ptr %.1919123876.i, align 4, !tbaa !50
  %i.bnr = sitofp fast i32 %i.bnq to float
  %i.bns = fmul fast float %i.bjt, %i.bnr         ; 3 uses
  %.not2004.i = icmp eq ptr %.663877.i, null
  br i1 %.not2004.i, label %bb.jj, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %spec.select.i = fadd reassoc nsz arcp contract afn float %i.bns, %i.bmv
  br i1 %or.cond37.i, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.bnt = load float, ptr %.663877.i, align 4, !tbaa !68
  %i.bnu = fmul fast float %i.bnt, %10
  %i.bnv = fadd fast float %i.bnu, %i.bns
  %i.bnw = getelementptr inbounds nuw i8, ptr %.663877.i, i64 4
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh, %bb.jg
  %.67.i = phi ptr [ %i.bnw, %bb.ji ], [ %.663877.i, %bb.jh ], [ null, %bb.jg ] ; 2 uses
  %.1.i = phi nsz float [ %i.bnv, %bb.ji ], [ %spec.select.i, %bb.jh ], [ %i.bns, %bb.jg ]
  %i.bnx = fmul fast float %.1.i, %9
  store float %i.bnx, ptr %.73878.i, align 4, !tbaa !68
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %.73878.i, i64 %i.l
  %i.bnz = getelementptr inbounds nuw i8, ptr %.73878.i, i64 4
  %.8.i = select i1 %.not2002.i, ptr %i.bnz, ptr %i.bny
  %i.boa = getelementptr inbounds nuw i8, ptr %.1919123876.i, i64 4 ; 2 uses
  %i.bob = add nuw nsw i32 %.33879.i, 1           ; 2 uses
  %exitcond3935.not.i = icmp eq i32 %i.bob, %7
  br i1 %exitcond3935.not.i, label %._crit_edge3881.i, label %bb.jg, !llvm.loop !750

._crit_edge3881.i:                                ; preds = %bb.jj, %.preheader.i
  %.191912.lcssa.i = phi ptr [ %.181911.lcssa.i, %.preheader.i ], [ %i.boa, %bb.jj ]
  %.66.lcssa.i = phi ptr [ %.64.lcssa.i, %.preheader.i ], [ %.67.i, %bb.jj ]
  %indvars.iv.next3937.i = add nuw nsw i64 %indvars.iv3936.i, 1 ; 2 uses
  %exitcond3939.not.i = icmp eq i64 %indvars.iv.next3937.i, %wide.trip.count.i
  br i1 %exitcond3939.not.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit, label %bb.hs, !llvm.loop !751

_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit: ; preds = %._crit_edge3881.i, %bb.b, %.preheader3680.i
  ret void
}

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn19cpu_support_x86_xopEv() local_unnamed_addr #1

declare void @_ZN4ncnn32gemm_transB_packed_tile_int8_xopERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #16

declare void @_ZN4ncnn37unpack_output_tile_int32_to_fp32_avx2ERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72), float noundef nofpclass(nan inf), float noundef nofpclass(nan inf), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL20compute_B_int8_scaleERKNS_3MatERf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  %i.c = icmp eq i32 %i.b, 3                      ; 4 uses
  %.in.v.i = select i1 %i.c, i64 56, i64 48
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.d = load i32, ptr %.in.i, align 8, !tbaa !50 ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph79.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit

.lr.ph79.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !24     ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !64   ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = mul nsw i32 %i.m, %i.g                   ; 15 uses
  %i.p = icmp sgt i32 %i.o, 7
  br i1 %i.p, label %.lr.ph79.split.us.preheader.i, label %.lr.ph79.split.i

.lr.ph79.split.us.preheader.i:                    ; preds = %.lr.ph79.i
  %i.q = and i32 %i.o, 2147483640                 ; 3 uses
  %wide.trip.count178.i = zext nneg i32 %i.d to i64
  %..i = select i1 %i.c, i64 %i.j, i64 %i.h
  %factor.op.mul192.i = mul i64 %..i, %i.n
  %i.r = or disjoint i32 %i.q, 3
  %i.s = icmp samesign ult i32 %i.r, %i.o
  %i.t = add nsw i32 %i.o, -8                     ; 2 uses
  %i.u = lshr i32 %i.t, 3
  %i.v = add nuw nsw i32 %i.u, 1                  ; 2 uses
  %xtraiter170 = and i32 %i.v, 3                  ; 3 uses
  %i.w = icmp ult i32 %i.t, 24
  %unroll_iter176 = and i32 %i.v, 1073741820
  %lcmp.mod172.not = icmp eq i32 %xtraiter170, 0
  %lcmp.mod175 = icmp ne i32 %xtraiter170, 0
  br label %.lr.ph79.split.us.i

.lr.ph79.split.us.i:                              ; preds = %._crit_edge.us.i, %.lr.ph79.split.us.preheader.i
  %indvars.iv175.i = phi i64 [ 0, %.lr.ph79.split.us.preheader.i ], [ %indvars.iv.next176.i, %._crit_edge.us.i ] ; 2 uses
  %.05076.us.i = phi float [ 0.000000e+00, %.lr.ph79.split.us.preheader.i ], [ %.151.lcssa.us.i, %._crit_edge.us.i ] ; 4 uses
  %.05275.us.i = phi <8 x float> [ zeroinitializer, %.lr.ph79.split.us.preheader.i ], [ %.lcssa141, %._crit_edge.us.i ] ; 2 uses
  %.05474.us.i = phi <4 x float> [ zeroinitializer, %.lr.ph79.split.us.preheader.i ], [ %.155.lcssa.us.i, %._crit_edge.us.i ] ; 2 uses
  %.reass193.i = mul i64 %factor.op.mul192.i, %indvars.iv175.i
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass193.i ; 2 uses
  br i1 %i.w, label %.epil.preheader, label %.lr.ph79.split.us.i.new

.lr.ph79.split.us.i.new:                          ; preds = %.lr.ph79.split.us.i, %.lr.ph79.split.us.i.new
  %.02958.us.i = phi ptr [ %i.ar, %.lr.ph79.split.us.i.new ], [ %i.x, %.lr.ph79.split.us.i ] ; 5 uses
  %.15357.us.i = phi <8 x float> [ %i.aq, %.lr.ph79.split.us.i.new ], [ %.05275.us.i, %.lr.ph79.split.us.i ]
  %niter177 = phi i32 [ %niter177.next.3, %.lr.ph79.split.us.i.new ], [ 0, %.lr.ph79.split.us.i ]
  %i.y = load <8 x i32>, ptr %.02958.us.i, align 1, !tbaa !89
  %i.z = and <8 x i32> %i.y, splat (i32 2147483647)
  %i.aa = bitcast <8 x i32> %i.z to <8 x float>
  %i.ab = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15357.us.i, <8 x float> nofpclass(nan inf) %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 32
  %i.ad = load <8 x i32>, ptr %i.ac, align 1, !tbaa !89
  %i.ae = and <8 x i32> %i.ad, splat (i32 2147483647)
  %i.af = bitcast <8 x i32> %i.ae to <8 x float>
  %i.ag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ab, <8 x float> nofpclass(nan inf) %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 64
  %i.ai = load <8 x i32>, ptr %i.ah, align 1, !tbaa !89
  %i.aj = and <8 x i32> %i.ai, splat (i32 2147483647)
  %i.ak = bitcast <8 x i32> %i.aj to <8 x float>
  %i.al = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> nofpclass(nan inf) %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 96
  %i.an = load <8 x i32>, ptr %i.am, align 1, !tbaa !89
  %i.ao = and <8 x i32> %i.an, splat (i32 2147483647)
  %i.ap = bitcast <8 x i32> %i.ao to <8 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) %i.ap) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02958.us.i, i64 128 ; 3 uses
  %niter177.next.3 = add i32 %niter177, 4         ; 2 uses
  %niter177.ncmp.3.not = icmp eq i32 %niter177.next.3, %unroll_iter176
  br i1 %niter177.ncmp.3.not, label %..preheader56_crit_edge.us.i.unr-lcssa, label %.lr.ph79.split.us.i.new, !llvm.loop !752

.lr.ph65.us.i:                                    ; preds = %..preheader56_crit_edge.us.i, %.lr.ph65.us.i
  %.164.us.i = phi i32 [ %i.ax, %.lr.ph65.us.i ], [ %i.q, %..preheader56_crit_edge.us.i ]
  %.13063.us.i = phi ptr [ %i.aw, %.lr.ph65.us.i ], [ %.lcssa, %..preheader56_crit_edge.us.i ] ; 2 uses
  %.15562.us.i = phi <4 x float> [ %i.av, %.lr.ph65.us.i ], [ %.05474.us.i, %..preheader56_crit_edge.us.i ]
  %i.as = load <4 x i32>, ptr %.13063.us.i, align 1, !tbaa !89
  %i.at = and <4 x i32> %i.as, splat (i32 2147483647)
  %i.au = bitcast <4 x i32> %i.at to <4 x float>
  %i.av = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.15562.us.i, <4 x float> nofpclass(nan inf) %i.au) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.13063.us.i, i64 16 ; 2 uses
  %i.ax = add nuw nsw i32 %.164.us.i, 4           ; 3 uses
  %i.ay = or disjoint i32 %i.ax, 3
  %i.az = icmp slt i32 %i.ay, %i.o
  br i1 %i.az, label %.lr.ph65.us.i, label %.preheader.us.i, !llvm.loop !753

.lr.ph72.us.i:                                    ; preds = %.lr.ph72.us.i.preheader, %.lr.ph72.us.i
  %.271.us.i = phi i32 [ %i.bd, %.lr.ph72.us.i ], [ %.271.us.i.ph, %.lr.ph72.us.i.preheader ]
  %.23170.us.i = phi ptr [ %i.bc, %.lr.ph72.us.i ], [ %.23170.us.i.ph, %.lr.ph72.us.i.preheader ] ; 2 uses
  %.15169.us.i = phi float [ %.sroa.speculated40.us.i, %.lr.ph72.us.i ], [ %.15169.us.i.ph, %.lr.ph72.us.i.preheader ]
  %i.ba = load float, ptr %.23170.us.i, align 4, !tbaa !68
  %i.bb = tail call fast float @llvm.fabs.f32(float %i.ba)
  %.sroa.speculated40.us.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.15169.us.i, float %i.bb) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.23170.us.i, i64 4
  %i.bd = add nuw nsw i32 %.271.us.i, 1           ; 2 uses
  %exitcond174.not.i = icmp eq i32 %i.bd, %i.o
  br i1 %exitcond174.not.i, label %._crit_edge.us.i, label %.lr.ph72.us.i, !llvm.loop !754

._crit_edge.us.i:                                 ; preds = %.lr.ph72.us.i, %middle.block112, %vec.epilog.middle.block136, %.preheader.us.i
  %.151.lcssa.us.i = phi float [ %.05076.us.i, %.preheader.us.i ], [ %i.ck, %vec.epilog.middle.block136 ], [ %i.cb, %middle.block112 ], [ %.sroa.speculated40.us.i, %.lr.ph72.us.i ] ; 2 uses
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next176.i, %wide.trip.count178.i
  br i1 %exitcond179.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %.lr.ph79.split.us.i, !llvm.loop !755

.preheader.us.i:                                  ; preds = %.lr.ph65.us.i, %..preheader56_crit_edge.us.i
  %.155.lcssa.us.i = phi <4 x float> [ %.05474.us.i, %..preheader56_crit_edge.us.i ], [ %i.av, %.lr.ph65.us.i ] ; 2 uses
  %.130.lcssa.us.i = phi ptr [ %.lcssa, %..preheader56_crit_edge.us.i ], [ %i.aw, %.lr.ph65.us.i ] ; 5 uses
  %.1.lcssa.us.i = phi i32 [ %i.q, %..preheader56_crit_edge.us.i ], [ %i.ax, %.lr.ph65.us.i ] ; 5 uses
  %i.be = icmp slt i32 %.1.lcssa.us.i, %i.o
  br i1 %i.be, label %iter.check120, label %._crit_edge.us.i

iter.check120:                                    ; preds = %.preheader.us.i
  %i.bf = xor i32 %.1.lcssa.us.i, -1
  %i.bg = add i32 %i.o, %i.bf                     ; 3 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 5 uses
  %min.iters.check93 = icmp ult i32 %i.bg, 7
  br i1 %min.iters.check93, label %.lr.ph72.us.i.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %iter.check120
  %min.iters.check95 = icmp ult i32 %i.bg, 31
  br i1 %min.iters.check95, label %vec.epilog.ph124, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.bj = and i64 %i.bi, 24
  %n.vec97 = and i64 %i.bi, 8589934560            ; 5 uses
  %i.bk = trunc i64 %n.vec97 to i32
  %i.bl = add i32 %.1.lcssa.us.i, %i.bk
  %i.bm = shl nuw nsw i64 %n.vec97, 2
  %i.bn = getelementptr i8, ptr %.130.lcssa.us.i, i64 %i.bm
  %broadcast.splatinsert98 = insertelement <8 x float> poison, float %.05076.us.i, i64 0
  %broadcast.splat99 = shufflevector <8 x float> %broadcast.splatinsert98, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.ph96, %vector.body100
  %index101 = phi i64 [ 0, %vector.ph96 ], [ %index.next111, %vector.body100 ] ; 2 uses
  %vec.phi102 = phi <8 x float> [ %broadcast.splat99, %vector.ph96 ], [ %i.bw, %vector.body100 ]
  %vec.phi103 = phi <8 x float> [ %broadcast.splat99, %vector.ph96 ], [ %i.bx, %vector.body100 ]
  %vec.phi104 = phi <8 x float> [ %broadcast.splat99, %vector.ph96 ], [ %i.by, %vector.body100 ]
  %vec.phi105 = phi <8 x float> [ %broadcast.splat99, %vector.ph96 ], [ %i.bz, %vector.body100 ]
  %i.bo = shl i64 %index101, 2
  %next.gep106 = getelementptr i8, ptr %.130.lcssa.us.i, i64 %i.bo ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.17:bb.a
  br i1 %.not.i96.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ke = atomicrmw add ptr %i.kd, i32 -1 acq_rel, align 4
  %i.kf = icmp eq i32 %i.ke, 1
  br i1 %i.kf, label %bb.s, label %_ZN4ncnn3MatD2Ev.exit89.us

bb.s:                                             ; preds = %bb.r
  %i.kg = load ptr, ptr %i.bg, align 8, !tbaa !23 ; 3 uses
  %.not3.i97.us = icmp eq ptr %i.kg, null
  %i.kh = load ptr, ptr %16, align 8, !tbaa !24   ; 3 uses
  br i1 %.not3.i97.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ki = load ptr, ptr %i.kg, align 8, !tbaa !16
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  invoke void %i.kk(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef %i.kh)
          to label %_ZN4ncnn3MatD2Ev.exit89.us unwind label %.split.us, !inline_history !0

bb.u:                                             ; preds = %bb.s
  %.not.i111.us = icmp eq ptr %i.kh, null
  br i1 %.not.i111.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.kh) #9
  br label %_ZN4ncnn3MatD2Ev.exit89.us

_ZN4ncnn3MatD2Ev.exit89.us:                       ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.kl = load ptr, ptr %i.ar, align 8, !tbaa !22 ; 2 uses
  %.not.i100.us = icmp eq ptr %i.kl, null
  br i1 %.not.i100.us, label %_ZN4ncnn3MatD2Ev.exit88.us, label %bb.w

bb.w:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit89.us
  %i.km = atomicrmw add ptr %i.kl, i32 -1 acq_rel, align 4
  %i.kn = icmp eq i32 %i.km, 1
  br i1 %i.kn, label %bb.x, label %_ZN4ncnn3MatD2Ev.exit88.us

bb.x:                                             ; preds = %bb.w
  %i.ko = load ptr, ptr %i.au, align 8, !tbaa !23 ; 3 uses
  %.not3.i101.us = icmp eq ptr %i.ko, null
  %i.kp = load ptr, ptr %15, align 8, !tbaa !24   ; 3 uses
  br i1 %.not3.i101.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8
  invoke void %i.ks(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef %i.kp)
          to label %_ZN4ncnn3MatD2Ev.exit88.us unwind label %.split191.us, !inline_history !0

bb.z:                                             ; preds = %bb.x
  %.not.i109.us = icmp eq ptr %i.kp, null
  br i1 %.not.i109.us, label %_ZN4ncnn3MatD2Ev.exit88.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.kp) #9
  br label %_ZN4ncnn3MatD2Ev.exit88.us

_ZN4ncnn3MatD2Ev.exit88.us:                       ; preds = %bb.aa, %bb.z, %bb.y, %bb.w, %_ZN4ncnn3MatD2Ev.exit89.us
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.kt = add nsw i32 %.0185.us, %i.dk            ; 2 uses
  %i.ku = icmp slt i32 %i.kt, %i.cg
  br i1 %i.ku, label %bb.h, label %._crit_edge.us, !llvm.loop !1022

bb.ab:                                            ; preds = %._crit_edge.us
  %i.kv = add nsw i32 %.083186.us, %i.bn          ; 2 uses
  %i.kw = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.kx = icmp slt i32 %i.kv, %i.kw
  br i1 %i.kx, label %.lr.ph.us, label %._crit_edge188, !llvm.loop !1023

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit88.us
  invoke fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.bo, i32 noundef %i.ch, i32 noundef %.sroa.speculated162, i32 noundef %.083186.us, i32 noundef %.sroa.speculated158.us, ptr noundef nonnull align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.br, float noundef nofpclass(nan inf) %i.bs, i32 noundef %i.bq)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.us:                                        ; preds = %bb.t
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #26
  unreachable

.split191.us:                                     ; preds = %bb.y
  %i.la = landingpad { ptr, i32 }
          catch ptr null
  %i.lb = extractvalue { ptr, i32 } %i.la, 0
  call void @__clang_call_terminate(ptr %i.lb) #26
  unreachable

._crit_edge188:                                   ; preds = %bb.ai, %bb.ab, %_ZN4ncnn3Mat7channelEi.exit121
  %i.lc = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %.not.i104 = icmp eq ptr %i.lc, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge188
  %i.ld = atomicrmw add ptr %i.lc, i32 -1 acq_rel, align 4
  %i.le = icmp eq i32 %i.ld, 1
  br i1 %i.le, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.lf = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 3 uses
  %.not3.i105 = icmp eq ptr %i.lf, null
  %i.lg = load ptr, ptr %14, align 8, !tbaa !24   ; 3 uses
  br i1 %.not3.i105, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lh = load ptr, ptr %i.lf, align 8, !tbaa !16
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8
  invoke void %i.lj(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, ptr noundef %i.lg)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ah, !inline_history !0

bb.af:                                            ; preds = %bb.ad
  %.not.i108 = icmp eq ptr %i.lg, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.lg) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ah:                                            ; preds = %bb.ae
  %i.lk = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  call void @__clang_call_terminate(ptr %i.ll) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ac, %._crit_edge188, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.lm = add nsw i32 %.084195, 1
  %i.ln = load i32, ptr %i.b, align 4, !tbaa !50
  %.not.not = icmp slt i32 %.084195, %i.ln
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph187.split:                                  ; preds = %.lr.ph187, %bb.ai
  %i.lo = phi i32 [ %i.lr, %bb.ai ], [ %i.dg, %.lr.ph187 ]
  %.083186 = phi i32 [ %i.lq, %bb.ai ], [ 0, %.lr.ph187 ] ; 3 uses
  %i.lp = sub nsw i32 %i.lo, %.083186
  %.sroa.speculated158 = call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.lp)
  invoke fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.bo, i32 noundef %i.ch, i32 noundef %.sroa.speculated162, i32 noundef %.083186, i32 noundef %.sroa.speculated158, ptr noundef nonnull align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.br, float noundef nofpclass(nan inf) %i.bs, i32 noundef %i.bq)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %.lr.ph187.split
  %i.lq = add nsw i32 %.083186, %i.bn             ; 2 uses
  %i.lr = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.ls = icmp slt i32 %i.lq, %i.lr
  br i1 %i.ls, label %.lr.ph187.split, label %._crit_edge188, !llvm.loop !1023

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %bb.a
  ret void

.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.us, %bb.p, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread177.us, %bb.h, %.lr.ph187.split, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.lt = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.lt) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn20Gemm_x86_avx_utility16pack_A_tile_int8ERKNS_3MatERS1_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn20Gemm_x86_avx_utility28gemm_transB_packed_tile_int8ERKNS_3MatES3_RS1_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #2 {
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
  %10 = sdiv i32 %i.h, 8
  %11 = shl nsw i32 %10, 3
  %.sroa.speculated115 = tail call i32 @llvm.smax.i32(i32 %11, i32 8) ; 6 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !50
  store i32 %.sroa.speculated115, ptr %7, align 4, !tbaa !50
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !50
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = add nuw i32 %i.j, %.sroa.speculated115
  %i.l = udiv i32 %i.k, %.sroa.speculated115      ; 3 uses
  %i.m = add nuw i32 %i.j, %i.l
  %i.n = udiv i32 %i.m, %i.l
  %i.o = add nuw nsw i32 %i.n, 7
  %i.p = and i32 %i.o, -8
  %.sroa.speculated99 = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !50
  %i.q = icmp eq i32 %i.l, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = fmul fast float %i.e, 2.500000e-01
  %i.s = uitofp nneg i32 %.sroa.speculated99 to float
  %i.t = fdiv fast float %i.r, %i.s
  %i.u = fptosi float %i.t to i32
  %12 = sdiv i32 %i.u, 8
  %13 = shl nsw i32 %12, 3
  %.sroa.speculated93 = tail call i32 @llvm.smax.i32(i32 %13, i32 8) ; 2 uses
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !50
  store i32 %.sroa.speculated93, ptr %7, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.v = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %.0)
  %i.w = load i32, ptr %6, align 4, !tbaa !50
  %i.x = mul nsw i32 %i.w, %.sroa.speculated83    ; 4 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %0, -1                       ; 2 uses
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sdiv i32 %i.aa, %i.x                    ; 2 uses
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 7
  %i.af = sdiv i32 %i.ae, 8
  %i.ag = shl nsw i32 %i.af, 3
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.x)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.x, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !50
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %7, align 4, !tbaa !50    ; 3 uses
  %i.aj = add nsw i32 %1, -1                      ; 2 uses
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai                   ; 2 uses
  %i.am = add i32 %i.aj, %i.al
  %i.an = sdiv i32 %i.am, %i.al
  %i.ao = add nsw i32 %i.an, 7
  %i.ap = sdiv i32 %i.ao, 8
  %i.aq = shl nsw i32 %i.ap, 3
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ai)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = icmp sgt i32 %.0, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.at = sdiv i32 %i.as, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1)
  %i.au = add nuw nsw i32 %.sroa.speculated, 7
  %i.av = and i32 %i.au, 2147483640
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.as)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = add nuw nsw i32 %3, 7
  %i.ay = and i32 %i.ax, 2147483640
  store i32 %i.ay, ptr %6, align 4, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = icmp sgt i32 %4, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i32 %4, 7
  %i.bb = and i32 %i.ba, 2147483640
  store i32 %i.bb, ptr %7, align 4, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = icmp sgt i32 %5, 0
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = add nuw nsw i32 %5, 7
  %i.be = and i32 %i.bd, 2147483640
  store i32 %i.be, ptr %8, align 4, !tbaa !50
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

declare void @_ZN4ncnn24cast_float32_to_bfloat16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn12Gemm_x86_avx21create_pipeline_bf16sERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.h = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !50
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !50
  %i.k = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %.not68 = icmp sgt i32 %i.k, %i.j
  br i1 %.not68, label %._crit_edge, label %.noexc42.lr.ph

.noexc42.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 584
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 628
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 648
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 216
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc42.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.069 = phi i32 [ %i.k, %.noexc42.lr.ph ], [ %i.ap, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.q = load i32, ptr %3, align 4, !tbaa !50     ; 2 uses
  %i.r = sdiv i32 %.069, %i.q                     ; 2 uses
  %i.s = srem i32 %.069, %i.q                     ; 2 uses
  %i.t = load i32, ptr %4, align 4, !tbaa !50     ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.r                   ; 3 uses
  %i.v = load i32, ptr %5, align 4, !tbaa !50     ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.s                   ; 3 uses
  %i.x = load i32, ptr %6, align 4, !tbaa !50
  %i.y = sub nsw i32 %i.x, %i.u
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.y) ; 2 uses
  %i.z = load i32, ptr %7, align 4, !tbaa !50
  %i.aa = sub nsw i32 %i.z, %i.w
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.v, i32 %i.aa) ; 2 uses
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !77, !noalias !1031
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !24, !noalias !1031
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !1031
  %i.ae = sext i32 %i.r to i64
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !63, !noalias !1031 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = sext i32 %i.ab to i64
  %i.ak = sext i32 %i.s to i64
  %i.al = mul nsw i64 %i.aj, %i.ak
  %i.am = mul i64 %i.al, %i.ag
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.p, align 8, !tbaa !78
  %.not33 = icmp eq i32 %i.ao, 0
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc42
  call fastcc void @_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr %i.an, i32 noundef %i.u, i32 noundef %.sroa.speculated65, i32 noundef %i.w, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc42
  call fastcc void @_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr %i.an, i32 noundef %i.u, i32 noundef %.sroa.speculated65, i32 noundef %i.w, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.c, %bb.d
  %i.ap = add nsw i32 %.069, 1
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !50
  %.not.not = icmp slt i32 %.069, %i.aq
  br i1 %.not.not, label %.noexc42, label %._crit_edge

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !76
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
end_hunk_4
begin_hunk_5_@_ZN4ncnnL14gemm_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiffiiiiiRKNS_6OptionE.omp_outlined.24:bb.a
bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.074193 = phi i32 [ %i.k, %.lr.ph ], [ %i.cx, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = load i32, ptr %3, align 4, !tbaa !50     ; 2 uses
  %i.x = mul nsw i32 %i.w, %.074193               ; 5 uses
  %i.y = load i32, ptr %4, align 4, !tbaa !50
  %.not76 = icmp eq i32 %i.y, 0
  br i1 %.not76, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.l, align 4, !tbaa !77
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !76
  %i.ab = icmp eq i32 %i.aa, 3
  %.in78.v = select i1 %i.ab, i64 56, i64 48
  %.in78 = getelementptr inbounds nuw i8, ptr %5, i64 %.in78.v
  %i.ac = load i32, ptr %.in78, align 8, !tbaa !50
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !64
  %i.ae = mul nsw i32 %i.ad, %i.ac
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = load i32, ptr %i.m, align 8, !tbaa !76
  %i.ag = icmp eq i32 %i.af, 3
  %.in.v = select i1 %i.ag, i64 56, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %5, i64 %.in.v
  %i.ah = load i32, ptr %.in, align 8, !tbaa !50
  %i.ai = load i32, ptr %i.n, align 8, !tbaa !64
  %i.aj = mul nsw i32 %i.ai, %i.ah
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = phi i32 [ %i.z, %bb.d ], [ %i.aj, %bb.e ]
  %i.am = phi i32 [ %i.ae, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = sub nsw i32 %i.al, %i.x
  %.sroa.speculated186 = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.an) ; 5 uses
  %i.ao = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc112 unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %bb.f
  %i.ap = load ptr, ptr %6, align 8, !tbaa !24, !noalias !1313
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !25, !noalias !1313
  %i.ar = sext i32 %i.ao to i64
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = load i64, ptr %i.p, align 8, !tbaa !63, !noalias !1313
  %i.au = mul i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au ; 3 uses
  %i.aw = load i32, ptr %7, align 4, !tbaa !50    ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph191, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph191:                                        ; preds = %.noexc112
  %i.ay = icmp sgt i32 %i.am, 0
  %.pre195 = load i32, ptr %8, align 4, !tbaa !50 ; 2 uses
  br i1 %i.ay, label %.lr.ph.us, label %.lr.ph191.split

.lr.ph.us:                                        ; preds = %.lr.ph191, %._crit_edge.us
  %i.az = phi i32 [ %i.cs, %._crit_edge.us ], [ %.pre195, %.lr.ph191 ]
  %i.ba = phi i32 [ %i.cu, %._crit_edge.us ], [ %i.aw, %.lr.ph191 ]
  %.073190.us = phi i32 [ %i.ct, %._crit_edge.us ], [ 0, %.lr.ph191 ] ; 5 uses
  %i.bb = sub nsw i32 %i.ba, %.073190.us
  %.sroa.speculated171.us = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.bb) ; 2 uses
  %i.bc = icmp eq i32 %.073190.us, 0
  %.pre196 = load i32, ptr %9, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.us, %_ZN4ncnn3MatD2Ev.exit80.us
  %i.bd = phi i32 [ %.pre196, %.lr.ph.us ], [ %i.ck, %_ZN4ncnn3MatD2Ev.exit80.us ]
  %.0189.us = phi i32 [ 0, %.lr.ph.us ], [ %i.cl, %_ZN4ncnn3MatD2Ev.exit80.us ] ; 6 uses
  %i.be = sub nsw i32 %i.am, %.0189.us
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.be) ; 3 uses
  %i.bf = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc110.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110.us:                                     ; preds = %bb.g
  %i.bg = load i32, ptr %i.q, align 4, !tbaa !77, !noalias !1314
  %i.bh = load ptr, ptr %10, align 8, !tbaa !24, !noalias !1314
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !25, !noalias !1314
  %i.bj = sext i32 %i.bf to i64
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = load i64, ptr %i.s, align 8, !tbaa !63, !noalias !1314 ; 2 uses
  %i.bm = mul i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = sext i32 %i.bg to i64
  %i.bp = load i32, ptr %9, align 4, !tbaa !50
  %i.bq = sdiv i32 %.0189.us, %i.bp
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = mul i64 %i.bl, %i.bo
  %i.bt = mul i64 %i.bs, %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bt ; 3 uses
  %i.bv = load i32, ptr %8, align 4, !tbaa !50
  %i.bw = sdiv i32 %.073190.us, %i.bv
  %i.bx = load i32, ptr %i.t, align 4, !tbaa !77, !noalias !1315
  %i.by = load ptr, ptr %11, align 8, !tbaa !24, !noalias !1315
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !25, !noalias !1315
  %i.ca = sext i32 %i.bw to i64
  %i.cb = mul i64 %i.bz, %i.ca
  %i.cc = load i64, ptr %i.v, align 8, !tbaa !63, !noalias !1315 ; 2 uses
  %i.cd = mul i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cd
  %i.cf = sext i32 %i.bx to i64
  %i.cg = mul i64 %i.cc, %i.cf
  %i.ch = mul i64 %i.cg, %i.br
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  br i1 %i.bc, label %bb.h, label %_ZN4ncnn3MatD2Ev.exit80.us

bb.h:                                             ; preds = %.noexc110.us
  %i.cj = load i32, ptr %4, align 4, !tbaa !50
  %.not79.us = icmp eq i32 %i.cj, 0
  br i1 %.not79.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr %i.bu, i32 noundef %i.x, i32 noundef %.sroa.speculated186, i32 noundef %.0189.us, i32 noundef %.sroa.speculated.us)
  br label %_ZN4ncnn3MatD2Ev.exit80.us

bb.j:                                             ; preds = %bb.h
  call fastcc void @_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr %i.bu, i32 noundef %i.x, i32 noundef %.sroa.speculated186, i32 noundef %.0189.us, i32 noundef %.sroa.speculated.us)
  br label %_ZN4ncnn3MatD2Ev.exit80.us

_ZN4ncnn3MatD2Ev.exit80.us:                       ; preds = %bb.j, %bb.i, %.noexc110.us
  call fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr %i.bu, ptr %i.ci, ptr %i.av, i32 noundef %.sroa.speculated186, i32 noundef %.sroa.speculated171.us, i32 noundef %.0189.us, i32 noundef %.sroa.speculated.us)
  %i.ck = load i32, ptr %9, align 4, !tbaa !50    ; 2 uses
  %i.cl = add nsw i32 %i.ck, %.0189.us            ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %i.am
  br i1 %i.cm, label %bb.g, label %._crit_edge.us, !llvm.loop !1311

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit80.us
  %i.cn = load i32, ptr %14, align 4, !tbaa !50
  %i.co = load float, ptr %15, align 4, !tbaa !68
  %i.cp = load float, ptr %16, align 4, !tbaa !68
  %i.cq = load i32, ptr %17, align 4, !tbaa !50
  %i.cr = load i32, ptr %18, align 4, !tbaa !50
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.av, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.cn, i32 noundef %i.x, i32 noundef %.sroa.speculated186, i32 noundef %.073190.us, i32 noundef %.sroa.speculated171.us, float noundef nofpclass(nan inf) %i.co, float noundef nofpclass(nan inf) %i.cp, i32 noundef %i.cq, i32 noundef %i.cr)
  %i.cs = load i32, ptr %8, align 4, !tbaa !50    ; 2 uses
  %i.ct = add nsw i32 %i.cs, %.073190.us          ; 2 uses
  %i.cu = load i32, ptr %7, align 4, !tbaa !50    ; 2 uses
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.us, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1312

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.cw) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph191.split, %._crit_edge.us, %.noexc112
  %i.cx = add nsw i32 %.074193, 1
  %i.cy = load i32, ptr %i.b, align 4, !tbaa !50
  %.not.not = icmp slt i32 %.074193, %i.cy
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph191.split:                                  ; preds = %.lr.ph191, %.lr.ph191.split
  %i.cz = phi i32 [ %i.dh, %.lr.ph191.split ], [ %.pre195, %.lr.ph191 ]
  %i.da = phi i32 [ %i.dj, %.lr.ph191.split ], [ %i.aw, %.lr.ph191 ]
  %.073190 = phi i32 [ %i.di, %.lr.ph191.split ], [ 0, %.lr.ph191 ] ; 3 uses
  %i.db = sub nsw i32 %i.da, %.073190
  %.sroa.speculated171 = call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.db)
  %i.dc = load i32, ptr %14, align 4, !tbaa !50
  %i.dd = load float, ptr %15, align 4, !tbaa !68
  %i.de = load float, ptr %16, align 4, !tbaa !68
  %i.df = load i32, ptr %17, align 4, !tbaa !50
  %i.dg = load i32, ptr %18, align 4, !tbaa !50
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.av, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.dc, i32 noundef %i.x, i32 noundef %.sroa.speculated186, i32 noundef %.073190, i32 noundef %.sroa.speculated171, float noundef nofpclass(nan inf) %i.dd, float noundef nofpclass(nan inf) %i.de, i32 noundef %i.df, i32 noundef %i.dg)
  %i.dh = load i32, ptr %8, align 4, !tbaa !50    ; 2 uses
  %i.di = add nsw i32 %i.dh, %.073190             ; 2 uses
  %i.dj = load i32, ptr %7, align 4, !tbaa !50    ; 2 uses
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph191.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1312

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

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
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <15 x float> @llvm.masked.load.v15f32.p0(ptr captures(none), <15 x i1>, <15 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.round.v16f32(<16 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #11

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress norecurse uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { cold nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = distinct !{null}
!3 = distinct !{!3, !69}
!4 = distinct !{!4, !69}
!5 = distinct !{!5, !69}
!6 = !{i32 7, !"openmp", i32 51}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"vtable pointer", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 int", !17, i64 0}
!19 = !{!"long", !11, i64 0}
!20 = !{!"p1 _ZTSN4ncnn9AllocatorE", !17, i64 0}
!21 = !{!"_ZTSN4ncnn3MatE", !17, i64 0, !18, i64 8, !19, i64 16, !12, i64 24, !20, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !19, i64 64}
!22 = !{!21, !18, i64 8}
!23 = !{!21, !20, i64 32}
!24 = !{!21, !17, i64 0}
!25 = !{!21, !19, i64 64}
!26 = !{!"bool", !11, i64 0}
!27 = !{!"p1 omnipotent char", !17, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !19, i64 8, !11, i64 16}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIiSaIiEE", !32, i64 0}
!34 = !{!"p1 _ZTSN4ncnn3MatE", !17, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !35, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !37, i64 0}
!39 = !{!"_ZTSN4ncnn5LayerE", !26, i64 8, !26, i64 9, !26, i64 10, !26, i64 11, !26, i64 12, !26, i64 13, !26, i64 14, !26, i64 15, !26, i64 16, !26, i64 17, !26, i64 18, !26, i64 19, !26, i64 20, !26, i64 21, !26, i64 22, !26, i64 23, !26, i64 24, !26, i64 25, !26, i64 26, !26, i64 27, !12, i64 28, !17, i64 32, !12, i64 40, !29, i64 48, !29, i64 80, !33, i64 112, !33, i64 136, !38, i64 160, !38, i64 184}
!40 = !{!"float", !11, i64 0}
!41 = !{!"_ZTSN4ncnn4GemmE", !39, i64 0, !40, i64 208, !40, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !21, i64 288, !21, i64 360, !21, i64 432, !21, i64 504, !40, i64 576}
!42 = !{!41, !12, i64 268}
!43 = !{!39, !26, i64 12}
!44 = !{!"_ZTSN4ncnn6OptionE", !26, i64 0, !26, i64 1, !26, i64 2, !26, i64 3, !12, i64 4, !20, i64 8, !20, i64 16, !12, i64 24, !26, i64 28, !26, i64 29, !26, i64 30, !26, i64 31, !26, i64 32, !26, i64 33, !26, i64 34, !26, i64 35, !26, i64 36, !26, i64 37, !26, i64 38, !26, i64 39, !12, i64 40, !26, i64 44, !26, i64 45, !26, i64 46, !26, i64 47, !11, i64 48, !26, i64 49, !26, i64 50, !26, i64 51, !26, i64 52, !26, i64 53, !26, i64 54, !26, i64 55, !26, i64 56, !26, i64 57, !26, i64 58, !26, i64 59, !26, i64 60, !26, i64 61, !26, i64 62, !26, i64 63}
!45 = !{!44, !26, i64 32}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{!41, !12, i64 224}
!49 = !{!41, !12, i64 236}
!50 = !{!12, !12, i64 0}
!51 = !{!41, !12, i64 244}
!52 = !{!41, !12, i64 272}
!53 = !{!41, !12, i64 276}
!54 = !{!41, !12, i64 280}
!55 = !{!44, !12, i64 4}
!56 = !{!21, !12, i64 56}
!57 = !{!44, !26, i64 0}
!58 = !{!41, !12, i64 228}
!59 = !{!41, !12, i64 240}
!60 = !{!41, !12, i64 232}
!61 = !{!41, !12, i64 248}
!62 = !{!17, !17, i64 0}
!63 = !{!21, !19, i64 16}
!64 = !{!21, !12, i64 24}
!65 = !{!44, !26, i64 39}
!66 = !{!41, !40, i64 212}
!67 = !{!"_ZTSN4ncnn12Gemm_x86_avxE", !41, i64 0, !12, i64 580, !21, i64 584, !21, i64 656, !21, i64 728}
!68 = !{!40, !40, i64 0}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!"branch_weights", i32 4, i32 28}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!67, !12, i64 580}
!75 = !{!41, !12, i64 220}
!76 = !{!21, !12, i64 40}
!77 = !{!21, !12, i64 44}
!78 = !{!41, !12, i64 216}
!79 = !{!21, !12, i64 48}
!80 = !{!44, !20, i64 16}
!81 = !{!41, !12, i64 264}
!82 = !{!41, !12, i64 256}
!83 = !{!35, !34, i64 0}
!84 = !{!41, !12, i64 252}
!85 = !{!44, !20, i64 8}
!86 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!41, !40, i64 208}
!89 = !{!11, !11, i64 0}
!90 = !{!"branch_weights", i32 8, i32 24}
!91 = !{i64 2, i64 -1, i64 -1, i1 true}
end_hunk_5
