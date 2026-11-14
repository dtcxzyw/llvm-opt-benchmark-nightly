Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86?download=true
inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn8Gemm_x8621create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !60
  %.not38 = icmp eq i32 %i.ga, -1
  br i1 %.not38, label %bb.bv, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !21 ; 2 uses
  %.not.i83 = icmp eq ptr %i.ge, null
  br i1 %.not.i83, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gf = atomicrmw add ptr %i.ge, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gi = atomicrmw add ptr %i.gh, i32 -1 acq_rel, align 4
  %i.gj = icmp eq i32 %i.gi, 1
  br i1 %i.gj, label %bb.bi, label %_ZN4ncnn3MataSERKS0_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.gl, null
  %i.gm = load ptr, ptr %i.gc, align 8, !tbaa !23 ; 3 uses
  br i1 %.not3.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !15
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
  %i.gv = load <2 x ptr>, ptr %i.gb, align 8, !tbaa !61
  store <2 x ptr> %i.gv, ptr %i.gc, align 8, !tbaa !61
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !62
  store i64 %i.gx, ptr %i.gq, align 8, !tbaa !62
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !63
  store i32 %i.gz, ptr %i.gr, align 8, !tbaa !63
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !22
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !22
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.he = load <4 x i32>, ptr %i.hd, align 8, !tbaa !49
  store <4 x i32> %i.he, ptr %i.gs, align 8, !tbaa !49
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !55
  store i32 %i.hg, ptr %i.gt, align 8, !tbaa !55
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !24
  store i64 %i.hi, ptr %i.gu, align 8, !tbaa !24
  %i.hj = load i32, ptr %i.fz, align 8, !tbaa !60
  %i.hk = icmp eq i32 %i.hj, 3
  br i1 %i.hk, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !64, !range !45, !noundef !46
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !48
  %i.hq = and i32 %i.hp, 3
  %i.hr = icmp eq i32 %i.hq, 0
  %i.hs = select i1 %i.hr, i32 4, i32 1
  call void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.gb, ptr noundef nonnull align 8 dereferenceable(72) %i.gc, i32 noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.ht = load ptr, ptr %i.gc, align 8, !tbaa !23
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.bn
  %i.hv = load i64, ptr %i.gu, align 8, !tbaa !24
  %i.hw = load i32, ptr %i.gt, align 8, !tbaa !55
  %i.hx = sext i32 %i.hw to i64
  %i.hy = mul i64 %i.hv, %i.hx
  %.not84 = icmp eq i64 %i.hy, 0
  br i1 %.not84, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit, %bb.bm, %_ZN4ncnn3MataSERKS0_.exit
  %i.hz = load i8, ptr %1, align 8, !tbaa !56, !range !45, !noundef !46
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.ib = load ptr, ptr %i.gd, align 8, !tbaa !21 ; 2 uses
  %.not.i57 = icmp eq ptr %i.ib, null
  br i1 %.not.i57, label %_ZN4ncnn3Mat7releaseEv.exit59, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ic = atomicrmw add ptr %i.ib, i32 -1 acq_rel, align 4
  %i.id = icmp eq i32 %i.ic, 1
  br i1 %i.id, label %bb.br, label %_ZN4ncnn3Mat7releaseEv.exit59

bb.br:                                            ; preds = %bb.bq
  %i.ie = load ptr, ptr %i.ha, align 8, !tbaa !22 ; 3 uses
  %.not3.i58 = icmp eq ptr %i.ie, null
  %i.if = load ptr, ptr %i.gb, align 8, !tbaa !23 ; 3 uses
  br i1 %.not3.i58, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ig = load ptr, ptr %i.ie, align 8, !tbaa !15
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef %i.if), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit59

bb.bt:                                            ; preds = %bb.br
  %.not.i71 = icmp eq ptr %i.if, null
  br i1 %.not.i71, label %_ZN4ncnn3Mat7releaseEv.exit59, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @free(ptr noundef nonnull %i.if) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit59

_ZN4ncnn3Mat7releaseEv.exit59:                    ; preds = %bb.bu, %bb.bt, %bb.bp, %bb.bq, %bb.bs
  store i64 0, ptr %i.hh, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gb, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.hd, i8 0, i64 20, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bo, %_ZN4ncnn3Mat7releaseEv.exit59, %bb.bd, %bb.bc
  %i.ij = load i32, ptr %i.p, align 8, !tbaa !47
  %.not39 = icmp eq i32 %i.ij, 0
  br i1 %.not39, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.ik = load i32, ptr %i.ct, align 4, !tbaa !57
  %.not40 = icmp eq i32 %i.ik, 0
  br i1 %.not40, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.il = load i32, ptr %i.fx, align 8, !tbaa !59
  %.not41 = icmp eq i32 %i.il, 0
  br i1 %.not41, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !54
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 580
  store i32 %i.in, ptr %i.io, align 4, !tbaa !72
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
  %i.h = fptosi float %i.g to i32
  %10 = and i32 %i.h, 2147483644
  %.sroa.speculated115 = tail call i32 @llvm.umax.i32(i32 %10, i32 4) ; 6 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !49
  store i32 %.sroa.speculated115, ptr %7, align 4, !tbaa !49
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !49
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = add nuw i32 %i.j, %.sroa.speculated115
  %i.l = udiv i32 %i.k, %.sroa.speculated115      ; 3 uses
  %i.m = add nuw i32 %i.j, %i.l
  %i.n = udiv i32 %i.m, %i.l
  %i.o = add nuw nsw i32 %i.n, 3
  %i.p = and i32 %i.o, -4
  %.sroa.speculated99 = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !49
  %i.q = icmp eq i32 %i.l, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = fmul fast float %i.e, 1.250000e-01
  %i.s = uitofp nneg i32 %.sroa.speculated99 to float
  %i.t = fdiv fast float %i.r, %i.s
  %i.u = fptosi float %i.t to i32
  %11 = and i32 %i.u, 2147483644
  %.sroa.speculated93 = tail call i32 @llvm.umax.i32(i32 %11, i32 4) ; 2 uses
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !49
  store i32 %.sroa.speculated93, ptr %7, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.v = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %.0)
  %i.w = load i32, ptr %6, align 4, !tbaa !49
  %i.x = mul nsw i32 %i.w, %.sroa.speculated83    ; 4 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %0, -1                       ; 2 uses
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sdiv i32 %i.aa, %i.x                    ; 2 uses
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 3
  %i.af = sdiv i32 %i.ae, 4
  %i.ag = shl nsw i32 %i.af, 2
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.x)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.x, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !49
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %7, align 4, !tbaa !49    ; 3 uses
  %i.aj = add nsw i32 %1, -1                      ; 2 uses
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai                   ; 2 uses
  %i.am = add i32 %i.aj, %i.al
  %i.an = sdiv i32 %i.am, %i.al
  %i.ao = add nsw i32 %i.an, 3
  %i.ap = sdiv i32 %i.ao, 4
  %i.aq = shl nsw i32 %i.ap, 2
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ai)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = icmp sgt i32 %.0, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %6, align 4, !tbaa !49    ; 2 uses
  %i.at = sdiv i32 %i.as, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1)
  %i.au = add nuw nsw i32 %.sroa.speculated, 3
  %i.av = and i32 %i.au, 2147483644
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.as)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = add nuw nsw i32 %3, 3
  %i.ay = and i32 %i.ax, 2147483644
  store i32 %i.ay, ptr %6, align 4, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = icmp sgt i32 %4, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i32 %4, 3
  %i.bb = and i32 %i.ba, 2147483644
  store i32 %i.bb, ptr %7, align 4, !tbaa !49
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = icmp sgt i32 %5, 0
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = add nuw nsw i32 %5, 3
  %i.be = and i32 %i.bd, 2147483644
  store i32 %i.be, ptr %8, align 4, !tbaa !49
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn8Gemm_x8615create_pipelineERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !49     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !49
  %i.h = load i32, ptr %0, align 4, !tbaa !49     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !49
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !49
  %i.k = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
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
  %i.r = load i32, ptr %3, align 4, !tbaa !49     ; 2 uses
  %i.s = sdiv i32 %.068, %i.r                     ; 2 uses
  %i.t = srem i32 %.068, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !49     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !49     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.t                   ; 3 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !49
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 2 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !49
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !75, !noalias !132
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !23, !noalias !132
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !24, !noalias !132
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !62, !noalias !132 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.p, align 8, !tbaa !76
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
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !49
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
end_hunk_0
begin_hunk_1_@_ZN4ncnnL8gemm_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiRKNS_6OptionE.omp_outlined.8:bb.a
  store i64 %spec.select, ptr %i.x, align 8, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %.noexc130, %bb.h
  %.val134 = phi ptr [ %i.bt, %.noexc130 ], [ null, %bb.h ] ; 5 uses
  %i.cg = load i32, ptr %10, align 4, !tbaa !49   ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph218, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph218:                                        ; preds = %bb.j
  %i.ci = icmp sgt i32 %.fr222, 0
  %.pre225 = load i32, ptr %11, align 4, !tbaa !49 ; 2 uses
  br i1 %i.ci, label %.lr.ph218.split.us, label %.lr.ph218.split

.lr.ph218.split.us:                               ; preds = %.lr.ph218, %bb.s
  %i.cj = phi i32 [ %i.ei, %bb.s ], [ %.pre225, %.lr.ph218 ]
  %i.ck = phi i32 [ %i.ek, %bb.s ], [ %i.cg, %.lr.ph218 ]
  %.081216.us = phi i32 [ %i.ej, %bb.s ], [ 0, %.lr.ph218 ] ; 7 uses
  %i.cl = sub nsw i32 %i.ck, %.081216.us
  %.sroa.speculated192.us = call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.cl) ; 3 uses
  %i.cm = load i32, ptr %7, align 4, !tbaa !49
  %i.cn = icmp eq i32 %i.cm, 3
  br i1 %i.cn, label %bb.k, label %.lr.ph.us

bb.k:                                             ; preds = %.lr.ph218.split.us
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val134, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216.us, i32 noundef %.sroa.speculated192.us)
  %.pre226 = load i32, ptr %7, align 4, !tbaa !49
  %i.co = icmp eq i32 %.pre226, 3
  %i.cp = select i1 %i.co, ptr %16, ptr %12
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.k, %.lr.ph218.split.us
  %i.cq = phi ptr [ %i.cp, %bb.k ], [ %12, %.lr.ph218.split.us ]
  %i.cr = icmp eq i32 %.081216.us, 0
  %.pre227 = load i32, ptr %6, align 4, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.us, %_ZN4ncnn3MatD2Ev.exit91.us
  %i.cs = phi i32 [ %.pre227, %.lr.ph.us ], [ %i.ef, %_ZN4ncnn3MatD2Ev.exit91.us ]
  %.0215.us = phi i32 [ 0, %.lr.ph.us ], [ %i.eg, %_ZN4ncnn3MatD2Ev.exit91.us ] ; 7 uses
  %i.ct = sub nsw i32 %.fr222, %.0215.us
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.cs, i32 %i.ct) ; 3 uses
  %i.cu = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc128.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc128.us:                                     ; preds = %bb.l
  %i.cv = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !444
  %i.cw = load ptr, ptr %13, align 8, !tbaa !23, !noalias !444
  %i.cx = load i64, ptr %i.ah, align 8, !tbaa !24, !noalias !444
  %i.cy = sext i32 %i.cu to i64
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = load i64, ptr %i.ai, align 8, !tbaa !62, !noalias !444 ; 2 uses
  %i.db = mul i64 %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.db
  %i.dd = sext i32 %i.cv to i64
  %i.de = load i32, ptr %6, align 4, !tbaa !49
  %i.df = sdiv i32 %.0215.us, %i.de
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = mul i64 %i.da, %i.dd
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.di ; 3 uses
  %i.dk = load i32, ptr %11, align 4, !tbaa !49
  %i.dl = sdiv i32 %.081216.us, %i.dk
  %i.dm = load i32, ptr %i.aj, align 4, !tbaa !75, !noalias !445
  %i.dn = load ptr, ptr %14, align 8, !tbaa !23, !noalias !445
  %i.do = load i64, ptr %i.ak, align 8, !tbaa !24, !noalias !445
  %i.dp = sext i32 %i.dl to i64
  %i.dq = mul i64 %i.do, %i.dp
  %i.dr = load i64, ptr %i.al, align 8, !tbaa !62, !noalias !445 ; 2 uses
  %i.ds = mul i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ds
  %i.du = sext i32 %i.dm to i64
  %i.dv = mul i64 %i.dr, %i.du
  %i.dw = mul i64 %i.dv, %i.dg
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dw
  br i1 %i.cr, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.noexc128.us
  %i.dy = load i32, ptr %4, align 4, !tbaa !49
  %.not89.us = icmp eq i32 %i.dy, 0
  br i1 %.not89.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @_ZN4ncnnL21transpose_pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr %i.dj, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.0215.us, i32 noundef %.sroa.speculated.us)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr %i.dj, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.0215.us, i32 noundef %.sroa.speculated.us)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.noexc128.us
  %i.dz = load i32, ptr %8, align 4, !tbaa !49
  %.not90.us = icmp eq i32 %i.dz, 0
  br i1 %.not90.us, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit91.us

bb.q:                                             ; preds = %bb.p
  %i.ea = load i32, ptr %6, align 4, !tbaa !49
  %i.eb = add nsw i32 %i.ea, %.0215.us
  %i.ec = icmp sge i32 %i.eb, %.fr222
  br label %_ZN4ncnn3MatD2Ev.exit91.us

_ZN4ncnn3MatD2Ev.exit91.us:                       ; preds = %bb.q, %bb.p
  %i.ed = phi i1 [ false, %bb.p ], [ %i.ec, %bb.q ]
  %i.ee = load i32, ptr %7, align 4, !tbaa !49
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib(ptr %i.dj, ptr %i.dx, ptr noundef nonnull align 8 dereferenceable(72) %i.cq, ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.ee, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216.us, i32 noundef %.sroa.speculated192.us, i32 noundef %.0215.us, i32 noundef %.sroa.speculated.us, i1 noundef zeroext %i.ed)
  %i.ef = load i32, ptr %6, align 4, !tbaa !49    ; 2 uses
  %i.eg = add nsw i32 %i.ef, %.0215.us            ; 2 uses
  %i.eh = icmp slt i32 %i.eg, %.fr222
  br i1 %i.eh, label %bb.l, label %._crit_edge.us, !llvm.loop !441

bb.r:                                             ; preds = %._crit_edge.us
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216.us, i32 noundef %.sroa.speculated192.us)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.us
  %i.ei = load i32, ptr %11, align 4, !tbaa !49   ; 2 uses
  %i.ej = add nsw i32 %i.ei, %.081216.us          ; 2 uses
  %i.ek = load i32, ptr %10, align 4, !tbaa !49   ; 2 uses
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph218.split.us, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !442

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit91.us
  %i.em = load i32, ptr %8, align 4, !tbaa !49
  %.not88.us = icmp eq i32 %i.em, 0
  br i1 %.not88.us, label %bb.s, label %bb.r

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.en) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.w, %bb.s, %bb.j
  %.pre230 = load i32, ptr %i.b, align 4, !tbaa !49
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
  %i.es = load i32, ptr %7, align 4, !tbaa !49
  %i.et = icmp eq i32 %i.es, 3
  br i1 %i.et, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph218.split
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val134, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216, i32 noundef %.sroa.speculated192)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph218.split
  %i.eu = load i32, ptr %8, align 4, !tbaa !49
  %.not88 = icmp eq i32 %i.eu, 0
  br i1 %.not88, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val134, ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.an, i32 noundef %.sroa.speculated212, i32 noundef %.081216, i32 noundef %.sroa.speculated192)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ev = load i32, ptr %11, align 4, !tbaa !49   ; 2 uses
  %i.ew = add nsw i32 %i.ev, %.081216             ; 2 uses
  %i.ex = load i32, ptr %10, align 4, !tbaa !49   ; 2 uses
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph218.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !442

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
  %10 = and i32 %i.h, 2147483644
  %.sroa.speculated115 = tail call i32 @llvm.umax.i32(i32 %10, i32 4) ; 6 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !49
  store i32 %.sroa.speculated115, ptr %7, align 4, !tbaa !49
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !49
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = add nuw i32 %i.j, %.sroa.speculated115
  %i.l = udiv i32 %i.k, %.sroa.speculated115      ; 3 uses
  %i.m = add nuw i32 %i.j, %i.l
  %i.n = udiv i32 %i.m, %i.l
  %i.o = add nuw nsw i32 %i.n, 3
  %i.p = and i32 %i.o, -4
  %.sroa.speculated99 = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !49
  %i.q = icmp eq i32 %i.l, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = fmul fast float %i.e, 5.000000e-01
  %i.s = uitofp nneg i32 %.sroa.speculated99 to float
  %i.t = fdiv fast float %i.r, %i.s
  %i.u = fptosi float %i.t to i32
  %11 = and i32 %i.u, 2147483644
  %.sroa.speculated93 = tail call i32 @llvm.umax.i32(i32 %11, i32 4) ; 2 uses
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !49
  store i32 %.sroa.speculated93, ptr %7, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.v = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %.0)
  %i.w = load i32, ptr %6, align 4, !tbaa !49
  %i.x = mul nsw i32 %i.w, %.sroa.speculated83    ; 4 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %0, -1                       ; 2 uses
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sdiv i32 %i.aa, %i.x                    ; 2 uses
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 3
  %i.af = sdiv i32 %i.ae, 4
  %i.ag = shl nsw i32 %i.af, 2
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.x)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.x, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !49
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %7, align 4, !tbaa !49    ; 3 uses
  %i.aj = add nsw i32 %1, -1                      ; 2 uses
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai                   ; 2 uses
  %i.am = add i32 %i.aj, %i.al
  %i.an = sdiv i32 %i.am, %i.al
  %i.ao = add nsw i32 %i.an, 3
  %i.ap = sdiv i32 %i.ao, 4
  %i.aq = shl nsw i32 %i.ap, 2
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ai)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = icmp sgt i32 %.0, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %6, align 4, !tbaa !49    ; 2 uses
  %i.at = sdiv i32 %i.as, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1)
  %i.au = add nuw nsw i32 %.sroa.speculated, 3
  %i.av = and i32 %i.au, 2147483644
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.as)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = add nuw nsw i32 %3, 3
  %i.ay = and i32 %i.ax, 2147483644
  store i32 %i.ay, ptr %6, align 4, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = icmp sgt i32 %4, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i32 %4, 3
  %i.bb = and i32 %i.ba, 2147483644
  store i32 %i.bb, ptr %7, align 4, !tbaa !49
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = icmp sgt i32 %5, 0
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = add nuw nsw i32 %5, 3
  %i.be = and i32 %i.bd, 2147483644
  store i32 %i.be, ptr %8, align 4, !tbaa !49
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev() local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn8Gemm_x8620create_pipeline_int8ERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef readonly captures(none) %7) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !49     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !49
  %i.h = load i32, ptr %0, align 4, !tbaa !49     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !49
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !49
  %i.k = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %.not75 = icmp sgt i32 %i.k, %i.j
  br i1 %.not75, label %._crit_edge78, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 584
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 628
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 648
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 332 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 304 ; 4 uses
  %i.t = load i32, ptr %4, align 4, !tbaa !49     ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.split, label %._crit_edge78

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.v = phi i32 [ %i.ab, %._crit_edge ], [ %i.j, %.lr.ph ]
  %i.w = phi i32 [ %i.ac, %._crit_edge ], [ %i.t, %.lr.ph ] ; 3 uses
  %.03076 = phi i32 [ %i.ad, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = load i32, ptr %3, align 4, !tbaa !49
  %i.y = mul nsw i32 %i.x, %.03076                ; 4 uses
  %i.z = icmp sgt i32 %i.w, 0
  br i1 %i.z, label %.noexc40.lr.ph, label %._crit_edge

.noexc40.lr.ph:                                   ; preds = %.lr.ph.split
  %i.aa = sext i32 %i.y to i64                    ; 4 uses
  %.pre = load i32, ptr %5, align 4, !tbaa !49
  br label %.noexc40

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %.pre87 = load i32, ptr %i.b, align 4, !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.ab = phi i32 [ %.pre87, %._crit_edge.loopexit ], [ %i.v, %.lr.ph.split ] ; 2 uses
  %i.ac = phi i32 [ %i.kv, %._crit_edge.loopexit ], [ %i.w, %.lr.ph.split ]
  %i.ad = add nsw i32 %.03076, 1
  %.not.not = icmp slt i32 %.03076, %i.ab
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge78, !llvm.loop !446

.noexc40:                                         ; preds = %.noexc40.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.ae = phi i32 [ %.pre, %.noexc40.lr.ph ], [ %i.kt, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.af = phi i32 [ %i.w, %.noexc40.lr.ph ], [ %i.kv, %_ZN4ncnn3MatD2Ev.exit ]
  %.074 = phi i32 [ 0, %.noexc40.lr.ph ], [ %i.ku, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !49
  %i.ah = sub nsw i32 %i.ag, %i.y
  %i.ai = load i32, ptr %3, align 4, !tbaa !49    ; 2 uses
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ah) ; 9 uses
  %i.aj = sub i32 %i.af, %.074
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.aj) ; 21 uses
  %i.ak = sdiv i32 %i.y, %i.ai
  %i.al = load i32, ptr %i.m, align 4, !tbaa !75, !noalias !460
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !23, !noalias !460
  %i.an = load i64, ptr %i.n, align 8, !tbaa !24, !noalias !460
  %i.ao = sext i32 %i.ak to i64
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !62, !noalias !460 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = sext i32 %i.al to i64
  %i.au = sdiv i32 %.074, %i.ae
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %i.aq, %i.at
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax ; 5 uses
  %i.az = load i32, ptr %i.p, align 8, !tbaa !76
  %.not31 = icmp eq i32 %i.az, 0
  br i1 %.not31, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.noexc40
  %i.ba = load i32, ptr %i.r, align 4, !tbaa !75  ; 5 uses
  %i.bb = icmp sgt i32 %.sroa.speculated63, 3
  br i1 %i.bb, label %.lr.ph17.i, label %.preheader2.i

end_hunk_1
begin_hunk_2_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.akq = mul nsw <4 x i32> %i.akp, %i.akn
  %i.akr = add nsw <4 x i32> %i.akq, %.epil.init
  %i.aks = getelementptr inbounds nuw i8, ptr %.06721472.epil.init, i64 4
  %i.akt = getelementptr inbounds nuw i8, ptr %.117591471.epil.init, i64 4
  br label %._crit_edge1480.loopexit

._crit_edge1480.loopexit:                         ; preds = %._crit_edge1480.loopexit.unr-lcssa, %.lr.ph1479.epil.preheader
  %.lcssa1954 = phi <4 x i32> [ %i.akj, %._crit_edge1480.loopexit.unr-lcssa ], [ %i.akr, %.lr.ph1479.epil.preheader ]
  %.lcssa1953 = phi ptr [ %i.akk, %._crit_edge1480.loopexit.unr-lcssa ], [ %i.aks, %.lr.ph1479.epil.preheader ]
  %.lcssa1952 = phi ptr [ %i.akl, %._crit_edge1480.loopexit.unr-lcssa ], [ %i.akt, %.lr.ph1479.epil.preheader ]
  %i.aku = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %.lcssa1954)
  br label %._crit_edge1480

._crit_edge1480:                                  ; preds = %._crit_edge1480.loopexit, %bb.aa
  %.11759.lcssa = phi ptr [ %.107581497, %bb.aa ], [ %.lcssa1952, %._crit_edge1480.loopexit ] ; 4 uses
  %.0672.lcssa = phi ptr [ %.26971505, %bb.aa ], [ %.lcssa1953, %._crit_edge1480.loopexit ] ; 3 uses
  %.0671.lcssa = phi i32 [ 0, %bb.aa ], [ %i.om, %._crit_edge1480.loopexit ] ; 4 uses
  %i.akv = phi i32 [ 0, %bb.aa ], [ %i.aku, %._crit_edge1480.loopexit ]
  %op.rdx = add i32 %i.akv, %.0674                ; 3 uses
  %i.akw = icmp slt i32 %.0671.lcssa, %8
  br i1 %i.akw, label %.lr.ph1493.preheader, label %._crit_edge1494

.lr.ph1493.preheader:                             ; preds = %._crit_edge1480
  %i.akx = xor i32 %.0671.lcssa, -1
  %i.aky = add i32 %8, %i.akx                     ; 2 uses
  %i.akz = zext i32 %i.aky to i64
  %i.ala = add nuw nsw i64 %i.akz, 1              ; 2 uses
  %min.iters.check = icmp ult i32 %i.aky, 7
  br i1 %min.iters.check, label %.lr.ph1493.preheader1930, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1493.preheader
  %n.vec = and i64 %i.ala, 8589934584             ; 5 uses
  %i.alb = trunc i64 %n.vec to i32
  %i.alc = add i32 %.0671.lcssa, %i.alb
  %i.ald = getelementptr i8, ptr %.0672.lcssa, i64 %n.vec
  %i.ale = getelementptr i8, ptr %.11759.lcssa, i64 %n.vec ; 2 uses
  %i.alf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %op.rdx, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.alf, %vector.ph ], [ %i.alo, %vector.body ]
  %vec.phi1923 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.alp, %vector.body ]
  %next.gep = getelementptr i8, ptr %.0672.lcssa, i64 %index ; 2 uses
  %next.gep1924 = getelementptr i8, ptr %.11759.lcssa, i64 %index ; 2 uses
  %i.alg = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !87
  %wide.load1925 = load <4 x i8>, ptr %i.alg, align 1, !tbaa !87
  %i.alh = sext <4 x i8> %wide.load to <4 x i32>
  %i.ali = sext <4 x i8> %wide.load1925 to <4 x i32>
  %i.alj = getelementptr i8, ptr %next.gep1924, i64 4
  %wide.load1926 = load <4 x i8>, ptr %next.gep1924, align 1, !tbaa !87
  %wide.load1927 = load <4 x i8>, ptr %i.alj, align 1, !tbaa !87
  %i.alk = sext <4 x i8> %wide.load1926 to <4 x i32>
  %i.all = sext <4 x i8> %wide.load1927 to <4 x i32>
  %i.alm = mul nsw <4 x i32> %i.alk, %i.alh
  %i.aln = mul nsw <4 x i32> %i.all, %i.ali
  %i.alo = add <4 x i32> %i.alm, %vec.phi         ; 2 uses
  %i.alp = add <4 x i32> %i.aln, %vec.phi1923     ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.alq = icmp eq i64 %index.next, %n.vec
  br i1 %i.alq, label %middle.block, label %vector.body, !llvm.loop !579

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.alp, %i.alo
  %i.alr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ala, %n.vec
  br i1 %cmp.n, label %._crit_edge1494, label %.lr.ph1493.preheader1930

.lr.ph1493.preheader1930:                         ; preds = %.lr.ph1493.preheader, %middle.block
  %.11491.ph = phi i32 [ %.0671.lcssa, %.lr.ph1493.preheader ], [ %i.alc, %middle.block ]
  %.16731490.ph = phi ptr [ %.0672.lcssa, %.lr.ph1493.preheader ], [ %i.ald, %middle.block ]
  %.16751489.ph = phi i32 [ %op.rdx, %.lr.ph1493.preheader ], [ %i.alr, %middle.block ]
  %.127601488.ph = phi ptr [ %.11759.lcssa, %.lr.ph1493.preheader ], [ %i.ale, %middle.block ]
  br label %.lr.ph1493

.lr.ph1493:                                       ; preds = %.lr.ph1493.preheader1930, %.lr.ph1493
  %.11491 = phi i32 [ %i.ama, %.lr.ph1493 ], [ %.11491.ph, %.lr.ph1493.preheader1930 ]
  %.16731490 = phi ptr [ %i.aly, %.lr.ph1493 ], [ %.16731490.ph, %.lr.ph1493.preheader1930 ] ; 2 uses
  %.16751489 = phi i32 [ %i.alx, %.lr.ph1493 ], [ %.16751489.ph, %.lr.ph1493.preheader1930 ]
  %.127601488 = phi ptr [ %i.alz, %.lr.ph1493 ], [ %.127601488.ph, %.lr.ph1493.preheader1930 ] ; 2 uses
  %i.als = load i8, ptr %.16731490, align 1, !tbaa !87
  %i.alt = sext i8 %i.als to i32
  %i.alu = load i8, ptr %.127601488, align 1, !tbaa !87
  %i.alv = sext i8 %i.alu to i32
  %i.alw = mul nsw i32 %i.alv, %i.alt
  %i.alx = add nsw i32 %i.alw, %.16751489         ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.16731490, i64 1
  %i.alz = getelementptr inbounds nuw i8, ptr %.127601488, i64 1 ; 2 uses
  %i.ama = add nuw nsw i32 %.11491, 1             ; 2 uses
  %exitcond1675.not = icmp eq i32 %i.ama, %8
  br i1 %exitcond1675.not, label %._crit_edge1494, label %.lr.ph1493, !llvm.loop !580

._crit_edge1494:                                  ; preds = %.lr.ph1493, %middle.block, %._crit_edge1480
  %.12760.lcssa = phi ptr [ %.11759.lcssa, %._crit_edge1480 ], [ %i.ale, %middle.block ], [ %i.alz, %.lr.ph1493 ]
  %.1675.lcssa = phi i32 [ %op.rdx, %._crit_edge1480 ], [ %i.alr, %middle.block ], [ %i.alx, %.lr.ph1493 ]
  store i32 %.1675.lcssa, ptr %.141499, align 4, !tbaa !49
  %i.amb = getelementptr inbounds nuw i8, ptr %.141499, i64 4 ; 2 uses
  %i.amc = add nuw nsw i32 %.37471498, 1          ; 2 uses
  %exitcond1676.not = icmp eq i32 %i.amc, %6
  br i1 %exitcond1676.not, label %._crit_edge1501, label %.lr.ph1500, !llvm.loop !581

._crit_edge1501:                                  ; preds = %._crit_edge1494, %.preheader1056
  %.14.lcssa = phi ptr [ %.13.lcssa, %.preheader1056 ], [ %i.amb, %._crit_edge1494 ]
  %i.amd = getelementptr inbounds i8, ptr %.26971505, i64 %i.ob
  %i.ame = add nuw nsw i32 %.27031503, 1          ; 2 uses
  %scevgep1672 = getelementptr i8, ptr %indvars.iv1671, i64 %i.ob
  %exitcond1677.not = icmp eq i32 %i.ame, %4
  br i1 %exitcond1677.not, label %.loopexit, label %.preheader1059, !llvm.loop !582

.loopexit:                                        ; preds = %._crit_edge1501, %.preheader1060, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, i32 noundef %10) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 47 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !74
  %i.n = icmp eq i32 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = select i1 %i.n, i64 %i.p, i64 %i.s       ; 14 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.v = icmp sgt i32 %4, 3
  br i1 %i.v, label %.lr.ph932.i, label %.preheader885.i

.lr.ph932.i:                                      ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !63   ; 2 uses
  %.not1268.i = icmp eq i32 %10, 0                ; 5 uses
  %i.y = sext i32 %5 to i64                       ; 2 uses
  %i.z = mul i64 %i.k, %i.y
  %i.aa = mul nsw i32 %i.b, %5
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sext i32 %3 to i64                      ; 5 uses
  %i.ad = icmp eq i32 %2, 0                       ; 5 uses
  %i.ae = add i32 %2, -1
  %or.cond.i = icmp ult i32 %i.ae, 2              ; 5 uses
  %i.af = mul nsw i32 %i.x, %5
  %i.ag = sext i32 %i.af to i64
  %i.ah = insertelement <4 x float> poison, float %9, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  %i.aj = icmp sgt i32 %6, 7
  %i.ak = icmp eq i32 %i.x, 4                     ; 5 uses
  %.idx1286.i = shl i64 %i.t, 3                   ; 5 uses
  %.idx1287.i = mul i64 %i.t, 12                  ; 5 uses
  %i.al = fcmp fast oeq float %9, 1.000000e+00    ; 4 uses
  %i.am = fcmp fast une float %8, 1.000000e+00    ; 3 uses
  %i.an = insertelement <4 x float> poison, float %8, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer ; 14 uses
  %.idx1293.i = shl i64 %i.k, 3                   ; 7 uses
  %.idx1294.i = mul i64 %i.k, 12                  ; 6 uses
  %.idx1295.i = shl i64 %i.k, 4                   ; 3 uses
  %.idx1296.i = mul i64 %i.k, 20
  %.idx1297.i = mul i64 %i.k, 24
  %.idx1298.i = mul i64 %i.k, 28
  %.idx1299.i = shl i64 %i.k, 5
  %i.ap = select ninf nsz i1 %i.am, <4 x float> %i.ao, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.aq = and i32 %6, -8
  %i.ar = zext nneg i32 %4 to i64
  %i.as = sext i32 %i.b to i64
  %i.at = insertelement <4 x float> poison, float %9, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.av = insertelement <4 x float> poison, float %9, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %9, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

.preheader885.loopexit.i:                         ; preds = %._crit_edge.i
  %i.az = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader885.i

.preheader885.i:                                  ; preds = %.preheader885.loopexit.i, %bb.a
  %.01190.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.az, %.preheader885.loopexit.i ] ; 3 uses
  %.01175.lcssa.i = phi ptr [ %.0.val, %bb.a ], [ %.41179.lcssa.i, %.preheader885.loopexit.i ] ; 2 uses
  %.01166.lcssa.i = phi ptr [ %i.u, %bb.a ], [ %.16.lcssa.i, %.preheader885.loopexit.i ] ; 2 uses
  %i.ba = or disjoint i32 %.01190.lcssa.i, 1
  %i.bb = icmp slt i32 %i.ba, %4
  br i1 %i.bb, label %.lr.ph981.i, label %.preheader881.i

.lr.ph981.i:                                      ; preds = %.preheader885.i
  %.not1258.i = icmp eq i32 %10, 0                ; 6 uses
  %i.bc = sext i32 %5 to i64                      ; 4 uses
  %i.bd = mul i64 %i.k, %i.bc
  %or.cond11.i = icmp ult i32 %2, 3               ; 4 uses
  %i.be = sext i32 %3 to i64                      ; 3 uses
  %i.bf = icmp sgt i32 %6, 7
  %i.bg = insertelement <4 x float> poison, float %9, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.bi = fcmp fast oeq float %9, 1.000000e+00    ; 3 uses
  %i.bj = fcmp fast une float %8, 1.000000e+00    ; 2 uses
  %i.bk = insertelement <4 x float> poison, float %8, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx869.i = shl i64 %i.k, 3                    ; 3 uses
  %.idx870.i = mul i64 %i.k, 12                   ; 2 uses
  %.idx871.i = shl i64 %i.k, 4                    ; 5 uses
  %.idx872.i = mul i64 %i.k, 20
  %.idx873.i = mul i64 %i.k, 24
  %.idx874.i = mul i64 %i.k, 28
  %.idx1267.i = shl i64 %i.k, 5                   ; 3 uses
  %11 = insertelement <2 x i32> poison, i32 %2, i64 0
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <2 x i32> zeroinitializer
  %13 = add <2 x i32> %12, <i32 0, i32 -1>
  %14 = icmp ult <2 x i32> %13, <i32 1, i32 2>    ; 3 uses
  %i.bm = and i32 %6, -8
  %i.bn = zext nneg i32 %.01190.lcssa.i to i64
  %i.bo = sext i32 %4 to i64
  %i.bp = sext i32 %i.b to i64
  %i.bq = select ninf nsz i1 %i.bj, <4 x float> %i.bl, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %invariant.op1108.i = add nsw i64 %i.bo, -1
  %..idx869.i = select i1 %.not1258.i, i64 8, i64 %.idx869.i
  %i.br = insertelement <2 x float> poison, float %9, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %15 = extractelement <2 x i1> %14, i64 0        ; 4 uses
  %16 = extractelement <2 x i1> %14, i64 1
  %17 = insertelement <2 x float> poison, float %8, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = insertelement <2 x i1> poison, i1 %.not1258.i, i64 0
  %i.bu = shufflevector <2 x i1> %i.bt, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.cg

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph932.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph932.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 6 uses
  %.01166930.i = phi ptr [ %i.u, %.lr.ph932.i ], [ %.16.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.01175929.i = phi ptr [ %.0.val, %.lr.ph932.i ], [ %.41179.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  br i1 %.not1268.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.z
  %i.bx = add nsw i64 %indvars.iv.i, %i.ac
  %i.by = mul nsw i64 %i.bx, %i.as
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.by
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ca = add nsw i64 %indvars.iv.i, %i.ac
  %i.cb = mul i64 %i.ca, %i.k
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.01193.i = phi ptr [ %i.bz, %bb.c ], [ %i.cd, %bb.d ] ; 2 uses
  %i.ce = load ptr, ptr %7, align 8, !tbaa !23
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ac
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i
  %i.ch = load <4 x float>, ptr %i.cg, align 16, !tbaa !87 ; 15 uses
  %.not1269.i = icmp eq ptr %.01166930.i, null
  br i1 %.not1269.i, label %.thread675.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ad, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.ci = load float, ptr %.01166930.i, align 4, !tbaa !67
  %i.cj = fmul fast float %i.ci, %9
  %i.ck = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread675.i

bb.g:                                             ; preds = %bb.f
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cm = load ptr, ptr %0, align 8, !tbaa !23
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.ac
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i ; 2 uses
  %i.cp = load <4 x float>, ptr %i.co, align 1, !tbaa !87
  %i.cq = fmul fast <4 x float> %i.cp, %i.ai
  br label %.thread675.i

bb.i:                                             ; preds = %bb.g
  switch i32 %2, label %.thread675.i [
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cr = load ptr, ptr %0, align 8, !tbaa !23
  %i.cs = add nsw i64 %indvars.iv.i, %i.ac
  %i.ct = mul i64 %i.cs, %i.t
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.ag
  br label %.thread675.i

bb.k:                                             ; preds = %bb.i
  %i.cw = load ptr, ptr %0, align 8, !tbaa !23
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.y
  br label %.thread675.i

.thread675.i:                                     ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %.thread.i, %bb.e
  %.2485.i = phi nsz <4 x float> [ zeroinitializer, %bb.e ], [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.j ], [ %i.cl, %.thread.i ], [ %i.cq, %bb.h ] ; 2 uses
  %.31169.i = phi ptr [ null, %bb.e ], [ %i.cx, %bb.k ], [ %.01166930.i, %bb.i ], [ %i.cv, %bb.j ], [ %.01166930.i, %.thread.i ], [ %i.co, %bb.h ] ; 2 uses
  br i1 %i.aj, label %.lr.ph.i, label %.preheader888.i

.preheader888.i:                                  ; preds = %bb.aj, %.thread675.i
  %.3486.lcssa.i = phi <4 x float> [ %.2485.i, %.thread675.i ], [ %.7490.i, %bb.aj ] ; 2 uses
  %.01206.lcssa.i = phi i32 [ 0, %.thread675.i ], [ %i.aq, %bb.aj ] ; 3 uses
  %.11194.lcssa.i = phi ptr [ %.01193.i, %.thread675.i ], [ %.31196.i, %bb.aj ] ; 2 uses
  %.11176.lcssa.i = phi ptr [ %.01175929.i, %.thread675.i ], [ %i.lv, %bb.aj ] ; 2 uses
  %.41170.lcssa.i = phi ptr [ %.31169.i, %.thread675.i ], [ %.71173.i, %bb.aj ] ; 2 uses
  %i.cy = or disjoint i32 %.01206.lcssa.i, 3
  %i.cz = icmp slt i32 %i.cy, %6
  br i1 %i.cz, label %.lr.ph903.i, label %.preheader887.i

.lr.ph.i:                                         ; preds = %.thread675.i, %bb.aj
  %.41170893.i = phi ptr [ %.71173.i, %bb.aj ], [ %.31169.i, %.thread675.i ] ; 23 uses
  %.11176892.i = phi ptr [ %i.lv, %bb.aj ], [ %.01175929.i, %.thread675.i ] ; 9 uses
  %.11194891.i = phi ptr [ %.31196.i, %bb.aj ], [ %.01193.i, %.thread675.i ] ; 30 uses
  %.01206890.i = phi i32 [ %i.lw, %bb.aj ], [ 0, %.thread675.i ]
  %.3486889.i = phi <4 x float> [ %.7490.i, %bb.aj ], [ %.2485.i, %.thread675.i ] ; 20 uses
  %i.da = load <4 x i32>, ptr %.11176892.i, align 16, !tbaa !87
  %i.db = sitofp fast <4 x i32> %i.da to <4 x float> ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 16
  %i.dd = load <4 x i32>, ptr %i.dc, align 16, !tbaa !87
  %i.de = sitofp fast <4 x i32> %i.dd to <4 x float> ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 32
  %i.dg = load <4 x i32>, ptr %i.df, align 16, !tbaa !87
  %i.dh = sitofp fast <4 x i32> %i.dg to <4 x float> ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 48
  %i.dj = load <4 x i32>, ptr %i.di, align 16, !tbaa !87
  %i.dk = sitofp fast <4 x i32> %i.dj to <4 x float> ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 64
  %i.dm = load <4 x i32>, ptr %i.dl, align 16, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 80
  %i.do = load <4 x i32>, ptr %i.dn, align 16, !tbaa !87
  %i.dp = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 96
  %i.dq = load <4 x i32>, ptr %i.dp, align 16, !tbaa !87
  %i.dr = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 112
  %i.ds = load <4 x i32>, ptr %i.dr, align 16, !tbaa !87
  %i.dt = sitofp <4 x i32> %i.dm to <4 x float>
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.dv = sitofp <4 x i32> %i.do to <4 x float>
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.dx = sitofp <4 x i32> %i.dq to <4 x float>
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.dz = sitofp <4 x i32> %i.ds to <4 x float>
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.eb = shufflevector <4 x float> %i.db, <4 x float> %i.dy, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ec = shufflevector <4 x float> %i.db, <4 x float> %i.dy, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ed = shufflevector <4 x float> %i.de, <4 x float> %i.ea, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ee = shufflevector <4 x float> %i.de, <4 x float> %i.ea, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ef = shufflevector <4 x float> %i.dh, <4 x float> %i.du, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eg = shufflevector <4 x float> %i.dh, <4 x float> %i.du, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.dk, <4 x float> %i.dw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ei = shufflevector <4 x float> %i.dk, <4 x float> %i.dw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ej = shufflevector <4 x float> %i.eb, <4 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ek = shufflevector <4 x float> %i.eb, <4 x float> %i.ef, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.el = shufflevector <4 x float> %i.eg, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.em = shufflevector <4 x float> %i.eg, <4 x float> %i.ec, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.en = shufflevector <4 x float> %i.ed, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eo = shufflevector <4 x float> %i.ed, <4 x float> %i.eh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ep = shufflevector <4 x float> %i.ei, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eq = shufflevector <4 x float> %i.ei, <4 x float> %i.ee, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.er = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.es = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.et = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.eu = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ev = fmul fast <4 x float> %i.ch, %i.ej      ; 6 uses
  %i.ew = fmul fast <4 x float> %i.er, %i.ch      ; 6 uses
  %i.ex = fmul fast <4 x float> %i.ch, %i.el      ; 6 uses
  %i.ey = fmul fast <4 x float> %i.es, %i.ch      ; 6 uses
  %i.ez = fmul fast <4 x float> %i.ch, %i.en      ; 7 uses
  %i.fa = fmul fast <4 x float> %i.et, %i.ch      ; 7 uses
  %i.fb = fmul fast <4 x float> %i.ch, %i.ep      ; 7 uses
  %i.fc = fmul fast <4 x float> %i.eu, %i.ch      ; 7 uses
  %.not1285.i = icmp eq ptr %.41170893.i, null
  br i1 %.not1285.i, label %.thread699.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  br i1 %i.ad, label %.thread678.i, label %bb.m

.thread678.i:                                     ; preds = %bb.l
  %i.fd = fadd fast <4 x float> %i.ev, %.3486889.i
  %i.fe = fadd fast <4 x float> %i.ew, %.3486889.i
  %i.ff = fadd fast <4 x float> %i.ex, %.3486889.i
  %i.fg = fadd fast <4 x float> %i.ey, %.3486889.i
  %i.fh = fadd fast <4 x float> %i.ez, %.3486889.i
  %i.fi = fadd fast <4 x float> %i.fa, %.3486889.i
  %i.fj = fadd fast <4 x float> %i.fb, %.3486889.i
  %i.fk = fadd fast <4 x float> %i.fc, %.3486889.i
  br label %.thread699.i

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fl = fadd fast <4 x float> %i.ev, %.3486889.i
  %i.fm = fadd fast <4 x float> %i.ew, %.3486889.i
  %i.fn = fadd fast <4 x float> %i.ex, %.3486889.i
  %i.fo = fadd fast <4 x float> %i.ey, %.3486889.i
  %i.fp = fadd fast <4 x float> %i.ez, %.3486889.i
  %i.fq = fadd fast <4 x float> %i.fa, %.3486889.i
  %i.fr = fadd fast <4 x float> %i.fb, %.3486889.i
  %i.fs = fadd fast <4 x float> %i.fc, %.3486889.i
  br label %.thread699.i

bb.o:                                             ; preds = %bb.m
  switch i32 %2, label %.thread699.i [
    i32 3, label %bb.p
    i32 4, label %bb.aa
  ]

bb.p:                                             ; preds = %bb.o
  %i.ft = load <4 x float>, ptr %.41170893.i, align 1, !tbaa !87 ; 3 uses
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fu = getelementptr inbounds nuw i8, ptr %.41170893.i, i64 16
  %i.fv = load <4 x float>, ptr %i.fu, align 1, !tbaa !87
  %i.fw = getelementptr inbounds nuw i8, ptr %.41170893.i, i64 32
  %i.fx = load <4 x float>, ptr %i.fw, align 1, !tbaa !87
  %i.fy = getelementptr inbounds nuw i8, ptr %.41170893.i, i64 48
  %i.fz = load <4 x float>, ptr %i.fy, align 1, !tbaa !87
  br label %bb.s

bb.r:                                             ; preds = %bb.p
end_hunk_2
begin_hunk_3_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
    i32 4, label %bb.ay
    i32 1, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.ph = shufflevector <4 x float> %.5588.i, <4 x float> %.5594.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pi = shufflevector <4 x float> %.5600.i, <4 x float> %.5647.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pj = shufflevector <4 x float> %.5588.i, <4 x float> %.5594.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.pk = shufflevector <4 x float> %.5600.i, <4 x float> %.5647.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.pl = shufflevector <4 x float> %i.ph, <4 x float> %i.pi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.pm = shufflevector <4 x float> %i.pi, <4 x float> %i.ph, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.pn = shufflevector <4 x float> %i.pj, <4 x float> %i.pk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.po = shufflevector <4 x float> %i.pk, <4 x float> %i.pj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.pl, ptr %.41197900.i, align 16, !tbaa !87
  %i.pp = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 16
  store <4 x float> %i.pm, ptr %i.pp, align 16, !tbaa !87
  %i.pq = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 32
  store <4 x float> %i.pn, ptr %i.pq, align 16, !tbaa !87
  %i.pr = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 48
  store <4 x float> %i.po, ptr %i.pr, align 16, !tbaa !87
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  store <4 x float> %.5588.i, ptr %.41197900.i, align 1, !tbaa !87
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %.41197900.i, i64 %i.k
  store <4 x float> %.5594.i, ptr %i.ps, align 1, !tbaa !87
  %i.pt = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 %.idx1293.i
  store <4 x float> %.5600.i, ptr %i.pt, align 1, !tbaa !87
  %i.pu = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 %.idx1294.i
  store <4 x float> %.5647.i, ptr %i.pu, align 1, !tbaa !87
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.pv = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 %.idx1295.i
  br label %bb.bd

bb.bb:                                            ; preds = %bb.aw
  switch i32 %i.b, label %bb.bd [
    i32 4, label %.thread732.i
    i32 1, label %bb.bc
  ]

.thread732.i:                                     ; preds = %bb.bb
  store <4 x float> %.5588.i, ptr %.41197900.i, align 16, !tbaa !87
  %i.pw = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 16
  store <4 x float> %.5594.i, ptr %i.pw, align 16, !tbaa !87
  %i.px = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 32
  store <4 x float> %.5600.i, ptr %i.px, align 16, !tbaa !87
  %i.py = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 48
  store <4 x float> %.5647.i, ptr %i.py, align 16, !tbaa !87
  %i.pz = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 64
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.qa = shufflevector <4 x float> %.5588.i, <4 x float> %.5594.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qb = shufflevector <4 x float> %.5600.i, <4 x float> %.5647.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qc = shufflevector <4 x float> %.5588.i, <4 x float> %.5594.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.qd = shufflevector <4 x float> %.5600.i, <4 x float> %.5647.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.qe = shufflevector <4 x float> %i.qa, <4 x float> %i.qb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.qf = shufflevector <4 x float> %i.qb, <4 x float> %i.qa, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.qg = shufflevector <4 x float> %i.qc, <4 x float> %i.qd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.qh = shufflevector <4 x float> %i.qd, <4 x float> %i.qc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.qe, ptr %.41197900.i, align 1, !tbaa !87
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.41197900.i, i64 %i.k
  store <4 x float> %i.qf, ptr %i.qi, align 1, !tbaa !87
  %i.qj = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 %.idx1293.i
  store <4 x float> %i.qg, ptr %i.qj, align 1, !tbaa !87
  %i.qk = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 %.idx1294.i
  store <4 x float> %i.qh, ptr %i.qk, align 1, !tbaa !87
  %i.ql = getelementptr inbounds nuw i8, ptr %.41197900.i, i64 16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread732.i, %bb.bb, %bb.ba
  %.61199.i = phi ptr [ %i.pv, %bb.ba ], [ %i.ql, %bb.bc ], [ %.41197900.i, %bb.bb ], [ %i.pz, %.thread732.i ] ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.21177901.i, i64 64 ; 2 uses
  %i.qn = add nuw nsw i32 %.11207899.i, 4         ; 3 uses
  %i.qo = or disjoint i32 %i.qn, 3
  %i.qp = icmp slt i32 %i.qo, %6
  br i1 %i.qp, label %.lr.ph903.i, label %.preheader887.i, !llvm.loop !584

.preheader886.i:                                  ; preds = %bb.bs, %.preheader887.i
  %.12495.lcssa.i = phi <4 x float> [ %.8491.lcssa.i, %.preheader887.i ], [ %.15498.i, %bb.bs ]
  %.21208.lcssa.i = phi i32 [ %.11207.lcssa.i, %.preheader887.i ], [ %i.th, %bb.bs ] ; 2 uses
  %.71200.lcssa.i = phi ptr [ %.41197.lcssa.i, %.preheader887.i ], [ %.91202.i, %bb.bs ]
  %.31178.lcssa.i = phi ptr [ %.21177.lcssa.i, %.preheader887.i ], [ %i.tg, %bb.bs ] ; 2 uses
  %.12.lcssa.i = phi ptr [ %.81174.lcssa.i, %.preheader887.i ], [ %.15.i, %bb.bs ] ; 2 uses
  %i.qq = icmp slt i32 %.21208.lcssa.i, %6
  br i1 %i.qq, label %.lr.ph925.i, label %._crit_edge.i

.lr.ph914.i:                                      ; preds = %.preheader887.i, %bb.bs
  %.12913.i = phi ptr [ %.15.i, %bb.bs ], [ %.81174.lcssa.i, %.preheader887.i ] ; 14 uses
  %.31178912.i = phi ptr [ %i.tg, %bb.bs ], [ %.21177.lcssa.i, %.preheader887.i ] ; 3 uses
  %.71200911.i = phi ptr [ %.91202.i, %bb.bs ], [ %.41197.lcssa.i, %.preheader887.i ] ; 13 uses
  %.21208910.i = phi i32 [ %i.th, %bb.bs ], [ %.11207.lcssa.i, %.preheader887.i ]
  %.12495909.i = phi <4 x float> [ %.15498.i, %bb.bs ], [ %.8491.lcssa.i, %.preheader887.i ] ; 8 uses
  %i.qr = load <4 x i32>, ptr %.31178912.i, align 16, !tbaa !87
  %i.qs = getelementptr inbounds nuw i8, ptr %.31178912.i, i64 16
  %i.qt = load <4 x i32>, ptr %i.qs, align 16, !tbaa !87
  %i.qu = sitofp <4 x i32> %i.qr to <4 x float>
  %i.qv = shufflevector <4 x float> %i.qu, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.qw = sitofp <4 x i32> %i.qt to <4 x float>
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 2, i32 0> ; 2 uses
  %i.qy = shufflevector <4 x float> %i.qv, <4 x float> %i.qx, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qz = shufflevector <4 x float> %i.qx, <4 x float> %i.qv, <4 x i32> <i32 3, i32 6, i32 2, i32 7>
  %i.ra = fmul fast <4 x float> %i.qy, %i.ch      ; 7 uses
  %i.rb = fmul fast <4 x float> %i.qz, %i.ch      ; 7 uses
  %.not1275.i = icmp eq ptr %.12913.i, null
  br i1 %.not1275.i, label %.thread743.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph914.i
  br i1 %i.ad, label %.thread734.i, label %bb.bf

.thread734.i:                                     ; preds = %bb.be
  %i.rc = fadd fast <4 x float> %i.ra, %.12495909.i
  %i.rd = fadd fast <4 x float> %i.rb, %.12495909.i
  br label %.thread743.i

bb.bf:                                            ; preds = %bb.be
  br i1 %or.cond.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.re = fadd fast <4 x float> %i.ra, %.12495909.i
  %i.rf = fadd fast <4 x float> %i.rb, %.12495909.i
  br label %.thread743.i

bb.bh:                                            ; preds = %bb.bf
  switch i32 %2, label %.thread743.i [
    i32 3, label %bb.bi
    i32 4, label %bb.bo
  ]

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.ak, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rg = load <4 x float>, ptr %.12913.i, align 1, !tbaa !87
  %i.rh = getelementptr inbounds nuw i8, ptr %.12913.i, i64 16
  %i.ri = load <4 x float>, ptr %i.rh, align 1, !tbaa !87
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.rj = load float, ptr %.12913.i, align 4, !tbaa !67
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.12913.i, i64 %i.t ; 2 uses
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !67
  %i.rm = getelementptr inbounds nuw i8, ptr %.12913.i, i64 %.idx1286.i ; 2 uses
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !67
  %i.ro = getelementptr inbounds nuw i8, ptr %.12913.i, i64 %.idx1287.i ; 2 uses
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !67
  %i.rq = insertelement <4 x float> poison, float %i.rj, i64 0
  %i.rr = insertelement <4 x float> %i.rq, float %i.rl, i64 1
  %i.rs = insertelement <4 x float> %i.rr, float %i.rn, i64 2
  %i.rt = insertelement <4 x float> %i.rs, float %i.rp, i64 3
  %i.ru = getelementptr inbounds nuw i8, ptr %.12913.i, i64 4
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !67
  %i.rw = getelementptr i8, ptr %i.rk, i64 4
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !67
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rm, i64 4
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !67
  %i.sa = getelementptr i8, ptr %i.ro, i64 4
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !67
  %i.sc = insertelement <4 x float> poison, float %i.rv, i64 0
  %i.sd = insertelement <4 x float> %i.sc, float %i.rx, i64 1
  %i.se = insertelement <4 x float> %i.sd, float %i.rz, i64 2
  %i.sf = insertelement <4 x float> %i.se, float %i.sb, i64 3
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.sink1110.i.a = phi i64 [ 8, %bb.bk ], [ 32, %bb.bj ]
  %.0661.i = phi nsz <4 x float> [ %i.sf, %bb.bk ], [ %i.ri, %bb.bj ] ; 2 uses
  %.13496.i = phi nsz <4 x float> [ %i.rt, %bb.bk ], [ %i.rg, %bb.bj ] ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.12913.i, i64 %.sink1110.i.a ; 2 uses
  br i1 %i.al, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.sh = fadd fast <4 x float> %.13496.i, %i.ra
  %i.si = fadd fast <4 x float> %.0661.i, %i.rb
  br label %.thread743.i

bb.bn:                                            ; preds = %bb.bl
  %i.sj = fmul fast <4 x float> %.13496.i, %i.ai
  %i.sk = fadd fast <4 x float> %i.sj, %i.ra
  %i.sl = fmul fast <4 x float> %.0661.i, %i.ai
  %i.sm = fadd fast <4 x float> %i.sl, %i.rb
  br label %.thread743.i

bb.bo:                                            ; preds = %bb.bh
  %i.sn = load <2 x float>, ptr %.12913.i, align 4, !tbaa !67
  %i.so = fmul fast <2 x float> %i.sn, %i.ay      ; 2 uses
  %i.sp = shufflevector <2 x float> %i.so, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sq = shufflevector <2 x float> %i.so, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.sr = fadd fast <4 x float> %i.sp, %i.ra
  %i.ss = fadd fast <4 x float> %i.sq, %i.rb
  %i.st = getelementptr inbounds nuw i8, ptr %.12913.i, i64 8
  br label %.thread743.i

.thread743.i:                                     ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bh, %bb.bg, %.thread734.i, %.lr.ph914.i
  %.4666.i = phi nsz <4 x float> [ %i.rb, %.lr.ph914.i ], [ %i.ss, %bb.bo ], [ %i.rb, %bb.bh ], [ %i.sm, %bb.bn ], [ %i.si, %bb.bm ], [ %i.rd, %.thread734.i ], [ %i.rf, %bb.bg ]
  %.4659.i = phi nsz <4 x float> [ %i.ra, %.lr.ph914.i ], [ %i.sr, %bb.bo ], [ %i.ra, %bb.bh ], [ %i.sk, %bb.bn ], [ %i.sh, %bb.bm ], [ %i.rc, %.thread734.i ], [ %i.re, %bb.bg ]
  %.15498.i = phi nsz <4 x float> [ %.12495909.i, %.lr.ph914.i ], [ %i.sp, %bb.bo ], [ %.12495909.i, %bb.bh ], [ %.13496.i, %bb.bn ], [ %.13496.i, %bb.bm ], [ %.12495909.i, %.thread734.i ], [ %.12495909.i, %bb.bg ] ; 2 uses
  %.15.i = phi ptr [ null, %.lr.ph914.i ], [ %i.st, %bb.bo ], [ %.12913.i, %bb.bh ], [ %i.sg, %bb.bn ], [ %i.sg, %bb.bm ], [ %.12913.i, %.thread734.i ], [ %.12913.i, %bb.bg ] ; 2 uses
  %.5667.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.4666.i, %i.ap ; 6 uses
  %.5660.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.4659.i, %i.ap ; 6 uses
  br i1 %.not1268.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.thread743.i
  store <4 x float> %.5660.i, ptr %.71200911.i, align 1, !tbaa !87
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %.71200911.i, i64 %i.k
  store <4 x float> %.5667.i, ptr %i.su, align 1, !tbaa !87
  %i.sv = getelementptr inbounds nuw i8, ptr %.71200911.i, i64 %.idx1293.i
  br label %bb.bs

bb.bq:                                            ; preds = %.thread743.i
  switch i32 %i.b, label %bb.bs [
    i32 4, label %.thread748.i
    i32 1, label %bb.br
  ]

.thread748.i:                                     ; preds = %bb.bq
  store <4 x float> %.5660.i, ptr %.71200911.i, align 16, !tbaa !87
  %i.sw = getelementptr inbounds nuw i8, ptr %.71200911.i, i64 16
  store <4 x float> %.5667.i, ptr %i.sw, align 16, !tbaa !87
  %i.sx = getelementptr inbounds nuw i8, ptr %.71200911.i, i64 32
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.sroa.0147.0.vec.extract.i = extractelement <4 x float> %.5660.i, i64 0
  store float %.sroa.0147.0.vec.extract.i, ptr %.71200911.i, align 4, !tbaa !67
  %.sroa.7148.16.vec.extract.i = extractelement <4 x float> %.5667.i, i64 0
  %i.sy = getelementptr inbounds nuw i8, ptr %.71200911.i, i64 4
  store float %.sroa.7148.16.vec.extract.i, ptr %i.sy, align 4, !tbaa !67
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.71200911.i, i64 %i.k
  %i.ta = shufflevector <4 x float> %.5660.i, <4 x float> %.5667.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ta, ptr %i.sz, align 4, !tbaa !67
  %i.tb = getelementptr inbounds nuw i8, ptr %.71200911.i, i64 %.idx1293.i
  %i.tc = shufflevector <4 x float> %.5660.i, <4 x float> %.5667.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.tc, ptr %i.tb, align 4, !tbaa !67
  %i.td = getelementptr inbounds nuw i8, ptr %.71200911.i, i64 %.idx1294.i
  %i.te = shufflevector <4 x float> %.5660.i, <4 x float> %.5667.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.te, ptr %i.td, align 4, !tbaa !67
  %i.tf = getelementptr inbounds nuw i8, ptr %.71200911.i, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.thread748.i, %bb.bq, %bb.bp
  %.91202.i = phi ptr [ %i.sv, %bb.bp ], [ %i.tf, %bb.br ], [ %.71200911.i, %bb.bq ], [ %i.sx, %.thread748.i ] ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.31178912.i, i64 32 ; 2 uses
  %i.th = add nuw nsw i32 %.21208910.i, 2         ; 3 uses
  %i.ti = or disjoint i32 %i.th, 1
  %i.tj = icmp slt i32 %i.ti, %6
  br i1 %i.tj, label %.lr.ph914.i, label %.preheader886.i, !llvm.loop !585

.lr.ph925.i:                                      ; preds = %.preheader886.i, %bb.cf
  %.16924.i = phi ptr [ %.19.i, %bb.cf ], [ %.12.lcssa.i, %.preheader886.i ] ; 12 uses
  %.41179923.i = phi ptr [ %i.ur, %bb.cf ], [ %.31178.lcssa.i, %.preheader886.i ] ; 2 uses
  %.101203922.i = phi ptr [ %.121205.i, %bb.cf ], [ %.71200.lcssa.i, %.preheader886.i ] ; 10 uses
  %.31209921.i = phi i32 [ %i.us, %bb.cf ], [ %.21208.lcssa.i, %.preheader886.i ]
  %.16499920.i = phi <4 x float> [ %.19502.i, %bb.cf ], [ %.12495.lcssa.i, %.preheader886.i ] ; 6 uses
  %i.tk = load <4 x i32>, ptr %.41179923.i, align 16, !tbaa !87
  %i.tl = sitofp fast <4 x i32> %i.tk to <4 x float>
  %i.tm = fmul fast <4 x float> %i.ch, %i.tl      ; 6 uses
  %.not1270.i = icmp eq ptr %.16924.i, null
  br i1 %.not1270.i, label %.thread757.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph925.i
  br i1 %i.ad, label %.thread750.i, label %bb.bu

.thread750.i:                                     ; preds = %bb.bt
  %i.tn = fadd fast <4 x float> %i.tm, %.16499920.i
  br label %.thread757.i

bb.bu:                                            ; preds = %bb.bt
  br i1 %or.cond.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.to = fadd fast <4 x float> %i.tm, %.16499920.i
  br label %.thread757.i

bb.bw:                                            ; preds = %bb.bu
  switch i32 %2, label %.thread757.i [
    i32 3, label %bb.bx
    i32 4, label %bb.cb
  ]

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.ak, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.tp = load <4 x float>, ptr %.16924.i, align 1, !tbaa !87
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.tq = load float, ptr %.16924.i, align 4, !tbaa !67
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %.16924.i, i64 %i.t
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !67
  %i.tt = getelementptr inbounds nuw i8, ptr %.16924.i, i64 %.idx1286.i
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !67
  %i.tv = getelementptr inbounds nuw i8, ptr %.16924.i, i64 %.idx1287.i
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !67
  %i.tx = insertelement <4 x float> poison, float %i.tq, i64 0
  %i.ty = insertelement <4 x float> %i.tx, float %i.ts, i64 1
  %i.tz = insertelement <4 x float> %i.ty, float %i.tu, i64 2
  %i.ua = insertelement <4 x float> %i.tz, float %i.tw, i64 3
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sink1111.i.a = phi i64 [ 4, %bb.bz ], [ 16, %bb.by ]
  %.17500.i = phi nsz <4 x float> [ %i.ua, %bb.bz ], [ %i.tp, %bb.by ] ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.16924.i, i64 %.sink1111.i.a
  %i.uc = fmul fast <4 x float> %.17500.i, %i.ai
  %i.ud = fadd fast <4 x float> %i.uc, %i.tm
  br label %.thread757.i

bb.cb:                                            ; preds = %bb.bw
  %i.ue = load float, ptr %.16924.i, align 4, !tbaa !67
  %i.uf = fmul fast float %i.ue, %9
  %i.ug = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ui = fadd fast <4 x float> %i.uh, %i.tm
  %i.uj = getelementptr inbounds nuw i8, ptr %.16924.i, i64 4
  br label %.thread757.i

.thread757.i:                                     ; preds = %bb.cb, %bb.ca, %bb.bw, %bb.bv, %.thread750.i, %.lr.ph925.i
  %.3652.i = phi nsz <4 x float> [ %i.tm, %.lr.ph925.i ], [ %i.ui, %bb.cb ], [ %i.tm, %bb.bw ], [ %i.ud, %bb.ca ], [ %i.tn, %.thread750.i ], [ %i.to, %bb.bv ]
  %.19502.i = phi nsz <4 x float> [ %.16499920.i, %.lr.ph925.i ], [ %i.uh, %bb.cb ], [ %.16499920.i, %bb.bw ], [ %.17500.i, %bb.ca ], [ %.16499920.i, %.thread750.i ], [ %.16499920.i, %bb.bv ]
  %.19.i = phi ptr [ null, %.lr.ph925.i ], [ %i.uj, %bb.cb ], [ %.16924.i, %bb.bw ], [ %i.ub, %bb.ca ], [ %.16924.i, %.thread750.i ], [ %.16924.i, %bb.bv ] ; 2 uses
  %i.uk = fmul fast <4 x float> %.3652.i, %i.ao   ; 6 uses
  br i1 %.not1268.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.thread757.i
  store <4 x float> %i.uk, ptr %.101203922.i, align 1, !tbaa !87
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %.101203922.i, i64 %i.k
  br label %bb.cf

bb.cd:                                            ; preds = %.thread757.i
  switch i32 %i.b, label %bb.cf [
    i32 4, label %.thread761.i
    i32 1, label %bb.ce
  ]

.thread761.i:                                     ; preds = %bb.cd
  store <4 x float> %i.uk, ptr %.101203922.i, align 16, !tbaa !87
  %i.um = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 16
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %.sroa.0140.0.vec.extract.i = extractelement <4 x float> %i.uk, i64 0
  store float %.sroa.0140.0.vec.extract.i, ptr %.101203922.i, align 4, !tbaa !67
  %.sroa.0140.4.vec.extract.i = extractelement <4 x float> %i.uk, i64 1
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.101203922.i, i64 %i.k
  store float %.sroa.0140.4.vec.extract.i, ptr %i.un, align 4, !tbaa !67
  %.sroa.0140.8.vec.extract.i = extractelement <4 x float> %i.uk, i64 2
  %i.uo = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 %.idx1293.i
  store float %.sroa.0140.8.vec.extract.i, ptr %i.uo, align 4, !tbaa !67
  %.sroa.0140.12.vec.extract.i = extractelement <4 x float> %i.uk, i64 3
  %i.up = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 %.idx1294.i
  store float %.sroa.0140.12.vec.extract.i, ptr %i.up, align 4, !tbaa !67
  %i.uq = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.thread761.i, %bb.cd, %bb.cc
  %.121205.i = phi ptr [ %i.ul, %bb.cc ], [ %i.uq, %bb.ce ], [ %.101203922.i, %bb.cd ], [ %i.um, %.thread761.i ]
  %i.ur = getelementptr inbounds nuw i8, ptr %.41179923.i, i64 16 ; 2 uses
  %i.us = add nuw nsw i32 %.31209921.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.us, %6
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph925.i, !llvm.loop !586

._crit_edge.i:                                    ; preds = %bb.cf, %.preheader886.i
  %.41179.lcssa.i = phi ptr [ %.31178.lcssa.i, %.preheader886.i ], [ %i.ur, %bb.cf ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader886.i ], [ %.19.i, %bb.cf ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.ut = or disjoint i64 %indvars.iv.next.i, 3
  %i.uu = icmp samesign ult i64 %i.ut, %i.ar
  br i1 %i.uu, label %bb.b, label %.preheader885.loopexit.i, !llvm.loop !587

.preheader881.loopexit.i:                         ; preds = %._crit_edge974.i
  %i.uv = trunc nuw nsw i64 %indvars.iv.next1058.i to i32
  br label %.preheader881.i

.preheader881.i:                                  ; preds = %.preheader881.loopexit.i, %.preheader885.i
  %.11191.lcssa.i = phi i32 [ %.01190.lcssa.i, %.preheader885.i ], [ %i.uv, %.preheader881.loopexit.i ] ; 2 uses
  %.51180.lcssa.i = phi ptr [ %.01175.lcssa.i, %.preheader885.i ], [ %.91184.lcssa.i, %.preheader881.loopexit.i ]
  %.20.lcssa.i = phi ptr [ %.01166.lcssa.i, %.preheader885.i ], [ %.33.lcssa.i, %.preheader881.loopexit.i ]
  %i.uw = icmp slt i32 %.11191.lcssa.i, %4
  br i1 %i.uw, label %.lr.ph1026.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph1026.i:                                     ; preds = %.preheader881.i
  %.not.i = icmp eq i32 %10, 0                    ; 5 uses
  %i.ux = sext i32 %5 to i64                      ; 4 uses
  %i.uy = mul i64 %i.k, %i.ux
  %i.uz = icmp eq i32 %2, 0
  %or.cond21.i = icmp ult i32 %2, 3               ; 5 uses
  %i.va = sext i32 %3 to i64                      ; 3 uses
  %i.vb = icmp sgt i32 %6, 7
  %i.vc = add i32 %2, -3
  %or.cond27.i = icmp ult i32 %i.vc, 2            ; 4 uses
  %i.vd = insertelement <4 x float> poison, float %9, i64 0
  %i.ve = shufflevector <4 x float> %i.vd, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.vf = fcmp fast une float %8, 1.000000e+00
  %i.vg = insertelement <4 x float> poison, float %8, i64 0
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vi = select ninf nsz i1 %i.vf, <4 x float> %i.vh, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.vj = icmp eq i64 %i.k, 1                     ; 2 uses
  %.idx1251.i = shl i64 %i.k, 3                   ; 3 uses
  %.idx1252.i = mul i64 %i.k, 12                  ; 2 uses
  %.idx1253.i = shl i64 %i.k, 4                   ; 5 uses
  %.idx1254.i = mul i64 %i.k, 20
  %.idx1255.i = mul i64 %i.k, 24
  %.idx1256.i = mul i64 %i.k, 28
  %.idx1257.i = shl i64 %i.k, 5                   ; 3 uses
  %i.vk = and i32 %6, -8
  %i.vl = zext nneg i32 %.11191.lcssa.i to i64
  %i.vm = sext i32 %i.b to i64
  %wide.trip.count.i = zext i32 %4 to i64
  %i.vn = insertelement <2 x float> poison, float %9, i64 0
  %i.vo = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.ed

bb.cg:                                            ; preds = %._crit_edge974.i, %.lr.ph981.i
  %indvars.iv1057.i = phi i64 [ %i.bn, %.lr.ph981.i ], [ %indvars.iv.next1058.i, %._crit_edge974.i ] ; 4 uses
  %.20980.i = phi ptr [ %.01166.lcssa.i, %.lr.ph981.i ], [ %.33.lcssa.i, %._crit_edge974.i ] ; 4 uses
  %.51180979.i = phi ptr [ %.01175.lcssa.i, %.lr.ph981.i ], [ %.91184.lcssa.i, %._crit_edge974.i ] ; 2 uses
  %i.vp = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  br i1 %.not1258.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.bd
  %i.vr = add nsw i64 %indvars.iv1057.i, %i.be    ; 2 uses
  %i.vs = mul nsw i64 %i.vr, %i.bp
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.vq, i64 %i.vs
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.vu = add nsw i64 %indvars.iv1057.i, %i.be    ; 2 uses
  %i.vv = mul i64 %i.vu, %i.k
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.vv
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %i.bc
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pre-phi.i = phi i64 [ %i.vu, %bb.ci ], [ %i.vr, %bb.ch ] ; 2 uses
  %.01210.i = phi ptr [ %i.vx, %bb.ci ], [ %i.vt, %bb.ch ] ; 2 uses
  %i.vy = load ptr, ptr %7, align 8, !tbaa !23
  %i.vz = getelementptr [4 x i8], ptr %i.vy, i64 %.pre-phi.i
  %i.wa = load <2 x float>, ptr %i.vz, align 4, !tbaa !67 ; 4 uses
  %i.wb = shufflevector <2 x float> %i.wa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.wc = shufflevector <2 x float> %i.wa, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.wd = shufflevector <2 x float> %i.wa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not1259.i = icmp eq ptr %.20980.i, null
  br i1 %.not1259.i, label %.thread779.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  br i1 %15, label %.thread763.i, label %bb.cl

.thread763.i:                                     ; preds = %bb.ck
  %i.we = load float, ptr %.20980.i, align 4, !tbaa !67
  %i.wf = fmul fast float %i.we, %9               ; 3 uses
  %i.wg = insertelement <4 x float> poison, float %i.wf, i64 0
  %i.wh = shufflevector <4 x float> %i.wg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wi = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wf, i64 0
  br label %.thread779.i

bb.cl:                                            ; preds = %bb.ck
  br i1 %or.cond11.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.wj = load ptr, ptr %0, align 8, !tbaa !23
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.wj, i64 %i.be
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv1057.i ; 2 uses
  %i.wm = load <2 x float>, ptr %i.wl, align 4, !tbaa !67
  %i.wn = fmul fast <2 x float> %i.wm, %i.bs      ; 4 uses
  %i.wo = extractelement <2 x float> %i.wn, i64 0
  %i.wp = shufflevector <2 x float> %i.wn, <2 x float> poison, <4 x i32> zeroinitializer
  %i.wq = shufflevector <2 x float> %i.wn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread779.i

bb.cn:                                            ; preds = %bb.cl
  switch i32 %2, label %.thread779.i [
    i32 3, label %bb.co
    i32 4, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %i.wr = load ptr, ptr %0, align 8, !tbaa !23
  %i.ws = mul i64 %.pre-phi.i, %i.t
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.ws
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.wt, i64 %i.bc
  br label %.thread779.i

bb.cp:                                            ; preds = %bb.cn
  %i.wv = load ptr, ptr %0, align 8, !tbaa !23
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %i.bc
  br label %.thread779.i

.thread779.i:                                     ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm, %.thread763.i, %bb.cj
  %.2635.i = phi nsz <4 x float> [ zeroinitializer, %bb.cj ], [ zeroinitializer, %bb.cp ], [ zeroinitializer, %bb.cn ], [ zeroinitializer, %bb.co ], [ %i.wh, %.thread763.i ], [ %i.wp, %bb.cm ] ; 2 uses
  %.1626.i = phi nsz <4 x float> [ zeroinitializer, %bb.cj ], [ zeroinitializer, %bb.cp ], [ zeroinitializer, %bb.cn ], [ zeroinitializer, %bb.co ], [ zeroinitializer, %.thread763.i ], [ %i.wq, %bb.cm ] ; 2 uses
  %.21227.i = phi nsz float [ 0.000000e+00, %bb.cj ], [ 0.000000e+00, %bb.cp ], [ 0.000000e+00, %bb.cn ], [ 0.000000e+00, %bb.co ], [ %i.wf, %.thread763.i ], [ %i.wo, %bb.cm ]
  %.23.i = phi ptr [ null, %bb.cj ], [ %i.ww, %bb.cp ], [ %.20980.i, %bb.cn ], [ %i.wu, %bb.co ], [ %.20980.i, %.thread763.i ], [ %i.wl, %bb.cm ] ; 2 uses
  %i.wx = phi <2 x float> [ zeroinitializer, %bb.cj ], [ zeroinitializer, %bb.cp ], [ zeroinitializer, %bb.cn ], [ zeroinitializer, %bb.co ], [ %i.wi, %.thread763.i ], [ %i.wn, %bb.cm ] ; 3 uses
  %i.wy = shufflevector <2 x float> %i.wx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.bf, label %.lr.ph942.i, label %.preheader884.i

.preheader884.i:                                  ; preds = %bb.de, %.thread779.i
  %.3636.lcssa.i = phi <4 x float> [ %.2635.i, %.thread779.i ], [ %.5638.i, %bb.de ]
  %.2627.lcssa.i = phi <4 x float> [ %.1626.i, %.thread779.i ], [ %.4629.i, %bb.de ]
  %.01219.lcssa.i = phi i32 [ 0, %.thread779.i ], [ %i.bm, %bb.de ] ; 3 uses
  %.11211.lcssa.i = phi ptr [ %.01210.i, %.thread779.i ], [ %i.aaf, %bb.de ] ; 2 uses
  %.61181.lcssa.i = phi ptr [ %.51180979.i, %.thread779.i ], [ %i.aag, %bb.de ] ; 2 uses
  %.24.lcssa.i = phi ptr [ %.23.i, %.thread779.i ], [ %.26.i, %bb.de ] ; 2 uses
  %i.wz = or disjoint i32 %.01219.lcssa.i, 3
  %i.xa = icmp slt i32 %i.wz, %6
  br i1 %i.xa, label %.lr.ph955.i, label %.preheader883.i

.lr.ph942.i:                                      ; preds = %.thread779.i, %bb.de
  %.24941.i = phi ptr [ %.26.i, %bb.de ], [ %.23.i, %.thread779.i ] ; 11 uses
  %.61181940.i = phi ptr [ %i.aag, %bb.de ], [ %.51180979.i, %.thread779.i ] ; 5 uses
  %.11211939.i = phi ptr [ %i.aaf, %bb.de ], [ %.01210.i, %.thread779.i ] ; 16 uses
  %.01219938.i = phi i32 [ %i.aah, %bb.de ], [ 0, %.thread779.i ]
  %.2627937.i = phi <4 x float> [ %.4629.i, %bb.de ], [ %.1626.i, %.thread779.i ] ; 6 uses
  %.3636936.i = phi <4 x float> [ %.5638.i, %bb.de ], [ %.2635.i, %.thread779.i ] ; 10 uses
  %i.xb = load <4 x i32>, ptr %.61181940.i, align 16, !tbaa !87
  %i.xc = sitofp fast <4 x i32> %i.xb to <4 x float> ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 16
  %i.xe = load <4 x i32>, ptr %i.xd, align 16, !tbaa !87
  %i.xf = sitofp fast <4 x i32> %i.xe to <4 x float> ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 32
  %i.xh = load <4 x i32>, ptr %i.xg, align 16, !tbaa !87
  %i.xi = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 48
  %i.xj = load <4 x i32>, ptr %i.xi, align 16, !tbaa !87
  %i.xk = sitofp <4 x i32> %i.xh to <4 x float>
  %i.xl = shufflevector <4 x float> %i.xk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.xm = sitofp <4 x i32> %i.xj to <4 x float>
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.xo = shufflevector <4 x float> %i.xc, <4 x float> %i.xl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.xp = shufflevector <4 x float> %i.xc, <4 x float> %i.xl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.xq = shufflevector <4 x float> %i.xf, <4 x float> %i.xn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.xr = shufflevector <4 x float> %i.xf, <4 x float> %i.xn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.xs = shufflevector <4 x float> %i.xo, <4 x float> %i.xp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xt = shufflevector <4 x float> %i.xq, <4 x float> %i.xr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xu = shufflevector <4 x float> %i.xo, <4 x float> %i.xp, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.xv = shufflevector <4 x float> %i.xq, <4 x float> %i.xr, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.xw = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xx = shufflevector <4 x float> %i.xv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xy = fmul fast <4 x float> %i.wc, %i.xs      ; 6 uses
  %i.xz = fmul fast <4 x float> %i.wc, %i.xt      ; 6 uses
  %i.ya = fmul fast <4 x float> %i.xw, %i.wd      ; 6 uses
  %i.yb = fmul fast <4 x float> %i.xx, %i.wd      ; 6 uses
  %.not1265.i = icmp eq ptr %.24941.i, null
  br i1 %.not1265.i, label %.thread798.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph942.i
  br i1 %15, label %.thread785.i, label %bb.cr

.thread785.i:                                     ; preds = %bb.cq
  %i.yc = fadd fast <4 x float> %i.xy, %.3636936.i
  %i.yd = fadd fast <4 x float> %i.xz, %.3636936.i
  %i.ye = fadd fast <4 x float> %i.ya, %.3636936.i
  %i.yf = fadd fast <4 x float> %i.yb, %.3636936.i
  br label %.thread798.i

bb.cr:                                            ; preds = %bb.cq
  br i1 %or.cond11.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.yg = fadd fast <4 x float> %i.xy, %.3636936.i
  %i.yh = fadd fast <4 x float> %i.xz, %.3636936.i
  %i.yi = fadd fast <4 x float> %i.ya, %.2627937.i
  %i.yj = fadd fast <4 x float> %i.yb, %.2627937.i
  br label %.thread798.i

bb.ct:                                            ; preds = %bb.cr
  switch i32 %2, label %.thread798.i [
    i32 3, label %bb.cu
    i32 4, label %bb.cx
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.yk = load <4 x float>, ptr %.24941.i, align 1, !tbaa !87 ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.24941.i, i64 16
  %i.ym = load <4 x float>, ptr %i.yl, align 1, !tbaa !87 ; 3 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.24941.i, i64 %i.t ; 2 uses
  %i.yo = load <4 x float>, ptr %i.yn, align 1, !tbaa !87 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yq = load <4 x float>, ptr %i.yp, align 1, !tbaa !87 ; 2 uses
  br i1 %i.bi, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.yr = fmul fast <4 x float> %i.yk, %i.bh
  %i.ys = fmul fast <4 x float> %i.ym, %i.bh
  %i.yt = fmul fast <4 x float> %i.yo, %i.bh
  %i.yu = fmul fast <4 x float> %i.yq, %i.bh
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn.i = phi <4 x float> [ %i.yr, %bb.cv ], [ %i.yk, %bb.cu ]
  %.pn1028.i.a = phi <4 x float> [ %i.ys, %bb.cv ], [ %i.ym, %bb.cu ]
  %.pn1029.i.a = phi <4 x float> [ %i.yt, %bb.cv ], [ %i.yo, %bb.cu ]
  %.pn1030.i.a = phi <4 x float> [ %i.yu, %bb.cv ], [ %i.yq, %bb.cu ]
  %.2603.i = fadd fast <4 x float> %.pn1030.i.a, %i.yb
  %.2609.i = fadd fast <4 x float> %.pn1029.i.a, %i.ya
  %.2615.i = fadd fast <4 x float> %.pn1028.i.a, %i.xz
  %.2621.i = fadd fast <4 x float> %.pn.i, %i.xy
  %i.yv = getelementptr inbounds nuw i8, ptr %.24941.i, i64 32
  br label %.thread798.i

bb.cx:                                            ; preds = %bb.ct
  %i.yw = load <4 x float>, ptr %.24941.i, align 1, !tbaa !87
  %i.yx = getelementptr inbounds nuw i8, ptr %.24941.i, i64 16
  %i.yy = load <4 x float>, ptr %i.yx, align 1, !tbaa !87
  %i.yz = fmul fast <4 x float> %i.yw, %i.bh      ; 3 uses
  %i.za = fmul fast <4 x float> %i.yy, %i.bh      ; 3 uses
  %i.zb = fadd fast <4 x float> %i.yz, %i.xy
  %i.zc = fadd fast <4 x float> %i.za, %i.xz
  %i.zd = fadd fast <4 x float> %i.yz, %i.ya
  %i.ze = fadd fast <4 x float> %i.za, %i.yb
  %i.zf = getelementptr inbounds nuw i8, ptr %.24941.i, i64 32
  br label %.thread798.i

.thread798.i:                                     ; preds = %bb.cx, %bb.cw, %bb.ct, %bb.cs, %.thread785.i, %.lr.ph942.i
  %.5638.i = phi nsz <4 x float> [ %.3636936.i, %.lr.ph942.i ], [ %i.yz, %bb.cx ], [ %.3636936.i, %bb.ct ], [ %i.yk, %bb.cw ], [ %.3636936.i, %.thread785.i ], [ %.3636936.i, %bb.cs ] ; 2 uses
  %.4629.i = phi nsz <4 x float> [ %.2627937.i, %.lr.ph942.i ], [ %i.za, %bb.cx ], [ %.2627937.i, %bb.ct ], [ %i.ym, %bb.cw ], [ %.2627937.i, %.thread785.i ], [ %.2627937.i, %bb.cs ] ; 2 uses
  %.4623.i = phi nsz <4 x float> [ %i.xy, %.lr.ph942.i ], [ %i.zb, %bb.cx ], [ %i.xy, %bb.ct ], [ %.2621.i, %bb.cw ], [ %i.yc, %.thread785.i ], [ %i.yg, %bb.cs ] ; 2 uses
  %.4617.i = phi nsz <4 x float> [ %i.xz, %.lr.ph942.i ], [ %i.zc, %bb.cx ], [ %i.xz, %bb.ct ], [ %.2615.i, %bb.cw ], [ %i.yd, %.thread785.i ], [ %i.yh, %bb.cs ] ; 2 uses
  %.4611.i = phi nsz <4 x float> [ %i.ya, %.lr.ph942.i ], [ %i.zd, %bb.cx ], [ %i.ya, %bb.ct ], [ %.2609.i, %bb.cw ], [ %i.ye, %.thread785.i ], [ %i.yi, %bb.cs ] ; 2 uses
  %.4605.i = phi nsz <4 x float> [ %i.yb, %.lr.ph942.i ], [ %i.ze, %bb.cx ], [ %i.yb, %bb.ct ], [ %.2603.i, %bb.cw ], [ %i.yf, %.thread785.i ], [ %i.yj, %bb.cs ] ; 2 uses
  %.26.i = phi ptr [ null, %.lr.ph942.i ], [ %i.zf, %bb.cx ], [ %.24941.i, %bb.ct ], [ %i.yv, %bb.cw ], [ %.24941.i, %.thread785.i ], [ %.24941.i, %bb.cs ] ; 2 uses
  br i1 %i.bj, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.thread798.i
  %i.zg = fmul fast <4 x float> %.4623.i, %i.bl
  %i.zh = fmul fast <4 x float> %.4617.i, %i.bl
  %i.zi = fmul fast <4 x float> %.4611.i, %i.bl
  %i.zj = fmul fast <4 x float> %.4605.i, %i.bl
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.thread798.i
  %.5624.i = phi nsz <4 x float> [ %i.zg, %bb.cy ], [ %.4623.i, %.thread798.i ] ; 6 uses
  %.5618.i = phi nsz <4 x float> [ %i.zh, %bb.cy ], [ %.4617.i, %.thread798.i ] ; 6 uses
  %.5612.i = phi nsz <4 x float> [ %i.zi, %bb.cy ], [ %.4611.i, %.thread798.i ] ; 6 uses
  %.5606.i = phi nsz <4 x float> [ %i.zj, %bb.cy ], [ %.4605.i, %.thread798.i ] ; 6 uses
  br i1 %.not1258.i, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  switch i32 %i.b, label %bb.de [
    i32 4, label %bb.db
    i32 1, label %bb.dc
  ]

bb.db:                                            ; preds = %bb.da
  store <4 x float> %.5624.i, ptr %.11211939.i, align 16, !tbaa !87
  %i.zk = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 16
  store <4 x float> %.5612.i, ptr %i.zk, align 16, !tbaa !87
  %i.zl = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx871.i ; 2 uses
  store <4 x float> %.5618.i, ptr %i.zl, align 16, !tbaa !87
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  store <4 x float> %.5606.i, ptr %i.zm, align 16, !tbaa !87
  br label %bb.de

bb.dc:                                            ; preds = %bb.da
  %.sroa.054.0.vec.extract.i = extractelement <4 x float> %.5624.i, i64 0
  store float %.sroa.054.0.vec.extract.i, ptr %.11211939.i, align 4, !tbaa !67
  %.sroa.12.32.vec.extract.i = extractelement <4 x float> %.5612.i, i64 0
  %i.zn = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 4
  store float %.sroa.12.32.vec.extract.i, ptr %i.zn, align 4, !tbaa !67
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %.11211939.i, i64 %i.k
  %i.zp = shufflevector <4 x float> %.5624.i, <4 x float> %.5612.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.zp, ptr %i.zo, align 4, !tbaa !67
  %i.zq = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx869.i
  %i.zr = shufflevector <4 x float> %.5624.i, <4 x float> %.5612.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.zr, ptr %i.zq, align 4, !tbaa !67
  %i.zs = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx870.i
  %i.zt = shufflevector <4 x float> %.5624.i, <4 x float> %.5612.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.zt, ptr %i.zs, align 4, !tbaa !67
  %.sroa.755.16.vec.extract.i = extractelement <4 x float> %.5618.i, i64 0
  %i.zu = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx871.i ; 2 uses
  store float %.sroa.755.16.vec.extract.i, ptr %i.zu, align 4, !tbaa !67
  %.sroa.17.48.vec.extract.i = extractelement <4 x float> %.5606.i, i64 0
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  store float %.sroa.17.48.vec.extract.i, ptr %i.zv, align 4, !tbaa !67
  %i.zw = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx872.i
  %i.zx = shufflevector <4 x float> %.5618.i, <4 x float> %.5606.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.zx, ptr %i.zw, align 4, !tbaa !67
  %i.zy = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx873.i
  %i.zz = shufflevector <4 x float> %.5618.i, <4 x float> %.5606.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.zz, ptr %i.zy, align 4, !tbaa !67
  %i.aaa = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx874.i
  %i.aab = shufflevector <4 x float> %.5618.i, <4 x float> %.5606.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.aab, ptr %i.aaa, align 4, !tbaa !67
  br label %bb.de

bb.dd:                                            ; preds = %bb.cz
  store <4 x float> %.5624.i, ptr %.11211939.i, align 1, !tbaa !87
  %i.aac = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 16
  store <4 x float> %.5618.i, ptr %i.aac, align 1, !tbaa !87
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %.11211939.i, i64 %i.k ; 2 uses
  store <4 x float> %.5612.i, ptr %i.aad, align 1, !tbaa !87
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  store <4 x float> %.5606.i, ptr %i.aae, align 1, !tbaa !87
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da
  %.sink1112.i = phi i64 [ 32, %bb.dd ], [ %.idx1267.i, %bb.db ], [ %.idx1267.i, %bb.da ], [ %.idx1267.i, %bb.dc ]
  %i.aaf = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.sink1112.i ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 64 ; 2 uses
  %i.aah = add nuw nsw i32 %.01219938.i, 8        ; 2 uses
  %i.aai = or disjoint i32 %i.aah, 7
  %i.aaj = icmp slt i32 %i.aai, %6
  br i1 %i.aaj, label %.lr.ph942.i, label %.preheader884.i, !llvm.loop !588

.preheader883.i:                                  ; preds = %bb.dp, %.preheader884.i
  %.11220.lcssa.i = phi i32 [ %.01219.lcssa.i, %.preheader884.i ], [ %i.abz, %bb.dp ] ; 3 uses
  %.31213.lcssa.i = phi ptr [ %.11211.lcssa.i, %.preheader884.i ], [ %i.abx, %bb.dp ] ; 2 uses
  %.71182.lcssa.i = phi ptr [ %.61181.lcssa.i, %.preheader884.i ], [ %i.aby, %bb.dp ] ; 2 uses
  %.27.lcssa.i = phi ptr [ %.24.lcssa.i, %.preheader884.i ], [ %.29.i, %bb.dp ] ; 2 uses
  %i.aak = or disjoint i32 %.11220.lcssa.i, 1
  %i.aal = icmp slt i32 %i.aak, %6
  br i1 %i.aal, label %.lr.ph964.i.preheader, label %.preheader882.i

.lr.ph964.i.preheader:                            ; preds = %.preheader883.i
  %i.aam = shufflevector <2 x float> %i.wx, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph964.i

.lr.ph955.i:                                      ; preds = %.preheader884.i, %bb.dp
  %.27954.i = phi ptr [ %.29.i, %bb.dp ], [ %.24.lcssa.i, %.preheader884.i ] ; 9 uses
  %.71182953.i = phi ptr [ %i.aby, %bb.dp ], [ %.61181.lcssa.i, %.preheader884.i ] ; 3 uses
  %.31213952.i = phi ptr [ %i.abx, %bb.dp ], [ %.11211.lcssa.i, %.preheader884.i ] ; 10 uses
  %.11220951.i = phi i32 [ %i.abz, %bb.dp ], [ %.01219.lcssa.i, %.preheader884.i ]
  %.5630950.i = phi <4 x float> [ %.7632.i, %bb.dp ], [ %.2627.lcssa.i, %.preheader884.i ] ; 6 uses
  %.6639949.i = phi <4 x float> [ %.8641.i, %bb.dp ], [ %.3636.lcssa.i, %.preheader884.i ] ; 7 uses
  %i.aan = load <4 x i32>, ptr %.71182953.i, align 16, !tbaa !87
  %i.aao = sitofp fast <4 x i32> %i.aan to <4 x float> ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.71182953.i, i64 16
  %i.aaq = load <4 x i32>, ptr %i.aap, align 16, !tbaa !87
  %i.aar = sitofp fast <4 x i32> %i.aaq to <4 x float> ; 2 uses
  %i.aas = shufflevector <4 x float> %i.aao, <4 x float> %i.aar, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aat = shufflevector <4 x float> %i.aao, <4 x float> %i.aar, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aau = shufflevector <4 x float> %i.aas, <4 x float> %i.aat, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aav = shufflevector <4 x float> %i.aat, <4 x float> %i.aas, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aaw = shufflevector <4 x float> %i.aav, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aax = fmul fast <4 x float> %i.wc, %i.aau    ; 6 uses
  %i.aay = fmul fast <4 x float> %i.aaw, %i.wd    ; 6 uses
  %.not1263.i = icmp eq ptr %.27954.i, null
  br i1 %.not1263.i, label %.thread815.i, label %bb.df

bb.df:                                            ; preds = %.lr.ph955.i
  br i1 %15, label %.thread806.i, label %bb.dg

.thread806.i:                                     ; preds = %bb.df
  %i.aaz = fadd fast <4 x float> %i.aax, %.6639949.i
  %i.aba = fadd fast <4 x float> %i.aay, %.6639949.i
  br label %.thread815.i

bb.dg:                                            ; preds = %bb.df
  br i1 %or.cond11.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.abb = fadd fast <4 x float> %i.aax, %.6639949.i
  %i.abc = fadd fast <4 x float> %i.aay, %.5630950.i
  br label %.thread815.i

bb.di:                                            ; preds = %bb.dg
  switch i32 %2, label %.thread815.i [
    i32 3, label %bb.dj
    i32 4, label %bb.dk
  ]

bb.dj:                                            ; preds = %bb.di
  %i.abd = load <4 x float>, ptr %.27954.i, align 1, !tbaa !87 ; 3 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.27954.i, i64 %i.t
  %i.abf = load <4 x float>, ptr %i.abe, align 1, !tbaa !87 ; 3 uses
  %i.abg = fmul fast <4 x float> %i.abd, %i.bh
  %i.abh = fmul fast <4 x float> %i.abf, %i.bh
  %.pn1031.i.a = select i1 %i.bi, <4 x float> %i.abd, <4 x float> %i.abg
  %.pn1032.i = select i1 %i.bi, <4 x float> %i.abf, <4 x float> %i.abh
  %.2570.i = fadd fast <4 x float> %.pn1032.i, %i.aay
  %.2576.i = fadd fast <4 x float> %.pn1031.i.a, %i.aax
  %i.abi = getelementptr inbounds nuw i8, ptr %.27954.i, i64 16
  br label %.thread815.i

bb.dk:                                            ; preds = %bb.di
  %i.abj = load <4 x float>, ptr %.27954.i, align 1, !tbaa !87
  %i.abk = fmul fast <4 x float> %i.abj, %i.bh    ; 3 uses
  %i.abl = fadd fast <4 x float> %i.abk, %i.aax
  %i.abm = fadd fast <4 x float> %i.abk, %i.aay
  %i.abn = getelementptr inbounds nuw i8, ptr %.27954.i, i64 16
  br label %.thread815.i

.thread815.i:                                     ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh, %.thread806.i, %.lr.ph955.i
  %.8641.i = phi nsz <4 x float> [ %.6639949.i, %.lr.ph955.i ], [ %i.abk, %bb.dk ], [ %.6639949.i, %bb.di ], [ %i.abd, %bb.dj ], [ %.6639949.i, %.thread806.i ], [ %.6639949.i, %bb.dh ]
  %.7632.i = phi nsz <4 x float> [ %.5630950.i, %.lr.ph955.i ], [ %.5630950.i, %bb.dk ], [ %.5630950.i, %bb.di ], [ %i.abf, %bb.dj ], [ %.5630950.i, %.thread806.i ], [ %.5630950.i, %bb.dh ]
  %.4578.i = phi nsz <4 x float> [ %i.aax, %.lr.ph955.i ], [ %i.abl, %bb.dk ], [ %i.aax, %bb.di ], [ %.2576.i, %bb.dj ], [ %i.aaz, %.thread806.i ], [ %i.abb, %bb.dh ]
  %.4572.i = phi nsz <4 x float> [ %i.aay, %.lr.ph955.i ], [ %i.abm, %bb.dk ], [ %i.aay, %bb.di ], [ %.2570.i, %bb.dj ], [ %i.aba, %.thread806.i ], [ %i.abc, %bb.dh ]
  %.29.i = phi ptr [ null, %.lr.ph955.i ], [ %i.abn, %bb.dk ], [ %.27954.i, %bb.di ], [ %i.abi, %bb.dj ], [ %.27954.i, %.thread806.i ], [ %.27954.i, %bb.dh ] ; 2 uses
  %.5579.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.4578.i, %i.bq ; 6 uses
  %.5573.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.4572.i, %i.bq ; 6 uses
  br i1 %.not1258.i, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %.thread815.i
  switch i32 %i.b, label %bb.dp [
    i32 4, label %bb.dm
    i32 1, label %bb.dn
  ]

bb.dm:                                            ; preds = %bb.dl
  store <4 x float> %.5579.i, ptr %.31213952.i, align 16, !tbaa !87
  %i.abo = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 16
  store <4 x float> %.5573.i, ptr %i.abo, align 16, !tbaa !87
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dl
  %.sroa.027.0.vec.extract.i = extractelement <4 x float> %.5579.i, i64 0
  store float %.sroa.027.0.vec.extract.i, ptr %.31213952.i, align 4, !tbaa !67
  %.sroa.728.16.vec.extract.i = extractelement <4 x float> %.5573.i, i64 0
  %i.abp = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 4
  store float %.sroa.728.16.vec.extract.i, ptr %i.abp, align 4, !tbaa !67
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %.31213952.i, i64 %i.k
  %i.abr = shufflevector <4 x float> %.5579.i, <4 x float> %.5573.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.abr, ptr %i.abq, align 4, !tbaa !67
  %i.abs = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 %.idx869.i
  %i.abt = shufflevector <4 x float> %.5579.i, <4 x float> %.5573.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.abt, ptr %i.abs, align 4, !tbaa !67
  %i.abu = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 %.idx870.i
  %i.abv = shufflevector <4 x float> %.5579.i, <4 x float> %.5573.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.abv, ptr %i.abu, align 4, !tbaa !67
  br label %bb.dp

bb.do:                                            ; preds = %.thread815.i
  store <4 x float> %.5579.i, ptr %.31213952.i, align 1, !tbaa !87
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %.31213952.i, i64 %i.k
  store <4 x float> %.5573.i, ptr %i.abw, align 1, !tbaa !87
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dl
  %.sink1113.i = phi i64 [ 16, %bb.do ], [ %.idx871.i, %bb.dm ], [ %.idx871.i, %bb.dl ], [ %.idx871.i, %bb.dn ]
  %i.abx = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 %.sink1113.i ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.71182953.i, i64 32 ; 2 uses
  %i.abz = add nuw nsw i32 %.11220951.i, 4        ; 3 uses
  %i.aca = or disjoint i32 %i.abz, 3
  %i.acb = icmp slt i32 %i.aca, %6
  br i1 %i.acb, label %.lr.ph955.i, label %.preheader883.i, !llvm.loop !589

.preheader882.i:                                  ; preds = %.thread834.i, %.preheader883.i
  %.21221.lcssa.i = phi i32 [ %.11220.lcssa.i, %.preheader883.i ], [ %i.adm, %.thread834.i ] ; 2 uses
  %.51215.lcssa.i = phi ptr [ %.31213.lcssa.i, %.preheader883.i ], [ %i.adk, %.thread834.i ]
  %.81183.lcssa.i = phi ptr [ %.71182.lcssa.i, %.preheader883.i ], [ %i.adl, %.thread834.i ] ; 2 uses
  %.30.lcssa.i = phi ptr [ %.27.lcssa.i, %.preheader883.i ], [ %.32.i, %.thread834.i ] ; 2 uses
  %i.acc = icmp slt i32 %.21221.lcssa.i, %6
  br i1 %i.acc, label %.lr.ph973.i, label %._crit_edge974.i

.lr.ph973.i:                                      ; preds = %.preheader882.i
  %19 = select <2 x i1> %14, <2 x float> %i.wx, <2 x float> zeroinitializer ; 2 uses
  %i.acd = select ninf nsz i1 %16, float %.21227.i, float 0.000000e+00
  %i.ace = insertelement <2 x float> poison, float %i.acd, i64 0
  %20 = shufflevector <2 x float> %i.ace, <2 x float> %19, <2 x i32> <i32 0, i32 2>
  %21 = fadd reassoc nsz arcp contract afn <2 x float> %19, %20
  br label %bb.dw

.lr.ph964.i:                                      ; preds = %.lr.ph964.i.preheader, %.thread834.i
  %.30963.i = phi ptr [ %.32.i, %.thread834.i ], [ %.27.lcssa.i, %.lr.ph964.i.preheader ] ; 9 uses
  %.81183962.i = phi ptr [ %i.adl, %.thread834.i ], [ %.71182.lcssa.i, %.lr.ph964.i.preheader ] ; 2 uses
  %.51215961.i = phi ptr [ %i.adk, %.thread834.i ], [ %.31213.lcssa.i, %.lr.ph964.i.preheader ] ; 4 uses
  %.21221960.i = phi i32 [ %i.adm, %.thread834.i ], [ %.11220.lcssa.i, %.lr.ph964.i.preheader ]
  %i.acf = load <4 x i32>, ptr %.81183962.i, align 4, !tbaa !49
  %i.acg = sitofp fast <4 x i32> %i.acf to <4 x float>
  %i.ach = fmul fast <4 x float> %i.wb, %i.acg    ; 6 uses
  %.not1261.i = icmp eq ptr %.30963.i, null
  br i1 %.not1261.i, label %.thread834.i, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph964.i
  br i1 %15, label %.thread821.i, label %bb.dr

.thread821.i:                                     ; preds = %bb.dq
  %i.aci = fadd fast <4 x float> %i.ach, %i.aam
  br label %.thread834.i

bb.dr:                                            ; preds = %bb.dq
  br i1 %or.cond11.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.acj = fadd fast <4 x float> %i.ach, %i.wy
  br label %.thread834.i

bb.dt:                                            ; preds = %bb.dr
  switch i32 %2, label %.thread834.i [
    i32 3, label %bb.du
    i32 4, label %bb.dv
  ]

bb.du:                                            ; preds = %bb.dt
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %.30963.i, i64 %i.t
  %i.acl = load <2 x float>, ptr %.30963.i, align 4, !tbaa !67
  %i.acm = load <2 x float>, ptr %i.ack, align 4, !tbaa !67
  %i.acn = shufflevector <2 x float> %i.acl, <2 x float> %i.acm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aco = fmul fast <4 x float> %i.acn, %i.bh
  %i.acp = fadd fast <4 x float> %i.aco, %i.ach
  %i.acq = getelementptr inbounds nuw i8, ptr %.30963.i, i64 8
  br label %.thread834.i

bb.dv:                                            ; preds = %bb.dt
  %i.acr = load <2 x float>, ptr %.30963.i, align 4, !tbaa !67
  %i.acs = fmul fast <2 x float> %i.acr, %i.bs
  %i.act = shufflevector <2 x float> %i.acs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.acu = fadd fast <4 x float> %i.act, %i.ach
  %i.acv = getelementptr inbounds nuw i8, ptr %.30963.i, i64 8
  br label %.thread834.i

.thread834.i:                                     ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds, %.thread821.i, %.lr.ph964.i
  %.32.i = phi ptr [ %i.acv, %bb.dv ], [ %.30963.i, %bb.dt ], [ null, %.lr.ph964.i ], [ %i.acq, %bb.du ], [ %.30963.i, %.thread821.i ], [ %.30963.i, %bb.ds ] ; 2 uses
  %i.acw = phi <4 x float> [ %i.acu, %bb.dv ], [ %i.ach, %bb.dt ], [ %i.ach, %.lr.ph964.i ], [ %i.acp, %bb.du ], [ %i.aci, %.thread821.i ], [ %i.acj, %bb.ds ] ; 2 uses
  %i.acx = shufflevector <4 x float> %i.acw, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.acy = fmul fast <2 x float> %i.acx, %18      ; 2 uses
  %i.acz = extractelement <2 x float> %i.acy, i64 0
  store float %i.acz, ptr %.51215961.i, align 4, !tbaa !67
  %i.ada = getelementptr inbounds nuw i8, ptr %.51215961.i, i64 4
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %.51215961.i, i64 %i.k ; 2 uses
  %i.adc = getelementptr i8, ptr %i.adb, i64 4
  %i.add = shufflevector <4 x float> %i.acw, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ade = fmul fast <2 x float> %i.add, %18      ; 2 uses
  %i.adf = shufflevector <2 x float> %i.ade, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.adg = select <2 x i1> %i.bu, <2 x float> %i.ade, <2 x float> %i.adf ; 2 uses
  %i.adh = extractelement <2 x float> %i.adg, i64 0
  store float %i.adh, ptr %i.ada, align 4, !tbaa !67
  %i.adi = extractelement <2 x float> %i.adg, i64 1
  store float %i.adi, ptr %i.adb, align 4, !tbaa !67
  %i.adj = extractelement <2 x float> %i.acy, i64 1
  store float %i.adj, ptr %i.adc, align 4, !tbaa !67
  %i.adk = getelementptr inbounds nuw i8, ptr %.51215961.i, i64 %..idx869.i ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.81183962.i, i64 16 ; 2 uses
  %i.adm = add nuw nsw i32 %.21221960.i, 2        ; 3 uses
  %i.adn = or disjoint i32 %i.adm, 1
  %i.ado = icmp slt i32 %i.adn, %6
  br i1 %i.ado, label %.lr.ph964.i, label %.preheader882.i, !llvm.loop !590

bb.dw:                                            ; preds = %bb.ec, %.lr.ph973.i
  %.33972.i = phi ptr [ %.30.lcssa.i, %.lr.ph973.i ], [ %.35.i, %bb.ec ] ; 7 uses
  %.91184971.i = phi ptr [ %.81183.lcssa.i, %.lr.ph973.i ], [ %i.aeq, %bb.ec ] ; 2 uses
  %.71217970.i = phi ptr [ %.51215.lcssa.i, %.lr.ph973.i ], [ %.81218.i, %bb.ec ] ; 5 uses
  %.31222969.i = phi i32 [ %.21221.lcssa.i, %.lr.ph973.i ], [ %i.aer, %bb.ec ]
  %i.adp = load <2 x i32>, ptr %.91184971.i, align 4, !tbaa !49
  %i.adq = sitofp fast <2 x i32> %i.adp to <2 x float>
  %i.adr = fmul fast <2 x float> %i.wa, %i.adq    ; 3 uses
  %.not1260.i = icmp eq ptr %.33972.i, null
  br i1 %.not1260.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ads = fadd reassoc nsz arcp contract afn <2 x float> %21, %i.adr ; 2 uses
  switch i32 %2, label %bb.dz [
    i32 3, label %.thread840.i
    i32 4, label %bb.dy
  ]

.thread840.i:                                     ; preds = %bb.dx
  %i.adt = load float, ptr %.33972.i, align 4, !tbaa !67
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %.33972.i, i64 %i.t
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !67
  %i.adw = insertelement <2 x float> poison, float %i.adt, i64 0
  %i.adx = insertelement <2 x float> %i.adw, float %i.adv, i64 1
  %i.ady = fmul fast <2 x float> %i.adx, %i.bs
  %i.adz = fadd fast <2 x float> %i.ady, %i.adr
  %i.aea = getelementptr inbounds nuw i8, ptr %.33972.i, i64 4
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aeb = load float, ptr %.33972.i, align 4, !tbaa !67
  %i.aec = fmul fast float %i.aeb, %9
  %i.aed = insertelement <2 x float> poison, float %i.aec, i64 0
  %i.aee = shufflevector <2 x float> %i.aed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aef = fadd fast <2 x float> %i.aee, %i.ads
  %i.aeg = getelementptr inbounds nuw i8, ptr %.33972.i, i64 4
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.thread840.i, %bb.dx, %bb.dw
  %.35.i = phi ptr [ %i.aeg, %bb.dy ], [ %.33972.i, %bb.dx ], [ null, %bb.dw ], [ %i.aea, %.thread840.i ] ; 2 uses
  %i.aeh = phi <2 x float> [ %i.aef, %bb.dy ], [ %i.ads, %bb.dx ], [ %i.adr, %bb.dw ], [ %i.adz, %.thread840.i ] ; 2 uses
  %i.aei = extractelement <2 x float> %i.aeh, i64 0
  %i.aej = fmul fast float %i.aei, %8
  %i.aek = extractelement <2 x float> %i.aeh, i64 1
  %i.ael = fmul fast float %i.aek, %8             ; 2 uses
  store float %i.aej, ptr %.71217970.i, align 4, !tbaa !67
  br i1 %.not1258.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aem = getelementptr inbounds nuw i8, ptr %.71217970.i, i64 4
  store float %i.ael, ptr %i.aem, align 4, !tbaa !67
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %.71217970.i, i64 %i.k
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %.71217970.i, i64 %i.k
  store float %i.ael, ptr %i.aeo, align 4, !tbaa !67
  %i.aep = getelementptr inbounds nuw i8, ptr %.71217970.i, i64 4
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.81218.i = phi ptr [ %i.aen, %bb.ea ], [ %i.aep, %bb.eb ]
  %i.aeq = getelementptr inbounds nuw i8, ptr %.91184971.i, i64 8 ; 2 uses
  %i.aer = add nuw nsw i32 %.31222969.i, 1        ; 2 uses
  %exitcond1056.not.i = icmp eq i32 %i.aer, %6
  br i1 %exitcond1056.not.i, label %._crit_edge974.i, label %bb.dw, !llvm.loop !591

._crit_edge974.i:                                 ; preds = %bb.ec, %.preheader882.i
  %.91184.lcssa.i = phi ptr [ %.81183.lcssa.i, %.preheader882.i ], [ %i.aeq, %bb.ec ] ; 2 uses
  %.33.lcssa.i = phi ptr [ %.30.lcssa.i, %.preheader882.i ], [ %.35.i, %bb.ec ] ; 2 uses
  %indvars.iv.next1058.i = add nuw nsw i64 %indvars.iv1057.i, 2 ; 3 uses
  %i.aes = icmp slt i64 %indvars.iv.next1058.i, %invariant.op1108.i
  br i1 %i.aes, label %bb.cg, label %.preheader881.loopexit.i, !llvm.loop !592

bb.ed:                                            ; preds = %._crit_edge1020.i, %.lr.ph1026.i
  %indvars.iv1061.i = phi i64 [ %i.vl, %.lr.ph1026.i ], [ %indvars.iv.next1062.i, %._crit_edge1020.i ] ; 4 uses
  %.361025.i = phi ptr [ %.20.lcssa.i, %.lr.ph1026.i ], [ %.46.lcssa.i, %._crit_edge1020.i ] ; 4 uses
  %.1011851024.i = phi ptr [ %.51180.lcssa.i, %.lr.ph1026.i ], [ %.141189.lcssa.i, %._crit_edge1020.i ] ; 2 uses
  %i.aet = load ptr, ptr %1, align 8, !tbaa !23   ; 2 uses
  br i1 %.not.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.aet, i64 %i.uy
  %i.aev = add nsw i64 %indvars.iv1061.i, %i.va   ; 2 uses
  %i.aew = mul nsw i64 %i.aev, %i.vm
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.aeu, i64 %i.aew
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  %i.aey = add nsw i64 %indvars.iv1061.i, %i.va   ; 2 uses
  %i.aez = mul i64 %i.aey, %i.k
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aet, i64 %i.aez
  %i.afb = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.ux
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.pre-phi1065.i = phi i64 [ %i.aey, %bb.ef ], [ %i.aev, %bb.ee ] ; 2 uses
  %.01138.i = phi ptr [ %i.afb, %bb.ef ], [ %i.aex, %bb.ee ] ; 2 uses
  %i.afc = load ptr, ptr %7, align 8, !tbaa !23
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.afc, i64 %.pre-phi1065.i
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !67 ; 3 uses
  %i.aff = insertelement <4 x float> poison, float %i.afe, i64 0
  %i.afg = shufflevector <4 x float> %i.aff, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %.not1242.i = icmp eq ptr %.361025.i, null
  br i1 %.not1242.i, label %.thread856.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.uz, label %.thread844.i, label %bb.ei

.thread844.i:                                     ; preds = %bb.eh
  %i.afh = load float, ptr %.361025.i, align 4, !tbaa !67
  %i.afi = fmul fast float %i.afh, %9             ; 2 uses
  %i.afj = insertelement <4 x float> poison, float %i.afi, i64 0
  %i.afk = shufflevector <4 x float> %i.afj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread856.i

bb.ei:                                            ; preds = %bb.eh
  br i1 %or.cond21.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.afl = load ptr, ptr %0, align 8, !tbaa !23
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.afl, i64 %i.va
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %indvars.iv1061.i ; 2 uses
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !67
  %i.afp = fmul fast float %i.afo, %9             ; 2 uses
  %i.afq = insertelement <4 x float> poison, float %i.afp, i64 0
  %i.afr = shufflevector <4 x float> %i.afq, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread856.i

bb.ek:                                            ; preds = %bb.ei
  switch i32 %2, label %.thread856.i [
    i32 3, label %bb.el
    i32 4, label %bb.em
  ]

bb.el:                                            ; preds = %bb.ek
  %i.afs = load ptr, ptr %0, align 8, !tbaa !23
  %i.aft = mul i64 %.pre-phi1065.i, %i.t
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.aft
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.afu, i64 %i.ux
  br label %.thread856.i

bb.em:                                            ; preds = %bb.ek
  %i.afw = load ptr, ptr %0, align 8, !tbaa !23
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.afw, i64 %i.ux
  br label %.thread856.i

.thread856.i:                                     ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej, %.thread844.i, %bb.eg
  %.2549.i = phi nsz <4 x float> [ zeroinitializer, %bb.eg ], [ zeroinitializer, %bb.em ], [ zeroinitializer, %bb.ek ], [ zeroinitializer, %bb.el ], [ %i.afk, %.thread844.i ], [ %i.afr, %bb.ej ] ; 2 uses
  %.39.i = phi ptr [ null, %bb.eg ], [ %i.afx, %bb.em ], [ %.361025.i, %bb.ek ], [ %i.afv, %bb.el ], [ %.361025.i, %.thread844.i ], [ %i.afn, %bb.ej ] ; 2 uses
  %.21137.i = phi nsz float [ 0.000000e+00, %bb.eg ], [ 0.000000e+00, %bb.em ], [ 0.000000e+00, %bb.ek ], [ 0.000000e+00, %bb.el ], [ %i.afi, %.thread844.i ], [ %i.afp, %bb.ej ] ; 2 uses
  br i1 %i.vb, label %.lr.ph990.i, label %.preheader880.i

.preheader880.i:                                  ; preds = %bb.ex, %.thread856.i
  %.3550.lcssa.i = phi <4 x float> [ %.2549.i, %.thread856.i ], [ %.4551.i, %bb.ex ]
  %.111186.lcssa.i = phi ptr [ %.1011851024.i, %.thread856.i ], [ %i.ahc, %bb.ex ] ; 2 uses
  %.40.lcssa.i = phi ptr [ %.39.i, %.thread856.i ], [ %.41.i, %bb.ex ] ; 2 uses
  %.11139.lcssa.i = phi ptr [ %.01138.i, %.thread856.i ], [ %i.ahb, %bb.ex ] ; 2 uses
  %.01133.lcssa.i = phi i32 [ 0, %.thread856.i ], [ %i.vk, %bb.ex ] ; 3 uses
  %i.afy = or disjoint i32 %.01133.lcssa.i, 3
  %i.afz = icmp slt i32 %i.afy, %6
  br i1 %i.afz, label %.lr.ph1001.i, label %.preheader879.i

.lr.ph990.i:                                      ; preds = %.thread856.i, %bb.ex
  %.01133989.i = phi i32 [ %i.ahd, %bb.ex ], [ 0, %.thread856.i ]
  %.11139988.i = phi ptr [ %i.ahb, %bb.ex ], [ %.01138.i, %.thread856.i ] ; 15 uses
  %.40987.i = phi ptr [ %.41.i, %bb.ex ], [ %.39.i, %.thread856.i ] ; 6 uses
  %.111186986.i = phi ptr [ %i.ahc, %bb.ex ], [ %.1011851024.i, %.thread856.i ] ; 3 uses
  %.3550985.i = phi <4 x float> [ %.4551.i, %bb.ex ], [ %.2549.i, %.thread856.i ] ; 5 uses
  %i.aga = load <4 x i32>, ptr %.111186986.i, align 1, !tbaa !87
  %i.agb = sitofp fast <4 x i32> %i.aga to <4 x float>
  %i.agc = fmul fast <4 x float> %i.afg, %i.agb   ; 4 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.111186986.i, i64 16
  %i.age = load <4 x i32>, ptr %i.agd, align 1, !tbaa !87
  %i.agf = sitofp fast <4 x i32> %i.age to <4 x float>
  %i.agg = fmul fast <4 x float> %i.afg, %i.agf   ; 4 uses
  %.not1249.i = icmp eq ptr %.40987.i, null
  br i1 %.not1249.i, label %bb.eq, label %bb.en

bb.en:                                            ; preds = %.lr.ph990.i
  br i1 %or.cond21.i, label %.thread860.i, label %bb.eo

.thread860.i:                                     ; preds = %bb.en
  %i.agh = fadd fast <4 x float> %i.agc, %.3550985.i
  %i.agi = fadd fast <4 x float> %i.agg, %.3550985.i
  br label %bb.eq

bb.eo:                                            ; preds = %bb.en
  br i1 %or.cond27.i, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.agj = load <4 x float>, ptr %.40987.i, align 1, !tbaa !87 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.40987.i, i64 16
  %i.agl = load <4 x float>, ptr %i.agk, align 1, !tbaa !87
  %i.agm = fmul fast <4 x float> %i.agj, %i.ve
  %i.agn = fadd fast <4 x float> %i.agm, %i.agc
  %i.ago = fmul fast <4 x float> %i.agl, %i.ve
  %i.agp = fadd fast <4 x float> %i.ago, %i.agg
  %i.agq = getelementptr inbounds nuw i8, ptr %.40987.i, i64 32
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %.thread860.i, %.lr.ph990.i
  %.4551.i = phi nsz <4 x float> [ %.3550985.i, %.lr.ph990.i ], [ %i.agj, %bb.ep ], [ %.3550985.i, %bb.eo ], [ %.3550985.i, %.thread860.i ] ; 2 uses
  %.1545.i = phi nsz <4 x float> [ %i.agc, %.lr.ph990.i ], [ %i.agn, %bb.ep ], [ %i.agc, %bb.eo ], [ %i.agh, %.thread860.i ]
  %.1542.i = phi nsz <4 x float> [ %i.agg, %.lr.ph990.i ], [ %i.agp, %bb.ep ], [ %i.agg, %bb.eo ], [ %i.agi, %.thread860.i ]
  %.41.i = phi ptr [ null, %.lr.ph990.i ], [ %i.agq, %bb.ep ], [ %.40987.i, %bb.eo ], [ %.40987.i, %.thread860.i ] ; 2 uses
  %.2546.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.1545.i, %i.vi ; 7 uses
  %.2543.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.1542.i, %i.vi ; 7 uses
  br i1 %.not.i, label %bb.ew, label %bb.er

bb.er:                                            ; preds = %bb.eq
  br i1 %i.vj, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  store <4 x float> %.2546.i, ptr %.11139988.i, align 1, !tbaa !87
  %i.agr = getelementptr inbounds nuw i8, ptr %.11139988.i, i64 16
  store <4 x float> %.2543.i, ptr %i.agr, align 1, !tbaa !87
  br label %bb.ex

bb.et:                                            ; preds = %bb.er
  switch i32 %i.b, label %bb.ex [
    i32 4, label %bb.eu
    i32 1, label %bb.ev
  ]

bb.eu:                                            ; preds = %bb.et
  store <4 x float> %.2546.i, ptr %.11139988.i, align 1, !tbaa !87
  %i.ags = getelementptr inbounds nuw i8, ptr %.11139988.i, i64 %.idx1253.i
  store <4 x float> %.2543.i, ptr %i.ags, align 1, !tbaa !87
  br label %bb.ex

bb.ev:                                            ; preds = %bb.et
  %.sroa.04.0.vec.extract.i = extractelement <4 x float> %.2546.i, i64 0
  store float %.sroa.04.0.vec.extract.i, ptr %.11139988.i, align 4, !tbaa !67
  %.sroa.04.4.vec.extract.i = extractelement <4 x float> %.2546.i, i64 1
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.11139988.i, i64 %i.k
  store float %.sroa.04.4.vec.extract.i, ptr %i.agt, align 4, !tbaa !67
  %.sroa.04.8.vec.extract.i = extractelement <4 x float> %.2546.i, i64 2
  %i.agu = getelementptr inbounds nuw i8, ptr %.11139988.i, i64 %.idx1251.i
  store float %.sroa.04.8.vec.extract.i, ptr %i.agu, align 4, !tbaa !67
  %.sroa.04.12.vec.extract.i = extractelement <4 x float> %.2546.i, i64 3
  %i.agv = getelementptr inbounds nuw i8, ptr %.11139988.i, i64 %.idx1252.i
  store float %.sroa.04.12.vec.extract.i, ptr %i.agv, align 4, !tbaa !67
  %.sroa.7.16.vec.extract.i = extractelement <4 x float> %.2543.i, i64 0
  %i.agw = getelementptr inbounds nuw i8, ptr %.11139988.i, i64 %.idx1253.i
  store float %.sroa.7.16.vec.extract.i, ptr %i.agw, align 4, !tbaa !67
  %.sroa.7.20.vec.extract.i = extractelement <4 x float> %.2543.i, i64 1
  %i.agx = getelementptr inbounds nuw i8, ptr %.11139988.i, i64 %.idx1254.i
  store float %.sroa.7.20.vec.extract.i, ptr %i.agx, align 4, !tbaa !67
  %.sroa.7.24.vec.extract.i = extractelement <4 x float> %.2543.i, i64 2
  %i.agy = getelementptr inbounds nuw i8, ptr %.11139988.i, i64 %.idx1255.i
  store float %.sroa.7.24.vec.extract.i, ptr %i.agy, align 4, !tbaa !67
  %.sroa.7.28.vec.extract.i = extractelement <4 x float> %.2543.i, i64 3
  %i.agz = getelementptr inbounds nuw i8, ptr %.11139988.i, i64 %.idx1256.i
  store float %.sroa.7.28.vec.extract.i, ptr %i.agz, align 4, !tbaa !67
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eq
  store <4 x float> %.2546.i, ptr %.11139988.i, align 1, !tbaa !87
  %i.aha = getelementptr inbounds nuw i8, ptr %.11139988.i, i64 16
  store <4 x float> %.2543.i, ptr %i.aha, align 1, !tbaa !87
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es
  %.sink1117.i.a = phi i64 [ 32, %bb.ew ], [ %.idx1257.i, %bb.eu ], [ %.idx1257.i, %bb.et ], [ %.idx1257.i, %bb.ev ], [ 32, %bb.es ]
  %i.ahb = getelementptr inbounds nuw i8, ptr %.11139988.i, i64 %.sink1117.i.a ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.111186986.i, i64 32 ; 2 uses
  %i.ahd = add nuw nsw i32 %.01133989.i, 8        ; 2 uses
  %i.ahe = or disjoint i32 %i.ahd, 7
  %i.ahf = icmp slt i32 %i.ahe, %6
  br i1 %i.ahf, label %.lr.ph990.i, label %.preheader880.i, !llvm.loop !593

.preheader879.i:                                  ; preds = %bb.fi, %.preheader880.i
  %.121187.lcssa.i = phi ptr [ %.111186.lcssa.i, %.preheader880.i ], [ %i.aia, %bb.fi ] ; 2 uses
  %.42.lcssa.i = phi ptr [ %.40.lcssa.i, %.preheader880.i ], [ %.43.i, %bb.fi ] ; 2 uses
  %.31141.lcssa.i = phi ptr [ %.11139.lcssa.i, %.preheader880.i ], [ %i.ahz, %bb.fi ] ; 2 uses
  %.11134.lcssa.i = phi i32 [ %.01133.lcssa.i, %.preheader880.i ], [ %i.aib, %bb.fi ] ; 3 uses
  %i.ahg = or disjoint i32 %.11134.lcssa.i, 1
  %i.ahh = icmp slt i32 %i.ahg, %6
  br i1 %i.ahh, label %.lr.ph1010.i, label %.preheader.i

.lr.ph1010.i:                                     ; preds = %.preheader879.i
  %i.ahi = select ninf nsz i1 %or.cond21.i, float %.21137.i, float 0.000000e+00
  %i.ahj = insertelement <2 x float> poison, float %i.afe, i64 0
  %i.ahk = shufflevector <2 x float> %i.ahj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahl = insertelement <2 x float> poison, float %i.ahi, i64 0
  %i.ahm = shufflevector <2 x float> %i.ahl, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.fj

.lr.ph1001.i:                                     ; preds = %.preheader880.i, %bb.fi
  %.111341000.i = phi i32 [ %i.aib, %bb.fi ], [ %.01133.lcssa.i, %.preheader880.i ]
  %.31141999.i = phi ptr [ %i.ahz, %bb.fi ], [ %.11139.lcssa.i, %.preheader880.i ] ; 8 uses
  %.42998.i = phi ptr [ %.43.i, %bb.fi ], [ %.40.lcssa.i, %.preheader880.i ] ; 5 uses
  %.121187997.i = phi ptr [ %i.aia, %bb.fi ], [ %.111186.lcssa.i, %.preheader880.i ] ; 2 uses
  %.5552996.i = phi <4 x float> [ %.6553.i, %bb.fi ], [ %.3550.lcssa.i, %.preheader880.i ] ; 4 uses
  %i.ahn = load <4 x i32>, ptr %.121187997.i, align 1, !tbaa !87
  %i.aho = sitofp fast <4 x i32> %i.ahn to <4 x float>
  %i.ahp = fmul fast <4 x float> %i.afg, %i.aho   ; 4 uses
  %.not1245.i = icmp eq ptr %.42998.i, null
  br i1 %.not1245.i, label %bb.fb, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph1001.i
  br i1 %or.cond21.i, label %.thread864.i, label %bb.ez

.thread864.i:                                     ; preds = %bb.ey
  %i.ahq = fadd fast <4 x float> %i.ahp, %.5552996.i
  br label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  br i1 %or.cond27.i, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.ahr = load <4 x float>, ptr %.42998.i, align 1, !tbaa !87 ; 2 uses
  %i.ahs = fmul fast <4 x float> %i.ahr, %i.ve
  %i.aht = fadd fast <4 x float> %i.ahs, %i.ahp
  %i.ahu = getelementptr inbounds nuw i8, ptr %.42998.i, i64 16
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez, %.thread864.i, %.lr.ph1001.i
  %.6553.i = phi nsz <4 x float> [ %.5552996.i, %.lr.ph1001.i ], [ %i.ahr, %bb.fa ], [ %.5552996.i, %bb.ez ], [ %.5552996.i, %.thread864.i ]
  %.1510.i = phi nsz <4 x float> [ %i.ahp, %.lr.ph1001.i ], [ %i.aht, %bb.fa ], [ %i.ahp, %bb.ez ], [ %i.ahq, %.thread864.i ]
  %.43.i = phi ptr [ null, %.lr.ph1001.i ], [ %i.ahu, %bb.fa ], [ %.42998.i, %bb.ez ], [ %.42998.i, %.thread864.i ] ; 2 uses
  %i.ahv = fmul fast <4 x float> %.1510.i, %i.vh  ; 7 uses
  br i1 %.not.i, label %bb.fh, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.vj, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store <4 x float> %i.ahv, ptr %.31141999.i, align 1, !tbaa !87
  br label %bb.fi

bb.fe:                                            ; preds = %bb.fc
  switch i32 %i.b, label %bb.fi [
    i32 4, label %bb.ff
    i32 1, label %bb.fg
  ]

bb.ff:                                            ; preds = %bb.fe
  store <4 x float> %i.ahv, ptr %.31141999.i, align 1, !tbaa !87
  br label %bb.fi

bb.fg:                                            ; preds = %bb.fe
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.ahv, i64 0
  store float %.sroa.0.0.vec.extract.i, ptr %.31141999.i, align 4, !tbaa !67
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.ahv, i64 1
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %.31141999.i, i64 %i.k
  store float %.sroa.0.4.vec.extract.i, ptr %i.ahw, align 4, !tbaa !67
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.ahv, i64 2
  %i.ahx = getelementptr inbounds nuw i8, ptr %.31141999.i, i64 %.idx1251.i
  store float %.sroa.0.8.vec.extract.i, ptr %i.ahx, align 4, !tbaa !67
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.ahv, i64 3
  %i.ahy = getelementptr inbounds nuw i8, ptr %.31141999.i, i64 %.idx1252.i
  store float %.sroa.0.12.vec.extract.i, ptr %i.ahy, align 4, !tbaa !67
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fb
  store <4 x float> %i.ahv, ptr %.31141999.i, align 1, !tbaa !87
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd
  %.sink1118.i = phi i64 [ 16, %bb.fh ], [ %.idx1253.i, %bb.ff ], [ %.idx1253.i, %bb.fe ], [ %.idx1253.i, %bb.fg ], [ 16, %bb.fd ]
  %i.ahz = getelementptr inbounds nuw i8, ptr %.31141999.i, i64 %.sink1118.i ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %.121187997.i, i64 16 ; 2 uses
  %i.aib = add nuw nsw i32 %.111341000.i, 4       ; 3 uses
  %i.aic = or disjoint i32 %i.aib, 3
  %i.aid = icmp slt i32 %i.aic, %6
  br i1 %i.aid, label %.lr.ph1001.i, label %.preheader879.i, !llvm.loop !594

.preheader.i:                                     ; preds = %bb.fp, %.preheader879.i
  %.131188.lcssa.i = phi ptr [ %.121187.lcssa.i, %.preheader879.i ], [ %i.aiw, %bb.fp ] ; 2 uses
  %.44.lcssa.i = phi ptr [ %.42.lcssa.i, %.preheader879.i ], [ %.45.i, %bb.fp ] ; 2 uses
  %.5.lcssa.i = phi ptr [ %.31141.lcssa.i, %.preheader879.i ], [ %i.aiv, %bb.fp ]
  %.2.lcssa.i = phi i32 [ %.11134.lcssa.i, %.preheader879.i ], [ %i.aix, %bb.fp ] ; 2 uses
  %i.aie = icmp slt i32 %.2.lcssa.i, %6
  br i1 %i.aie, label %.lr.ph1019.i, label %._crit_edge1020.i

.lr.ph1019.i:                                     ; preds = %.preheader.i
  %i.aif = select ninf nsz i1 %or.cond21.i, float %.21137.i, float 0.000000e+00
  br label %bb.fq

bb.fj:                                            ; preds = %bb.fp, %.lr.ph1010.i
  %.21009.i = phi i32 [ %.11134.lcssa.i, %.lr.ph1010.i ], [ %i.aix, %bb.fp ]
  %.51008.i = phi ptr [ %.31141.lcssa.i, %.lr.ph1010.i ], [ %i.aiv, %bb.fp ] ; 4 uses
  %.441007.i = phi ptr [ %.42.lcssa.i, %.lr.ph1010.i ], [ %.45.i, %bb.fp ] ; 4 uses
  %.1311881006.i = phi ptr [ %.121187.lcssa.i, %.lr.ph1010.i ], [ %i.aiw, %bb.fp ] ; 2 uses
  %i.aig = load <2 x i32>, ptr %.1311881006.i, align 4, !tbaa !49
  %i.aih = sitofp fast <2 x i32> %i.aig to <2 x float>
  %i.aii = fmul fast <2 x float> %i.ahk, %i.aih   ; 3 uses
  %.not1244.i = icmp eq ptr %.441007.i, null
  br i1 %.not1244.i, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aij = fadd fast <2 x float> %i.aii, %i.ahm
  br i1 %or.cond27.i, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.aik = load <2 x float>, ptr %.441007.i, align 4, !tbaa !67
  %i.ail = fmul fast <2 x float> %i.aik, %i.vo
  %i.aim = fadd fast <2 x float> %i.ail, %i.aii
  %i.ain = getelementptr inbounds nuw i8, ptr %.441007.i, i64 8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk, %bb.fj
  %.45.i = phi ptr [ %i.ain, %bb.fl ], [ %.441007.i, %bb.fk ], [ null, %bb.fj ] ; 2 uses
  %i.aio = phi <2 x float> [ %i.aim, %bb.fl ], [ %i.aij, %bb.fk ], [ %i.aii, %bb.fj ] ; 2 uses
  %i.aip = extractelement <2 x float> %i.aio, i64 0
  %i.aiq = fmul fast float %i.aip, %8
  %i.air = extractelement <2 x float> %i.aio, i64 1
  %i.ais = fmul fast float %i.air, %8             ; 2 uses
  store float %i.aiq, ptr %.51008.i, align 4, !tbaa !67
  br i1 %.not.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %.51008.i, i64 %i.k
  store float %i.ais, ptr %i.ait, align 4, !tbaa !67
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.aiu = getelementptr inbounds nuw i8, ptr %.51008.i, i64 4
  store float %i.ais, ptr %i.aiu, align 4, !tbaa !67
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.sink1119.i = phi i64 [ 8, %bb.fo ], [ %.idx1251.i, %bb.fn ]
  %i.aiv = getelementptr inbounds nuw i8, ptr %.51008.i, i64 %.sink1119.i ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %.1311881006.i, i64 8 ; 2 uses
  %i.aix = add nuw nsw i32 %.21009.i, 2           ; 3 uses
  %i.aiy = or disjoint i32 %i.aix, 1
  %i.aiz = icmp slt i32 %i.aiy, %6
  br i1 %i.aiz, label %bb.fj, label %.preheader.i, !llvm.loop !595

bb.fq:                                            ; preds = %bb.ft, %.lr.ph1019.i
  %.31018.i = phi i32 [ %.2.lcssa.i, %.lr.ph1019.i ], [ %i.ajl, %bb.ft ]
  %.71017.i = phi ptr [ %.5.lcssa.i, %.lr.ph1019.i ], [ %.8.i, %bb.ft ] ; 3 uses
  %.461016.i = phi ptr [ %.44.lcssa.i, %.lr.ph1019.i ], [ %.47.i, %bb.ft ] ; 4 uses
  %.1411891015.i = phi ptr [ %.131188.lcssa.i, %.lr.ph1019.i ], [ %i.ajk, %bb.ft ] ; 2 uses
  %i.aja = load i32, ptr %.1411891015.i, align 4, !tbaa !49
  %i.ajb = sitofp fast i32 %i.aja to float
  %i.ajc = fmul fast float %i.afe, %i.ajb         ; 3 uses
  %.not1243.i = icmp eq ptr %.461016.i, null
  br i1 %.not1243.i, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %.0.i = fadd fast float %i.ajc, %i.aif
  br i1 %or.cond27.i, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.ajd = load float, ptr %.461016.i, align 4, !tbaa !67
  %i.aje = fmul fast float %i.ajd, %9
  %i.ajf = fadd fast float %i.aje, %i.ajc
  %i.ajg = getelementptr inbounds nuw i8, ptr %.461016.i, i64 4
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %bb.fq
  %.47.i = phi ptr [ %i.ajg, %bb.fs ], [ %.461016.i, %bb.fr ], [ null, %bb.fq ] ; 2 uses
  %.1.i = phi nsz float [ %i.ajf, %bb.fs ], [ %.0.i, %bb.fr ], [ %i.ajc, %bb.fq ]
  %i.ajh = fmul fast float %.1.i, %8
  store float %i.ajh, ptr %.71017.i, align 4, !tbaa !67
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %.71017.i, i64 %i.k
  %i.ajj = getelementptr inbounds nuw i8, ptr %.71017.i, i64 4
  %.8.i = select i1 %.not.i, ptr %i.ajj, ptr %i.aji
  %i.ajk = getelementptr inbounds nuw i8, ptr %.1411891015.i, i64 4 ; 2 uses
  %i.ajl = add nuw nsw i32 %.31018.i, 1           ; 2 uses
  %exitcond1060.not.i = icmp eq i32 %i.ajl, %6
  br i1 %exitcond1060.not.i, label %._crit_edge1020.i, label %bb.fq, !llvm.loop !596

._crit_edge1020.i:                                ; preds = %bb.ft, %.preheader.i
  %.141189.lcssa.i = phi ptr [ %.131188.lcssa.i, %.preheader.i ], [ %i.ajk, %bb.ft ]
  %.46.lcssa.i = phi ptr [ %.44.lcssa.i, %.preheader.i ], [ %.47.i, %bb.ft ]
  %indvars.iv.next1062.i = add nuw nsw i64 %indvars.iv1061.i, 1 ; 2 uses
  %exitcond1064.not.i = icmp eq i64 %indvars.iv.next1062.i, %wide.trip.count.i
  br i1 %exitcond1064.not.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit, label %bb.ed, !llvm.loop !597

_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit: ; preds = %._crit_edge1020.i, %.preheader881.i
  ret void
}

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn19cpu_support_x86_xopEv() local_unnamed_addr #1

declare void @_ZN4ncnn32gemm_transB_packed_tile_int8_xopERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #16

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16gemm_AT_x86_int8ERKNS_3MatES2_S2_S2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !49     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !49
  %i.h = load i32, ptr %0, align 4, !tbaa !49     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !49
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !49
  %i.k = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %.not72 = icmp sgt i32 %i.k, %i.j
  br i1 %.not72, label %._crit_edge, label %.noexc46.lr.ph

.noexc46.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %.noexc46

.noexc46:                                         ; preds = %.noexc46.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.073 = phi i32 [ %i.k, %.noexc46.lr.ph ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !49     ; 2 uses
  %i.p = sdiv i32 %.073, %i.o                     ; 2 uses
  %i.q = srem i32 %.073, %i.o                     ; 2 uses
  %i.r = load i32, ptr %4, align 4, !tbaa !49     ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.p                   ; 3 uses
  %i.t = load i32, ptr %5, align 4, !tbaa !49     ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.q                   ; 3 uses
  %i.v = load i32, ptr %6, align 4, !tbaa !49
  %i.w = sub nsw i32 %i.v, %i.s
  %.sroa.speculated69 = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.w) ; 2 uses
  %i.x = load i32, ptr %7, align 4, !tbaa !49
  %i.y = sub nsw i32 %i.x, %i.u
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.y) ; 2 uses
  %i.z = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !600
  %i.aa = load ptr, ptr %8, align 8, !tbaa !23, !noalias !600
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !24, !noalias !600
  %i.ac = sext i32 %i.p to i64
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !62, !noalias !600 ; 2 uses
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = sext i32 %i.z to i64
  %i.ai = sext i32 %i.q to i64
  %i.aj = mul nsw i64 %i.ah, %i.ai
  %i.ak = mul i64 %i.aj, %i.ae
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %9, align 4, !tbaa !49
  %.not37 = icmp eq i32 %i.am, 0
  %i.an = load float, ptr %11, align 4, !tbaa !67 ; 2 uses
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc46
  call fastcc void @_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr %i.al, i32 noundef %i.s, i32 noundef %.sroa.speculated69, i32 noundef %i.u, i32 noundef %.sroa.speculated, float noundef nofpclass(nan inf) %i.an)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc46
  call fastcc void @_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr %i.al, i32 noundef %i.s, i32 noundef %.sroa.speculated69, i32 noundef %i.u, i32 noundef %.sroa.speculated, float noundef nofpclass(nan inf) %i.an)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %i.ao = add nsw i32 %.073, 1
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !49
  %.not.not = icmp slt i32 %.073, %i.ap
  br i1 %.not.not, label %.noexc46, label %._crit_edge

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
define internal fastcc void @_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef nofpclass(nan inf) %5) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 23 uses
  %i.l = icmp sgt i32 %2, 7
  br i1 %i.l, label %.lr.ph113.i, label %.preheader81.i

.lr.ph113.i:                                      ; preds = %bb.a
  %i.m = mul nsw i32 %i.b, %3
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = insertelement <4 x float> poison, float %5, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.q = icmp sgt i32 %4, 1                       ; 2 uses
  %.idx312.i = shl i64 %i.k, 4                    ; 4 uses
  %.idx66.i = shl i64 %i.k, 3                     ; 2 uses
  %.idx67.i = mul i64 %i.k, 12                    ; 2 uses
  %.idx69.i = mul i64 %i.k, 20                    ; 2 uses
  %.idx70.i = mul i64 %i.k, 24                    ; 2 uses
  %.idx71.i = mul i64 %i.k, 28                    ; 2 uses
  %i.r = and i32 %4, -2                           ; 2 uses
  %i.s = zext nneg i32 %2 to i64                  ; 3 uses
  %i.t = sext i32 %1 to i64                       ; 2 uses
  switch i32 %i.b, label %.loopexit83.i.preheader [
    i32 4, label %.preheader87.i.us
    i32 1, label %.preheader84.i.us
  ]

.loopexit83.i.preheader:                          ; preds = %.lr.ph113.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.s, i64 15)
  %i.u = and i64 %umax, 2147483640
  br label %.preheader81.loopexit.i

.preheader87.i.us:                                ; preds = %.lr.ph113.i, %.loopexit83.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit83.i.us ], [ 0, %.lr.ph113.i ] ; 2 uses
  %.0274112.i.us = phi ptr [ %.6.i.us, %.loopexit83.i.us ], [ %.0.val, %.lr.ph113.i ] ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !23
  %i.w = add nsw i64 %indvars.iv.i.us, %i.t
  %i.x = mul i64 %i.w, %i.k
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.n ; 2 uses
  br i1 %i.q, label %.lr.ph.i.us, label %.preheader85.i.us

.lr.ph.i.us:                                      ; preds = %.preheader87.i.us, %.lr.ph.i.us
  %.127590.i.us = phi ptr [ %i.be, %.lr.ph.i.us ], [ %.0274112.i.us, %.preheader87.i.us ] ; 2 uses
  %.028089.i.us = phi ptr [ %i.bf, %.lr.ph.i.us ], [ %i.z, %.preheader87.i.us ] ; 3 uses
  %.028588.i.us = phi i32 [ %i.bg, %.lr.ph.i.us ], [ 0, %.preheader87.i.us ]
  %i.aa = load <8 x float>, ptr %.028089.i.us, align 16, !tbaa !87 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.028089.i.us, i64 %.idx312.i
  %i.ac = load <8 x float>, ptr %i.ab, align 16, !tbaa !87 ; 2 uses
  %i.ad = shufflevector <8 x float> %i.aa, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ae = shufflevector <8 x float> %i.aa, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.af = shufflevector <8 x float> %i.ac, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ag = shufflevector <8 x float> %i.ac, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
end_hunk_3
begin_hunk_4_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.17:bb.a
bb.u:                                             ; preds = %bb.t
  %i.lj = load ptr, ptr %i.bg, align 8, !tbaa !21 ; 2 uses
  %.not.i96.us = icmp eq ptr %i.lj, null
  br i1 %.not.i96.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lk = atomicrmw add ptr %i.lj, i32 -1 acq_rel, align 4
  %i.ll = icmp eq i32 %i.lk, 1
  br i1 %i.ll, label %bb.w, label %_ZN4ncnn3MatD2Ev.exit89.us

bb.w:                                             ; preds = %bb.v
  %i.lm = load ptr, ptr %i.bj, align 8, !tbaa !22 ; 3 uses
  %.not3.i97.us = icmp eq ptr %i.lm, null
  %i.ln = load ptr, ptr %16, align 8, !tbaa !23   ; 3 uses
  br i1 %.not3.i97.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.lo = load ptr, ptr %i.lm, align 8, !tbaa !15
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8
  invoke void %i.lq(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, ptr noundef %i.ln)
          to label %_ZN4ncnn3MatD2Ev.exit89.us unwind label %.split.us, !inline_history !0

bb.y:                                             ; preds = %bb.w
  %.not.i111.us = icmp eq ptr %i.ln, null
  br i1 %.not.i111.us, label %_ZN4ncnn3MatD2Ev.exit89.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.ln) #9
  br label %_ZN4ncnn3MatD2Ev.exit89.us

_ZN4ncnn3MatD2Ev.exit89.us:                       ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.lr = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %.not.i100.us = icmp eq ptr %i.lr, null
  br i1 %.not.i100.us, label %_ZN4ncnn3MatD2Ev.exit88.us, label %bb.aa

bb.aa:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit89.us
  %i.ls = atomicrmw add ptr %i.lr, i32 -1 acq_rel, align 4
  %i.lt = icmp eq i32 %i.ls, 1
  br i1 %i.lt, label %bb.ab, label %_ZN4ncnn3MatD2Ev.exit88.us

bb.ab:                                            ; preds = %bb.aa
  %i.lu = load ptr, ptr %i.au, align 8, !tbaa !22 ; 3 uses
  %.not3.i101.us = icmp eq ptr %i.lu, null
  %i.lv = load ptr, ptr %15, align 8, !tbaa !23   ; 3 uses
  br i1 %.not3.i101.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lw = load ptr, ptr %i.lu, align 8, !tbaa !15
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8
  invoke void %i.ly(ptr noundef nonnull align 8 dereferenceable(8) %i.lu, ptr noundef %i.lv)
          to label %_ZN4ncnn3MatD2Ev.exit88.us unwind label %.split191.us, !inline_history !0

bb.ad:                                            ; preds = %bb.ab
  %.not.i109.us = icmp eq ptr %i.lv, null
  br i1 %.not.i109.us, label %_ZN4ncnn3MatD2Ev.exit88.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.lv) #9
  br label %_ZN4ncnn3MatD2Ev.exit88.us

_ZN4ncnn3MatD2Ev.exit88.us:                       ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %_ZN4ncnn3MatD2Ev.exit89.us
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.lz = add nsw i32 %.0185.us, %i.dq            ; 2 uses
  %i.ma = icmp slt i32 %i.lz, %i.cm
  br i1 %i.ma, label %bb.h, label %._crit_edge.us, !llvm.loop !821

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit88.us
  %.val.us = load ptr, ptr %14, align 8
  call fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr %.val.us, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.bu, i32 noundef %i.cn, i32 noundef %.sroa.speculated166, i32 noundef %.083186.us, i32 noundef %.sroa.speculated162.us, ptr noundef nonnull align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.bx, float noundef nofpclass(nan inf) %i.by, i32 noundef %i.bw)
  %i.mb = add nsw i32 %.083186.us, %i.bt          ; 2 uses
  %i.mc = load i32, ptr %6, align 4, !tbaa !49    ; 2 uses
  %i.md = icmp slt i32 %i.mb, %i.mc
  br i1 %i.md, label %.lr.ph.us, label %._crit_edge188, !llvm.loop !822

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.h, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.me = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.me) #23
  unreachable

.split.us:                                        ; preds = %bb.x
  %i.mf = landingpad { ptr, i32 }
          catch ptr null
  %i.mg = extractvalue { ptr, i32 } %i.mf, 0
  call void @__clang_call_terminate(ptr %i.mg) #23
  unreachable

.split191.us:                                     ; preds = %bb.ac
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #23
  unreachable

._crit_edge188:                                   ; preds = %.lr.ph187.split, %._crit_edge.us, %_ZN4ncnn3Mat7channelEi.exit121
  %i.mj = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %.not.i104 = icmp eq ptr %i.mj, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge188
  %i.mk = atomicrmw add ptr %i.mj, i32 -1 acq_rel, align 4
  %i.ml = icmp eq i32 %i.mk, 1
  br i1 %i.ml, label %bb.ag, label %_ZN4ncnn3MatD2Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.mm = load ptr, ptr %i.ae, align 8, !tbaa !22 ; 3 uses
  %.not3.i105 = icmp eq ptr %i.mm, null
  %i.mn = load ptr, ptr %14, align 8, !tbaa !23   ; 3 uses
  br i1 %.not3.i105, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mo = load ptr, ptr %i.mm, align 8, !tbaa !15
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8
  invoke void %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef %i.mn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ak, !inline_history !0

bb.ai:                                            ; preds = %bb.ag
  %.not.i108 = icmp eq ptr %i.mn, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @free(ptr noundef nonnull %i.mn) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ak:                                            ; preds = %bb.ah
  %i.mr = landingpad { ptr, i32 }
          catch ptr null
  %i.ms = extractvalue { ptr, i32 } %i.mr, 0
  call void @__clang_call_terminate(ptr %i.ms) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.af, %._crit_edge188, %bb.ah, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.mt = add nsw i32 %.084194, 1
  %i.mu = load i32, ptr %i.b, align 4, !tbaa !49
  %.not.not = icmp slt i32 %.084194, %i.mu
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph187.split:                                  ; preds = %.lr.ph187, %.lr.ph187.split
  %i.mv = phi i32 [ %i.my, %.lr.ph187.split ], [ %i.dm, %.lr.ph187 ]
  %.083186 = phi i32 [ %i.mx, %.lr.ph187.split ], [ 0, %.lr.ph187 ] ; 3 uses
  %i.mw = sub nsw i32 %i.mv, %.083186
  %.sroa.speculated162 = call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.mw)
  %.val = load ptr, ptr %14, align 8
  call fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr %.val, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.bu, i32 noundef %i.cn, i32 noundef %.sroa.speculated166, i32 noundef %.083186, i32 noundef %.sroa.speculated162, ptr noundef nonnull align 8 dereferenceable(72) %11, float noundef nofpclass(nan inf) %i.bx, float noundef nofpclass(nan inf) %i.by, i32 noundef %i.bw)
  %i.mx = add nsw i32 %.083186, %i.bt             ; 2 uses
  %i.my = load i32, ptr %6, align 4, !tbaa !49    ; 2 uses
  %i.mz = icmp slt i32 %i.mx, %i.my
  br i1 %i.mz, label %.lr.ph187.split, label %._crit_edge188, !llvm.loop !822

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn16Gemm_x86_utility16pack_A_tile_int8ERKNS_3MatERS1_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #14 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !23
  tail call fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %.val, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn16Gemm_x86_utility28gemm_transB_packed_tile_int8ERKNS_3MatES3_RS1_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #2 {
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
  %10 = and i32 %i.h, 2147483644
  %.sroa.speculated115 = tail call i32 @llvm.umax.i32(i32 %10, i32 4) ; 6 uses
  store i32 %.sroa.speculated115, ptr %6, align 4, !tbaa !49
  store i32 %.sroa.speculated115, ptr %7, align 4, !tbaa !49
  store i32 %.sroa.speculated115, ptr %8, align 4, !tbaa !49
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = add nuw i32 %i.j, %.sroa.speculated115
  %i.l = udiv i32 %i.k, %.sroa.speculated115      ; 3 uses
  %i.m = add nuw i32 %i.j, %i.l
  %i.n = udiv i32 %i.m, %i.l
  %i.o = add nuw nsw i32 %i.n, 3
  %i.p = and i32 %i.o, -4
  %.sroa.speculated99 = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %.sroa.speculated115) ; 2 uses
  store i32 %.sroa.speculated99, ptr %8, align 4, !tbaa !49
  %i.q = icmp eq i32 %i.l, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = fmul fast float %i.e, 2.500000e-01
  %i.s = uitofp nneg i32 %.sroa.speculated99 to float
  %i.t = fdiv fast float %i.r, %i.s
  %i.u = fptosi float %i.t to i32
  %11 = and i32 %i.u, 2147483644
  %.sroa.speculated93 = tail call i32 @llvm.umax.i32(i32 %11, i32 4) ; 2 uses
  store i32 %.sroa.speculated93, ptr %6, align 4, !tbaa !49
  store i32 %.sroa.speculated93, ptr %7, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.v = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %.0)
  %i.w = load i32, ptr %6, align 4, !tbaa !49
  %i.x = mul nsw i32 %i.w, %.sroa.speculated83    ; 4 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %0, -1                       ; 2 uses
  %i.aa = add i32 %i.z, %i.x
  %i.ab = sdiv i32 %i.aa, %i.x                    ; 2 uses
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 3
  %i.af = sdiv i32 %i.ae, 4
  %i.ag = shl nsw i32 %i.af, 2
  %.sroa.speculated79 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.x)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ %.sroa.speculated79, %bb.g ], [ %i.x, %bb.f ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !49
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %7, align 4, !tbaa !49    ; 3 uses
  %i.aj = add nsw i32 %1, -1                      ; 2 uses
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai                   ; 2 uses
  %i.am = add i32 %i.aj, %i.al
  %i.an = sdiv i32 %i.am, %i.al
  %i.ao = add nsw i32 %i.an, 3
  %i.ap = sdiv i32 %i.ao, 4
  %i.aq = shl nsw i32 %i.ap, 2
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ai)
  store i32 %.sroa.speculated75, ptr %7, align 4, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = icmp sgt i32 %.0, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %6, align 4, !tbaa !49    ; 2 uses
  %i.at = sdiv i32 %i.as, %.0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1)
  %i.au = add nuw nsw i32 %.sroa.speculated, 3
  %i.av = and i32 %i.au, 2147483644
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.as)
  store i32 %.sroa.speculated71, ptr %6, align 4, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = add nuw nsw i32 %3, 3
  %i.ay = and i32 %i.ax, 2147483644
  store i32 %i.ay, ptr %6, align 4, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = icmp sgt i32 %4, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i32 %4, 3
  %i.bb = and i32 %i.ba, 2147483644
  store i32 %i.bb, ptr %7, align 4, !tbaa !49
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = icmp sgt i32 %5, 0
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = add nuw nsw i32 %5, 3
  %i.be = and i32 %i.bd, 2147483644
  store i32 %i.be, ptr %8, align 4, !tbaa !49
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

declare void @_ZN4ncnn24cast_float32_to_bfloat16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn8Gemm_x8621create_pipeline_bf16sERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !49     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !49
  %i.h = load i32, ptr %0, align 4, !tbaa !49     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !49
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !49
  %i.k = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
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
  %i.q = load i32, ptr %3, align 4, !tbaa !49     ; 2 uses
  %i.r = sdiv i32 %.069, %i.q                     ; 2 uses
  %i.s = srem i32 %.069, %i.q                     ; 2 uses
  %i.t = load i32, ptr %4, align 4, !tbaa !49     ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.r                   ; 3 uses
  %i.v = load i32, ptr %5, align 4, !tbaa !49     ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.s                   ; 3 uses
  %i.x = load i32, ptr %6, align 4, !tbaa !49
  %i.y = sub nsw i32 %i.x, %i.u
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.y) ; 2 uses
  %i.z = load i32, ptr %7, align 4, !tbaa !49
  %i.aa = sub nsw i32 %i.z, %i.w
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.v, i32 %i.aa) ; 2 uses
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !75, !noalias !830
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !23, !noalias !830
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !24, !noalias !830
  %i.ae = sext i32 %i.r to i64
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !62, !noalias !830 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = sext i32 %i.ab to i64
  %i.ak = sext i32 %i.s to i64
  %i.al = mul nsw i64 %i.aj, %i.ak
  %i.am = mul i64 %i.al, %i.ag
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.p, align 8, !tbaa !76
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
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !49
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
define internal fastcc void @_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
end_hunk_4
begin_hunk_5_@_ZN4ncnnL14gemm_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiffiiiiiRKNS_6OptionE.omp_outlined.24:bb.a
bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.074193 = phi i32 [ %i.k, %.lr.ph ], [ %i.cx, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = load i32, ptr %3, align 4, !tbaa !49     ; 2 uses
  %i.x = mul nsw i32 %i.w, %.074193               ; 5 uses
  %i.y = load i32, ptr %4, align 4, !tbaa !49
  %.not76 = icmp eq i32 %i.y, 0
  br i1 %.not76, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.l, align 4, !tbaa !75
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !74
  %i.ab = icmp eq i32 %i.aa, 3
  %.in78.v = select i1 %i.ab, i64 56, i64 48
  %.in78 = getelementptr inbounds nuw i8, ptr %5, i64 %.in78.v
  %i.ac = load i32, ptr %.in78, align 8, !tbaa !49
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !63
  %i.ae = mul nsw i32 %i.ad, %i.ac
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = load i32, ptr %i.m, align 8, !tbaa !74
  %i.ag = icmp eq i32 %i.af, 3
  %.in.v = select i1 %i.ag, i64 56, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %5, i64 %.in.v
  %i.ah = load i32, ptr %.in, align 8, !tbaa !49
  %i.ai = load i32, ptr %i.n, align 8, !tbaa !63
  %i.aj = mul nsw i32 %i.ai, %i.ah
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = phi i32 [ %i.z, %bb.d ], [ %i.aj, %bb.e ]
  %i.am = phi i32 [ %i.ae, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = sub nsw i32 %i.al, %i.x
  %.sroa.speculated186 = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.an) ; 5 uses
  %i.ao = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc112 unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %bb.f
  %i.ap = load ptr, ptr %6, align 8, !tbaa !23, !noalias !1068
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !24, !noalias !1068
  %i.ar = sext i32 %i.ao to i64
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = load i64, ptr %i.p, align 8, !tbaa !62, !noalias !1068
  %i.au = mul i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au ; 3 uses
  %i.aw = load i32, ptr %7, align 4, !tbaa !49    ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph191, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph191:                                        ; preds = %.noexc112
  %i.ay = icmp sgt i32 %i.am, 0
  %.pre195 = load i32, ptr %8, align 4, !tbaa !49 ; 2 uses
  br i1 %i.ay, label %.lr.ph.us, label %.lr.ph191.split

.lr.ph.us:                                        ; preds = %.lr.ph191, %._crit_edge.us
  %i.az = phi i32 [ %i.cs, %._crit_edge.us ], [ %.pre195, %.lr.ph191 ]
  %i.ba = phi i32 [ %i.cu, %._crit_edge.us ], [ %i.aw, %.lr.ph191 ]
  %.073190.us = phi i32 [ %i.ct, %._crit_edge.us ], [ 0, %.lr.ph191 ] ; 5 uses
  %i.bb = sub nsw i32 %i.ba, %.073190.us
  %.sroa.speculated171.us = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.bb) ; 2 uses
  %i.bc = icmp eq i32 %.073190.us, 0
  %.pre196 = load i32, ptr %9, align 4, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.us, %_ZN4ncnn3MatD2Ev.exit80.us
  %i.bd = phi i32 [ %.pre196, %.lr.ph.us ], [ %i.ck, %_ZN4ncnn3MatD2Ev.exit80.us ]
  %.0189.us = phi i32 [ 0, %.lr.ph.us ], [ %i.cl, %_ZN4ncnn3MatD2Ev.exit80.us ] ; 6 uses
  %i.be = sub nsw i32 %i.am, %.0189.us
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.be) ; 3 uses
  %i.bf = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc110.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110.us:                                     ; preds = %bb.g
  %i.bg = load i32, ptr %i.q, align 4, !tbaa !75, !noalias !1069
  %i.bh = load ptr, ptr %10, align 8, !tbaa !23, !noalias !1069
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !24, !noalias !1069
  %i.bj = sext i32 %i.bf to i64
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = load i64, ptr %i.s, align 8, !tbaa !62, !noalias !1069 ; 2 uses
  %i.bm = mul i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = sext i32 %i.bg to i64
  %i.bp = load i32, ptr %9, align 4, !tbaa !49
  %i.bq = sdiv i32 %.0189.us, %i.bp
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = mul i64 %i.bl, %i.bo
  %i.bt = mul i64 %i.bs, %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bt ; 3 uses
  %i.bv = load i32, ptr %8, align 4, !tbaa !49
  %i.bw = sdiv i32 %.073190.us, %i.bv
  %i.bx = load i32, ptr %i.t, align 4, !tbaa !75, !noalias !1070
  %i.by = load ptr, ptr %11, align 8, !tbaa !23, !noalias !1070
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !24, !noalias !1070
  %i.ca = sext i32 %i.bw to i64
  %i.cb = mul i64 %i.bz, %i.ca
  %i.cc = load i64, ptr %i.v, align 8, !tbaa !62, !noalias !1070 ; 2 uses
  %i.cd = mul i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cd
  %i.cf = sext i32 %i.bx to i64
  %i.cg = mul i64 %i.cc, %i.cf
  %i.ch = mul i64 %i.cg, %i.br
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  br i1 %i.bc, label %bb.h, label %_ZN4ncnn3MatD2Ev.exit80.us

bb.h:                                             ; preds = %.noexc110.us
  %i.cj = load i32, ptr %4, align 4, !tbaa !49
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
  %i.ck = load i32, ptr %9, align 4, !tbaa !49    ; 2 uses
  %i.cl = add nsw i32 %i.ck, %.0189.us            ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %i.am
  br i1 %i.cm, label %bb.g, label %._crit_edge.us, !llvm.loop !1066

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit80.us
  %i.cn = load i32, ptr %14, align 4, !tbaa !49
  %i.co = load float, ptr %15, align 4, !tbaa !67
  %i.cp = load float, ptr %16, align 4, !tbaa !67
  %i.cq = load i32, ptr %17, align 4, !tbaa !49
  %i.cr = load i32, ptr %18, align 4, !tbaa !49
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.av, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.cn, i32 noundef %i.x, i32 noundef %.sroa.speculated186, i32 noundef %.073190.us, i32 noundef %.sroa.speculated171.us, float noundef nofpclass(nan inf) %i.co, float noundef nofpclass(nan inf) %i.cp, i32 noundef %i.cq, i32 noundef %i.cr)
  %i.cs = load i32, ptr %8, align 4, !tbaa !49    ; 2 uses
  %i.ct = add nsw i32 %i.cs, %.073190.us          ; 2 uses
  %i.cu = load i32, ptr %7, align 4, !tbaa !49    ; 2 uses
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.us, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1067

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.cw) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph191.split, %._crit_edge.us, %.noexc112
  %i.cx = add nsw i32 %.074193, 1
  %i.cy = load i32, ptr %i.b, align 4, !tbaa !49
  %.not.not = icmp slt i32 %.074193, %i.cy
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph191.split:                                  ; preds = %.lr.ph191, %.lr.ph191.split
  %i.cz = phi i32 [ %i.dh, %.lr.ph191.split ], [ %.pre195, %.lr.ph191 ]
  %i.da = phi i32 [ %i.dj, %.lr.ph191.split ], [ %i.aw, %.lr.ph191 ]
  %.073190 = phi i32 [ %i.di, %.lr.ph191.split ], [ 0, %.lr.ph191 ] ; 3 uses
  %i.db = sub nsw i32 %i.da, %.073190
  %.sroa.speculated171 = call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.db)
  %i.dc = load i32, ptr %14, align 4, !tbaa !49
  %i.dd = load float, ptr %15, align 4, !tbaa !67
  %i.de = load float, ptr %16, align 4, !tbaa !67
  %i.df = load i32, ptr %17, align 4, !tbaa !49
  %i.dg = load i32, ptr %18, align 4, !tbaa !49
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.av, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.dc, i32 noundef %i.x, i32 noundef %.sroa.speculated186, i32 noundef %.073190, i32 noundef %.sroa.speculated171, float noundef nofpclass(nan inf) %i.dd, float noundef nofpclass(nan inf) %i.de, i32 noundef %i.df, i32 noundef %i.dg)
  %i.dh = load i32, ptr %8, align 4, !tbaa !49    ; 2 uses
  %i.di = add nsw i32 %i.dh, %.073190             ; 2 uses
  %i.dj = load i32, ptr %7, align 4, !tbaa !49    ; 2 uses
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph191.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1067

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
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

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
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #11

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { cold nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = distinct !{null}
!3 = distinct !{!3, !68}
!4 = distinct !{!4, !68}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"vtable pointer", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 int", !16, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!"p1 _ZTSN4ncnn9AllocatorE", !16, i64 0}
!20 = !{!"_ZTSN4ncnn3MatE", !16, i64 0, !17, i64 8, !18, i64 16, !11, i64 24, !19, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !18, i64 64}
!21 = !{!20, !17, i64 8}
!22 = !{!20, !19, i64 32}
!23 = !{!20, !16, i64 0}
!24 = !{!20, !18, i64 64}
!25 = !{!"bool", !10, i64 0}
!26 = !{!"p1 omnipotent char", !16, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !18, i64 8, !10, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !29, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !30, i64 0}
!32 = !{!"_ZTSSt6vectorIiSaIiEE", !31, i64 0}
!33 = !{!"p1 _ZTSN4ncnn3MatE", !16, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !34, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!37 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !36, i64 0}
!38 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !11, i64 28, !16, i64 32, !11, i64 40, !28, i64 48, !28, i64 80, !32, i64 112, !32, i64 136, !37, i64 160, !37, i64 184}
!39 = !{!"float", !10, i64 0}
!40 = !{!"_ZTSN4ncnn4GemmE", !38, i64 0, !39, i64 208, !39, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !20, i64 288, !20, i64 360, !20, i64 432, !20, i64 504, !39, i64 576}
!41 = !{!40, !11, i64 268}
!42 = !{!38, !25, i64 12}
!43 = !{!"_ZTSN4ncnn6OptionE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !11, i64 4, !19, i64 8, !19, i64 16, !11, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !25, i64 36, !25, i64 37, !25, i64 38, !25, i64 39, !11, i64 40, !25, i64 44, !25, i64 45, !25, i64 46, !25, i64 47, !10, i64 48, !25, i64 49, !25, i64 50, !25, i64 51, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !25, i64 62, !25, i64 63}
!44 = !{!43, !25, i64 32}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!40, !11, i64 224}
!48 = !{!40, !11, i64 236}
!49 = !{!11, !11, i64 0}
!50 = !{!40, !11, i64 244}
!51 = !{!40, !11, i64 272}
!52 = !{!40, !11, i64 276}
!53 = !{!40, !11, i64 280}
!54 = !{!43, !11, i64 4}
!55 = !{!20, !11, i64 56}
!56 = !{!43, !25, i64 0}
!57 = !{!40, !11, i64 228}
!58 = !{!40, !11, i64 240}
!59 = !{!40, !11, i64 232}
!60 = !{!40, !11, i64 248}
!61 = !{!16, !16, i64 0}
!62 = !{!20, !18, i64 16}
!63 = !{!20, !11, i64 24}
!64 = !{!43, !25, i64 39}
!65 = !{!40, !39, i64 212}
!66 = !{!"_ZTSN4ncnn8Gemm_x86E", !40, i64 0, !11, i64 580, !20, i64 584, !20, i64 656, !20, i64 728}
!67 = !{!39, !39, i64 0}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!66, !11, i64 580}
!73 = !{!40, !11, i64 220}
!74 = !{!20, !11, i64 40}
!75 = !{!20, !11, i64 44}
!76 = !{!40, !11, i64 216}
!77 = !{!20, !11, i64 48}
!78 = !{!43, !19, i64 16}
!79 = !{!40, !11, i64 264}
!80 = !{!40, !11, i64 256}
!81 = !{!34, !33, i64 0}
!82 = !{!40, !11, i64 252}
!83 = !{!43, !19, i64 8}
!84 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!40, !39, i64 208}
!87 = !{!10, !10, i64 0}
!88 = !{i64 2, i64 -1, i64 -1, i1 true}
!89 = !{!88}
!90 = !{!34, !33, i64 8}
!91 = !{!"_ZTSN4ncnn22gemm_x86_int8_omp_argsE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !39, i64 24, !39, i64 28}
!92 = !{!91, !11, i64 0}
!93 = !{!91, !11, i64 4}
!94 = !{!91, !11, i64 8}
!95 = !{!91, !11, i64 12}
!96 = !{!91, !11, i64 16}
!97 = !{!91, !11, i64 20}
!98 = !{!20, !11, i64 52}
!99 = !{!"llvm.loop.unswitch.partial.disable"}
!100 = !{!"branch_weights", i32 4, i32 12}
!101 = !{!"branch_weights", i32 4, i32 28}
!102 = !{!91, !39, i64 24}
!103 = !{!91, !39, i64 28}
!104 = !{!"short", !10, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!18, !18, i64 0}
!107 = distinct !{!107, i1 false, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !107}
!111 = distinct !{!111, !68, !69, !70}
!112 = distinct !{!112, !71}
!113 = distinct !{!113, !68, !69}
!114 = !{!66, !11, i64 752}
!115 = !{!108}
end_hunk_5
