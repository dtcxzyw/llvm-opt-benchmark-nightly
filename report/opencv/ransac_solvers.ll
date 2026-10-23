Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ransac_solvers?download=true
inline.NumInlined: 3298
inline.NumDeleted: 1330
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@"_ZZN2cv4usac15UniversalRANSAC21getIndependentInliersERKNS_3MatERKSt6vectorIiSaIiEERS7_iENK3$_0clEbb":bb.a
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.r, %.lr.ph.split, %bb.n, %.lr.ph.split.us, %bb.p, %.critedge.sink.split.sink.split
  %.sink.in = phi ptr [ %i.ak, %bb.n ], [ %.sink.in.ph, %.critedge.sink.split.sink.split ], [ %i.ak, %bb.p ], [ %i.ak, %.lr.ph.split.us ], [ %i.ak, %.lr.ph.split ], [ %i.ak, %bb.r ]
  %.sink83 = phi i32 [ -1, %bb.n ], [ 1, %.critedge.sink.split.sink.split ], [ -1, %bb.p ], [ -1, %.lr.ph.split.us ], [ -1, %.lr.ph.split ], [ -1, %bb.r ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !58, !nonnull !213, !align !234 ; 2 uses
  %i.io = load i32, ptr %.sink, align 4, !tbaa !62
  %i.ip = add nsw i32 %i.io, %.sink83
  store i32 %i.ip, ptr %.sink, align 4, !tbaa !62
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %bb.q, %.critedge.sink.split, %.thread, %bb.m
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.iq = load i32, ptr %i.a, align 4, !tbaa !62
  %i.ir = sext i32 %i.iq to i64
  %i.is = icmp slt i64 %indvars.iv.next76, %i.ir
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.is, label %bb.b, label %._crit_edge, !llvm.loop !788
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK2cv4usac15UniversalRANSAC10getQualityEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr.37") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1952) %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_4usac7QualityEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !62
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !62
  br label %_ZN2cv3PtrINS_4usac7QualityEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_4usac7QualityEEC2ERKS3_.exit

_ZN2cv3PtrINS_4usac7QualityEEC2ERKS3_.exit:       ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK2cv4usac15UniversalRANSAC13getPointsSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1952) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !171
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv4usac15UniversalRANSAC5getK1Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(1952) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv4usac15UniversalRANSAC3runERNS_3PtrINS0_12RansacOutputEEE(ptr noundef nonnull align 8 dereferenceable(1952) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::ParallelLoopBodyLambdaWrapper", align 8 ; 11 uses
  %3 = alloca %"class.std::function.388", align 8 ; 12 uses
  %4 = alloca %"class.cv::usac::Score", align 4   ; 6 uses
  %5 = alloca %"class.cv::usac::Score", align 4   ; 6 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 10 uses
  %i.c = alloca i8, align 1                       ; 10 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca double, align 8                   ; 6 uses
  %6 = alloca %"class.std::vector.8", align 8     ; 11 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %7 = alloca %"class.std::vector.350", align 8   ; 23 uses
  %8 = alloca %"class.std::vector.355", align 8   ; 21 uses
  %i.g = alloca i8, align 1                       ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 24 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::usac::Score", align 8  ; 26 uses
  %14 = alloca %"class.cv::usac::Score", align 8  ; 9 uses
  %15 = alloca %"class.std::vector", align 8      ; 15 uses
  %i.h = alloca double, align 8                   ; 6 uses
  %i.i = alloca i8, align 1                       ; 9 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 11 uses
  %i.l = alloca i32, align 4                      ; 8 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %18 = alloca %"class.cv::usac::Score", align 8  ; 11 uses
  %19 = alloca %"class.cv::usac::Score", align 4  ; 7 uses
  %20 = alloca %"class.std::vector", align 8      ; 13 uses
  %21 = alloca %"class.std::vector.350", align 8  ; 19 uses
  %22 = alloca %"class.std::vector.8", align 8    ; 19 uses
  %23 = alloca %"class.std::vector.8", align 8    ; 13 uses
  %24 = alloca %class.anon.363, align 8           ; 26 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %i.m = alloca i32, align 4                      ; 21 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i8, align 1                       ; 6 uses
  %26 = alloca %"struct.std::atomic", align 1     ; 5 uses
  %27 = alloca %"struct.std::atomic.365", align 4 ; 6 uses
  %28 = alloca %"struct.std::atomic.365", align 4 ; 5 uses
  %29 = alloca %"struct.std::atomic.365", align 4 ; 5 uses
  %30 = alloca %"struct.std::atomic.365", align 4 ; 5 uses
  %31 = alloca %"struct.std::atomic.365", align 4 ; 5 uses
  %32 = alloca %"struct.std::atomic.367", align 4 ; 5 uses
  %33 = alloca %"class.std::vector.368", align 8  ; 13 uses
  %34 = alloca %"class.std::vector.368", align 8  ; 16 uses
  %35 = alloca %"class.std::vector.350", align 8  ; 17 uses
  %36 = alloca %"class.std::vector.350", align 8  ; 15 uses
  %37 = alloca %"class.std::vector.350", align 8  ; 13 uses
  %38 = alloca %"class.std::vector.350", align 8  ; 12 uses
  %39 = alloca %"class.std::vector.8", align 8    ; 13 uses
  %40 = alloca %"class.std::vector.8", align 8    ; 10 uses
  %41 = alloca %"class.std::vector.373", align 8  ; 15 uses
  %42 = alloca %"class.std::vector.378", align 8  ; 16 uses
  %43 = alloca %"class.std::vector.355", align 8  ; 14 uses
  %44 = alloca %"class.std::vector", align 8      ; 14 uses
  %45 = alloca %"class.std::vector.383", align 8  ; 13 uses
  %46 = alloca %"struct.cv::Ptr.297", align 8     ; 6 uses
  %47 = alloca %"class.cv::Range", align 4        ; 6 uses
  %48 = alloca %"class.std::function.388", align 8 ; 10 uses
  %49 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %51 = alloca %"class.std::vector", align 8      ; 8 uses
  %52 = alloca %"class.std::vector.4", align 8    ; 9 uses
  %53 = alloca %"class.cv::usac::Score", align 8  ; 9 uses
  %54 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %55 = alloca %"struct.cv::Ptr.189", align 8     ; 6 uses
  %56 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %57 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %58 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %59 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %60 = alloca %"class.cv::usac::Score", align 8  ; 7 uses
  %61 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %62 = alloca %"class.std::vector", align 8      ; 14 uses
  %63 = alloca %"class.std::vector.4", align 8    ; 11 uses
  %64 = alloca %"class.std::vector.8", align 8    ; 15 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 9 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !171
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.x = icmp slt i32 %i.q, %i.w
  br i1 %i.x, label %bb.mh, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !79   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i8
  store i8 %i.ae, ptr %i.a, align 1, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !79  ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.ak = zext i1 %i.aj to i8
  store i8 %i.ak, ptr %i.b, align 1, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !79  ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 264
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al) ; 3 uses
  %i.aq = zext i1 %i.ap to i8
  store i8 %i.aq, ptr %i.c, align 1, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !79  ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
  store i32 %i.av, ptr %i.d, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store double 8.000000e-01, ptr %i.e, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.aw = select i1 %i.ap, i32 21, i32 0          ; 2 uses
  store i32 %i.aw, ptr %i.f, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  br i1 %i.ap, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i, label %.thread1279

.thread1279:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef 4368) #26
          to label %.noexc214 unwind label %bb.aa ; 4 uses

.noexc214:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i
  %i.bc = load ptr, ptr %7, align 8, !tbaa !238   ; 5 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !239 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc214, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.bb, %.noexc214 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %i.bc, %.noexc214 ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i.i) #28
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i.i) #28
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 208 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 208
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !13

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc214
  %.not.i8.i = icmp eq ptr %i.bc, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !240
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bj) #27
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit:    ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, %bb.c
  store ptr %i.bb, ptr %7, align 8, !tbaa !238
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !239
  %i.bk = getelementptr inbounds nuw [208 x i8], ptr %i.bb, i64 %i.ax
  store ptr %i.bk, ptr %i.ay, align 8, !tbaa !240
  %.pre = load i32, ptr %i.f, align 4, !tbaa !62  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.bl = zext nneg i32 %.pre to i64              ; 2 uses
  %i.bm = icmp slt i32 %.pre, 0
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
          to label %.noexc222 unwind label %bb.ab

.noexc222:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %.not1189 = icmp eq i32 %.pre, 0
  br i1 %.not1189, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bp = mul nuw nsw i64 %i.bl, 24
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #26
          to label %.noexc223 unwind label %bb.ab ; 4 uses

.noexc223:                                        ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm.exit.i
  %i.br = load ptr, ptr %8, align 8, !tbaa !242   ; 5 uses
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !243 ; 2 uses
  %.not10.i.i.i.i215 = icmp eq ptr %i.br, %i.bs
  br i1 %.not10.i.i.i.i215, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i216

.lr.ph.i.i.i.i216:                                ; preds = %.noexc223, %.lr.ph.i.i.i.i216
  %.012.i.i.i.i217 = phi ptr [ %i.by, %.lr.ph.i.i.i.i216 ], [ %i.bq, %.noexc223 ] ; 3 uses
  %.0911.i.i.i.i218 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i216 ], [ %i.br, %.noexc223 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.bt = load <2 x ptr>, ptr %.0911.i.i.i.i218, align 8, !tbaa !58, !alias.scope !829
  store <2 x ptr> %i.bt, ptr %.012.i.i.i.i217, align 8, !tbaa !58, !alias.scope !828
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i217, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i218, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !187, !alias.scope !829
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !187, !alias.scope !828
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i218, i8 0, i64 24, i1 false), !alias.scope !829
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i218, i64 24 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i217, i64 24
  %.not.i.i.i.i219 = icmp eq ptr %i.bx, %i.bs
  br i1 %.not.i.i.i.i219, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i216, !llvm.loop !14

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i216, %.noexc223
  %.not.i8.i221 = icmp eq ptr %i.br, null
  br i1 %.not.i8.i221, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !244
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.br to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.cc) #27
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.bq, ptr %8, align 8, !tbaa !242
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !243
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bl
  store ptr %i.cd, ptr %i.bn, align 8, !tbaa !244
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE7reserveEm.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE7reserveEm.exit:   ; preds = %.thread1279, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.e
  %i.ce = phi ptr [ %i.az, %.thread1279 ], [ %i.bn, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.bn, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i8 0, ptr %i.g, align 1, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  store i32 0, ptr %13, align 8, !tbaa !246
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 7 uses
  store float f0x7F7FFFFF, ptr %i.cf, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  store i32 0, ptr %14, align 8, !tbaa !246
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  store float f0x7F7FFFFF, ptr %i.cg, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.ch = load i32, ptr %i.p, align 8, !tbaa !171 ; 4 uses
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  store ptr null, ptr %15, align 8, !tbaa !250
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 0, ptr %i.cj, align 8, !tbaa !251
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr null, ptr %i.ck, align 8, !tbaa !250
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  store i32 0, ptr %i.cl, align 8, !tbaa !251
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 4 uses
  store ptr null, ptr %i.cm, align 8, !tbaa !254
  %.not.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE7reserveEm.exit
  %i.cn = add nsw i64 %i.ci, 63                   ; 2 uses
  %i.co = lshr i64 %i.cn, 3
  %i.cp = and i64 %i.co, 2305843009213693944
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #26
          to label %bb.h unwind label %bb.i       ; 4 uses

bb.h:                                             ; preds = %bb.g
  %i.cr = lshr i64 %i.cn, 6                       ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr
  store ptr %i.cs, ptr %i.cm, align 8, !tbaa !254
  store ptr %i.cq, ptr %15, align 8
  store i32 0, ptr %i.cj, align 8
  %i.ct = sdiv i32 %i.ch, 64
  %.sext790 = sext i32 %i.ct to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %.sext790
  %i.cv = and i64 %i.ci, -9223372036854775745
  %i.cw = icmp ugt i64 %i.cv, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.cw, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.cu, i64 %storemerge.idx.i.i.i.i.i.i
  %i.cx = and i32 %i.ch, 63
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.ck, align 8
  store i32 %i.cx, ptr %i.cl, align 8
  %.idx.i.i = shl nuw nsw i64 %i.cr, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cq, i8 0, i64 %.idx.i.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %15, align 8, !tbaa !250  ; 2 uses
  %.not.i.i.i.i224 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i224, label %.body, label %.body.sink.split

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit:               ; preds = %bb.h, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE7reserveEm.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !164, !range !223, !noundef !213
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.cg, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  %i.dd = load i8, ptr %i.c, align 1, !tbaa !224, !range !223, !noundef !213
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !79  ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !49
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 176
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = invoke noundef i32 %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %bb.l unwind label %bb.ac

bb.l:                                             ; preds = %bb.k
  %i.dk = icmp eq i32 %i.dj, 2
  %i.dl = zext i1 %i.dk to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.dm = phi i8 [ 1, %bb.j ], [ %i.dl, %bb.l ]
end_hunk_0
