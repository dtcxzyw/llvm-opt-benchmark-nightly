Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.14:bb.a
  br i1 %i.ake, label %bb.l, label %._crit_edge160, !llvm.loop !2042

._crit_edge165:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge165, %bb.a
  ret void

.loopexit:                                        ; preds = %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.m, %._crit_edge
  %lpad.loopexit122 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.c
  %lpad.loopexit.split-lp123 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit122, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp123, %.loopexit.split-lp.loopexit.split-lp ]
  %i.akf = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.akf) #33
  unreachable
}

declare void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn39convolution_im2col_input_tile_int8_avx2ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32>, <4 x i32>) #20

declare void @_ZN4ncnn20Gemm_x86_fma_utility28gemm_transB_packed_tile_int8ERKNS_3MatES3_RS1_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn29unpack_output_tile_int32_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn27convolution_packed_int8_xopERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.h = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !81
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not1945 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1945, label %._crit_edge1947, label %_ZN4ncnn3MatD2Ev.exit788.lr.ph

_ZN4ncnn3MatD2Ev.exit788.lr.ph:                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  br label %_ZN4ncnn3MatD2Ev.exit788

_ZN4ncnn3MatD2Ev.exit788:                         ; preds = %_ZN4ncnn3MatD2Ev.exit788.lr.ph, %._crit_edge1944
  %.01946 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit788.lr.ph ], [ %i.aqv, %._crit_edge1944 ] ; 3 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !81
  %i.v = shl nsw i32 %.01946, 2
  %i.w = add nsw i32 %i.u, %i.v                   ; 4 uses
  %i.x = load i32, ptr %i.l, align 4, !tbaa !89   ; 5 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !90
  %i.z = load i64, ptr %i.n, align 8, !tbaa !38
  %i.aa = load i32, ptr %6, align 4, !tbaa !81
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %i.z, %i.ab                     ; 34 uses
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !38  ; 2 uses
  %i.ae = load i32, ptr %7, align 4, !tbaa !81    ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ad, %i.af                    ; 9 uses
  %i.ah = sdiv i32 %i.w, %i.ae
  %i.ai = load ptr, ptr %4, align 8, !tbaa !37, !noalias !2101
  %i.aj = sext i32 %i.ah to i64
  %i.ak = mul i64 %i.ad, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !79, !noalias !2101
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = mul nsw i32 %i.y, %i.x                  ; 6 uses
  %i.ap = icmp sgt i32 %i.ao, 3
  br i1 %i.ap, label %.noexc763.lr.ph, label %.preheader1603

.noexc763.lr.ph:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit788
  %i.aq = sdiv i32 %i.w, 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl i64 %i.ac, 1                        ; 4 uses
  %i.at = mul i64 %i.ac, 3                        ; 4 uses
  %i.au = shl i64 %i.ac, 2                        ; 4 uses
  %i.av = mul i64 %i.ac, 5                        ; 4 uses
  %i.aw = mul i64 %i.ac, 6                        ; 4 uses
  %i.ax = mul i64 %i.ac, 7                        ; 4 uses
  %.idx1596 = shl i64 %i.ag, 3
  %.idx1597 = mul i64 %i.ag, 12
  %i.ay = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.az = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.noexc763

.preheader1603:                                   ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit788
  %.0683.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit788 ], [ %i.tu, %bb.l ] ; 3 uses
  %.0677.lcssa = phi ptr [ %i.an, %_ZN4ncnn3MatD2Ev.exit788 ], [ %.2679, %bb.l ] ; 2 uses
  %i.ba = or disjoint i32 %.0683.lcssa, 1         ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.ao
  br i1 %i.bb, label %.noexc737.lr.ph, label %.preheader1602

.noexc737.lr.ph:                                  ; preds = %.preheader1603
  %i.bc = sdiv i32 %i.w, 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl i64 %i.ac, 1                        ; 2 uses
  %i.bf = mul i64 %i.ac, 3                        ; 2 uses
  %i.bg = shl i64 %i.ac, 2                        ; 2 uses
  %i.bh = mul i64 %i.ac, 5                        ; 2 uses
  %i.bi = mul i64 %i.ac, 6                        ; 2 uses
  %i.bj = mul i64 %i.ac, 7                        ; 2 uses
  %.idx1594 = shl i64 %i.ag, 3
  %.idx1595 = mul i64 %i.ag, 12
  %i.bk = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.bl = shufflevector <2 x i32> %i.bk, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.noexc737

.noexc763:                                        ; preds = %.noexc763.lr.ph, %bb.l
  %.06771770 = phi ptr [ %i.an, %.noexc763.lr.ph ], [ %.2679, %bb.l ] ; 6 uses
  %.06831769 = phi i32 [ 0, %.noexc763.lr.ph ], [ %i.tu, %bb.l ] ; 4 uses
  %i.bm = insertelement <2 x i32> poison, i32 %.06831769, i64 0
  %i.bn = or disjoint i32 %.06831769, 1
  %i.bo = insertelement <4 x i32> poison, i32 %.06831769, i64 0
  %i.bp = insertelement <4 x i32> %i.bo, i32 %i.bn, i64 1
  %i.bq = shufflevector <2 x i32> %i.bm, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.br = or disjoint <4 x i32> %i.bq, <i32 2, i32 3, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x i32> %i.bp, <4 x i32> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.frozen = freeze <4 x i32> %i.bs               ; 2 uses
  %.frozen2249 = freeze <4 x i32> %i.az           ; 2 uses
  %i.bt = sdiv <4 x i32> %.frozen, %.frozen2249   ; 10 uses
  %i.bu = mul <4 x i32> %i.bt, %.frozen2249
  %.decomposed = sub <4 x i32> %.frozen, %i.bu    ; 3 uses
  %i.bv = load ptr, ptr %8, align 8, !tbaa !37, !noalias !2102
  %i.bw = load i64, ptr %i.q, align 8, !tbaa !38, !noalias !2102
  %i.bx = mul i64 %i.bw, %i.ar
  %i.by = load i64, ptr %i.r, align 8, !tbaa !79, !noalias !2102
  %i.bz = mul i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %9, align 4, !tbaa !81    ; 8 uses
  %i.cc = icmp sgt i32 %i.cb, 7
  br i1 %i.cc, label %.noexc761.lr.ph, label %.preheader1601

.noexc761.lr.ph:                                  ; preds = %.noexc763
  %i.cd = load i32, ptr %6, align 4, !tbaa !81    ; 3 uses
  %i.ce = load i32, ptr %i.s, align 4, !tbaa !89, !noalias !2103
  %i.cf = load ptr, ptr %5, align 8, !tbaa !37, !noalias !2103 ; 4 uses
  %i.cg = load i64, ptr %i.n, align 8, !tbaa !38, !noalias !2103
  %i.ch = load i64, ptr %i.t, align 8, !tbaa !79, !noalias !2103 ; 2 uses
  %factor.op.mul = mul i64 %i.cg, %i.ch
  %i.ci = sext i32 %i.ce to i64
  %i.cj = load i32, ptr %10, align 4, !tbaa !81   ; 4 uses
  %i.ck = extractelement <4 x i32> %i.bt, i64 0
  %i.cl = mul nsw i32 %i.cj, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.ch, %i.ci                    ; 4 uses
  %i.co = mul i64 %i.cn, %i.cm
  %invariant.gep = getelementptr i8, ptr %i.cf, i64 %i.co
  %i.cp = load i32, ptr %11, align 4, !tbaa !81
  %i.cq = extractelement <4 x i32> %i.bt, i64 1
  %i.cr = mul nsw i32 %i.cj, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.cn, %i.cs
  %invariant.gep1674 = getelementptr i8, ptr %i.cf, i64 %i.ct
  %i.cu = extractelement <4 x i32> %i.bt, i64 2
  %i.cv = mul nsw i32 %i.cj, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cn, %i.cw
  %invariant.gep1679 = getelementptr i8, ptr %i.cf, i64 %i.cx
  %i.cy = extractelement <4 x i32> %i.bt, i64 3
  %i.cz = mul nsw i32 %i.cj, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = mul i64 %i.cn, %i.da
  %invariant.gep1684 = getelementptr i8, ptr %i.cf, i64 %i.db
  %i.dc = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %14 = insertelement <4 x i32> poison, i32 %i.cp, i64 0
  %i.dd = mul <4 x i32> %14, %i.dc
  %15 = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> zeroinitializer
  %16 = mul <4 x i32> %15, %.decomposed           ; 4 uses
  %17 = extractelement <4 x i32> %16, i64 0
  %i.de = sext i32 %17 to i64
  %invariant.gep1670 = getelementptr i8, ptr %invariant.gep, i64 %i.de
  %i.df = extractelement <4 x i32> %16, i64 1
  %i.dg = sext i32 %i.df to i64
  %invariant.gep1675 = getelementptr i8, ptr %invariant.gep1674, i64 %i.dg
  %i.dh = extractelement <4 x i32> %16, i64 2
  %i.di = sext i32 %i.dh to i64
  %invariant.gep1680 = getelementptr i8, ptr %invariant.gep1679, i64 %i.di
  %i.dj = extractelement <4 x i32> %16, i64 3
  %i.dk = sext i32 %i.dj to i64
  %invariant.gep1685 = getelementptr i8, ptr %invariant.gep1684, i64 %i.dk
  %i.dl = load i32, ptr %12, align 4, !tbaa !81   ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  %i.dn = add i32 %i.dl, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 5
  %i.dq = icmp eq i32 %i.cd, 8
  %wide.trip.count = zext nneg i32 %i.dl to i64
  br label %.noexc761

.preheader1601.loopexit:                          ; preds = %._crit_edge
  %i.dr = and i32 %i.cb, 2147483640
  br label %.preheader1601

.preheader1601:                                   ; preds = %.preheader1601.loopexit, %.noexc763
  %.lcssa1610 = phi <4 x i32> [ zeroinitializer, %.noexc763 ], [ %.lcssa1606, %.preheader1601.loopexit ] ; 3 uses
  %.lcssa1609 = phi <4 x i32> [ zeroinitializer, %.noexc763 ], [ %.lcssa1605, %.preheader1601.loopexit ] ; 3 uses
  %.lcssa1608 = phi <4 x i32> [ zeroinitializer, %.noexc763 ], [ %.lcssa1604, %.preheader1601.loopexit ] ; 3 uses
  %.lcssa1607 = phi <4 x i32> [ zeroinitializer, %.noexc763 ], [ %.lcssa, %.preheader1601.loopexit ] ; 3 uses
  %.0706.lcssa = phi i32 [ 0, %.noexc763 ], [ %i.dr, %.preheader1601.loopexit ] ; 5 uses
  %.0700.lcssa = phi ptr [ %i.ca, %.noexc763 ], [ %.1701.lcssa, %.preheader1601.loopexit ] ; 3 uses
  %i.ds = or disjoint i32 %.0706.lcssa, 1
  %i.dt = icmp slt i32 %i.ds, %i.cb
  br i1 %i.dt, label %.noexc753.lr.ph, label %.preheader1600

.noexc753.lr.ph:                                  ; preds = %.preheader1601
  %i.du = load i32, ptr %i.s, align 4, !tbaa !89, !noalias !2104
  %i.dv = load ptr, ptr %5, align 8, !tbaa !37, !noalias !2104 ; 4 uses
  %i.dw = load i64, ptr %i.n, align 8, !tbaa !38, !noalias !2104
  %i.dx = load i64, ptr %i.t, align 8, !tbaa !79, !noalias !2104 ; 2 uses
  %factor.op.mul1704 = mul i64 %i.dw, %i.dx
  %i.dy = sext i32 %i.du to i64
  %i.dz = load i32, ptr %10, align 4, !tbaa !81   ; 4 uses
  %i.ea = extractelement <4 x i32> %i.bt, i64 0
  %i.eb = mul nsw i32 %i.dz, %i.ea
  %i.ec = sext i32 %i.eb to i64
  %i.ed = mul i64 %i.dx, %i.dy                    ; 4 uses
  %i.ee = mul i64 %i.ed, %i.ec
  %invariant.gep1706 = getelementptr i8, ptr %i.dv, i64 %i.ee
  %i.ef = load i32, ptr %11, align 4, !tbaa !81
  %i.eg = extractelement <4 x i32> %i.bt, i64 1
  %i.eh = mul nsw i32 %i.dz, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = mul i64 %i.ed, %i.ei
  %invariant.gep1711 = getelementptr i8, ptr %i.dv, i64 %i.ej
  %i.ek = extractelement <4 x i32> %i.bt, i64 2
  %i.el = mul nsw i32 %i.dz, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = mul i64 %i.ed, %i.em
  %invariant.gep1716 = getelementptr i8, ptr %i.dv, i64 %i.en
  %i.eo = extractelement <4 x i32> %i.bt, i64 3
  %i.ep = mul nsw i32 %i.dz, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul i64 %i.ed, %i.eq
  %invariant.gep1721 = getelementptr i8, ptr %i.dv, i64 %i.er
  %i.es = insertelement <4 x i32> poison, i32 %i.ef, i64 0
  %i.et = shufflevector <4 x i32> %i.es, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eu = mul nsw <4 x i32> %i.et, %.decomposed   ; 4 uses
  %i.ev = extractelement <4 x i32> %i.eu, i64 0
  %i.ew = sext i32 %i.ev to i64
  %invariant.gep1707 = getelementptr i8, ptr %invariant.gep1706, i64 %i.ew
  %i.ex = extractelement <4 x i32> %i.eu, i64 1
  %i.ey = sext i32 %i.ex to i64
  %invariant.gep1712 = getelementptr i8, ptr %invariant.gep1711, i64 %i.ey
  %i.ez = extractelement <4 x i32> %i.eu, i64 2
  %i.fa = sext i32 %i.ez to i64
  %invariant.gep1717 = getelementptr i8, ptr %invariant.gep1716, i64 %i.fa
  %i.fb = extractelement <4 x i32> %i.eu, i64 3
  %i.fc = sext i32 %i.fb to i64
  %invariant.gep1722 = getelementptr i8, ptr %invariant.gep1721, i64 %i.fc
  %i.fd = load i32, ptr %12, align 4, !tbaa !81   ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.noexc753.lr.ph.split.us, label %.noexc753.preheader

.noexc753.preheader:                              ; preds = %.noexc753.lr.ph
  %i.ff = or disjoint i32 %.0706.lcssa, 2
  %i.fg = add nsw i32 %i.cb, -2
  %i.fh = sub nsw i32 %i.fg, %.0706.lcssa
  %i.fi = and i32 %i.fh, -2
  %i.fj = add i32 %i.ff, %i.fi
  br label %.preheader1600

.noexc753.lr.ph.split.us:                         ; preds = %.noexc753.lr.ph
  %i.fk = load ptr, ptr %13, align 8, !tbaa !109
  %i.fl = add nsw i32 %i.fd, -1
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = shl nuw nsw i64 %i.fm, 3
  %i.fo = zext nneg i32 %.0706.lcssa to i64
  %wide.trip.count2016 = zext nneg i32 %i.fd to i64
  br label %.noexc753.us

.noexc753.us:                                     ; preds = %._crit_edge1690.us, %.noexc753.lr.ph.split.us
  %indvars.iv2018 = phi i64 [ %indvars.iv.next2019, %._crit_edge1690.us ], [ %i.fo, %.noexc753.lr.ph.split.us ] ; 2 uses
  %.27021697.us = phi ptr [ %scevgep2014, %._crit_edge1690.us ], [ %.0700.lcssa, %.noexc753.lr.ph.split.us ] ; 2 uses
  %i.fp = phi <4 x i32> [ %i.hj, %._crit_edge1690.us ], [ %.lcssa1607, %.noexc753.lr.ph.split.us ]
  %i.fq = phi <4 x i32> [ %i.hl, %._crit_edge1690.us ], [ %.lcssa1608, %.noexc753.lr.ph.split.us ]
  %i.fr = phi <4 x i32> [ %i.hn, %._crit_edge1690.us ], [ %.lcssa1609, %.noexc753.lr.ph.split.us ]
  %i.fs = phi <4 x i32> [ %i.hp, %._crit_edge1690.us ], [ %.lcssa1610, %.noexc753.lr.ph.split.us ]
  %.reass1705.us = mul i64 %factor.op.mul1704, %indvars.iv2018 ; 4 uses
  %gep1708.us = getelementptr i8, ptr %invariant.gep1707, i64 %.reass1705.us
  %gep1713.us = getelementptr i8, ptr %invariant.gep1712, i64 %.reass1705.us
  %gep1718.us = getelementptr i8, ptr %invariant.gep1717, i64 %.reass1705.us
  %gep1723.us = getelementptr i8, ptr %invariant.gep1722, i64 %.reass1705.us
  br label %bb.c

bb.c:                                             ; preds = %.noexc753.us, %bb.c
  %indvars.iv2011 = phi i64 [ 0, %.noexc753.us ], [ %indvars.iv.next2012, %bb.c ] ; 2 uses
  %.37031688.us = phi ptr [ %.27021697.us, %.noexc753.us ], [ %i.hq, %bb.c ] ; 2 uses
  %i.ft = phi <4 x i32> [ %i.fp, %.noexc753.us ], [ %i.hj, %bb.c ]
  %i.fu = phi <4 x i32> [ %i.fq, %.noexc753.us ], [ %i.hl, %bb.c ]
  %i.fv = phi <4 x i32> [ %i.fr, %.noexc753.us ], [ %i.hn, %bb.c ]
  %i.fw = phi <4 x i32> [ %i.fs, %.noexc753.us ], [ %i.hp, %bb.c ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv2011
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !81
  %i.fz = sext i32 %i.fy to i64                   ; 4 uses
  %i.ga = getelementptr inbounds i8, ptr %gep1708.us, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %gep1713.us, i64 %i.fz ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %gep1718.us, i64 %i.fz ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %gep1723.us, i64 %i.fz ; 2 uses
  %i.ge = load i8, ptr %i.ga, align 1, !tbaa !114
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ac
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !114
  %i.gh = insertelement <2 x i8> poison, i8 %i.ge, i64 0
  %i.gi = insertelement <2 x i8> %i.gh, i8 %i.gg, i64 1
  %i.gj = shufflevector <2 x i8> %i.gi, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.gk = sext <8 x i8> %i.gj to <8 x i16>
  %i.gl = load i8, ptr %i.gb, align 1, !tbaa !114
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ac
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !114
  %i.go = insertelement <2 x i8> poison, i8 %i.gl, i64 0
  %i.gp = insertelement <2 x i8> %i.go, i8 %i.gn, i64 1
  %i.gq = shufflevector <2 x i8> %i.gp, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.gr = sext <8 x i8> %i.gq to <8 x i16>
  %i.gs = load i8, ptr %i.gc, align 1, !tbaa !114
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ac
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !114
  %i.gv = insertelement <2 x i8> poison, i8 %i.gs, i64 0
  %i.gw = insertelement <2 x i8> %i.gv, i8 %i.gu, i64 1
  %i.gx = shufflevector <2 x i8> %i.gw, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.gy = sext <8 x i8> %i.gx to <8 x i16>
  %i.gz = load i8, ptr %i.gd, align 1, !tbaa !114
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ac
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !114
  %i.hc = insertelement <2 x i8> poison, i8 %i.gz, i64 0
  %i.hd = insertelement <2 x i8> %i.hc, i8 %i.hb, i64 1
  %i.he = shufflevector <2 x i8> %i.hd, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.hf = sext <8 x i8> %i.he to <8 x i16>
  %i.hg = load <8 x i8>, ptr %.37031688.us, align 1, !tbaa !114
  %i.hh = sext <8 x i8> %i.hg to <8 x i16>        ; 4 uses
  %i.hi = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.gk, <8 x i16> %i.hh)
  %i.hj = add <4 x i32> %i.hi, %i.ft              ; 3 uses
  %i.hk = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.gr, <8 x i16> %i.hh)
  %i.hl = add <4 x i32> %i.hk, %i.fu              ; 3 uses
  %i.hm = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.gy, <8 x i16> %i.hh)
  %i.hn = add <4 x i32> %i.hm, %i.fv              ; 3 uses
  %i.ho = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.hf, <8 x i16> %i.hh)
  %i.hp = add <4 x i32> %i.ho, %i.fw              ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.37031688.us, i64 8
  %indvars.iv.next2012 = add nuw nsw i64 %indvars.iv2011, 1 ; 2 uses
  %exitcond2017.not = icmp eq i64 %indvars.iv.next2012, %wide.trip.count2016
  br i1 %exitcond2017.not, label %._crit_edge1690.us, label %bb.c, !llvm.loop !2062

._crit_edge1690.us:                               ; preds = %bb.c
  %scevgep2013 = getelementptr i8, ptr %.27021697.us, i64 8
  %scevgep2014 = getelementptr i8, ptr %scevgep2013, i64 %i.fn ; 2 uses
  %indvars.iv.next2019 = add nuw nsw i64 %indvars.iv2018, 2 ; 3 uses
  %i.hr = trunc i64 %indvars.iv.next2019 to i32
  %i.hs = or i32 %i.hr, 1
  %i.ht = icmp slt i32 %i.hs, %i.cb
  br i1 %i.ht, label %.noexc753.us, label %.preheader1600.loopexit, !llvm.loop !2063

.noexc761:                                        ; preds = %.noexc761.lr.ph, %._crit_edge
  %.07001663 = phi ptr [ %i.ca, %.noexc761.lr.ph ], [ %.1701.lcssa, %._crit_edge ] ; 3 uses
  %.07061662 = phi i32 [ 0, %.noexc761.lr.ph ], [ %i.ib, %._crit_edge ] ; 2 uses
  %i.hu = phi <4 x i32> [ zeroinitializer, %.noexc761.lr.ph ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.hv = phi <4 x i32> [ zeroinitializer, %.noexc761.lr.ph ], [ %.lcssa1604, %._crit_edge ] ; 2 uses
  %i.hw = phi <4 x i32> [ zeroinitializer, %.noexc761.lr.ph ], [ %.lcssa1605, %._crit_edge ] ; 2 uses
  %i.hx = phi <4 x i32> [ zeroinitializer, %.noexc761.lr.ph ], [ %.lcssa1606, %._crit_edge ] ; 2 uses
  %i.hy = sdiv i32 %.07061662, %i.cd
  %i.hz = sext i32 %i.hy to i64
  %.reass = mul i64 %factor.op.mul, %i.hz         ; 4 uses
  %gep1671 = getelementptr i8, ptr %invariant.gep1670, i64 %.reass
  %gep1676 = getelementptr i8, ptr %invariant.gep1675, i64 %.reass
  %gep1681 = getelementptr i8, ptr %invariant.gep1680, i64 %.reass
  %gep1686 = getelementptr i8, ptr %invariant.gep1685, i64 %.reass
  br i1 %i.dm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc761
  %i.ia = load ptr, ptr %13, align 8, !tbaa !109
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.g
  %scevgep = getelementptr i8, ptr %.07001663, i64 32
  %scevgep2009 = getelementptr i8, ptr %scevgep, i64 %i.dp
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc761
  %.lcssa1606 = phi <4 x i32> [ %i.hx, %.noexc761 ], [ %i.pd, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1605 = phi <4 x i32> [ %i.hw, %.noexc761 ], [ %i.pa, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1604 = phi <4 x i32> [ %i.hv, %.noexc761 ], [ %i.ox, %._crit_edge.loopexit ] ; 2 uses
end_hunk_0
