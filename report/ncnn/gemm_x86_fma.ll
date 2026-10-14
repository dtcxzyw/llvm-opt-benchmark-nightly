Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 134
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN4ncnn12Gemm_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a

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
  %i.i = and i32 %i.h, 2147483640
  %.sroa.speculated115 = tail call i32 @llvm.umax.i32(i32 %i.i, i32 8) ; 5 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !50
  %i.j = and i32 %i.h, 2147483644
  %.sroa.speculated109 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 4)
  store i32 %.sroa.speculated109, ptr %7, align 4, !tbaa !50
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !50
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %2, -1                       ; 2 uses
  %i.m = add nuw i32 %i.l, %.sroa.speculated115
  %10 = udiv i32 %i.m, %.sroa.speculated115       ; 3 uses
  %i.n = add nuw i32 %i.l, %10
  %11 = udiv i32 %i.n, %10
  %i.o = add nuw nsw i32 %11, 7
  %12 = and i32 %i.o, -8
  %.sroa.speculated99 = tail call i32 @llvm.umin.i32(i32 %12, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !50
  %i.p = icmp eq i32 %10, 1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = fmul fast float %i.e, 1.250000e-01
  %13 = uitofp nneg i32 %.sroa.speculated99 to float
  %i.r = fdiv fast float %i.q, %13
  %i.s = fptosi float %i.r to i32                 ; 2 uses
  %14 = and i32 %i.s, 2147483640
  %.sroa.speculated93 = tail call i32 @llvm.umax.i32(i32 %14, i32 8)
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !50
  %15 = and i32 %i.s, 2147483644
  %.sroa.speculated87 = tail call i32 @llvm.umax.i32(i32 %15, i32 4)
  store i32 %.sroa.speculated87, ptr %7, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.t = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %.0)
  %i.u = load i32, ptr %6, align 4, !tbaa !50
  %i.v = mul nsw i32 %i.u, %.sroa.speculated83    ; 4 uses
  %i.w = icmp sgt i32 %0, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %0, -1                       ; 2 uses
  %i.y = add i32 %i.x, %i.v
  %i.z = sdiv i32 %i.y, %i.v                      ; 2 uses
  %i.aa = add i32 %i.x, %i.z
  %i.ab = sdiv i32 %i.aa, %i.z
  %i.ac = add nsw i32 %i.ab, 7
  %i.ad = sdiv i32 %i.ac, 8
  %i.ae = shl nsw i32 %i.ad, 3
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.v)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.v, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !50
  %i.af = icmp sgt i32 %1, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %7, align 4, !tbaa !50    ; 3 uses
  %i.ah = add nsw i32 %1, -1                      ; 2 uses
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = sdiv i32 %i.ai, %i.ag                   ; 2 uses
  %i.ak = add i32 %i.ah, %i.aj
  %i.al = sdiv i32 %i.ak, %i.aj
  %i.am = add nsw i32 %i.al, 3
  %i.an = sdiv i32 %i.am, 4
  %i.ao = shl nsw i32 %i.an, 2
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.ag)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = icmp sgt i32 %.0, 1
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.ar = sdiv i32 %i.aq, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 1)
  %i.as = add nuw nsw i32 %.sroa.speculated, 7
  %i.at = and i32 %i.as, 2147483640
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.aq)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = icmp sgt i32 %3, 0
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = add nuw nsw i32 %3, 7
  %i.aw = and i32 %i.av, 2147483640
  store i32 %i.aw, ptr %6, align 4, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = icmp sgt i32 %4, 0
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = add nuw nsw i32 %4, 3
  %i.az = and i32 %i.ay, 2147483644
  store i32 %i.az, ptr %7, align 4, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ba = icmp sgt i32 %5, 0
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = add nuw nsw i32 %5, 7
  %i.bc = and i32 %i.bb, 2147483640
  store i32 %i.bc, ptr %8, align 4, !tbaa !50
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
begin_hunk_1_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.17:bb.a
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
  %i.i = and i32 %i.h, 2147483640
  %.sroa.speculated115 = tail call i32 @llvm.umax.i32(i32 %i.i, i32 8) ; 6 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !50
  store i32 %.sroa.speculated115, ptr %7, align 4, !tbaa !50
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !50
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %2, -1                       ; 2 uses
  %i.l = add nuw i32 %i.k, %.sroa.speculated115
  %10 = udiv i32 %i.l, %.sroa.speculated115       ; 3 uses
  %i.m = add nuw i32 %i.k, %10
  %11 = udiv i32 %i.m, %10
  %i.n = add nuw nsw i32 %11, 7
  %12 = and i32 %i.n, -8
  %.sroa.speculated99 = tail call i32 @llvm.umin.i32(i32 %12, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !50
  %i.o = icmp eq i32 %10, 1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = fmul fast float %i.e, 2.500000e-01
  %13 = uitofp nneg i32 %.sroa.speculated99 to float
  %i.q = fdiv fast float %i.p, %13
  %i.r = fptosi float %i.q to i32
  %14 = and i32 %i.r, 2147483640
  %.sroa.speculated93 = tail call i32 @llvm.umax.i32(i32 %14, i32 8) ; 2 uses
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !50
  store i32 %.sroa.speculated93, ptr %7, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.0)
  %i.t = load i32, ptr %6, align 4, !tbaa !50
  %i.u = mul nsw i32 %i.t, %.sroa.speculated83    ; 4 uses
  %i.v = icmp sgt i32 %0, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %0, -1                       ; 2 uses
  %i.x = add i32 %i.w, %i.u
  %i.y = sdiv i32 %i.x, %i.u                      ; 2 uses
  %i.z = add i32 %i.w, %i.y
  %i.aa = sdiv i32 %i.z, %i.y
  %i.ab = add nsw i32 %i.aa, 7
  %i.ac = sdiv i32 %i.ab, 8
  %i.ad = shl nsw i32 %i.ac, 3
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.u)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.u, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !50
  %i.ae = icmp sgt i32 %1, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %7, align 4, !tbaa !50    ; 3 uses
  %i.ag = add nsw i32 %1, -1                      ; 2 uses
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = sdiv i32 %i.ah, %i.af                   ; 2 uses
  %i.aj = add i32 %i.ag, %i.ai
  %i.ak = sdiv i32 %i.aj, %i.ai
  %i.al = add nsw i32 %i.ak, 7
  %i.am = sdiv i32 %i.al, 8
  %i.an = shl nsw i32 %i.am, 3
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.af)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = icmp sgt i32 %.0, 1
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %6, align 4, !tbaa !50    ; 2 uses
  %i.aq = sdiv i32 %i.ap, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 1)
  %i.ar = add nuw nsw i32 %.sroa.speculated, 7
  %i.as = and i32 %i.ar, 2147483640
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ap)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = icmp sgt i32 %3, 0
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = add nuw nsw i32 %3, 7
  %i.av = and i32 %i.au, 2147483640
  store i32 %i.av, ptr %6, align 4, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = icmp sgt i32 %4, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = add nuw nsw i32 %4, 7
  %i.ay = and i32 %i.ax, 2147483640
  store i32 %i.ay, ptr %7, align 4, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = icmp sgt i32 %5, 0
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = add nuw nsw i32 %5, 7
  %i.bb = and i32 %i.ba, 2147483640
  store i32 %i.bb, ptr %8, align 4, !tbaa !50
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
end_hunk_1
