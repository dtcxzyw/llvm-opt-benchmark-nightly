Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_yee?download=true
inline.NumInlined: 303
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramidC2ERNS0_8ImageBufE:bb.a
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.q, %bb.i
  %.pn = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.m, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aa) #15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ab) #15
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ac) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ad) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ae) #15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.af) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ag) #15
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader16, %.loopexit.loopexit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.loopexit ], [ %lpad.thr_comm, %.preheader16 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tan.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10getchannelEiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #7 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EE(ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %0, ptr noundef byval(%"class.OpenImageIO::v3_1::paropt") align 8 %1, ptr noundef %2) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %4 = alloca %"class.std::function.15", align 8  ; 12 uses
  call void @_ZN11OpenImageIO4v3_16paropt7resolveEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !23
  %i.b = load i32, ptr %0, align 8, !tbaa !10     ; 6 uses
  %.not.i = icmp eq i32 %i.b, -2147483648         ; 2 uses
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = sub nsw i32 %i.d, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !12
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.l, %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !14
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = mul i64 %i.m, %i.s
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit

_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit:        ; preds = %bb.a, %bb.b
  %i.u = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25
  %sext = shl i64 %i.w, 32
  %i.x = ashr exact i64 %sext, 32                 ; 2 uses
  %i.y = udiv i64 %i.u, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = add nsw i32 %i.z, 1
  %.sroa.speculated32 = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.a) ; 3 uses
  store i32 %.sroa.speculated32, ptr %1, align 8, !tbaa !23
  %i.ab = icmp eq i32 %.sroa.speculated32, 1
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt8functionIFvN11OpenImageIO4v3_13ROIEEEclES2_.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZNKSt8functionIFvN11OpenImageIO4v3_13ROIEEEclES2_.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3), !inline_history !123
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.p

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !24 ; 2 uses
  %i.ai = icmp eq i16 %i.ah, 3
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !15
  %i.al = sub nsw i32 %i.ak, %i.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !12
  %i.aq = sub nsw i32 %i.an, %i.ap
  %i.ar = icmp sle i32 %i.al, %i.aq
  %i.as = zext i1 %i.ar to i16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i16 [ %i.as, %bb.f ], [ %i.ah, %bb.e ]
  switch i16 %.0, label %bb.l [
    i16 1, label %bb.h
    i16 0, label %bb.i
    i16 4, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !15
  %i.av = sub nsw i32 %i.au, %i.b
  %i.aw = sext i32 %i.av to i64
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !12
  %i.bb = sub nsw i32 %i.ay, %i.ba
  %i.bc = sext i32 %i.bb to i64
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

bb.j:                                             ; preds = %bb.g
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !15
  %i.bf = sub nsw i32 %i.be, %i.b
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !12
  %i.bl = sub nsw i32 %i.bi, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.bm, %i.bg
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !14
  %i.bs = sub nsw i32 %i.bp, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %i.bn, %i.bt
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.x)
  %i.bw = sitofp i64 %i.bv to double
  %i.bx = call double @llvm.sqrt.f64(double %i.bw)
  %i.by = fptosi double %i.bx to i32
  %5 = lshr i32 %i.by, 2
  %i.bz = call i32 @llvm.umax.i32(i32 %5, i32 1)
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

bb.l:                                             ; preds = %bb.g
  %i.cb = sitofp i32 %.sroa.speculated32 to double
  %i.cc = call noundef double @llvm.sqrt.f64(double %i.cb)
  %i.cd = fptosi double %i.cc to i64
  %6 = lshr i64 %i.cd, 1
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %6, i64 1) ; 2 uses
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12:      ; preds = %bb.k, %bb.j, %bb.i, %bb.l, %bb.h
  %.09 = phi i64 [ 0, %bb.h ], [ %i.bc, %bb.i ], [ %.sroa.speculated, %bb.l ], [ %i.ca, %bb.k ], [ 1, %bb.j ]
  %.08 = phi i64 [ %i.aw, %bb.h ], [ 0, %bb.i ], [ %.sroa.speculated, %bb.l ], [ %i.ca, %bb.k ], [ 1, %bb.j ]
  %i.ce = sext i32 %i.b to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !15
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !12
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !11
  %i.cn = sext i32 %i.cm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %4, align 8, !tbaa !35
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !37
  store ptr @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E9_M_invokeERKSt9_Any_dataOlSE_SE_SE_, ptr %i.cp, align 8, !tbaa !125
  store ptr @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.co, align 8, !tbaa !31
  invoke void @_ZN11OpenImageIO4v3_123parallel_for_chunked_2DEllllllOSt8functionIFvllllEENS0_6paroptE(i64 noundef %i.ce, i64 noundef %i.ch, i64 noundef %.08, i64 noundef %i.ck, i64 noundef %i.cn, i64 noundef %.09, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %1)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !31 ; 2 uses
  %.not.i16 = icmp eq ptr %i.cq, null
  br i1 %.not.i16, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #16
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt8functionIFvN11OpenImageIO4v3_13ROIEEEclES2_.exit
  ret void

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !31 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cv, null
  br i1 %.not.i17, label %_ZNSt14_Function_baseD2Ev.exit18, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit18 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #16
  unreachable

_ZNSt14_Function_baseD2Ev.exit18:                 ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.cu
}

declare void @_ZN11OpenImageIO4v3_16paropt7resolveEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_123parallel_for_chunked_2DEllllllOSt8functionIFvllllEENS0_6paroptE(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef byval(%"class.OpenImageIO::v3_1::paropt") align 8) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E9_M_invokeERKSt9_Any_dataOlSE_SE_SE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #0 align 2 {
bb.a:
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !127
  %i.b = load i64, ptr %2, align 8, !tbaa !127
  %i.c = load i64, ptr %3, align 8, !tbaa !127
  %i.d = load i64, ptr %4, align 8, !tbaa !127
  %i.e = load ptr, ptr %0, align 8, !tbaa !129, !nonnull !38, !align !130 ; 3 uses
  %i.f = trunc i64 %i.a to i32
  %i.g = trunc i64 %i.b to i32
  %i.h = trunc i64 %i.c to i32
  %i.i = trunc i64 %i.d to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131, !nonnull !38, !align !132
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = load <4 x i32>, ptr %i.l, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %i.f, ptr %5, align 8
  store i32 %i.g, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  store <4 x i32> %i.m, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS1_3ROIENS1_6paroptESt8functionIFvS3_EEEUlllllE_JllllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS1_3ROIENS1_6paroptESt8functionIFvS3_EEEUlllllE_JllllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5), !inline_history !126
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EEEUlllllE_, ptr %0, align 8, !tbaa !40
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !133
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_113AdobeRGBToXYZERNS1_8ImageBufES2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 37 uses
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %.val, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i1 noundef zeroext true)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, %bb.a
  %i.w = load i8, ptr %i.a, align 8, !tbaa !44, !range !45, !noundef !38
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.y = load i32, ptr %i.b, align 4, !tbaa !46
  %i.z = load i32, ptr %i.c, align 4, !tbaa !47
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !48
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !49
  %i.ad = icmp eq i32 %i.ab, %i.ac
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_18XYZToLABERNS1_8ImageBufES2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_":bb.a
bb.t:                                             ; preds = %.noexc48.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.u unwind label %bb.ai

bb.u:                                             ; preds = %bb.t, %.noexc48.i.i.i
  %i.df = load ptr, ptr %i.h, align 8, !tbaa !53  ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store float %i.cs, ptr %i.dg, align 4, !tbaa !8
  %i.dh = load i32, ptr %i.b, align 4, !tbaa !46
  %i.di = add nsw i32 %i.dh, 1                    ; 7 uses
  store i32 %i.di, ptr %i.b, align 4, !tbaa !46
  %i.dj = load i32, ptr %i.i, align 8, !tbaa !56
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.dl = load i8, ptr %i.k, align 1, !tbaa !57, !range !45, !noundef !38
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.w, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.v
  %.pre.i.i.i = load i32, ptr %i.d, align 8, !tbaa !48
  %.pre.i.i = load i32, ptr %i.f, align 4, !tbaa !50
  br label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %i.l, align 1, !tbaa !58, !range !45, !noundef !38
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dp = load i64, ptr %i.n, align 8, !tbaa !59
  %i.dq = getelementptr inbounds i8, ptr %i.df, i64 %i.dp
  store ptr %i.dq, ptr %i.h, align 8, !tbaa !53
  %i.dr = load i32, ptr %i.o, align 8, !tbaa !60
  %.not.i.i2.i.i = icmp slt i32 %i.di, %i.dr
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.y, !prof !61

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.aj

bb.z:                                             ; preds = %bb.w
  %i.ds = load i8, ptr %i.m, align 2, !tbaa !62, !range !45, !noundef !38
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = load i64, ptr %i.n, align 8, !tbaa !59
  %i.dv = getelementptr inbounds i8, ptr %i.df, i64 %i.du
  store ptr %i.dv, ptr %i.h, align 8, !tbaa !53
  %i.dw = load i32, ptr %i.o, align 8, !tbaa !60
  %i.dx = icmp slt i32 %i.di, %i.dw               ; 3 uses
  %i.dy = load i32, ptr %i.p, align 4
  %i.dz = icmp sge i32 %i.di, %i.dy
  %not..i.i.i.i = xor i1 %i.dx, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.dz, !prof !63
  %i.ea = load ptr, ptr %i.q, align 8
  %i.eb = icmp eq ptr %i.ea, null
  %i.ec = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.eb, !prof !63
  br i1 %i.ec, label %bb.ab, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, !prof !55

bb.ab:                                            ; preds = %bb.aa
  %i.ed = load ptr, ptr %2, align 8, !tbaa !54
  %i.ee = load i32, ptr %i.d, align 8, !tbaa !48
  %i.ef = load i32, ptr %i.f, align 4, !tbaa !50
  %i.eg = load i32, ptr %i.v, align 8, !tbaa !64
  %i.eh = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i32 noundef %i.di, i32 noundef %i.ee, i32 noundef %i.ef, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.u, i1 noundef zeroext %i.dx, i32 noundef %i.eg)
          to label %.noexc3.i.i unwind label %bb.aj

.noexc3.i.i:                                      ; preds = %bb.ab
  %i.ei = zext i1 %i.dx to i8
  store ptr %i.eh, ptr %i.h, align 8, !tbaa !53
  store i8 %i.ei, ptr %i.k, align 1, !tbaa !57
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.ej = load i32, ptr %i.c, align 4, !tbaa !47  ; 3 uses
  store i32 %i.ej, ptr %i.b, align 4, !tbaa !46
  %i.ek = load i32, ptr %i.d, align 8, !tbaa !48
  %i.el = add nsw i32 %i.ek, 1                    ; 3 uses
  store i32 %i.el, ptr %i.d, align 8, !tbaa !48
  %i.em = load i32, ptr %i.j, align 8, !tbaa !65
  %.not.i.i.i = icmp slt i32 %i.el, %i.em
  %.pre1.i.i = load i32, ptr %i.f, align 4, !tbaa !50 ; 2 uses
  br i1 %.not.i.i.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = load i32, ptr %i.e, align 4, !tbaa !49  ; 2 uses
  store i32 %i.en, ptr %i.d, align 8, !tbaa !48
  %i.eo = add nsw i32 %.pre1.i.i, 1               ; 3 uses
  store i32 %i.eo, ptr %i.f, align 4, !tbaa !50
  %i.ep = load i32, ptr %i.g, align 8, !tbaa !51
  %.not1.i.i.i = icmp slt i32 %i.eo, %i.ep
  br i1 %.not1.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.a, align 8, !tbaa !44
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.af:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i
  %i.eq = phi i32 [ %.pre1.i.i, %bb.ac ], [ %i.eo, %bb.ad ], [ %.pre.i.i, %._crit_edge.i.i.i ]
  %i.er = phi i32 [ %i.el, %bb.ac ], [ %i.en, %bb.ad ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.es = phi i32 [ %i.ej, %bb.ac ], [ %i.ej, %bb.ad ], [ %i.di, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.es, i32 noundef %i.er, i32 noundef %i.eq)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.aj

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge: ; preds = %bb.af, %bb.ae, %.noexc3.i.i, %bb.aa, %bb.z, %bb.y, %bb.x
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.ag:                                            ; preds = %bb.p, %bb.o
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ah:                                            ; preds = %bb.r, %bb.q
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ai:                                            ; preds = %bb.t, %bb.s
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af, %bb.ab, %bb.y
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.pn32.i.i.i = phi { ptr, i32 } [ %i.ew, %bb.aj ], [ %i.et, %bb.ag ], [ %i.ev, %bb.ai ], [ %i.eu, %bb.ah ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn32.i.i.i

"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS1_8ImageBufENS1_3ROIEiE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_18XYZToLABERNS1_8ImageBufES2_iE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS0_8ImageBufENS0_3ROIEiE3$_0", ptr %0, align 8, !tbaa !40
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !33
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !27
  store i64 %.val.i, ptr %0, align 8, !tbaa !27
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN11OpenImageIO4v3_112ImageBufAlgo11make_kernelENS0_17basic_string_viewIcSt11char_traitsIcEEEfffb(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8, ptr noundef dead_on_return, float noundef, float noundef, float noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo8convolveERNS0_8ImageBufERKS2_S5_bNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log10.f32(float) #6

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.pow.v4f32(<4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"float", !4, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"_ZTSN11OpenImageIO4v3_13ROIE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!10 = !{!9, !5, i64 0}
!11 = !{!9, !5, i64 12}
!12 = !{!9, !5, i64 8}
!13 = !{!9, !5, i64 20}
!14 = !{!9, !5, i64 16}
!15 = !{!9, !5, i64 4}
!16 = !{!"_ZTSN11OpenImageIO4v3_16paropt11ParStrategyE", !4, i64 0}
!17 = !{!"_ZTSN11OpenImageIO4v3_16paropt8SplitDirE", !4, i64 0}
!18 = !{!"long", !4, i64 0}
!19 = !{!"any pointer", !4, i64 0}
!20 = !{!"p1 _ZTSN11OpenImageIO4v3_111thread_poolE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSN11OpenImageIO4v3_16paroptE", !5, i64 0, !16, i64 4, !17, i64 6, !18, i64 8, !20, i64 16, !21, i64 24}
!23 = !{!22, !5, i64 0}
!24 = !{!22, !17, i64 6}
!25 = !{!22, !18, i64 8}
!26 = !{!"p1 _ZTSN11OpenImageIO4v3_18ImageBufE", !19, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSSt14_Function_base", !4, i64 0, !19, i64 16}
!29 = !{!"_ZTSSt8functionIFvN11OpenImageIO4v3_13ROIEEE", !28, i64 0, !19, i64 24}
!30 = !{!29, !19, i64 24}
!31 = !{!28, !19, i64 16}
!32 = !{!"p1 omnipotent char", !19, i64 0}
!33 = !{!19, !19, i64 0}
!34 = !{!"p1 _ZTSSt8functionIFvN11OpenImageIO4v3_13ROIEEE", !19, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"p1 _ZTSN11OpenImageIO4v3_13ROIE", !19, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{}
!39 = !{!"p1 _ZTSSt9type_info", !19, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"p1 _ZTSN11OpenImageIO4v3_114ImageCacheTileE", !19, i64 0}
!42 = !{!"_ZTSN11OpenImageIO4v3_18ImageBuf8WrapModeE", !4, i64 0}
!43 = !{!"_ZTSN11OpenImageIO4v3_18ImageBuf12IteratorBaseE", !26, i64 0, !21, i64 8, !21, i64 9, !21, i64 10, !21, i64 11, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !41, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !18, i64 104, !32, i64 112, !42, i64 120, !21, i64 124, !4, i64 125}
!44 = !{!43, !21, i64 8}
!45 = !{i8 0, i8 2}
!46 = !{!43, !5, i64 60}
!47 = !{!43, !5, i64 36}
!48 = !{!43, !5, i64 64}
!49 = !{!43, !5, i64 44}
!50 = !{!43, !5, i64 68}
!51 = !{!43, !5, i64 56}
!52 = !{!43, !41, i64 72}
!53 = !{!43, !32, i64 112}
!54 = !{!43, !26, i64 0}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = !{!43, !5, i64 40}
!57 = !{!43, !21, i64 9}
!58 = !{!43, !21, i64 11}
!59 = !{!43, !18, i64 104}
!60 = !{!43, !5, i64 16}
!61 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!62 = !{!43, !21, i64 10}
!63 = !{!"branch_weights", i32 4001, i32 4000000}
!64 = !{!43, !42, i64 120}
!65 = !{!43, !5, i64 48}
!66 = distinct !{!66, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_"}
!67 = distinct !{!67, !66, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_: argument 0"}
!68 = distinct !{!68, !"_ZN11OpenImageIO4v3_13ROI3AllEv"}
!69 = distinct !{!69, !68, !"_ZN11OpenImageIO4v3_13ROI3AllEv: argument 0"}
!70 = distinct !{!70, !"_ZN11OpenImageIO4v3_13ROI3AllEv"}
!71 = distinct !{!71, !70, !"_ZN11OpenImageIO4v3_13ROI3AllEv: argument 0"}
!72 = distinct !{!72, !100}
!73 = distinct !{!73, !100}
!74 = distinct !{!74, !100}
!75 = distinct !{!75, !100}
!76 = distinct !{!76, !100}
!77 = !{!9, !5, i64 24}
!78 = !{!67}
!79 = !{!9, !5, i64 28}
!80 = !{!22, !16, i64 4}
!81 = !{!22, !20, i64 16}
!82 = !{!22, !21, i64 24}
!83 = !{!"_ZTSN11OpenImageIO4v3_114Image_or_Const8ContentsE", !4, i64 0}
!84 = !{!"p1 float", !19, i64 0}
!85 = !{!"_ZTSN11OpenImageIO4v3_14spanIKfLm18446744073709551615EEE", !84, i64 0, !18, i64 8}
!86 = !{!"_ZTSN11OpenImageIO4v3_114Image_or_ConstE", !83, i64 0, !26, i64 8, !85, i64 16}
!87 = !{!86, !83, i64 0}
!88 = !{!86, !26, i64 8}
!89 = !{!85, !84, i64 0}
!90 = !{!85, !18, i64 8}
!91 = !{!69}
!92 = !{!71}
!93 = !{!"double", !4, i64 0}
!94 = !{!"_ZTSN11OpenImageIO4v3_112ImageBufAlgo14CompareResultsE", !93, i64 0, !93, i64 8, !93, i64 16, !93, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !18, i64 48, !18, i64 56, !21, i64 64}
!95 = !{!94, !18, i64 56}
!96 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !19, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!97, !96, i64 0}
!99 = !{!97, !96, i64 8}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!97, !96, i64 16}
!102 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!103, !102, i64 0}
!105 = !{!103, !102, i64 8}
!106 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!107 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !106, i64 0, !18, i64 8, !4, i64 16}
!108 = !{!107, !32, i64 0}
!109 = !{!4, !4, i64 0}
!110 = !{!103, !102, i64 16}
!111 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !19, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!112, !111, i64 16}
!115 = !{!94, !93, i64 24}
!116 = !{!94, !5, i64 32}
!117 = !{!94, !5, i64 36}
!118 = !{!"p1 _ZTSN11OpenImageIO4v3_112ImageBufImplE", !19, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !32, i64 0, !18, i64 8}
!121 = !{!120, !32, i64 0}
!122 = !{!120, !18, i64 8}
!123 = distinct !{null}
!124 = !{!"_ZTSSt8functionIFvllllEE", !28, i64 0, !19, i64 24}
!125 = !{!124, !19, i64 24}
!126 = distinct !{null, null, null, null}
!127 = !{!18, !18, i64 0}
!128 = !{!"_ZTSZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EEEUlllllE_", !34, i64 0, !36, i64 8}
!129 = !{!128, !34, i64 0}
!130 = !{i64 8}
!131 = !{!128, !36, i64 8}
!132 = !{i64 4}
!133 = !{i64 0, i64 8, !35, i64 8, i64 8, !37}
!134 = !{!"_ZTSZN11OpenImageIO4v3_112_GLOBAL__N_113AdobeRGBToXYZERNS0_8ImageBufENS0_3ROIEiE3$_0", !26, i64 0}
!135 = !{!134, !26, i64 0}
!136 = !{!"_ZTSZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS0_8ImageBufENS0_3ROIEiE3$_0", !26, i64 0}
!137 = !{!136, !26, i64 0}
end_hunk_1
