Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/input_array_utility?download=true
inline.NumInlined: 214
inline.NumDeleted: 57
begin_hunk_0_@_ZN2cv5utils5trace7details6RegionD2Ev:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN2cv8superres13convertToTypeERKNS_4UMatEiRS1_S4_(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 dereferenceable(184) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv8superres13convertToTypeERKNS_4UMatEiRS1_S4_E25__cv_trace_location_fn266)
  %i.a = load i32, ptr %1, align 8, !tbaa !79     ; 3 uses
  %i.b = and i32 %i.a, 4095
  %i.c = icmp eq i32 %i.b, %2
  br i1 %i.c, label %.invoke, label %bb.b

.invoke:                                          ; preds = %bb.a, %bb.d, %bb.i, %bb.m
  %i.d = phi ptr [ %3, %bb.d ], [ %4, %bb.m ], [ %4, %bb.i ], [ %1, %bb.a ]
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %i.d)
          to label %bb.p unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %2, 31                           ; 3 uses
  %i.f = lshr i32 %2, 5
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = add nuw nsw i32 %i.g, 1                  ; 2 uses
  %i.i = and i32 %i.a, 31
  %i.j = icmp eq i32 %i.i, %i.e
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !37
  store i32 17432576, ptr %6, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.o, align 8
  store i32 34209792, ptr %7, align 8, !tbaa !12
  store ptr %3, ptr %i.n, align 8, !tbaa !13
  invoke fastcc void @_ZN12_GLOBAL__N_111convertToCnERKN2cv11_InputArrayERKNS0_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.h)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.invoke

bb.e:                                             ; preds = %.invoke
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.s

bb.g:                                             ; preds = %bb.b
  %i.r = lshr i32 %i.a, 5
  %i.s = and i32 %i.r, 127
  %i.t = icmp eq i32 %i.s, %i.g
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !37
  store i32 17432576, ptr %8, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.w, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.y, align 8
  store i32 34209792, ptr %9, align 8, !tbaa !12
  store ptr %4, ptr %i.x, align 8, !tbaa !13
  invoke fastcc void @_ZN12_GLOBAL__N_114convertToDepthERKN2cv11_InputArrayERKNS0_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %i.e)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %.invoke

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.s

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.ab, align 4, !tbaa !37
  store i32 17432576, ptr %10, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.ac, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.ae, align 8
  store i32 34209792, ptr %11, align 8, !tbaa !12
  store ptr %3, ptr %i.ad, align 8, !tbaa !13
  invoke fastcc void @_ZN12_GLOBAL__N_111convertToCnERKN2cv11_InputArrayERKNS0_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %i.h)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.af, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.ag, align 4, !tbaa !37
  store i32 17432576, ptr %12, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %3, ptr %i.ah, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.aj, align 8
  store i32 34209792, ptr %13, align 8, !tbaa !12
  store ptr %4, ptr %i.ai, align 8, !tbaa !13
  invoke fastcc void @_ZN12_GLOBAL__N_114convertToDepthERKN2cv11_InputArrayERKNS0_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %i.e)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %.invoke

bb.n:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.s

bb.o:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %bb.s

bb.p:                                             ; preds = %.invoke
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !49
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #12
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void

bb.s:                                             ; preds = %bb.e, %bb.f, %bb.j, %bb.n, %bb.o
  %.pn51 = phi { ptr, i32 } [ %i.ak, %bb.n ], [ %i.p, %bb.e ], [ %i.q, %bb.f ], [ %i.z, %bb.j ], [ %i.al, %bb.o ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %.pn51
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8superres13convertToTypeERKNS_4cuda6GpuMatEiRS2_S5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::cuda::GpuMat") align 8 captures(none) initializes((0, 12), (16, 64)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !41     ; 4 uses
  %i.b = and i32 %i.a, 4095
  %i.c = icmp eq i32 %i.b, %2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %0, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %13 = load <2 x i32>, ptr %i.e, align 4, !tbaa !23
  store <2 x i32> %13, ptr %i.d, align 4, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  store i64 %i.h, ptr %i.f, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !33
  store <2 x ptr> %i.m, ptr %i.i, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !34
  store <2 x ptr> %i.p, ptr %i.n, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35
  store ptr %i.s, ptr %i.q, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN2cv4cuda6GpuMatC2ERKS1_.exit, label %_ZN2cv4cuda6GpuMatC2ERKS1_.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.t = and i32 %2, 31                           ; 3 uses
  %i.u = lshr i32 %2, 5
  %i.v = and i32 %i.u, 127                        ; 2 uses
  %i.w = add nuw nsw i32 %i.v, 1                  ; 2 uses
  %i.x = and i32 %i.a, 31
  %i.y = icmp eq i32 %i.x, %i.t
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.z, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.aa, align 4, !tbaa !37
  store i32 17367040, ptr %5, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.ad, align 8
  store i32 34144256, ptr %6, align 8, !tbaa !12
  store ptr %3, ptr %i.ac, align 8, !tbaa !13
  call fastcc void @_ZN12_GLOBAL__N_111convertToCnERKN2cv11_InputArrayERKNS0_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ae = load <2 x i32>, ptr %3, align 8, !tbaa !23
  store <2 x i32> %i.ae, ptr %0, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !30
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !tbaa !33
  store <2 x ptr> %i.ap, ptr %i.al, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !34
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  store ptr %i.av, ptr %i.at, align 8, !tbaa !35
  %.not.i41 = icmp eq ptr %i.ao, null
  br i1 %.not.i41, label %_ZN2cv4cuda6GpuMatC2ERKS1_.exit, label %_ZN2cv4cuda6GpuMatC2ERKS1_.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.aw = lshr i32 %i.a, 5
  %i.ax = and i32 %i.aw, 127
  %i.ay = icmp eq i32 %i.ax, %i.v
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.az, align 8, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.ba, align 4, !tbaa !37
  store i32 17367040, ptr %7, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.bb, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.bd, align 8
  store i32 34144256, ptr %8, align 8, !tbaa !12
  store ptr %4, ptr %i.bc, align 8, !tbaa !13
  call fastcc void @_ZN12_GLOBAL__N_114convertToDepthERKN2cv11_InputArrayERKNS0_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.be = load <2 x i32>, ptr %4, align 8, !tbaa !23
  store <2 x i32> %i.be, ptr %0, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !30
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !31
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32 ; 2 uses
  %i.bp = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !33
  store <2 x ptr> %i.bp, ptr %i.bl, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bs = load <2 x ptr>, ptr %i.br, align 8, !tbaa !34
  store <2 x ptr> %i.bs, ptr %i.bq, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !35
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !35
  %.not.i43 = icmp eq ptr %i.bo, null
  br i1 %.not.i43, label %_ZN2cv4cuda6GpuMatC2ERKS1_.exit, label %_ZN2cv4cuda6GpuMatC2ERKS1_.exit.sink.split

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.bw, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.bx, align 4, !tbaa !37
  store i32 17367040, ptr %9, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.by, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.ca, align 8
  store i32 34144256, ptr %10, align 8, !tbaa !12
  store ptr %3, ptr %i.bz, align 8, !tbaa !13
  call fastcc void @_ZN12_GLOBAL__N_111convertToCnERKN2cv11_InputArrayERKNS0_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.cb, align 8, !tbaa !36
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.cc, align 4, !tbaa !37
  store i32 17367040, ptr %11, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %3, ptr %i.cd, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.cf, align 8
  store i32 34144256, ptr %12, align 8, !tbaa !12
  store ptr %4, ptr %i.ce, align 8, !tbaa !13
  call fastcc void @_ZN12_GLOBAL__N_114convertToDepthERKN2cv11_InputArrayERKNS0_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.cg = load <2 x i32>, ptr %4, align 8, !tbaa !23
  store <2 x i32> %i.cg, ptr %0, align 8, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !30
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !30
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !31
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !32 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %i.co, align 8, !tbaa !33
  store <2 x ptr> %i.cr, ptr %i.cn, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cu = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !34
  store <2 x ptr> %i.cu, ptr %i.cs, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !35
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !35
  %.not.i45 = icmp eq ptr %i.cq, null
  br i1 %.not.i45, label %_ZN2cv4cuda6GpuMatC2ERKS1_.exit, label %_ZN2cv4cuda6GpuMatC2ERKS1_.exit.sink.split

_ZN2cv4cuda6GpuMatC2ERKS1_.exit.sink.split:       ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.sink = phi ptr [ %i.bo, %bb.f ], [ %i.ao, %bb.d ], [ %i.l, %bb.b ], [ %i.cq, %bb.g ]
  %i.cy = atomicrmw add ptr %.sink, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv4cuda6GpuMatC2ERKS1_.exit

_ZN2cv4cuda6GpuMatC2ERKS1_.exit:                  ; preds = %_ZN2cv4cuda6GpuMatC2ERKS1_.exit.sink.split, %bb.g, %bb.f, %bb.d, %bb.b
  ret void
}

declare void @_ZN2cv4cuda6GpuMat7releaseEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
end_hunk_0
