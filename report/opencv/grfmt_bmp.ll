Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_bmp?download=true
inline.NumInlined: 404
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare noundef i32 @_ZN2cv12RLByteStream8getBytesEPvi(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2cv14IsColorPaletteEPNS_12PaletteEntryEi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN2cv12RLByteStream7getWordEv(ptr noundef nonnull align 8 dereferenceable(65)) local_unnamed_addr #1

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv10BmpDecoder8readDataERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(1888) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 14 uses
  %i.b = alloca i32, align 4                      ; 42 uses
  %2 = alloca %"class.cv::AutoBuffer", align 8    ; 10 uses
  %3 = alloca %"class.cv::AutoBuffer", align 8    ; 12 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %4 = alloca [2 x %"struct.cv::PaletteEntry"], align 4 ; 6 uses
  %i.d = alloca [2 x i8], align 1                 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = tail call noundef i32 @_ZN2cv13validateToIntEm(i64 noundef %i.i) ; 3 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !96
  %i.l = and i32 %i.k, 4064
  %i.m = icmp ne i32 %i.l, 0                      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.n = select i1 %i.m, i32 3, i32 1             ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1820 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !68   ; 2 uses
  %.not = icmp eq i32 %i.p, 15
  %spec.select = select i1 %.not, i32 16, i32 %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !84
  %i.s = tail call { i32, i64 } @_ZN2cv17calculateRowPitchEiiiPKc(i32 noundef %i.r, i32 noundef %spec.select, i32 noundef 4, ptr noundef nonnull @.str.4)
  %i.t = extractvalue { i32, i64 } %i.s, 0        ; 9 uses
  %i.u = load i32, ptr %i.q, align 8, !tbaa !84
  %i.v = tail call noundef i32 @_ZN2cv16calculateRowSizeEiiPKc(i32 noundef %i.u, i32 noundef %i.n, ptr noundef nonnull @.str.4) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1824 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !65
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.er, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 18 uses
  %i.aa = tail call noundef zeroext i1 @_ZN2cv11RBaseStream8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(65) %i.z)
  br i1 %i.aa, label %bb.c, label %bb.er

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !67
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !85
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = sext i32 %i.j to i64
  %i.aj = mul nsw i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aj
  %i.al = sub nsw i32 0, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0239 = phi i32 [ %i.al, %bb.d ], [ %i.j, %bb.c ] ; 13 uses
  %.0232 = phi ptr [ %i.ak, %bb.d ], [ %i.g, %bb.c ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !150
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !150
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 1032, ptr %i.ap, align 8, !tbaa !151
  %i.aq = add nsw i32 %i.t, 32                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %.not.i = icmp ugt i32 %i.aq, 1032
  store i64 %i.ar, ptr %i.an, align 8, !tbaa !151
  br i1 %.not.i, label %bb.f, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.f:                                             ; preds = %bb.e
  %i.as = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #19
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  store ptr %i.as, ptr %2, align 8, !tbaa !150
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit:     ; preds = %bb.e, %.noexc
  br i1 %i.m, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit314, label %bb.g

bb.g:                                             ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit
  %i.at = load i32, ptr %i.o, align 4, !tbaa !68  ; 2 uses
  %i.au = icmp slt i32 %i.at, 9
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.aw = shl nuw nsw i32 1, %i.at
  invoke void @_ZN2cv16CvtPaletteToGrayEPKNS_12PaletteEntryEPhi(ptr noundef nonnull %i.av, ptr noundef nonnull %i.a, i32 noundef %i.aw)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = load i32, ptr %i.q, align 8, !tbaa !84  ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.ay, 3
  %i.ba = add nsw i64 %i.az, 32                   ; 6 uses
  %i.bb = icmp ult i64 %i.ba, 268435456
  br i1 %i.bb, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.ba, i64 noundef 268435456, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv10BmpDecoder8readDataERNS_3MatEE15__cv_check__263) #20
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.s, %bb.f, %bb.h, %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.m:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %i.ap, align 8, !tbaa !151
  %.not.i310 = icmp ugt i64 %i.ba, %i.bd
  br i1 %.not.i310, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.ba, ptr %i.ap, align 8, !tbaa !151
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit314

bb.o:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %3, align 8, !tbaa !150   ; 3 uses
  %.not.i.i311 = icmp eq ptr %i.be, %i.ao
  br i1 %.not.i.i311, label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i312, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.be) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.ao, ptr %3, align 8, !tbaa !150
  br label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i312

_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i312: ; preds = %bb.r, %bb.o
  store i64 %i.ba, ptr %i.ap, align 8, !tbaa !151
  %i.bg = icmp sgt i32 %i.ax, 333
  br i1 %i.bg, label %bb.s, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit314

bb.s:                                             ; preds = %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i312
  %i.bh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #19
          to label %.noexc313 unwind label %bb.l

.noexc313:                                        ; preds = %bb.s
  store ptr %i.bh, ptr %3, align 8, !tbaa !150
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit314

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit314:  ; preds = %.noexc313, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i312, %bb.n, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit
  %i.bi = load ptr, ptr %2, align 8, !tbaa !150   ; 40 uses
  %i.bj = load ptr, ptr %3, align 8, !tbaa !150   ; 2 uses
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !65
  invoke void @_ZN2cv11RBaseStream6setPosEl(ptr noundef nonnull align 8 dereferenceable(65) %i.z, i64 noundef %i.bk)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit314
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !68
  switch i32 %i.bl, label %bb.eb [
    i32 1, label %bb.u
    i32 4, label %bb.aa
    i32 8, label %bb.be
    i32 15, label %bb.ct
    i32 16, label %bb.cz
    i32 24, label %bb.df
    i32 32, label %bb.dl
  ]

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.b, align 4, !tbaa !87
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !85
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph423, label %.loopexit

.lr.ph423:                                        ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bq = sext i32 %.0239 to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph423, %bb.z
  %.1422 = phi ptr [ %.0232, %.lr.ph423 ], [ %i.by, %bb.z ] ; 3 uses
  %i.br = invoke noundef i32 @_ZN2cv12RLByteStream8getBytesEPvi(ptr noundef nonnull align 8 dereferenceable(65) %i.z, ptr noundef %i.bi, i32 noundef %i.t)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.bs = select i1 %i.m, ptr %.1422, ptr %i.bj
  %i.bt = load i32, ptr %i.q, align 8, !tbaa !84
  %i.bu = invoke noundef ptr @_ZN2cv13FillColorRow1EPhS0_iPNS_12PaletteEntryE(ptr noundef %i.bs, ptr noundef %i.bi, i32 noundef %i.bt, ptr noundef nonnull %i.bp)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.w
  br i1 %i.m, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load i32, ptr %i.q, align 8, !tbaa !84
  %.sroa.0351.0.insert.ext = zext i32 %i.bv to i64
  %.sroa.0351.0.insert.insert = or disjoint i64 %.sroa.0351.0.insert.ext, 4294967296
  invoke void @_ZN2cv24icvCvt_BGR2Gray_8u_C3C1REPKhiPhiNS_5Size_IiEEi(ptr noundef %i.bj, i32 noundef 0, ptr noundef %.1422, i32 noundef 0, i64 %.sroa.0351.0.insert.insert, i32 noundef 0)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !87
  %i.bx = add nsw i32 %i.bw, 1                    ; 2 uses
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !87
  %i.by = getelementptr inbounds i8, ptr %.1422, i64 %i.bq
  %i.bz = load i32, ptr %i.bm, align 4, !tbaa !85
  %i.ca = icmp slt i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.v, label %.loopexit, !llvm.loop !128

bb.aa:                                            ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !86
  switch i32 %i.cc, label %.loopexit [
    i32 0, label %bb.ab
    i32 2, label %bb.ah
  ]

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.b, align 4, !tbaa !87
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !85
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph421, label %.loopexit

.lr.ph421:                                        ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ch = sext i32 %.0239 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph421, %bb.ag
  %.2420 = phi ptr [ %.0232, %.lr.ph421 ], [ %i.co, %bb.ag ] ; 3 uses
  %i.ci = invoke noundef i32 @_ZN2cv12RLByteStream8getBytesEPvi(ptr noundef nonnull align 8 dereferenceable(65) %i.z, ptr noundef %i.bi, i32 noundef %i.t)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load i32, ptr %i.q, align 8, !tbaa !84  ; 2 uses
  br i1 %i.m, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ck = invoke noundef ptr @_ZN2cv13FillColorRow4EPhS0_iPNS_12PaletteEntryE(ptr noundef %.2420, ptr noundef %i.bi, i32 noundef %i.cj, ptr noundef nonnull %i.cg)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.af:                                            ; preds = %bb.ad
  %i.cl = invoke noundef ptr @_ZN2cv12FillGrayRow4EPhS0_iS0_(ptr noundef %.2420, ptr noundef %i.bi, i32 noundef %i.cj, ptr noundef nonnull %i.a)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.cm = load i32, ptr %i.b, align 4, !tbaa !87
  %i.cn = add nsw i32 %i.cm, 1                    ; 2 uses
  store i32 %i.cn, ptr %i.b, align 4, !tbaa !87
  %i.co = getelementptr inbounds i8, ptr %.2420, i64 %i.ch
  %i.cp = load i32, ptr %i.cd, align 4, !tbaa !85
  %i.cq = icmp slt i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.ac, label %.loopexit, !llvm.loop !129

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.cr = sext i32 %i.v to i64
  %i.cs = getelementptr inbounds i8, ptr %.0232, i64 %i.cr
  store ptr %i.cs, ptr %i.c, align 8, !tbaa !152
  store i32 0, ptr %i.b, align 4, !tbaa !87
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.cw = zext nneg i32 %i.n to i64               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.ah
  %.3 = phi ptr [ %.0232, %bb.ah ], [ %.3.be, %.backedge.backedge ] ; 9 uses
  %i.cy = invoke noundef i32 @_ZN2cv12RLByteStream7getWordEv(ptr noundef nonnull align 8 dereferenceable(65) %i.z)
          to label %bb.ai unwind label %bb.an     ; 3 uses

bb.ai:                                            ; preds = %.backedge
  %i.cz = and i32 %i.cy, 255                      ; 2 uses
  %i.da = ashr i32 %i.cy, 8                       ; 7 uses
  %.not293 = icmp eq i32 %i.cz, 0
  br i1 %.not293, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.db = ashr i32 %i.cy, 12
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !80
  store i32 %i.de, ptr %4, align 4, !tbaa !80
  %i.df = and i32 %i.da, 15
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !80
  store i32 %i.di, ptr %i.cu, align 4, !tbaa !80
  %i.dj = getelementptr inbounds i8, ptr %i.a, i64 %i.dc
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !80
  store i8 %i.dk, ptr %i.d, align 1, !tbaa !80
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dg
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !80
  store i8 %i.dm, ptr %i.cv, align 1, !tbaa !80
  %i.dn = mul nuw nsw i32 %i.cz, %i.n
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %.3, i64 %i.do ; 3 uses
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !152
  %.not297 = icmp ugt ptr %i.dp, %i.dq
  br i1 %.not297, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.aj
  br i1 %i.m, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.preheader.split.us
  %.0241.us = phi i32 [ %i.ea, %.preheader.split.us ], [ 0, %.preheader ] ; 2 uses
  %.4.us = phi ptr [ %i.eb, %.preheader.split.us ], [ %.3, %.preheader ] ; 4 uses
  %i.dr = zext nneg i32 %.0241.us to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dr ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !89
  store i8 %i.dt, ptr %.4.us, align 1, !tbaa !80
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !90
  %i.dw = getelementptr inbounds nuw i8, ptr %.4.us, i64 1
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !80
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !91
  %i.dz = getelementptr inbounds nuw i8, ptr %.4.us, i64 2
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !80
  %i.ea = xor i32 %.0241.us, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.4.us, i64 %i.cw ; 3 uses
  %i.ec = icmp ult ptr %i.eb, %i.dp
  br i1 %i.ec, label %.preheader.split.us, label %.split.us, !llvm.loop !130

.thread:                                          ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.thread355

.preheader.split:                                 ; preds = %.preheader, %.preheader.split
  %.0241 = phi i32 [ %i.eg, %.preheader.split ], [ 0, %.preheader ] ; 2 uses
  %.4 = phi ptr [ %i.eh, %.preheader.split ], [ %.3, %.preheader ] ; 2 uses
  %i.ed = zext nneg i32 %.0241 to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !80
  store i8 %i.ef, ptr %.4, align 1, !tbaa !80
  %i.eg = xor i32 %.0241, 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.4, i64 %i.cw ; 3 uses
  %i.ei = icmp ult ptr %i.eh, %i.dp
  br i1 %i.ei, label %.preheader.split, label %.split.us, !llvm.loop !130

.split.us:                                        ; preds = %.preheader.split, %.preheader.split.us
  %.us-phi419 = phi ptr [ %i.eb, %.preheader.split.us ], [ %i.eh, %.preheader.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.backedge.backedge
end_hunk_0
begin_hunk_1_@_ZN2cv10BmpDecoder8readDataERNS_3MatE:bb.a
  %i.iy = select i1 %i.il, i64 %i.ix, i64 0
  %i.iz = add nsw i64 %i.iy, %.0231               ; 2 uses
  %.not286 = icmp slt i32 %i.iv, %i.iu
  br i1 %.not286, label %bb.cn, label %.thread374

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.m, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %.sroa.0.0.copyload = load i32, ptr %i.gp, align 8, !tbaa !80
  %i.ja = invoke noundef ptr @_ZN2cv12FillUniColorEPhRS0_iiRiilNS_12PaletteEntryE(ptr noundef %.11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %.0239, i32 noundef %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.iu, i64 noundef %i.iz, i32 %.sroa.0.0.copyload)
          to label %bb.cq unwind label %bb.bw

bb.cp:                                            ; preds = %bb.cn
  %i.jb = load i8, ptr %i.a, align 16, !tbaa !80
  %i.jc = invoke noundef ptr @_ZN2cv11FillUniGrayEPhRS0_iiRiilh(ptr noundef %.11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %.0239, i32 noundef %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.iu, i64 noundef %i.iz, i8 noundef zeroext %i.jb)
          to label %bb.cq unwind label %bb.bw

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.16 = phi ptr [ %i.ja, %bb.co ], [ %i.jc, %bb.cp ]
  %i.jd = load i32, ptr %i.b, align 4, !tbaa !87  ; 2 uses
  %i.je = load i32, ptr %i.go, align 4, !tbaa !85 ; 2 uses
  %.not287 = icmp slt i32 %i.jd, %i.je
  br i1 %.not287, label %bb.cr, label %.thread374

bb.cr:                                            ; preds = %bb.cq, %bb.ch
  %i.jf = phi i32 [ %i.je, %bb.cq ], [ %.pre454, %bb.ch ]
  %i.jg = phi i32 [ %i.jd, %bb.cq ], [ %.pre453, %bb.ch ]
  %.17 = phi ptr [ %.16, %bb.cq ], [ %.11, %bb.ch ]
  %.not288 = icmp slt i32 %i.jg, %i.jf
  br i1 %.not288, label %.backedge610, label %.thread374

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, %bb.bw
  %.pn291.pn = phi { ptr, i32 } [ %i.hu, %bb.bw ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %.loopexit.split-lp

.thread374:                                       ; preds = %bb.cr, %bb.bs, %bb.cm, %bb.cq, %bb.bu, %bb.bo
  %.1268 = phi i1 [ false, %bb.bo ], [ false, %bb.bu ], [ true, %bb.cm ], [ true, %bb.cq ], [ true, %bb.bs ], [ true, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %.loopexit

bb.ct:                                            ; preds = %bb.t
  store i32 0, ptr %i.b, align 4, !tbaa !87
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !85
  %i.jj = icmp sgt i32 %i.ji, 0
  br i1 %i.jj, label %.lr.ph416, label %.loopexit

.lr.ph416:                                        ; preds = %bb.ct
  %i.jk = sext i32 %.0239 to i64
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph416, %bb.cy
  %.21415 = phi ptr [ %.0232, %.lr.ph416 ], [ %i.jp, %bb.cy ] ; 3 uses
  %i.jl = invoke noundef i32 @_ZN2cv12RLByteStream8getBytesEPvi(ptr noundef nonnull align 8 dereferenceable(65) %i.z, ptr noundef %i.bi, i32 noundef %i.t)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cv:                                            ; preds = %bb.cu
  %i.jm = load i32, ptr %i.q, align 8, !tbaa !84
  %.sroa.0347.0.insert.ext = zext i32 %i.jm to i64
  %.sroa.0347.0.insert.insert = or disjoint i64 %.sroa.0347.0.insert.ext, 4294967296 ; 2 uses
  br i1 %i.m, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN2cv27icvCvt_BGR5552Gray_8u_C2C1REPKhiPhiNS_5Size_IiEE(ptr noundef %i.bi, i32 noundef 0, ptr noundef %.21415, i32 noundef 0, i64 %.sroa.0347.0.insert.insert)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cv
  invoke void @_ZN2cv26icvCvt_BGR5552BGR_8u_C2C3REPKhiPhiNS_5Size_IiEE(ptr noundef %i.bi, i32 noundef 0, ptr noundef %.21415, i32 noundef 0, i64 %.sroa.0347.0.insert.insert)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %i.jn = load i32, ptr %i.b, align 4, !tbaa !87
  %i.jo = add nsw i32 %i.jn, 1                    ; 2 uses
  store i32 %i.jo, ptr %i.b, align 4, !tbaa !87
  %i.jp = getelementptr inbounds i8, ptr %.21415, i64 %i.jk
  %i.jq = load i32, ptr %i.jh, align 4, !tbaa !85
  %i.jr = icmp slt i32 %i.jo, %i.jq
  br i1 %i.jr, label %bb.cu, label %.loopexit, !llvm.loop !132

bb.cz:                                            ; preds = %bb.t
  store i32 0, ptr %i.b, align 4, !tbaa !87
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !85
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %.lr.ph414, label %.loopexit

.lr.ph414:                                        ; preds = %bb.cz
  %i.jv = sext i32 %.0239 to i64
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph414, %bb.de
  %.22413 = phi ptr [ %.0232, %.lr.ph414 ], [ %i.ka, %bb.de ] ; 3 uses
  %i.jw = invoke noundef i32 @_ZN2cv12RLByteStream8getBytesEPvi(ptr noundef nonnull align 8 dereferenceable(65) %i.z, ptr noundef %i.bi, i32 noundef %i.t)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.db:                                            ; preds = %bb.da
  %i.jx = load i32, ptr %i.q, align 8, !tbaa !84
  %.sroa.0343.0.insert.ext = zext i32 %i.jx to i64
  %.sroa.0343.0.insert.insert = or disjoint i64 %.sroa.0343.0.insert.ext, 4294967296 ; 2 uses
  br i1 %i.m, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN2cv27icvCvt_BGR5652Gray_8u_C2C1REPKhiPhiNS_5Size_IiEE(ptr noundef %i.bi, i32 noundef 0, ptr noundef %.22413, i32 noundef 0, i64 %.sroa.0343.0.insert.insert)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.db
  invoke void @_ZN2cv26icvCvt_BGR5652BGR_8u_C2C3REPKhiPhiNS_5Size_IiEE(ptr noundef %i.bi, i32 noundef 0, ptr noundef %.22413, i32 noundef 0, i64 %.sroa.0343.0.insert.insert)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %i.jy = load i32, ptr %i.b, align 4, !tbaa !87
  %i.jz = add nsw i32 %i.jy, 1                    ; 2 uses
  store i32 %i.jz, ptr %i.b, align 4, !tbaa !87
  %i.ka = getelementptr inbounds i8, ptr %.22413, i64 %i.jv
  %i.kb = load i32, ptr %i.js, align 4, !tbaa !85
  %i.kc = icmp slt i32 %i.jz, %i.kb
  br i1 %i.kc, label %bb.da, label %.loopexit, !llvm.loop !133

bb.df:                                            ; preds = %bb.t
  store i32 0, ptr %i.b, align 4, !tbaa !87
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !85
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %.lr.ph412, label %.loopexit

.lr.ph412:                                        ; preds = %bb.df
  %i.kg = sext i32 %.0239 to i64
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph412, %bb.dk
  %.23411 = phi ptr [ %.0232, %.lr.ph412 ], [ %i.kn, %bb.dk ] ; 3 uses
  %i.kh = invoke noundef i32 @_ZN2cv12RLByteStream8getBytesEPvi(ptr noundef nonnull align 8 dereferenceable(65) %i.z, ptr noundef %i.bi, i32 noundef %i.t)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dh:                                            ; preds = %bb.dg
  %i.ki = load i32, ptr %i.q, align 8, !tbaa !84  ; 2 uses
  br i1 %i.m, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.sroa.0341.0.insert.ext = zext i32 %i.ki to i64
  %.sroa.0341.0.insert.insert = or disjoint i64 %.sroa.0341.0.insert.ext, 4294967296
  invoke void @_ZN2cv24icvCvt_BGR2Gray_8u_C3C1REPKhiPhiNS_5Size_IiEEi(ptr noundef %i.bi, i32 noundef 0, ptr noundef %.23411, i32 noundef 0, i64 %.sroa.0341.0.insert.insert, i32 noundef 0)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.dh
  %i.kj = mul nsw i32 %i.ki, 3
  %i.kk = sext i32 %i.kj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.23411, ptr align 1 %i.bi, i64 %i.kk, i1 false)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.kl = load i32, ptr %i.b, align 4, !tbaa !87
  %i.km = add nsw i32 %i.kl, 1                    ; 2 uses
  store i32 %i.km, ptr %i.b, align 4, !tbaa !87
  %i.kn = getelementptr inbounds i8, ptr %.23411, i64 %i.kg
  %i.ko = load i32, ptr %i.kd, align 4, !tbaa !85
  %i.kp = icmp slt i32 %i.km, %i.ko
  br i1 %i.kp, label %bb.dg, label %.loopexit, !llvm.loop !134

bb.dl:                                            ; preds = %bb.t
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 1852 ; 6 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !87
  %i.ks = icmp sgt i32 %i.kr, -1
  br i1 %i.ks, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !87
  %i.kv = icmp sgt i32 %i.ku, -1
  br i1 %i.kv, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !87
  %i.ky = icmp sgt i32 %i.kx, -1
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dl
  %i.kz = phi i1 [ false, %bb.dm ], [ false, %bb.dl ], [ %i.ky, %bb.dn ] ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !87
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !85
  %i.lc = icmp sgt i32 %i.lb, 0
  br i1 %i.lc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.do
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 1836 ; 7 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 1868 ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 5 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 1856 ; 5 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 1872 ; 5 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 1844 ; 5 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1860 ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 1876 ; 5 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.lo = sext i32 %.0239 to i64                  ; 4 uses
  %scevgep558 = getelementptr i8, ptr %i.bi, i64 4 ; 2 uses
  %scevgep560 = getelementptr inbounds nuw i8, ptr %0, i64 1880 ; 2 uses
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us
  %indvar554 = phi i64 [ %indvar.next555, %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %.24410.us = phi ptr [ %i.qf, %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us ], [ %.0232, %.lr.ph ] ; 10 uses
  %13 = mul i64 %indvar554, %i.lo
  %14 = getelementptr i8, ptr %.0232, i64 %13
  %scevgep556 = getelementptr i8, ptr %14, i64 3
  %i.lp = invoke noundef i32 @_ZN2cv12RLByteStream8getBytesEPvi(ptr noundef nonnull align 8 dereferenceable(65) %i.z, ptr noundef %i.bi, i32 noundef %i.t)
          to label %bb.dp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dp:                                            ; preds = %.lr.ph.split.us
  %i.lq = load i32, ptr %1, align 8, !tbaa !96
  %i.lr = lshr i32 %i.lq, 5
  %i.ls = and i32 %i.lr, 127
  switch i32 %i.ls, label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us [
    i32 2, label %bb.dv
    i32 3, label %bb.dq
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.lt = load i32, ptr %i.q, align 8, !tbaa !84  ; 3 uses
  br i1 %i.kz, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lu = shl nsw i32 %i.lt, 2
  %i.lv = sext i32 %i.lu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.24410.us, ptr align 1 %i.bi, i64 %i.lv, i1 false)
  br label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us

bb.ds:                                            ; preds = %bb.dq
  %i.lw = icmp sgt i32 %i.lt, 0
  br i1 %i.lw, label %.lr.ph.split.us.i.us, label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us

.lr.ph.split.us.i.us:                             ; preds = %bb.ds, %bb.du
  %.023.us.i.us = phi i32 [ %i.ni, %bb.du ], [ 0, %bb.ds ]
  %.01822.us.i.us = phi ptr [ %i.nj, %bb.du ], [ %.24410.us, %bb.ds ] ; 5 uses
  %.01921.us.i.us = phi ptr [ %i.nk, %bb.du ], [ %i.bi, %bb.ds ] ; 2 uses
  %i.lx = load i32, ptr %.01921.us.i.us, align 4, !tbaa !87 ; 4 uses
  %i.ly = load i32, ptr %i.li, align 4, !tbaa !87
  %i.lz = and i32 %i.ly, %i.lx
  %i.ma = load i32, ptr %i.lj, align 4, !tbaa !87
  %i.mb = lshr i32 %i.lz, %i.ma
  %i.mc = uitofp i32 %i.mb to float
  %i.md = load float, ptr %i.lk, align 4, !tbaa !70
  %i.me = fmul float %i.md, %i.mc
  %i.mf = fptoui float %i.me to i8
  store i8 %i.mf, ptr %.01822.us.i.us, align 1, !tbaa !80
  %i.mg = load i32, ptr %i.lf, align 8, !tbaa !87
  %i.mh = and i32 %i.mg, %i.lx
  %i.mi = load i32, ptr %i.lg, align 8, !tbaa !87
  %i.mj = lshr i32 %i.mh, %i.mi
  %i.mk = uitofp i32 %i.mj to float
  %i.ml = load float, ptr %i.lh, align 8, !tbaa !70
  %i.mm = fmul float %i.ml, %i.mk
  %i.mn = fptoui float %i.mm to i8
  %i.mo = getelementptr inbounds nuw i8, ptr %.01822.us.i.us, i64 1
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !80
  %i.mp = load i32, ptr %i.ld, align 4, !tbaa !87
  %i.mq = and i32 %i.mp, %i.lx
  %i.mr = load i32, ptr %i.kq, align 4, !tbaa !87
  %i.ms = lshr i32 %i.mq, %i.mr
  %i.mt = uitofp i32 %i.ms to float
  %i.mu = load float, ptr %i.le, align 4, !tbaa !70
  %i.mv = fmul float %i.mu, %i.mt
  %i.mw = fptoui float %i.mv to i8
  %i.mx = getelementptr inbounds nuw i8, ptr %.01822.us.i.us, i64 2
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !80
  %i.my = load i32, ptr %i.ll, align 8, !tbaa !87 ; 2 uses
  %i.mz = icmp sgt i32 %i.my, -1
  br i1 %i.mz, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.lr.ph.split.us.i.us
  %i.na = load i32, ptr %i.lm, align 8, !tbaa !87
  %i.nb = and i32 %i.na, %i.lx
  %i.nc = lshr i32 %i.nb, %i.my
  %i.nd = uitofp i32 %i.nc to float
  %i.ne = load float, ptr %i.ln, align 8, !tbaa !70
  %i.nf = fmul float %i.ne, %i.nd
  %i.ng = fptoui float %i.nf to i8
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.lr.ph.split.us.i.us
  %.sink.i.us = phi i8 [ %i.ng, %bb.dt ], [ -1, %.lr.ph.split.us.i.us ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.01822.us.i.us, i64 3
  store i8 %.sink.i.us, ptr %i.nh, align 1, !tbaa !80
  %i.ni = add nuw nsw i32 %.023.us.i.us, 1        ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.01822.us.i.us, i64 4
  %i.nk = getelementptr inbounds nuw i8, ptr %.01921.us.i.us, i64 4
  %exitcond25.not.i.us = icmp eq i32 %i.ni, %i.lt
  br i1 %exitcond25.not.i.us, label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us, label %.lr.ph.split.us.i.us, !llvm.loop !135

bb.dv:                                            ; preds = %bb.dp
  %i.nl = load i32, ptr %i.q, align 8, !tbaa !84  ; 6 uses
  br i1 %i.kz, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.sroa.0.0.insert.ext.us = zext i32 %i.nl to i64
  %.sroa.0.0.insert.insert.us = or disjoint i64 %.sroa.0.0.insert.ext.us, 4294967296
  invoke void @_ZN2cv24icvCvt_BGRA2BGR_8u_C4C3REPKhiPhiNS_5Size_IiEEi(ptr noundef %i.bi, i32 noundef 0, ptr noundef %.24410.us, i32 noundef 0, i64 %.sroa.0.0.insert.insert.us, i32 noundef 0)
          to label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dx:                                            ; preds = %bb.dv
  %i.nm = icmp sgt i32 %i.nl, 0
  br i1 %i.nm, label %.lr.ph.split.i.us.preheader, label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us

.lr.ph.split.i.us.preheader:                      ; preds = %bb.dx
  %i.nn = zext nneg i32 %i.nl to i64              ; 2 uses
  %min.iters.check569 = icmp ult i32 %i.nl, 4
  br i1 %min.iters.check569, label %.lr.ph.split.i.us.preheader622, label %vector.memcheck553

vector.memcheck553:                               ; preds = %.lr.ph.split.i.us.preheader
  %i.no = add nsw i32 %i.nl, -1
  %i.np = zext i32 %i.no to i64                   ; 2 uses
  %i.nq = mul nuw nsw i64 %i.np, 3
  %scevgep557 = getelementptr i8, ptr %scevgep556, i64 %i.nq ; 2 uses
  %i.nr = shl nuw nsw i64 %i.np, 2
  %scevgep559 = getelementptr i8, ptr %scevgep558, i64 %i.nr
  %bound0561 = icmp ult ptr %.24410.us, %scevgep559
  %bound1562 = icmp ult ptr %i.bi, %scevgep557
  %found.conflict563 = and i1 %bound0561, %bound1562
  %bound0564 = icmp ult ptr %.24410.us, %scevgep560
  %bound1565 = icmp ult ptr %i.ld, %scevgep557
  %found.conflict566 = and i1 %bound0564, %bound1565
  %conflict.rdx567 = or i1 %found.conflict563, %found.conflict566
  br i1 %conflict.rdx567, label %.lr.ph.split.i.us.preheader622, label %vector.ph570

vector.ph570:                                     ; preds = %vector.memcheck553
  %n.vec571 = and i64 %i.nn, 2147483644           ; 5 uses
  %i.ns = trunc nuw nsw i64 %n.vec571 to i32
  %i.nt = mul nuw nsw i64 %n.vec571, 3
  %i.nu = getelementptr i8, ptr %.24410.us, i64 %i.nt
  %i.nv = shl nuw nsw i64 %n.vec571, 2
  %i.nw = getelementptr i8, ptr %i.bi, i64 %i.nv
  %i.nx = load <1 x i32>, ptr %i.li, align 4
  %broadcast.splat578 = shufflevector <1 x i32> %i.nx, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.ny = load <1 x i32>, ptr %i.lj, align 4
  %broadcast.splat580 = shufflevector <1 x i32> %i.ny, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.nz = load float, ptr %i.lk, align 4, !tbaa !70, !alias.scope !153
  %broadcast.splatinsert581 = insertelement <4 x float> poison, float %i.nz, i64 0
  %broadcast.splat582 = shufflevector <4 x float> %broadcast.splatinsert581, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oa = load <1 x i32>, ptr %i.lf, align 8
  %broadcast.splat584 = shufflevector <1 x i32> %i.oa, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.ob = load <1 x i32>, ptr %i.lg, align 8
  %broadcast.splat586 = shufflevector <1 x i32> %i.ob, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.oc = load <1 x float>, ptr %i.lh, align 8
  %broadcast.splat588 = shufflevector <1 x float> %i.oc, <1 x float> poison, <4 x i32> zeroinitializer
  %i.od = load <1 x i32>, ptr %i.ld, align 4
  %broadcast.splat590 = shufflevector <1 x i32> %i.od, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.oe = load <1 x i32>, ptr %i.kq, align 4
  %broadcast.splat592 = shufflevector <1 x i32> %i.oe, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.of = load <1 x float>, ptr %i.le, align 4
  %broadcast.splat594 = shufflevector <1 x float> %i.of, <1 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body572

vector.body572:                                   ; preds = %vector.body572, %vector.ph570
  %index573 = phi i64 [ 0, %vector.ph570 ], [ %index.next595, %vector.body572 ] ; 3 uses
  %i.og = mul i64 %index573, 3
  %next.gep574 = getelementptr i8, ptr %.24410.us, i64 %i.og
  %i.oh = shl i64 %index573, 2
  %next.gep575 = getelementptr i8, ptr %i.bi, i64 %i.oh
  %wide.load576 = load <4 x i32>, ptr %next.gep575, align 4, !tbaa !87, !alias.scope !154 ; 3 uses
  %i.oi = and <4 x i32> %broadcast.splat578, %wide.load576
  %i.oj = lshr <4 x i32> %i.oi, %broadcast.splat580
  %i.ok = uitofp <4 x i32> %i.oj to <4 x float>
  %i.ol = fmul <4 x float> %broadcast.splat582, %i.ok
  %i.om = and <4 x i32> %broadcast.splat584, %wide.load576
  %i.on = lshr <4 x i32> %i.om, %broadcast.splat586
  %i.oo = uitofp <4 x i32> %i.on to <4 x float>
  %i.op = fmul <4 x float> %broadcast.splat588, %i.oo
  %i.oq = and <4 x i32> %broadcast.splat590, %wide.load576
  %i.or = lshr <4 x i32> %i.oq, %broadcast.splat592
  %i.os = uitofp <4 x i32> %i.or to <4 x float>
  %i.ot = fmul <4 x float> %broadcast.splat594, %i.os
  %i.ou = fptoui <4 x float> %i.ot to <4 x i8>
  %i.ov = shufflevector <4 x float> %i.ol, <4 x float> %i.op, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ow = fptoui <8 x float> %i.ov to <8 x i8>
  %i.ox = shufflevector <4 x i8> %i.ou, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x i8> %i.ow, <8 x i8> %i.ox, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i8> %interleaved.vec, ptr %next.gep574, align 1, !tbaa !80, !alias.scope !155, !noalias !156
  %index.next595 = add nuw i64 %index573, 4       ; 2 uses
  %i.oy = icmp eq i64 %index.next595, %n.vec571
  br i1 %i.oy, label %middle.block596, label %vector.body572, !llvm.loop !140

middle.block596:                                  ; preds = %vector.body572
  %cmp.n597 = icmp eq i64 %n.vec571, %i.nn
  br i1 %cmp.n597, label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us, label %.lr.ph.split.i.us.preheader622

.lr.ph.split.i.us.preheader622:                   ; preds = %vector.memcheck553, %.lr.ph.split.i.us.preheader, %middle.block596
  %.023.i.us.ph = phi i32 [ 0, %vector.memcheck553 ], [ 0, %.lr.ph.split.i.us.preheader ], [ %i.ns, %middle.block596 ]
  %.01822.i.us.ph = phi ptr [ %.24410.us, %vector.memcheck553 ], [ %.24410.us, %.lr.ph.split.i.us.preheader ], [ %i.nu, %middle.block596 ]
  %.01921.i.us.ph = phi ptr [ %i.bi, %vector.memcheck553 ], [ %i.bi, %.lr.ph.split.i.us.preheader ], [ %i.nw, %middle.block596 ]
  br label %.lr.ph.split.i.us

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.i.us.preheader622, %.lr.ph.split.i.us
  %.023.i.us = phi i32 [ %i.qa, %.lr.ph.split.i.us ], [ %.023.i.us.ph, %.lr.ph.split.i.us.preheader622 ]
  %.01822.i.us = phi ptr [ %i.qb, %.lr.ph.split.i.us ], [ %.01822.i.us.ph, %.lr.ph.split.i.us.preheader622 ] ; 4 uses
  %.01921.i.us = phi ptr [ %i.qc, %.lr.ph.split.i.us ], [ %.01921.i.us.ph, %.lr.ph.split.i.us.preheader622 ] ; 2 uses
  %i.oz = load i32, ptr %.01921.i.us, align 4, !tbaa !87 ; 3 uses
  %i.pa = load i32, ptr %i.li, align 4, !tbaa !87
  %i.pb = and i32 %i.pa, %i.oz
  %i.pc = load i32, ptr %i.lj, align 4, !tbaa !87
  %i.pd = lshr i32 %i.pb, %i.pc
  %i.pe = uitofp i32 %i.pd to float
  %i.pf = load float, ptr %i.lk, align 4, !tbaa !70
  %i.pg = fmul float %i.pf, %i.pe
  %i.ph = fptoui float %i.pg to i8
  store i8 %i.ph, ptr %.01822.i.us, align 1, !tbaa !80
  %i.pi = load i32, ptr %i.lf, align 8, !tbaa !87
  %i.pj = and i32 %i.pi, %i.oz
  %i.pk = load i32, ptr %i.lg, align 8, !tbaa !87
  %i.pl = lshr i32 %i.pj, %i.pk
  %i.pm = uitofp i32 %i.pl to float
  %i.pn = load float, ptr %i.lh, align 8, !tbaa !70
  %i.po = fmul float %i.pn, %i.pm
  %i.pp = fptoui float %i.po to i8
  %i.pq = getelementptr inbounds nuw i8, ptr %.01822.i.us, i64 1
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !80
  %i.pr = load i32, ptr %i.ld, align 4, !tbaa !87
  %i.ps = and i32 %i.pr, %i.oz
  %i.pt = load i32, ptr %i.kq, align 4, !tbaa !87
  %i.pu = lshr i32 %i.ps, %i.pt
  %i.pv = uitofp i32 %i.pu to float
  %i.pw = load float, ptr %i.le, align 4, !tbaa !70
  %i.px = fmul float %i.pw, %i.pv
  %i.py = fptoui float %i.px to i8
  %i.pz = getelementptr inbounds nuw i8, ptr %.01822.i.us, i64 2
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !80
  %i.qa = add nuw nsw i32 %.023.i.us, 1           ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.01822.i.us, i64 3
  %i.qc = getelementptr inbounds nuw i8, ptr %.01921.i.us, i64 4
  %exitcond.not.i319.us = icmp eq i32 %i.qa, %i.nl
  br i1 %exitcond.not.i319.us, label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us, label %.lr.ph.split.i.us, !llvm.loop !141

_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us: ; preds = %bb.du, %.lr.ph.split.i.us, %middle.block596, %bb.dx, %bb.dw, %bb.ds, %bb.dr, %bb.dp
  %i.qd = load i32, ptr %i.b, align 4, !tbaa !87
  %i.qe = add nsw i32 %i.qd, 1                    ; 2 uses
  store i32 %i.qe, ptr %i.b, align 4, !tbaa !87
  %i.qf = getelementptr i8, ptr %.24410.us, i64 %i.lo
  %i.qg = load i32, ptr %i.la, align 4, !tbaa !85
  %i.qh = icmp slt i32 %i.qe, %i.qg
  %indvar.next555 = add i64 %indvar554, 1
  br i1 %i.qh, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !142

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit
  %indvar = phi i64 [ %indvar.next, %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit ], [ 0, %.lr.ph ] ; 2 uses
  %.24410 = phi ptr [ %i.tl, %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit ], [ %.0232, %.lr.ph ] ; 8 uses
  %15 = mul i64 %indvar, %i.lo
  %16 = getelementptr i8, ptr %.0232, i64 %15
  %scevgep = getelementptr i8, ptr %16, i64 1
  %i.qi = invoke noundef i32 @_ZN2cv12RLByteStream8getBytesEPvi(ptr noundef nonnull align 8 dereferenceable(65) %i.z, ptr noundef %i.bi, i32 noundef %i.t)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dy:                                            ; preds = %.lr.ph.split
  %i.qj = load i32, ptr %i.q, align 8, !tbaa !84  ; 6 uses
  br i1 %i.kz, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.qk = icmp sgt i32 %i.qj, 0
  br i1 %i.qk, label %.lr.ph.i.preheader, label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit

.lr.ph.i.preheader:                               ; preds = %bb.dz
  %i.ql = zext nneg i32 %i.qj to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.qj, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader627, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.qm = add nsw i32 %i.qj, -1
  %i.qn = zext i32 %i.qm to i64                   ; 2 uses
  %scevgep527 = getelementptr i8, ptr %scevgep, i64 %i.qn ; 2 uses
  %i.qo = shl nuw nsw i64 %i.qn, 2
  %scevgep529 = getelementptr i8, ptr %scevgep558, i64 %i.qo
  %bound0 = icmp ult ptr %.24410, %scevgep529
  %bound1 = icmp ult ptr %i.bi, %scevgep527
  %found.conflict = and i1 %bound0, %bound1
  %bound0531 = icmp ult ptr %.24410, %scevgep560
  %bound1532 = icmp ult ptr %i.ld, %scevgep527
  %found.conflict533 = and i1 %bound0531, %bound1532
  %conflict.rdx = or i1 %found.conflict, %found.conflict533
  br i1 %conflict.rdx, label %.lr.ph.i.preheader627, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ql, 2147483644              ; 5 uses
  %i.qp = getelementptr i8, ptr %.24410, i64 %n.vec
  %i.qq = shl nuw nsw i64 %n.vec, 2
  %i.qr = getelementptr i8, ptr %i.bi, i64 %i.qq
  %i.qs = trunc nuw nsw i64 %n.vec to i32
  %i.qt = load <1 x i32>, ptr %i.ld, align 4
  %broadcast.splat = shufflevector <1 x i32> %i.qt, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.qu = load <1 x i32>, ptr %i.kq, align 4
  %broadcast.splat536 = shufflevector <1 x i32> %i.qu, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.qv = load <1 x float>, ptr %i.le, align 4
  %broadcast.splat538 = shufflevector <1 x float> %i.qv, <1 x float> poison, <4 x i32> zeroinitializer
  %i.qw = load <1 x i32>, ptr %i.lf, align 8
  %broadcast.splat540 = shufflevector <1 x i32> %i.qw, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.qx = load <1 x i32>, ptr %i.lg, align 8
  %broadcast.splat542 = shufflevector <1 x i32> %i.qx, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.qy = load <1 x float>, ptr %i.lh, align 8
  %broadcast.splat544 = shufflevector <1 x float> %i.qy, <1 x float> poison, <4 x i32> zeroinitializer
  %i.qz = load <1 x i32>, ptr %i.li, align 4
  %broadcast.splat546 = shufflevector <1 x i32> %i.qz, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.ra = load <1 x i32>, ptr %i.lj, align 4
  %broadcast.splat548 = shufflevector <1 x i32> %i.ra, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.rb = load float, ptr %i.lk, align 4, !tbaa !70, !alias.scope !157
  %broadcast.splatinsert549 = insertelement <4 x float> poison, float %i.rb, i64 0
  %broadcast.splat550 = shufflevector <4 x float> %broadcast.splatinsert549, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.24410, i64 %index
  %i.rc = shl i64 %index, 2
  %next.gep534 = getelementptr i8, ptr %i.bi, i64 %i.rc
  %wide.load = load <4 x i32>, ptr %next.gep534, align 4, !tbaa !87, !alias.scope !158 ; 3 uses
  %i.rd = and <4 x i32> %broadcast.splat, %wide.load
  %i.re = lshr <4 x i32> %i.rd, %broadcast.splat536
  %i.rf = uitofp <4 x i32> %i.re to <4 x float>
  %i.rg = fmul <4 x float> %broadcast.splat538, %i.rf
  %i.rh = fptoui <4 x float> %i.rg to <4 x i8>
  %i.ri = and <4 x i32> %broadcast.splat540, %wide.load
  %i.rj = lshr <4 x i32> %i.ri, %broadcast.splat542
  %i.rk = uitofp <4 x i32> %i.rj to <4 x float>
  %i.rl = fmul <4 x float> %broadcast.splat544, %i.rk
  %i.rm = fptoui <4 x float> %i.rl to <4 x i8>
  %i.rn = and <4 x i32> %broadcast.splat546, %wide.load
  %i.ro = lshr <4 x i32> %i.rn, %broadcast.splat548
  %i.rp = uitofp <4 x i32> %i.ro to <4 x float>
  %i.rq = fmul <4 x float> %broadcast.splat550, %i.rp
  %i.rr = fptoui <4 x float> %i.rq to <4 x i8>
  %i.rs = uitofp <4 x i8> %i.rh to <4 x float>
  %i.rt = uitofp <4 x i8> %i.rm to <4 x float>
  %i.ru = fmul nnan <4 x float> %i.rt, splat (float 5.870000e-01)
  %i.rv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rs, <4 x float> splat (float 2.990000e-01), <4 x float> %i.ru)
  %i.rw = uitofp <4 x i8> %i.rr to <4 x float>
  %i.rx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rw, <4 x float> splat (float 1.140000e-01), <4 x float> %i.rv)
  %i.ry = fptoui <4 x float> %i.rx to <4 x i8>
  store <4 x i8> %i.ry, ptr %next.gep, align 1, !tbaa !80, !alias.scope !159, !noalias !160
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rz = icmp eq i64 %index.next, %n.vec
  br i1 %i.rz, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ql
  br i1 %cmp.n, label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit, label %.lr.ph.i.preheader627

.lr.ph.i.preheader627:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.017.i.ph = phi ptr [ %.24410, %vector.memcheck ], [ %.24410, %.lr.ph.i.preheader ], [ %i.qp, %middle.block ]
  %.01316.i.ph = phi ptr [ %i.bi, %vector.memcheck ], [ %i.bi, %.lr.ph.i.preheader ], [ %i.qr, %middle.block ]
  %.01415.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %i.qs, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader627, %.lr.ph.i
  %.017.i = phi ptr [ %i.th, %.lr.ph.i ], [ %.017.i.ph, %.lr.ph.i.preheader627 ] ; 2 uses
  %.01316.i = phi ptr [ %i.ti, %.lr.ph.i ], [ %.01316.i.ph, %.lr.ph.i.preheader627 ] ; 2 uses
  %.01415.i = phi i32 [ %i.tg, %.lr.ph.i ], [ %.01415.i.ph, %.lr.ph.i.preheader627 ]
  %i.sa = load i32, ptr %.01316.i, align 4, !tbaa !87 ; 3 uses
  %i.sb = load i32, ptr %i.ld, align 4, !tbaa !87
  %i.sc = and i32 %i.sb, %i.sa
  %i.sd = load i32, ptr %i.kq, align 4, !tbaa !87
  %i.se = lshr i32 %i.sc, %i.sd
  %i.sf = uitofp i32 %i.se to float
  %i.sg = load float, ptr %i.le, align 4, !tbaa !70
  %i.sh = fmul float %i.sg, %i.sf
  %i.si = fptoui float %i.sh to i8
  %i.sj = load i32, ptr %i.lf, align 8, !tbaa !87
  %i.sk = and i32 %i.sj, %i.sa
  %i.sl = load i32, ptr %i.lg, align 8, !tbaa !87
  %i.sm = lshr i32 %i.sk, %i.sl
  %i.sn = uitofp i32 %i.sm to float
  %i.so = load float, ptr %i.lh, align 8, !tbaa !70
  %i.sp = fmul float %i.so, %i.sn
  %i.sq = fptoui float %i.sp to i8
  %i.sr = load i32, ptr %i.li, align 4, !tbaa !87
  %i.ss = and i32 %i.sr, %i.sa
  %i.st = load i32, ptr %i.lj, align 4, !tbaa !87
  %i.su = lshr i32 %i.ss, %i.st
  %i.sv = uitofp i32 %i.su to float
  %i.sw = load float, ptr %i.lk, align 4, !tbaa !70
  %i.sx = fmul float %i.sw, %i.sv
  %i.sy = fptoui float %i.sx to i8
  %i.sz = uitofp i8 %i.si to float
  %i.ta = uitofp i8 %i.sq to float
  %i.tb = fmul nnan float %i.ta, 5.870000e-01
  %i.tc = call float @llvm.fmuladd.f32(float %i.sz, float 2.990000e-01, float %i.tb)
  %i.td = uitofp i8 %i.sy to float
  %i.te = call float @llvm.fmuladd.f32(float %i.td, float 1.140000e-01, float %i.tc)
  %i.tf = fptoui float %i.te to i8
  store i8 %i.tf, ptr %.017.i, align 1, !tbaa !80
  %i.tg = add nuw nsw i32 %.01415.i, 1            ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.ti = getelementptr inbounds nuw i8, ptr %.01316.i, i64 4
  %exitcond.not.i = icmp eq i32 %i.tg, %i.qj
  br i1 %exitcond.not.i, label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit, label %.lr.ph.i, !llvm.loop !148

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.split.us, %bb.dw, %bb.cx, %bb.cw, %bb.cu, %bb.bj, %bb.bi, %bb.bg, %bb.y, %bb.w, %bb.v, %bb.af, %bb.ae, %bb.ac, %bb.dd, %bb.dc, %bb.da, %bb.di, %bb.dg, %bb.ea, %.lr.ph.split, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit314
  %lpad.loopexit.split-lp629 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dy
  %.sroa.0339.0.insert.ext = zext i32 %i.qj to i64
  %.sroa.0339.0.insert.insert = or disjoint i64 %.sroa.0339.0.insert.ext, 4294967296
  invoke void @_ZN2cv25icvCvt_BGRA2Gray_8u_C4C1REPKhiPhiNS_5Size_IiEEi(ptr noundef %i.bi, i32 noundef 0, ptr noundef %.24410, i32 noundef 0, i64 %.sroa.0339.0.insert.insert, i32 noundef 0)
          to label %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit:   ; preds = %.lr.ph.i, %middle.block, %bb.dz, %bb.ea
  %i.tj = load i32, ptr %i.b, align 4, !tbaa !87
  %i.tk = add nsw i32 %i.tj, 1                    ; 2 uses
  store i32 %i.tk, ptr %i.b, align 4, !tbaa !87
  %i.tl = getelementptr i8, ptr %.24410, i64 %i.lo
  %i.tm = load i32, ptr %i.la, align 4, !tbaa !85
  %i.tn = icmp slt i32 %i.tk, %i.tm
  %indvar.next = add i64 %indvar, 1
  br i1 %i.tn, label %.lr.ph.split, label %.loopexit, !llvm.loop !142

bb.eb:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ec unwind label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv10BmpDecoder8readDataERNS_3MatE, ptr noundef nonnull @.str.1, i32 noundef 548) #20
          to label %bb.ed unwind label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  unreachable

bb.ee:                                            ; preds = %bb.eb
  %i.to = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

bb.ef:                                            ; preds = %bb.ec
  %i.tp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.tq = load ptr, ptr %9, align 8, !tbaa !79    ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ts = icmp eq ptr %i.tq, %i.tr
  br i1 %i.ts, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %bb.ef
  %i.tt = load i64, ptr %i.tr, align 8, !tbaa !80
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322, %bb.ee
  %.pn301 = phi { ptr, i32 } [ %i.to, %bb.ee ], [ %i.tp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %i.tp, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %bb.cs, %bb.bd
  %.pn301.pn = phi { ptr, i32 } [ %.pn301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %.pn291.pn, %bb.cs ], [ %.pn296.pn.pn, %bb.bd ], [ %lpad.loopexit.split-lp629, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.9255 = extractvalue { ptr, i32 } %.pn301.pn, 0
  %i.tv = call ptr @__cxa_begin_catch(ptr %.9255) #17 ; 0 uses
  invoke void @__cxa_rethrow() #20
          to label %bb.et unwind label %bb.eg

bb.eg:                                            ; preds = %.loopexit.split-lp
  %i.tw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.eo unwind label %bb.es

.loopexit:                                        ; preds = %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit, %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us, %bb.dk, %bb.de, %bb.cy, %bb.bk, %bb.ag, %bb.z, %bb.do, %bb.df, %bb.cz, %bb.ct, %bb.bf, %bb.ab, %bb.u, %bb.be, %bb.aa, %.thread355, %.thread374
  %.2269 = phi i1 [ true, %bb.ct ], [ true, %bb.cz ], [ %.0267, %.thread355 ], [ false, %bb.aa ], [ true, %bb.df ], [ %.1268, %.thread374 ], [ false, %bb.be ], [ true, %bb.u ], [ true, %bb.ab ], [ true, %bb.bf ], [ true, %bb.do ], [ true, %bb.z ], [ true, %bb.ag ], [ true, %bb.bk ], [ true, %bb.cy ], [ true, %bb.de ], [ true, %bb.dk ], [ true, %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit.us ], [ true, %_ZN2cv10BmpDecoder14maskBGRAtoGrayEPhPKhi.exit ]
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !161, !range !162, !noundef !163
  %i.tz = trunc nuw i8 %i.ty to i1
  %or.cond7 = and i1 %i.m, %i.tz
end_hunk_1
