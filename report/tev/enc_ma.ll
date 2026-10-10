Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ma?download=true
inline.NumInlined: 4528
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN3jxl6N_AVX212EstimateBitsEPKim:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_AVX213MakeSplitNodeEmiiNS_9PredictorElS1_lPNSt3__16vectorINS_20PropertyDecisionNodeENS2_9allocatorIS4_EEEE(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef nonnull %7) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = load ptr, ptr %7, align 8, !tbaa !32     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %0 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.h, ptr %i.j, align 8, !tbaa !37
  %i.k = add i32 %i.h, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !38
  store i32 %2, ptr %i.i, align 8, !tbaa !39
  %i.m = trunc i32 %1 to i16
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i16 %i.m, ptr %i.n, align 4, !tbaa !40
  %i.o = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7) #33 ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -36
  store i16 -1, ptr %i.q, align 4, !tbaa !40
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -24
  store i32 %5, ptr %i.r, align 8, !tbaa !41
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 -16
  store i64 %6, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8
  store i32 1, ptr %i.t, align 8, !tbaa !43
  %i.u = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7) #33 ; 0 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -36
  store i16 -1, ptr %i.w, align 4, !tbaa !40
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -24
  store i32 %3, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -16
  store i64 %4, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -8
  store i32 1, ptr %i.z, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN3jxl6N_AVX213BoxIntersectsENSt3__15arrayINS2_IjLm2EEELm2EEES4_RjS5_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #11 {
bb.a:
  %.sroa.033.0.extract.trunc = trunc i64 %0 to i32 ; 2 uses
  %.sroa.234.0.extract.shift = lshr i64 %0, 32    ; 2 uses
  %.sroa.234.0.extract.trunc = trunc nuw i64 %.sroa.234.0.extract.shift to i32
  %.sroa.335.8.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.536.8.extract.shift = lshr i64 %1, 32    ; 2 uses
  %.sroa.536.8.extract.trunc = trunc nuw i64 %.sroa.536.8.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32  ; 3 uses
  %.sroa.2.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %.sroa.3.8.extract.trunc = trunc i64 %3 to i32  ; 3 uses
  %.sroa.5.8.extract.shift = lshr i64 %3, 32      ; 2 uses
  %.sroa.5.8.extract.trunc = trunc nuw i64 %.sroa.5.8.extract.shift to i32 ; 2 uses
  %.not = icmp ult i32 %.sroa.0.0.extract.trunc, %.sroa.234.0.extract.trunc
  %.not26 = icmp ugt i32 %.sroa.2.0.extract.trunc, %.sroa.033.0.extract.trunc
  %or.cond = select i1 %.not, i1 %.not26, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp ugt i32 %.sroa.0.0.extract.trunc, %.sroa.033.0.extract.trunc
  br i1 %.not27, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not28 = icmp samesign ult i64 %.sroa.2.0.extract.shift, %.sroa.234.0.extract.shift
  br i1 %.not28, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sroa.0.0.extract.trunc.sink = phi i32 [ %.sroa.0.0.extract.trunc, %bb.b ], [ %.sroa.2.0.extract.trunc, %bb.c ]
  store i32 0, ptr %4, align 4, !tbaa !21
  %i.a = add i32 %.sroa.0.0.extract.trunc.sink, -1
  store i32 %i.a, ptr %5, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ true, %.sink.split ]
  %.not.1 = icmp ult i32 %.sroa.3.8.extract.trunc, %.sroa.536.8.extract.trunc
  %.not26.1 = icmp ugt i32 %.sroa.5.8.extract.trunc, %.sroa.335.8.extract.trunc
  %or.cond38 = select i1 %.not.1, i1 %.not26.1, i1 false
  br i1 %or.cond38, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.not27.1 = icmp ugt i32 %.sroa.3.8.extract.trunc, %.sroa.335.8.extract.trunc
  br i1 %.not27.1, label %.critedge.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not28.1 = icmp samesign ult i64 %.sroa.5.8.extract.shift, %.sroa.536.8.extract.shift
  br i1 %.not28.1, label %.critedge.thread.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.f
  br i1 %.1, label %.critedge.thread, label %.loopexit

.critedge.thread.sink.split:                      ; preds = %bb.e, %bb.f
  %.sroa.5.8.extract.trunc.sink = phi i32 [ %.sroa.5.8.extract.trunc, %bb.f ], [ %.sroa.3.8.extract.trunc, %bb.e ]
  store i32 1, ptr %4, align 4, !tbaa !21
  %i.b = add i32 %.sroa.5.8.extract.trunc.sink, -1
  store i32 %i.b, ptr %5, align 4, !tbaa !21
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %.critedge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.d, %.critedge.thread, %.critedge
  %.125 = phi i32 [ 2, %.critedge ], [ 1, %.critedge.thread ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.125
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_AVX213FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE(ptr noundef nonnull align 8 dereferenceable(304) %0, float noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 %3, i64 %4, float noundef %5, ptr noundef %6) #12 {
_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit:
  %7 = alloca %struct.SplitInfo.100, align 8      ; 13 uses
  %8 = alloca %struct.SplitInfo.100, align 8      ; 11 uses
  %9 = alloca %struct.SplitInfo.100, align 8      ; 13 uses
  %10 = alloca %struct.SplitInfo.100, align 8     ; 12 uses
  %11 = alloca %"class.std::__1::vector.55", align 8 ; 9 uses
  %12 = alloca %"class.std::__1::vector.26", align 8 ; 10 uses
  %13 = alloca %struct.SplitInfo.100, align 8     ; 12 uses
  %14 = alloca %"class.std::__1::vector.55", align 8 ; 11 uses
  %15 = alloca %"class.std::__1::vector.55", align 8 ; 13 uses
  %16 = alloca %"class.std::__1::vector.76", align 8 ; 11 uses
  %17 = alloca %"struct.std::__1::array", align 8 ; 13 uses
  %.sroa.8665 = alloca [2 x %"struct.std::__1::array.3"], align 8 ; 4 uses
  %.sroa.8 = alloca [2 x %"struct.std::__1::array.3"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %i.i = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %.sroa.6760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 %i.h, ptr %.sroa.6760.0..sroa_idx, align 8, !tbaa !47
  %.sroa.7763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.7763.0..sroa_idx, align 8, !tbaa !47
  %.sroa.8766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %3, ptr %.sroa.8766.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %4, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64   ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !65   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 36
  %.not1000 = icmp ne ptr %i.m, %i.n              ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bc = icmp ugt i64 %i.r, 4611686018427387903
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bo = fadd float %1, 1.000000e+02
  %i.bp = fdiv float 8.000000e+02, %i.bo
  %i.bq = icmp ne ptr %i.u, %i.v
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1) ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit, %bb.cu
  %.sroa.0771.0996 = phi ptr [ %i.i, %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.0771.2, %bb.cu ] ; 7 uses
  %.sroa.14.0995 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.14.2, %bb.cu ] ; 7 uses
  %.sroa.35.0994 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.35.2, %bb.cu ] ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -48 ; 8 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !356 ; 8 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -40 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !357 ; 48 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -32 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !358 ; 21 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !359 ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -16 ; 2 uses
  %.sroa.0216.0.copyload = load i64, ptr %i.ch, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !25 ; 5 uses
  %i.ci = icmp eq i64 %i.cc, %i.ce
  br i1 %i.ci, label %bb.cu, label %bb.b, !llvm.loop !268

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store i64 0, ptr %7, align 8, !tbaa !361
  store i32 0, ptr %i.aa, align 8, !tbaa !362
  store i64 0, ptr %i.ab, align 8, !tbaa !363
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ac, align 8, !tbaa !68
  store i32 0, ptr %i.ae, align 8, !tbaa !364
  store i32 0, ptr %i.af, align 4, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store i64 0, ptr %8, align 8, !tbaa !361
  store i32 0, ptr %i.ag, align 8, !tbaa !362
  store i64 0, ptr %i.ah, align 8, !tbaa !363
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ai, align 8, !tbaa !68
  store i32 0, ptr %i.ak, align 8, !tbaa !364
  store i32 0, ptr %i.al, align 4, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store i64 0, ptr %9, align 8, !tbaa !361
  store i32 0, ptr %i.am, align 8, !tbaa !362
  store i64 0, ptr %i.an, align 8, !tbaa !363
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ao, align 8, !tbaa !68
  store i32 0, ptr %i.aq, align 8, !tbaa !364
  store i32 0, ptr %i.ar, align 4, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store i64 0, ptr %10, align 8, !tbaa !361
  store i32 0, ptr %i.as, align 8, !tbaa !362
  store i64 0, ptr %i.at, align 8, !tbaa !363
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.au, align 8, !tbaa !68
  store i32 0, ptr %i.aw, align 8, !tbaa !364
  store i32 0, ptr %i.ax, align 4, !tbaa !365
  %i.cj = icmp ult i64 %i.cc, %i.ce
  %or.cond = and i1 %.not1000, %i.cj
  br i1 %or.cond, label %.preheader840.lr.ph.split.us, label %._crit_edge932

.preheader840.lr.ph.split.us:                     ; preds = %bb.b
  %i.ck = load ptr, ptr %0, align 8, !tbaa !73
  %i.cl = sub nuw i64 %i.ce, %i.cc                ; 6 uses
  %min.iters.check1548 = icmp ult i64 %i.cl, 5
  %min.iters.check1550 = icmp ult i64 %i.cl, 17
  %i.cm = and i64 %i.cl, 15                       ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 16, i64 %i.cm      ; 2 uses
  %n.vec1552 = sub i64 %i.cl, %i.co               ; 3 uses
  %i.cp = add i64 %i.cc, %n.vec1552
  %min.epilog.iters.check1576 = icmp samesign ult i64 %i.co, 5
  %i.cq = and i64 %i.cl, 3                        ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 4, i64 %i.cq
  %n.vec1578 = sub i64 %i.cl, %i.cs               ; 2 uses
  %i.ct = add i64 %i.cc, %n.vec1578
  br label %iter.check1573

iter.check1573:                                   ; preds = %._crit_edge.us, %.preheader840.lr.ph.split.us
  %.0348931.us = phi i64 [ 0, %.preheader840.lr.ph.split.us ], [ %i.ef, %._crit_edge.us ] ; 2 uses
  %.0349930.us = phi i64 [ 0, %.preheader840.lr.ph.split.us ], [ %i.ed, %._crit_edge.us ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.0348931.us
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !78 ; 6 uses
  br i1 %min.iters.check1548, label %vec.epilog.scalar.ph1574.preheader, label %vector.main.loop.iter.check1549

vector.main.loop.iter.check1549:                  ; preds = %iter.check1573
  br i1 %min.iters.check1550, label %vec.epilog.ph1577, label %vector.ph1551

vector.ph1551:                                    ; preds = %vector.main.loop.iter.check1549
  %broadcast.splatinsert1553 = insertelement <4 x i64> poison, i64 %.0349930.us, i64 0
  %broadcast.splat1554 = shufflevector <4 x i64> %broadcast.splatinsert1553, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1555

vector.body1555:                                  ; preds = %vector.ph1551, %vector.body1555
  %index1556 = phi i64 [ 0, %vector.ph1551 ], [ %index.next1567, %vector.body1555 ] ; 2 uses
  %vec.phi1557 = phi <4 x i64> [ %broadcast.splat1554, %vector.ph1551 ], [ %i.dm, %vector.body1555 ]
  %vec.phi1558 = phi <4 x i64> [ %broadcast.splat1554, %vector.ph1551 ], [ %i.dn, %vector.body1555 ]
  %vec.phi1559 = phi <4 x i64> [ %broadcast.splat1554, %vector.ph1551 ], [ %i.do, %vector.body1555 ]
  %vec.phi1560 = phi <4 x i64> [ %broadcast.splat1554, %vector.ph1551 ], [ %i.dp, %vector.body1555 ]
  %i.cw = add nuw i64 %i.cc, %index1556           ; 4 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr [2 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = getelementptr [2 x i8], ptr %i.cv, i64 %i.cw
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = getelementptr [2 x i8], ptr %i.cv, i64 %i.cw
  %i.dd = getelementptr i8, ptr %i.dc, i64 24
  %wide.vec = load <8 x i8>, ptr %i.cx, align 1, !tbaa !80
  %strided.vec = shufflevector <8 x i8> %wide.vec, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec1561 = load <8 x i8>, ptr %i.cz, align 1, !tbaa !80
  %strided.vec1562 = shufflevector <8 x i8> %wide.vec1561, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec1563 = load <8 x i8>, ptr %i.db, align 1, !tbaa !80
  %strided.vec1564 = shufflevector <8 x i8> %wide.vec1563, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec1565 = load <8 x i8>, ptr %i.dd, align 1, !tbaa !80
  %strided.vec1566 = shufflevector <8 x i8> %wide.vec1565, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.de = zext <4 x i8> %strided.vec to <4 x i64>
  %i.df = zext <4 x i8> %strided.vec1562 to <4 x i64>
  %i.dg = zext <4 x i8> %strided.vec1564 to <4 x i64>
  %i.dh = zext <4 x i8> %strided.vec1566 to <4 x i64>
  %i.di = add nuw nsw <4 x i64> %i.de, splat (i64 1)
  %i.dj = add nuw nsw <4 x i64> %i.df, splat (i64 1)
  %i.dk = add nuw nsw <4 x i64> %i.dg, splat (i64 1)
  %i.dl = add nuw nsw <4 x i64> %i.dh, splat (i64 1)
  %i.dm = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1557, <4 x i64> %i.di) ; 2 uses
  %i.dn = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1558, <4 x i64> %i.dj) ; 2 uses
  %i.do = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1559, <4 x i64> %i.dk) ; 2 uses
  %i.dp = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1560, <4 x i64> %i.dl) ; 2 uses
  %index.next1567 = add nuw i64 %index1556, 16    ; 2 uses
  %i.dq = icmp eq i64 %index.next1567, %n.vec1552
  br i1 %i.dq, label %vec.epilog.iter.check1575, label %vector.body1555, !llvm.loop !269

vec.epilog.iter.check1575:                        ; preds = %vector.body1555
  %rdx.minmax = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %i.dm, <4 x i64> %i.dn)
  %rdx.minmax1569 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax, <4 x i64> %i.do)
  %rdx.minmax1570 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax1569, <4 x i64> %i.dp)
  %i.dr = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %rdx.minmax1570) ; 2 uses
  br i1 %min.epilog.iters.check1576, label %vec.epilog.scalar.ph1574.preheader, label %vec.epilog.ph1577, !prof !366

vec.epilog.ph1577:                                ; preds = %vector.main.loop.iter.check1549, %vec.epilog.iter.check1575
  %vec.epilog.resume.val1571 = phi i64 [ %n.vec1552, %vec.epilog.iter.check1575 ], [ 0, %vector.main.loop.iter.check1549 ]
  %bc.merge.rdx1572 = phi i64 [ %i.dr, %vec.epilog.iter.check1575 ], [ %.0349930.us, %vector.main.loop.iter.check1549 ]
  %broadcast.splatinsert1579 = insertelement <4 x i64> poison, i64 %bc.merge.rdx1572, i64 0
  %broadcast.splat1580 = shufflevector <4 x i64> %broadcast.splatinsert1579, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.cc
  br label %vec.epilog.vector.body1581

vec.epilog.vector.body1581:                       ; preds = %vec.epilog.vector.body1581, %vec.epilog.ph1577
  %index1582 = phi i64 [ %vec.epilog.resume.val1571, %vec.epilog.ph1577 ], [ %index.next1586, %vec.epilog.vector.body1581 ] ; 2 uses
  %vec.phi1583 = phi <4 x i64> [ %broadcast.splat1580, %vec.epilog.ph1577 ], [ %i.dw, %vec.epilog.vector.body1581 ]
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index1582
  %wide.vec1584 = load <8 x i8>, ptr %i.dt, align 1, !tbaa !80
  %strided.vec1585 = shufflevector <8 x i8> %wide.vec1584, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.du = zext <4 x i8> %strided.vec1585 to <4 x i64>
  %i.dv = add nuw nsw <4 x i64> %i.du, splat (i64 1)
  %i.dw = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1583, <4 x i64> %i.dv) ; 2 uses
  %index.next1586 = add nuw i64 %index1582, 4     ; 2 uses
  %i.dx = icmp eq i64 %index.next1586, %n.vec1578
  br i1 %i.dx, label %vec.epilog.middle.block1587, label %vec.epilog.vector.body1581, !llvm.loop !270

vec.epilog.middle.block1587:                      ; preds = %vec.epilog.vector.body1581
  %i.dy = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %i.dw)
  br label %vec.epilog.scalar.ph1574.preheader

vec.epilog.scalar.ph1574.preheader:               ; preds = %iter.check1573, %vec.epilog.iter.check1575, %vec.epilog.middle.block1587
  %.0347929.us.ph = phi i64 [ %i.cc, %iter.check1573 ], [ %i.cp, %vec.epilog.iter.check1575 ], [ %i.ct, %vec.epilog.middle.block1587 ]
  %.1350928.us.ph = phi i64 [ %.0349930.us, %iter.check1573 ], [ %i.dr, %vec.epilog.iter.check1575 ], [ %i.dy, %vec.epilog.middle.block1587 ]
  br label %vec.epilog.scalar.ph1574

vec.epilog.scalar.ph1574:                         ; preds = %vec.epilog.scalar.ph1574.preheader, %vec.epilog.scalar.ph1574
  %.0347929.us = phi i64 [ %i.ee, %vec.epilog.scalar.ph1574 ], [ %.0347929.us.ph, %vec.epilog.scalar.ph1574.preheader ] ; 2 uses
  %.1350928.us = phi i64 [ %i.ed, %vec.epilog.scalar.ph1574 ], [ %.1350928.us.ph, %vec.epilog.scalar.ph1574.preheader ]
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %.0347929.us
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !80
  %i.eb = zext i8 %i.ea to i64
  %i.ec = add nuw nsw i64 %i.eb, 1
  %i.ed = tail call i64 @llvm.umax.i64(i64 %.1350928.us, i64 %i.ec) ; 3 uses
  %i.ee = add nuw i64 %.0347929.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %i.ce
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph1574, !llvm.loop !271

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph1574
  %i.ef = add nuw i64 %.0348931.us, 1             ; 2 uses
  %exitcond1024.not = icmp eq i64 %i.ef, %umax
  br i1 %exitcond1024.not, label %._crit_edge932.loopexit, label %iter.check1573, !llvm.loop !272

._crit_edge932.loopexit:                          ; preds = %._crit_edge.us
  %i.eg = add nuw nsw i64 %i.ed, 7
  %i.eh = and i64 %i.eg, -8
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX213FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE:_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit
  %i.hp = icmp ult i64 %i.ho, %.0349.lcssa
  br i1 %i.hp, label %.lr.ph.i, label %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit, !llvm.loop !4

_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit:  ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %12, align 8, !tbaa !65
  br label %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit

_ZN3jxl6N_AVX212EstimateBitsEPKim.exit:           ; preds = %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit, %._crit_edge938
  %i.hq = phi ptr [ %i.ev, %._crit_edge938 ], [ %.pre, %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit ]
  %.sroa.031.0.lcssa.i = phi <8 x float> [ zeroinitializer, %._crit_edge938 ], [ %i.hn, %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit ] ; 2 uses
  %i.hr = shufflevector <8 x float> %.sroa.031.0.lcssa.i, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.hs = fadd <8 x float> %.sroa.031.0.lcssa.i, %i.hr ; 2 uses
  %i.ht = shufflevector <8 x float> %i.hs, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.hu = fadd <8 x float> %i.hs, %i.ht           ; 2 uses
  %i.hv = shufflevector <8 x float> %i.hu, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hw = fadd <8 x float> %i.hu, %i.hv
  %i.hx = extractelement <8 x float> %i.hw, i64 0
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.fk
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !21
  %i.ia = uitofp i32 %i.hz to float
  %i.ib = fadd float %i.hx, %i.ia                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  store i64 0, ptr %13, align 8, !tbaa !361
  store i32 0, ptr %i.bd, align 8, !tbaa !362
  store i64 0, ptr %i.be, align 8, !tbaa !363
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.bf, align 8, !tbaa !68
  store i32 0, ptr %i.bh, align 8, !tbaa !364
  store i32 0, ptr %i.bi, align 4, !tbaa !365
  %i.ic = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.id = load ptr, ptr %i.bj, align 8, !tbaa !93 ; 2 uses
  %.not833939 = icmp eq ptr %i.ic, %i.id
  br i1 %.not833939, label %.thread812, label %.lr.ph941

.lr.ph941:                                        ; preds = %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit
  %.sroa.033.0.extract.trunc.i = trunc i64 %.sroa.0216.0.copyload to i32 ; 2 uses
  %.sroa.234.0.extract.shift.i = lshr i64 %.sroa.0216.0.copyload, 32 ; 2 uses
  %.sroa.234.0.extract.trunc.i = trunc nuw i64 %.sroa.234.0.extract.shift.i to i32
  %.sroa.335.8.extract.trunc.i = trunc i64 %.sroa.6.0.copyload to i32 ; 2 uses
  %.sroa.536.8.extract.shift.i = lshr i64 %.sroa.6.0.copyload, 32 ; 2 uses
  %.sroa.536.8.extract.trunc.i = trunc nuw i64 %.sroa.536.8.extract.shift.i to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph937, %._crit_edge
  %.0345936 = phi i64 [ 0, %.lr.ph937 ], [ %i.iy, %._crit_edge ] ; 4 uses
  br i1 %i.es, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %.0345936
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !78 ; 3 uses
  %i.ig = load ptr, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  %i.ih = mul i64 %.0345936, %.0349.lcssa
  %i.ii = getelementptr [4 x i8], ptr %i.eo, i64 %i.ih ; 3 uses
  br i1 %i.eu, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0343935.epil.init = phi i64 [ %i.cc, %.lr.ph ], [ %i.kc, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0344934.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.kb, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1648)
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %.0343935.epil.init ; 2 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %.0343935.epil.init
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !45
  %i.im = zext i16 %i.il to i32                   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !94
  %i.ip = zext i8 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.ip, %i.im
  %i.ir = load i8, ptr %i.ij, align 1, !tbaa !80
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr [4 x i8], ptr %i.ii, i64 %i.is ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !21
  %i.iv = add i32 %i.iu, %i.im
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !21
  %i.iw = add i32 %i.iq, %.0344934.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.g
  %.0344.lcssa = phi i32 [ 0, %bb.g ], [ %i.kb, %._crit_edge.loopexit.unr-lcssa ], [ %i.iw, %.epil.preheader ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.0345936
  store i32 %.0344.lcssa, ptr %i.ix, align 4, !tbaa !21
  %i.iy = add nuw i64 %.0345936, 1                ; 2 uses
  %exitcond1027.not = icmp eq i64 %i.iy, %umax
  br i1 %exitcond1027.not, label %._crit_edge938, label %bb.g, !llvm.loop !276

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.0343935 = phi i64 [ %i.kc, %.lr.ph.new ], [ %i.cc, %.lr.ph ] ; 4 uses
  %.0344934 = phi i32 [ %i.kb, %.lr.ph.new ], [ 0, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %.0343935 ; 2 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %.0343935
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !45
  %i.jc = zext i16 %i.jb to i32                   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !94
  %i.jf = zext i8 %i.je to i32
  %i.jg = mul nuw nsw i32 %i.jf, %i.jc
  %i.jh = load i8, ptr %i.iz, align 1, !tbaa !80
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr [4 x i8], ptr %i.ii, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !21
  %i.jl = add i32 %i.jk, %i.jc
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !21
  %i.jm = add i32 %i.jg, %.0344934
  %i.jn = add nuw i64 %.0343935, 1                ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %i.jn
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !45
  %i.jr = zext i16 %i.jq to i32                   ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !94
  %i.ju = zext i8 %i.jt to i32
  %i.jv = mul nuw nsw i32 %i.ju, %i.jr
  %i.jw = load i8, ptr %i.jo, align 1, !tbaa !80
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr [4 x i8], ptr %i.ii, i64 %i.jx ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !21
  %i.ka = add i32 %i.jz, %i.jr
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !21
  %i.kb = add i32 %i.jv, %i.jm                    ; 3 uses
  %i.kc = add nuw i64 %.0343935, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !277

bb.h:                                             ; preds = %.lr.ph941, %bb.o
  %.sroa.0727.0940 = phi ptr [ %i.ic, %.lr.ph941 ], [ %i.of, %bb.o ] ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0727.0940, align 4 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0727.0940, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !25 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 3 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %.sroa.3.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload to i32 ; 3 uses
  %.sroa.5.8.extract.shift.i = lshr i64 %.sroa.2.0.copyload, 32 ; 2 uses
  %.sroa.5.8.extract.trunc.i = trunc nuw i64 %.sroa.5.8.extract.shift.i to i32 ; 2 uses
  %.not.i469 = icmp ult i32 %.sroa.0.0.extract.trunc.i, %.sroa.234.0.extract.trunc.i
  %.not26.i = icmp ugt i32 %.sroa.2.0.extract.trunc.i, %.sroa.033.0.extract.trunc.i
  %or.cond.i = select i1 %.not.i469, i1 %.not26.i, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %.not27.i = icmp ugt i32 %.sroa.0.0.extract.trunc.i, %.sroa.033.0.extract.trunc.i
  br i1 %.not27.i, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not28.i = icmp samesign ult i64 %.sroa.2.0.extract.shift.i, %.sroa.234.0.extract.shift.i
  br i1 %.not28.i, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.sroa.0.0.extract.trunc.sink.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.i ], [ %.sroa.2.0.extract.trunc.i, %bb.j ]
  %i.kd = add i32 %.sroa.0.0.extract.trunc.sink.i, -1
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.j
  %.0791 = phi i32 [ %i.kd, %.sink.split.i ], [ undef, %bb.j ]
  %.1.i = phi i1 [ true, %.sink.split.i ], [ false, %bb.j ]
  %.not.1.i = icmp ult i32 %.sroa.3.8.extract.trunc.i, %.sroa.536.8.extract.trunc.i
  %.not26.1.i = icmp ugt i32 %.sroa.5.8.extract.trunc.i, %.sroa.335.8.extract.trunc.i
  %or.cond38.i = select i1 %.not.1.i, i1 %.not26.1.i, i1 false
  br i1 %or.cond38.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not27.1.i = icmp ugt i32 %.sroa.3.8.extract.trunc.i, %.sroa.335.8.extract.trunc.i
  br i1 %.not27.1.i, label %.critedge.thread.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not28.1.i = icmp samesign ult i64 %.sroa.5.8.extract.shift.i, %.sroa.536.8.extract.shift.i
  br i1 %.not28.1.i, label %.critedge.thread.sink.split.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.m
  br i1 %.1.i, label %.critedge.thread.i, label %bb.p

.critedge.thread.sink.split.i:                    ; preds = %bb.m, %bb.l
  %.sroa.5.8.extract.trunc.sink.i = phi i32 [ %.sroa.5.8.extract.trunc.i, %bb.m ], [ %.sroa.3.8.extract.trunc.i, %bb.l ]
  %i.ke = add i32 %.sroa.5.8.extract.trunc.sink.i, -1
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %.critedge.thread.sink.split.i
  %.2796.ph = phi i64 [ 1, %.critedge.thread.sink.split.i ], [ 0, %.critedge.i ] ; 5 uses
  %.2793.ph = phi i32 [ %i.ke, %.critedge.thread.sink.split.i ], [ %.0791, %.critedge.i ]
  %i.kf = tail call i32 @llvm.smax.i32(i32 %.2793.ph, i32 -511)
  %i.kg = tail call i32 @llvm.smin.i32(i32 %i.kf, i32 511)
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.2796.ph
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !54
  %i.kj = sext i32 %i.kg to i64
  %i.kk = getelementptr [2 x i8], ptr %i.ki, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.kk, i64 1022
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !45 ; 4 uses
  %i.kn = zext i16 %i.km to i32                   ; 4 uses
  store i32 %i.kn, ptr %i.bd, align 8, !tbaa !362
  store i64 %.2796.ph, ptr %13, align 8, !tbaa !361
  %i.ko = fmul float %i.ib, 5.000000e-01
  %i.kp = fsub float %i.ko, %1                    ; 6 uses
  store float %i.kp, ptr %i.bg, align 4, !tbaa !367
  store float %i.kp, ptr %i.bf, align 8, !tbaa !368
  %i.kq = load ptr, ptr %6, align 8, !tbaa !32
  %i.kr = getelementptr inbounds nuw [40 x i8], ptr %i.kq, i64 %i.ca
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !41
  %18 = insertelement <2 x i32> poison, i32 %i.kt, i64 0
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %19, ptr %i.bh, align 8, !tbaa !46
  %i.ku = load i64, ptr %i.bl, align 8, !tbaa !106 ; 2 uses
  %i.kv = icmp ult i64 %.2796.ph, %i.ku
  %i.kw = icmp ult i64 %i.cc, %i.ce               ; 2 uses
  br i1 %i.kv, label %.preheader841, label %bb.n

.preheader841:                                    ; preds = %.critedge.thread.i
  br i1 %i.kw, label %iter.check1446, label %.thread817.loopexit

iter.check1446:                                   ; preds = %.preheader841
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.2796.ph
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !65 ; 3 uses
  %i.kz = sub nuw i64 %i.ce, %i.cc                ; 7 uses
  %min.iters.check1423 = icmp ult i64 %i.kz, 4
  br i1 %min.iters.check1423, label %vec.epilog.scalar.ph1447.preheader, label %vector.main.loop.iter.check1424

vector.main.loop.iter.check1424:                  ; preds = %iter.check1446
  %min.iters.check1425 = icmp ult i64 %i.kz, 16
  br i1 %min.iters.check1425, label %vec.epilog.ph1450, label %vector.ph1426

vector.ph1426:                                    ; preds = %vector.main.loop.iter.check1424
  %i.la = and i64 %i.kz, 12
  %n.vec1427 = and i64 %i.kz, -16                 ; 4 uses
  %i.lb = add i64 %i.cc, %n.vec1427
  %i.lc = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.cc, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.cc
  br label %vector.body1428

vector.body1428:                                  ; preds = %vector.ph1426, %vector.body1428
  %index1429 = phi i64 [ 0, %vector.ph1426 ], [ %index.next1438, %vector.body1428 ] ; 2 uses
  %vec.phi1430 = phi <4 x i64> [ %i.lc, %vector.ph1426 ], [ %i.lq, %vector.body1428 ]
  %vec.phi1431 = phi <4 x i64> [ zeroinitializer, %vector.ph1426 ], [ %i.lr, %vector.body1428 ]
  %vec.phi1432 = phi <4 x i64> [ zeroinitializer, %vector.ph1426 ], [ %i.ls, %vector.body1428 ]
  %vec.phi1433 = phi <4 x i64> [ zeroinitializer, %vector.ph1426 ], [ %i.lt, %vector.body1428 ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %index1429 ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %wide.load1434 = load <4 x i32>, ptr %i.le, align 4, !tbaa !21
  %wide.load1435 = load <4 x i32>, ptr %i.lf, align 4, !tbaa !21
  %wide.load1436 = load <4 x i32>, ptr %i.lg, align 4, !tbaa !21
  %wide.load1437 = load <4 x i32>, ptr %i.lh, align 4, !tbaa !21
  %i.li = icmp ule <4 x i32> %wide.load1434, %broadcast.splat
  %i.lj = icmp ule <4 x i32> %wide.load1435, %broadcast.splat
  %i.lk = icmp ule <4 x i32> %wide.load1436, %broadcast.splat
  %i.ll = icmp ule <4 x i32> %wide.load1437, %broadcast.splat
  %i.lm = zext <4 x i1> %i.li to <4 x i64>
  %i.ln = zext <4 x i1> %i.lj to <4 x i64>
  %i.lo = zext <4 x i1> %i.lk to <4 x i64>
  %i.lp = zext <4 x i1> %i.ll to <4 x i64>
  %i.lq = add <4 x i64> %vec.phi1430, %i.lm       ; 2 uses
  %i.lr = add <4 x i64> %vec.phi1431, %i.ln       ; 2 uses
  %i.ls = add <4 x i64> %vec.phi1432, %i.lo       ; 2 uses
  %i.lt = add <4 x i64> %vec.phi1433, %i.lp       ; 2 uses
  %index.next1438 = add nuw i64 %index1429, 16    ; 2 uses
  %i.lu = icmp eq i64 %index.next1438, %n.vec1427
  br i1 %i.lu, label %middle.block1439, label %vector.body1428, !llvm.loop !278

middle.block1439:                                 ; preds = %vector.body1428
  %bin.rdx1440 = add <4 x i64> %i.lr, %i.lq
  %bin.rdx1441 = add <4 x i64> %i.ls, %bin.rdx1440
  %bin.rdx1442 = add <4 x i64> %i.lt, %bin.rdx1441
  %i.lv = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx1442) ; 3 uses
  %cmp.n1443 = icmp eq i64 %i.kz, %n.vec1427
  br i1 %cmp.n1443, label %.thread817.loopexit, label %vec.epilog.iter.check1448

vec.epilog.iter.check1448:                        ; preds = %middle.block1439
  %min.epilog.iters.check1449 = icmp eq i64 %i.la, 0
  br i1 %min.epilog.iters.check1449, label %vec.epilog.scalar.ph1447.preheader, label %vec.epilog.ph1450, !prof !366

vec.epilog.ph1450:                                ; preds = %vector.main.loop.iter.check1424, %vec.epilog.iter.check1448
  %vec.epilog.resume.val1444 = phi i64 [ %n.vec1427, %vec.epilog.iter.check1448 ], [ 0, %vector.main.loop.iter.check1424 ]
  %bc.merge.rdx1445 = phi i64 [ %i.lv, %vec.epilog.iter.check1448 ], [ %i.cc, %vector.main.loop.iter.check1424 ]
  %n.vec1451 = and i64 %i.kz, -4                  ; 3 uses
  %i.lw = add i64 %i.cc, %n.vec1451
  %i.lx = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx1445, i64 0
  %broadcast.splatinsert1452 = insertelement <4 x i32> poison, i32 %i.kn, i64 0
  %broadcast.splat1453 = shufflevector <4 x i32> %broadcast.splatinsert1452, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.cc
  br label %vec.epilog.vector.body1454

vec.epilog.vector.body1454:                       ; preds = %vec.epilog.vector.body1454, %vec.epilog.ph1450
  %index1455 = phi i64 [ %vec.epilog.resume.val1444, %vec.epilog.ph1450 ], [ %index.next1458, %vec.epilog.vector.body1454 ] ; 2 uses
  %vec.phi1456 = phi <4 x i64> [ %i.lx, %vec.epilog.ph1450 ], [ %i.mc, %vec.epilog.vector.body1454 ]
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %index1455
  %wide.load1457 = load <4 x i32>, ptr %i.lz, align 4, !tbaa !21
  %i.ma = icmp ule <4 x i32> %wide.load1457, %broadcast.splat1453
  %i.mb = zext <4 x i1> %i.ma to <4 x i64>
  %i.mc = add <4 x i64> %vec.phi1456, %i.mb       ; 2 uses
  %index.next1458 = add nuw i64 %index1455, 4     ; 2 uses
  %i.md = icmp eq i64 %index.next1458, %n.vec1451
  br i1 %i.md, label %vec.epilog.middle.block1459, label %vec.epilog.vector.body1454, !llvm.loop !279

vec.epilog.middle.block1459:                      ; preds = %vec.epilog.vector.body1454
  %i.me = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.mc) ; 2 uses
  %cmp.n1460 = icmp eq i64 %i.kz, %n.vec1451
  br i1 %cmp.n1460, label %.thread817.loopexit, label %vec.epilog.scalar.ph1447.preheader

vec.epilog.scalar.ph1447.preheader:               ; preds = %iter.check1446, %vec.epilog.iter.check1448, %vec.epilog.middle.block1459
  %.0338949.ph = phi i64 [ %i.cc, %iter.check1446 ], [ %i.lb, %vec.epilog.iter.check1448 ], [ %i.lw, %vec.epilog.middle.block1459 ]
  %.ph1599 = phi i64 [ %i.cc, %iter.check1446 ], [ %i.lv, %vec.epilog.iter.check1448 ], [ %i.me, %vec.epilog.middle.block1459 ]
  br label %vec.epilog.scalar.ph1447

vec.epilog.scalar.ph1447:                         ; preds = %vec.epilog.scalar.ph1447.preheader, %vec.epilog.scalar.ph1447
  %.0338949 = phi i64 [ %i.mj, %vec.epilog.scalar.ph1447 ], [ %.0338949.ph, %vec.epilog.scalar.ph1447.preheader ] ; 2 uses
  %i.mf = phi i64 [ %spec.select, %vec.epilog.scalar.ph1447 ], [ %.ph1599, %vec.epilog.scalar.ph1447.preheader ]
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %.0338949
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !21
  %.not419 = icmp ule i32 %i.mh, %i.kn
  %i.mi = zext i1 %.not419 to i64
  %spec.select = add i64 %i.mf, %i.mi             ; 2 uses
  %i.mj = add nuw i64 %.0338949, 1                ; 2 uses
  %exitcond1029.not = icmp eq i64 %i.mj, %i.ce
  br i1 %exitcond1029.not, label %.thread817.loopexit, label %vec.epilog.scalar.ph1447, !llvm.loop !280

bb.n:                                             ; preds = %.critedge.thread.i
  br i1 %i.kw, label %iter.check1489, label %.thread817.loopexit842

iter.check1489:                                   ; preds = %bb.n
  %i.mk = sub nuw nsw i64 %.2796.ph, %i.ku
  %i.ml = load ptr, ptr %i.bm, align 8, !tbaa !107
  %i.mm = getelementptr inbounds nuw [24 x i8], ptr %i.ml, i64 %i.mk
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !112 ; 3 uses
  %i.mo = sub nuw i64 %i.ce, %i.cc                ; 7 uses
  %min.iters.check1464 = icmp ult i64 %i.mo, 4
  br i1 %min.iters.check1464, label %vec.epilog.scalar.ph1490.preheader, label %vector.main.loop.iter.check1465

vector.main.loop.iter.check1465:                  ; preds = %iter.check1489
  %min.iters.check1466 = icmp ult i64 %i.mo, 16
  br i1 %min.iters.check1466, label %vec.epilog.ph1493, label %vector.ph1467

vector.ph1467:                                    ; preds = %vector.main.loop.iter.check1465
  %i.mp = and i64 %i.mo, 12
  %n.vec1468 = and i64 %i.mo, -16                 ; 4 uses
  %i.mq = add i64 %i.cc, %n.vec1468
  %i.mr = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.cc, i64 0
  %broadcast.splatinsert1469 = insertelement <4 x i16> poison, i16 %i.km, i64 0
  %broadcast.splat1470 = shufflevector <4 x i16> %broadcast.splatinsert1469, <4 x i16> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.cc
  br label %vector.body1471

vector.body1471:                                  ; preds = %vector.ph1467, %vector.body1471
  %index1472 = phi i64 [ 0, %vector.ph1467 ], [ %index.next1481, %vector.body1471 ] ; 2 uses
  %vec.phi1473 = phi <4 x i64> [ %i.mr, %vector.ph1467 ], [ %i.nj, %vector.body1471 ]
  %vec.phi1474 = phi <4 x i64> [ zeroinitializer, %vector.ph1467 ], [ %i.nk, %vector.body1471 ]
  %vec.phi1475 = phi <4 x i64> [ zeroinitializer, %vector.ph1467 ], [ %i.nl, %vector.body1471 ]
  %vec.phi1476 = phi <4 x i64> [ zeroinitializer, %vector.ph1467 ], [ %i.nm, %vector.body1471 ]
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %index1472 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 12
  %wide.load1477 = load <4 x i8>, ptr %i.mt, align 1, !tbaa !25
  %wide.load1478 = load <4 x i8>, ptr %i.mu, align 1, !tbaa !25
  %wide.load1479 = load <4 x i8>, ptr %i.mv, align 1, !tbaa !25
  %wide.load1480 = load <4 x i8>, ptr %i.mw, align 1, !tbaa !25
  %i.mx = zext <4 x i8> %wide.load1477 to <4 x i16>
  %i.my = zext <4 x i8> %wide.load1478 to <4 x i16>
  %i.mz = zext <4 x i8> %wide.load1479 to <4 x i16>
  %i.na = zext <4 x i8> %wide.load1480 to <4 x i16>
  %i.nb = icmp uge <4 x i16> %broadcast.splat1470, %i.mx
  %i.nc = icmp uge <4 x i16> %broadcast.splat1470, %i.my
  %i.nd = icmp uge <4 x i16> %broadcast.splat1470, %i.mz
  %i.ne = icmp uge <4 x i16> %broadcast.splat1470, %i.na
  %i.nf = zext <4 x i1> %i.nb to <4 x i64>
  %i.ng = zext <4 x i1> %i.nc to <4 x i64>
  %i.nh = zext <4 x i1> %i.nd to <4 x i64>
  %i.ni = zext <4 x i1> %i.ne to <4 x i64>
  %i.nj = add <4 x i64> %vec.phi1473, %i.nf       ; 2 uses
  %i.nk = add <4 x i64> %vec.phi1474, %i.ng       ; 2 uses
  %i.nl = add <4 x i64> %vec.phi1475, %i.nh       ; 2 uses
  %i.nm = add <4 x i64> %vec.phi1476, %i.ni       ; 2 uses
  %index.next1481 = add nuw i64 %index1472, 16    ; 2 uses
  %i.nn = icmp eq i64 %index.next1481, %n.vec1468
  br i1 %i.nn, label %middle.block1482, label %vector.body1471, !llvm.loop !281

middle.block1482:                                 ; preds = %vector.body1471
  %bin.rdx1483 = add <4 x i64> %i.nk, %i.nj
  %bin.rdx1484 = add <4 x i64> %i.nl, %bin.rdx1483
  %bin.rdx1485 = add <4 x i64> %i.nm, %bin.rdx1484
  %i.no = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx1485) ; 3 uses
  %cmp.n1486 = icmp eq i64 %i.mo, %n.vec1468
  br i1 %cmp.n1486, label %.thread817.loopexit842, label %vec.epilog.iter.check1491

vec.epilog.iter.check1491:                        ; preds = %middle.block1482
  %min.epilog.iters.check1492 = icmp eq i64 %i.mp, 0
  br i1 %min.epilog.iters.check1492, label %vec.epilog.scalar.ph1490.preheader, label %vec.epilog.ph1493, !prof !366

vec.epilog.ph1493:                                ; preds = %vector.main.loop.iter.check1465, %vec.epilog.iter.check1491
  %vec.epilog.resume.val1487 = phi i64 [ %n.vec1468, %vec.epilog.iter.check1491 ], [ 0, %vector.main.loop.iter.check1465 ]
  %bc.merge.rdx1488 = phi i64 [ %i.no, %vec.epilog.iter.check1491 ], [ %i.cc, %vector.main.loop.iter.check1465 ]
  %n.vec1494 = and i64 %i.mo, -4                  ; 3 uses
  %i.np = add i64 %i.cc, %n.vec1494
  %i.nq = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx1488, i64 0
  %broadcast.splatinsert1495 = insertelement <4 x i16> poison, i16 %i.km, i64 0
  %broadcast.splat1496 = shufflevector <4 x i16> %broadcast.splatinsert1495, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.cc
  br label %vec.epilog.vector.body1497

vec.epilog.vector.body1497:                       ; preds = %vec.epilog.vector.body1497, %vec.epilog.ph1493
end_hunk_1
