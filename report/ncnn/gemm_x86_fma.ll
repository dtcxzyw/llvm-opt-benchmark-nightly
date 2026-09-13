Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 134
loop-unroll.NumUnrolled: 138
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
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !77, !noalias !141
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !24, !noalias !141
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !141
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !63, !noalias !141 ; 2 uses
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
define internal fastcc void @_ZN4ncnnL21transpose_pack_A_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_ZN4ncnnL8gemm_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiRKNS_6OptionE.omp_outlined.8:bb.a
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
          to label %.noexc128.us unwind label %.loopexit.split.us

.noexc128.us:                                     ; preds = %bb.l
  %i.cv = load i32, ptr %i.ag, align 4, !tbaa !77, !noalias !531
  %i.cw = load ptr, ptr %13, align 8, !tbaa !24, !noalias !531
  %i.cx = load i64, ptr %i.ah, align 8, !tbaa !25, !noalias !531
  %i.cy = sext i32 %i.cu to i64
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = load i64, ptr %i.ai, align 8, !tbaa !63, !noalias !531 ; 2 uses
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
  %i.dm = load i32, ptr %i.aj, align 4, !tbaa !77, !noalias !532
  %i.dn = load ptr, ptr %14, align 8, !tbaa !24, !noalias !532
  %i.do = load i64, ptr %i.ak, align 8, !tbaa !25, !noalias !532
  %i.dp = sext i32 %i.dl to i64
  %i.dq = mul i64 %i.do, %i.dp
  %i.dr = load i64, ptr %i.al, align 8, !tbaa !63, !noalias !532 ; 2 uses
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
  br i1 %i.eh, label %bb.l, label %._crit_edge.us, !llvm.loop !528

bb.r:                                             ; preds = %._crit_edge.us
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216.us, i32 noundef %.sroa.speculated192.us)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.us
  %i.ei = load i32, ptr %11, align 4, !tbaa !50   ; 2 uses
  %i.ej = add nsw i32 %i.ei, %.081216.us          ; 2 uses
  %i.ek = load i32, ptr %10, align 4, !tbaa !50   ; 2 uses
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph218.split.us, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !529

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit91.us
  %i.em = load i32, ptr %8, align 4, !tbaa !50
  %.not88.us = icmp eq i32 %i.em, 0
  br i1 %.not88.us, label %bb.s, label %bb.r

.loopexit.split.us:                               ; preds = %bb.l
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.w, %bb.s, %bb.j
  %.pre230 = load i32, ptr %i.b, align 4, !tbaa !50
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
  %i.er = load i32, ptr %7, align 4, !tbaa !50
  %i.es = icmp eq i32 %i.er, 3
  br i1 %i.es, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph218.split
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val134, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216, i32 noundef %.sroa.speculated192)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph218.split
  %i.et = load i32, ptr %8, align 4, !tbaa !50
  %.not88 = icmp eq i32 %i.et, 0
  br i1 %.not88, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216, i32 noundef %.sroa.speculated192)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eu = load i32, ptr %11, align 4, !tbaa !50   ; 2 uses
  %i.ev = add nsw i32 %i.eu, %.081216             ; 2 uses
  %i.ew = load i32, ptr %10, align 4, !tbaa !50   ; 2 uses
  %i.ex = icmp slt i32 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph218.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !529

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
  call void @__clang_call_terminate(ptr %i.ey) #26
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
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge75, !llvm.loop !533

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
  %i.au = load i32, ptr %i.m, align 4, !tbaa !77, !noalias !549 ; 2 uses
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !24, !noalias !549
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !549
  %i.ax = sext i32 %i.at to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.o, align 8, !tbaa !63, !noalias !549 ; 3 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  %i.bc = load i32, ptr %i.p, align 8, !tbaa !64, !noalias !549
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !23, !noalias !549
  %i.be = sext i32 %i.au to i64                   ; 2 uses
  %i.bf = sdiv i32 %.071, %i.an
end_hunk_1
begin_hunk_2_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.17:bb.a

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
  br i1 %i.ku, label %bb.h, label %._crit_edge.us, !llvm.loop !1024

bb.ab:                                            ; preds = %._crit_edge.us
  %i.kv = add nsw i32 %.083186.us, %i.bn          ; 2 uses
  %i.kw = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.kx = icmp slt i32 %i.kv, %i.kw
  br i1 %i.kx, label %.lr.ph.us, label %._crit_edge188, !llvm.loop !1025

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit88.us
  invoke fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.bo, i32 noundef %i.ch, i32 noundef %.sroa.speculated162, i32 noundef %.083186.us, i32 noundef %.sroa.speculated158.us, ptr noundef nonnull align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.br, float noundef nofpclass(nan inf) %i.bs, i32 noundef %i.bq)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split.us

.loopexit.split.us:                               ; preds = %bb.p, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread177.us, %bb.h
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

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

.loopexit.split-lp.loopexit.split.us:             ; preds = %._crit_edge.us
  %lpad.loopexit178.us = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

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
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split

bb.ai:                                            ; preds = %.lr.ph187.split
  %i.lq = add nsw i32 %.083186, %i.bn             ; 2 uses
  %i.lr = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.ls = icmp slt i32 %i.lq, %i.lr
  br i1 %i.ls, label %.lr.ph187.split, label %._crit_edge188, !llvm.loop !1025

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %bb.a
  ret void

.loopexit.split-lp.loopexit.split:                ; preds = %.lr.ph187.split
  %lpad.loopexit178 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.f
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split.us, %.loopexit.split-lp.loopexit.split, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit.split ], [ %lpad.loopexit178.us, %.loopexit.split-lp.loopexit.split.us ]
  %i.lt = extractvalue { ptr, i32 } %lpad.phi, 0
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
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !77, !noalias !1033
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !24, !noalias !1033
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !1033
  %i.ae = sext i32 %i.r to i64
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !63, !noalias !1033 ; 2 uses
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
define internal fastcc void @_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !76
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
end_hunk_2
begin_hunk_3_@_ZN4ncnnL14gemm_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiffiiiiiRKNS_6OptionE.omp_outlined.24:bb.a
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
          to label %.noexc112 unwind label %.loopexit.split-lp

.noexc112:                                        ; preds = %bb.f
  %i.ap = load ptr, ptr %6, align 8, !tbaa !24, !noalias !1315
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !25, !noalias !1315
  %i.ar = sext i32 %i.ao to i64
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = load i64, ptr %i.p, align 8, !tbaa !63, !noalias !1315
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
          to label %.noexc110.us unwind label %.loopexit.split.us

.noexc110.us:                                     ; preds = %bb.g
  %i.bg = load i32, ptr %i.q, align 4, !tbaa !77, !noalias !1316
  %i.bh = load ptr, ptr %10, align 8, !tbaa !24, !noalias !1316
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !25, !noalias !1316
  %i.bj = sext i32 %i.bf to i64
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = load i64, ptr %i.s, align 8, !tbaa !63, !noalias !1316 ; 2 uses
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
  %i.bx = load i32, ptr %i.t, align 4, !tbaa !77, !noalias !1317
  %i.by = load ptr, ptr %11, align 8, !tbaa !24, !noalias !1317
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !25, !noalias !1317
  %i.ca = sext i32 %i.bw to i64
  %i.cb = mul i64 %i.bz, %i.ca
  %i.cc = load i64, ptr %i.v, align 8, !tbaa !63, !noalias !1317 ; 2 uses
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
  br i1 %i.cm, label %bb.g, label %._crit_edge.us, !llvm.loop !1313

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
  br i1 %i.cv, label %.lr.ph.us, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1314

.loopexit.split.us:                               ; preds = %bb.g
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph191.split, %._crit_edge.us, %.noexc112
  %i.cw = add nsw i32 %.074193, 1
  %i.cx = load i32, ptr %i.b, align 4, !tbaa !50
  %.not.not = icmp slt i32 %.074193, %i.cx
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph191.split:                                  ; preds = %.lr.ph191, %.lr.ph191.split
  %i.cy = phi i32 [ %i.dg, %.lr.ph191.split ], [ %.pre195, %.lr.ph191 ]
  %i.cz = phi i32 [ %i.di, %.lr.ph191.split ], [ %i.aw, %.lr.ph191 ]
  %.073190 = phi i32 [ %i.dh, %.lr.ph191.split ], [ 0, %.lr.ph191 ] ; 3 uses
  %i.da = sub nsw i32 %i.cz, %.073190
  %.sroa.speculated171 = call i32 @llvm.smin.i32(i32 %i.cy, i32 %i.da)
  %i.db = load i32, ptr %14, align 4, !tbaa !50
  %i.dc = load float, ptr %15, align 4, !tbaa !68
  %i.dd = load float, ptr %16, align 4, !tbaa !68
  %i.de = load i32, ptr %17, align 4, !tbaa !50
  %i.df = load i32, ptr %18, align 4, !tbaa !50
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.av, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.db, i32 noundef %i.x, i32 noundef %.sroa.speculated186, i32 noundef %.073190, i32 noundef %.sroa.speculated171, float noundef nofpclass(nan inf) %i.dc, float noundef nofpclass(nan inf) %i.dd, i32 noundef %i.de, i32 noundef %i.df)
  %i.dg = load i32, ptr %8, align 4, !tbaa !50    ; 2 uses
  %i.dh = add nsw i32 %i.dg, %.073190             ; 2 uses
  %i.di = load i32, ptr %7, align 4, !tbaa !50    ; 2 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph191.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1314

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.a
  ret void

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dk = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.dk) #26
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #20

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
!92 = !{!91}
!93 = !{!35, !34, i64 8}
!94 = !{!"_ZTSN4ncnn22gemm_x86_int8_omp_argsE", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !40, i64 24, !40, i64 28}
end_hunk_3
