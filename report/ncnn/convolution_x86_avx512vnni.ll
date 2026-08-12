inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  store <4 x i32> %i.bjh, ptr %i.bjg, align 16, !tbaa !44
  %i.bji = getelementptr inbounds nuw i8, ptr %.12, i64 %.idx
  %i.bjj = shufflevector <16 x i32> %i.bit, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.bjj, ptr %i.bji, align 16, !tbaa !44
  %i.bjk = getelementptr inbounds nuw i8, ptr %.12, i64 %.idx794
  %i.bjl = shufflevector <16 x i32> %i.bit, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.bjl, ptr %i.bjk, align 16, !tbaa !44
  %i.bjm = getelementptr inbounds nuw i8, ptr %.12, i64 16
  %.pr2473 = load i32, ptr %6, align 4, !tbaa !9
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.bjn = phi i32 [ %.pr2473, %bb.ap ], [ %i.bjd, %bb.ao ]
  %.13 = phi ptr [ %i.bjm, %bb.ap ], [ %.12, %bb.ao ] ; 3 uses
  %i.bjo = icmp eq i32 %i.bjn, 1
  br i1 %i.bjo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr %.13, <16 x i1> splat (i1 true), <16 x i32> %i.acs, <16 x i32> %i.bit, i32 4)
  %i.bjp = getelementptr inbounds nuw i8, ptr %.13, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.14 = phi ptr [ %i.bjp, %bb.ar ], [ %.13, %bb.aq ]
  %i.bjq = add i32 %.27262918, 1                  ; 2 uses
  %exitcond3131.not = icmp eq i32 %i.bjq, %i.an
  br i1 %exitcond3131.not, label %._crit_edge2920, label %.noexc837, !llvm.loop !432

._crit_edge2920:                                  ; preds = %bb.as, %.preheader2482
  %indvars.iv.next3133 = add nsw i64 %indvars.iv3132, 1
  %i.bjr = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bjs = sext i32 %i.bjr to i64
  %.not.not = icmp slt i64 %indvars.iv3132, %i.bjs
  br i1 %.not.not, label %.noexc, label %._crit_edge2923

._crit_edge2923:                                  ; preds = %._crit_edge2920, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge2923, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #4 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #7

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scatter.dpi.512(ptr, <16 x i1>, <16 x i32>, <16 x i32>, i32 immarg) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !433 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scattersiv8.si(ptr, <8 x i1>, <8 x i32>, <8 x i32>, i32 immarg) #4

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scattersiv4.si(ptr, <4 x i1>, <4 x i32>, <4 x i32>, i32 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32>, <32 x i16>, <32 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32>, <16 x i16>, <16 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32>, <8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  %i.a = icmp eq i32 %6, 1                        ; 2 uses
  %i.b = icmp eq i32 %7, 1
  %i.c = icmp eq i32 %8, 1
  %i.d = and i1 %i.b, %i.c
  %i.e = icmp eq i32 %9, 1
  %i.f = and i1 %i.d, %i.e
  %i.g = icmp eq i32 %10, 1                       ; 5 uses
  %i.h = icmp eq i32 %11, 1
  %i.i = and i1 %i.f, %i.h
  %i.j = and i1 %i.a, %i.i
  %or.cond9.i = and i1 %i.g, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18   ; 91 uses
  br i1 %or.cond9.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16   ; 5 uses
  %i.o = icmp sgt i32 %3, 15
  br i1 %i.o, label %.lr.ph210.i.i, label %.preheader181.i.i

.lr.ph210.i.i:                                    ; preds = %bb.b
  %i.p = sdiv i32 %4, 8
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = lshr i32 %5, 3
  %i.t = icmp sgt i32 %5, 7
  %i.u = shl i64 %i.l, 3
  %i.v = sext i32 %4 to i64
  %i.w = icmp sgt i32 %5, 3
  %i.x = shl i64 %i.l, 1                          ; 2 uses
  %i.y = mul i64 %i.l, 3
  %i.z = shl i64 %i.l, 2
  %i.aa = and i32 %5, -4
  %i.ab = zext nneg i32 %3 to i64
  %i.ac = sext i32 %2 to i64                      ; 2 uses
  br label %bb.c

.preheader181.loopexit.i.i:                       ; preds = %.loopexit183.i.i
  %i.ad = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader181.i.i

.preheader181.i.i:                                ; preds = %.preheader181.loopexit.i.i, %bb.b
  %.0504.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.ad, %.preheader181.loopexit.i.i ] ; 3 uses
  %.0502.lcssa.i.i = phi ptr [ %.val, %bb.b ], [ %.6.i.i, %.preheader181.loopexit.i.i ] ; 5 uses
  %i.ae = or disjoint i32 %.0504.lcssa.i.i, 7
  %i.af = icmp slt i32 %i.ae, %3
  br i1 %i.af, label %.lr.ph239.i.i, label %.preheader176.i.i

.lr.ph239.i.i:                                    ; preds = %.preheader181.i.i
  %i.ag = sdiv i32 %4, 8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = lshr i32 %5, 3
  %i.ak = shl i64 %i.l, 3
  %i.al = sext i32 %4 to i64
  %i.am = icmp sgt i32 %5, 3
  %i.an = shl i64 %i.l, 1                         ; 2 uses
  %i.ao = mul i64 %i.l, 3
  %i.ap = shl i64 %i.l, 2
  %i.aq = and i32 %5, -4
  %i.ar = zext i32 %.0504.lcssa.i.i to i64        ; 6 uses
  %i.as = sext i32 %3 to i64
  %i.at = sext i32 %2 to i64                      ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.as, -7       ; 4 uses
  switch i32 %i.n, label %.loopexit178.i.preheader.i [
    i32 8, label %.lr.ph239.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit548.i.us.i
  ]

.loopexit178.i.preheader.i:                       ; preds = %.lr.ph239.i.i
  %i.au = add nuw nsw i64 %i.ar, 8                ; 2 uses
  %smax248.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.au)
  %i.av = xor i64 %i.ar, -1
  %i.aw = add nsw i64 %smax248.i, %i.av
  %i.ax = and i64 %i.aw, -8
  %i.ay = add i64 %i.au, %i.ax
  br label %.preheader176.loopexit.i.i

.lr.ph239.i.split.us.i:                           ; preds = %.lr.ph239.i.i
  %i.az = icmp sgt i32 %5, 7
  br i1 %i.az, label %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit549.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit549.i.us.preheader.i:        ; preds = %.lr.ph239.i.split.us.i
  %i.ba = add nuw nsw i64 %i.ar, 8                ; 2 uses
  %smax.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.ba)
  %i.bb = xor i64 %i.ar, -1
  %i.bc = add nsw i64 %smax.i, %i.bb
  %i.bd = and i64 %i.bc, -8
  %i.be = add i64 %i.ba, %i.bd
  br label %.preheader176.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit549.i.us.us.i:               ; preds = %.lr.ph239.i.split.us.i, %.loopexit178.i.loopexit.us.us.i
  %indvars.iv364.i.us.us.i = phi i64 [ %indvars.iv.next365.i.us.us.i, %.loopexit178.i.loopexit.us.us.i ], [ %i.ar, %.lr.ph239.i.split.us.i ] ; 2 uses
  %.7238.i.us.us.i = phi ptr [ %i.ck, %.loopexit178.i.loopexit.us.us.i ], [ %.0502.lcssa.i.i, %.lr.ph239.i.split.us.i ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !32, !noalias !435
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !435
  %i.bh = mul i64 %i.bg, %i.ah
  %i.bi = load i64, ptr %i.ai, align 8, !tbaa !36, !noalias !435
  %i.bj = mul i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bj
  %i.bl = add nsw i64 %indvars.iv364.i.us.us.i, %i.at
  %i.bm = shl nsw i64 %i.bl, 3
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm
  br label %.lr.ph216.i.us.us.i

.lr.ph216.i.us.us.i:                              ; preds = %.lr.ph216.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i
  %.8215.i.us.us.i = phi ptr [ %i.ck, %.lr.ph216.i.us.us.i ], [ %.7238.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i ] ; 5 uses
  %.0533214.i.us.us.i = phi ptr [ %i.cl, %.lr.ph216.i.us.us.i ], [ %i.bn, %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i ] ; 5 uses
  %.0534213.i.us.us.i = phi i32 [ %i.cm, %.lr.ph216.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i ]
  %i.bo = load <4 x i32>, ptr %.0533214.i.us.us.i, align 1, !tbaa !44 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0533214.i.us.us.i, i64 16
  %i.bq = load <4 x i32>, ptr %i.bp, align 1, !tbaa !44 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0533214.i.us.us.i, i64 32
  %i.bs = load <4 x i32>, ptr %i.br, align 1, !tbaa !44 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0533214.i.us.us.i, i64 48
  %i.bu = load <4 x i32>, ptr %i.bt, align 1, !tbaa !44 ; 2 uses
  %i.bv = shufflevector <4 x i32> %i.bo, <4 x i32> %i.bq, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bw = shufflevector <4 x i32> %i.bs, <4 x i32> %i.bu, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> %i.bq, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.by = shufflevector <4 x i32> %i.bs, <4 x i32> %i.bu, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bz = bitcast <4 x i32> %i.bv to <16 x i8>
  %i.ca = add <16 x i8> %i.bz, splat (i8 127)
  %i.cb = bitcast <4 x i32> %i.bw to <16 x i8>
  %i.cc = add <16 x i8> %i.cb, splat (i8 127)
  %i.cd = bitcast <4 x i32> %i.bx to <16 x i8>
  %i.ce = add <16 x i8> %i.cd, splat (i8 127)
  %i.cf = bitcast <4 x i32> %i.by to <16 x i8>
  %i.cg = add <16 x i8> %i.cf, splat (i8 127)
  store <16 x i8> %i.ca, ptr %.8215.i.us.us.i, align 16, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %.8215.i.us.us.i, i64 16
  store <16 x i8> %i.cc, ptr %i.ch, align 16, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %.8215.i.us.us.i, i64 32
  store <16 x i8> %i.ce, ptr %i.ci, align 16, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %.8215.i.us.us.i, i64 48
  store <16 x i8> %i.cg, ptr %i.cj, align 16, !tbaa !44
  %i.ck = getelementptr inbounds nuw i8, ptr %.8215.i.us.us.i, i64 64 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0533214.i.us.us.i, i64 %i.ak
  %i.cm = add nuw nsw i32 %.0534213.i.us.us.i, 1  ; 2 uses
  %exitcond362.not.i.us.us.i = icmp eq i32 %i.cm, %i.aj
  br i1 %exitcond362.not.i.us.us.i, label %.loopexit178.i.loopexit.us.us.i, label %.lr.ph216.i.us.us.i, !llvm.loop !438

.loopexit178.i.loopexit.us.us.i:                  ; preds = %.lr.ph216.i.us.us.i
  %indvars.iv.next365.i.us.us.i = add nuw nsw i64 %indvars.iv364.i.us.us.i, 8 ; 3 uses
  %i.cn = icmp slt i64 %indvars.iv.next365.i.us.us.i, %invariant.op.i.i
  br i1 %i.cn, label %_ZN4ncnn3MatD2Ev.exit549.i.us.us.i, label %.preheader176.loopexit.i.i, !llvm.loop !439

_ZN4ncnn3MatD2Ev.exit548.i.us.i:                  ; preds = %.lr.ph239.i.i, %.loopexit178.i.us113.i
  %indvars.iv364.i.us111.i = phi i64 [ %indvars.iv.next365.i.us115.i, %.loopexit178.i.us113.i ], [ %i.ar, %.lr.ph239.i.i ] ; 2 uses
  %.7238.i.us112.i = phi ptr [ %.13.i.us114.i, %.loopexit178.i.us113.i ], [ %.0502.lcssa.i.i, %.lr.ph239.i.i ] ; 2 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !32, !noalias !440
  %i.cp = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !440
  %i.cq = mul i64 %i.cp, %i.al
  %i.cr = load i64, ptr %i.ai, align 8, !tbaa !36, !noalias !440
  %i.cs = mul i64 %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 %indvars.iv364.i.us111.i
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.at  ; 2 uses
  br i1 %i.am, label %.lr.ph221.i.us.i, label %.preheader179.i.us.i

.lr.ph221.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit548.i.us.i, %.lr.ph221.i.us.i
  %.10220.i.us.i = phi ptr [ %i.dw, %.lr.ph221.i.us.i ], [ %.7238.i.us112.i, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ] ; 3 uses
  %.0535219.i.us.i = phi ptr [ %i.dx, %.lr.ph221.i.us.i ], [ %i.cv, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ] ; 5 uses
  %.0538218.i.us.i = phi i32 [ %i.dy, %.lr.ph221.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ]
  %i.cw = load i64, ptr %.0535219.i.us.i, align 1, !tbaa !44
  %i.cx = insertelement <2 x i64> poison, i64 %i.cw, i64 0
  %i.cy = getelementptr inbounds nuw i8, ptr %.0535219.i.us.i, i64 %i.l
  %i.cz = load i64, ptr %i.cy, align 1, !tbaa !44
  %i.da = insertelement <2 x i64> poison, i64 %i.cz, i64 0
  %i.db = getelementptr inbounds nuw i8, ptr %.0535219.i.us.i, i64 %i.an
  %i.dc = load i64, ptr %i.db, align 1, !tbaa !44
  %i.dd = insertelement <2 x i64> poison, i64 %i.dc, i64 0
  %i.de = getelementptr inbounds nuw i8, ptr %.0535219.i.us.i, i64 %i.ao
  %i.df = load i64, ptr %i.de, align 1, !tbaa !44
  %i.dg = insertelement <2 x i64> poison, i64 %i.df, i64 0
  %i.dh = bitcast <2 x i64> %i.cx to <16 x i8>
  %i.di = bitcast <2 x i64> %i.da to <16 x i8>
  %i.dj = shufflevector <16 x i8> %i.dh, <16 x i8> %i.di, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dk = bitcast <2 x i64> %i.dd to <16 x i8>
  %i.dl = bitcast <2 x i64> %i.dg to <16 x i8>
  %i.dm = shufflevector <16 x i8> %i.dk, <16 x i8> %i.dl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dn = bitcast <16 x i8> %i.dj to <8 x i16>    ; 2 uses
  %i.do = bitcast <16 x i8> %i.dm to <8 x i16>    ; 2 uses
  %i.dp = shufflevector <8 x i16> %i.dn, <8 x i16> %i.do, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dq = shufflevector <8 x i16> %i.dn, <8 x i16> %i.do, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dr = bitcast <8 x i16> %i.dp to <16 x i8>
  %i.ds = add <16 x i8> %i.dr, splat (i8 127)
  %i.dt = bitcast <8 x i16> %i.dq to <16 x i8>
  %i.du = add <16 x i8> %i.dt, splat (i8 127)
  store <16 x i8> %i.ds, ptr %.10220.i.us.i, align 1, !tbaa !44
  %i.dv = getelementptr inbounds nuw i8, ptr %.10220.i.us.i, i64 16
  store <16 x i8> %i.du, ptr %i.dv, align 1, !tbaa !44
  %i.dw = getelementptr inbounds nuw i8, ptr %.10220.i.us.i, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0535219.i.us.i, i64 %i.ap ; 2 uses
  %i.dy = add nuw nsw i32 %.0538218.i.us.i, 4     ; 2 uses
  %i.dz = or disjoint i32 %i.dy, 3
  %i.ea = icmp slt i32 %i.dz, %5
  br i1 %i.ea, label %.lr.ph221.i.us.i, label %.preheader179.i.us.i, !llvm.loop !443

.preheader179.i.us.i:                             ; preds = %.lr.ph221.i.us.i, %_ZN4ncnn3MatD2Ev.exit548.i.us.i
  %.0538.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ], [ %i.aq, %.lr.ph221.i.us.i ] ; 3 uses
  %.0535.lcssa.i.us.i = phi ptr [ %i.cv, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ], [ %i.dx, %.lr.ph221.i.us.i ] ; 2 uses
  %.10.lcssa.i.us.i = phi ptr [ %.7238.i.us112.i, %_ZN4ncnn3MatD2Ev.exit548.i.us.i ], [ %i.dw, %.lr.ph221.i.us.i ] ; 2 uses
  %i.eb = or disjoint i32 %.0538.lcssa.i.us.i, 1
  %i.ec = icmp slt i32 %i.eb, %5
  br i1 %i.ec, label %.lr.ph228.i.us.i, label %.preheader177.i.us.i

.lr.ph228.i.us.i:                                 ; preds = %.preheader179.i.us.i, %.lr.ph228.i.us.i
  %.11227.i.us.i = phi ptr [ %i.el, %.lr.ph228.i.us.i ], [ %.10.lcssa.i.us.i, %.preheader179.i.us.i ] ; 2 uses
  %.1536226.i.us.i = phi ptr [ %i.em, %.lr.ph228.i.us.i ], [ %.0535.lcssa.i.us.i, %.preheader179.i.us.i ] ; 3 uses
  %.1539225.i.us.i = phi i32 [ %i.en, %.lr.ph228.i.us.i ], [ %.0538.lcssa.i.us.i, %.preheader179.i.us.i ]
  %i.ed = load i64, ptr %.1536226.i.us.i, align 1, !tbaa !44
  %i.ee = insertelement <2 x i64> poison, i64 %i.ed, i64 0
  %i.ef = getelementptr inbounds nuw i8, ptr %.1536226.i.us.i, i64 %i.l
  %i.eg = load i64, ptr %i.ef, align 1, !tbaa !44
  %i.eh = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.ei = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.ej = bitcast <2 x i64> %i.eh to <16 x i8>
  %i.ek = shufflevector <16 x i8> %i.ei, <16 x i8> %i.ej, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ek, ptr %.11227.i.us.i, align 1, !tbaa !44
  %i.el = getelementptr inbounds nuw i8, ptr %.11227.i.us.i, i64 16 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1536226.i.us.i, i64 %i.an ; 2 uses
  %i.en = add nuw nsw i32 %.1539225.i.us.i, 2     ; 3 uses
  %i.eo = or disjoint i32 %i.en, 1
  %i.ep = icmp slt i32 %i.eo, %5
  br i1 %i.ep, label %.lr.ph228.i.us.i, label %.preheader177.i.us.i, !llvm.loop !444

.preheader177.i.us.i:                             ; preds = %.lr.ph228.i.us.i, %.preheader179.i.us.i
  %.1539.lcssa.i.us.i = phi i32 [ %.0538.lcssa.i.us.i, %.preheader179.i.us.i ], [ %i.en, %.lr.ph228.i.us.i ] ; 5 uses
  %.1536.lcssa.i.us.i = phi ptr [ %.0535.lcssa.i.us.i, %.preheader179.i.us.i ], [ %i.em, %.lr.ph228.i.us.i ] ; 2 uses
  %.11.lcssa.i.us.i = phi ptr [ %.10.lcssa.i.us.i, %.preheader179.i.us.i ], [ %i.el, %.lr.ph228.i.us.i ] ; 3 uses
  %i.eq = icmp slt i32 %.1539.lcssa.i.us.i, %5
  br i1 %i.eq, label %.lr.ph235.i.us.i.preheader, label %.loopexit178.i.us113.i

.lr.ph235.i.us.i.preheader:                       ; preds = %.preheader177.i.us.i
  %i.er = sub i32 %5, %.1539.lcssa.i.us.i
  %xtraiter612 = and i32 %i.er, 7                 ; 2 uses
  %lcmp.mod613.not = icmp eq i32 %xtraiter612, 0
  br i1 %lcmp.mod613.not, label %.lr.ph235.i.us.i.prol.loopexit, label %.lr.ph235.i.us.i.prol

.lr.ph235.i.us.i.prol:                            ; preds = %.lr.ph235.i.us.i.preheader, %.lr.ph235.i.us.i.prol
  %.12234.i.us.i.prol = phi ptr [ %i.et, %.lr.ph235.i.us.i.prol ], [ %.11.lcssa.i.us.i, %.lr.ph235.i.us.i.preheader ] ; 2 uses
  %.2537233.i.us.i.prol = phi ptr [ %i.eu, %.lr.ph235.i.us.i.prol ], [ %.1536.lcssa.i.us.i, %.lr.ph235.i.us.i.preheader ] ; 2 uses
  %.2540232.i.us.i.prol = phi i32 [ %i.ev, %.lr.ph235.i.us.i.prol ], [ %.1539.lcssa.i.us.i, %.lr.ph235.i.us.i.preheader ]
  %prol.iter614 = phi i32 [ %prol.iter614.next, %.lr.ph235.i.us.i.prol ], [ 0, %.lr.ph235.i.us.i.preheader ]
  %i.es = load i64, ptr %.2537233.i.us.i.prol, align 1, !tbaa !44
  store i64 %i.es, ptr %.12234.i.us.i.prol, align 1, !tbaa !44
  %i.et = getelementptr inbounds nuw i8, ptr %.12234.i.us.i.prol, i64 8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.2537233.i.us.i.prol, i64 %i.l ; 2 uses
  %i.ev = add nuw nsw i32 %.2540232.i.us.i.prol, 1 ; 2 uses
  %prol.iter614.next = add i32 %prol.iter614, 1   ; 2 uses
  %prol.iter614.cmp.not = icmp eq i32 %prol.iter614.next, %xtraiter612
  br i1 %prol.iter614.cmp.not, label %.lr.ph235.i.us.i.prol.loopexit, label %.lr.ph235.i.us.i.prol, !llvm.loop !445

.lr.ph235.i.us.i.prol.loopexit:                   ; preds = %.lr.ph235.i.us.i.prol, %.lr.ph235.i.us.i.preheader
  %.lcssa531.unr = phi ptr [ poison, %.lr.ph235.i.us.i.preheader ], [ %i.et, %.lr.ph235.i.us.i.prol ]
  %.12234.i.us.i.unr = phi ptr [ %.11.lcssa.i.us.i, %.lr.ph235.i.us.i.preheader ], [ %i.et, %.lr.ph235.i.us.i.prol ]
  %.2537233.i.us.i.unr = phi ptr [ %.1536.lcssa.i.us.i, %.lr.ph235.i.us.i.preheader ], [ %i.eu, %.lr.ph235.i.us.i.prol ]
  %.2540232.i.us.i.unr = phi i32 [ %.1539.lcssa.i.us.i, %.lr.ph235.i.us.i.preheader ], [ %i.ev, %.lr.ph235.i.us.i.prol ]
  %i.ew = sub i32 %.1539.lcssa.i.us.i, %5
  %i.ex = icmp ugt i32 %i.ew, -8
  br i1 %i.ex, label %.loopexit178.i.us113.i, label %.lr.ph235.i.us.i

.lr.ph235.i.us.i:                                 ; preds = %.lr.ph235.i.us.i.prol.loopexit, %.lr.ph235.i.us.i
  %.12234.i.us.i = phi ptr [ %i.fu, %.lr.ph235.i.us.i ], [ %.12234.i.us.i.unr, %.lr.ph235.i.us.i.prol.loopexit ] ; 9 uses
  %.2537233.i.us.i = phi ptr [ %i.fv, %.lr.ph235.i.us.i ], [ %.2537233.i.us.i.unr, %.lr.ph235.i.us.i.prol.loopexit ] ; 2 uses
  %.2540232.i.us.i = phi i32 [ %i.fw, %.lr.ph235.i.us.i ], [ %.2540232.i.us.i.unr, %.lr.ph235.i.us.i.prol.loopexit ]
  %i.ey = load i64, ptr %.2537233.i.us.i, align 1, !tbaa !44
  store i64 %i.ey, ptr %.12234.i.us.i, align 1, !tbaa !44
  %i.ez = getelementptr inbounds nuw i8, ptr %.12234.i.us.i, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.2537233.i.us.i, i64 %i.l ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 1, !tbaa !44
  store i64 %i.fb, ptr %i.ez, align 1, !tbaa !44
  %i.fc = getelementptr inbounds nuw i8, ptr %.12234.i.us.i, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.l ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 1, !tbaa !44
  store i64 %i.fe, ptr %i.fc, align 1, !tbaa !44
  %i.ff = getelementptr inbounds nuw i8, ptr %.12234.i.us.i, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.l ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 1, !tbaa !44
  store i64 %i.fh, ptr %i.ff, align 1, !tbaa !44
  %i.fi = getelementptr inbounds nuw i8, ptr %.12234.i.us.i, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.l ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 1, !tbaa !44
  store i64 %i.fk, ptr %i.fi, align 1, !tbaa !44
  %i.fl = getelementptr inbounds nuw i8, ptr %.12234.i.us.i, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.l ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 1, !tbaa !44
  store i64 %i.fn, ptr %i.fl, align 1, !tbaa !44
  %i.fo = getelementptr inbounds nuw i8, ptr %.12234.i.us.i, i64 48
end_hunk_0
begin_hunk_1_@_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 %indvars.iv.i.i
  %i.il = getelementptr i8, ptr %i.ik, i64 %i.ac  ; 2 uses
  br i1 %i.w, label %.lr.ph192.i.i, label %.preheader184.i.i

.preheader184.i.i:                                ; preds = %.lr.ph192.i.i, %_ZN4ncnn3MatD2Ev.exit550.i.i
  %.0530.lcssa.i.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit550.i.i ], [ %i.aa, %.lr.ph192.i.i ] ; 3 uses
  %.0519.lcssa.i.i = phi ptr [ %i.il, %_ZN4ncnn3MatD2Ev.exit550.i.i ], [ %i.jt, %.lr.ph192.i.i ] ; 2 uses
  %.3.lcssa.i.i = phi ptr [ %.0502209.i.i, %_ZN4ncnn3MatD2Ev.exit550.i.i ], [ %i.js, %.lr.ph192.i.i ] ; 2 uses
  %i.im = or disjoint i32 %.0530.lcssa.i.i, 1
  %i.in = icmp slt i32 %i.im, %5
  br i1 %i.in, label %.lr.ph199.i.i, label %.preheader182.i.i

.lr.ph192.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit550.i.i, %.lr.ph192.i.i
  %.3191.i.i = phi ptr [ %i.js, %.lr.ph192.i.i ], [ %.0502209.i.i, %_ZN4ncnn3MatD2Ev.exit550.i.i ] ; 5 uses
  %.0519190.i.i = phi ptr [ %i.jt, %.lr.ph192.i.i ], [ %i.il, %_ZN4ncnn3MatD2Ev.exit550.i.i ] ; 5 uses
  %.0530189.i.i = phi i32 [ %i.ju, %.lr.ph192.i.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit550.i.i ]
  %i.io = load <16 x i8>, ptr %.0519190.i.i, align 1, !tbaa !44 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.0519190.i.i, i64 %i.l
  %i.iq = load <16 x i8>, ptr %i.ip, align 1, !tbaa !44 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0519190.i.i, i64 %i.x
  %i.is = load <16 x i8>, ptr %i.ir, align 1, !tbaa !44 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0519190.i.i, i64 %i.y
  %i.iu = load <16 x i8>, ptr %i.it, align 1, !tbaa !44 ; 2 uses
  %i.iv = shufflevector <16 x i8> %i.io, <16 x i8> %i.iq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.iw = shufflevector <16 x i8> %i.io, <16 x i8> %i.iq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ix = shufflevector <16 x i8> %i.is, <16 x i8> %i.iu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.iy = shufflevector <16 x i8> %i.is, <16 x i8> %i.iu, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.iz = bitcast <16 x i8> %i.iv to <8 x i16>    ; 2 uses
  %i.ja = bitcast <16 x i8> %i.ix to <8 x i16>    ; 2 uses
  %i.jb = shufflevector <8 x i16> %i.iz, <8 x i16> %i.ja, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jc = shufflevector <8 x i16> %i.iz, <8 x i16> %i.ja, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jd = bitcast <16 x i8> %i.iw to <8 x i16>    ; 2 uses
  %i.je = bitcast <16 x i8> %i.iy to <8 x i16>    ; 2 uses
  %i.jf = shufflevector <8 x i16> %i.jd, <8 x i16> %i.je, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jg = shufflevector <8 x i16> %i.jd, <8 x i16> %i.je, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jh = bitcast <8 x i16> %i.jb to <16 x i8>
  %i.ji = add <16 x i8> %i.jh, splat (i8 127)
  %i.jj = bitcast <8 x i16> %i.jc to <16 x i8>
  %i.jk = add <16 x i8> %i.jj, splat (i8 127)
  %i.jl = bitcast <8 x i16> %i.jf to <16 x i8>
  %i.jm = add <16 x i8> %i.jl, splat (i8 127)
  %i.jn = bitcast <8 x i16> %i.jg to <16 x i8>
  %i.jo = add <16 x i8> %i.jn, splat (i8 127)
  store <16 x i8> %i.ji, ptr %.3191.i.i, align 1, !tbaa !44
  %i.jp = getelementptr inbounds nuw i8, ptr %.3191.i.i, i64 16
  store <16 x i8> %i.jk, ptr %i.jp, align 1, !tbaa !44
  %i.jq = getelementptr inbounds nuw i8, ptr %.3191.i.i, i64 32
  store <16 x i8> %i.jm, ptr %i.jq, align 1, !tbaa !44
  %i.jr = getelementptr inbounds nuw i8, ptr %.3191.i.i, i64 48
  store <16 x i8> %i.jo, ptr %i.jr, align 1, !tbaa !44
  %i.js = getelementptr inbounds nuw i8, ptr %.3191.i.i, i64 64 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0519190.i.i, i64 %i.z ; 2 uses
  %i.ju = add nuw nsw i32 %.0530189.i.i, 4        ; 2 uses
  %i.jv = or disjoint i32 %i.ju, 3
  %i.jw = icmp slt i32 %i.jv, %5
  br i1 %i.jw, label %.lr.ph192.i.i, label %.preheader184.i.i, !llvm.loop !455

.preheader182.i.i:                                ; preds = %.lr.ph199.i.i, %.preheader184.i.i
  %.1531.lcssa.i.i = phi i32 [ %.0530.lcssa.i.i, %.preheader184.i.i ], [ %i.kn, %.lr.ph199.i.i ] ; 5 uses
  %.1520.lcssa.i.i = phi ptr [ %.0519.lcssa.i.i, %.preheader184.i.i ], [ %i.km, %.lr.ph199.i.i ] ; 2 uses
  %.4.lcssa.i.i = phi ptr [ %.3.lcssa.i.i, %.preheader184.i.i ], [ %i.kl, %.lr.ph199.i.i ] ; 3 uses
  %i.jx = icmp slt i32 %.1531.lcssa.i.i, %5
  br i1 %i.jx, label %.lr.ph206.i.i.preheader, label %.loopexit183.i.i

.lr.ph206.i.i.preheader:                          ; preds = %.preheader182.i.i
  %i.jy = sub i32 %5, %.1531.lcssa.i.i
  %xtraiter = and i32 %i.jy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph206.i.i.prol.loopexit, label %.lr.ph206.i.i.prol

.lr.ph206.i.i.prol:                               ; preds = %.lr.ph206.i.i.preheader, %.lr.ph206.i.i.prol
  %.5205.i.i.prol = phi ptr [ %i.ka, %.lr.ph206.i.i.prol ], [ %.4.lcssa.i.i, %.lr.ph206.i.i.preheader ] ; 2 uses
  %.2521204.i.i.prol = phi ptr [ %i.kb, %.lr.ph206.i.i.prol ], [ %.1520.lcssa.i.i, %.lr.ph206.i.i.preheader ] ; 2 uses
  %.2532203.i.i.prol = phi i32 [ %i.kc, %.lr.ph206.i.i.prol ], [ %.1531.lcssa.i.i, %.lr.ph206.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph206.i.i.prol ], [ 0, %.lr.ph206.i.i.preheader ]
  %i.jz = load <2 x i64>, ptr %.2521204.i.i.prol, align 1, !tbaa !44
  store <2 x i64> %i.jz, ptr %.5205.i.i.prol, align 1, !tbaa !44
  %i.ka = getelementptr inbounds nuw i8, ptr %.5205.i.i.prol, i64 16 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.2521204.i.i.prol, i64 %i.l ; 2 uses
  %i.kc = add nuw nsw i32 %.2532203.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph206.i.i.prol.loopexit, label %.lr.ph206.i.i.prol, !llvm.loop !456

.lr.ph206.i.i.prol.loopexit:                      ; preds = %.lr.ph206.i.i.prol, %.lr.ph206.i.i.preheader
  %.lcssa538.unr = phi ptr [ poison, %.lr.ph206.i.i.preheader ], [ %i.ka, %.lr.ph206.i.i.prol ]
  %.5205.i.i.unr = phi ptr [ %.4.lcssa.i.i, %.lr.ph206.i.i.preheader ], [ %i.ka, %.lr.ph206.i.i.prol ]
  %.2521204.i.i.unr = phi ptr [ %.1520.lcssa.i.i, %.lr.ph206.i.i.preheader ], [ %i.kb, %.lr.ph206.i.i.prol ]
  %.2532203.i.i.unr = phi i32 [ %.1531.lcssa.i.i, %.lr.ph206.i.i.preheader ], [ %i.kc, %.lr.ph206.i.i.prol ]
  %i.kd = sub i32 %.1531.lcssa.i.i, %5
  %i.ke = icmp ugt i32 %i.kd, -8
  br i1 %i.ke, label %.loopexit183.i.i, label %.lr.ph206.i.i

.lr.ph199.i.i:                                    ; preds = %.preheader184.i.i, %.lr.ph199.i.i
  %.4198.i.i = phi ptr [ %i.kl, %.lr.ph199.i.i ], [ %.3.lcssa.i.i, %.preheader184.i.i ] ; 3 uses
  %.1520197.i.i = phi ptr [ %i.km, %.lr.ph199.i.i ], [ %.0519.lcssa.i.i, %.preheader184.i.i ] ; 3 uses
  %.1531196.i.i = phi i32 [ %i.kn, %.lr.ph199.i.i ], [ %.0530.lcssa.i.i, %.preheader184.i.i ]
  %i.kf = load <16 x i8>, ptr %.1520197.i.i, align 1, !tbaa !44 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.1520197.i.i, i64 %i.l
  %i.kh = load <16 x i8>, ptr %i.kg, align 1, !tbaa !44 ; 2 uses
  %i.ki = shufflevector <16 x i8> %i.kf, <16 x i8> %i.kh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.kj = shufflevector <16 x i8> %i.kf, <16 x i8> %i.kh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ki, ptr %.4198.i.i, align 1, !tbaa !44
  %i.kk = getelementptr inbounds nuw i8, ptr %.4198.i.i, i64 16
  store <16 x i8> %i.kj, ptr %i.kk, align 1, !tbaa !44
  %i.kl = getelementptr inbounds nuw i8, ptr %.4198.i.i, i64 32 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.1520197.i.i, i64 %i.x ; 2 uses
  %i.kn = add nuw nsw i32 %.1531196.i.i, 2        ; 3 uses
  %i.ko = or disjoint i32 %i.kn, 1
  %i.kp = icmp slt i32 %i.ko, %5
  br i1 %i.kp, label %.lr.ph199.i.i, label %.preheader182.i.i, !llvm.loop !457

.lr.ph206.i.i:                                    ; preds = %.lr.ph206.i.i.prol.loopexit, %.lr.ph206.i.i
  %.5205.i.i = phi ptr [ %i.lm, %.lr.ph206.i.i ], [ %.5205.i.i.unr, %.lr.ph206.i.i.prol.loopexit ] ; 9 uses
  %.2521204.i.i = phi ptr [ %i.ln, %.lr.ph206.i.i ], [ %.2521204.i.i.unr, %.lr.ph206.i.i.prol.loopexit ] ; 2 uses
  %.2532203.i.i = phi i32 [ %i.lo, %.lr.ph206.i.i ], [ %.2532203.i.i.unr, %.lr.ph206.i.i.prol.loopexit ]
  %i.kq = load <2 x i64>, ptr %.2521204.i.i, align 1, !tbaa !44
  store <2 x i64> %i.kq, ptr %.5205.i.i, align 1, !tbaa !44
  %i.kr = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %.2521204.i.i, i64 %i.l ; 2 uses
  %i.kt = load <2 x i64>, ptr %i.ks, align 1, !tbaa !44
  store <2 x i64> %i.kt, ptr %i.kr, align 1, !tbaa !44
  %i.ku = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.l ; 2 uses
  %i.kw = load <2 x i64>, ptr %i.kv, align 1, !tbaa !44
  store <2 x i64> %i.kw, ptr %i.ku, align 1, !tbaa !44
  %i.kx = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 48
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.l ; 2 uses
  %i.kz = load <2 x i64>, ptr %i.ky, align 1, !tbaa !44
  store <2 x i64> %i.kz, ptr %i.kx, align 1, !tbaa !44
  %i.la = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.l ; 2 uses
  %i.lc = load <2 x i64>, ptr %i.lb, align 1, !tbaa !44
  store <2 x i64> %i.lc, ptr %i.la, align 1, !tbaa !44
  %i.ld = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 80
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.l ; 2 uses
  %i.lf = load <2 x i64>, ptr %i.le, align 1, !tbaa !44
  store <2 x i64> %i.lf, ptr %i.ld, align 1, !tbaa !44
  %i.lg = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 96
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.l ; 2 uses
  %i.li = load <2 x i64>, ptr %i.lh, align 1, !tbaa !44
  store <2 x i64> %i.li, ptr %i.lg, align 1, !tbaa !44
  %i.lj = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 112
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.l ; 2 uses
  %i.ll = load <2 x i64>, ptr %i.lk, align 1, !tbaa !44
  store <2 x i64> %i.ll, ptr %i.lj, align 1, !tbaa !44
  %i.lm = getelementptr inbounds nuw i8, ptr %.5205.i.i, i64 128 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.l
  %i.lo = add nuw nsw i32 %.2532203.i.i, 8        ; 2 uses
  %exitcond360.not.i.i.7 = icmp eq i32 %i.lo, %5
  br i1 %exitcond360.not.i.i.7, label %.loopexit183.i.i, label %.lr.ph206.i.i, !llvm.loop !458

.loopexit183.i.i:                                 ; preds = %.lr.ph206.i.i.prol.loopexit, %.lr.ph206.i.i, %.lr.ph.i.i, %.preheader182.i.i, %_ZN4ncnn3MatD2Ev.exit551.i.i, %bb.c
  %.6.i.i = phi ptr [ %.0502209.i.i, %bb.c ], [ %.4.lcssa.i.i, %.preheader182.i.i ], [ %i.ib, %.lr.ph.i.i ], [ %.0502209.i.i, %_ZN4ncnn3MatD2Ev.exit551.i.i ], [ %.lcssa538.unr, %.lr.ph206.i.i.prol.loopexit ], [ %i.lm, %.lr.ph206.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 16 ; 3 uses
  %i.lp = or disjoint i64 %indvars.iv.next.i.i, 15
  %i.lq = icmp samesign ult i64 %i.lp, %i.ab
  br i1 %i.lq, label %bb.c, label %.preheader181.loopexit.i.i, !llvm.loop !459

.preheader176.loopexit.i.i:                       ; preds = %.loopexit178.i.us113.i, %.loopexit178.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit549.i.us.preheader.i, %.loopexit178.i.preheader.i
  %.us-phi.i = phi ptr [ %i.ck, %.loopexit178.i.loopexit.us.us.i ], [ %.0502.lcssa.i.i, %.loopexit178.i.preheader.i ], [ %.0502.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit549.i.us.preheader.i ], [ %.13.i.us114.i, %.loopexit178.i.us113.i ]
  %.us-phi109.i = phi i64 [ %indvars.iv.next365.i.us.us.i, %.loopexit178.i.loopexit.us.us.i ], [ %i.ay, %.loopexit178.i.preheader.i ], [ %i.be, %_ZN4ncnn3MatD2Ev.exit549.i.us.preheader.i ], [ %indvars.iv.next365.i.us115.i, %.loopexit178.i.us113.i ]
  %i.lr = trunc nuw nsw i64 %.us-phi109.i to i32
  br label %.preheader176.i.i

.preheader176.i.i:                                ; preds = %.preheader176.loopexit.i.i, %.preheader181.i.i
  %.1505.lcssa.i.i = phi i32 [ %.0504.lcssa.i.i, %.preheader181.i.i ], [ %i.lr, %.preheader176.loopexit.i.i ] ; 3 uses
  %.7.lcssa.i.i = phi ptr [ %.0502.lcssa.i.i, %.preheader181.i.i ], [ %.us-phi.i, %.preheader176.loopexit.i.i ] ; 5 uses
  %i.ls = or disjoint i32 %.1505.lcssa.i.i, 3
  %i.lt = icmp slt i32 %i.ls, %3
  br i1 %i.lt, label %.lr.ph268.i.i, label %.preheader171.i.i

.lr.ph268.i.i:                                    ; preds = %.preheader176.i.i
  %i.lu = sdiv i32 %4, 8
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lx = lshr i32 %5, 3                          ; 3 uses
  %i.ly = shl i64 %i.l, 3                         ; 2 uses
  %i.lz = sext i32 %4 to i64
  %i.ma = icmp sgt i32 %5, 3
  %i.mb = shl i64 %i.l, 1                         ; 2 uses
  %i.mc = mul i64 %i.l, 3
  %i.md = shl i64 %i.l, 2
  %i.me = and i32 %5, -4
  %i.mf = zext i32 %.1505.lcssa.i.i to i64        ; 6 uses
  %i.mg = sext i32 %3 to i64
  %i.mh = sext i32 %2 to i64                      ; 2 uses
  %invariant.op433.i.i = add nsw i64 %i.mg, -3    ; 4 uses
  switch i32 %i.n, label %.loopexit173.i.preheader.i [
    i32 8, label %.lr.ph268.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit546.i.us.i
  ]

.loopexit173.i.preheader.i:                       ; preds = %.lr.ph268.i.i
  %i.mi = add nuw nsw i64 %i.mf, 4                ; 2 uses
  %smax250.i = tail call i64 @llvm.smax.i64(i64 %invariant.op433.i.i, i64 %i.mi)
  %i.mj = xor i64 %i.mf, -1
  %i.mk = add nsw i64 %smax250.i, %i.mj
  %i.ml = and i64 %i.mk, -4
  %i.mm = add i64 %i.mi, %i.ml
  br label %.preheader171.loopexit.i.i

.lr.ph268.i.split.us.i:                           ; preds = %.lr.ph268.i.i
  %i.mn = icmp sgt i32 %5, 7
  br i1 %i.mn, label %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i.preheader, label %_ZN4ncnn3MatD2Ev.exit547.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit547.i.us.us.i.preheader:     ; preds = %.lr.ph268.i.split.us.i
  %i.mo = icmp eq i32 %i.lx, 1
  %unroll_iter = and i32 %i.lx, 268435454
  %i.mp = and i32 %5, 8
  %lcmp.mod619.not = icmp eq i32 %i.mp, 0
  %lcmp.mod621 = trunc i32 %i.lx to i1
  br label %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i

_ZN4ncnn3MatD2Ev.exit547.i.us.preheader.i:        ; preds = %.lr.ph268.i.split.us.i
  %i.mq = add nuw nsw i64 %i.mf, 4                ; 2 uses
  %smax249.i = tail call i64 @llvm.smax.i64(i64 %invariant.op433.i.i, i64 %i.mq)
  %i.mr = xor i64 %i.mf, -1
  %i.ms = add nsw i64 %smax249.i, %i.mr
  %i.mt = and i64 %i.ms, -4
  %i.mu = add i64 %i.mq, %i.mt
  br label %.preheader171.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit547.i.us.us.i:               ; preds = %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i.preheader, %.loopexit173.i.loopexit.us.us.i
  %indvars.iv369.i.us.us.i = phi i64 [ %indvars.iv.next370.i.us.us.i, %.loopexit173.i.loopexit.us.us.i ], [ %i.mf, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i.preheader ] ; 2 uses
  %.14267.i.us.us.i = phi ptr [ %.lcssa516, %.loopexit173.i.loopexit.us.us.i ], [ %.7.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i.preheader ] ; 2 uses
  %i.mv = load ptr, ptr %0, align 8, !tbaa !32, !noalias !460
  %i.mw = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !460
  %i.mx = mul i64 %i.mw, %i.lv
  %i.my = load i64, ptr %i.lw, align 8, !tbaa !36, !noalias !460
  %i.mz = mul i64 %i.mx, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mz
  %i.nb = add nsw i64 %indvars.iv369.i.us.us.i, %i.mh
  %i.nc = shl nsw i64 %i.nb, 3
  %i.nd = getelementptr inbounds i8, ptr %i.na, i64 %i.nc ; 2 uses
  br i1 %i.mo, label %.lr.ph245.i.us.us.i.epil.preheader, label %.lr.ph245.i.us.us.i

.lr.ph245.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i, %.lr.ph245.i.us.us.i
  %.15244.i.us.us.i = phi ptr [ %i.oa, %.lr.ph245.i.us.us.i ], [ %.14267.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i ] ; 5 uses
  %.0541243.i.us.us.i = phi ptr [ %i.ob, %.lr.ph245.i.us.us.i ], [ %i.nd, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph245.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i ]
  %i.ne = load <4 x i32>, ptr %.0541243.i.us.us.i, align 1, !tbaa !44 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0541243.i.us.us.i, i64 16
  %i.ng = load <4 x i32>, ptr %i.nf, align 1, !tbaa !44 ; 2 uses
  %i.nh = shufflevector <4 x i32> %i.ne, <4 x i32> %i.ng, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ni = shufflevector <4 x i32> %i.ne, <4 x i32> %i.ng, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nj = bitcast <4 x i32> %i.nh to <16 x i8>
  %i.nk = add <16 x i8> %i.nj, splat (i8 127)
  %i.nl = bitcast <4 x i32> %i.ni to <16 x i8>
  %i.nm = add <16 x i8> %i.nl, splat (i8 127)
  store <16 x i8> %i.nk, ptr %.15244.i.us.us.i, align 16, !tbaa !44
  %i.nn = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i, i64 16
  store <16 x i8> %i.nm, ptr %i.nn, align 16, !tbaa !44
  %i.no = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i, i64 32
  %i.np = getelementptr inbounds nuw i8, ptr %.0541243.i.us.us.i, i64 %i.ly ; 3 uses
  %i.nq = load <4 x i32>, ptr %i.np, align 1, !tbaa !44 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.ns = load <4 x i32>, ptr %i.nr, align 1, !tbaa !44 ; 2 uses
  %i.nt = shufflevector <4 x i32> %i.nq, <4 x i32> %i.ns, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nu = shufflevector <4 x i32> %i.nq, <4 x i32> %i.ns, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nv = bitcast <4 x i32> %i.nt to <16 x i8>
  %i.nw = add <16 x i8> %i.nv, splat (i8 127)
  %i.nx = bitcast <4 x i32> %i.nu to <16 x i8>
  %i.ny = add <16 x i8> %i.nx, splat (i8 127)
  store <16 x i8> %i.nw, ptr %i.no, align 16, !tbaa !44
  %i.nz = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i, i64 48
  store <16 x i8> %i.ny, ptr %i.nz, align 16, !tbaa !44
  %i.oa = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i, i64 64 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.ly ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit173.i.loopexit.us.us.i.unr-lcssa, label %.lr.ph245.i.us.us.i, !llvm.loop !463

.loopexit173.i.loopexit.us.us.i.unr-lcssa:        ; preds = %.lr.ph245.i.us.us.i
  br i1 %lcmp.mod619.not, label %.loopexit173.i.loopexit.us.us.i, label %.lr.ph245.i.us.us.i.epil.preheader

.lr.ph245.i.us.us.i.epil.preheader:               ; preds = %.loopexit173.i.loopexit.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i
  %.15244.i.us.us.i.epil.init = phi ptr [ %.14267.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i ], [ %i.oa, %.loopexit173.i.loopexit.us.us.i.unr-lcssa ] ; 3 uses
  %.0541243.i.us.us.i.epil.init = phi ptr [ %i.nd, %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i ], [ %i.ob, %.loopexit173.i.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod621)
  %i.oc = load <4 x i32>, ptr %.0541243.i.us.us.i.epil.init, align 1, !tbaa !44 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.0541243.i.us.us.i.epil.init, i64 16
  %i.oe = load <4 x i32>, ptr %i.od, align 1, !tbaa !44 ; 2 uses
  %i.of = shufflevector <4 x i32> %i.oc, <4 x i32> %i.oe, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.og = shufflevector <4 x i32> %i.oc, <4 x i32> %i.oe, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oh = bitcast <4 x i32> %i.of to <16 x i8>
  %i.oi = add <16 x i8> %i.oh, splat (i8 127)
  %i.oj = bitcast <4 x i32> %i.og to <16 x i8>
  %i.ok = add <16 x i8> %i.oj, splat (i8 127)
  store <16 x i8> %i.oi, ptr %.15244.i.us.us.i.epil.init, align 16, !tbaa !44
  %i.ol = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i.epil.init, i64 16
  store <16 x i8> %i.ok, ptr %i.ol, align 16, !tbaa !44
  %i.om = getelementptr inbounds nuw i8, ptr %.15244.i.us.us.i.epil.init, i64 32
  br label %.loopexit173.i.loopexit.us.us.i

.loopexit173.i.loopexit.us.us.i:                  ; preds = %.loopexit173.i.loopexit.us.us.i.unr-lcssa, %.lr.ph245.i.us.us.i.epil.preheader
  %.lcssa516 = phi ptr [ %i.oa, %.loopexit173.i.loopexit.us.us.i.unr-lcssa ], [ %i.om, %.lr.ph245.i.us.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next370.i.us.us.i = add nuw nsw i64 %indvars.iv369.i.us.us.i, 4 ; 3 uses
  %i.on = icmp slt i64 %indvars.iv.next370.i.us.us.i, %invariant.op433.i.i
  br i1 %i.on, label %_ZN4ncnn3MatD2Ev.exit547.i.us.us.i, label %.preheader171.loopexit.i.i, !llvm.loop !464

_ZN4ncnn3MatD2Ev.exit546.i.us.i:                  ; preds = %.lr.ph268.i.i, %.loopexit173.i.us127.i
  %indvars.iv369.i.us125.i = phi i64 [ %indvars.iv.next370.i.us129.i, %.loopexit173.i.us127.i ], [ %i.mf, %.lr.ph268.i.i ] ; 2 uses
  %.14267.i.us126.i = phi ptr [ %.20.i.us128.i, %.loopexit173.i.us127.i ], [ %.7.lcssa.i.i, %.lr.ph268.i.i ] ; 2 uses
  %i.oo = load ptr, ptr %0, align 8, !tbaa !32, !noalias !465
  %i.op = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !465
  %i.oq = mul i64 %i.op, %i.lz
  %i.or = load i64, ptr %i.lw, align 8, !tbaa !36, !noalias !465
  %i.os = mul i64 %i.oq, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.os
  %i.ou = getelementptr i8, ptr %i.ot, i64 %indvars.iv369.i.us125.i
  %i.ov = getelementptr i8, ptr %i.ou, i64 %i.mh  ; 2 uses
  br i1 %i.ma, label %.lr.ph250.i.us.i, label %.preheader174.i.us.i

.lr.ph250.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit546.i.us.i, %.lr.ph250.i.us.i
  %.17249.i.us.i = phi ptr [ %i.rg, %.lr.ph250.i.us.i ], [ %.14267.i.us126.i, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ] ; 17 uses
  %.0524248.i.us.i = phi i32 [ %i.ri, %.lr.ph250.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ]
  %.0527247.i.us.i = phi ptr [ %i.rh, %.lr.ph250.i.us.i ], [ %i.ov, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ] ; 8 uses
  %i.ow = load i8, ptr %.0527247.i.us.i, align 1, !tbaa !44
  %i.ox = add i8 %i.ow, 127
  store i8 %i.ox, ptr %.17249.i.us.i, align 1, !tbaa !44
  %i.oy = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 %i.l ; 4 uses
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !44
  %i.pa = add i8 %i.oz, 127
  %i.pb = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 1
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !44
  %i.pc = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 %i.mb ; 4 uses
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !44
  %i.pe = add i8 %i.pd, 127
  %i.pf = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 2
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !44
  %i.pg = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 %i.mc ; 4 uses
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !44
  %i.pi = add i8 %i.ph, 127
  %i.pj = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 3
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !44
  %i.pk = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 1
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !44
  %i.pm = add i8 %i.pl, 127
  %i.pn = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 4
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !44
  %i.po = getelementptr i8, ptr %i.oy, i64 1
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !44
  %i.pq = add i8 %i.pp, 127
  %i.pr = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 5
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !44
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pc, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !44
  %i.pu = add i8 %i.pt, 127
  %i.pv = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 6
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !44
  %i.pw = getelementptr i8, ptr %i.pg, i64 1
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !44
  %i.py = add i8 %i.px, 127
  %i.pz = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 7
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !44
  %i.qa = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 2
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !44
  %i.qc = add i8 %i.qb, 127
  %i.qd = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 8
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !44
  %i.qe = getelementptr i8, ptr %i.oy, i64 2
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !44
  %i.qg = add i8 %i.qf, 127
  %i.qh = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 9
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !44
  %i.qi = getelementptr i8, ptr %i.pc, i64 2
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !44
  %i.qk = add i8 %i.qj, 127
  %i.ql = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 10
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !44
  %i.qm = getelementptr i8, ptr %i.pg, i64 2
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !44
  %i.qo = add i8 %i.qn, 127
  %i.qp = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 11
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !44
  %i.qq = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 3
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !44
  %i.qs = add i8 %i.qr, 127
  %i.qt = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 12
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !44
  %i.qu = getelementptr i8, ptr %i.oy, i64 3
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !44
  %i.qw = add i8 %i.qv, 127
  %i.qx = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 13
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !44
  %i.qy = getelementptr i8, ptr %i.pc, i64 3
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !44
  %i.ra = add i8 %i.qz, 127
  %i.rb = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 14
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !44
  %i.rc = getelementptr i8, ptr %i.pg, i64 3
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !44
  %i.re = add i8 %i.rd, 127
  %i.rf = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 15
  store i8 %i.re, ptr %i.rf, align 1, !tbaa !44
  %i.rg = getelementptr inbounds nuw i8, ptr %.17249.i.us.i, i64 16 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.0527247.i.us.i, i64 %i.md ; 2 uses
  %i.ri = add nuw nsw i32 %.0524248.i.us.i, 4     ; 2 uses
  %i.rj = or disjoint i32 %i.ri, 3
  %i.rk = icmp slt i32 %i.rj, %5
  br i1 %i.rk, label %.lr.ph250.i.us.i, label %.preheader174.i.us.i, !llvm.loop !468

.preheader174.i.us.i:                             ; preds = %.lr.ph250.i.us.i, %_ZN4ncnn3MatD2Ev.exit546.i.us.i
  %.0527.lcssa.i.us.i = phi ptr [ %i.ov, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ], [ %i.rh, %.lr.ph250.i.us.i ] ; 2 uses
  %.0524.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ], [ %i.me, %.lr.ph250.i.us.i ] ; 3 uses
  %.17.lcssa.i.us.i = phi ptr [ %.14267.i.us126.i, %_ZN4ncnn3MatD2Ev.exit546.i.us.i ], [ %i.rg, %.lr.ph250.i.us.i ] ; 2 uses
  %i.rl = or disjoint i32 %.0524.lcssa.i.us.i, 1
  %i.rm = icmp slt i32 %i.rl, %5
  br i1 %i.rm, label %.lr.ph257.i.us.i, label %.preheader172.i.us.i

.lr.ph257.i.us.i:                                 ; preds = %.preheader174.i.us.i, %.lr.ph257.i.us.i
  %.18256.i.us.i = phi ptr [ %i.sj, %.lr.ph257.i.us.i ], [ %.17.lcssa.i.us.i, %.preheader174.i.us.i ] ; 9 uses
  %.1525255.i.us.i = phi i32 [ %i.sl, %.lr.ph257.i.us.i ], [ %.0524.lcssa.i.us.i, %.preheader174.i.us.i ]
  %.1528254.i.us.i = phi ptr [ %i.sk, %.lr.ph257.i.us.i ], [ %.0527.lcssa.i.us.i, %.preheader174.i.us.i ] ; 6 uses
  %i.rn = load i8, ptr %.1528254.i.us.i, align 1, !tbaa !44
  store i8 %i.rn, ptr %.18256.i.us.i, align 1, !tbaa !44
  %i.ro = getelementptr inbounds nuw i8, ptr %.1528254.i.us.i, i64 %i.l ; 4 uses
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !44
  %i.rq = getelementptr inbounds nuw i8, ptr %.18256.i.us.i, i64 1
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !44
end_hunk_1
begin_hunk_2_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1:bb.a
  %i.abl = icmp slt i32 %i.abk, %i.bt
  %.fr.us.i = freeze i1 %i.abl
  %.not.us.us.i = icmp slt i32 %i.abc, %i.bu      ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us744.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us744.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.bq, label %_ZN4ncnn3MatD2Ev.exit.split.us744.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.bs, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.bq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us744.preheader.i
  %i.abm = add nsw i32 %i.zy, %i.zm
  %i.abn = add nsw i32 %i.abm, %i.aak
  %i.abo = ashr i32 %i.abn, 2
  store i32 %i.abo, ptr %i.abj, align 4, !tbaa !9
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.yu
  br label %_ZN4ncnn3MatD2Ev.exit.split.us744.1.i

_ZN4ncnn3MatD2Ev.exit.split.us744.1.i:            ; preds = %bb.bq, %_ZN4ncnn3MatD2Ev.exit.split.us744.preheader.i
  %.1485.us742.i = phi ptr [ %i.abj, %_ZN4ncnn3MatD2Ev.exit.split.us744.preheader.i ], [ %i.abp, %bb.bq ]
  %i.abq = or disjoint i32 %i.abc, 1
  %.not.us741.1.i = icmp slt i32 %i.abq, %i.bu
  br i1 %.not.us741.1.i, label %bb.br, label %.split.us743.i

bb.br:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us744.1.i
  %i.abr = add nsw i32 %i.aab, %i.zp
  %i.abs = add nsw i32 %i.abr, %i.aan
  %i.abt = ashr i32 %i.abs, 2
  store i32 %i.abt, ptr %.1485.us742.i, align 4, !tbaa !9
  br label %.split.us743.i

.split.us743.i:                                   ; preds = %bb.bt, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.br, %_ZN4ncnn3MatD2Ev.exit.split.us744.1.i
  %indvars.iv.next826.i = add nuw nsw i64 %indvars.iv825.i, 1 ; 2 uses
  %exitcond829.not.i = icmp eq i64 %indvars.iv.next826.i, %wide.trip.count828.i
  br i1 %exitcond829.not.i, label %._crit_edge.us746.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !605

bb.bs:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.abu = add nsw i32 %i.zy, %i.zm
  %i.abv = add nsw i32 %i.abu, %i.aak
  %i.abw = ashr i32 %i.abv, 2
  store i32 %i.abw, ptr %i.abj, align 4, !tbaa !9
  %i.abx = sub i32 %i.zy, %i.aak
  %i.aby = add i32 %i.abx, %i.aas
  %i.abz = add i32 %i.aby, %i.aat
  %i.aca = add i32 %i.abz, %i.aau
  %i.acb = ashr i32 %i.aca, 2
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abj, i64 4
  store i32 %i.acb, ptr %i.acc, align 4, !tbaa !9
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.yu
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.bs, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1485.us.us.i = phi ptr [ %i.abj, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.acd, %bb.bs ] ; 2 uses
  %i.ace = or disjoint i32 %i.abc, 1
  %.not.us.us.1.i = icmp slt i32 %i.ace, %i.bu
  br i1 %.not.us.us.1.i, label %bb.bt, label %.split.us743.i

bb.bt:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.acf = add nsw i32 %i.aab, %i.zp
  %i.acg = add nsw i32 %i.acf, %i.aan
  %i.ach = ashr i32 %i.acg, 2
  store i32 %i.ach, ptr %.1485.us.us.i, align 4, !tbaa !9
  %i.aci = add i32 %i.aab, %i.aat
  %i.acj = add i32 %i.aan, %i.aau
  %i.ack = sub i32 %i.aci, %i.acj
  %i.acl = add i32 %i.ack, %i.aav
  %i.acm = ashr i32 %i.acl, 2
  %i.acn = getelementptr inbounds nuw i8, ptr %.1485.us.us.i, i64 4
  store i32 %i.acm, ptr %i.acn, align 4, !tbaa !9
  br label %.split.us743.i

._crit_edge.us746.i:                              ; preds = %.split.us743.i
  %indvars.iv.next831.i = add nsw i64 %indvars.iv830.i, 1 ; 2 uses
  %exitcond834.not.i = icmp eq i64 %indvars.iv.next831.i, %i.bk
  br i1 %exitcond834.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us745.i, !llvm.loop !606

.noexc52:                                         ; preds = %.noexc52.preheader, %.noexc52
  %i.aco = phi i32 [ %i.aen, %.noexc52 ], [ %.pre169, %.noexc52.preheader ] ; 3 uses
  %i.acp = phi i32 [ %i.aep, %.noexc52 ], [ %i.br, %.noexc52.preheader ] ; 2 uses
  %.045160 = phi i32 [ %i.aeo, %.noexc52 ], [ 0, %.noexc52.preheader ] ; 5 uses
  %i.acq = sub nsw i32 %i.acp, %.045160
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aco, i32 %i.acq)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.acr = load i32, ptr %3, align 4, !tbaa !9
  %i.acs = sdiv i32 %i.at, %i.acr
  %i.act = load ptr, ptr %10, align 8, !tbaa !32, !noalias !607
  %i.acu = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !607
  %i.acv = sext i32 %i.acs to i64
  %i.acw = mul i64 %i.acu, %i.acv
  %i.acx = load i64, ptr %i.q, align 8, !tbaa !36, !noalias !607 ; 3 uses
  %i.acy = mul i64 %i.acw, %i.acx
  %i.acz = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.acy
  %i.ada = load i32, ptr %i.r, align 8, !tbaa !16, !noalias !607
  %i.adb = load ptr, ptr %i.s, align 8, !tbaa !541, !noalias !607
  %i.adc = sdiv i32 %.045160, %i.aco
  %i.add = sext i32 %i.adc to i64                 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !542
  store i64 %i.acx, ptr %i.u, align 8, !tbaa !36
  store i32 %i.ada, ptr %i.v, align 8, !tbaa !16
  store ptr %i.adb, ptr %i.w, align 8, !tbaa !541
  %i.ade = load <2 x i32>, ptr %i.n, align 4, !tbaa !9, !noalias !607
  %i.adf = load i32, ptr %i.o, align 8, !tbaa !19, !noalias !607
  %i.adg = load i32, ptr %i.n, align 4, !tbaa !10, !noalias !607
  %i.adh = sext i32 %i.adg to i64
  %i.adi = sext i32 %i.adf to i64
  %i.adj = mul nsw i64 %i.adi, %i.adh             ; 2 uses
  %i.adk = mul i64 %i.acx, %i.adj
  %i.adl = mul i64 %i.adk, %i.add
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.adl
  store ptr %i.adm, ptr %13, align 8, !tbaa !32
  %i.adn = shufflevector <2 x i32> %i.ade, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ado = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.adn, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.ado, ptr %i.x, align 8, !tbaa !9
  store i32 1, ptr %i.y, align 8, !tbaa !17
  store i64 %i.adj, ptr %i.z, align 8, !tbaa !18, !alias.scope !610
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %i.adp = load i32, ptr %7, align 4, !tbaa !9
  %i.adq = sdiv i32 %.044161, %i.adp
  %i.adr = load ptr, ptr %11, align 8, !tbaa !32, !noalias !613
  %i.ads = load i64, ptr %i.ac, align 8, !tbaa !18, !noalias !613
  %i.adt = sext i32 %i.adq to i64
  %i.adu = mul i64 %i.ads, %i.adt
  %i.adv = load i64, ptr %i.ad, align 8, !tbaa !36, !noalias !613 ; 3 uses
  %i.adw = mul i64 %i.adu, %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adw
  %i.ady = load i32, ptr %i.ae, align 8, !tbaa !16, !noalias !613
  %i.adz = load ptr, ptr %i.af, align 8, !tbaa !541, !noalias !613
  store ptr null, ptr %i.ag, align 8, !tbaa !542
  store i64 %i.adv, ptr %i.ah, align 8, !tbaa !36
  store i32 %i.ady, ptr %i.ai, align 8, !tbaa !16
  store ptr %i.adz, ptr %i.aj, align 8, !tbaa !541
  %i.aea = load <2 x i32>, ptr %i.aa, align 4, !tbaa !9, !noalias !613
  %i.aeb = load i32, ptr %i.ab, align 8, !tbaa !19, !noalias !613
  %i.aec = load i32, ptr %i.aa, align 4, !tbaa !10, !noalias !613
  %i.aed = sext i32 %i.aec to i64
  %i.aee = sext i32 %i.aeb to i64
  %i.aef = mul nsw i64 %i.aee, %i.aed             ; 2 uses
  %i.aeg = mul i64 %i.adv, %i.aef
  %i.aeh = mul i64 %i.aeg, %i.add
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.aeh
  store ptr %i.aei, ptr %14, align 8, !tbaa !32
  %i.aej = shufflevector <2 x i32> %i.aea, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.aek = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.aej, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.aek, ptr %i.ak, align 8, !tbaa !9
  store i32 1, ptr %i.al, align 8, !tbaa !17
  store i64 %i.aef, ptr %i.am, align 8, !tbaa !18, !alias.scope !616
  %i.ael = add nsw i32 %i.aco, %.045160
  %i.aem = icmp sge i32 %i.ael, %i.acp
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated120, i32 noundef %.sroa.speculated116, i32 noundef %.045160, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.aem)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  %i.aen = load i32, ptr %9, align 4, !tbaa !9    ; 2 uses
  %i.aeo = add nsw i32 %i.aen, %.045160           ; 2 uses
  %i.aep = load i32, ptr %8, align 4, !tbaa !9    ; 2 uses
  %i.aeq = icmp slt i32 %i.aeo, %i.aep
  br i1 %i.aeq, label %.noexc52, label %._crit_edge, !llvm.loop !619

_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us746.i, %.lr.ph737.i, %.preheader.i
  %i.aer = load i32, ptr %7, align 4, !tbaa !9    ; 2 uses
  %i.aes = add nsw i32 %i.aer, %.044161           ; 2 uses
  %i.aet = load i32, ptr %6, align 4, !tbaa !9    ; 2 uses
  %i.aeu = icmp slt i32 %i.aes, %i.aet
  br i1 %i.aeu, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !620

._crit_edge166:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge166, %bb.a
  ret void

bb.bv:                                            ; preds = %bb.c
  %i.aev = landingpad { ptr, i32 }
          catch ptr null
  %i.aew = extractvalue { ptr, i32 } %i.aev, 0
  call void @__clang_call_terminate(ptr %i.aew) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #18 {
bb.a:
  %i.a = icmp sgt i32 %3, 15
  br i1 %i.a, label %.preheader1081.lr.ph, label %.preheader1071

.preheader1081.lr.ph:                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 15
  %i.g = icmp eq i32 %5, 0                        ; 5 uses
  %i.h = icmp sgt i32 %6, 1                       ; 5 uses
  %i.i = add i32 %6, -2                           ; 6 uses
  %i.j = and i32 %i.i, -2
  %i.k = add i32 %i.j, 2                          ; 5 uses
  %i.l = and i32 %4, -16
  %i.m = lshr i32 %i.i, 1                         ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 4 uses
  %i.o = shl nuw nsw i64 %i.n, 5
  %i.p = shl nuw nsw i64 %i.n, 4
  %i.q = shl nuw nsw i64 %i.n, 3
  %i.r = shl nuw nsw i64 %i.n, 2
  %i.s = zext nneg i32 %3 to i64
  %i.t = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.u = lshr i32 %i.i, 1                         ; 2 uses
  %i.v = add nuw i32 %i.u, 1                      ; 6 uses
  %i.w = icmp eq i32 %i.u, 0
  %unroll_iter = and i32 %i.v, -2
  %i.x = and i32 %i.i, 2
  %lcmp.mod.not.not = icmp eq i32 %i.x, 0
  %lcmp.mod3793 = trunc i32 %i.v to i1
  %i.y = icmp eq i32 %i.m, 0
  %unroll_iter3800 = and i32 %i.v, -2
  %i.z = and i32 %i.i, 2
  %lcmp.mod3795.not.not = icmp eq i32 %i.z, 0
  %lcmp.mod3799 = trunc i32 %i.v to i1
  %xtraiter3804 = and i32 %i.v, 3                 ; 3 uses
  %i.aa = icmp ult i32 %i.i, 6
  %unroll_iter3809 = and i32 %i.v, -4
  %lcmp.mod3805.not = icmp eq i32 %xtraiter3804, 0
  %lcmp.mod3808 = icmp ne i32 %xtraiter3804, 0
  br label %.preheader1081

.preheader1081:                                   ; preds = %.preheader1081.lr.ph, %bb.b
  %indvars.iv2290 = phi i64 [ 0, %.preheader1081.lr.ph ], [ %indvars.iv.next2291, %bb.b ] ; 2 uses
  %.014001321 = phi ptr [ %.0.val, %.preheader1081.lr.ph ], [ %.6.lcssa, %bb.b ]
  %i.ab = mul nsw i64 %indvars.iv2290, %i.t
  br label %bb.c

.preheader1071.loopexit:                          ; preds = %bb.b
  %i.ac = trunc nuw nsw i64 %indvars.iv.next2291 to i32
  br label %.preheader1071

.preheader1071:                                   ; preds = %.preheader1071.loopexit, %bb.a
  %.01403.lcssa = phi i32 [ 0, %bb.a ], [ %i.ac, %.preheader1071.loopexit ] ; 3 uses
  %.01400.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6.lcssa, %.preheader1071.loopexit ] ; 2 uses
  %i.ad = or disjoint i32 %.01403.lcssa, 7
  %i.ae = icmp slt i32 %i.ad, %3
  br i1 %i.ae, label %.preheader1070.lr.ph, label %.preheader1060

.preheader1070.lr.ph:                             ; preds = %.preheader1071
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = icmp sgt i32 %4, 15
  %i.ak = icmp eq i32 %5, 0                       ; 5 uses
  %i.al = icmp sgt i32 %6, 1                      ; 5 uses
  %i.am = add i32 %6, -2                          ; 7 uses
  %i.an = and i32 %i.am, -2
  %i.ao = add i32 %i.an, 2                        ; 5 uses
  %i.ap = and i32 %4, -16
  %i.aq = lshr i32 %i.am, 1                       ; 4 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 4 uses
  %i.as = shl nuw nsw i64 %i.ar, 5
  %i.at = shl nuw nsw i64 %i.ar, 4
  %i.au = shl nuw nsw i64 %i.ar, 3
  %i.av = shl nuw nsw i64 %i.ar, 2
  %i.aw = zext nneg i32 %.01403.lcssa to i64
  %i.ax = sext i32 %3 to i64
  %i.ay = sext i32 %6 to i64
  %wide.trip.count2306 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.ax, -7
  %i.az = lshr i32 %i.am, 1                       ; 2 uses
  %i.ba = add nuw i32 %i.az, 1                    ; 8 uses
  %i.bb = icmp eq i32 %i.az, 0
  %unroll_iter3823 = and i32 %i.ba, -2
  %i.bc = and i32 %i.am, 2
  %lcmp.mod3816.not.not = icmp eq i32 %i.bc, 0
  %lcmp.mod3822 = trunc i32 %i.ba to i1
  %i.bd = icmp eq i32 %i.aq, 0
  %unroll_iter3834 = and i32 %i.ba, -2
  %i.be = and i32 %i.am, 2
  %lcmp.mod3827.not.not = icmp eq i32 %i.be, 0
  %lcmp.mod3833 = trunc i32 %i.ba to i1
  %i.bf = icmp eq i32 %i.aq, 0
  %unroll_iter3843 = and i32 %i.ba, -2
  %i.bg = and i32 %i.am, 2
  %lcmp.mod3838.not.not = icmp eq i32 %i.bg, 0
  %lcmp.mod3842 = trunc i32 %i.ba to i1
  %i.bh = icmp eq i32 %i.aq, 0
  %unroll_iter3855 = and i32 %i.ba, -2
  %i.bi = and i32 %i.am, 2
  %lcmp.mod3851.not.not = icmp eq i32 %i.bi, 0
  %lcmp.mod3854 = trunc i32 %i.ba to i1
  br label %.preheader1070

bb.b:                                             ; preds = %._crit_edge1316
  %indvars.iv.next2291 = add nuw nsw i64 %indvars.iv2290, 16 ; 3 uses
  %i.bj = or disjoint i64 %indvars.iv.next2291, 15
  %i.bk = icmp samesign ult i64 %i.bj, %i.s
  br i1 %i.bk, label %.preheader1081, label %.preheader1071.loopexit, !llvm.loop !621

bb.c:                                             ; preds = %.preheader1081, %._crit_edge1316
  %indvars.iv = phi i64 [ 0, %.preheader1081 ], [ %indvars.iv.next, %._crit_edge1316 ] ; 3 uses
  %.114011319 = phi ptr [ %.014001321, %.preheader1081 ], [ %.6.lcssa, %._crit_edge1316 ] ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !32
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %indvars.iv, %i.bn
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !36
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.ab ; 13 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !32
  %i.bu = load i32, ptr %i.d, align 4, !tbaa !10
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul nsw i64 %indvars.iv, %i.bv
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !36
  %i.by = mul i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  br i1 %i.f, label %.lr.ph1173, label %.preheader1080

.preheader1080:                                   ; preds = %bb.g, %bb.c
  %.01424.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %bb.g ] ; 3 uses
  %.01409.lcssa = phi ptr [ %i.bz, %bb.c ], [ %.21411.lcssa, %bb.g ] ; 2 uses
  %.21402.lcssa = phi ptr [ %.114011319, %bb.c ], [ %i.nh, %bb.g ] ; 2 uses
  %i.ca = or disjoint i32 %.01424.lcssa, 7
  %i.cb = icmp slt i32 %i.ca, %4
  br i1 %i.cb, label %.lr.ph1226, label %.preheader1079

.lr.ph1173:                                       ; preds = %bb.c, %bb.g
  %.214021171 = phi ptr [ %i.nh, %bb.g ], [ %.114011319, %bb.c ] ; 33 uses
  %.014091170 = phi ptr [ %.21411.lcssa, %bb.g ], [ %i.bz, %bb.c ] ; 2 uses
  %.014241169 = phi i32 [ %i.ni, %bb.g ], [ 0, %bb.c ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph1173
  %i.cc = load <8 x i64>, ptr %.214021171, align 64, !tbaa !44
  %i.cd = getelementptr inbounds nuw i8, ptr %.214021171, i64 64
  %i.ce = load <8 x i64>, ptr %i.cd, align 64, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %.214021171, i64 128
  %i.cg = load <8 x i64>, ptr %i.cf, align 64, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %.214021171, i64 192
  %i.ci = load <8 x i64>, ptr %i.ch, align 64, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %.214021171, i64 256
  %i.ck = load <8 x i64>, ptr %i.cj, align 64, !tbaa !44
  %i.cl = getelementptr inbounds nuw i8, ptr %.214021171, i64 320
  %i.cm = load <8 x i64>, ptr %i.cl, align 64, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %.214021171, i64 384
  %i.co = load <8 x i64>, ptr %i.cn, align 64, !tbaa !44
  %i.cp = getelementptr inbounds nuw i8, ptr %.214021171, i64 448
  %i.cq = load <8 x i64>, ptr %i.cp, align 64, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %.214021171, i64 512
  %i.cs = load <8 x i64>, ptr %i.cr, align 64, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %.214021171, i64 576
  %i.cu = load <8 x i64>, ptr %i.ct, align 64, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %.214021171, i64 640
  %i.cw = load <8 x i64>, ptr %i.cv, align 64, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %.214021171, i64 704
  %i.cy = load <8 x i64>, ptr %i.cx, align 64, !tbaa !44
  %i.cz = getelementptr inbounds nuw i8, ptr %.214021171, i64 768
  %i.da = load <8 x i64>, ptr %i.cz, align 64, !tbaa !44
  %i.db = getelementptr inbounds nuw i8, ptr %.214021171, i64 832
  %i.dc = load <8 x i64>, ptr %i.db, align 64, !tbaa !44
  %i.dd = getelementptr inbounds nuw i8, ptr %.214021171, i64 896
  %i.de = load <8 x i64>, ptr %i.dd, align 64, !tbaa !44
  %i.df = getelementptr inbounds nuw i8, ptr %.214021171, i64 960
  %i.dg = load <8 x i64>, ptr %i.df, align 64, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph1173, %bb.d
  %.0794 = phi <8 x i64> [ %i.de, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0775 = phi <8 x i64> [ %i.dc, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0771 = phi <8 x i64> [ %i.da, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0767 = phi <8 x i64> [ %i.cy, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0763 = phi <8 x i64> [ %i.cw, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0752 = phi <8 x i64> [ %i.cu, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0748 = phi <8 x i64> [ %i.cs, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0744 = phi <8 x i64> [ %i.cq, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0738 = phi <8 x i64> [ %i.co, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0734 = phi <8 x i64> [ %i.cm, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0723 = phi <8 x i64> [ %i.ck, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0719 = phi <8 x i64> [ %i.ci, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0715 = phi <8 x i64> [ %i.cg, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0709 = phi <8 x i64> [ %i.ce, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %.0705 = phi <8 x i64> [ %i.cc, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  %storemerge1680 = phi <8 x i64> [ %i.dg, %bb.d ], [ zeroinitializer, %.lr.ph1173 ] ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader1076

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.dh = bitcast <8 x i64> %.0705 to <16 x i32>
  %i.di = bitcast <8 x i64> %.0709 to <16 x i32>
  %i.dj = bitcast <8 x i64> %.0715 to <16 x i32>
  %i.dk = bitcast <8 x i64> %.0719 to <16 x i32>
  %i.dl = bitcast <8 x i64> %.0723 to <16 x i32>
  %i.dm = bitcast <8 x i64> %.0734 to <16 x i32>
  %i.dn = bitcast <8 x i64> %.0738 to <16 x i32>
  %i.do = bitcast <8 x i64> %.0744 to <16 x i32>
  %i.dp = bitcast <8 x i64> %.0748 to <16 x i32>
  %i.dq = bitcast <8 x i64> %.0752 to <16 x i32>
  %i.dr = bitcast <8 x i64> %.0763 to <16 x i32>
  %i.ds = bitcast <8 x i64> %.0767 to <16 x i32>
  %i.dt = bitcast <8 x i64> %.0771 to <16 x i32>
  %i.du = bitcast <8 x i64> %.0775 to <16 x i32>
  %i.dv = bitcast <8 x i64> %.0794 to <16 x i32>
  %i.dw = bitcast <8 x i64> %storemerge1680 to <16 x i32>
  br label %.lr.ph

.preheader1076.loopexit:                          ; preds = %.lr.ph
  %i.dx = bitcast <16 x i32> %i.gl to <8 x i64>
  %i.dy = bitcast <16 x i32> %i.gk to <8 x i64>
  %i.dz = bitcast <16 x i32> %i.gj to <8 x i64>
  %i.ea = bitcast <16 x i32> %i.gi to <8 x i64>
  %i.eb = bitcast <16 x i32> %i.gg to <8 x i64>
  %i.ec = bitcast <16 x i32> %i.gf to <8 x i64>
  %i.ed = bitcast <16 x i32> %i.ge to <8 x i64>
  %i.ee = bitcast <16 x i32> %i.gd to <8 x i64>
  %i.ef = bitcast <16 x i32> %i.gb to <8 x i64>
  %i.eg = bitcast <16 x i32> %i.ga to <8 x i64>
  %i.eh = bitcast <16 x i32> %i.fz to <8 x i64>
  %i.ei = bitcast <16 x i32> %i.fy to <8 x i64>
  %i.ej = bitcast <16 x i32> %i.fw to <8 x i64>
  %i.ek = bitcast <16 x i32> %i.fu to <8 x i64>
  %i.el = bitcast <16 x i32> %i.fs to <8 x i64>
  %i.em = bitcast <16 x i32> %i.fq to <8 x i64>
  br label %.preheader1076

.preheader1076:                                   ; preds = %.preheader1076.loopexit, %bb.e
  %.0798.lcssa = phi <8 x i64> [ %storemerge1680, %bb.e ], [ %i.dx, %.preheader1076.loopexit ] ; 2 uses
  %.1795.lcssa = phi <8 x i64> [ %.0794, %bb.e ], [ %i.dy, %.preheader1076.loopexit ] ; 2 uses
  %.1776.lcssa = phi <8 x i64> [ %.0775, %bb.e ], [ %i.dz, %.preheader1076.loopexit ] ; 2 uses
  %.1772.lcssa = phi <8 x i64> [ %.0771, %bb.e ], [ %i.ea, %.preheader1076.loopexit ] ; 2 uses
  %.1768.lcssa = phi <8 x i64> [ %.0767, %bb.e ], [ %i.eb, %.preheader1076.loopexit ] ; 2 uses
  %.1764.lcssa = phi <8 x i64> [ %.0763, %bb.e ], [ %i.ec, %.preheader1076.loopexit ] ; 2 uses
  %.1753.lcssa = phi <8 x i64> [ %.0752, %bb.e ], [ %i.ed, %.preheader1076.loopexit ] ; 2 uses
  %.1749.lcssa = phi <8 x i64> [ %.0748, %bb.e ], [ %i.ee, %.preheader1076.loopexit ] ; 2 uses
  %.1745.lcssa = phi <8 x i64> [ %.0744, %bb.e ], [ %i.ef, %.preheader1076.loopexit ] ; 2 uses
  %.1739.lcssa = phi <8 x i64> [ %.0738, %bb.e ], [ %i.eg, %.preheader1076.loopexit ] ; 2 uses
  %.1735.lcssa = phi <8 x i64> [ %.0734, %bb.e ], [ %i.eh, %.preheader1076.loopexit ] ; 2 uses
  %.1724.lcssa = phi <8 x i64> [ %.0723, %bb.e ], [ %i.ei, %.preheader1076.loopexit ] ; 2 uses
  %.1720.lcssa = phi <8 x i64> [ %.0719, %bb.e ], [ %i.ej, %.preheader1076.loopexit ] ; 2 uses
  %.1716.lcssa = phi <8 x i64> [ %.0715, %bb.e ], [ %i.ek, %.preheader1076.loopexit ] ; 2 uses
  %.1710.lcssa = phi <8 x i64> [ %.0709, %bb.e ], [ %i.el, %.preheader1076.loopexit ] ; 2 uses
  %.1706.lcssa = phi <8 x i64> [ %.0705, %bb.e ], [ %i.em, %.preheader1076.loopexit ] ; 2 uses
  %.01431.lcssa = phi i32 [ 0, %bb.e ], [ %i.k, %.preheader1076.loopexit ] ; 2 uses
  %.01429.lcssa = phi ptr [ %i.bs, %bb.e ], [ %i.gm, %.preheader1076.loopexit ]
  %.11410.lcssa = phi ptr [ %.014091170, %bb.e ], [ %i.gn, %.preheader1076.loopexit ] ; 2 uses
  %i.en = icmp slt i32 %.01431.lcssa, %6
  br i1 %i.en, label %.lr.ph1151.preheader, label %._crit_edge

.lr.ph1151.preheader:                             ; preds = %.preheader1076
  %i.eo = bitcast <8 x i64> %.1706.lcssa to <16 x i32>
  %i.ep = bitcast <8 x i64> %.1710.lcssa to <16 x i32>
  %i.eq = bitcast <8 x i64> %.1716.lcssa to <16 x i32>
  %i.er = bitcast <8 x i64> %.1720.lcssa to <16 x i32>
  %i.es = bitcast <8 x i64> %.1724.lcssa to <16 x i32>
  %i.et = bitcast <8 x i64> %.1735.lcssa to <16 x i32>
  %i.eu = bitcast <8 x i64> %.1739.lcssa to <16 x i32>
  %i.ev = bitcast <8 x i64> %.1745.lcssa to <16 x i32>
  %i.ew = bitcast <8 x i64> %.1749.lcssa to <16 x i32>
end_hunk_2
begin_hunk_3_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a
  %.1214211313 = phi ptr [ %.141423.lcssa, %._crit_edge1309 ], [ %.91418.lcssa, %.preheader1077 ] ; 4 uses
  %.414281312 = phi i32 [ %i.afi, %._crit_edge1309 ], [ %.31427.lcssa, %.preheader1077 ]
  br i1 %i.g, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph1315
  %i.ace = load <16 x i32>, ptr %.61314, align 64, !tbaa !44
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph1315, %bb.r
  %i.acf = phi <16 x i32> [ %i.ace, %bb.r ], [ zeroinitializer, %.lr.ph1315 ] ; 3 uses
  br i1 %i.h, label %.lr.ph1300.preheader, label %.preheader1072

.lr.ph1300.preheader:                             ; preds = %bb.s
  br i1 %i.aa, label %.lr.ph1300.epil.preheader, label %.lr.ph1300

.preheader1072.loopexit.unr-lcssa:                ; preds = %.lr.ph1300
  br i1 %lcmp.mod3805.not, label %.preheader1072.loopexit, label %.lr.ph1300.epil.preheader

.lr.ph1300.epil.preheader:                        ; preds = %.preheader1072.loopexit.unr-lcssa, %.lr.ph1300.preheader
  %.1314221298.epil.init = phi ptr [ %.1214211313, %.lr.ph1300.preheader ], [ %i.aek, %.preheader1072.loopexit.unr-lcssa ]
  %.014521297.epil.init = phi ptr [ %i.bs, %.lr.ph1300.preheader ], [ %i.aej, %.preheader1072.loopexit.unr-lcssa ]
  %.epil.init = phi <16 x i32> [ %i.acf, %.lr.ph1300.preheader ], [ %i.aei, %.preheader1072.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3808)
  br label %.lr.ph1300.epil

.lr.ph1300.epil:                                  ; preds = %.lr.ph1300.epil, %.lr.ph1300.epil.preheader
  %.1314221298.epil = phi ptr [ %i.aco, %.lr.ph1300.epil ], [ %.1314221298.epil.init, %.lr.ph1300.epil.preheader ] ; 2 uses
  %.014521297.epil = phi ptr [ %i.acn, %.lr.ph1300.epil ], [ %.014521297.epil.init, %.lr.ph1300.epil.preheader ] ; 2 uses
  %i.acg = phi <16 x i32> [ %i.acm, %.lr.ph1300.epil ], [ %.epil.init, %.lr.ph1300.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph1300.epil ], [ 0, %.lr.ph1300.epil.preheader ]
  %i.ach = load <32 x i16>, ptr %.014521297.epil, align 1, !tbaa !44
  %i.aci = load i32, ptr %.1314221298.epil, align 4, !tbaa !9
  %i.acj = insertelement <16 x i32> poison, i32 %i.aci, i64 0
  %i.ack = shufflevector <16 x i32> %i.acj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.acl = bitcast <16 x i32> %i.ack to <32 x i16>
  %i.acm = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.acg, <32 x i16> %i.ach, <32 x i16> %i.acl) ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.014521297.epil, i64 64 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.1314221298.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter3804
  br i1 %epil.iter.cmp.not, label %.preheader1072.loopexit, label %.lr.ph1300.epil, !llvm.loop !636

.preheader1072.loopexit:                          ; preds = %.lr.ph1300.epil, %.preheader1072.loopexit.unr-lcssa
  %.lcssa3784 = phi <16 x i32> [ %i.aei, %.preheader1072.loopexit.unr-lcssa ], [ %i.acm, %.lr.ph1300.epil ]
  %.lcssa3783 = phi ptr [ %i.aej, %.preheader1072.loopexit.unr-lcssa ], [ %i.acn, %.lr.ph1300.epil ]
  %i.acp = getelementptr i8, ptr %.1214211313, i64 %i.r
  %scevgep2285 = getelementptr i8, ptr %i.acp, i64 4
  br label %.preheader1072

.preheader1072:                                   ; preds = %.preheader1072.loopexit, %bb.s
  %.lcssa1093 = phi <16 x i32> [ %i.acf, %bb.s ], [ %.lcssa3784, %.preheader1072.loopexit ] ; 3 uses
  %.01454.lcssa = phi i32 [ 0, %bb.s ], [ %i.k, %.preheader1072.loopexit ] ; 5 uses
  %.01452.lcssa = phi ptr [ %i.bs, %bb.s ], [ %.lcssa3783, %.preheader1072.loopexit ] ; 3 uses
  %.131422.lcssa = phi ptr [ %.1214211313, %bb.s ], [ %scevgep2285, %.preheader1072.loopexit ] ; 4 uses
  %i.acq = icmp slt i32 %.01454.lcssa, %6
  br i1 %i.acq, label %.lr.ph1308.preheader, label %._crit_edge1309

.lr.ph1308.preheader:                             ; preds = %.preheader1072
  %i.acr = sub i32 %6, %.01454.lcssa
  %.neg3994 = add i32 %.01454.lcssa, 1
  %xtraiter3811 = and i32 %i.acr, 1
  %lcmp.mod3812.not = icmp eq i32 %xtraiter3811, 0
  br i1 %lcmp.mod3812.not, label %.lr.ph1308.prol.loopexit, label %.lr.ph1308.prol

.lr.ph1308.prol:                                  ; preds = %.lr.ph1308.preheader
  %i.acs = load <16 x i16>, ptr %.01452.lcssa, align 32, !tbaa !44
  %i.act = sext <16 x i16> %i.acs to <16 x i32>
  %i.acu = load i16, ptr %.131422.lcssa, align 2, !tbaa !559
  %i.acv = sext i16 %i.acu to i32
  %i.acw = insertelement <16 x i32> poison, i32 %i.acv, i64 0
  %i.acx = shufflevector <16 x i32> %i.acw, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.acy = mul <16 x i32> %i.acx, %i.act
  %i.acz = add <16 x i32> %i.acy, %.lcssa1093     ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.01452.lcssa, i64 32
  %i.adb = getelementptr inbounds nuw i8, ptr %.131422.lcssa, i64 2 ; 2 uses
  %i.adc = add nuw nsw i32 %.01454.lcssa, 1
  br label %.lr.ph1308.prol.loopexit

.lr.ph1308.prol.loopexit:                         ; preds = %.lr.ph1308.prol, %.lr.ph1308.preheader
  %.lcssa3786.unr = phi <16 x i32> [ poison, %.lr.ph1308.preheader ], [ %i.acz, %.lr.ph1308.prol ]
  %.lcssa3785.unr = phi ptr [ poison, %.lr.ph1308.preheader ], [ %i.adb, %.lr.ph1308.prol ]
  %.1414231307.unr = phi ptr [ %.131422.lcssa, %.lr.ph1308.preheader ], [ %i.adb, %.lr.ph1308.prol ]
  %.114531306.unr = phi ptr [ %.01452.lcssa, %.lr.ph1308.preheader ], [ %i.ada, %.lr.ph1308.prol ]
  %.114551305.unr = phi i32 [ %.01454.lcssa, %.lr.ph1308.preheader ], [ %i.adc, %.lr.ph1308.prol ]
  %.unr3813 = phi <16 x i32> [ %.lcssa1093, %.lr.ph1308.preheader ], [ %i.acz, %.lr.ph1308.prol ]
  %i.add = icmp eq i32 %6, %.neg3994
  br i1 %i.add, label %._crit_edge1309, label %.lr.ph1308

.lr.ph1300:                                       ; preds = %.lr.ph1300.preheader, %.lr.ph1300
  %.1314221298 = phi ptr [ %i.aek, %.lr.ph1300 ], [ %.1214211313, %.lr.ph1300.preheader ] ; 5 uses
  %.014521297 = phi ptr [ %i.aej, %.lr.ph1300 ], [ %i.bs, %.lr.ph1300.preheader ] ; 5 uses
  %i.ade = phi <16 x i32> [ %i.aei, %.lr.ph1300 ], [ %i.acf, %.lr.ph1300.preheader ]
  %niter3810 = phi i32 [ %niter3810.next.3, %.lr.ph1300 ], [ 0, %.lr.ph1300.preheader ]
  %i.adf = load <32 x i16>, ptr %.014521297, align 1, !tbaa !44
  %i.adg = load i32, ptr %.1314221298, align 4, !tbaa !9
  %i.adh = insertelement <16 x i32> poison, i32 %i.adg, i64 0
  %i.adi = shufflevector <16 x i32> %i.adh, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.adj = bitcast <16 x i32> %i.adi to <32 x i16>
  %i.adk = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ade, <32 x i16> %i.adf, <32 x i16> %i.adj)
  %i.adl = getelementptr inbounds nuw i8, ptr %.014521297, i64 64
  %i.adm = getelementptr inbounds nuw i8, ptr %.1314221298, i64 4
  %i.adn = load <32 x i16>, ptr %i.adl, align 1, !tbaa !44
  %i.ado = load i32, ptr %i.adm, align 4, !tbaa !9
  %i.adp = insertelement <16 x i32> poison, i32 %i.ado, i64 0
  %i.adq = shufflevector <16 x i32> %i.adp, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.adr = bitcast <16 x i32> %i.adq to <32 x i16>
  %i.ads = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.adk, <32 x i16> %i.adn, <32 x i16> %i.adr)
  %i.adt = getelementptr inbounds nuw i8, ptr %.014521297, i64 128
  %i.adu = getelementptr inbounds nuw i8, ptr %.1314221298, i64 8
  %i.adv = load <32 x i16>, ptr %i.adt, align 1, !tbaa !44
  %i.adw = load i32, ptr %i.adu, align 4, !tbaa !9
  %i.adx = insertelement <16 x i32> poison, i32 %i.adw, i64 0
  %i.ady = shufflevector <16 x i32> %i.adx, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.adz = bitcast <16 x i32> %i.ady to <32 x i16>
  %i.aea = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ads, <32 x i16> %i.adv, <32 x i16> %i.adz)
  %i.aeb = getelementptr inbounds nuw i8, ptr %.014521297, i64 192
  %i.aec = getelementptr inbounds nuw i8, ptr %.1314221298, i64 12
  %i.aed = load <32 x i16>, ptr %i.aeb, align 1, !tbaa !44
  %i.aee = load i32, ptr %i.aec, align 4, !tbaa !9
  %i.aef = insertelement <16 x i32> poison, i32 %i.aee, i64 0
  %i.aeg = shufflevector <16 x i32> %i.aef, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aeh = bitcast <16 x i32> %i.aeg to <32 x i16>
  %i.aei = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aea, <32 x i16> %i.aed, <32 x i16> %i.aeh) ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %.014521297, i64 256 ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.1314221298, i64 16 ; 2 uses
  %niter3810.next.3 = add i32 %niter3810, 4       ; 2 uses
  %niter3810.ncmp.3.not = icmp eq i32 %niter3810.next.3, %unroll_iter3809
  br i1 %niter3810.ncmp.3.not, label %.preheader1072.loopexit.unr-lcssa, label %.lr.ph1300, !llvm.loop !637

.lr.ph1308:                                       ; preds = %.lr.ph1308.prol.loopexit, %.lr.ph1308
  %.1414231307 = phi ptr [ %i.aff, %.lr.ph1308 ], [ %.1414231307.unr, %.lr.ph1308.prol.loopexit ] ; 3 uses
  %.114531306 = phi ptr [ %i.afe, %.lr.ph1308 ], [ %.114531306.unr, %.lr.ph1308.prol.loopexit ] ; 3 uses
  %.114551305 = phi i32 [ %i.afg, %.lr.ph1308 ], [ %.114551305.unr, %.lr.ph1308.prol.loopexit ]
  %i.ael = phi <16 x i32> [ %i.afd, %.lr.ph1308 ], [ %.unr3813, %.lr.ph1308.prol.loopexit ]
  %i.aem = load <16 x i16>, ptr %.114531306, align 32, !tbaa !44
  %i.aen = sext <16 x i16> %i.aem to <16 x i32>
  %i.aeo = load i16, ptr %.1414231307, align 2, !tbaa !559
  %i.aep = sext i16 %i.aeo to i32
  %i.aeq = insertelement <16 x i32> poison, i32 %i.aep, i64 0
  %i.aer = shufflevector <16 x i32> %i.aeq, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aes = mul <16 x i32> %i.aer, %i.aen
  %i.aet = add <16 x i32> %i.aes, %i.ael
  %i.aeu = getelementptr inbounds nuw i8, ptr %.114531306, i64 32
  %i.aev = getelementptr inbounds nuw i8, ptr %.1414231307, i64 2
  %i.aew = load <16 x i16>, ptr %i.aeu, align 32, !tbaa !44
  %i.aex = sext <16 x i16> %i.aew to <16 x i32>
  %i.aey = load i16, ptr %i.aev, align 2, !tbaa !559
  %i.aez = sext i16 %i.aey to i32
  %i.afa = insertelement <16 x i32> poison, i32 %i.aez, i64 0
  %i.afb = shufflevector <16 x i32> %i.afa, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.afc = mul <16 x i32> %i.afb, %i.aex
  %i.afd = add <16 x i32> %i.afc, %i.aet          ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.114531306, i64 64
  %i.aff = getelementptr inbounds nuw i8, ptr %.1414231307, i64 4 ; 2 uses
  %i.afg = add nuw nsw i32 %.114551305, 2         ; 2 uses
  %exitcond2286.not.1 = icmp eq i32 %i.afg, %6
  br i1 %exitcond2286.not.1, label %._crit_edge1309, label %.lr.ph1308, !llvm.loop !638

._crit_edge1309:                                  ; preds = %.lr.ph1308.prol.loopexit, %.lr.ph1308, %.preheader1072
  %.lcssa1094 = phi <16 x i32> [ %.lcssa1093, %.preheader1072 ], [ %.lcssa3786.unr, %.lr.ph1308.prol.loopexit ], [ %i.afd, %.lr.ph1308 ]
  %.141423.lcssa = phi ptr [ %.131422.lcssa, %.preheader1072 ], [ %.lcssa3785.unr, %.lr.ph1308.prol.loopexit ], [ %i.aff, %.lr.ph1308 ]
  store <16 x i32> %.lcssa1094, ptr %.61314, align 64, !tbaa !44
  %i.afh = getelementptr inbounds nuw i8, ptr %.61314, i64 64 ; 2 uses
  %i.afi = add nuw nsw i32 %.414281312, 1         ; 2 uses
  %exitcond2287.not = icmp eq i32 %i.afi, %4
  br i1 %exitcond2287.not, label %._crit_edge1316, label %.lr.ph1315, !llvm.loop !639

._crit_edge1316:                                  ; preds = %._crit_edge1309, %.preheader1077
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader1077 ], [ %i.afh, %._crit_edge1309 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond2289.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond2289.not, label %bb.b, label %bb.c, !llvm.loop !640

.preheader1070:                                   ; preds = %.preheader1070.lr.ph, %bb.t
  %indvars.iv2308 = phi i64 [ %i.aw, %.preheader1070.lr.ph ], [ %indvars.iv.next2309, %bb.t ] ; 2 uses
  %.71506 = phi ptr [ %.01400.lcssa, %.preheader1070.lr.ph ], [ %.13.lcssa, %bb.t ]
  %i.afj = mul nsw i64 %indvars.iv2308, %i.ay
  br label %bb.u

.preheader1060.loopexit:                          ; preds = %bb.t
  %i.afk = trunc nuw nsw i64 %indvars.iv.next2309 to i32
  br label %.preheader1060

.preheader1060:                                   ; preds = %.preheader1060.loopexit, %.preheader1071
  %.11404.lcssa = phi i32 [ %.01403.lcssa, %.preheader1071 ], [ %i.afk, %.preheader1060.loopexit ] ; 3 uses
  %.7.lcssa = phi ptr [ %.01400.lcssa, %.preheader1071 ], [ %.13.lcssa, %.preheader1060.loopexit ] ; 2 uses
  %i.afl = or disjoint i32 %.11404.lcssa, 3
  %i.afm = icmp slt i32 %i.afl, %3
  br i1 %i.afm, label %.preheader1059.lr.ph, label %.preheader1049

.preheader1059.lr.ph:                             ; preds = %.preheader1060
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.afr = icmp sgt i32 %4, 15
  %i.afs = icmp eq i32 %5, 0                      ; 5 uses
  %i.aft = icmp sgt i32 %6, 1                     ; 5 uses
  %i.afu = add i32 %6, -2                         ; 2 uses
  %i.afv = and i32 %i.afu, -2
  %i.afw = add i32 %i.afv, 2                      ; 5 uses
  %i.afx = and i32 %4, -16
  %i.afy = lshr i32 %i.afu, 1
  %i.afz = zext nneg i32 %i.afy to i64            ; 4 uses
  %i.aga = shl nuw nsw i64 %i.afz, 5
  %i.agb = shl nuw nsw i64 %i.afz, 4
  %i.agc = shl nuw nsw i64 %i.afz, 3
  %i.agd = shl nuw nsw i64 %i.afz, 2
  %i.age = zext nneg i32 %.11404.lcssa to i64
  %i.agf = sext i32 %3 to i64
  %i.agg = sext i32 %6 to i64
  %wide.trip.count2324 = zext nneg i32 %2 to i64
  %invariant.op2666 = add nsw i64 %i.agf, -3
  %i.agh = add i32 %6, -2                         ; 6 uses
  %i.agi = lshr i32 %i.agh, 1                     ; 5 uses
  %i.agj = add nuw i32 %i.agi, 1                  ; 10 uses
  %i.agk = icmp eq i32 %i.agi, 0
  %unroll_iter3870 = and i32 %i.agj, -2
  %i.agl = and i32 %i.agh, 2
  %lcmp.mod3862.not.not = icmp eq i32 %i.agl, 0
  %lcmp.mod3869 = trunc i32 %i.agj to i1
  %i.agm = icmp eq i32 %i.agi, 0
  %unroll_iter3881 = and i32 %i.agj, -2
  %i.agn = and i32 %i.agh, 2
  %lcmp.mod3874.not.not = icmp eq i32 %i.agn, 0
  %lcmp.mod3880 = trunc i32 %i.agj to i1
  %i.ago = icmp eq i32 %i.agi, 0
  %unroll_iter3892 = and i32 %i.agj, -2
  %i.agp = and i32 %i.agh, 2
  %lcmp.mod3885.not.not = icmp eq i32 %i.agp, 0
  %lcmp.mod3891 = trunc i32 %i.agj to i1
  %i.agq = icmp eq i32 %i.agi, 0
  %unroll_iter3901 = and i32 %i.agj, -2
  %i.agr = and i32 %i.agh, 2
  %lcmp.mod3896.not.not = icmp eq i32 %i.agr, 0
  %lcmp.mod3900 = trunc i32 %i.agj to i1
  %xtraiter3905 = and i32 %i.agj, 3               ; 3 uses
  %i.ags = icmp ult i32 %i.agh, 6
  %unroll_iter3913 = and i32 %i.agj, -4
  %lcmp.mod3909.not = icmp eq i32 %xtraiter3905, 0
  %lcmp.mod3912 = icmp ne i32 %xtraiter3905, 0
  br label %.preheader1059

bb.t:                                             ; preds = %._crit_edge1501
  %indvars.iv.next2309 = add nuw nsw i64 %indvars.iv2308, 8 ; 3 uses
  %i.agt = icmp slt i64 %indvars.iv.next2309, %invariant.op
  br i1 %i.agt, label %.preheader1070, label %.preheader1060.loopexit, !llvm.loop !641

bb.u:                                             ; preds = %.preheader1070, %._crit_edge1501
  %indvars.iv2303 = phi i64 [ 0, %.preheader1070 ], [ %indvars.iv.next2304, %._crit_edge1501 ] ; 3 uses
  %.81504 = phi ptr [ %.71506, %.preheader1070 ], [ %.13.lcssa, %._crit_edge1501 ] ; 2 uses
  %i.agu = load ptr, ptr %0, align 8, !tbaa !32
  %i.agv = load i32, ptr %i.af, align 4, !tbaa !10
  %i.agw = sext i32 %i.agv to i64
  %i.agx = mul nsw i64 %indvars.iv2303, %i.agw
  %i.agy = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.agz = mul i64 %i.agx, %i.agy
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.agz
  %i.ahb = getelementptr inbounds [2 x i8], ptr %i.aha, i64 %i.afj ; 14 uses
  %i.ahc = load ptr, ptr %1, align 8, !tbaa !32
  %i.ahd = load i32, ptr %i.ah, align 4, !tbaa !10
  %i.ahe = sext i32 %i.ahd to i64
  %i.ahf = mul nsw i64 %indvars.iv2303, %i.ahe
  %i.ahg = load i64, ptr %i.ai, align 8, !tbaa !36
  %i.ahh = mul i64 %i.ahf, %i.ahg
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahc, i64 %i.ahh ; 2 uses
  br i1 %i.aj, label %.lr.ph1374, label %.preheader1069

.preheader1069:                                   ; preds = %bb.y, %bb.u
  %.01482.lcssa = phi i32 [ 0, %bb.u ], [ %i.ap, %bb.y ] ; 3 uses
  %.01467.lcssa = phi ptr [ %i.ahi, %bb.u ], [ %.21469.lcssa, %bb.y ] ; 2 uses
  %.9.lcssa = phi ptr [ %.81504, %bb.u ], [ %i.ann, %bb.y ] ; 2 uses
  %i.ahj = or disjoint i32 %.01482.lcssa, 7
  %i.ahk = icmp slt i32 %i.ahj, %4
  br i1 %i.ahk, label %.lr.ph1411, label %.preheader1068

.lr.ph1374:                                       ; preds = %bb.u, %bb.y
  %.91372 = phi ptr [ %i.ann, %bb.y ], [ %.81504, %bb.u ] ; 17 uses
  %.014671371 = phi ptr [ %.21469.lcssa, %bb.y ], [ %i.ahi, %bb.u ] ; 2 uses
  %.014821370 = phi i32 [ %i.ano, %bb.y ], [ 0, %bb.u ]
  br i1 %i.ak, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph1374
  %i.ahl = load <8 x i64>, ptr %.91372, align 1, !tbaa !44
  %i.ahm = getelementptr inbounds nuw i8, ptr %.91372, i64 64
  %i.ahn = load <8 x i64>, ptr %i.ahm, align 1, !tbaa !44
  %i.aho = getelementptr inbounds nuw i8, ptr %.91372, i64 128
  %i.ahp = load <8 x i64>, ptr %i.aho, align 1, !tbaa !44
  %i.ahq = getelementptr inbounds nuw i8, ptr %.91372, i64 192
  %i.ahr = load <8 x i64>, ptr %i.ahq, align 1, !tbaa !44
  %i.ahs = getelementptr inbounds nuw i8, ptr %.91372, i64 256
  %i.aht = load <8 x i64>, ptr %i.ahs, align 1, !tbaa !44
  %i.ahu = getelementptr inbounds nuw i8, ptr %.91372, i64 320
  %i.ahv = load <8 x i64>, ptr %i.ahu, align 1, !tbaa !44
  %i.ahw = getelementptr inbounds nuw i8, ptr %.91372, i64 384
  %i.ahx = load <8 x i64>, ptr %i.ahw, align 1, !tbaa !44
  %i.ahy = getelementptr inbounds nuw i8, ptr %.91372, i64 448
  %i.ahz = load <8 x i64>, ptr %i.ahy, align 1, !tbaa !44
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph1374, %bb.v
  %.01026 = phi <8 x i64> [ %i.ahn, %bb.v ], [ zeroinitializer, %.lr.ph1374 ] ; 2 uses
  %.01022 = phi <8 x i64> [ %i.ahp, %bb.v ], [ zeroinitializer, %.lr.ph1374 ] ; 2 uses
  %.01018 = phi <8 x i64> [ %i.ahr, %bb.v ], [ zeroinitializer, %.lr.ph1374 ] ; 2 uses
  %.01014 = phi <8 x i64> [ %i.aht, %bb.v ], [ zeroinitializer, %.lr.ph1374 ] ; 2 uses
  %.01010 = phi <8 x i64> [ %i.ahv, %bb.v ], [ zeroinitializer, %.lr.ph1374 ] ; 2 uses
  %.01006 = phi <8 x i64> [ %i.ahx, %bb.v ], [ zeroinitializer, %.lr.ph1374 ] ; 2 uses
  %.0999 = phi <8 x i64> [ %i.ahl, %bb.v ], [ zeroinitializer, %.lr.ph1374 ] ; 2 uses
  %storemerge1671 = phi <8 x i64> [ %i.ahz, %bb.v ], [ zeroinitializer, %.lr.ph1374 ] ; 2 uses
  br i1 %i.al, label %.lr.ph1336.preheader, label %.preheader1065

.lr.ph1336.preheader:                             ; preds = %bb.w
  %i.aia = bitcast <8 x i64> %.0999 to <16 x i32>
  %i.aib = bitcast <8 x i64> %.01026 to <16 x i32>
  %i.aic = bitcast <8 x i64> %.01022 to <16 x i32>
  %i.aid = bitcast <8 x i64> %.01018 to <16 x i32>
  %i.aie = bitcast <8 x i64> %.01014 to <16 x i32>
  %i.aif = bitcast <8 x i64> %.01010 to <16 x i32>
  %i.aig = bitcast <8 x i64> %.01006 to <16 x i32>
  %i.aih = bitcast <8 x i64> %storemerge1671 to <16 x i32>
  br label %.lr.ph1336

.preheader1065.loopexit:                          ; preds = %.lr.ph1336
  %i.aii = bitcast <16 x i32> %i.aju to <8 x i64>
  %i.aij = bitcast <16 x i32> %i.ajt to <8 x i64>
  %i.aik = bitcast <16 x i32> %i.ajs to <8 x i64>
  %i.ail = bitcast <16 x i32> %i.ajr to <8 x i64>
  %i.aim = bitcast <16 x i32> %i.ajp to <8 x i64>
  %i.ain = bitcast <16 x i32> %i.ajn to <8 x i64>
  %i.aio = bitcast <16 x i32> %i.ajl to <8 x i64>
  %i.aip = bitcast <16 x i32> %i.ajj to <8 x i64>
  br label %.preheader1065

.preheader1065:                                   ; preds = %.preheader1065.loopexit, %bb.w
  %.11027.lcssa = phi <8 x i64> [ %.01026, %bb.w ], [ %i.aio, %.preheader1065.loopexit ] ; 2 uses
  %.11023.lcssa = phi <8 x i64> [ %.01022, %bb.w ], [ %i.ain, %.preheader1065.loopexit ] ; 2 uses
  %.11019.lcssa = phi <8 x i64> [ %.01018, %bb.w ], [ %i.aim, %.preheader1065.loopexit ] ; 2 uses
  %.11015.lcssa = phi <8 x i64> [ %.01014, %bb.w ], [ %i.ail, %.preheader1065.loopexit ] ; 2 uses
  %.11011.lcssa = phi <8 x i64> [ %.01010, %bb.w ], [ %i.aik, %.preheader1065.loopexit ] ; 2 uses
  %.11007.lcssa = phi <8 x i64> [ %.01006, %bb.w ], [ %i.aij, %.preheader1065.loopexit ] ; 2 uses
  %.01003.lcssa = phi <8 x i64> [ %storemerge1671, %bb.w ], [ %i.aii, %.preheader1065.loopexit ] ; 2 uses
  %.11000.lcssa = phi <8 x i64> [ %.0999, %bb.w ], [ %i.aip, %.preheader1065.loopexit ] ; 2 uses
  %.01512.lcssa = phi i32 [ 0, %bb.w ], [ %i.ao, %.preheader1065.loopexit ] ; 2 uses
  %.01487.lcssa = phi ptr [ %i.ahb, %bb.w ], [ %i.ajv, %.preheader1065.loopexit ]
  %.11468.lcssa = phi ptr [ %.014671371, %bb.w ], [ %i.ajw, %.preheader1065.loopexit ] ; 2 uses
  %i.aiq = icmp slt i32 %.01512.lcssa, %6
  br i1 %i.aiq, label %.lr.ph1359.preheader, label %._crit_edge1360

.lr.ph1359.preheader:                             ; preds = %.preheader1065
  %i.air = bitcast <8 x i64> %.11000.lcssa to <16 x i32>
  %i.ais = bitcast <8 x i64> %.11027.lcssa to <16 x i32>
  %i.ait = bitcast <8 x i64> %.11023.lcssa to <16 x i32>
  %i.aiu = bitcast <8 x i64> %.11019.lcssa to <16 x i32>
  %i.aiv = bitcast <8 x i64> %.11015.lcssa to <16 x i32>
  %i.aiw = bitcast <8 x i64> %.11011.lcssa to <16 x i32>
  %i.aix = bitcast <8 x i64> %.11007.lcssa to <16 x i32>
  %i.aiy = bitcast <8 x i64> %.01003.lcssa to <16 x i32>
  br label %.lr.ph1359

.lr.ph1336:                                       ; preds = %.lr.ph1336.preheader, %.lr.ph1336
  %.114681334 = phi ptr [ %i.ajw, %.lr.ph1336 ], [ %.014671371, %.lr.ph1336.preheader ] ; 2 uses
  %.014871333 = phi ptr [ %i.ajv, %.lr.ph1336 ], [ %i.ahb, %.lr.ph1336.preheader ] ; 2 uses
  %.015121332 = phi i32 [ %i.ajx, %.lr.ph1336 ], [ 0, %.lr.ph1336.preheader ]
  %.110001331 = phi <16 x i32> [ %i.ajj, %.lr.ph1336 ], [ %i.aia, %.lr.ph1336.preheader ]
  %.010031330 = phi <16 x i32> [ %i.aju, %.lr.ph1336 ], [ %i.aih, %.lr.ph1336.preheader ]
  %.110071329 = phi <16 x i32> [ %i.ajt, %.lr.ph1336 ], [ %i.aig, %.lr.ph1336.preheader ]
  %.110111328 = phi <16 x i32> [ %i.ajs, %.lr.ph1336 ], [ %i.aif, %.lr.ph1336.preheader ]
  %.110151327 = phi <16 x i32> [ %i.ajr, %.lr.ph1336 ], [ %i.aie, %.lr.ph1336.preheader ]
  %.110191326 = phi <16 x i32> [ %i.ajp, %.lr.ph1336 ], [ %i.aid, %.lr.ph1336.preheader ]
  %.110231325 = phi <16 x i32> [ %i.ajn, %.lr.ph1336 ], [ %i.aic, %.lr.ph1336.preheader ]
  %.110271324 = phi <16 x i32> [ %i.ajl, %.lr.ph1336 ], [ %i.aib, %.lr.ph1336.preheader ]
  %i.aiz = load <4 x i64>, ptr %.014871333, align 1, !tbaa !44
  %i.aja = load <8 x i64>, ptr %.114681334, align 1, !tbaa !44 ; 2 uses
  %i.ajb = shufflevector <4 x i64> %i.aiz, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ajc = shufflevector <8 x i64> %i.ajb, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.ajd = bitcast <8 x i64> %i.aja to <16 x i32> ; 3 uses
  %i.aje = shufflevector <16 x i32> %i.ajd, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.ajf = shufflevector <16 x i32> %i.ajd, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.ajg = shufflevector <16 x i32> %i.ajd, <16 x i32> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.ajh = bitcast <8 x i64> %i.ajb to <32 x i16> ; 4 uses
  %i.aji = bitcast <8 x i64> %i.aja to <32 x i16> ; 2 uses
  %i.ajj = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.110001331, <32 x i16> %i.ajh, <32 x i16> %i.aji) ; 2 uses
  %i.ajk = bitcast <16 x i32> %i.aje to <32 x i16> ; 2 uses
  %i.ajl = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.110271324, <32 x i16> %i.ajh, <32 x i16> %i.ajk) ; 2 uses
  %i.ajm = bitcast <16 x i32> %i.ajf to <32 x i16> ; 2 uses
  %i.ajn = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.110231325, <32 x i16> %i.ajh, <32 x i16> %i.ajm) ; 2 uses
  %i.ajo = bitcast <16 x i32> %i.ajg to <32 x i16> ; 2 uses
  %i.ajp = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.110191326, <32 x i16> %i.ajh, <32 x i16> %i.ajo) ; 2 uses
  %i.ajq = bitcast <8 x i64> %i.ajc to <32 x i16> ; 4 uses
  %i.ajr = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.110151327, <32 x i16> %i.ajq, <32 x i16> %i.aji) ; 2 uses
  %i.ajs = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.110111328, <32 x i16> %i.ajq, <32 x i16> %i.ajk) ; 2 uses
  %i.ajt = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.110071329, <32 x i16> %i.ajq, <32 x i16> %i.ajm) ; 2 uses
  %i.aju = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.010031330, <32 x i16> %i.ajq, <32 x i16> %i.ajo) ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.014871333, i64 32 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.114681334, i64 64 ; 2 uses
  %i.ajx = add nuw nsw i32 %.015121332, 2         ; 2 uses
  %i.ajy = or disjoint i32 %i.ajx, 1
  %i.ajz = icmp slt i32 %i.ajy, %6
  br i1 %i.ajz, label %.lr.ph1336, label %.preheader1065.loopexit, !llvm.loop !642

.lr.ph1359:                                       ; preds = %.lr.ph1359.preheader, %.lr.ph1359
end_hunk_3
begin_hunk_4_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a
._crit_edge1470:                                  ; preds = %._crit_edge1470.loopexit, %.preheader1062
  %.2884.lcssa = phi <4 x i64> [ %.1883.lcssa, %.preheader1062 ], [ %i.baw, %._crit_edge1470.loopexit ] ; 2 uses
  %.1880.lcssa = phi <4 x i64> [ %.0879.lcssa, %.preheader1062 ], [ %i.bav, %._crit_edge1470.loopexit ] ; 2 uses
  %.111478.lcssa = phi ptr [ %.101477.lcssa, %.preheader1062 ], [ %.lcssa3697, %._crit_edge1470.loopexit ] ; 2 uses
  %i.bax = bitcast <4 x i64> %.2884.lcssa to <8 x i32> ; 2 uses
  %i.bay = bitcast <4 x i64> %.1880.lcssa to <8 x i32> ; 2 uses
  %i.baz = shufflevector <8 x i32> %i.bax, <8 x i32> %i.bay, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  %i.bba = bitcast <8 x i32> %i.baz to <4 x i64>
  %i.bbb = shufflevector <8 x i32> %i.bay, <8 x i32> %i.bax, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  %i.bbc = bitcast <8 x i32> %i.bbb to <4 x i64>
  %.3885 = select i1 %7, <4 x i64> %i.bba, <4 x i64> %.2884.lcssa
  %.2881 = select i1 %7, <4 x i64> %i.bbc, <4 x i64> %.1880.lcssa
  store <4 x i64> %.3885, ptr %.121476, align 32, !tbaa !44
  %i.bbd = getelementptr inbounds nuw i8, ptr %.121476, i64 32
  store <4 x i64> %.2881, ptr %i.bbd, align 32, !tbaa !44
  %i.bbe = getelementptr inbounds nuw i8, ptr %.121476, i64 64 ; 2 uses
  %i.bbf = add nuw nsw i32 %.314851474, 2         ; 3 uses
  %i.bbg = or disjoint i32 %i.bbf, 1
  %i.bbh = icmp slt i32 %i.bbg, %4
  br i1 %i.bbh, label %.lr.ph1477, label %.preheader1066, !llvm.loop !653

.lr.ph1500:                                       ; preds = %.preheader1066, %._crit_edge1494
  %.131499 = phi ptr [ %i.bdw, %._crit_edge1494 ], [ %.12.lcssa, %.preheader1066 ] ; 3 uses
  %.1214791498 = phi ptr [ %.141481.lcssa, %._crit_edge1494 ], [ %.91476.lcssa, %.preheader1066 ] ; 4 uses
  %.414861497 = phi i32 [ %i.bdx, %._crit_edge1494 ], [ %.31485.lcssa, %.preheader1066 ]
  br i1 %i.ak, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph1500
  %i.bbi = load <8 x i32>, ptr %.131499, align 32, !tbaa !44
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph1500, %bb.aj
  %i.bbj = phi <8 x i32> [ %i.bbi, %bb.aj ], [ zeroinitializer, %.lr.ph1500 ] ; 3 uses
  br i1 %i.al, label %.lr.ph1485.preheader, label %.preheader1061

.lr.ph1485.preheader:                             ; preds = %bb.ak
  br i1 %i.bh, label %.lr.ph1485.epil.preheader, label %.lr.ph1485

.preheader1061.loopexit.unr-lcssa:                ; preds = %.lr.ph1485
  br i1 %lcmp.mod3851.not.not, label %.lr.ph1485.epil.preheader, label %.preheader1061.loopexit

.lr.ph1485.epil.preheader:                        ; preds = %.preheader1061.loopexit.unr-lcssa, %.lr.ph1485.preheader
  %.1314801483.epil.init = phi ptr [ %.1214791498, %.lr.ph1485.preheader ], [ %i.bcz, %.preheader1061.loopexit.unr-lcssa ]
  %.015531482.epil.init = phi ptr [ %i.ahb, %.lr.ph1485.preheader ], [ %i.bcy, %.preheader1061.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init3850 = phi <8 x i32> [ %i.bbj, %.lr.ph1485.preheader ], [ %i.bcx, %.preheader1061.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3854)
  %i.bbk = load <16 x i16>, ptr %.015531482.epil.init, align 1, !tbaa !44
  %i.bbl = load float, ptr %.1314801483.epil.init, align 1, !tbaa !44
  %i.bbm = insertelement <8 x float> poison, float %i.bbl, i64 0
  %i.bbn = shufflevector <8 x float> %i.bbm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bbo = bitcast <8 x float> %i.bbn to <16 x i16>
  %i.bbp = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bbk, <16 x i16> %i.bbo)
  %i.bbq = add <8 x i32> %i.bbp, %.epil.init3850
  %i.bbr = getelementptr inbounds nuw i8, ptr %.015531482.epil.init, i64 32
  br label %.preheader1061.loopexit

.preheader1061.loopexit:                          ; preds = %.preheader1061.loopexit.unr-lcssa, %.lr.ph1485.epil.preheader
  %.lcssa3703 = phi <8 x i32> [ %i.bcx, %.preheader1061.loopexit.unr-lcssa ], [ %i.bbq, %.lr.ph1485.epil.preheader ]
  %.lcssa3702 = phi ptr [ %i.bcy, %.preheader1061.loopexit.unr-lcssa ], [ %i.bbr, %.lr.ph1485.epil.preheader ]
  %i.bbs = getelementptr i8, ptr %.1214791498, i64 %i.av
  %scevgep2300 = getelementptr i8, ptr %i.bbs, i64 4
  br label %.preheader1061

.preheader1061:                                   ; preds = %.preheader1061.loopexit, %bb.ak
  %.01558.lcssa = phi i32 [ 0, %bb.ak ], [ %i.ao, %.preheader1061.loopexit ] ; 5 uses
  %.lcssa1091 = phi <8 x i32> [ %i.bbj, %bb.ak ], [ %.lcssa3703, %.preheader1061.loopexit ] ; 3 uses
  %.01553.lcssa = phi ptr [ %i.ahb, %bb.ak ], [ %.lcssa3702, %.preheader1061.loopexit ] ; 3 uses
  %.131480.lcssa = phi ptr [ %.1214791498, %bb.ak ], [ %scevgep2300, %.preheader1061.loopexit ] ; 4 uses
  %i.bbt = icmp slt i32 %.01558.lcssa, %6
  br i1 %i.bbt, label %.lr.ph1493.preheader, label %._crit_edge1494

.lr.ph1493.preheader:                             ; preds = %.preheader1061
  %i.bbu = sub i32 %6, %.01558.lcssa
  %.neg3996 = add i32 %.01558.lcssa, 1
  %xtraiter3857 = and i32 %i.bbu, 1
  %lcmp.mod3858.not = icmp eq i32 %xtraiter3857, 0
  br i1 %lcmp.mod3858.not, label %.lr.ph1493.prol.loopexit, label %.lr.ph1493.prol

.lr.ph1493.prol:                                  ; preds = %.lr.ph1493.preheader
  %i.bbv = load <8 x i16>, ptr %.01553.lcssa, align 16, !tbaa !44
  %i.bbw = sext <8 x i16> %i.bbv to <8 x i32>
  %i.bbx = load i16, ptr %.131480.lcssa, align 2, !tbaa !559
  %i.bby = sext i16 %i.bbx to i32
  %i.bbz = insertelement <8 x i32> poison, i32 %i.bby, i64 0
  %i.bca = shufflevector <8 x i32> %i.bbz, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bcb = mul <8 x i32> %i.bca, %i.bbw
  %i.bcc = add <8 x i32> %i.bcb, %.lcssa1091      ; 2 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %.01553.lcssa, i64 16
  %i.bce = getelementptr inbounds nuw i8, ptr %.131480.lcssa, i64 2 ; 2 uses
  %i.bcf = add nuw nsw i32 %.01558.lcssa, 1
  br label %.lr.ph1493.prol.loopexit

.lr.ph1493.prol.loopexit:                         ; preds = %.lr.ph1493.prol, %.lr.ph1493.preheader
  %.lcssa3705.unr = phi <8 x i32> [ poison, %.lr.ph1493.preheader ], [ %i.bcc, %.lr.ph1493.prol ]
  %.lcssa3704.unr = phi ptr [ poison, %.lr.ph1493.preheader ], [ %i.bce, %.lr.ph1493.prol ]
  %.1414811492.unr = phi ptr [ %.131480.lcssa, %.lr.ph1493.preheader ], [ %i.bce, %.lr.ph1493.prol ]
  %.115541491.unr = phi ptr [ %.01553.lcssa, %.lr.ph1493.preheader ], [ %i.bcd, %.lr.ph1493.prol ]
  %.unr3859 = phi <8 x i32> [ %.lcssa1091, %.lr.ph1493.preheader ], [ %i.bcc, %.lr.ph1493.prol ]
  %.115591490.unr = phi i32 [ %.01558.lcssa, %.lr.ph1493.preheader ], [ %i.bcf, %.lr.ph1493.prol ]
  %i.bcg = icmp eq i32 %6, %.neg3996
  br i1 %i.bcg, label %._crit_edge1494, label %.lr.ph1493

.lr.ph1485:                                       ; preds = %.lr.ph1485.preheader, %.lr.ph1485
  %.1314801483 = phi ptr [ %i.bcz, %.lr.ph1485 ], [ %.1214791498, %.lr.ph1485.preheader ] ; 3 uses
  %.015531482 = phi ptr [ %i.bcy, %.lr.ph1485 ], [ %i.ahb, %.lr.ph1485.preheader ] ; 3 uses
  %i.bch = phi <8 x i32> [ %i.bcx, %.lr.ph1485 ], [ %i.bbj, %.lr.ph1485.preheader ]
  %niter3856 = phi i32 [ %niter3856.next.1, %.lr.ph1485 ], [ 0, %.lr.ph1485.preheader ]
  %i.bci = load <16 x i16>, ptr %.015531482, align 1, !tbaa !44
  %i.bcj = load float, ptr %.1314801483, align 1, !tbaa !44
  %i.bck = insertelement <8 x float> poison, float %i.bcj, i64 0
  %i.bcl = shufflevector <8 x float> %i.bck, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcm = bitcast <8 x float> %i.bcl to <16 x i16>
  %i.bcn = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bci, <16 x i16> %i.bcm)
  %i.bco = add <8 x i32> %i.bcn, %i.bch
  %i.bcp = getelementptr inbounds nuw i8, ptr %.015531482, i64 32
  %i.bcq = getelementptr inbounds nuw i8, ptr %.1314801483, i64 4
  %i.bcr = load <16 x i16>, ptr %i.bcp, align 1, !tbaa !44
  %i.bcs = load float, ptr %i.bcq, align 1, !tbaa !44
  %i.bct = insertelement <8 x float> poison, float %i.bcs, i64 0
  %i.bcu = shufflevector <8 x float> %i.bct, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcv = bitcast <8 x float> %i.bcu to <16 x i16>
  %i.bcw = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bcr, <16 x i16> %i.bcv)
  %i.bcx = add <8 x i32> %i.bcw, %i.bco           ; 3 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %.015531482, i64 64 ; 3 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %.1314801483, i64 8 ; 2 uses
  %niter3856.next.1 = add nuw nsw i32 %niter3856, 2 ; 2 uses
  %niter3856.ncmp.1.not = icmp eq i32 %niter3856.next.1, %unroll_iter3855
  br i1 %niter3856.ncmp.1.not, label %.preheader1061.loopexit.unr-lcssa, label %.lr.ph1485, !llvm.loop !654

.lr.ph1493:                                       ; preds = %.lr.ph1493.prol.loopexit, %.lr.ph1493
  %.1414811492 = phi ptr [ %i.bdu, %.lr.ph1493 ], [ %.1414811492.unr, %.lr.ph1493.prol.loopexit ] ; 3 uses
  %.115541491 = phi ptr [ %i.bdt, %.lr.ph1493 ], [ %.115541491.unr, %.lr.ph1493.prol.loopexit ] ; 3 uses
  %i.bda = phi <8 x i32> [ %i.bds, %.lr.ph1493 ], [ %.unr3859, %.lr.ph1493.prol.loopexit ]
  %.115591490 = phi i32 [ %i.bdv, %.lr.ph1493 ], [ %.115591490.unr, %.lr.ph1493.prol.loopexit ]
  %i.bdb = load <8 x i16>, ptr %.115541491, align 16, !tbaa !44
  %i.bdc = sext <8 x i16> %i.bdb to <8 x i32>
  %i.bdd = load i16, ptr %.1414811492, align 2, !tbaa !559
  %i.bde = sext i16 %i.bdd to i32
  %i.bdf = insertelement <8 x i32> poison, i32 %i.bde, i64 0
  %i.bdg = shufflevector <8 x i32> %i.bdf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bdh = mul <8 x i32> %i.bdg, %i.bdc
  %i.bdi = add <8 x i32> %i.bdh, %i.bda
  %i.bdj = getelementptr inbounds nuw i8, ptr %.115541491, i64 16
  %i.bdk = getelementptr inbounds nuw i8, ptr %.1414811492, i64 2
  %i.bdl = load <8 x i16>, ptr %i.bdj, align 16, !tbaa !44
  %i.bdm = sext <8 x i16> %i.bdl to <8 x i32>
  %i.bdn = load i16, ptr %i.bdk, align 2, !tbaa !559
  %i.bdo = sext i16 %i.bdn to i32
  %i.bdp = insertelement <8 x i32> poison, i32 %i.bdo, i64 0
  %i.bdq = shufflevector <8 x i32> %i.bdp, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bdr = mul <8 x i32> %i.bdq, %i.bdm
  %i.bds = add <8 x i32> %i.bdr, %i.bdi           ; 2 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %.115541491, i64 32
  %i.bdu = getelementptr inbounds nuw i8, ptr %.1414811492, i64 4 ; 2 uses
  %i.bdv = add nuw nsw i32 %.115591490, 2         ; 2 uses
  %exitcond2301.not.1 = icmp eq i32 %i.bdv, %6
  br i1 %exitcond2301.not.1, label %._crit_edge1494, label %.lr.ph1493, !llvm.loop !655

._crit_edge1494:                                  ; preds = %.lr.ph1493.prol.loopexit, %.lr.ph1493, %.preheader1061
  %.lcssa1092 = phi <8 x i32> [ %.lcssa1091, %.preheader1061 ], [ %.lcssa3705.unr, %.lr.ph1493.prol.loopexit ], [ %i.bds, %.lr.ph1493 ]
  %.141481.lcssa = phi ptr [ %.131480.lcssa, %.preheader1061 ], [ %.lcssa3704.unr, %.lr.ph1493.prol.loopexit ], [ %i.bdu, %.lr.ph1493 ]
  store <8 x i32> %.lcssa1092, ptr %.131499, align 32, !tbaa !44
  %i.bdw = getelementptr inbounds nuw i8, ptr %.131499, i64 32 ; 2 uses
  %i.bdx = add nuw nsw i32 %.414861497, 1         ; 2 uses
  %exitcond2302.not = icmp eq i32 %i.bdx, %4
  br i1 %exitcond2302.not, label %._crit_edge1501, label %.lr.ph1500, !llvm.loop !656

._crit_edge1501:                                  ; preds = %._crit_edge1494, %.preheader1066
  %.13.lcssa = phi ptr [ %.12.lcssa, %.preheader1066 ], [ %i.bdw, %._crit_edge1494 ] ; 3 uses
  %indvars.iv.next2304 = add nuw nsw i64 %indvars.iv2303, 1 ; 2 uses
  %exitcond2307.not = icmp eq i64 %indvars.iv.next2304, %wide.trip.count2306
  br i1 %exitcond2307.not, label %bb.t, label %bb.u, !llvm.loop !657

.preheader1059:                                   ; preds = %.preheader1059.lr.ph, %bb.al
  %indvars.iv2326 = phi i64 [ %i.age, %.preheader1059.lr.ph ], [ %indvars.iv.next2327, %bb.al ] ; 2 uses
  %.141675 = phi ptr [ %.7.lcssa, %.preheader1059.lr.ph ], [ %.20.lcssa, %bb.al ]
  %i.bdy = mul nsw i64 %indvars.iv2326, %i.agg
  br label %bb.am

.preheader1049.loopexit:                          ; preds = %bb.al
  %i.bdz = trunc nsw i64 %indvars.iv.next2327 to i32
  br label %.preheader1049

.preheader1049:                                   ; preds = %.preheader1049.loopexit, %.preheader1060
  %.21405.lcssa = phi i32 [ %.11404.lcssa, %.preheader1060 ], [ %i.bdz, %.preheader1049.loopexit ] ; 3 uses
  %.14.lcssa = phi ptr [ %.7.lcssa, %.preheader1060 ], [ %.20.lcssa, %.preheader1049.loopexit ] ; 2 uses
  %i.bea = or disjoint i32 %.21405.lcssa, 1
  %i.beb = icmp slt i32 %i.bea, %3
  br i1 %i.beb, label %.preheader1048.lr.ph, label %.preheader1038

.preheader1048.lr.ph:                             ; preds = %.preheader1049
  %i.bec = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bed = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bee = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bef = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.beg = icmp sgt i32 %4, 15
  %i.beh = icmp eq i32 %5, 0                      ; 5 uses
  %i.bei = icmp sgt i32 %6, 1                     ; 5 uses
  %i.bej = add i32 %6, -2                         ; 6 uses
  %i.bek = and i32 %i.bej, -2
  %i.bel = add i32 %i.bek, 2                      ; 5 uses
  %i.bem = and i32 %4, -16
  %i.ben = lshr i32 %i.bej, 1
  %i.beo = zext nneg i32 %i.ben to i64            ; 5 uses
  %i.bep = shl nuw nsw i64 %i.beo, 5
  %i.beq = shl nuw nsw i64 %i.beo, 4
  %i.ber = shl nuw nsw i64 %i.beo, 3
  %i.bes = shl nuw nsw i64 %i.beo, 2
  %i.bet = sext i32 %.21405.lcssa to i64
  %i.beu = sext i32 %3 to i64
  %i.bev = sext i32 %6 to i64
  %wide.trip.count2342 = zext nneg i32 %2 to i64
  %invariant.op2667 = add nsw i64 %i.beu, -1
  %i.bew = add nuw nsw i64 %i.beo, 1              ; 10 uses
  %i.bex = add i32 %6, -2                         ; 4 uses
  %i.bey = lshr i32 %i.bex, 1                     ; 4 uses
  %i.bez = add nuw i32 %i.bey, 1                  ; 6 uses
  %i.bfa = icmp eq i32 %i.bey, 0
  %unroll_iter3926 = and i32 %i.bez, -2
  %i.bfb = and i32 %i.bex, 2
  %lcmp.mod3920.not.not = icmp eq i32 %i.bfb, 0
  %lcmp.mod3925 = trunc i32 %i.bez to i1
  %i.bfc = icmp eq i32 %i.bey, 0
  %unroll_iter3937 = and i32 %i.bez, -2
  %i.bfd = and i32 %i.bex, 2
  %lcmp.mod3932.not.not = icmp eq i32 %i.bfd, 0
  %lcmp.mod3936 = trunc i32 %i.bez to i1
  %i.bfe = icmp eq i32 %i.bey, 0
  %unroll_iter3948 = and i32 %i.bez, -2
  %i.bff = and i32 %i.bex, 2
  %lcmp.mod3943.not.not = icmp eq i32 %i.bff, 0
  %lcmp.mod3947 = trunc i32 %i.bez to i1
  %min.iters.check3150 = icmp ult i32 %i.bej, 14
  %min.iters.check3152 = icmp ult i32 %i.bej, 62
  %i.bfg = and i64 %i.bew, 24
  %n.vec3154 = and i64 %i.bew, 4294967264         ; 5 uses
  %i.bfh = trunc nuw i64 %n.vec3154 to i32
  %i.bfi = shl i32 %i.bfh, 1
  %i.bfj = shl nuw nsw i64 %n.vec3154, 3          ; 2 uses
  %cmp.n3195 = icmp eq i64 %i.bew, %n.vec3154
  %min.epilog.iters.check3206 = icmp eq i64 %i.bfg, 0
  %n.vec3208 = and i64 %i.bew, 4294967288         ; 4 uses
  %i.bfk = trunc nuw i64 %n.vec3208 to i32
  %i.bfl = shl i32 %i.bfk, 1
  %i.bfm = shl nuw nsw i64 %n.vec3208, 3          ; 2 uses
  %cmp.n3229 = icmp eq i64 %i.bew, %n.vec3208
  %min.iters.check2978 = icmp ult i32 %i.bej, 30
  %min.iters.check2980 = icmp ult i32 %i.bej, 126
  %i.bfn = and i64 %i.bew, 48
  %n.vec2982 = and i64 %i.bew, 4294967232         ; 6 uses
  %i.bfo = trunc nuw i64 %n.vec2982 to i32
  %i.bfp = shl i32 %i.bfo, 1
  %i.bfq = shl nuw nsw i64 %n.vec2982, 3
  %i.bfr = shl nuw nsw i64 %n.vec2982, 2
  %cmp.n3041 = icmp eq i64 %i.bew, %n.vec2982
  %min.epilog.iters.check3050 = icmp eq i64 %i.bfn, 0
  %n.vec3052 = and i64 %i.bew, 4294967280         ; 5 uses
  %i.bfs = trunc nuw i64 %n.vec3052 to i32
  %i.bft = shl i32 %i.bfs, 1
  %i.bfu = shl nuw nsw i64 %n.vec3052, 3
  %i.bfv = shl nuw nsw i64 %n.vec3052, 2
  %cmp.n3069 = icmp eq i64 %i.bew, %n.vec3052
  br label %.preheader1048

bb.al:                                            ; preds = %._crit_edge1670
  %indvars.iv.next2327 = add nuw nsw i64 %indvars.iv2326, 4 ; 3 uses
  %i.bfw = icmp slt i64 %indvars.iv.next2327, %invariant.op2666
  br i1 %i.bfw, label %.preheader1059, label %.preheader1049.loopexit, !llvm.loop !658

bb.am:                                            ; preds = %.preheader1059, %._crit_edge1670
  %indvars.iv2321 = phi i64 [ 0, %.preheader1059 ], [ %indvars.iv.next2322, %._crit_edge1670 ] ; 3 uses
  %.151673 = phi ptr [ %.141675, %.preheader1059 ], [ %.20.lcssa, %._crit_edge1670 ] ; 2 uses
  %i.bfx = load ptr, ptr %0, align 8, !tbaa !32
  %i.bfy = load i32, ptr %i.afn, align 4, !tbaa !10
  %i.bfz = sext i32 %i.bfy to i64
  %i.bga = mul nsw i64 %indvars.iv2321, %i.bfz
  %i.bgb = load i64, ptr %i.afo, align 8, !tbaa !36
  %i.bgc = mul i64 %i.bga, %i.bgb
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfx, i64 %i.bgc
  %i.bge = getelementptr inbounds [2 x i8], ptr %i.bgd, i64 %i.bdy ; 15 uses
  %i.bgf = load ptr, ptr %1, align 8, !tbaa !32
  %i.bgg = load i32, ptr %i.afp, align 4, !tbaa !10
  %i.bgh = sext i32 %i.bgg to i64
  %i.bgi = mul nsw i64 %indvars.iv2321, %i.bgh
  %i.bgj = load i64, ptr %i.afq, align 8, !tbaa !36
  %i.bgk = mul i64 %i.bgi, %i.bgj
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgf, i64 %i.bgk ; 2 uses
  br i1 %i.afr, label %.lr.ph1543, label %.preheader1058

.preheader1058:                                   ; preds = %bb.aq, %bb.am
  %.01576.lcssa = phi i32 [ 0, %bb.am ], [ %i.afx, %bb.aq ] ; 3 uses
  %.01561.lcssa = phi ptr [ %i.bgl, %bb.am ], [ %.21563.lcssa, %bb.aq ] ; 2 uses
  %.16.lcssa = phi ptr [ %.151673, %bb.am ], [ %i.ble, %bb.aq ] ; 2 uses
  %i.bgm = or disjoint i32 %.01576.lcssa, 7
  %i.bgn = icmp slt i32 %i.bgm, %4
  br i1 %i.bgn, label %.lr.ph1580, label %.preheader1057

.lr.ph1543:                                       ; preds = %bb.am, %bb.aq
  %.161541 = phi ptr [ %i.ble, %bb.aq ], [ %.151673, %bb.am ] ; 9 uses
  %.015611540 = phi ptr [ %.21563.lcssa, %bb.aq ], [ %i.bgl, %bb.am ] ; 3 uses
  %.015761539 = phi i32 [ %i.blf, %bb.aq ], [ 0, %bb.am ]
  br i1 %i.afs, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph1543
  %i.bgo = load <8 x i64>, ptr %.161541, align 1, !tbaa !44
  %i.bgp = getelementptr inbounds nuw i8, ptr %.161541, i64 64
  %i.bgq = load <8 x i64>, ptr %i.bgp, align 1, !tbaa !44
  %i.bgr = getelementptr inbounds nuw i8, ptr %.161541, i64 128
  %i.bgs = load <8 x i64>, ptr %i.bgr, align 1, !tbaa !44
  %i.bgt = getelementptr inbounds nuw i8, ptr %.161541, i64 192
  %i.bgu = load <8 x i64>, ptr %i.bgt, align 1, !tbaa !44
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph1543, %bb.an
  %.0863 = phi <8 x i64> [ %i.bgo, %bb.an ], [ zeroinitializer, %.lr.ph1543 ] ; 2 uses
  %.0859 = phi <8 x i64> [ %i.bgq, %bb.an ], [ zeroinitializer, %.lr.ph1543 ] ; 2 uses
  %.0855 = phi <8 x i64> [ %i.bgs, %bb.an ], [ zeroinitializer, %.lr.ph1543 ] ; 2 uses
  %storemerge1660 = phi <8 x i64> [ %i.bgu, %bb.an ], [ zeroinitializer, %.lr.ph1543 ] ; 2 uses
  br i1 %i.aft, label %.lr.ph1517.preheader, label %.preheader1054

.lr.ph1517.preheader:                             ; preds = %bb.ao
  %i.bgv = bitcast <8 x i64> %.0863 to <16 x i32> ; 2 uses
  %i.bgw = bitcast <8 x i64> %.0859 to <16 x i32> ; 2 uses
  %i.bgx = bitcast <8 x i64> %.0855 to <16 x i32> ; 2 uses
  %i.bgy = bitcast <8 x i64> %storemerge1660 to <16 x i32> ; 2 uses
  br i1 %i.agk, label %.lr.ph1517.epil.preheader, label %.lr.ph1517

.preheader1054.loopexit.unr-lcssa:                ; preds = %.lr.ph1517
  br i1 %lcmp.mod3862.not.not, label %.lr.ph1517.epil.preheader, label %.preheader1054.loopexit

.lr.ph1517.epil.preheader:                        ; preds = %.preheader1054.loopexit.unr-lcssa, %.lr.ph1517.preheader
  %.115621515.epil.init = phi ptr [ %.015611540, %.lr.ph1517.preheader ], [ %i.bjd, %.preheader1054.loopexit.unr-lcssa ] ; 2 uses
  %.015811514.epil.init = phi ptr [ %i.bge, %.lr.ph1517.preheader ], [ %i.bjc, %.preheader1054.loopexit.unr-lcssa ] ; 2 uses
  %.08521512.epil.init = phi <16 x i32> [ %i.bgy, %.lr.ph1517.preheader ], [ %i.bjb, %.preheader1054.loopexit.unr-lcssa ]
  %.18561511.epil.init = phi <16 x i32> [ %i.bgx, %.lr.ph1517.preheader ], [ %i.bja, %.preheader1054.loopexit.unr-lcssa ]
  %.18601510.epil.init = phi <16 x i32> [ %i.bgw, %.lr.ph1517.preheader ], [ %i.bix, %.preheader1054.loopexit.unr-lcssa ]
  %.18641509.epil.init = phi <16 x i32> [ %i.bgv, %.lr.ph1517.preheader ], [ %i.biv, %.preheader1054.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3869)
  %i.bgz = load <2 x i64>, ptr %.015811514.epil.init, align 1, !tbaa !44 ; 2 uses
  %i.bha = load <8 x i64>, ptr %.115621515.epil.init, align 1, !tbaa !44 ; 2 uses
  %i.bhb = bitcast <8 x i64> %i.bha to <16 x i32>
  %i.bhc = shufflevector <16 x i32> %i.bhb, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.bhd = bitcast <2 x i64> %i.bgz to <8 x i16>
  %i.bhe = shufflevector <8 x i16> %i.bhd, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bhf = bitcast <8 x i64> %i.bha to <32 x i16> ; 2 uses
  %i.bhg = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18641509.epil.init, <32 x i16> %i.bhe, <32 x i16> %i.bhf)
  %i.bhh = bitcast <16 x i32> %i.bhc to <32 x i16> ; 2 uses
  %i.bhi = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18601510.epil.init, <32 x i16> %i.bhe, <32 x i16> %i.bhh)
  %i.bhj = bitcast <2 x i64> %i.bgz to <8 x i16>
  %i.bhk = shufflevector <8 x i16> %i.bhj, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bhl = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.18561511.epil.init, <32 x i16> %i.bhk, <32 x i16> %i.bhf)
  %i.bhm = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.08521512.epil.init, <32 x i16> %i.bhk, <32 x i16> %i.bhh)
  %i.bhn = getelementptr inbounds nuw i8, ptr %.015811514.epil.init, i64 16
  %i.bho = getelementptr inbounds nuw i8, ptr %.115621515.epil.init, i64 64
  br label %.preheader1054.loopexit

.preheader1054.loopexit:                          ; preds = %.preheader1054.loopexit.unr-lcssa, %.lr.ph1517.epil.preheader
  %.lcssa3606 = phi <16 x i32> [ %i.biv, %.preheader1054.loopexit.unr-lcssa ], [ %i.bhg, %.lr.ph1517.epil.preheader ]
  %.lcssa3605 = phi <16 x i32> [ %i.bix, %.preheader1054.loopexit.unr-lcssa ], [ %i.bhi, %.lr.ph1517.epil.preheader ]
  %.lcssa3604 = phi <16 x i32> [ %i.bja, %.preheader1054.loopexit.unr-lcssa ], [ %i.bhl, %.lr.ph1517.epil.preheader ]
  %.lcssa3603 = phi <16 x i32> [ %i.bjb, %.preheader1054.loopexit.unr-lcssa ], [ %i.bhm, %.lr.ph1517.epil.preheader ]
  %.lcssa3602 = phi ptr [ %i.bjc, %.preheader1054.loopexit.unr-lcssa ], [ %i.bhn, %.lr.ph1517.epil.preheader ]
  %.lcssa3601 = phi ptr [ %i.bjd, %.preheader1054.loopexit.unr-lcssa ], [ %i.bho, %.lr.ph1517.epil.preheader ]
  %i.bhp = bitcast <16 x i32> %.lcssa3603 to <8 x i64>
  %i.bhq = bitcast <16 x i32> %.lcssa3604 to <8 x i64>
  %i.bhr = bitcast <16 x i32> %.lcssa3605 to <8 x i64>
  %i.bhs = bitcast <16 x i32> %.lcssa3606 to <8 x i64>
  br label %.preheader1054

.preheader1054:                                   ; preds = %.preheader1054.loopexit, %bb.ao
  %.1864.lcssa = phi <8 x i64> [ %.0863, %bb.ao ], [ %i.bhs, %.preheader1054.loopexit ] ; 2 uses
  %.1860.lcssa = phi <8 x i64> [ %.0859, %bb.ao ], [ %i.bhr, %.preheader1054.loopexit ] ; 2 uses
  %.1856.lcssa = phi <8 x i64> [ %.0855, %bb.ao ], [ %i.bhq, %.preheader1054.loopexit ] ; 2 uses
  %.0852.lcssa = phi <8 x i64> [ %storemerge1660, %bb.ao ], [ %i.bhp, %.preheader1054.loopexit ] ; 2 uses
  %.01583.lcssa = phi i32 [ 0, %bb.ao ], [ %i.afw, %.preheader1054.loopexit ] ; 2 uses
  %.01581.lcssa = phi ptr [ %i.bge, %bb.ao ], [ %.lcssa3602, %.preheader1054.loopexit ]
  %.11562.lcssa = phi ptr [ %.015611540, %bb.ao ], [ %.lcssa3601, %.preheader1054.loopexit ] ; 2 uses
  %i.bht = icmp slt i32 %.01583.lcssa, %6
  br i1 %i.bht, label %.lr.ph1532.preheader, label %._crit_edge1533

.lr.ph1532.preheader:                             ; preds = %.preheader1054
  %i.bhu = bitcast <8 x i64> %.1864.lcssa to <16 x i32>
  %i.bhv = bitcast <8 x i64> %.1860.lcssa to <16 x i32>
  %i.bhw = bitcast <8 x i64> %.1856.lcssa to <16 x i32>
  %i.bhx = bitcast <8 x i64> %.0852.lcssa to <16 x i32>
  br label %.lr.ph1532

.lr.ph1517:                                       ; preds = %.lr.ph1517.preheader, %.lr.ph1517
  %.115621515 = phi ptr [ %i.bjd, %.lr.ph1517 ], [ %.015611540, %.lr.ph1517.preheader ] ; 3 uses
  %.015811514 = phi ptr [ %i.bjc, %.lr.ph1517 ], [ %i.bge, %.lr.ph1517.preheader ] ; 3 uses
  %.08521512 = phi <16 x i32> [ %i.bjb, %.lr.ph1517 ], [ %i.bgy, %.lr.ph1517.preheader ]
  %.18561511 = phi <16 x i32> [ %i.bja, %.lr.ph1517 ], [ %i.bgx, %.lr.ph1517.preheader ]
  %.18601510 = phi <16 x i32> [ %i.bix, %.lr.ph1517 ], [ %i.bgw, %.lr.ph1517.preheader ]
  %.18641509 = phi <16 x i32> [ %i.biv, %.lr.ph1517 ], [ %i.bgv, %.lr.ph1517.preheader ]
  %niter3871 = phi i32 [ %niter3871.next.1, %.lr.ph1517 ], [ 0, %.lr.ph1517.preheader ]
  %i.bhy = load <2 x i64>, ptr %.015811514, align 1, !tbaa !44 ; 2 uses
  %i.bhz = load <8 x i64>, ptr %.115621515, align 1, !tbaa !44 ; 2 uses
  %i.bia = bitcast <8 x i64> %i.bhz to <16 x i32>
  %i.bib = shufflevector <16 x i32> %i.bia, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.bic = bitcast <2 x i64> %i.bhy to <8 x i16>
  %i.bid = shufflevector <8 x i16> %i.bic, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a
  %i.bzj = phi <4 x i32> [ %i.bzi, %bb.bb ], [ zeroinitializer, %.lr.ph1669 ] ; 3 uses
  br i1 %i.aft, label %.lr.ph1654.preheader, label %.preheader1050

.lr.ph1654.preheader:                             ; preds = %bb.bc
  br i1 %i.ags, label %.lr.ph1654.epil.preheader, label %.lr.ph1654

.preheader1050.loopexit.unr-lcssa:                ; preds = %.lr.ph1654
  br i1 %lcmp.mod3909.not, label %.preheader1050.loopexit, label %.lr.ph1654.epil.preheader

.lr.ph1654.epil.preheader:                        ; preds = %.preheader1050.loopexit.unr-lcssa, %.lr.ph1654.preheader
  %.1315741652.epil.init = phi ptr [ %.1215731667, %.lr.ph1654.preheader ], [ %i.cbr, %.preheader1050.loopexit.unr-lcssa ]
  %.016091651.epil.init = phi ptr [ %i.bge, %.lr.ph1654.preheader ], [ %i.cbq, %.preheader1050.loopexit.unr-lcssa ]
  %.epil.init3908 = phi <4 x i32> [ %i.bzj, %.lr.ph1654.preheader ], [ %i.cbp, %.preheader1050.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3912)
  br label %.lr.ph1654.epil

.lr.ph1654.epil:                                  ; preds = %.lr.ph1654.epil, %.lr.ph1654.epil.preheader
  %.1315741652.epil = phi ptr [ %i.bzs, %.lr.ph1654.epil ], [ %.1315741652.epil.init, %.lr.ph1654.epil.preheader ] ; 2 uses
  %.016091651.epil = phi ptr [ %i.bzr, %.lr.ph1654.epil ], [ %.016091651.epil.init, %.lr.ph1654.epil.preheader ] ; 2 uses
  %i.bzk = phi <4 x i32> [ %i.bzq, %.lr.ph1654.epil ], [ %.epil.init3908, %.lr.ph1654.epil.preheader ]
  %epil.iter3906 = phi i32 [ %epil.iter3906.next, %.lr.ph1654.epil ], [ 0, %.lr.ph1654.epil.preheader ]
  %i.bzl = load <8 x i16>, ptr %.016091651.epil, align 1, !tbaa !44
  %i.bzm = load float, ptr %.1315741652.epil, align 1, !tbaa !44
  %i.bzn = insertelement <4 x float> poison, float %i.bzm, i64 0
  %i.bzo = bitcast <4 x float> %i.bzn to <8 x i16>
  %i.bzp = shufflevector <8 x i16> %i.bzo, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bzq = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.bzk, <8 x i16> %i.bzl, <8 x i16> %i.bzp) ; 2 uses
  %i.bzr = getelementptr inbounds nuw i8, ptr %.016091651.epil, i64 16 ; 2 uses
  %i.bzs = getelementptr inbounds nuw i8, ptr %.1315741652.epil, i64 4
  %epil.iter3906.next = add i32 %epil.iter3906, 1 ; 2 uses
  %epil.iter3906.cmp.not = icmp eq i32 %epil.iter3906.next, %xtraiter3905
  br i1 %epil.iter3906.cmp.not, label %.preheader1050.loopexit, label %.lr.ph1654.epil, !llvm.loop !671

.preheader1050.loopexit:                          ; preds = %.lr.ph1654.epil, %.preheader1050.loopexit.unr-lcssa
  %.lcssa3646 = phi <4 x i32> [ %i.cbp, %.preheader1050.loopexit.unr-lcssa ], [ %i.bzq, %.lr.ph1654.epil ]
  %.lcssa3645 = phi ptr [ %i.cbq, %.preheader1050.loopexit.unr-lcssa ], [ %i.bzr, %.lr.ph1654.epil ]
  %i.bzt = getelementptr i8, ptr %.1215731667, i64 %i.agd
  %scevgep2318 = getelementptr i8, ptr %i.bzt, i64 4
  br label %.preheader1050

.preheader1050:                                   ; preds = %.preheader1050.loopexit, %bb.bc
  %.lcssa1089 = phi <4 x i32> [ %i.bzj, %bb.bc ], [ %.lcssa3646, %.preheader1050.loopexit ] ; 3 uses
  %.01611.lcssa = phi i32 [ 0, %bb.bc ], [ %i.afw, %.preheader1050.loopexit ] ; 5 uses
  %.01609.lcssa = phi ptr [ %i.bge, %bb.bc ], [ %.lcssa3645, %.preheader1050.loopexit ] ; 3 uses
  %.131574.lcssa = phi ptr [ %.1215731667, %bb.bc ], [ %scevgep2318, %.preheader1050.loopexit ] ; 4 uses
  %i.bzu = icmp slt i32 %.01611.lcssa, %6
  br i1 %i.bzu, label %.lr.ph1662.preheader, label %._crit_edge1663

.lr.ph1662.preheader:                             ; preds = %.preheader1050
  %i.bzv = sub i32 %6, %.01611.lcssa
  %.neg3998 = add i32 %.01611.lcssa, 1
  %xtraiter3915 = and i32 %i.bzv, 1
  %lcmp.mod3916.not = icmp eq i32 %xtraiter3915, 0
  br i1 %lcmp.mod3916.not, label %.lr.ph1662.prol.loopexit, label %.lr.ph1662.prol

.lr.ph1662.prol:                                  ; preds = %.lr.ph1662.preheader
  %i.bzw = load i64, ptr %.01609.lcssa, align 1, !tbaa !44
  %i.bzx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bzw, i64 0
  %i.bzy = load i16, ptr %.131574.lcssa, align 2, !tbaa !559
  %i.bzz = insertelement <8 x i16> poison, i16 %i.bzy, i64 0
  %i.caa = shufflevector <8 x i16> %i.bzz, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cab = bitcast <2 x i64> %i.bzx to <8 x i16>  ; 2 uses
  %i.cac = mul <8 x i16> %i.caa, %i.cab
  %i.cad = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cab, <8 x i16> %i.caa)
  %i.cae = shufflevector <8 x i16> %i.cac, <8 x i16> %i.cad, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.caf = bitcast <8 x i16> %i.cae to <4 x i32>
  %i.cag = add <4 x i32> %.lcssa1089, %i.caf      ; 2 uses
  %i.cah = getelementptr inbounds nuw i8, ptr %.01609.lcssa, i64 8
  %i.cai = getelementptr inbounds nuw i8, ptr %.131574.lcssa, i64 2 ; 2 uses
  %i.caj = add nuw nsw i32 %.01611.lcssa, 1
  br label %.lr.ph1662.prol.loopexit

.lr.ph1662.prol.loopexit:                         ; preds = %.lr.ph1662.prol, %.lr.ph1662.preheader
  %.lcssa3648.unr = phi <4 x i32> [ poison, %.lr.ph1662.preheader ], [ %i.cag, %.lr.ph1662.prol ]
  %.lcssa3647.unr = phi ptr [ poison, %.lr.ph1662.preheader ], [ %i.cai, %.lr.ph1662.prol ]
  %.1415751661.unr = phi ptr [ %.131574.lcssa, %.lr.ph1662.preheader ], [ %i.cai, %.lr.ph1662.prol ]
  %.116101660.unr = phi ptr [ %.01609.lcssa, %.lr.ph1662.preheader ], [ %i.cah, %.lr.ph1662.prol ]
  %.116121659.unr = phi i32 [ %.01611.lcssa, %.lr.ph1662.preheader ], [ %i.caj, %.lr.ph1662.prol ]
  %.unr3917 = phi <4 x i32> [ %.lcssa1089, %.lr.ph1662.preheader ], [ %i.cag, %.lr.ph1662.prol ]
  %i.cak = icmp eq i32 %6, %.neg3998
  br i1 %i.cak, label %._crit_edge1663, label %.lr.ph1662

.lr.ph1654:                                       ; preds = %.lr.ph1654.preheader, %.lr.ph1654
  %.1315741652 = phi ptr [ %i.cbr, %.lr.ph1654 ], [ %.1215731667, %.lr.ph1654.preheader ] ; 5 uses
  %.016091651 = phi ptr [ %i.cbq, %.lr.ph1654 ], [ %i.bge, %.lr.ph1654.preheader ] ; 5 uses
  %i.cal = phi <4 x i32> [ %i.cbp, %.lr.ph1654 ], [ %i.bzj, %.lr.ph1654.preheader ]
  %niter3914 = phi i32 [ %niter3914.next.3, %.lr.ph1654 ], [ 0, %.lr.ph1654.preheader ]
  %i.cam = load <8 x i16>, ptr %.016091651, align 1, !tbaa !44
  %i.can = load float, ptr %.1315741652, align 1, !tbaa !44
  %i.cao = insertelement <4 x float> poison, float %i.can, i64 0
  %i.cap = bitcast <4 x float> %i.cao to <8 x i16>
  %i.caq = shufflevector <8 x i16> %i.cap, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.car = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.cal, <8 x i16> %i.cam, <8 x i16> %i.caq)
  %i.cas = getelementptr inbounds nuw i8, ptr %.016091651, i64 16
  %i.cat = getelementptr inbounds nuw i8, ptr %.1315741652, i64 4
  %i.cau = load <8 x i16>, ptr %i.cas, align 1, !tbaa !44
  %i.cav = load float, ptr %i.cat, align 1, !tbaa !44
  %i.caw = insertelement <4 x float> poison, float %i.cav, i64 0
  %i.cax = bitcast <4 x float> %i.caw to <8 x i16>
  %i.cay = shufflevector <8 x i16> %i.cax, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.caz = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.car, <8 x i16> %i.cau, <8 x i16> %i.cay)
  %i.cba = getelementptr inbounds nuw i8, ptr %.016091651, i64 32
  %i.cbb = getelementptr inbounds nuw i8, ptr %.1315741652, i64 8
  %i.cbc = load <8 x i16>, ptr %i.cba, align 1, !tbaa !44
  %i.cbd = load float, ptr %i.cbb, align 1, !tbaa !44
  %i.cbe = insertelement <4 x float> poison, float %i.cbd, i64 0
  %i.cbf = bitcast <4 x float> %i.cbe to <8 x i16>
  %i.cbg = shufflevector <8 x i16> %i.cbf, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cbh = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.caz, <8 x i16> %i.cbc, <8 x i16> %i.cbg)
  %i.cbi = getelementptr inbounds nuw i8, ptr %.016091651, i64 48
  %i.cbj = getelementptr inbounds nuw i8, ptr %.1315741652, i64 12
  %i.cbk = load <8 x i16>, ptr %i.cbi, align 1, !tbaa !44
  %i.cbl = load float, ptr %i.cbj, align 1, !tbaa !44
  %i.cbm = insertelement <4 x float> poison, float %i.cbl, i64 0
  %i.cbn = bitcast <4 x float> %i.cbm to <8 x i16>
  %i.cbo = shufflevector <8 x i16> %i.cbn, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cbp = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.cbh, <8 x i16> %i.cbk, <8 x i16> %i.cbo) ; 3 uses
  %i.cbq = getelementptr inbounds nuw i8, ptr %.016091651, i64 64 ; 3 uses
  %i.cbr = getelementptr inbounds nuw i8, ptr %.1315741652, i64 16 ; 2 uses
  %niter3914.next.3 = add i32 %niter3914, 4       ; 2 uses
  %niter3914.ncmp.3.not = icmp eq i32 %niter3914.next.3, %unroll_iter3913
  br i1 %niter3914.ncmp.3.not, label %.preheader1050.loopexit.unr-lcssa, label %.lr.ph1654, !llvm.loop !672

.lr.ph1662:                                       ; preds = %.lr.ph1662.prol.loopexit, %.lr.ph1662
  %.1415751661 = phi ptr [ %i.ccs, %.lr.ph1662 ], [ %.1415751661.unr, %.lr.ph1662.prol.loopexit ] ; 3 uses
  %.116101660 = phi ptr [ %i.ccr, %.lr.ph1662 ], [ %.116101660.unr, %.lr.ph1662.prol.loopexit ] ; 3 uses
  %.116121659 = phi i32 [ %i.cct, %.lr.ph1662 ], [ %.116121659.unr, %.lr.ph1662.prol.loopexit ]
  %i.cbs = phi <4 x i32> [ %i.ccq, %.lr.ph1662 ], [ %.unr3917, %.lr.ph1662.prol.loopexit ]
  %i.cbt = load i64, ptr %.116101660, align 1, !tbaa !44
  %i.cbu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cbt, i64 0
  %i.cbv = load i16, ptr %.1415751661, align 2, !tbaa !559
  %i.cbw = insertelement <8 x i16> poison, i16 %i.cbv, i64 0
  %i.cbx = shufflevector <8 x i16> %i.cbw, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cby = bitcast <2 x i64> %i.cbu to <8 x i16>  ; 2 uses
  %i.cbz = mul <8 x i16> %i.cbx, %i.cby
  %i.cca = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cby, <8 x i16> %i.cbx)
  %i.ccb = shufflevector <8 x i16> %i.cbz, <8 x i16> %i.cca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ccc = bitcast <8 x i16> %i.ccb to <4 x i32>
  %i.ccd = add <4 x i32> %i.cbs, %i.ccc
  %i.cce = getelementptr inbounds nuw i8, ptr %.116101660, i64 8
  %i.ccf = getelementptr inbounds nuw i8, ptr %.1415751661, i64 2
  %i.ccg = load i64, ptr %i.cce, align 1, !tbaa !44
  %i.cch = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ccg, i64 0
  %i.cci = load i16, ptr %i.ccf, align 2, !tbaa !559
  %i.ccj = insertelement <8 x i16> poison, i16 %i.cci, i64 0
  %i.cck = shufflevector <8 x i16> %i.ccj, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ccl = bitcast <2 x i64> %i.cch to <8 x i16>  ; 2 uses
  %i.ccm = mul <8 x i16> %i.cck, %i.ccl
  %i.ccn = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ccl, <8 x i16> %i.cck)
  %i.cco = shufflevector <8 x i16> %i.ccm, <8 x i16> %i.ccn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ccp = bitcast <8 x i16> %i.cco to <4 x i32>
  %i.ccq = add <4 x i32> %i.ccd, %i.ccp           ; 2 uses
  %i.ccr = getelementptr inbounds nuw i8, ptr %.116101660, i64 16
  %i.ccs = getelementptr inbounds nuw i8, ptr %.1415751661, i64 4 ; 2 uses
  %i.cct = add nuw nsw i32 %.116121659, 2         ; 2 uses
  %exitcond2319.not.1 = icmp eq i32 %i.cct, %6
  br i1 %exitcond2319.not.1, label %._crit_edge1663, label %.lr.ph1662, !llvm.loop !673

._crit_edge1663:                                  ; preds = %.lr.ph1662.prol.loopexit, %.lr.ph1662, %.preheader1050
  %.lcssa1090 = phi <4 x i32> [ %.lcssa1089, %.preheader1050 ], [ %.lcssa3648.unr, %.lr.ph1662.prol.loopexit ], [ %i.ccq, %.lr.ph1662 ]
  %.141575.lcssa = phi ptr [ %.131574.lcssa, %.preheader1050 ], [ %.lcssa3647.unr, %.lr.ph1662.prol.loopexit ], [ %i.ccs, %.lr.ph1662 ]
  store <4 x i32> %.lcssa1090, ptr %.201668, align 16, !tbaa !44
  %i.ccu = getelementptr inbounds nuw i8, ptr %.201668, i64 16 ; 2 uses
  %i.ccv = add nuw nsw i32 %.415801666, 1         ; 2 uses
  %exitcond2320.not = icmp eq i32 %i.ccv, %4
  br i1 %exitcond2320.not, label %._crit_edge1670, label %.lr.ph1669, !llvm.loop !674

._crit_edge1670:                                  ; preds = %._crit_edge1663, %.preheader1055
  %.20.lcssa = phi ptr [ %.19.lcssa, %.preheader1055 ], [ %i.ccu, %._crit_edge1663 ] ; 3 uses
  %indvars.iv.next2322 = add nuw nsw i64 %indvars.iv2321, 1 ; 2 uses
  %exitcond2325.not = icmp eq i64 %indvars.iv.next2322, %wide.trip.count2324
  br i1 %exitcond2325.not, label %bb.al, label %bb.am, !llvm.loop !675

.preheader1048:                                   ; preds = %.preheader1048.lr.ph, %bb.bd
  %indvars.iv2344 = phi i64 [ %i.bet, %.preheader1048.lr.ph ], [ %indvars.iv.next2345, %bb.bd ] ; 2 uses
  %.211834 = phi ptr [ %.14.lcssa, %.preheader1048.lr.ph ], [ %.27.lcssa, %bb.bd ]
  %i.ccw = mul nsw i64 %indvars.iv2344, %i.bev
  br label %bb.be

.preheader1038.loopexit:                          ; preds = %bb.bd
  %i.ccx = trunc nsw i64 %indvars.iv.next2345 to i32
  br label %.preheader1038

.preheader1038:                                   ; preds = %.preheader1038.loopexit, %.preheader1049
  %.31406.lcssa = phi i32 [ %.21405.lcssa, %.preheader1049 ], [ %i.ccx, %.preheader1038.loopexit ] ; 2 uses
  %.21.lcssa = phi ptr [ %.14.lcssa, %.preheader1049 ], [ %.27.lcssa, %.preheader1038.loopexit ]
  %i.ccy = icmp slt i32 %.31406.lcssa, %3
  br i1 %i.ccy, label %.preheader1037.lr.ph, label %._crit_edge1962

.preheader1037.lr.ph:                             ; preds = %.preheader1038
  %i.ccz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cda = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cdb = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cdc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cdd = icmp sgt i32 %4, 15
  %i.cde = icmp eq i32 %5, 0                      ; 6 uses
  %i.cdf = icmp sgt i32 %6, 1                     ; 4 uses
  %i.cdg = icmp sgt i32 %6, 0
  %i.cdh = add i32 %6, -2                         ; 4 uses
  %i.cdi = and i32 %i.cdh, -2
  %i.cdj = add i32 %i.cdi, 2                      ; 5 uses
  %i.cdk = and i32 %4, -16
  %i.cdl = lshr i32 %i.cdh, 1
  %i.cdm = zext nneg i32 %i.cdl to i64            ; 4 uses
  %i.cdn = shl nuw nsw i64 %i.cdm, 5
  %i.cdo = shl nuw nsw i64 %i.cdm, 4
  %i.cdp = shl nuw nsw i64 %i.cdm, 3
  %i.cdq = add i32 %4, -1                         ; 2 uses
  %i.cdr = add i32 %6, -1
  %i.cds = zext i32 %i.cdr to i64
  %i.cdt = shl nuw nsw i64 %i.cds, 1
  %i.cdu = sext i32 %.31406.lcssa to i64
  %i.cdv = sext i32 %6 to i64
  %wide.trip.count2369 = sext i32 %3 to i64
  %wide.trip.count2364 = zext nneg i32 %2 to i64
  %i.cdw = zext i32 %6 to i64                     ; 5 uses
  %i.cdx = add nuw nsw i64 %i.cdm, 1              ; 5 uses
  %i.cdy = add i32 %6, -2                         ; 4 uses
  %i.cdz = lshr i32 %i.cdy, 1                     ; 3 uses
  %i.cea = add nuw i32 %i.cdz, 1                  ; 6 uses
  %xtraiter3950 = and i32 %i.cea, 3               ; 3 uses
  %i.ceb = icmp ult i32 %i.cdy, 6
  %unroll_iter3959 = and i32 %i.cea, -4
  %lcmp.mod3954.not = icmp eq i32 %xtraiter3950, 0
  %lcmp.mod3958 = icmp ne i32 %xtraiter3950, 0
  %i.cec = icmp eq i32 %i.cdz, 0
  %unroll_iter3975 = and i32 %i.cea, -2
  %i.ced = and i32 %i.cdy, 2
  %lcmp.mod3970.not.not = icmp eq i32 %i.ced, 0
  %lcmp.mod3974 = trunc i32 %i.cea to i1
  %i.cee = icmp eq i32 %i.cdz, 0
  %unroll_iter3989 = and i32 %i.cea, -2
  %i.cef = and i32 %i.cdy, 2
  %lcmp.mod3985.not.not = icmp eq i32 %i.cef, 0
  %lcmp.mod3988 = trunc i32 %i.cea to i1
  %min.iters.check3362 = icmp ult i32 %i.cdh, 30
  %min.iters.check3364 = icmp ult i32 %i.cdh, 126
  %i.ceg = and i64 %i.cdx, 48
  %n.vec3366 = and i64 %i.cdx, 4294967232         ; 6 uses
  %i.ceh = trunc nuw i64 %n.vec3366 to i32
  %i.cei = shl i32 %i.ceh, 1
  %i.cej = shl nuw nsw i64 %n.vec3366, 2
  %i.cek = shl nuw nsw i64 %n.vec3366, 3
  %cmp.n3425 = icmp eq i64 %i.cdx, %n.vec3366
  %min.epilog.iters.check3434 = icmp eq i64 %i.ceg, 0
  %n.vec3436 = and i64 %i.cdx, 4294967280         ; 5 uses
  %i.cel = trunc nuw i64 %n.vec3436 to i32
  %i.cem = shl i32 %i.cel, 1
  %i.cen = shl nuw nsw i64 %n.vec3436, 2
  %i.ceo = shl nuw nsw i64 %n.vec3436, 3
  %cmp.n3453 = icmp eq i64 %i.cdx, %n.vec3436
  %min.iters.check3237 = icmp ult i32 %6, 8
  %min.iters.check3239 = icmp ult i32 %6, 64
  %i.cep = and i64 %i.cdw, 56
  %n.vec3241 = and i64 %i.cdw, 2147483584         ; 5 uses
  %i.ceq = trunc nuw nsw i64 %n.vec3241 to i32
  %i.cer = shl nuw nsw i64 %n.vec3241, 1          ; 2 uses
  %cmp.n3263 = icmp eq i64 %n.vec3241, %i.cdw
  %min.epilog.iters.check3271 = icmp eq i64 %i.cep, 0
  %n.vec3273 = and i64 %i.cdw, 2147483640         ; 4 uses
  %i.ces = trunc nuw nsw i64 %n.vec3273 to i32
  %i.cet = shl nuw nsw i64 %n.vec3273, 1          ; 2 uses
  %cmp.n3283 = icmp eq i64 %n.vec3273, %i.cdw
  br label %.preheader1037

bb.bd:                                            ; preds = %._crit_edge1829
  %indvars.iv.next2345 = add nuw nsw i64 %indvars.iv2344, 2 ; 3 uses
  %i.ceu = icmp slt i64 %indvars.iv.next2345, %invariant.op2667
  br i1 %i.ceu, label %.preheader1048, label %.preheader1038.loopexit, !llvm.loop !676

bb.be:                                            ; preds = %.preheader1048, %._crit_edge1829
  %indvars.iv2339 = phi i64 [ 0, %.preheader1048 ], [ %indvars.iv.next2340, %._crit_edge1829 ] ; 3 uses
  %.221832 = phi ptr [ %.211834, %.preheader1048 ], [ %.27.lcssa, %._crit_edge1829 ] ; 2 uses
  %i.cev = load ptr, ptr %0, align 8, !tbaa !32
  %i.cew = load i32, ptr %i.bec, align 4, !tbaa !10
  %i.cex = sext i32 %i.cew to i64
  %i.cey = mul nsw i64 %indvars.iv2339, %i.cex
  %i.cez = load i64, ptr %i.bed, align 8, !tbaa !36
  %i.cfa = mul i64 %i.cey, %i.cez
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cev, i64 %i.cfa
  %i.cfc = getelementptr inbounds [2 x i8], ptr %i.cfb, i64 %i.ccw ; 25 uses
  %i.cfd = load ptr, ptr %1, align 8, !tbaa !32
  %i.cfe = load i32, ptr %i.bee, align 4, !tbaa !10
  %i.cff = sext i32 %i.cfe to i64
  %i.cfg = mul nsw i64 %indvars.iv2339, %i.cff
  %i.cfh = load i64, ptr %i.bef, align 8, !tbaa !36
  %i.cfi = mul i64 %i.cfg, %i.cfh
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.cfd, i64 %i.cfi ; 2 uses
  br i1 %i.beg, label %.lr.ph1704, label %.preheader1047

.preheader1047:                                   ; preds = %._crit_edge1696, %bb.be
  %.01629.lcssa = phi i32 [ 0, %bb.be ], [ %i.bem, %._crit_edge1696 ] ; 3 uses
  %.01614.lcssa = phi ptr [ %i.cfj, %bb.be ], [ %.21616.lcssa, %._crit_edge1696 ] ; 2 uses
  %.23.lcssa = phi ptr [ %.221832, %bb.be ], [ %i.cjy, %._crit_edge1696 ] ; 2 uses
  %i.cfk = or disjoint i32 %.01629.lcssa, 7
  %i.cfl = icmp slt i32 %i.cfk, %4
  br i1 %i.cfl, label %.lr.ph1733, label %.preheader1046

.lr.ph1704:                                       ; preds = %bb.be, %._crit_edge1696
  %.231702 = phi ptr [ %i.cjy, %._crit_edge1696 ], [ %.221832, %bb.be ] ; 5 uses
  %.016141701 = phi ptr [ %.21616.lcssa, %._crit_edge1696 ], [ %i.cfj, %bb.be ] ; 3 uses
  %.016291700 = phi i32 [ %i.cjz, %._crit_edge1696 ], [ 0, %bb.be ]
  br i1 %i.beh, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph1704
  %i.cfm = load <8 x i64>, ptr %.231702, align 1, !tbaa !44
  %i.cfn = getelementptr inbounds nuw i8, ptr %.231702, i64 64
  %i.cfo = load <8 x i64>, ptr %i.cfn, align 1, !tbaa !44
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph1704, %bb.bf
  %.0730 = phi <8 x i64> [ %i.cfm, %bb.bf ], [ zeroinitializer, %.lr.ph1704 ] ; 2 uses
  %storemerge1650 = phi <8 x i64> [ %i.cfo, %bb.bf ], [ zeroinitializer, %.lr.ph1704 ] ; 2 uses
  br i1 %i.bei, label %.lr.ph1684.preheader, label %.preheader1043

.lr.ph1684.preheader:                             ; preds = %bb.bg
  %i.cfp = bitcast <8 x i64> %.0730 to <16 x i32> ; 2 uses
  %i.cfq = bitcast <8 x i64> %storemerge1650 to <16 x i32> ; 2 uses
  br i1 %i.bfa, label %.lr.ph1684.epil.preheader, label %.lr.ph1684

.preheader1043.loopexit.unr-lcssa:                ; preds = %.lr.ph1684
  br i1 %lcmp.mod3920.not.not, label %.lr.ph1684.epil.preheader, label %.preheader1043.loopexit

.lr.ph1684.epil.preheader:                        ; preds = %.preheader1043.loopexit.unr-lcssa, %.lr.ph1684.preheader
  %.116151682.epil.init = phi ptr [ %.016141701, %.lr.ph1684.preheader ], [ %i.cif, %.preheader1043.loopexit.unr-lcssa ] ; 2 uses
  %.016461681.epil.init = phi ptr [ %i.cfc, %.lr.ph1684.preheader ], [ %i.cie, %.preheader1043.loopexit.unr-lcssa ] ; 3 uses
  %.07271679.epil.init = phi <16 x i32> [ %i.cfq, %.lr.ph1684.preheader ], [ %i.cid, %.preheader1043.loopexit.unr-lcssa ]
  %.17311678.epil.init = phi <16 x i32> [ %i.cfp, %.lr.ph1684.preheader ], [ %i.cib, %.preheader1043.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3925)
  %i.cfr = load i32, ptr %.016461681.epil.init, align 4, !tbaa !9
  %i.cfs = insertelement <16 x i32> poison, i32 %i.cfr, i64 0
  %i.cft = shufflevector <16 x i32> %i.cfs, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cfu = getelementptr inbounds nuw i8, ptr %.016461681.epil.init, i64 4
  %i.cfv = load i32, ptr %i.cfu, align 4, !tbaa !9
  %i.cfw = insertelement <16 x i32> poison, i32 %i.cfv, i64 0
  %i.cfx = shufflevector <16 x i32> %i.cfw, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cfy = load <32 x i16>, ptr %.116151682.epil.init, align 1, !tbaa !44 ; 2 uses
  %i.cfz = bitcast <16 x i32> %i.cft to <32 x i16>
  %i.cga = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.17311678.epil.init, <32 x i16> %i.cfz, <32 x i16> %i.cfy)
  %i.cgb = bitcast <16 x i32> %i.cfx to <32 x i16>
  %i.cgc = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.07271679.epil.init, <32 x i16> %i.cgb, <32 x i16> %i.cfy)
  %i.cgd = getelementptr inbounds nuw i8, ptr %.016461681.epil.init, i64 8
  %i.cge = getelementptr inbounds nuw i8, ptr %.116151682.epil.init, i64 64
  br label %.preheader1043.loopexit

.preheader1043.loopexit:                          ; preds = %.preheader1043.loopexit.unr-lcssa, %.lr.ph1684.epil.preheader
  %.lcssa3517 = phi <16 x i32> [ %i.cib, %.preheader1043.loopexit.unr-lcssa ], [ %i.cga, %.lr.ph1684.epil.preheader ]
  %.lcssa3516 = phi <16 x i32> [ %i.cid, %.preheader1043.loopexit.unr-lcssa ], [ %i.cgc, %.lr.ph1684.epil.preheader ]
  %.lcssa3515 = phi ptr [ %i.cie, %.preheader1043.loopexit.unr-lcssa ], [ %i.cgd, %.lr.ph1684.epil.preheader ]
  %.lcssa3514 = phi ptr [ %i.cif, %.preheader1043.loopexit.unr-lcssa ], [ %i.cge, %.lr.ph1684.epil.preheader ]
  %i.cgf = bitcast <16 x i32> %.lcssa3516 to <8 x i64>
  %i.cgg = bitcast <16 x i32> %.lcssa3517 to <8 x i64>
  br label %.preheader1043

.preheader1043:                                   ; preds = %.preheader1043.loopexit, %bb.bg
  %.1731.lcssa = phi <8 x i64> [ %.0730, %bb.bg ], [ %i.cgg, %.preheader1043.loopexit ] ; 2 uses
  %.0727.lcssa = phi <8 x i64> [ %storemerge1650, %bb.bg ], [ %i.cgf, %.preheader1043.loopexit ] ; 2 uses
  %.01648.lcssa = phi i32 [ 0, %bb.bg ], [ %i.bel, %.preheader1043.loopexit ] ; 5 uses
  %.01646.lcssa = phi ptr [ %i.cfc, %bb.bg ], [ %.lcssa3515, %.preheader1043.loopexit ] ; 4 uses
  %.11615.lcssa = phi ptr [ %.016141701, %bb.bg ], [ %.lcssa3514, %.preheader1043.loopexit ] ; 4 uses
  %i.cgh = icmp slt i32 %.01648.lcssa, %6
  br i1 %i.cgh, label %.lr.ph1695.preheader, label %._crit_edge1696

.lr.ph1695.preheader:                             ; preds = %.preheader1043
  %i.cgi = bitcast <8 x i64> %.1731.lcssa to <16 x i32> ; 2 uses
  %i.cgj = bitcast <8 x i64> %.0727.lcssa to <16 x i32> ; 2 uses
  %i.cgk = sub i32 %6, %.01648.lcssa
  %.neg3999 = add i32 %.01648.lcssa, 1
  %xtraiter3928 = and i32 %i.cgk, 1
  %lcmp.mod3929.not = icmp eq i32 %xtraiter3928, 0
  br i1 %lcmp.mod3929.not, label %.lr.ph1695.prol.loopexit, label %.lr.ph1695.prol

.lr.ph1695.prol:                                  ; preds = %.lr.ph1695.preheader
  %i.cgl = load i16, ptr %.01646.lcssa, align 2, !tbaa !559
  %i.cgm = sext i16 %i.cgl to i32
  %i.cgn = insertelement <16 x i32> poison, i32 %i.cgm, i64 0
  %i.cgo = shufflevector <16 x i32> %i.cgn, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cgp = getelementptr inbounds nuw i8, ptr %.01646.lcssa, i64 2
  %i.cgq = load i16, ptr %i.cgp, align 2, !tbaa !559
  %i.cgr = sext i16 %i.cgq to i32
  %i.cgs = insertelement <16 x i32> poison, i32 %i.cgr, i64 0
  %i.cgt = shufflevector <16 x i32> %i.cgs, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cgu = load <16 x i16>, ptr %.11615.lcssa, align 1, !tbaa !44
  %i.cgv = sext <16 x i16> %i.cgu to <16 x i32>   ; 2 uses
  %i.cgw = mul <16 x i32> %i.cgo, %i.cgv
  %i.cgx = mul <16 x i32> %i.cgt, %i.cgv
  %i.cgy = add <16 x i32> %i.cgw, %i.cgi          ; 2 uses
  %i.cgz = add <16 x i32> %i.cgx, %i.cgj          ; 2 uses
  %i.cha = getelementptr inbounds nuw i8, ptr %.01646.lcssa, i64 4
  %i.chb = getelementptr inbounds nuw i8, ptr %.11615.lcssa, i64 32 ; 2 uses
  %i.chc = add nuw nsw i32 %.01648.lcssa, 1
  br label %.lr.ph1695.prol.loopexit

.lr.ph1695.prol.loopexit:                         ; preds = %.lr.ph1695.prol, %.lr.ph1695.preheader
  %.lcssa3520.unr = phi <16 x i32> [ poison, %.lr.ph1695.preheader ], [ %i.cgy, %.lr.ph1695.prol ]
  %.lcssa3519.unr = phi <16 x i32> [ poison, %.lr.ph1695.preheader ], [ %i.cgz, %.lr.ph1695.prol ]
  %.lcssa3518.unr = phi ptr [ poison, %.lr.ph1695.preheader ], [ %i.chb, %.lr.ph1695.prol ]
  %.216161694.unr = phi ptr [ %.11615.lcssa, %.lr.ph1695.preheader ], [ %i.chb, %.lr.ph1695.prol ]
  %.116471693.unr = phi ptr [ %.01646.lcssa, %.lr.ph1695.preheader ], [ %i.cha, %.lr.ph1695.prol ]
  %.116491692.unr = phi i32 [ %.01648.lcssa, %.lr.ph1695.preheader ], [ %i.chc, %.lr.ph1695.prol ]
  %.17281691.unr = phi <16 x i32> [ %i.cgj, %.lr.ph1695.preheader ], [ %i.cgz, %.lr.ph1695.prol ]
end_hunk_5
