Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 136
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZN4ncnn12Gemm_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
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
  %10 = and i32 %i.h, 2147483640
  %.sroa.speculated115 = tail call i32 @llvm.umax.i32(i32 %10, i32 8) ; 5 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !50
  %11 = and i32 %i.h, 2147483644
  %.sroa.speculated109 = tail call i32 @llvm.umax.i32(i32 %11, i32 4)
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
  %12 = and i32 %i.u, 2147483640
  %.sroa.speculated93 = tail call i32 @llvm.umax.i32(i32 %12, i32 8)
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !50
  %13 = and i32 %i.u, 2147483644
  %.sroa.speculated87 = tail call i32 @llvm.umax.i32(i32 %13, i32 4)
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
define internal void @_ZN4ncnn12Gemm_x86_fma15create_pipelineERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8) #8 personality ptr @__gxx_personality_v0 {
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
  %i.cv = load i32, ptr %i.ag, align 4, !tbaa !77, !noalias !530
  %i.cw = load ptr, ptr %13, align 8, !tbaa !24, !noalias !530
  %i.cx = load i64, ptr %i.ah, align 8, !tbaa !25, !noalias !530
  %i.cy = sext i32 %i.cu to i64
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = load i64, ptr %i.ai, align 8, !tbaa !63, !noalias !530 ; 2 uses
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
  %i.dm = load i32, ptr %i.aj, align 4, !tbaa !77, !noalias !531
  %i.dn = load ptr, ptr %14, align 8, !tbaa !24, !noalias !531
  %i.do = load i64, ptr %i.ak, align 8, !tbaa !25, !noalias !531
  %i.dp = sext i32 %i.dl to i64
  %i.dq = mul i64 %i.do, %i.dp
  %i.dr = load i64, ptr %i.al, align 8, !tbaa !63, !noalias !531 ; 2 uses
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
  br i1 %i.eh, label %bb.l, label %._crit_edge.us, !llvm.loop !527

bb.r:                                             ; preds = %._crit_edge.us
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216.us, i32 noundef %.sroa.speculated192.us)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.us
  %i.ei = load i32, ptr %11, align 4, !tbaa !50   ; 2 uses
  %i.ej = add nsw i32 %i.ei, %.081216.us          ; 2 uses
  %i.ek = load i32, ptr %10, align 4, !tbaa !50   ; 2 uses
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph218.split.us, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !528

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
  br i1 %i.ey, label %.lr.ph218.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !528

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
  %10 = and i32 %i.h, 2147483640
  %.sroa.speculated115 = tail call i32 @llvm.umax.i32(i32 %10, i32 8) ; 6 uses
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
  %11 = and i32 %i.u, 2147483640
  %.sroa.speculated93 = tail call i32 @llvm.umax.i32(i32 %11, i32 8) ; 2 uses
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
define internal void @_ZN4ncnn12Gemm_x86_fma20create_pipeline_int8ERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr noundef %7) #8 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge75, !llvm.loop !532

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
  %i.au = load i32, ptr %i.m, align 4, !tbaa !77, !noalias !548 ; 2 uses
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !24, !noalias !548
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !548
  %i.ax = sext i32 %i.at to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.o, align 8, !tbaa !63, !noalias !548 ; 3 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  %i.bc = load i32, ptr %i.p, align 8, !tbaa !64, !noalias !548
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !23, !noalias !548
  %i.be = sext i32 %i.au to i64                   ; 2 uses
  %i.bf = sdiv i32 %.071, %i.an
end_hunk_1
begin_hunk_2_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  store <2 x float> %i.abh, ptr %i.abg, align 4, !tbaa !68
  %i.abi = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2121.i
  %i.abj = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 7, i32 15>
  store <2 x float> %i.abj, ptr %i.abi, align 4, !tbaa !68
  %i.abk = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 8
  br label %.thread3435.i

.thread3435.i:                                    ; preds = %bb.bz, %bb.by, %.thread3432.i, %bb.bx, %bb.bw
  %.121934.i = phi ptr [ %i.aao, %bb.bw ], [ %i.abk, %bb.bz ], [ %.919313718.i, %bb.bx ], [ %i.aaq, %.thread3432.i ], [ %i.aau, %bb.by ] ; 2 uses
  %i.abl = add nuw nsw i32 %.219413717.i, 2       ; 3 uses
  %i.abm = or disjoint i32 %i.abl, 1
  %i.abn = icmp slt i32 %i.abm, %7
  br i1 %i.abn, label %.lr.ph3722.i, label %.preheader3689.i, !llvm.loop !735

.lr.ph3735.i:                                     ; preds = %.preheader3689.i, %.thread3451.i
  %.163734.i = phi ptr [ %.19.i, %.thread3451.i ], [ %.12.lcssa.i, %.preheader3689.i ] ; 18 uses
  %.418973733.i = phi ptr [ %i.abs, %.thread3451.i ], [ %.31896.lcssa.i, %.preheader3689.i ] ; 2 uses
  %.419213732.i = phi ptr [ %i.abt, %.thread3451.i ], [ %.31920.lcssa.i, %.preheader3689.i ] ; 2 uses
  %.1319353731.i = phi ptr [ %.161938.i, %.thread3451.i ], [ %.91931.lcssa.i, %.preheader3689.i ] ; 17 uses
  %.319423730.i = phi i32 [ %i.adw, %.thread3451.i ], [ %.21941.lcssa.i, %.preheader3689.i ]
  %.1530583729.i = phi <8 x float> [ %.183061.i, %.thread3451.i ], [ %.113054.lcssa.i, %.preheader3689.i ] ; 6 uses
  %i.abo = load <4 x i32>, ptr %.418973733.i, align 16, !tbaa !89
  %i.abp = load <4 x i32>, ptr %.419213732.i, align 16, !tbaa !89
  %i.abq = shufflevector <4 x i32> %i.abo, <4 x i32> %i.abp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abr = sitofp fast <8 x i32> %i.abq to <8 x float>
  %i.abs = getelementptr inbounds nuw i8, ptr %.418973733.i, i64 16
  %i.abt = getelementptr inbounds nuw i8, ptr %.419213732.i, i64 16 ; 2 uses
  %i.abu = fmul fast <8 x float> %i.ct, %i.abr    ; 6 uses
  %.not2063.i = icmp eq ptr %.163734.i, null
  br i1 %.not2063.i, label %.thread3444.i, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph3735.i
  br i1 %i.ah, label %.thread3437.i, label %bb.cb

.thread3437.i:                                    ; preds = %bb.ca
  %i.abv = fadd fast <8 x float> %i.abu, %.1530583729.i
  br label %.thread3444.i

bb.cb:                                            ; preds = %bb.ca
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.abw = fadd fast <8 x float> %i.abu, %.1530583729.i
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
  %i.abx = load <8 x float>, ptr %.163734.i, align 1, !tbaa !89
  br label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  %i.aby = load <4 x float>, ptr %.163734.i, align 1, !tbaa !89
  %i.abz = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2107.i
  %i.aca = load <4 x float>, ptr %i.abz, align 1, !tbaa !89
  %i.acb = shufflevector <4 x float> %i.aby, <4 x float> %i.aca, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.ci

bb.ch:                                            ; preds = %bb.ce
  %i.acc = load float, ptr %.163734.i, align 4, !tbaa !68
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %.163734.i, i64 %i.u
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !68
  %i.acf = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2101.i
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !68
  %i.ach = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2102.i
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !68
  %i.acj = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2107.i
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !68
  %i.acl = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2104.i
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !68
  %i.acn = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2105.i
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !68
  %i.acp = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2106.i
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !68
  %i.acr = insertelement <8 x float> poison, float %i.acc, i64 0
  %i.acs = insertelement <8 x float> %i.acr, float %i.ace, i64 1
  %i.act = insertelement <8 x float> %i.acs, float %i.acg, i64 2
  %i.acu = insertelement <8 x float> %i.act, float %i.aci, i64 3
  %i.acv = insertelement <8 x float> %i.acu, float %i.ack, i64 4
  %i.acw = insertelement <8 x float> %i.acv, float %i.acm, i64 5
  %i.acx = insertelement <8 x float> %i.acw, float %i.aco, i64 6
  %i.acy = insertelement <8 x float> %i.acx, float %i.acq, i64 7
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.sink4005.i.a = phi i64 [ 16, %bb.cg ], [ 4, %bb.ch ], [ 32, %bb.cf ]
  %.163059.i = phi nsz <8 x float> [ %i.acb, %bb.cg ], [ %i.acy, %bb.ch ], [ %i.abx, %bb.cf ] ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.sink4005.i.a
  %i.ada = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.163059.i, <8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.abu)
  br label %.thread3444.i

bb.cj:                                            ; preds = %bb.cd
  %i.adb = load float, ptr %.163734.i, align 4, !tbaa !68
  %i.adc = fmul fast float %i.adb, %10
  %i.add = insertelement <8 x float> poison, float %i.adc, i64 0
  %i.ade = shufflevector <8 x float> %i.add, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.adf = fadd fast <8 x float> %i.ade, %i.abu
  %i.adg = getelementptr inbounds nuw i8, ptr %.163734.i, i64 4
  br label %.thread3444.i

.thread3444.i:                                    ; preds = %bb.cj, %bb.ci, %bb.cd, %bb.cc, %.thread3437.i, %.lr.ph3735.i
  %.33345.i = phi nsz <8 x float> [ %i.abu, %.lr.ph3735.i ], [ %i.adf, %bb.cj ], [ %i.abu, %bb.cd ], [ %i.ada, %bb.ci ], [ %i.abv, %.thread3437.i ], [ %i.abw, %bb.cc ]
  %.183061.i = phi nsz <8 x float> [ %.1530583729.i, %.lr.ph3735.i ], [ %i.ade, %bb.cj ], [ %.1530583729.i, %bb.cd ], [ %.163059.i, %bb.ci ], [ %.1530583729.i, %.thread3437.i ], [ %.1530583729.i, %bb.cc ]
  %.19.i = phi ptr [ null, %.lr.ph3735.i ], [ %i.adg, %bb.cj ], [ %.163734.i, %bb.cd ], [ %i.acz, %bb.ci ], [ %.163734.i, %.thread3437.i ], [ %.163734.i, %bb.cc ] ; 2 uses
  %i.adh = fmul fast <8 x float> %.33345.i, %i.ar ; 12 uses
  br i1 %.not2061.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.thread3444.i
  store <8 x float> %i.adh, ptr %.1319353731.i, align 1, !tbaa !89
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %.1319353731.i, i64 %i.l
  br label %.thread3451.i

bb.cl:                                            ; preds = %.thread3444.i
  switch i32 %i.c, label %.thread3451.i [
    i32 8, label %.thread3448.i
    i32 4, label %bb.cm
    i32 1, label %bb.cn
  ]

.thread3448.i:                                    ; preds = %bb.cl
  store <8 x float> %i.adh, ptr %.1319353731.i, align 1, !tbaa !89
  %i.adj = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 32
  br label %.thread3451.i

bb.cm:                                            ; preds = %bb.cl
  %i.adk = shufflevector <8 x float> %i.adh, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.adk, ptr %.1319353731.i, align 16, !tbaa !89
  %i.adl = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2118.i
  %i.adm = shufflevector <8 x float> %i.adh, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.adm, ptr %i.adl, align 16, !tbaa !89
  %i.adn = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 16
  br label %.thread3451.i

bb.cn:                                            ; preds = %bb.cl
  %.sroa.02635.0.vec.extract.i = extractelement <8 x float> %i.adh, i64 0
  store float %.sroa.02635.0.vec.extract.i, ptr %.1319353731.i, align 4, !tbaa !68
  %.sroa.02635.4.vec.extract.i = extractelement <8 x float> %i.adh, i64 1
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.1319353731.i, i64 %i.l
  store float %.sroa.02635.4.vec.extract.i, ptr %i.ado, align 4, !tbaa !68
  %.sroa.02635.8.vec.extract.i = extractelement <8 x float> %i.adh, i64 2
  %i.adp = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2116.i
  store float %.sroa.02635.8.vec.extract.i, ptr %i.adp, align 4, !tbaa !68
  %.sroa.02635.12.vec.extract.i = extractelement <8 x float> %i.adh, i64 3
  %i.adq = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2117.i
  store float %.sroa.02635.12.vec.extract.i, ptr %i.adq, align 4, !tbaa !68
  %.sroa.02635.16.vec.extract.i = extractelement <8 x float> %i.adh, i64 4
  %i.adr = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2118.i
  store float %.sroa.02635.16.vec.extract.i, ptr %i.adr, align 4, !tbaa !68
  %.sroa.02635.20.vec.extract.i = extractelement <8 x float> %i.adh, i64 5
  %i.ads = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2119.i
  store float %.sroa.02635.20.vec.extract.i, ptr %i.ads, align 4, !tbaa !68
  %.sroa.02635.24.vec.extract.i = extractelement <8 x float> %i.adh, i64 6
  %i.adt = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2120.i
  store float %.sroa.02635.24.vec.extract.i, ptr %i.adt, align 4, !tbaa !68
  %.sroa.02635.28.vec.extract.i = extractelement <8 x float> %i.adh, i64 7
  %i.adu = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2121.i
  store float %.sroa.02635.28.vec.extract.i, ptr %i.adu, align 4, !tbaa !68
  %i.adv = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 4
  br label %.thread3451.i

.thread3451.i:                                    ; preds = %bb.cn, %bb.cm, %.thread3448.i, %bb.cl, %bb.ck
  %.161938.i = phi ptr [ %i.adi, %bb.ck ], [ %i.adv, %bb.cn ], [ %.1319353731.i, %bb.cl ], [ %i.adj, %.thread3448.i ], [ %i.adn, %bb.cm ]
  %i.adw = add nuw nsw i32 %.319423730.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.adw, %7
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph3735.i, !llvm.loop !736

._crit_edge.i:                                    ; preds = %.thread3451.i, %.preheader3689.i
  %.41921.lcssa.i = phi ptr [ %.31920.lcssa.i, %.preheader3689.i ], [ %i.abt, %.thread3451.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader3689.i ], [ %.19.i, %.thread3451.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.adx = or disjoint i64 %indvars.iv.next.i, 7
  %i.ady = icmp samesign ult i64 %i.adx, %i.at
  br i1 %i.ady, label %bb.j, label %.preheader3688.loopexit.i, !llvm.loop !737

.preheader3684.loopexit.i:                        ; preds = %._crit_edge3787.i
  %i.adz = trunc nuw nsw i64 %indvars.iv.next3924.i to i32
  br label %.preheader3684.i

.preheader3684.i:                                 ; preds = %.preheader3684.loopexit.i, %.preheader3688.i
  %.11914.lcssa.i = phi i32 [ %.01913.lcssa.i, %.preheader3688.i ], [ %i.adz, %.preheader3684.loopexit.i ] ; 3 uses
  %.51898.lcssa.i = phi ptr [ %.01893.lcssa.i, %.preheader3688.i ], [ %.91902.lcssa.i, %.preheader3684.loopexit.i ] ; 2 uses
  %.20.lcssa.i = phi ptr [ %.01884.lcssa.i, %.preheader3688.i ], [ %.36.lcssa.i, %.preheader3684.loopexit.i ] ; 2 uses
  %i.aea = or disjoint i32 %.11914.lcssa.i, 1
  %i.aeb = icmp slt i32 %i.aea, %5
  br i1 %i.aeb, label %.lr.ph3842.i, label %.preheader3680.i

.lr.ph3842.i:                                     ; preds = %.preheader3684.i
  %.not2019.i = icmp eq i32 %11, 0                ; 6 uses
  %i.aec = sext i32 %6 to i64                     ; 4 uses
  %i.aed = mul i64 %i.l, %i.aec
  %12 = insertelement <2 x i32> poison, i32 %3, i64 0
  %13 = shufflevector <2 x i32> %12, <2 x i32> poison, <2 x i32> zeroinitializer
  %14 = add <2 x i32> %13, <i32 0, i32 -1>
  %15 = icmp ult <2 x i32> %14, <i32 1, i32 2>    ; 3 uses
  %i.aee = sext i32 %4 to i64                     ; 3 uses
  %i.aef = icmp sgt i32 %7, 7
  %i.aeg = insertelement <4 x float> poison, float %10, i64 0
  %i.aeh = shufflevector <4 x float> %i.aeg, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.aei = fcmp fast oeq float %10, 1.000000e+00  ; 3 uses
  %i.aej = fcmp fast une float %9, 1.000000e+00   ; 2 uses
  %i.aek = insertelement <4 x float> poison, float %9, i64 0
  %i.ael = shufflevector <4 x float> %i.aek, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx3656.i = shl i64 %i.l, 3                   ; 3 uses
  %.idx3657.i = mul i64 %i.l, 12                  ; 2 uses
  %.idx3658.i = shl i64 %i.l, 4                   ; 5 uses
  %.idx3659.i = mul i64 %i.l, 20
  %.idx3660.i = mul i64 %i.l, 24
  %.idx3661.i = mul i64 %i.l, 28
  %.idx2028.i = shl i64 %i.l, 5                   ; 4 uses
  %i.aem = and i32 %7, -8
  %i.aen = zext nneg i32 %.11914.lcssa.i to i64
  %i.aeo = sext i32 %5 to i64
  %i.aep = sext i32 %i.c to i64
  %i.aeq = select ninf nsz i1 %i.aej, <4 x float> %i.ael, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %invariant.op3996.i = add nsw i64 %i.aeo, -1
  %..idx3656.i = select i1 %.not2019.i, i64 8, i64 %.idx3656.i
  %i.aer = insertelement <2 x float> poison, float %10, i64 0
  %i.aes = shufflevector <2 x float> %i.aer, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %16 = extractelement <2 x i1> %15, i64 0        ; 4 uses
  %17 = extractelement <2 x i1> %15, i64 1        ; 5 uses
  %18 = insertelement <2 x float> poison, float %9, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aet = insertelement <2 x i1> poison, i1 %.not2019.i, i64 0
  %i.aeu = shufflevector <2 x i1> %i.aet, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.fv

bb.co:                                            ; preds = %._crit_edge3787.i, %.lr.ph3793.i
  %indvars.iv3923.i = phi i64 [ %i.by, %.lr.ph3793.i ], [ %indvars.iv.next3924.i, %._crit_edge3787.i ] ; 6 uses
  %.203792.i = phi ptr [ %.01884.lcssa.i, %.lr.ph3793.i ], [ %.36.lcssa.i, %._crit_edge3787.i ] ; 4 uses
  %.518983791.i = phi ptr [ %.01893.lcssa.i, %.lr.ph3793.i ], [ %.91902.lcssa.i, %._crit_edge3787.i ] ; 2 uses
  %i.aev = load ptr, ptr %2, align 8, !tbaa !24   ; 2 uses
  br i1 %.not2029.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.bg
  %i.aex = add nsw i64 %indvars.iv3923.i, %i.bj
  %i.aey = mul nsw i64 %i.aex, %i.ca
  %i.aez = getelementptr inbounds [4 x i8], ptr %i.aew, i64 %i.aey
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.afa = add nsw i64 %indvars.iv3923.i, %i.bj
  %i.afb = mul i64 %i.afa, %i.l
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.afb
  %i.afd = getelementptr inbounds [4 x i8], ptr %i.afc, i64 %i.bi
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.01961.i = phi ptr [ %i.aez, %bb.cp ], [ %i.afd, %bb.cq ] ; 2 uses
  %i.afe = load ptr, ptr %8, align 8, !tbaa !24
  %i.aff = getelementptr inbounds [4 x i8], ptr %i.afe, i64 %i.bj
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %indvars.iv3923.i
  %i.afh = load <4 x float>, ptr %i.afg, align 16, !tbaa !89 ; 15 uses
  %.not2030.i = icmp eq ptr %.203792.i, null
  br i1 %.not2030.i, label %.thread3462.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.bk, label %.thread3453.i, label %bb.ct

.thread3453.i:                                    ; preds = %bb.cs
  %i.afi = load float, ptr %.203792.i, align 4, !tbaa !68
  %i.afj = fmul fast float %i.afi, %10
  %i.afk = insertelement <4 x float> poison, float %i.afj, i64 0
  %i.afl = shufflevector <4 x float> %i.afk, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread3462.i

bb.ct:                                            ; preds = %bb.cs
  br i1 %or.cond11.i, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.afm = load ptr, ptr %1, align 8, !tbaa !24
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.afm, i64 %i.bj
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %indvars.iv3923.i ; 2 uses
  %i.afp = load <4 x float>, ptr %i.afo, align 1, !tbaa !89
  %i.afq = fmul fast <4 x float> %i.afp, %i.bp
  br label %.thread3462.i

bb.cv:                                            ; preds = %bb.ct
  switch i32 %3, label %.thread3462.i [
    i32 3, label %bb.cw
    i32 4, label %bb.cx
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.afr = load ptr, ptr %1, align 8, !tbaa !24
  %i.afs = add nsw i64 %indvars.iv3923.i, %i.bj
  %i.aft = mul i64 %i.afs, %i.u
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %i.aft
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.afu, i64 %i.bn
  br label %.thread3462.i

bb.cx:                                            ; preds = %bb.cv
  %i.afw = load ptr, ptr %1, align 8, !tbaa !24
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.afw, i64 %i.bf
  br label %.thread3462.i

.thread3462.i:                                    ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu, %.thread3453.i, %bb.cr
  %.23311.i = phi nsz <4 x float> [ zeroinitializer, %bb.cr ], [ zeroinitializer, %bb.cx ], [ zeroinitializer, %bb.cv ], [ zeroinitializer, %bb.cw ], [ %i.afl, %.thread3453.i ], [ %i.afq, %bb.cu ] ; 2 uses
  %.23.i = phi ptr [ null, %bb.cr ], [ %i.afx, %bb.cx ], [ %.203792.i, %bb.cv ], [ %i.afv, %bb.cw ], [ %.203792.i, %.thread3453.i ], [ %i.afo, %bb.cu ] ; 2 uses
  br i1 %i.bq, label %.lr.ph3753.i, label %.preheader3687.i

.preheader3687.i:                                 ; preds = %bb.dy, %.thread3462.i
  %.33312.lcssa.i = phi <4 x float> [ %.23311.i, %.thread3462.i ], [ %.73316.i, %bb.dy ] ; 2 uses
  %.01974.lcssa.i = phi i32 [ 0, %.thread3462.i ], [ %i.bx, %bb.dy ] ; 3 uses
  %.11962.lcssa.i = phi ptr [ %.01961.i, %.thread3462.i ], [ %.31964.i, %bb.dy ] ; 2 uses
  %.61899.lcssa.i = phi ptr [ %.518983791.i, %.thread3462.i ], [ %i.aps, %bb.dy ] ; 2 uses
  %.24.lcssa.i = phi ptr [ %.23.i, %.thread3462.i ], [ %.27.i, %bb.dy ] ; 2 uses
  %i.afy = or disjoint i32 %.01974.lcssa.i, 3
  %i.afz = icmp slt i32 %i.afy, %7
  br i1 %i.afz, label %.lr.ph3764.i, label %.preheader3686.i

.lr.ph3753.i:                                     ; preds = %.thread3462.i, %bb.dy
  %.243752.i = phi ptr [ %.27.i, %bb.dy ], [ %.23.i, %.thread3462.i ] ; 23 uses
  %.618993751.i = phi ptr [ %i.aps, %bb.dy ], [ %.518983791.i, %.thread3462.i ] ; 9 uses
  %.119623750.i = phi ptr [ %.31964.i, %bb.dy ], [ %.01961.i, %.thread3462.i ] ; 38 uses
  %.019743749.i = phi i32 [ %i.apt, %bb.dy ], [ 0, %.thread3462.i ]
  %.333123748.i = phi <4 x float> [ %.73316.i, %bb.dy ], [ %.23311.i, %.thread3462.i ] ; 20 uses
  %i.aga = load <4 x i32>, ptr %.618993751.i, align 16, !tbaa !89
  %i.agb = sitofp fast <4 x i32> %i.aga to <4 x float> ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 16
  %i.agd = load <4 x i32>, ptr %i.agc, align 16, !tbaa !89
  %i.age = sitofp fast <4 x i32> %i.agd to <4 x float> ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 32
  %i.agg = load <4 x i32>, ptr %i.agf, align 16, !tbaa !89
  %i.agh = sitofp fast <4 x i32> %i.agg to <4 x float> ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 48
  %i.agj = load <4 x i32>, ptr %i.agi, align 16, !tbaa !89
  %i.agk = sitofp fast <4 x i32> %i.agj to <4 x float> ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 64
  %i.agm = load <4 x i32>, ptr %i.agl, align 16, !tbaa !89
  %i.agn = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 80
  %i.ago = load <4 x i32>, ptr %i.agn, align 16, !tbaa !89
  %i.agp = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 96
  %i.agq = load <4 x i32>, ptr %i.agp, align 16, !tbaa !89
  %i.agr = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 112
  %i.ags = load <4 x i32>, ptr %i.agr, align 16, !tbaa !89
  %i.agt = sitofp <4 x i32> %i.agm to <4 x float>
  %i.agu = shufflevector <4 x float> %i.agt, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.agv = sitofp <4 x i32> %i.ago to <4 x float>
  %i.agw = shufflevector <4 x float> %i.agv, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.agx = sitofp <4 x i32> %i.agq to <4 x float>
  %i.agy = shufflevector <4 x float> %i.agx, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.agz = sitofp <4 x i32> %i.ags to <4 x float>
  %i.aha = shufflevector <4 x float> %i.agz, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ahb = shufflevector <4 x float> %i.agb, <4 x float> %i.agy, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ahc = shufflevector <4 x float> %i.agb, <4 x float> %i.agy, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahd = shufflevector <4 x float> %i.age, <4 x float> %i.aha, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ahe = shufflevector <4 x float> %i.age, <4 x float> %i.aha, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahf = shufflevector <4 x float> %i.agh, <4 x float> %i.agu, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ahg = shufflevector <4 x float> %i.agh, <4 x float> %i.agu, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahh = shufflevector <4 x float> %i.agk, <4 x float> %i.agw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ahi = shufflevector <4 x float> %i.agk, <4 x float> %i.agw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahj = shufflevector <4 x float> %i.ahb, <4 x float> %i.ahf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ahk = shufflevector <4 x float> %i.ahb, <4 x float> %i.ahf, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ahl = shufflevector <4 x float> %i.ahg, <4 x float> %i.ahc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ahm = shufflevector <4 x float> %i.ahg, <4 x float> %i.ahc, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ahn = shufflevector <4 x float> %i.ahd, <4 x float> %i.ahh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aho = shufflevector <4 x float> %i.ahd, <4 x float> %i.ahh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ahp = shufflevector <4 x float> %i.ahi, <4 x float> %i.ahe, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ahq = shufflevector <4 x float> %i.ahi, <4 x float> %i.ahe, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ahr = shufflevector <4 x float> %i.ahk, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ahs = shufflevector <4 x float> %i.ahm, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aht = shufflevector <4 x float> %i.aho, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ahu = shufflevector <4 x float> %i.ahq, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ahv = fmul fast <4 x float> %i.afh, %i.ahj   ; 7 uses
  %i.ahw = fmul fast <4 x float> %i.ahr, %i.afh   ; 7 uses
  %i.ahx = fmul fast <4 x float> %i.afh, %i.ahl   ; 7 uses
  %i.ahy = fmul fast <4 x float> %i.ahs, %i.afh   ; 7 uses
  %i.ahz = fmul fast <4 x float> %i.afh, %i.ahn   ; 7 uses
  %i.aia = fmul fast <4 x float> %i.aht, %i.afh   ; 7 uses
  %i.aib = fmul fast <4 x float> %i.afh, %i.ahp   ; 7 uses
  %i.aic = fmul fast <4 x float> %i.ahu, %i.afh   ; 7 uses
  %.not2046.i = icmp eq ptr %.243752.i, null
  br i1 %.not2046.i, label %.thread3486.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph3753.i
  br i1 %i.bk, label %.thread3465.i, label %bb.cz

.thread3465.i:                                    ; preds = %bb.cy
  %i.aid = fadd fast <4 x float> %i.ahv, %.333123748.i
  %i.aie = fadd fast <4 x float> %i.ahw, %.333123748.i
  %i.aif = fadd fast <4 x float> %i.ahx, %.333123748.i
  %i.aig = fadd fast <4 x float> %i.ahy, %.333123748.i
  %i.aih = fadd fast <4 x float> %i.ahz, %.333123748.i
  %i.aii = fadd fast <4 x float> %i.aia, %.333123748.i
  %i.aij = fadd fast <4 x float> %i.aib, %.333123748.i
  %i.aik = fadd fast <4 x float> %i.aic, %.333123748.i
  br label %.thread3486.i

bb.cz:                                            ; preds = %bb.cy
  br i1 %or.cond11.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ail = fadd fast <4 x float> %i.ahv, %.333123748.i
  %i.aim = fadd fast <4 x float> %i.ahw, %.333123748.i
  %i.ain = fadd fast <4 x float> %i.ahx, %.333123748.i
  %i.aio = fadd fast <4 x float> %i.ahy, %.333123748.i
  %i.aip = fadd fast <4 x float> %i.ahz, %.333123748.i
  %i.aiq = fadd fast <4 x float> %i.aia, %.333123748.i
  %i.air = fadd fast <4 x float> %i.aib, %.333123748.i
  %i.ais = fadd fast <4 x float> %i.aic, %.333123748.i
  br label %.thread3486.i

bb.db:                                            ; preds = %bb.cz
  switch i32 %3, label %.thread3486.i [
    i32 3, label %bb.dc
    i32 4, label %bb.do
  ]

bb.dc:                                            ; preds = %bb.db
  %i.ait = load <4 x float>, ptr %.243752.i, align 1, !tbaa !89 ; 3 uses
  br i1 %i.br, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.aiu = getelementptr inbounds nuw i8, ptr %.243752.i, i64 16
  %i.aiv = load <4 x float>, ptr %i.aiu, align 1, !tbaa !89
  %i.aiw = getelementptr inbounds nuw i8, ptr %.243752.i, i64 32
  %i.aix = load <4 x float>, ptr %i.aiw, align 1, !tbaa !89
  %i.aiy = getelementptr inbounds nuw i8, ptr %.243752.i, i64 48
  %i.aiz = load <4 x float>, ptr %i.aiy, align 1, !tbaa !89
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
end_hunk_2
begin_hunk_3_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
.lr.ph3786.i:                                     ; preds = %.preheader3685.i, %bb.fu
  %.363785.i = phi ptr [ %.39.i, %bb.fu ], [ %.32.lcssa.i, %.preheader3685.i ] ; 12 uses
  %.919023784.i = phi ptr [ %i.ayh, %bb.fu ], [ %.81901.lcssa.i, %.preheader3685.i ] ; 2 uses
  %.1019713783.i = phi ptr [ %.121973.i, %bb.fu ], [ %.71968.lcssa.i, %.preheader3685.i ] ; 10 uses
  %.319773782.i = phi i32 [ %i.ayi, %bb.fu ], [ %.21976.lcssa.i, %.preheader3685.i ]
  %.1633253781.i = phi <4 x float> [ %.193328.i, %bb.fu ], [ %.123321.lcssa.i, %.preheader3685.i ] ; 6 uses
  %i.axb = load <4 x i32>, ptr %.919023784.i, align 16, !tbaa !89
  %i.axc = sitofp fast <4 x i32> %i.axb to <4 x float>
  %i.axd = fmul fast <4 x float> %i.afh, %i.axc   ; 6 uses
  %.not2031.i = icmp eq ptr %.363785.i, null
  br i1 %.not2031.i, label %.thread3544.i, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph3786.i
  br i1 %i.bk, label %.thread3537.i, label %bb.fj

.thread3537.i:                                    ; preds = %bb.fi
  %i.axe = fadd fast <4 x float> %i.axd, %.1633253781.i
  br label %.thread3544.i

bb.fj:                                            ; preds = %bb.fi
  br i1 %or.cond11.i, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.axf = fadd fast <4 x float> %i.axd, %.1633253781.i
  br label %.thread3544.i

bb.fl:                                            ; preds = %bb.fj
  switch i32 %3, label %.thread3544.i [
    i32 3, label %bb.fm
    i32 4, label %bb.fq
  ]

bb.fm:                                            ; preds = %bb.fl
  br i1 %i.br, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.axg = load <4 x float>, ptr %.363785.i, align 1, !tbaa !89
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.axh = load float, ptr %.363785.i, align 4, !tbaa !68
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %.363785.i, i64 %i.u
  %i.axj = load float, ptr %i.axi, align 4, !tbaa !68
  %i.axk = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.idx2047.i
  %i.axl = load float, ptr %i.axk, align 4, !tbaa !68
  %i.axm = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.idx2048.i
  %i.axn = load float, ptr %i.axm, align 4, !tbaa !68
  %i.axo = insertelement <4 x float> poison, float %i.axh, i64 0
  %i.axp = insertelement <4 x float> %i.axo, float %i.axj, i64 1
  %i.axq = insertelement <4 x float> %i.axp, float %i.axl, i64 2
  %i.axr = insertelement <4 x float> %i.axq, float %i.axn, i64 3
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.sink4009.i.a = phi i64 [ 4, %bb.fo ], [ 16, %bb.fn ]
  %.173326.i = phi nsz <4 x float> [ %i.axr, %bb.fo ], [ %i.axg, %bb.fn ] ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.sink4009.i.a
  %i.axt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.173326.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.axd)
  br label %.thread3544.i

bb.fq:                                            ; preds = %bb.fl
  %i.axu = load float, ptr %.363785.i, align 4, !tbaa !68
  %i.axv = fmul fast float %i.axu, %10
  %i.axw = insertelement <4 x float> poison, float %i.axv, i64 0
  %i.axx = shufflevector <4 x float> %i.axw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.axy = fadd fast <4 x float> %i.axx, %i.axd
  %i.axz = getelementptr inbounds nuw i8, ptr %.363785.i, i64 4
  br label %.thread3544.i

.thread3544.i:                                    ; preds = %bb.fq, %bb.fp, %bb.fl, %bb.fk, %.thread3537.i, %.lr.ph3786.i
  %.193328.i = phi nsz <4 x float> [ %.1633253781.i, %.lr.ph3786.i ], [ %i.axx, %bb.fq ], [ %.1633253781.i, %bb.fl ], [ %.173326.i, %bb.fp ], [ %.1633253781.i, %.thread3537.i ], [ %.1633253781.i, %bb.fk ]
  %.33194.i = phi nsz <4 x float> [ %i.axd, %.lr.ph3786.i ], [ %i.axy, %bb.fq ], [ %i.axd, %bb.fl ], [ %i.axt, %bb.fp ], [ %i.axe, %.thread3537.i ], [ %i.axf, %bb.fk ]
  %.39.i = phi ptr [ null, %.lr.ph3786.i ], [ %i.axz, %bb.fq ], [ %.363785.i, %bb.fl ], [ %i.axs, %bb.fp ], [ %.363785.i, %.thread3537.i ], [ %.363785.i, %bb.fk ] ; 2 uses
  %i.aya = fmul fast <4 x float> %.33194.i, %i.bv ; 6 uses
  br i1 %.not2029.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %.thread3544.i
  store <4 x float> %i.aya, ptr %.1019713783.i, align 1, !tbaa !89
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr %.1019713783.i, i64 %i.l
  br label %bb.fu

bb.fs:                                            ; preds = %.thread3544.i
  switch i32 %i.c, label %bb.fu [
    i32 4, label %.thread3548.i
    i32 1, label %bb.ft
  ]

.thread3548.i:                                    ; preds = %bb.fs
  store <4 x float> %i.aya, ptr %.1019713783.i, align 16, !tbaa !89
  %i.ayc = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 16
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %.sroa.02268.0.vec.extract.i = extractelement <4 x float> %i.aya, i64 0
  store float %.sroa.02268.0.vec.extract.i, ptr %.1019713783.i, align 4, !tbaa !68
  %.sroa.02268.4.vec.extract.i = extractelement <4 x float> %i.aya, i64 1
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %.1019713783.i, i64 %i.l
  store float %.sroa.02268.4.vec.extract.i, ptr %i.ayd, align 4, !tbaa !68
  %.sroa.02268.8.vec.extract.i = extractelement <4 x float> %i.aya, i64 2
  %i.aye = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2054.i
  store float %.sroa.02268.8.vec.extract.i, ptr %i.aye, align 4, !tbaa !68
  %.sroa.02268.12.vec.extract.i = extractelement <4 x float> %i.aya, i64 3
  %i.ayf = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2055.i
  store float %.sroa.02268.12.vec.extract.i, ptr %i.ayf, align 4, !tbaa !68
  %i.ayg = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 4
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.thread3548.i, %bb.fs, %bb.fr
  %.121973.i = phi ptr [ %i.ayb, %bb.fr ], [ %i.ayg, %bb.ft ], [ %.1019713783.i, %bb.fs ], [ %i.ayc, %.thread3548.i ]
  %i.ayh = getelementptr inbounds nuw i8, ptr %.919023784.i, i64 16 ; 2 uses
  %i.ayi = add nuw nsw i32 %.319773782.i, 1       ; 2 uses
  %exitcond3922.not.i = icmp eq i32 %i.ayi, %7
  br i1 %exitcond3922.not.i, label %._crit_edge3787.i, label %.lr.ph3786.i, !llvm.loop !741

._crit_edge3787.i:                                ; preds = %bb.fu, %.preheader3685.i
  %.91902.lcssa.i = phi ptr [ %.81901.lcssa.i, %.preheader3685.i ], [ %i.ayh, %bb.fu ] ; 2 uses
  %.36.lcssa.i = phi ptr [ %.32.lcssa.i, %.preheader3685.i ], [ %.39.i, %bb.fu ] ; 2 uses
  %indvars.iv.next3924.i = add nuw nsw i64 %indvars.iv3923.i, 4 ; 3 uses
  %i.ayj = icmp slt i64 %indvars.iv.next3924.i, %invariant.op3995.i
  br i1 %i.ayj, label %bb.co, label %.preheader3684.loopexit.i, !llvm.loop !742

.preheader3680.loopexit.i:                        ; preds = %._crit_edge3835.i
  %i.ayk = trunc nuw nsw i64 %indvars.iv.next3928.i to i32
  br label %.preheader3680.i

.preheader3680.i:                                 ; preds = %.preheader3680.loopexit.i, %.preheader3684.i
  %.21915.lcssa.i = phi i32 [ %.11914.lcssa.i, %.preheader3684.i ], [ %i.ayk, %.preheader3680.loopexit.i ] ; 2 uses
  %.101903.lcssa.i = phi ptr [ %.51898.lcssa.i, %.preheader3684.i ], [ %.141907.lcssa.i, %.preheader3680.loopexit.i ]
  %.40.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader3684.i ], [ %.53.lcssa.i, %.preheader3680.loopexit.i ]
  %i.ayl = icmp slt i32 %.21915.lcssa.i, %5
  br i1 %i.ayl, label %.lr.ph3887.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph3887.i:                                     ; preds = %.preheader3680.i
  %.not2002.i = icmp eq i32 %11, 0                ; 5 uses
  %i.aym = sext i32 %6 to i64                     ; 4 uses
  %i.ayn = mul i64 %i.l, %i.aym
  %i.ayo = icmp eq i32 %3, 0
  %i.ayp = add i32 %3, -1
  %or.cond31.i = icmp ult i32 %i.ayp, 2
  %i.ayq = sext i32 %4 to i64                     ; 3 uses
  %i.ayr = icmp sgt i32 %7, 7
  %or.cond35.i = icmp ult i32 %3, 3               ; 4 uses
  %i.ays = add i32 %3, -3
  %or.cond37.i = icmp ult i32 %i.ays, 2           ; 4 uses
  %i.ayt = insertelement <4 x float> poison, float %10, i64 0
  %i.ayu = shufflevector <4 x float> %i.ayt, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ayv = fcmp fast une float %9, 1.000000e+00
  %i.ayw = insertelement <4 x float> poison, float %9, i64 0
  %i.ayx = shufflevector <4 x float> %i.ayw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ayy = select ninf nsz i1 %i.ayv, <4 x float> %i.ayx, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.ayz = icmp eq i64 %i.l, 1                    ; 2 uses
  %.idx2012.i = shl i64 %i.l, 3                   ; 3 uses
  %.idx2013.i = mul i64 %i.l, 12                  ; 2 uses
  %.idx2014.i = shl i64 %i.l, 4                   ; 5 uses
  %.idx2015.i = mul i64 %i.l, 20
  %.idx2016.i = mul i64 %i.l, 24
  %.idx2017.i = mul i64 %i.l, 28
  %.idx2018.i = shl i64 %i.l, 5                   ; 4 uses
  %i.aza = and i32 %7, -8
  %i.azb = sext i32 %.21915.lcssa.i to i64
  %i.azc = sext i32 %i.c to i64
  %wide.trip.count.i = sext i32 %5 to i64
  %i.azd = insertelement <2 x float> poison, float %10, i64 0
  %i.aze = shufflevector <2 x float> %i.azd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hu

bb.fv:                                            ; preds = %._crit_edge3835.i, %.lr.ph3842.i
  %indvars.iv3927.i = phi i64 [ %i.aen, %.lr.ph3842.i ], [ %indvars.iv.next3928.i, %._crit_edge3835.i ] ; 4 uses
  %.403841.i = phi ptr [ %.20.lcssa.i, %.lr.ph3842.i ], [ %.53.lcssa.i, %._crit_edge3835.i ] ; 4 uses
  %.1019033840.i = phi ptr [ %.51898.lcssa.i, %.lr.ph3842.i ], [ %.141907.lcssa.i, %._crit_edge3835.i ] ; 2 uses
  %i.azf = load ptr, ptr %2, align 8, !tbaa !24   ; 2 uses
  br i1 %.not2019.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.azf, i64 %i.aed
  %i.azh = add nsw i64 %indvars.iv3927.i, %i.aee  ; 2 uses
  %i.azi = mul nsw i64 %i.azh, %i.aep
  %i.azj = getelementptr inbounds [4 x i8], ptr %i.azg, i64 %i.azi
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fv
  %i.azk = add nsw i64 %indvars.iv3927.i, %i.aee  ; 2 uses
  %i.azl = mul i64 %i.azk, %i.l
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %i.azf, i64 %i.azl
  %i.azn = getelementptr inbounds [4 x i8], ptr %i.azm, i64 %i.aec
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pre-phi.i = phi i64 [ %i.azk, %bb.fx ], [ %i.azh, %bb.fw ] ; 2 uses
  %.01952.i = phi ptr [ %i.azn, %bb.fx ], [ %i.azj, %bb.fw ] ; 2 uses
  %i.azo = load ptr, ptr %8, align 8, !tbaa !24
  %i.azp = getelementptr [4 x i8], ptr %i.azo, i64 %.pre-phi.i
  %i.azq = load <2 x float>, ptr %i.azp, align 4, !tbaa !68 ; 4 uses
  %i.azr = shufflevector <2 x float> %i.azq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.azs = shufflevector <2 x float> %i.azq, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.azt = shufflevector <2 x float> %i.azq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not2020.i = icmp eq ptr %.403841.i, null
  br i1 %.not2020.i, label %.thread3566.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  br i1 %16, label %.thread3550.i, label %bb.ga

.thread3550.i:                                    ; preds = %bb.fz
  %i.azu = load float, ptr %.403841.i, align 4, !tbaa !68
  %i.azv = fmul fast float %i.azu, %10            ; 3 uses
  %i.azw = insertelement <4 x float> poison, float %i.azv, i64 0
  %i.azx = shufflevector <4 x float> %i.azw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.azy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.azv, i64 0
  br label %.thread3566.i

bb.ga:                                            ; preds = %bb.fz
  br i1 %17, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.azz = load ptr, ptr %1, align 8, !tbaa !24
  %i.baa = getelementptr inbounds [4 x i8], ptr %i.azz, i64 %i.aee
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %i.baa, i64 %indvars.iv3927.i ; 2 uses
  %i.bac = load <2 x float>, ptr %i.bab, align 4, !tbaa !68
  %i.bad = fmul fast <2 x float> %i.bac, %i.aes   ; 4 uses
  %i.bae = extractelement <2 x float> %i.bad, i64 0
  %i.baf = shufflevector <2 x float> %i.bad, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bag = shufflevector <2 x float> %i.bad, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread3566.i

bb.gc:                                            ; preds = %bb.ga
  switch i32 %3, label %.thread3566.i [
    i32 3, label %bb.gd
    i32 4, label %bb.ge
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.bah = load ptr, ptr %1, align 8, !tbaa !24
  %i.bai = mul i64 %.pre-phi.i, %i.u
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %i.bah, i64 %i.bai
  %i.bak = getelementptr inbounds [4 x i8], ptr %i.baj, i64 %i.aec
  br label %.thread3566.i

bb.ge:                                            ; preds = %bb.gc
  %i.bal = load ptr, ptr %1, align 8, !tbaa !24
  %i.bam = getelementptr inbounds [4 x i8], ptr %i.bal, i64 %i.aec
  br label %.thread3566.i

.thread3566.i:                                    ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.gb, %.thread3550.i, %bb.fy
  %.23177.i = phi nsz <4 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ %i.azx, %.thread3550.i ], [ %i.baf, %bb.gb ] ; 2 uses
  %.13168.i = phi nsz <4 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ zeroinitializer, %.thread3550.i ], [ %i.bag, %bb.gb ] ; 2 uses
  %.21951.i = phi nsz float [ 0.000000e+00, %bb.fy ], [ 0.000000e+00, %bb.ge ], [ 0.000000e+00, %bb.gc ], [ 0.000000e+00, %bb.gd ], [ %i.azv, %.thread3550.i ], [ %i.bae, %bb.gb ]
  %.43.i = phi ptr [ null, %bb.fy ], [ %i.bam, %bb.ge ], [ %.403841.i, %bb.gc ], [ %i.bak, %bb.gd ], [ %.403841.i, %.thread3550.i ], [ %i.bab, %bb.gb ] ; 2 uses
  %i.ban = phi <2 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ %i.azy, %.thread3550.i ], [ %i.bad, %bb.gb ] ; 3 uses
  %i.bao = shufflevector <2 x float> %i.ban, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.aef, label %.lr.ph3803.i, label %.preheader3683.i

.preheader3683.i:                                 ; preds = %bb.gv, %.thread3566.i
  %.33178.lcssa.i = phi <4 x float> [ %.23177.i, %.thread3566.i ], [ %.53180.i, %bb.gv ]
  %.23169.lcssa.i = phi <4 x float> [ %.13168.i, %.thread3566.i ], [ %.43171.i, %bb.gv ]
  %.11953.lcssa.i = phi ptr [ %.01952.i, %.thread3566.i ], [ %i.bec, %bb.gv ] ; 2 uses
  %.01943.lcssa.i = phi i32 [ 0, %.thread3566.i ], [ %i.aem, %bb.gv ] ; 3 uses
  %.111904.lcssa.i = phi ptr [ %.1019033840.i, %.thread3566.i ], [ %i.bed, %bb.gv ] ; 2 uses
  %.44.lcssa.i = phi ptr [ %.43.i, %.thread3566.i ], [ %.46.i, %bb.gv ] ; 2 uses
  %i.bap = or disjoint i32 %.01943.lcssa.i, 3
  %i.baq = icmp slt i32 %i.bap, %7
  br i1 %i.baq, label %.lr.ph3816.i, label %.preheader3682.i

.lr.ph3803.i:                                     ; preds = %.thread3566.i, %bb.gv
  %.443802.i = phi ptr [ %.46.i, %bb.gv ], [ %.43.i, %.thread3566.i ] ; 11 uses
  %.1119043801.i = phi ptr [ %i.bed, %bb.gv ], [ %.1019033840.i, %.thread3566.i ] ; 5 uses
  %.019433800.i = phi i32 [ %i.bee, %bb.gv ], [ 0, %.thread3566.i ]
  %.119533799.i = phi ptr [ %i.bec, %bb.gv ], [ %.01952.i, %.thread3566.i ] ; 20 uses
  %.231693798.i = phi <4 x float> [ %.43171.i, %bb.gv ], [ %.13168.i, %.thread3566.i ] ; 6 uses
  %.331783797.i = phi <4 x float> [ %.53180.i, %bb.gv ], [ %.23177.i, %.thread3566.i ] ; 10 uses
  %i.bar = load <4 x i32>, ptr %.1119043801.i, align 16, !tbaa !89
  %i.bas = sitofp fast <4 x i32> %i.bar to <4 x float> ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 16
  %i.bau = load <4 x i32>, ptr %i.bat, align 16, !tbaa !89
  %i.bav = sitofp fast <4 x i32> %i.bau to <4 x float> ; 2 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 32
  %i.bax = load <4 x i32>, ptr %i.baw, align 16, !tbaa !89
  %i.bay = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 48
  %i.baz = load <4 x i32>, ptr %i.bay, align 16, !tbaa !89
  %i.bba = sitofp <4 x i32> %i.bax to <4 x float>
  %i.bbb = shufflevector <4 x float> %i.bba, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bbc = sitofp <4 x i32> %i.baz to <4 x float>
  %i.bbd = shufflevector <4 x float> %i.bbc, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bbe = shufflevector <4 x float> %i.bas, <4 x float> %i.bbb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bbf = shufflevector <4 x float> %i.bas, <4 x float> %i.bbb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bbg = shufflevector <4 x float> %i.bav, <4 x float> %i.bbd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bbh = shufflevector <4 x float> %i.bav, <4 x float> %i.bbd, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bbi = shufflevector <4 x float> %i.bbe, <4 x float> %i.bbf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bbj = shufflevector <4 x float> %i.bbg, <4 x float> %i.bbh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bbk = shufflevector <4 x float> %i.bbe, <4 x float> %i.bbf, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bbl = shufflevector <4 x float> %i.bbg, <4 x float> %i.bbh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bbm = shufflevector <4 x float> %i.bbk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bbn = shufflevector <4 x float> %i.bbl, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bbo = fmul fast <4 x float> %i.azs, %i.bbi   ; 7 uses
  %i.bbp = fmul fast <4 x float> %i.azs, %i.bbj   ; 7 uses
  %i.bbq = fmul fast <4 x float> %i.bbm, %i.azt   ; 7 uses
  %i.bbr = fmul fast <4 x float> %i.bbn, %i.azt   ; 7 uses
  %.not2026.i = icmp eq ptr %.443802.i, null
  br i1 %.not2026.i, label %.thread3585.i, label %bb.gf

bb.gf:                                            ; preds = %.lr.ph3803.i
  br i1 %16, label %.thread3572.i, label %bb.gg

.thread3572.i:                                    ; preds = %bb.gf
  %i.bbs = fadd fast <4 x float> %i.bbo, %.331783797.i
  %i.bbt = fadd fast <4 x float> %i.bbp, %.331783797.i
  %i.bbu = fadd fast <4 x float> %i.bbq, %.331783797.i
  %i.bbv = fadd fast <4 x float> %i.bbr, %.331783797.i
  br label %.thread3585.i

bb.gg:                                            ; preds = %bb.gf
  br i1 %17, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.bbw = fadd fast <4 x float> %i.bbo, %.331783797.i
  %i.bbx = fadd fast <4 x float> %i.bbp, %.331783797.i
  %i.bby = fadd fast <4 x float> %i.bbq, %.231693798.i
  %i.bbz = fadd fast <4 x float> %i.bbr, %.231693798.i
  br label %.thread3585.i

bb.gi:                                            ; preds = %bb.gg
  switch i32 %3, label %.thread3585.i [
    i32 3, label %bb.gj
    i32 4, label %bb.gn
  ]

bb.gj:                                            ; preds = %bb.gi
  %i.bca = load <4 x float>, ptr %.443802.i, align 1, !tbaa !89 ; 3 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %.443802.i, i64 16
  %i.bcc = load <4 x float>, ptr %i.bcb, align 1, !tbaa !89 ; 3 uses
  %i.bcd = getelementptr inbounds nuw [4 x i8], ptr %.443802.i, i64 %i.u ; 2 uses
  %i.bce = load <4 x float>, ptr %i.bcd, align 1, !tbaa !89 ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bcd, i64 16
  %i.bcg = load <4 x float>, ptr %i.bcf, align 1, !tbaa !89 ; 2 uses
  br i1 %i.aei, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.bch = fadd fast <4 x float> %i.bca, %i.bbo
  %i.bci = fadd fast <4 x float> %i.bcc, %i.bbp
  %i.bcj = fadd fast <4 x float> %i.bce, %i.bbq
  %i.bck = fadd fast <4 x float> %i.bcg, %i.bbr
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gj
  %i.bcl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bca, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.bbo)
  %i.bcm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bcc, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.bbp)
  %i.bcn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bce, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.bbq)
  %i.bco = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bcg, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.bbr)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.23163.i = phi nsz <4 x float> [ %i.bch, %bb.gk ], [ %i.bcl, %bb.gl ]
  %.23157.i = phi nsz <4 x float> [ %i.bci, %bb.gk ], [ %i.bcm, %bb.gl ]
  %.23151.i = phi nsz <4 x float> [ %i.bcj, %bb.gk ], [ %i.bcn, %bb.gl ]
  %.23145.i = phi nsz <4 x float> [ %i.bck, %bb.gk ], [ %i.bco, %bb.gl ]
  %i.bcp = getelementptr inbounds nuw i8, ptr %.443802.i, i64 32
  br label %.thread3585.i

bb.gn:                                            ; preds = %bb.gi
  %i.bcq = load <4 x float>, ptr %.443802.i, align 1, !tbaa !89
  %i.bcr = getelementptr inbounds nuw i8, ptr %.443802.i, i64 16
  %i.bcs = load <4 x float>, ptr %i.bcr, align 1, !tbaa !89
  %i.bct = fmul fast <4 x float> %i.bcq, %i.aeh   ; 3 uses
  %i.bcu = fmul fast <4 x float> %i.bcs, %i.aeh   ; 3 uses
  %i.bcv = fadd fast <4 x float> %i.bct, %i.bbo
  %i.bcw = fadd fast <4 x float> %i.bcu, %i.bbp
  %i.bcx = fadd fast <4 x float> %i.bct, %i.bbq
  %i.bcy = fadd fast <4 x float> %i.bcu, %i.bbr
  %i.bcz = getelementptr inbounds nuw i8, ptr %.443802.i, i64 32
  br label %.thread3585.i

.thread3585.i:                                    ; preds = %bb.gn, %bb.gm, %bb.gi, %bb.gh, %.thread3572.i, %.lr.ph3803.i
  %.53180.i = phi nsz <4 x float> [ %.331783797.i, %.lr.ph3803.i ], [ %i.bct, %bb.gn ], [ %.331783797.i, %bb.gi ], [ %i.bca, %bb.gm ], [ %.331783797.i, %.thread3572.i ], [ %.331783797.i, %bb.gh ] ; 2 uses
  %.43171.i = phi nsz <4 x float> [ %.231693798.i, %.lr.ph3803.i ], [ %i.bcu, %bb.gn ], [ %.231693798.i, %bb.gi ], [ %i.bcc, %bb.gm ], [ %.231693798.i, %.thread3572.i ], [ %.231693798.i, %bb.gh ] ; 2 uses
  %.43165.i = phi nsz <4 x float> [ %i.bbo, %.lr.ph3803.i ], [ %i.bcv, %bb.gn ], [ %i.bbo, %bb.gi ], [ %.23163.i, %bb.gm ], [ %i.bbs, %.thread3572.i ], [ %i.bbw, %bb.gh ] ; 2 uses
  %.43159.i = phi nsz <4 x float> [ %i.bbp, %.lr.ph3803.i ], [ %i.bcw, %bb.gn ], [ %i.bbp, %bb.gi ], [ %.23157.i, %bb.gm ], [ %i.bbt, %.thread3572.i ], [ %i.bbx, %bb.gh ] ; 2 uses
  %.43153.i = phi nsz <4 x float> [ %i.bbq, %.lr.ph3803.i ], [ %i.bcx, %bb.gn ], [ %i.bbq, %bb.gi ], [ %.23151.i, %bb.gm ], [ %i.bbu, %.thread3572.i ], [ %i.bby, %bb.gh ] ; 2 uses
  %.43147.i = phi nsz <4 x float> [ %i.bbr, %.lr.ph3803.i ], [ %i.bcy, %bb.gn ], [ %i.bbr, %bb.gi ], [ %.23145.i, %bb.gm ], [ %i.bbv, %.thread3572.i ], [ %i.bbz, %bb.gh ] ; 2 uses
  %.46.i = phi ptr [ null, %.lr.ph3803.i ], [ %i.bcz, %bb.gn ], [ %.443802.i, %bb.gi ], [ %i.bcp, %bb.gm ], [ %.443802.i, %.thread3572.i ], [ %.443802.i, %bb.gh ] ; 2 uses
  br i1 %i.aej, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %.thread3585.i
  %i.bda = fmul fast <4 x float> %.43165.i, %i.ael
  %i.bdb = fmul fast <4 x float> %.43159.i, %i.ael
  %i.bdc = fmul fast <4 x float> %.43153.i, %i.ael
  %i.bdd = fmul fast <4 x float> %.43147.i, %i.ael
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.thread3585.i
  %.53166.i = phi nsz <4 x float> [ %i.bda, %bb.go ], [ %.43165.i, %.thread3585.i ] ; 7 uses
  %.53160.i = phi nsz <4 x float> [ %i.bdb, %bb.go ], [ %.43159.i, %.thread3585.i ] ; 7 uses
  %.53154.i = phi nsz <4 x float> [ %i.bdc, %bb.go ], [ %.43153.i, %.thread3585.i ] ; 7 uses
  %.53148.i = phi nsz <4 x float> [ %i.bdd, %bb.go ], [ %.43147.i, %.thread3585.i ] ; 7 uses
  br i1 %.not2019.i, label %bb.gu, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  switch i32 %i.c, label %bb.gv [
    i32 8, label %bb.gr
    i32 4, label %bb.gs
    i32 1, label %bb.gt
  ]

bb.gr:                                            ; preds = %bb.gq
  store <4 x float> %.53166.i, ptr %.119533799.i, align 16, !tbaa !89
  %i.bde = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53160.i, ptr %i.bde, align 16, !tbaa !89
  %i.bdf = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 32
  store <4 x float> %.53154.i, ptr %i.bdf, align 16, !tbaa !89
  %i.bdg = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 48
  store <4 x float> %.53148.i, ptr %i.bdg, align 16, !tbaa !89
  br label %bb.gv

bb.gs:                                            ; preds = %bb.gq
  store <4 x float> %.53166.i, ptr %.119533799.i, align 16, !tbaa !89
  %i.bdh = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53154.i, ptr %i.bdh, align 16, !tbaa !89
  %i.bdi = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3658.i ; 2 uses
  store <4 x float> %.53160.i, ptr %i.bdi, align 16, !tbaa !89
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 16
  store <4 x float> %.53148.i, ptr %i.bdj, align 16, !tbaa !89
  br label %bb.gv

bb.gt:                                            ; preds = %bb.gq
  %.sroa.02178.0.vec.extract.i = extractelement <4 x float> %.53166.i, i64 0
  store float %.sroa.02178.0.vec.extract.i, ptr %.119533799.i, align 4, !tbaa !68
  %.sroa.12.32.vec.extract.i = extractelement <4 x float> %.53154.i, i64 0
  %i.bdk = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 4
  store float %.sroa.12.32.vec.extract.i, ptr %i.bdk, align 4, !tbaa !68
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %.119533799.i, i64 %i.l
  %i.bdm = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bdm, ptr %i.bdl, align 4, !tbaa !68
  %i.bdn = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3656.i
  %i.bdo = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bdo, ptr %i.bdn, align 4, !tbaa !68
  %i.bdp = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3657.i
  %i.bdq = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bdq, ptr %i.bdp, align 4, !tbaa !68
  %.sroa.72179.16.vec.extract.i = extractelement <4 x float> %.53160.i, i64 0
  %i.bdr = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3658.i ; 2 uses
  store float %.sroa.72179.16.vec.extract.i, ptr %i.bdr, align 4, !tbaa !68
  %.sroa.17.48.vec.extract.i = extractelement <4 x float> %.53148.i, i64 0
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 4
  store float %.sroa.17.48.vec.extract.i, ptr %i.bds, align 4, !tbaa !68
  %i.bdt = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3659.i
  %i.bdu = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bdu, ptr %i.bdt, align 4, !tbaa !68
  %i.bdv = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3660.i
  %i.bdw = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bdw, ptr %i.bdv, align 4, !tbaa !68
  %i.bdx = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3661.i
  %i.bdy = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bdy, ptr %i.bdx, align 4, !tbaa !68
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gp
  store <4 x float> %.53166.i, ptr %.119533799.i, align 1, !tbaa !89
  %i.bdz = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53160.i, ptr %i.bdz, align 1, !tbaa !89
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.119533799.i, i64 %i.l ; 2 uses
  store <4 x float> %.53154.i, ptr %i.bea, align 1, !tbaa !89
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 16
  store <4 x float> %.53148.i, ptr %i.beb, align 1, !tbaa !89
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq
  %.sink4010.i = phi i64 [ 32, %bb.gu ], [ %.idx2028.i, %bb.gs ], [ %.idx2028.i, %bb.gr ], [ %.idx2028.i, %bb.gq ], [ %.idx2028.i, %bb.gt ]
  %i.bec = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.sink4010.i ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 64 ; 2 uses
  %i.bee = add nuw nsw i32 %.019433800.i, 8       ; 2 uses
  %i.bef = or disjoint i32 %i.bee, 7
  %i.beg = icmp slt i32 %i.bef, %7
  br i1 %i.beg, label %.lr.ph3803.i, label %.preheader3683.i, !llvm.loop !743

.preheader3682.i:                                 ; preds = %bb.hg, %.preheader3683.i
  %.31955.lcssa.i = phi ptr [ %.11953.lcssa.i, %.preheader3683.i ], [ %i.bfw, %bb.hg ] ; 2 uses
  %.11944.lcssa.i = phi i32 [ %.01943.lcssa.i, %.preheader3683.i ], [ %i.bfy, %bb.hg ] ; 3 uses
  %.121905.lcssa.i = phi ptr [ %.111904.lcssa.i, %.preheader3683.i ], [ %i.bfx, %bb.hg ] ; 2 uses
  %.47.lcssa.i = phi ptr [ %.44.lcssa.i, %.preheader3683.i ], [ %.49.i, %bb.hg ] ; 2 uses
  %i.beh = or disjoint i32 %.11944.lcssa.i, 1
  %i.bei = icmp slt i32 %i.beh, %7
  br i1 %i.bei, label %.lr.ph3825.i.preheader, label %.preheader3681.i

.lr.ph3825.i.preheader:                           ; preds = %.preheader3682.i
  %i.bej = shufflevector <2 x float> %i.ban, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph3825.i

.lr.ph3816.i:                                     ; preds = %.preheader3683.i, %bb.hg
  %.473815.i = phi ptr [ %.49.i, %bb.hg ], [ %.44.lcssa.i, %.preheader3683.i ] ; 9 uses
  %.1219053814.i = phi ptr [ %i.bfx, %bb.hg ], [ %.111904.lcssa.i, %.preheader3683.i ] ; 3 uses
  %.119443813.i = phi i32 [ %i.bfy, %bb.hg ], [ %.01943.lcssa.i, %.preheader3683.i ]
  %.319553812.i = phi ptr [ %i.bfw, %bb.hg ], [ %.11953.lcssa.i, %.preheader3683.i ] ; 10 uses
  %.531723811.i = phi <4 x float> [ %.73174.i, %bb.hg ], [ %.23169.lcssa.i, %.preheader3683.i ] ; 6 uses
  %.631813810.i = phi <4 x float> [ %.83183.i, %bb.hg ], [ %.33178.lcssa.i, %.preheader3683.i ] ; 7 uses
  %i.bek = load <4 x i32>, ptr %.1219053814.i, align 16, !tbaa !89
  %i.bel = sitofp fast <4 x i32> %i.bek to <4 x float> ; 2 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %.1219053814.i, i64 16
  %i.ben = load <4 x i32>, ptr %i.bem, align 16, !tbaa !89
  %i.beo = sitofp fast <4 x i32> %i.ben to <4 x float> ; 2 uses
  %i.bep = shufflevector <4 x float> %i.bel, <4 x float> %i.beo, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.beq = shufflevector <4 x float> %i.bel, <4 x float> %i.beo, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ber = shufflevector <4 x float> %i.bep, <4 x float> %i.beq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bes = shufflevector <4 x float> %i.beq, <4 x float> %i.bep, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bet = shufflevector <4 x float> %i.bes, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.beu = fmul fast <4 x float> %i.azs, %i.ber   ; 7 uses
  %i.bev = fmul fast <4 x float> %i.bet, %i.azt   ; 7 uses
  %.not2024.i = icmp eq ptr %.473815.i, null
  br i1 %.not2024.i, label %.thread3602.i, label %bb.gw

bb.gw:                                            ; preds = %.lr.ph3816.i
  br i1 %16, label %.thread3593.i, label %bb.gx

.thread3593.i:                                    ; preds = %bb.gw
  %i.bew = fadd fast <4 x float> %i.beu, %.631813810.i
  %i.bex = fadd fast <4 x float> %i.bev, %.631813810.i
  br label %.thread3602.i

bb.gx:                                            ; preds = %bb.gw
  br i1 %17, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.bey = fadd fast <4 x float> %i.beu, %.631813810.i
  %i.bez = fadd fast <4 x float> %i.bev, %.531723811.i
  br label %.thread3602.i

bb.gz:                                            ; preds = %bb.gx
  switch i32 %3, label %.thread3602.i [
    i32 3, label %bb.ha
    i32 4, label %bb.hb
  ]

bb.ha:                                            ; preds = %bb.gz
  %i.bfa = load <4 x float>, ptr %.473815.i, align 1, !tbaa !89 ; 3 uses
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %.473815.i, i64 %i.u
  %i.bfc = load <4 x float>, ptr %i.bfb, align 1, !tbaa !89 ; 3 uses
  %i.bfd = fadd fast <4 x float> %i.bfa, %i.beu
  %i.bfe = fadd fast <4 x float> %i.bfc, %i.bev
  %i.bff = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bfa, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.beu)
  %i.bfg = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bfc, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.bev)
  %.23134.i = select nsz i1 %i.aei, <4 x float> %i.bfd, <4 x float> %i.bff
  %.23128.i = select nsz i1 %i.aei, <4 x float> %i.bfe, <4 x float> %i.bfg
  %i.bfh = getelementptr inbounds nuw i8, ptr %.473815.i, i64 16
  br label %.thread3602.i

bb.hb:                                            ; preds = %bb.gz
  %i.bfi = load <4 x float>, ptr %.473815.i, align 1, !tbaa !89
  %i.bfj = fmul fast <4 x float> %i.bfi, %i.aeh   ; 3 uses
  %i.bfk = fadd fast <4 x float> %i.bfj, %i.beu
  %i.bfl = fadd fast <4 x float> %i.bfj, %i.bev
  %i.bfm = getelementptr inbounds nuw i8, ptr %.473815.i, i64 16
  br label %.thread3602.i

.thread3602.i:                                    ; preds = %bb.hb, %bb.ha, %bb.gz, %bb.gy, %.thread3593.i, %.lr.ph3816.i
  %.83183.i = phi nsz <4 x float> [ %.631813810.i, %.lr.ph3816.i ], [ %i.bfj, %bb.hb ], [ %.631813810.i, %bb.gz ], [ %i.bfa, %bb.ha ], [ %.631813810.i, %.thread3593.i ], [ %.631813810.i, %bb.gy ]
  %.73174.i = phi nsz <4 x float> [ %.531723811.i, %.lr.ph3816.i ], [ %.531723811.i, %bb.hb ], [ %.531723811.i, %bb.gz ], [ %i.bfc, %bb.ha ], [ %.531723811.i, %.thread3593.i ], [ %.531723811.i, %bb.gy ]
  %.43136.i = phi nsz <4 x float> [ %i.beu, %.lr.ph3816.i ], [ %i.bfk, %bb.hb ], [ %i.beu, %bb.gz ], [ %.23134.i, %bb.ha ], [ %i.bew, %.thread3593.i ], [ %i.bey, %bb.gy ]
  %.43130.i = phi nsz <4 x float> [ %i.bev, %.lr.ph3816.i ], [ %i.bfl, %bb.hb ], [ %i.bev, %bb.gz ], [ %.23128.i, %bb.ha ], [ %i.bex, %.thread3593.i ], [ %i.bez, %bb.gy ]
  %.49.i = phi ptr [ null, %.lr.ph3816.i ], [ %i.bfm, %bb.hb ], [ %.473815.i, %bb.gz ], [ %i.bfh, %bb.ha ], [ %.473815.i, %.thread3593.i ], [ %.473815.i, %bb.gy ] ; 2 uses
  %.53137.i = fmul reassoc nsz arcp contract afn <4 x float> %.43136.i, %i.aeq ; 6 uses
  %.53131.i = fmul reassoc nsz arcp contract afn <4 x float> %.43130.i, %i.aeq ; 6 uses
  br i1 %.not2019.i, label %bb.hf, label %bb.hc

bb.hc:                                            ; preds = %.thread3602.i
  switch i32 %i.c, label %bb.hg [
    i32 4, label %bb.hd
    i32 1, label %bb.he
  ]

bb.hd:                                            ; preds = %bb.hc
  store <4 x float> %.53137.i, ptr %.319553812.i, align 16, !tbaa !89
  %i.bfn = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 16
  store <4 x float> %.53131.i, ptr %i.bfn, align 16, !tbaa !89
  br label %bb.hg

bb.he:                                            ; preds = %bb.hc
  %.sroa.02151.0.vec.extract.i = extractelement <4 x float> %.53137.i, i64 0
  store float %.sroa.02151.0.vec.extract.i, ptr %.319553812.i, align 4, !tbaa !68
  %.sroa.72152.16.vec.extract.i = extractelement <4 x float> %.53131.i, i64 0
  %i.bfo = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 4
  store float %.sroa.72152.16.vec.extract.i, ptr %i.bfo, align 4, !tbaa !68
  %i.bfp = getelementptr inbounds nuw [4 x i8], ptr %.319553812.i, i64 %i.l
  %i.bfq = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bfq, ptr %i.bfp, align 4, !tbaa !68
  %i.bfr = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.idx3656.i
  %i.bfs = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bfs, ptr %i.bfr, align 4, !tbaa !68
  %i.bft = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.idx3657.i
  %i.bfu = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bfu, ptr %i.bft, align 4, !tbaa !68
  br label %bb.hg

bb.hf:                                            ; preds = %.thread3602.i
  store <4 x float> %.53137.i, ptr %.319553812.i, align 1, !tbaa !89
  %i.bfv = getelementptr inbounds nuw [4 x i8], ptr %.319553812.i, i64 %i.l
  store <4 x float> %.53131.i, ptr %i.bfv, align 1, !tbaa !89
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hc
  %.sink4011.i = phi i64 [ 16, %bb.hf ], [ %.idx3658.i, %bb.hd ], [ %.idx3658.i, %bb.hc ], [ %.idx3658.i, %bb.he ]
  %i.bfw = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.sink4011.i ; 2 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %.1219053814.i, i64 32 ; 2 uses
  %i.bfy = add nuw nsw i32 %.119443813.i, 4       ; 3 uses
  %i.bfz = or disjoint i32 %i.bfy, 3
  %i.bga = icmp slt i32 %i.bfz, %7
  br i1 %i.bga, label %.lr.ph3816.i, label %.preheader3682.i, !llvm.loop !744

.preheader3681.i:                                 ; preds = %.thread3621.i, %.preheader3682.i
  %.51957.lcssa.i = phi ptr [ %.31955.lcssa.i, %.preheader3682.i ], [ %i.bhj, %.thread3621.i ]
  %.21945.lcssa.i = phi i32 [ %.11944.lcssa.i, %.preheader3682.i ], [ %i.bhl, %.thread3621.i ] ; 2 uses
  %.131906.lcssa.i = phi ptr [ %.121905.lcssa.i, %.preheader3682.i ], [ %i.bhk, %.thread3621.i ] ; 2 uses
  %.50.lcssa.i = phi ptr [ %.47.lcssa.i, %.preheader3682.i ], [ %.52.i, %.thread3621.i ] ; 2 uses
  %i.bgb = icmp slt i32 %.21945.lcssa.i, %7
  br i1 %i.bgb, label %.lr.ph3834.i, label %._crit_edge3835.i

.lr.ph3834.i:                                     ; preds = %.preheader3681.i
  %20 = select <2 x i1> %15, <2 x float> %i.ban, <2 x float> zeroinitializer ; 2 uses
  %i.bgc = select ninf nsz i1 %17, float %.21951.i, float 0.000000e+00
  %i.bgd = insertelement <2 x float> poison, float %i.bgc, i64 0
  %21 = shufflevector <2 x float> %i.bgd, <2 x float> %20, <2 x i32> <i32 0, i32 2>
  %22 = fadd reassoc nsz arcp contract afn <2 x float> %20, %21
  br label %bb.hn

.lr.ph3825.i:                                     ; preds = %.lr.ph3825.i.preheader, %.thread3621.i
  %.503824.i = phi ptr [ %.52.i, %.thread3621.i ], [ %.47.lcssa.i, %.lr.ph3825.i.preheader ] ; 9 uses
  %.1319063823.i = phi ptr [ %i.bhk, %.thread3621.i ], [ %.121905.lcssa.i, %.lr.ph3825.i.preheader ] ; 2 uses
  %.219453822.i = phi i32 [ %i.bhl, %.thread3621.i ], [ %.11944.lcssa.i, %.lr.ph3825.i.preheader ]
  %.519573821.i = phi ptr [ %i.bhj, %.thread3621.i ], [ %.31955.lcssa.i, %.lr.ph3825.i.preheader ] ; 4 uses
  %i.bge = load <4 x i32>, ptr %.1319063823.i, align 4, !tbaa !50
  %i.bgf = sitofp fast <4 x i32> %i.bge to <4 x float>
  %i.bgg = fmul fast <4 x float> %i.azr, %i.bgf   ; 6 uses
  %.not2022.i = icmp eq ptr %.503824.i, null
  br i1 %.not2022.i, label %.thread3621.i, label %bb.hh

bb.hh:                                            ; preds = %.lr.ph3825.i
  br i1 %16, label %.thread3608.i, label %bb.hi

.thread3608.i:                                    ; preds = %bb.hh
  %i.bgh = fadd fast <4 x float> %i.bgg, %i.bej
  br label %.thread3621.i

bb.hi:                                            ; preds = %bb.hh
  br i1 %17, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.bgi = fadd fast <4 x float> %i.bgg, %i.bao
  br label %.thread3621.i

bb.hk:                                            ; preds = %bb.hi
  switch i32 %3, label %.thread3621.i [
    i32 3, label %bb.hl
    i32 4, label %bb.hm
  ]

bb.hl:                                            ; preds = %bb.hk
  %i.bgj = getelementptr inbounds nuw [4 x i8], ptr %.503824.i, i64 %i.u
  %i.bgk = load <2 x float>, ptr %.503824.i, align 4, !tbaa !68
  %i.bgl = load <2 x float>, ptr %i.bgj, align 4, !tbaa !68
  %i.bgm = shufflevector <2 x float> %i.bgk, <2 x float> %i.bgl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgn = fmul fast <4 x float> %i.bgm, %i.aeh
  %i.bgo = fadd fast <4 x float> %i.bgn, %i.bgg
  %i.bgp = getelementptr inbounds nuw i8, ptr %.503824.i, i64 8
  br label %.thread3621.i

bb.hm:                                            ; preds = %bb.hk
  %i.bgq = load <2 x float>, ptr %.503824.i, align 4, !tbaa !68
  %i.bgr = fmul fast <2 x float> %i.bgq, %i.aes
  %i.bgs = shufflevector <2 x float> %i.bgr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bgt = fadd fast <4 x float> %i.bgs, %i.bgg
  %i.bgu = getelementptr inbounds nuw i8, ptr %.503824.i, i64 8
  br label %.thread3621.i

.thread3621.i:                                    ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hj, %.thread3608.i, %.lr.ph3825.i
  %.52.i = phi ptr [ %i.bgu, %bb.hm ], [ %.503824.i, %bb.hk ], [ null, %.lr.ph3825.i ], [ %i.bgp, %bb.hl ], [ %.503824.i, %.thread3608.i ], [ %.503824.i, %bb.hj ] ; 2 uses
  %i.bgv = phi <4 x float> [ %i.bgt, %bb.hm ], [ %i.bgg, %bb.hk ], [ %i.bgg, %.lr.ph3825.i ], [ %i.bgo, %bb.hl ], [ %i.bgh, %.thread3608.i ], [ %i.bgi, %bb.hj ] ; 3 uses
  %i.bgw = extractelement <4 x float> %i.bgv, i64 0
  %i.bgx = fmul fast float %i.bgw, %9
  %i.bgy = extractelement <4 x float> %i.bgv, i64 3
  %i.bgz = fmul fast float %i.bgy, %9
  store float %i.bgx, ptr %.519573821.i, align 4, !tbaa !68
  %i.bha = getelementptr inbounds nuw i8, ptr %.519573821.i, i64 4
  %i.bhb = getelementptr inbounds nuw [4 x i8], ptr %.519573821.i, i64 %i.l ; 2 uses
  %i.bhc = getelementptr i8, ptr %i.bhb, i64 4
  %i.bhd = shufflevector <4 x float> %i.bgv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bhe = fmul fast <2 x float> %i.bhd, %19      ; 2 uses
  %i.bhf = shufflevector <2 x float> %i.bhe, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bhg = select <2 x i1> %i.aeu, <2 x float> %i.bhe, <2 x float> %i.bhf ; 2 uses
  %i.bhh = extractelement <2 x float> %i.bhg, i64 0
  store float %i.bhh, ptr %i.bha, align 4, !tbaa !68
  %i.bhi = extractelement <2 x float> %i.bhg, i64 1
  store float %i.bhi, ptr %i.bhb, align 4, !tbaa !68
  store float %i.bgz, ptr %i.bhc, align 4, !tbaa !68
  %i.bhj = getelementptr inbounds nuw i8, ptr %.519573821.i, i64 %..idx3656.i ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %.1319063823.i, i64 16 ; 2 uses
  %i.bhl = add nuw nsw i32 %.219453822.i, 2       ; 3 uses
  %i.bhm = or disjoint i32 %i.bhl, 1
  %i.bhn = icmp slt i32 %i.bhm, %7
  br i1 %i.bhn, label %.lr.ph3825.i, label %.preheader3681.i, !llvm.loop !745

bb.hn:                                            ; preds = %bb.ht, %.lr.ph3834.i
  %.533833.i = phi ptr [ %.50.lcssa.i, %.lr.ph3834.i ], [ %.55.i, %bb.ht ] ; 7 uses
  %.1419073832.i = phi ptr [ %.131906.lcssa.i, %.lr.ph3834.i ], [ %i.bip, %bb.ht ] ; 2 uses
  %.319463831.i = phi i32 [ %.21945.lcssa.i, %.lr.ph3834.i ], [ %i.biq, %bb.ht ]
  %.719593830.i = phi ptr [ %.51957.lcssa.i, %.lr.ph3834.i ], [ %.81960.i, %bb.ht ] ; 5 uses
  %i.bho = load <2 x i32>, ptr %.1419073832.i, align 4, !tbaa !50
  %i.bhp = sitofp fast <2 x i32> %i.bho to <2 x float>
  %i.bhq = fmul fast <2 x float> %i.azq, %i.bhp   ; 3 uses
  %.not2021.i = icmp eq ptr %.533833.i, null
  br i1 %.not2021.i, label %bb.hq, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.bhr = fadd reassoc nsz arcp contract afn <2 x float> %22, %i.bhq ; 2 uses
  switch i32 %3, label %bb.hq [
    i32 3, label %.thread3627.i
    i32 4, label %bb.hp
  ]

.thread3627.i:                                    ; preds = %bb.ho
  %i.bhs = load float, ptr %.533833.i, align 4, !tbaa !68
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %.533833.i, i64 %i.u
  %i.bhu = load float, ptr %i.bht, align 4, !tbaa !68
  %i.bhv = insertelement <2 x float> poison, float %i.bhs, i64 0
  %i.bhw = insertelement <2 x float> %i.bhv, float %i.bhu, i64 1
  %i.bhx = fmul fast <2 x float> %i.bhw, %i.aes
  %i.bhy = fadd fast <2 x float> %i.bhx, %i.bhq
  %i.bhz = getelementptr inbounds nuw i8, ptr %.533833.i, i64 4
  br label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.bia = load float, ptr %.533833.i, align 4, !tbaa !68
  %i.bib = fmul fast float %i.bia, %10
  %i.bic = insertelement <2 x float> poison, float %i.bib, i64 0
  %i.bid = shufflevector <2 x float> %i.bic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bie = fadd fast <2 x float> %i.bid, %i.bhr
  %i.bif = getelementptr inbounds nuw i8, ptr %.533833.i, i64 4
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %.thread3627.i, %bb.ho, %bb.hn
  %.55.i = phi ptr [ %i.bif, %bb.hp ], [ %.533833.i, %bb.ho ], [ null, %bb.hn ], [ %i.bhz, %.thread3627.i ] ; 2 uses
  %i.big = phi <2 x float> [ %i.bie, %bb.hp ], [ %i.bhr, %bb.ho ], [ %i.bhq, %bb.hn ], [ %i.bhy, %.thread3627.i ] ; 2 uses
  %i.bih = extractelement <2 x float> %i.big, i64 0
  %i.bii = fmul fast float %i.bih, %9
  %i.bij = extractelement <2 x float> %i.big, i64 1
  %i.bik = fmul fast float %i.bij, %9             ; 2 uses
  store float %i.bii, ptr %.719593830.i, align 4, !tbaa !68
  br i1 %.not2019.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bil = getelementptr inbounds nuw i8, ptr %.719593830.i, i64 4
  store float %i.bik, ptr %i.bil, align 4, !tbaa !68
  %i.bim = getelementptr inbounds nuw [4 x i8], ptr %.719593830.i, i64 %i.l
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hq
  %i.bin = getelementptr inbounds nuw [4 x i8], ptr %.719593830.i, i64 %i.l
  store float %i.bik, ptr %i.bin, align 4, !tbaa !68
  %i.bio = getelementptr inbounds nuw i8, ptr %.719593830.i, i64 4
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.81960.i = phi ptr [ %i.bim, %bb.hr ], [ %i.bio, %bb.hs ]
  %i.bip = getelementptr inbounds nuw i8, ptr %.1419073832.i, i64 8 ; 2 uses
  %i.biq = add nuw nsw i32 %.319463831.i, 1       ; 2 uses
  %exitcond3926.not.i = icmp eq i32 %i.biq, %7
  br i1 %exitcond3926.not.i, label %._crit_edge3835.i, label %bb.hn, !llvm.loop !746

._crit_edge3835.i:                                ; preds = %bb.ht, %.preheader3681.i
  %.141907.lcssa.i = phi ptr [ %.131906.lcssa.i, %.preheader3681.i ], [ %i.bip, %bb.ht ] ; 2 uses
  %.53.lcssa.i = phi ptr [ %.50.lcssa.i, %.preheader3681.i ], [ %.55.i, %bb.ht ] ; 2 uses
  %indvars.iv.next3928.i = add nuw nsw i64 %indvars.iv3927.i, 2 ; 3 uses
  %i.bir = icmp slt i64 %indvars.iv.next3928.i, %invariant.op3996.i
  br i1 %i.bir, label %bb.fv, label %.preheader3680.loopexit.i, !llvm.loop !747

bb.hu:                                            ; preds = %._crit_edge3881.i, %.lr.ph3887.i
  %indvars.iv3931.i = phi i64 [ %i.azb, %.lr.ph3887.i ], [ %indvars.iv.next3932.i, %._crit_edge3881.i ] ; 4 uses
  %.563886.i = phi ptr [ %.40.lcssa.i, %.lr.ph3887.i ], [ %.66.lcssa.i, %._crit_edge3881.i ] ; 4 uses
  %.1519083885.i = phi ptr [ %.101903.lcssa.i, %.lr.ph3887.i ], [ %.191912.lcssa.i, %._crit_edge3881.i ] ; 2 uses
  %i.bis = load ptr, ptr %2, align 8, !tbaa !24   ; 2 uses
  br i1 %.not2002.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.bit = getelementptr inbounds nuw [4 x i8], ptr %i.bis, i64 %i.ayn
  %i.biu = add nsw i64 %indvars.iv3931.i, %i.ayq  ; 2 uses
  %i.biv = mul nsw i64 %i.biu, %i.azc
  %i.biw = getelementptr inbounds [4 x i8], ptr %i.bit, i64 %i.biv
  br label %bb.hx

bb.hw:                                            ; preds = %bb.hu
  %i.bix = add nsw i64 %indvars.iv3931.i, %i.ayq  ; 2 uses
  %i.biy = mul i64 %i.bix, %i.l
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.bis, i64 %i.biy
  %i.bja = getelementptr inbounds [4 x i8], ptr %i.biz, i64 %i.aym
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.pre-phi3935.i = phi i64 [ %i.bix, %bb.hw ], [ %i.biu, %bb.hv ] ; 2 uses
  %.01856.i = phi ptr [ %i.bja, %bb.hw ], [ %i.biw, %bb.hv ] ; 2 uses
  %i.bjb = load ptr, ptr %8, align 8, !tbaa !24
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.bjb, i64 %.pre-phi3935.i
  %i.bjd = load float, ptr %i.bjc, align 4, !tbaa !68 ; 3 uses
  %i.bje = insertelement <4 x float> poison, float %i.bjd, i64 0
  %i.bjf = shufflevector <4 x float> %i.bje, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %.not2003.i = icmp eq ptr %.563886.i, null
  br i1 %.not2003.i, label %.thread3643.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  br i1 %i.ayo, label %.thread3631.i, label %bb.hz

.thread3631.i:                                    ; preds = %bb.hy
  %i.bjg = load float, ptr %.563886.i, align 4, !tbaa !68
  %i.bjh = fmul fast float %i.bjg, %10            ; 2 uses
  %i.bji = insertelement <4 x float> poison, float %i.bjh, i64 0
  %i.bjj = shufflevector <4 x float> %i.bji, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread3643.i

bb.hz:                                            ; preds = %bb.hy
  br i1 %or.cond31.i, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.bjk = load ptr, ptr %1, align 8, !tbaa !24
  %i.bjl = getelementptr inbounds [4 x i8], ptr %i.bjk, i64 %i.ayq
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %indvars.iv3931.i ; 2 uses
  %i.bjn = load float, ptr %i.bjm, align 4, !tbaa !68
  %i.bjo = fmul fast float %i.bjn, %10            ; 2 uses
  %i.bjp = insertelement <4 x float> poison, float %i.bjo, i64 0
  %i.bjq = shufflevector <4 x float> %i.bjp, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread3643.i

bb.ib:                                            ; preds = %bb.hz
  switch i32 %3, label %.thread3643.i [
    i32 3, label %bb.ic
    i32 4, label %bb.id
  ]

bb.ic:                                            ; preds = %bb.ib
  %i.bjr = load ptr, ptr %1, align 8, !tbaa !24
  %i.bjs = mul i64 %.pre-phi3935.i, %i.u
  %i.bjt = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %i.bjs
  %i.bju = getelementptr inbounds [4 x i8], ptr %i.bjt, i64 %i.aym
  br label %.thread3643.i

bb.id:                                            ; preds = %bb.ib
  %i.bjv = load ptr, ptr %1, align 8, !tbaa !24
  %i.bjw = getelementptr inbounds [4 x i8], ptr %i.bjv, i64 %i.aym
  br label %.thread3643.i

.thread3643.i:                                    ; preds = %bb.id, %bb.ic, %bb.ib, %bb.ia, %.thread3631.i, %bb.hx
  %.23108.i = phi nsz <4 x float> [ zeroinitializer, %bb.hx ], [ zeroinitializer, %bb.id ], [ zeroinitializer, %bb.ib ], [ zeroinitializer, %bb.ic ], [ %i.bjj, %.thread3631.i ], [ %i.bjq, %bb.ia ] ; 2 uses
  %.59.i = phi ptr [ null, %bb.hx ], [ %i.bjw, %bb.id ], [ %.563886.i, %bb.ib ], [ %i.bju, %bb.ic ], [ %.563886.i, %.thread3631.i ], [ %i.bjm, %bb.ia ] ; 2 uses
  %.21855.i = phi nsz float [ 0.000000e+00, %bb.hx ], [ 0.000000e+00, %bb.id ], [ 0.000000e+00, %bb.ib ], [ 0.000000e+00, %bb.ic ], [ %i.bjh, %.thread3631.i ], [ %i.bjo, %bb.ia ] ; 2 uses
  br i1 %i.ayr, label %.lr.ph3851.i, label %.preheader3679.i

.preheader3679.i:                                 ; preds = %bb.ip, %.thread3643.i
  %.33109.lcssa.i = phi <4 x float> [ %.23108.i, %.thread3643.i ], [ %.43110.i, %bb.ip ]
  %.161909.lcssa.i = phi ptr [ %.1519083885.i, %.thread3643.i ], [ %i.bla, %bb.ip ] ; 2 uses
  %.60.lcssa.i = phi ptr [ %.59.i, %.thread3643.i ], [ %.61.i, %bb.ip ] ; 2 uses
  %.11857.lcssa.i = phi ptr [ %.01856.i, %.thread3643.i ], [ %i.bkz, %bb.ip ] ; 2 uses
  %.01851.lcssa.i = phi i32 [ 0, %.thread3643.i ], [ %i.aza, %bb.ip ] ; 3 uses
  %i.bjx = or disjoint i32 %.01851.lcssa.i, 3
  %i.bjy = icmp slt i32 %i.bjx, %7
  br i1 %i.bjy, label %.lr.ph3862.i, label %.preheader3678.i

.lr.ph3851.i:                                     ; preds = %.thread3643.i, %bb.ip
  %.018513850.i = phi i32 [ %i.blb, %bb.ip ], [ 0, %.thread3643.i ]
  %.118573849.i = phi ptr [ %i.bkz, %bb.ip ], [ %.01856.i, %.thread3643.i ] ; 17 uses
  %.603848.i = phi ptr [ %.61.i, %bb.ip ], [ %.59.i, %.thread3643.i ] ; 6 uses
  %.1619093847.i = phi ptr [ %i.bla, %bb.ip ], [ %.1519083885.i, %.thread3643.i ] ; 3 uses
  %.331093846.i = phi <4 x float> [ %.43110.i, %bb.ip ], [ %.23108.i, %.thread3643.i ] ; 5 uses
  %i.bjz = load <4 x i32>, ptr %.1619093847.i, align 1, !tbaa !89
  %i.bka = sitofp fast <4 x i32> %i.bjz to <4 x float>
  %i.bkb = fmul fast <4 x float> %i.bjf, %i.bka   ; 4 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %.1619093847.i, i64 16
  %i.bkd = load <4 x i32>, ptr %i.bkc, align 1, !tbaa !89
  %i.bke = sitofp fast <4 x i32> %i.bkd to <4 x float>
  %i.bkf = fmul fast <4 x float> %i.bjf, %i.bke   ; 4 uses
  %.not2010.i = icmp eq ptr %.603848.i, null
  br i1 %.not2010.i, label %bb.ih, label %bb.ie

bb.ie:                                            ; preds = %.lr.ph3851.i
  br i1 %or.cond35.i, label %.thread3647.i, label %bb.if

.thread3647.i:                                    ; preds = %bb.ie
  %i.bkg = fadd fast <4 x float> %i.bkb, %.331093846.i
  %i.bkh = fadd fast <4 x float> %i.bkf, %.331093846.i
  br label %bb.ih

bb.if:                                            ; preds = %bb.ie
  br i1 %or.cond37.i, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.bki = load <4 x float>, ptr %.603848.i, align 1, !tbaa !89 ; 2 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %.603848.i, i64 16
  %i.bkk = load <4 x float>, ptr %i.bkj, align 1, !tbaa !89
  %i.bkl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bki, <4 x float> nofpclass(nan inf) %i.ayu, <4 x float> nofpclass(nan inf) %i.bkb)
  %i.bkm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkk, <4 x float> nofpclass(nan inf) %i.ayu, <4 x float> nofpclass(nan inf) %i.bkf)
  %i.bkn = getelementptr inbounds nuw i8, ptr %.603848.i, i64 32
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if, %.thread3647.i, %.lr.ph3851.i
  %.43110.i = phi nsz <4 x float> [ %.331093846.i, %.lr.ph3851.i ], [ %i.bki, %bb.ig ], [ %.331093846.i, %bb.if ], [ %.331093846.i, %.thread3647.i ] ; 2 uses
  %.13104.i = phi nsz <4 x float> [ %i.bkb, %.lr.ph3851.i ], [ %i.bkl, %bb.ig ], [ %i.bkb, %bb.if ], [ %i.bkg, %.thread3647.i ]
  %.13101.i = phi nsz <4 x float> [ %i.bkf, %.lr.ph3851.i ], [ %i.bkm, %bb.ig ], [ %i.bkf, %bb.if ], [ %i.bkh, %.thread3647.i ]
  %.61.i = phi ptr [ null, %.lr.ph3851.i ], [ %i.bkn, %bb.ig ], [ %.603848.i, %bb.if ], [ %.603848.i, %.thread3647.i ] ; 2 uses
  %.23105.i = fmul reassoc nsz arcp contract afn <4 x float> %.13104.i, %i.ayy ; 8 uses
  %.23102.i = fmul reassoc nsz arcp contract afn <4 x float> %.13101.i, %i.ayy ; 8 uses
  br i1 %.not2002.i, label %bb.io, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  br i1 %i.ayz, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  store <4 x float> %.23105.i, ptr %.118573849.i, align 1, !tbaa !89
  %i.bko = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 16
  store <4 x float> %.23102.i, ptr %i.bko, align 1, !tbaa !89
  br label %bb.ip

bb.ik:                                            ; preds = %bb.ii
  switch i32 %i.c, label %bb.ip [
    i32 8, label %bb.il
    i32 4, label %bb.im
    i32 1, label %bb.in
  ]

bb.il:                                            ; preds = %bb.ik
  store <4 x float> %.23105.i, ptr %.118573849.i, align 1, !tbaa !89
  %i.bkp = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 16
  store <4 x float> %.23102.i, ptr %i.bkp, align 1, !tbaa !89
  br label %bb.ip

bb.im:                                            ; preds = %bb.ik
  store <4 x float> %.23105.i, ptr %.118573849.i, align 1, !tbaa !89
  %i.bkq = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2014.i
  store <4 x float> %.23102.i, ptr %i.bkq, align 1, !tbaa !89
  br label %bb.ip

bb.in:                                            ; preds = %bb.ik
  %.sroa.02126.0.vec.extract.i = extractelement <4 x float> %.23105.i, i64 0
  store float %.sroa.02126.0.vec.extract.i, ptr %.118573849.i, align 4, !tbaa !68
  %.sroa.02126.4.vec.extract.i = extractelement <4 x float> %.23105.i, i64 1
  %i.bkr = getelementptr inbounds nuw [4 x i8], ptr %.118573849.i, i64 %i.l
  store float %.sroa.02126.4.vec.extract.i, ptr %i.bkr, align 4, !tbaa !68
  %.sroa.02126.8.vec.extract.i = extractelement <4 x float> %.23105.i, i64 2
  %i.bks = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2012.i
  store float %.sroa.02126.8.vec.extract.i, ptr %i.bks, align 4, !tbaa !68
  %.sroa.02126.12.vec.extract.i = extractelement <4 x float> %.23105.i, i64 3
  %i.bkt = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2013.i
  store float %.sroa.02126.12.vec.extract.i, ptr %i.bkt, align 4, !tbaa !68
  %.sroa.7.16.vec.extract.i = extractelement <4 x float> %.23102.i, i64 0
  %i.bku = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2014.i
  store float %.sroa.7.16.vec.extract.i, ptr %i.bku, align 4, !tbaa !68
  %.sroa.7.20.vec.extract.i = extractelement <4 x float> %.23102.i, i64 1
  %i.bkv = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2015.i
  store float %.sroa.7.20.vec.extract.i, ptr %i.bkv, align 4, !tbaa !68
  %.sroa.7.24.vec.extract.i = extractelement <4 x float> %.23102.i, i64 2
  %i.bkw = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2016.i
  store float %.sroa.7.24.vec.extract.i, ptr %i.bkw, align 4, !tbaa !68
  %.sroa.7.28.vec.extract.i = extractelement <4 x float> %.23102.i, i64 3
  %i.bkx = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.idx2017.i
  store float %.sroa.7.28.vec.extract.i, ptr %i.bkx, align 4, !tbaa !68
  br label %bb.ip

bb.io:                                            ; preds = %bb.ih
  store <4 x float> %.23105.i, ptr %.118573849.i, align 1, !tbaa !89
  %i.bky = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 16
  store <4 x float> %.23102.i, ptr %i.bky, align 1, !tbaa !89
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij
  %.sink4015.i.a = phi i64 [ 32, %bb.io ], [ %.idx2018.i, %bb.im ], [ %.idx2018.i, %bb.il ], [ %.idx2018.i, %bb.ik ], [ %.idx2018.i, %bb.in ], [ 32, %bb.ij ]
  %i.bkz = getelementptr inbounds nuw i8, ptr %.118573849.i, i64 %.sink4015.i.a ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %.1619093847.i, i64 32 ; 2 uses
  %i.blb = add nuw nsw i32 %.018513850.i, 8       ; 2 uses
  %i.blc = or disjoint i32 %i.blb, 7
  %i.bld = icmp slt i32 %i.blc, %7
  br i1 %i.bld, label %.lr.ph3851.i, label %.preheader3679.i, !llvm.loop !748

.preheader3678.i:                                 ; preds = %bb.ja, %.preheader3679.i
  %.171910.lcssa.i = phi ptr [ %.161909.lcssa.i, %.preheader3679.i ], [ %i.blx, %bb.ja ] ; 2 uses
  %.62.lcssa.i = phi ptr [ %.60.lcssa.i, %.preheader3679.i ], [ %.63.i, %bb.ja ] ; 2 uses
  %.31859.lcssa.i = phi ptr [ %.11857.lcssa.i, %.preheader3679.i ], [ %i.blw, %bb.ja ] ; 2 uses
  %.11852.lcssa.i = phi i32 [ %.01851.lcssa.i, %.preheader3679.i ], [ %i.bly, %bb.ja ] ; 3 uses
  %i.ble = or disjoint i32 %.11852.lcssa.i, 1
  %i.blf = icmp slt i32 %i.ble, %7
  br i1 %i.blf, label %.lr.ph3871.i, label %.preheader.i

.lr.ph3871.i:                                     ; preds = %.preheader3678.i
  %i.blg = select ninf nsz i1 %or.cond35.i, float %.21855.i, float 0.000000e+00
  %i.blh = insertelement <2 x float> poison, float %i.bjd, i64 0
  %i.bli = shufflevector <2 x float> %i.blh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.blj = insertelement <2 x float> poison, float %i.blg, i64 0
  %i.blk = shufflevector <2 x float> %i.blj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.jb

.lr.ph3862.i:                                     ; preds = %.preheader3679.i, %bb.ja
  %.118523861.i = phi i32 [ %i.bly, %bb.ja ], [ %.01851.lcssa.i, %.preheader3679.i ]
  %.318593860.i = phi ptr [ %i.blw, %bb.ja ], [ %.11857.lcssa.i, %.preheader3679.i ] ; 8 uses
  %.623859.i = phi ptr [ %.63.i, %bb.ja ], [ %.60.lcssa.i, %.preheader3679.i ] ; 5 uses
  %.1719103858.i = phi ptr [ %i.blx, %bb.ja ], [ %.161909.lcssa.i, %.preheader3679.i ] ; 2 uses
  %.531113857.i = phi <4 x float> [ %.63112.i, %bb.ja ], [ %.33109.lcssa.i, %.preheader3679.i ] ; 4 uses
  %i.bll = load <4 x i32>, ptr %.1719103858.i, align 1, !tbaa !89
  %i.blm = sitofp fast <4 x i32> %i.bll to <4 x float>
  %i.bln = fmul fast <4 x float> %i.bjf, %i.blm   ; 4 uses
  %.not2006.i = icmp eq ptr %.623859.i, null
  br i1 %.not2006.i, label %bb.it, label %bb.iq

bb.iq:                                            ; preds = %.lr.ph3862.i
  br i1 %or.cond35.i, label %.thread3651.i, label %bb.ir

.thread3651.i:                                    ; preds = %bb.iq
  %i.blo = fadd fast <4 x float> %i.bln, %.531113857.i
  br label %bb.it

bb.ir:                                            ; preds = %bb.iq
  br i1 %or.cond37.i, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.blp = load <4 x float>, ptr %.623859.i, align 1, !tbaa !89 ; 2 uses
  %i.blq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.blp, <4 x float> nofpclass(nan inf) %i.ayu, <4 x float> nofpclass(nan inf) %i.bln)
  %i.blr = getelementptr inbounds nuw i8, ptr %.623859.i, i64 16
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir, %.thread3651.i, %.lr.ph3862.i
  %.63112.i = phi nsz <4 x float> [ %.531113857.i, %.lr.ph3862.i ], [ %i.blp, %bb.is ], [ %.531113857.i, %bb.ir ], [ %.531113857.i, %.thread3651.i ]
  %.13069.i = phi nsz <4 x float> [ %i.bln, %.lr.ph3862.i ], [ %i.blq, %bb.is ], [ %i.bln, %bb.ir ], [ %i.blo, %.thread3651.i ]
  %.63.i = phi ptr [ null, %.lr.ph3862.i ], [ %i.blr, %bb.is ], [ %.623859.i, %bb.ir ], [ %.623859.i, %.thread3651.i ] ; 2 uses
  %i.bls = fmul fast <4 x float> %.13069.i, %i.ayx ; 7 uses
  br i1 %.not2002.i, label %bb.iz, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  br i1 %i.ayz, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  store <4 x float> %i.bls, ptr %.318593860.i, align 1, !tbaa !89
  br label %bb.ja

bb.iw:                                            ; preds = %bb.iu
  switch i32 %i.c, label %bb.ja [
    i32 4, label %bb.ix
    i32 1, label %bb.iy
  ]

bb.ix:                                            ; preds = %bb.iw
  store <4 x float> %i.bls, ptr %.318593860.i, align 1, !tbaa !89
  br label %bb.ja

bb.iy:                                            ; preds = %bb.iw
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.bls, i64 0
  store float %.sroa.0.0.vec.extract.i, ptr %.318593860.i, align 4, !tbaa !68
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.bls, i64 1
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %.318593860.i, i64 %i.l
  store float %.sroa.0.4.vec.extract.i, ptr %i.blt, align 4, !tbaa !68
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.bls, i64 2
  %i.blu = getelementptr inbounds nuw i8, ptr %.318593860.i, i64 %.idx2012.i
  store float %.sroa.0.8.vec.extract.i, ptr %i.blu, align 4, !tbaa !68
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.bls, i64 3
  %i.blv = getelementptr inbounds nuw i8, ptr %.318593860.i, i64 %.idx2013.i
  store float %.sroa.0.12.vec.extract.i, ptr %i.blv, align 4, !tbaa !68
  br label %bb.ja

bb.iz:                                            ; preds = %bb.it
  store <4 x float> %i.bls, ptr %.318593860.i, align 1, !tbaa !89
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv
  %.sink4016.i = phi i64 [ 16, %bb.iz ], [ %.idx2014.i, %bb.ix ], [ %.idx2014.i, %bb.iw ], [ %.idx2014.i, %bb.iy ], [ 16, %bb.iv ]
  %i.blw = getelementptr inbounds nuw i8, ptr %.318593860.i, i64 %.sink4016.i ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %.1719103858.i, i64 16 ; 2 uses
  %i.bly = add nuw nsw i32 %.118523861.i, 4       ; 3 uses
  %i.blz = or disjoint i32 %i.bly, 3
  %i.bma = icmp slt i32 %i.blz, %7
  br i1 %i.bma, label %.lr.ph3862.i, label %.preheader3678.i, !llvm.loop !749

.preheader.i:                                     ; preds = %bb.jh, %.preheader3678.i
  %.181911.lcssa.i = phi ptr [ %.171910.lcssa.i, %.preheader3678.i ], [ %i.bmt, %bb.jh ] ; 2 uses
  %.64.lcssa.i = phi ptr [ %.62.lcssa.i, %.preheader3678.i ], [ %.65.i, %bb.jh ] ; 2 uses
  %.5.lcssa.i = phi ptr [ %.31859.lcssa.i, %.preheader3678.i ], [ %i.bms, %bb.jh ]
  %.2.lcssa.i = phi i32 [ %.11852.lcssa.i, %.preheader3678.i ], [ %i.bmu, %bb.jh ] ; 2 uses
  %i.bmb = icmp slt i32 %.2.lcssa.i, %7
  br i1 %i.bmb, label %.lr.ph3880.i, label %._crit_edge3881.i

.lr.ph3880.i:                                     ; preds = %.preheader.i
  %i.bmc = select ninf nsz i1 %or.cond35.i, float %.21855.i, float 0.000000e+00
  br label %bb.ji

bb.jb:                                            ; preds = %bb.jh, %.lr.ph3871.i
  %.23870.i = phi i32 [ %.11852.lcssa.i, %.lr.ph3871.i ], [ %i.bmu, %bb.jh ]
  %.53869.i = phi ptr [ %.31859.lcssa.i, %.lr.ph3871.i ], [ %i.bms, %bb.jh ] ; 4 uses
  %.643868.i = phi ptr [ %.62.lcssa.i, %.lr.ph3871.i ], [ %.65.i, %bb.jh ] ; 4 uses
  %.1819113867.i = phi ptr [ %.171910.lcssa.i, %.lr.ph3871.i ], [ %i.bmt, %bb.jh ] ; 2 uses
  %i.bmd = load <2 x i32>, ptr %.1819113867.i, align 4, !tbaa !50
  %i.bme = sitofp fast <2 x i32> %i.bmd to <2 x float>
  %i.bmf = fmul fast <2 x float> %i.bli, %i.bme   ; 3 uses
  %.not2005.i = icmp eq ptr %.643868.i, null
  br i1 %.not2005.i, label %bb.je, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.bmg = fadd fast <2 x float> %i.bmf, %i.blk
  br i1 %or.cond37.i, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.bmh = load <2 x float>, ptr %.643868.i, align 4, !tbaa !68
  %i.bmi = fmul fast <2 x float> %i.bmh, %i.aze
  %i.bmj = fadd fast <2 x float> %i.bmi, %i.bmf
  %i.bmk = getelementptr inbounds nuw i8, ptr %.643868.i, i64 8
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc, %bb.jb
  %.65.i = phi ptr [ %i.bmk, %bb.jd ], [ %.643868.i, %bb.jc ], [ null, %bb.jb ] ; 2 uses
  %i.bml = phi <2 x float> [ %i.bmj, %bb.jd ], [ %i.bmg, %bb.jc ], [ %i.bmf, %bb.jb ] ; 2 uses
  %i.bmm = extractelement <2 x float> %i.bml, i64 0
  %i.bmn = fmul fast float %i.bmm, %9
  %i.bmo = extractelement <2 x float> %i.bml, i64 1
  %i.bmp = fmul fast float %i.bmo, %9             ; 2 uses
  store float %i.bmn, ptr %.53869.i, align 4, !tbaa !68
  br i1 %.not2002.i, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr %.53869.i, i64 %i.l
  store float %i.bmp, ptr %i.bmq, align 4, !tbaa !68
  br label %bb.jh

bb.jg:                                            ; preds = %bb.je
  %i.bmr = getelementptr inbounds nuw i8, ptr %.53869.i, i64 4
  store float %i.bmp, ptr %i.bmr, align 4, !tbaa !68
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %.sink4017.i = phi i64 [ 8, %bb.jg ], [ %.idx2012.i, %bb.jf ]
  %i.bms = getelementptr inbounds nuw i8, ptr %.53869.i, i64 %.sink4017.i ; 2 uses
  %i.bmt = getelementptr inbounds nuw i8, ptr %.1819113867.i, i64 8 ; 2 uses
  %i.bmu = add nuw nsw i32 %.23870.i, 2           ; 3 uses
  %i.bmv = or disjoint i32 %i.bmu, 1
  %i.bmw = icmp slt i32 %i.bmv, %7
  br i1 %i.bmw, label %bb.jb, label %.preheader.i, !llvm.loop !750

bb.ji:                                            ; preds = %bb.jl, %.lr.ph3880.i
  %.33879.i = phi i32 [ %.2.lcssa.i, %.lr.ph3880.i ], [ %i.bni, %bb.jl ]
  %.73878.i = phi ptr [ %.5.lcssa.i, %.lr.ph3880.i ], [ %.8.i, %bb.jl ] ; 3 uses
  %.663877.i = phi ptr [ %.64.lcssa.i, %.lr.ph3880.i ], [ %.67.i, %bb.jl ] ; 4 uses
  %.1919123876.i = phi ptr [ %.181911.lcssa.i, %.lr.ph3880.i ], [ %i.bnh, %bb.jl ] ; 2 uses
  %i.bmx = load i32, ptr %.1919123876.i, align 4, !tbaa !50
  %i.bmy = sitofp fast i32 %i.bmx to float
  %i.bmz = fmul fast float %i.bjd, %i.bmy         ; 3 uses
  %.not2004.i = icmp eq ptr %.663877.i, null
  br i1 %.not2004.i, label %bb.jl, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %spec.select.i = fadd fast float %i.bmz, %i.bmc
  br i1 %or.cond37.i, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.bna = load float, ptr %.663877.i, align 4, !tbaa !68
  %i.bnb = fmul fast float %i.bna, %10
  %i.bnc = fadd fast float %i.bnb, %i.bmz
  %i.bnd = getelementptr inbounds nuw i8, ptr %.663877.i, i64 4
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj, %bb.ji
  %.67.i = phi ptr [ %i.bnd, %bb.jk ], [ %.663877.i, %bb.jj ], [ null, %bb.ji ] ; 2 uses
  %.1.i = phi nsz float [ %i.bnc, %bb.jk ], [ %spec.select.i, %bb.jj ], [ %i.bmz, %bb.ji ]
  %i.bne = fmul fast float %.1.i, %9
  store float %i.bne, ptr %.73878.i, align 4, !tbaa !68
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %.73878.i, i64 %i.l
  %i.bng = getelementptr inbounds nuw i8, ptr %.73878.i, i64 4
  %.8.i = select i1 %.not2002.i, ptr %i.bng, ptr %i.bnf
  %i.bnh = getelementptr inbounds nuw i8, ptr %.1919123876.i, i64 4 ; 2 uses
  %i.bni = add nuw nsw i32 %.33879.i, 1           ; 2 uses
  %exitcond3930.not.i = icmp eq i32 %i.bni, %7
  br i1 %exitcond3930.not.i, label %._crit_edge3881.i, label %bb.ji, !llvm.loop !751

._crit_edge3881.i:                                ; preds = %bb.jl, %.preheader.i
  %.191912.lcssa.i = phi ptr [ %.181911.lcssa.i, %.preheader.i ], [ %i.bnh, %bb.jl ]
  %.66.lcssa.i = phi ptr [ %.64.lcssa.i, %.preheader.i ], [ %.67.i, %bb.jl ]
  %indvars.iv.next3932.i = add nuw nsw i64 %indvars.iv3931.i, 1 ; 2 uses
  %exitcond3934.not.i = icmp eq i64 %indvars.iv.next3932.i, %wide.trip.count.i
  br i1 %exitcond3934.not.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit, label %bb.hu, !llvm.loop !752

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
  br i1 %niter177.ncmp.3.not, label %..preheader56_crit_edge.us.i.unr-lcssa, label %.lr.ph79.split.us.i.new, !llvm.loop !753

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
  br i1 %i.az, label %.lr.ph65.us.i, label %.preheader.us.i, !llvm.loop !754

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
  br i1 %exitcond174.not.i, label %._crit_edge.us.i, label %.lr.ph72.us.i, !llvm.loop !755

._crit_edge.us.i:                                 ; preds = %.lr.ph72.us.i, %middle.block112, %vec.epilog.middle.block136, %.preheader.us.i
  %.151.lcssa.us.i = phi float [ %.05076.us.i, %.preheader.us.i ], [ %i.ck, %vec.epilog.middle.block136 ], [ %i.cb, %middle.block112 ], [ %.sroa.speculated40.us.i, %.lr.ph72.us.i ] ; 2 uses
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next176.i, %wide.trip.count178.i
  br i1 %exitcond179.not.i, label %_ZN4ncnnL25compute_B_fp32_int8_scaleERKNS_3MatERf.exit, label %.lr.ph79.split.us.i, !llvm.loop !756

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
  br i1 %i.ku, label %bb.h, label %._crit_edge.us, !llvm.loop !1023

bb.ab:                                            ; preds = %._crit_edge.us
  %i.kv = add nsw i32 %.083186.us, %i.bn          ; 2 uses
  %i.kw = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.kx = icmp slt i32 %i.kv, %i.kw
  br i1 %i.kx, label %.lr.ph.us, label %._crit_edge188, !llvm.loop !1024

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
  br i1 %i.ls, label %.lr.ph187.split, label %._crit_edge188, !llvm.loop !1024

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
define hidden void @_ZN4ncnn20Gemm_x86_fma_utility16pack_A_tile_int8ERKNS_3MatERS1_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn20Gemm_x86_fma_utility28gemm_transB_packed_tile_int8ERKNS_3MatES3_RS1_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #2 {
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
  %10 = and i32 %i.h, 2147483640
  %.sroa.speculated115 = tail call i32 @llvm.umax.i32(i32 %10, i32 8) ; 6 uses
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
  %11 = and i32 %i.u, 2147483640
  %.sroa.speculated93 = tail call i32 @llvm.umax.i32(i32 %11, i32 8) ; 2 uses
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
define internal void @_ZN4ncnn12Gemm_x86_fma21create_pipeline_bf16sERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #8 personality ptr @__gxx_personality_v0 {
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
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !77, !noalias !1032
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !24, !noalias !1032
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !1032
  %i.ae = sext i32 %i.r to i64
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !63, !noalias !1032 ; 2 uses
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
  %i.ap = load ptr, ptr %6, align 8, !tbaa !24, !noalias !1314
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !25, !noalias !1314
  %i.ar = sext i32 %i.ao to i64
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = load i64, ptr %i.p, align 8, !tbaa !63, !noalias !1314
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
  %i.bg = load i32, ptr %i.q, align 4, !tbaa !77, !noalias !1315
  %i.bh = load ptr, ptr %10, align 8, !tbaa !24, !noalias !1315
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !25, !noalias !1315
  %i.bj = sext i32 %i.bf to i64
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = load i64, ptr %i.s, align 8, !tbaa !63, !noalias !1315 ; 2 uses
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
  %i.bx = load i32, ptr %i.t, align 4, !tbaa !77, !noalias !1316
  %i.by = load ptr, ptr %11, align 8, !tbaa !24, !noalias !1316
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !25, !noalias !1316
  %i.ca = sext i32 %i.bw to i64
  %i.cb = mul i64 %i.bz, %i.ca
  %i.cc = load i64, ptr %i.v, align 8, !tbaa !63, !noalias !1316 ; 2 uses
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
  br i1 %i.cm, label %bb.g, label %._crit_edge.us, !llvm.loop !1312

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
  br i1 %i.cv, label %.lr.ph.us, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1313

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
  br i1 %i.dk, label %.lr.ph191.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1313

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
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

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

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress norecurse uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!67 = !{!"_ZTSN4ncnn12Gemm_x86_fmaE", !41, i64 0, !12, i64 580, !21, i64 584, !21, i64 656, !21, i64 728}
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
