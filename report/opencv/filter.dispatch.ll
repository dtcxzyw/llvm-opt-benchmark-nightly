Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/filter.dispatch?download=true
inline.NumInlined: 4426
inline.NumDeleted: 1773
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 196
begin_hunk_0_@_ZN2cv11sepFilter2DERKNS_11_InputArrayERKNS_12_OutputArrayEiS2_S2_NS_6Point_IiEEdi:bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !96
  %.not.i = icmp eq i32 %i.en, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %10)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  ret void

bb.bm:                                            ; preds = %bb.be, %bb.bd
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bh, %bb.bg
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bi
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #25
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn36 = phi { ptr, i32 } [ %i.es, %bb.bo ], [ %i.er, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #25
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.bp ], [ %i.eq, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.at
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %bb.bq ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.cb, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.as
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn, %bb.br ], [ %i.ca, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.body

.body:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bs
  %.pn36.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn, %bb.bs ], [ %i.at, %bb.ag ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #25
  br label %bb.bt

bb.bt:                                            ; preds = %.body, %bb.af
  %.pn36.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn.pn, %.body ], [ %i.as, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.ae
  %.pn36.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn.pn.pn, %bb.bt ], [ %i.ar, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #25
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.ad
  %.pn36.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %i.aq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %.pn36.pn.pn.pn.pn.pn.pn.pn, %bb.bv ], [ %i.b, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  resume { ptr, i32 } %.pn49.pn
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv13BaseRowFilter11isStatelessEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv16BaseColumnFilter11isStatelessEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv10BaseFilter11isStatelessEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #18

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12cpu_baseline18TiledFilterInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv12cpu_baseline18TiledFilterInvokerE, i64 16), ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEEE, i64 16), ptr %i.a, align 8, !tbaa !76
  invoke void @_ZN2cv16TLSDataContainer7releaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.a)
          to label %_ZN2cv12cpu_baseline18TiledFilterInvokerD2Ev.exit unwind label %bb.b, !inline_history !127

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #28, !inline_history !127
  unreachable

_ZN2cv12cpu_baseline18TiledFilterInvokerD2Ev.exit: ; preds = %bb.a
  tail call void @_ZN2cv16TLSDataContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #25, !inline_history !127
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #25, !inline_history !128
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %3 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %4 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %5 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %6 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %7 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %8 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %9 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %10 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %11 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %12 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %13 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %14 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %15 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %16 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %17 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %18 = alloca %"class.cv::Size_", align 4        ; 7 uses
  %19 = alloca %"class.cv::Point_", align 4       ; 7 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %22 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %25 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %26 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::AutoBuffer", align 8   ; 9 uses
  %30 = alloca %"class.cv::AutoBuffer", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !806, !nonnull !120, !align !121 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !79   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !61   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !60   ; 4 uses
  %i.k = xor i32 %i.d, -1
  %i.l = add i32 %i.f, %i.k                       ; 2 uses
  %i.m = xor i32 %i.h, -1
  %i.n = add i32 %i.j, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !83   ; 34 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !57
  %i.s = lshr i32 %i.r, 5
  %i.t = and i32 %i.s, 127
  %i.u = add nuw nsw i32 %i.t, 1                  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = tail call noundef nonnull align 8 dereferenceable(416) ptr @_ZNK2cv16TLSDataContainer7getDataEv(ptr noundef nonnull align 8 dereferenceable(12) %i.x) ; 9 uses
  %i.z = load i32, ptr %1, align 4, !tbaa !125    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !126
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph1179, label %._crit_edge1180

.lr.ph1179:                                       ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.am = add i32 %i.f, -1
  %i.an = add i32 %i.j, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %25, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %23, i64 128 ; 10 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bd = icmp eq i32 %i.p, 0                     ; 31 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  %i.co = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %i.cp = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 220
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.cs = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %29, i64 8
  %wide.trip.count1199 = zext nneg i32 %i.u to i64
  br label %bb.b

._crit_edge1180:                                  ; preds = %bb.ha, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph1179, %bb.ha
  %.02131177 = phi i32 [ %i.z, %.lr.ph1179 ], [ %i.byy, %bb.ha ] ; 3 uses
  %i.cu = load i32, ptr %i.ad, align 4, !tbaa !123 ; 2 uses
  %i.cv = sdiv i32 %.02131177, %i.cu
  %i.cw = srem i32 %.02131177, %i.cu
  %i.cx = load i32, ptr %i.ae, align 8, !tbaa !118 ; 4 uses
  %i.cy = mul i32 %i.cx, %i.cw                    ; 4 uses
  %i.cz = mul i32 %i.cx, %i.cv                    ; 4 uses
  %i.da = load ptr, ptr %i.af, align 8, !tbaa !119, !nonnull !120, !align !121 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !122
  %i.dd = sub i32 %i.dc, %i.cy
  %.sroa.speculated1066 = call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.cx) ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !130
  %i.dg = sub nsw i32 %i.df, %i.cz
  %.sroa.speculated1062 = call i32 @llvm.smin.i32(i32 %i.dg, i32 %i.cx) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store i32 0, ptr %18, align 4, !tbaa !17
  store i32 0, ptr %i.ag, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store i32 0, ptr %19, align 4, !tbaa !14
  store i32 0, ptr %i.ah, align 4, !tbaa !15
  %i.dh = load ptr, ptr %i.ai, align 8, !tbaa !807, !nonnull !120, !align !121
  call void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %i.dh, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19)
  %i.di = load i32, ptr %19, align 4, !tbaa !14
  %i.dj = add i32 %i.di, %i.cy                    ; 2 uses
  %.neg214 = sub i32 %i.d, %i.dj                  ; 22 uses
  %i.dk = load i32, ptr %i.ah, align 4, !tbaa !15
  %i.dl = add i32 %i.dk, %i.cz                    ; 2 uses
  %.neg = sub i32 %i.h, %i.dl                     ; 28 uses
  %i.dm = icmp sgt i32 %.neg, 0                   ; 18 uses
  %.sroa.speculated1057 = call i32 @llvm.smax.i32(i32 %.neg, i32 0) ; 42 uses
  %i.dn = load i32, ptr %i.ag, align 4, !tbaa !18
  %i.do = add i32 %.sroa.speculated1062, %i.n
  %i.dp = add i32 %i.do, %i.dl
  %i.dq = sub i32 %i.dp, %i.dn                    ; 27 uses
  %i.dr = icmp sgt i32 %i.dq, 0                   ; 26 uses
  %.sroa.speculated1052 = call i32 @llvm.smax.i32(i32 %i.dq, i32 0)
  %i.ds = icmp sgt i32 %.neg214, 0                ; 26 uses
  %.sroa.speculated1047 = call i32 @llvm.smax.i32(i32 %.neg214, i32 0) ; 58 uses
  %i.dt = load i32, ptr %18, align 4, !tbaa !17
  %i.du = add i32 %.sroa.speculated1066, %i.l
  %i.dv = add i32 %i.du, %i.dj
  %i.dw = sub i32 %i.dv, %i.dt                    ; 26 uses
  %i.dx = icmp sgt i32 %i.dw, 0                   ; 26 uses
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.dw, i32 0) ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.dy = load ptr, ptr %i.ai, align 8, !tbaa !807, !nonnull !120, !align !121
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  store i32 %i.cy, ptr %22, align 4, !tbaa !108
  store i32 %i.cz, ptr %i.aj, align 4, !tbaa !109
  store i32 %.sroa.speculated1066, ptr %i.ak, align 4, !tbaa !110
  store i32 %.sroa.speculated1062, ptr %i.al, align 4, !tbaa !111
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.dy, ptr noundef nonnull align 4 dereferenceable(16) %22)
  %i.dz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat9adjustROIEiiii(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef %i.h, i32 noundef %i.n, i32 noundef %i.d, i32 noundef %i.l)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.dz)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %23) #25
  %i.ea = icmp slt i32 %.neg, 1
  %i.eb = icmp slt i32 %i.dq, 1
  %or.cond = select i1 %i.ea, i1 %i.eb, i1 false
  %i.ec = icmp slt i32 %.neg214, 1
  %or.cond3 = select i1 %or.cond, i1 %i.ec, i1 false
  %i.ed = icmp slt i32 %i.dw, 1
  %or.cond5 = select i1 %or.cond3, i1 %i.ed, i1 false
  br i1 %or.cond5, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ee = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.gd unwind label %bb.g      ; 0 uses

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.hb

bb.g:                                             ; preds = %bb.e
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.d
  %i.eh = add i32 %i.am, %.sroa.speculated1066    ; 3 uses
  %i.ei = add i32 %i.an, %.sroa.speculated1062    ; 3 uses
  %i.ej = load i32, ptr %i.ao, align 4, !tbaa !809
  %i.ek = icmp slt i32 %i.ej, %i.eh
  br i1 %i.ek, label %._crit_edge1214.a, label %bb.i

._crit_edge1214.a:                                ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !806
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.el = load i32, ptr %i.ap, align 8, !tbaa !810
  %i.em = icmp slt i32 %i.el, %i.ei
  %.pre1215.a = load ptr, ptr %i.a, align 8, !tbaa !806 ; 3 uses
  br i1 %i.em, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.en = load i32, ptr %i.y, align 8, !tbaa !107
  %i.eo = and i32 %i.en, 4095
  %i.ep = getelementptr inbounds nuw i8, ptr %.pre1215.a, i64 8
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !57
  %.not = icmp eq i32 %i.eo, %i.eq
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge1214.a, %bb.j, %bb.i
  %i.er = phi ptr [ %.pre, %._crit_edge1214.a ], [ %.pre1215.a, %bb.j ], [ %.pre1215.a, %bb.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !57
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.y, i32 noundef %i.ei, i32 noundef %i.eh, i32 noundef %i.et)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  store i32 0, ptr %25, align 4, !tbaa !108
  store i32 0, ptr %i.aq, align 4, !tbaa !109
  store i32 %i.eh, ptr %i.ar, align 4, !tbaa !110
  store i32 %i.ei, ptr %i.as, align 4, !tbaa !111
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %25)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.o

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.m
  %i.ev = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !806, !nonnull !120, !align !121 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !57 ; 2 uses
  %i.ez = lshr i32 %i.ey, 5
  %i.fa = and i32 %i.ez, 127
  %i.fb = add nuw nsw i32 %i.fa, 1
  %i.fc = shl i32 %i.ey, 2
  %i.fd = and i32 %i.fc, 124
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = lshr i64 1275511473185297, %i.fe
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = and i32 %i.fg, 15
  %i.fi = mul nuw nsw i32 %i.fh, %i.fb
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 160
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !59 ; 121 uses
  switch i32 %i.fi, label %bb.fp [
    i32 1, label %bb.r
    i32 2, label %bb.am
    i32 3, label %bb.bf
    i32 4, label %bb.by
    i32 6, label %bb.cr
    i32 8, label %bb.dk
    i32 12, label %bb.ed
    i32 16, label %bb.ew
  ]

bb.o:                                             ; preds = %bb.m
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.p ], [ %i.fl, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.fn = load ptr, ptr %i.at, align 8, !tbaa !105 ; 3 uses
  %i.fo = load i64, ptr %i.au, align 8, !tbaa !97 ; 3 uses
  %i.fp = load i32, ptr %i.av, align 4, !tbaa !122 ; 6 uses
  %i.fq = load i32, ptr %i.aw, align 8, !tbaa !130 ; 14 uses
  %i.fr = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 12 uses
  %i.fs = load i64, ptr %i.ay, align 8, !tbaa !97 ; 23 uses
  %i.ft = add i32 %i.fp, %.sroa.speculated1047    ; 3 uses
  %i.fu = add i32 %i.ft, %.sroa.speculated        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.fv = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1047 ; 2 uses
  %i.fw = zext nneg i32 %i.fv to i64              ; 2 uses
  store ptr %i.cc, ptr %16, align 8, !tbaa !812
  %.not.i.i.i = icmp samesign ugt i32 %i.fv, 264
  store i64 %i.fw, ptr %i.cd, align 8, !tbaa !813
  br i1 %.not.i.i.i, label %bb.s, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

bb.s:                                             ; preds = %bb.r
  %i.fx = shl nuw nsw i64 %i.fw, 2
  %i.fy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fx) #29
          to label %.noexc unwind label %bb.al    ; 2 uses

.noexc:                                           ; preds = %bb.s
  store ptr %i.fy, ptr %16, align 8, !tbaa !812
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i:           ; preds = %.noexc, %bb.r
  %i.fz = phi ptr [ %i.cc, %bb.r ], [ %i.fy, %.noexc ] ; 8 uses
  br i1 %i.ds, label %.lr.ph.preheader.i, label %.preheader176.i

.lr.ph.preheader.i:                               ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  %wide.trip.count.i = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i

.preheader176.i:                                  ; preds = %bb.t, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  br i1 %i.dx, label %.lr.ph179.preheader.i, label %._crit_edge.i

.lr.ph179.preheader.i:                            ; preds = %.preheader176.i
  %i.ga = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i = zext nneg i32 %i.dw to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.fz, i64 %i.ga
  br label %.lr.ph179.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.t ] ; 3 uses
  %i.gb = trunc i64 %indvars.iv.i to i32
  %i.gc = sub i32 %i.gb, %.sroa.speculated1047
  %i.gd = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.gc, i32 noundef %i.fp, i32 noundef %i.p)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.i
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader176.i, label %.lr.ph.i, !llvm.loop !657

bb.u:                                             ; preds = %.lr.ph.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

._crit_edge.i:                                    ; preds = %bb.v, %.preheader176.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store ptr %i.ce, ptr %17, align 8, !tbaa !815
  store i64 1032, ptr %i.cf, align 8, !tbaa !816
  br i1 %i.bd, label %bb.x, label %.loopexit175.thread.i

.lr.ph179.i:                                      ; preds = %bb.v, %.lr.ph179.preheader.i
  %indvars.iv208.i = phi i64 [ 0, %.lr.ph179.preheader.i ], [ %indvars.iv.next209.i, %bb.v ] ; 3 uses
  %i.gg = trunc i64 %indvars.iv208.i to i32
  %i.gh = add i32 %i.fp, %i.gg
  %i.gi = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.gh, i32 noundef %i.fp, i32 noundef %i.p)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.lr.ph179.i
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv208.i
  store i32 %i.gi, ptr %gep.i, align 4, !tbaa !12
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %exitcond212.not.i = icmp eq i64 %indvars.iv.next209.i, %wide.trip.count211.i
  br i1 %exitcond212.not.i, label %._crit_edge.i, label %.lr.ph179.i, !llvm.loop !658

bb.w:                                             ; preds = %.lr.ph179.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.x:                                             ; preds = %._crit_edge.i
  %or.cond.i = or i1 %i.dm, %i.dr
  br i1 %or.cond.i, label %bb.y, label %.loopexit175.i

bb.y:                                             ; preds = %bb.x
  %i.gk = sext i32 %i.fu to i64                   ; 2 uses
  %.not.i.i = icmp ugt i32 %i.fu, 1032
  store i64 %i.gk, ptr %i.cf, align 8, !tbaa !816
  br i1 %.not.i.i, label %bb.z, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i

bb.z:                                             ; preds = %bb.y
  %i.gl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gk) #29
          to label %.noexc.i unwind label %bb.aa  ; 2 uses

.noexc.i:                                         ; preds = %bb.z
  store ptr %i.gl, ptr %17, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i:   ; preds = %.noexc.i, %bb.y
  %i.gm = phi ptr [ %i.gl, %.noexc.i ], [ %i.ce, %bb.y ] ; 3 uses
  %i.gn = icmp sgt i32 %i.fu, 0
  br i1 %i.gn, label %.lr.ph181.preheader.i, label %.loopexit175.i

.lr.ph181.preheader.i:                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i
  %wide.trip.count216.i = zext nneg i32 %i.fu to i64
  %.pre.i = load i8, ptr %i.fk, align 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gm, i8 %.pre.i, i64 %wide.trip.count216.i, i1 false)
  br label %.loopexit175.i

bb.aa:                                            ; preds = %bb.z
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit175.i:                                   ; preds = %.lr.ph181.preheader.i, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i, %bb.x
  %.0138.i = phi ptr [ %i.gm, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i ], [ null, %bb.x ], [ %i.gm, %.lr.ph181.preheader.i ] ; 5 uses
  %i.gp = icmp sgt i32 %i.fq, 0
  br i1 %i.gp, label %.lr.ph196.i, label %.preheader.i.thread

.loopexit175.thread.i:                            ; preds = %._crit_edge.i
  %i.gq = icmp sgt i32 %i.fq, 0
  br i1 %i.gq, label %.lr.ph196.thread.i, label %.preheader.thread.i

.lr.ph196.thread.i:                               ; preds = %.loopexit175.thread.i
  %i.gr = zext nneg i32 %.sroa.speculated1057 to i64
  %i.gs = mul i64 %i.fs, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.gs
  %i.gu = zext nneg i32 %.sroa.speculated1047 to i64 ; 4 uses
  %i.gv = sext i32 %i.fp to i64
  %i.gw = sext i32 %i.ft to i64
  %wide.trip.count226.i = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %invariant.gep300.i = getelementptr [4 x i8], ptr %i.fz, i64 %i.gu ; 5 uses
  %xtraiter1801 = and i64 %i.gu, 3                ; 3 uses
  %i.gx = add nsw i32 %.sroa.speculated1047, -1
  %i.gy = icmp ult i32 %i.gx, 3
  %unroll_iter1805 = and i64 %i.gu, 2147483644
  %lcmp.mod1803.not = icmp eq i64 %xtraiter1801, 0
  %lcmp.mod1804 = icmp ne i64 %xtraiter1801, 0
  %xtraiter1808 = and i64 %wide.trip.count226.i, 3 ; 3 uses
  %i.gz = add nsw i32 %.sroa.speculated, -1
  %i.ha = icmp ult i32 %i.gz, 3
  %unroll_iter1812 = and i64 %wide.trip.count226.i, 2147483644
  %lcmp.mod1810.not = icmp eq i64 %xtraiter1808, 0
  %lcmp.mod1811 = icmp ne i64 %xtraiter1808, 0
  br label %.preheader174.i

.lr.ph196.i:                                      ; preds = %.loopexit175.i
  %i.hb = zext nneg i32 %.sroa.speculated1047 to i64 ; 6 uses
  %i.hc = sext i32 %i.fp to i64                   ; 3 uses
  %i.hd = zext nneg i32 %.sroa.speculated1057 to i64
  %i.he = mul i64 %i.fs, %i.hd
  %i.hf = getelementptr i8, ptr %i.fr, i64 %i.he  ; 2 uses
  %i.hg = sext i32 %i.ft to i64                   ; 3 uses
  %wide.trip.count237.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %xtraiter1794 = and i32 %i.fq, 1
  %31 = icmp eq i32 %i.fq, 1
  br i1 %31, label %.preheader.i.a, label %.lr.ph196.i.new

.lr.ph196.i.new:                                  ; preds = %.lr.ph196.i
  %unroll_iter1798 = and i32 %i.fq, 2147483646
  br label %.preheader171.us.i

.preheader171.us.i:                               ; preds = %.loopexit.us.i, %.lr.ph196.i.new
  %.0136192.us.i = phi ptr [ %i.hf, %.lr.ph196.i.new ], [ %34, %.loopexit.us.i ] ; 4 uses
  %.0136192.us.i.a = phi ptr [ %i.fn, %.lr.ph196.i.new ], [ %i.hi, %.loopexit.us.i ] ; 2 uses
  %niter1799 = phi i32 [ 0, %.lr.ph196.i.new ], [ %niter1799.next.1, %.loopexit.us.i ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.0136192.us.i, i64 %i.hb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hh, ptr align 1 %.0136192.us.i.a, i64 %i.hc, i1 false)
  br i1 %i.ds, label %.lr.ph187.us.preheader.i, label %.preheader170.us.i

.lr.ph187.us.preheader.i:                         ; preds = %.preheader171.us.i
  %.pre260.i = load i8, ptr %i.fk, align 1
  call void @llvm.memset.p0.i64(ptr align 1 %.0136192.us.i, i8 %.pre260.i, i64 %i.hb, i1 false)
  br label %.preheader170.us.i

.preheader170.us.i:                               ; preds = %.lr.ph187.us.preheader.i, %.preheader171.us.i
  br i1 %i.dx, label %.lr.ph189.us.preheader.i, label %.lr.ph187.us.preheader.i.a

.lr.ph189.us.preheader.i:                         ; preds = %.preheader170.us.i
  %.pre261.i = load i8, ptr %i.fk, align 1
  %invariant.gep302.i = getelementptr i8, ptr %.0136192.us.i, i64 %i.hg
  call void @llvm.memset.p0.i64(ptr align 1 %invariant.gep302.i, i8 %.pre261.i, i64 %wide.trip.count237.i, i1 false)
  br label %.lr.ph187.us.preheader.i.a

.lr.ph187.us.preheader.i.a:                       ; preds = %.lr.ph189.us.preheader.i, %.preheader170.us.i
  %32 = getelementptr i8, ptr %.0136192.us.i, i64 %i.fs ; 4 uses
  %scevgep.a = getelementptr inbounds nuw i8, ptr %.0136192.us.i.a, i64 %i.fo ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 %i.hb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %scevgep.a, i64 %i.hc, i1 false)
  br i1 %i.ds, label %.lr.ph187.us.preheader.i.1, label %.preheader170.us.i.a

.lr.ph187.us.preheader.i.1:                       ; preds = %.lr.ph187.us.preheader.i.a
  %.pre260.i.1 = load i8, ptr %i.fk, align 1
  call void @llvm.memset.p0.i64(ptr align 1 %32, i8 %.pre260.i.1, i64 %i.hb, i1 false)
  br label %.preheader170.us.i.a

.preheader170.us.i.a:                             ; preds = %.lr.ph187.us.preheader.i.1, %.lr.ph187.us.preheader.i.a
  br i1 %i.dx, label %.lr.ph189.us.preheader.i.a, label %.loopexit.us.i

.lr.ph189.us.preheader.i.a:                       ; preds = %.preheader170.us.i.a
  %.pre261.i.a = load i8, ptr %i.fk, align 1
  %invariant.gep302.i.a = getelementptr i8, ptr %32, i64 %i.hg
  call void @llvm.memset.p0.i64(ptr align 1 %invariant.gep302.i.a, i8 %.pre261.i.a, i64 %wide.trip.count237.i, i1 false)
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.lr.ph189.us.preheader.i.a, %.preheader170.us.i.a
  %34 = getelementptr i8, ptr %32, i64 %i.fs      ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %scevgep.a, i64 %i.fo ; 2 uses
  %niter1799.next.1 = add nuw nsw i32 %niter1799, 2 ; 2 uses
  %exitcond = icmp eq i32 %niter1799.next.1, %unroll_iter1798
  br i1 %exitcond, label %.preheader.i.loopexit.unr-lcssa, label %.preheader171.us.i, !llvm.loop !659

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.loopexit.us.i
  %lcmp.mod1796.not = icmp eq i32 %xtraiter1794, 0
  br i1 %lcmp.mod1796.not, label %.preheader.i, label %.preheader.i.a

.preheader.i.a:                                   ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph196.i
  %.0136192.us.i.epil.init = phi ptr [ %i.hf, %.lr.ph196.i ], [ %34, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  %.0138279.i.a = phi ptr [ %i.fn, %.lr.ph196.i ], [ %i.hi, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod1797 = trunc i32 %i.fq to i1
  call void @llvm.assume(i1 %lcmp.mod1797)
  %35 = getelementptr inbounds nuw i8, ptr %.0136192.us.i.epil.init, i64 %i.hb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 1 %.0138279.i.a, i64 %i.hc, i1 false)
  br i1 %i.ds, label %.lr.ph187.us.preheader.i.epil, label %.preheader170.us.i.epil

.lr.ph187.us.preheader.i.epil:                    ; preds = %.preheader.i.a
  %.pre260.i.epil = load i8, ptr %i.fk, align 1
  call void @llvm.memset.p0.i64(ptr align 1 %.0136192.us.i.epil.init, i8 %.pre260.i.epil, i64 %i.hb, i1 false)
  br label %.preheader170.us.i.epil

.preheader170.us.i.epil:                          ; preds = %.lr.ph187.us.preheader.i.epil, %.preheader.i.a
  br i1 %i.dx, label %.lr.ph189.us.preheader.i.epil, label %.preheader.i

.lr.ph189.us.preheader.i.epil:                    ; preds = %.preheader170.us.i.epil
  %.pre261.i.epil = load i8, ptr %i.fk, align 1
  %invariant.gep302.i.epil = getelementptr i8, ptr %.0136192.us.i.epil.init, i64 %i.hg
  call void @llvm.memset.p0.i64(ptr align 1 %invariant.gep302.i.epil, i8 %.pre261.i.epil, i64 %wide.trip.count237.i, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit173.i, %.preheader.i.loopexit.unr-lcssa, %.lr.ph189.us.preheader.i.epil, %.preheader170.us.i.epil
  %.0138279.i = phi ptr [ %.0138.i, %.preheader.i.loopexit.unr-lcssa ], [ %.0138.i, %.preheader170.us.i.epil ], [ %.0138.i, %.lr.ph189.us.preheader.i.epil ], [ null, %.loopexit173.i ] ; 3 uses
  br i1 %i.dm, label %.lr.ph198.i, label %._crit_edge199.i

.preheader.i.thread:                              ; preds = %.loopexit175.i
  br i1 %i.dm, label %.lr.ph198.i.thread, label %._crit_edge199.i.thread

.lr.ph198.i.thread:                               ; preds = %.preheader.i.thread
  %i.hj = sext i32 %i.fu to i64
  br label %.lr.ph198.split.us.preheader.i

.preheader.thread.i:                              ; preds = %.loopexit175.thread.i
  br i1 %i.dm, label %.lr.ph198.thread.i, label %._crit_edge199.thread.i

.lr.ph198.thread.i:                               ; preds = %.preheader.thread.i
  %i.hk = sext i32 %i.fu to i64
  br label %.lr.ph198.split.preheader.i

.lr.ph198.i:                                      ; preds = %.preheader.i
  %i.hl = sext i32 %i.fu to i64                   ; 2 uses
  br i1 %i.bd, label %.lr.ph198.split.us.preheader.i, label %.lr.ph198.split.preheader.i

.lr.ph198.split.preheader.i:                      ; preds = %.lr.ph198.i, %.lr.ph198.thread.i
  %i.hm = phi i64 [ %i.hk, %.lr.ph198.thread.i ], [ %i.hl, %.lr.ph198.i ]
  %.0138279284287.i = phi ptr [ null, %.lr.ph198.thread.i ], [ %.0138279.i, %.lr.ph198.i ]
  %wide.trip.count243.i = zext nneg i32 %.neg to i64
  br label %.lr.ph198.split.i

.lr.ph198.split.us.preheader.i:                   ; preds = %.lr.ph198.i.thread, %.lr.ph198.i
  %i.hn = phi i64 [ %i.hj, %.lr.ph198.i.thread ], [ %i.hl, %.lr.ph198.i ] ; 6 uses
  %.0138279.i10701072 = phi ptr [ %.0138.i, %.lr.ph198.i.thread ], [ %.0138279.i, %.lr.ph198.i ] ; 6 uses
  %wide.trip.count248.i = zext nneg i32 %.neg to i64 ; 2 uses
  %xtraiter1814 = and i64 %wide.trip.count248.i, 3 ; 3 uses
  %i.ho = add i32 %.neg, -1
  %i.hp = icmp ult i32 %i.ho, 3
  br i1 %i.hp, label %.lr.ph198.split.us.i.epil.preheader, label %.lr.ph198.split.us.preheader.i.new

.lr.ph198.split.us.preheader.i.new:               ; preds = %.lr.ph198.split.us.preheader.i
  %unroll_iter1818 = and i64 %wide.trip.count248.i, 2147483644
  br label %.lr.ph198.split.us.i

.lr.ph198.split.us.i:                             ; preds = %.lr.ph198.split.us.i, %.lr.ph198.split.us.preheader.i.new
  %indvars.iv245.i = phi i64 [ 0, %.lr.ph198.split.us.preheader.i.new ], [ %indvars.iv.next246.i.3, %.lr.ph198.split.us.i ] ; 5 uses
  %niter1819 = phi i64 [ 0, %.lr.ph198.split.us.preheader.i.new ], [ %niter1819.next.3, %.lr.ph198.split.us.i ]
  %i.hq = mul i64 %indvars.iv245.i, %i.fs
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.hq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hr, ptr align 1 %.0138279.i10701072, i64 %i.hn, i1 false)
  %indvars.iv.next246.i = or disjoint i64 %indvars.iv245.i, 1
  %i.hs = mul i64 %indvars.iv.next246.i, %i.fs
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.hs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ht, ptr align 1 %.0138279.i10701072, i64 %i.hn, i1 false)
  %indvars.iv.next246.i.1 = or disjoint i64 %indvars.iv245.i, 2
  %i.hu = mul i64 %indvars.iv.next246.i.1, %i.fs
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.hu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hv, ptr align 1 %.0138279.i10701072, i64 %i.hn, i1 false)
  %indvars.iv.next246.i.2 = or disjoint i64 %indvars.iv245.i, 3
  %i.hw = mul i64 %indvars.iv.next246.i.2, %i.fs
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hx, ptr align 1 %.0138279.i10701072, i64 %i.hn, i1 false)
  %indvars.iv.next246.i.3 = add nuw nsw i64 %indvars.iv245.i, 4 ; 2 uses
  %niter1819.next.3 = add i64 %niter1819, 4       ; 2 uses
  %niter1819.ncmp.3 = icmp eq i64 %niter1819.next.3, %unroll_iter1818
  br i1 %niter1819.ncmp.3, label %._crit_edge199.thread291.i.unr-lcssa, label %.lr.ph198.split.us.i, !llvm.loop !660

.preheader174.i:                                  ; preds = %.loopexit173.i, %.lr.ph196.thread.i
  %.0135194.i = phi i32 [ %i.jx, %.loopexit173.i ], [ 0, %.lr.ph196.thread.i ]
  %.0136192.i = phi ptr [ %i.jy, %.loopexit173.i ], [ %i.gt, %.lr.ph196.thread.i ] ; 8 uses
  %.0145190.i = phi ptr [ %i.jz, %.loopexit173.i ], [ %i.fn, %.lr.ph196.thread.i ] ; 12 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %i.gu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hy, ptr align 1 %.0145190.i, i64 %i.gv, i1 false)
  br i1 %i.ds, label %.lr.ph183.i.preheader, label %.preheader172.i

.lr.ph183.i.preheader:                            ; preds = %.preheader174.i
  br i1 %i.gy, label %.lr.ph183.i.epil.preheader, label %.lr.ph183.i

.preheader172.i.loopexit.unr-lcssa:               ; preds = %.lr.ph183.i
  br i1 %lcmp.mod1803.not, label %.preheader172.i, label %.lr.ph183.i.epil.preheader

.lr.ph183.i.epil.preheader:                       ; preds = %.preheader172.i.loopexit.unr-lcssa, %.lr.ph183.i.preheader
  %indvars.iv218.i.epil.init = phi i64 [ 0, %.lr.ph183.i.preheader ], [ %indvars.iv.next219.i.3, %.preheader172.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1804)
  br label %.lr.ph183.i.epil

.lr.ph183.i.epil:                                 ; preds = %.lr.ph183.i.epil, %.lr.ph183.i.epil.preheader
  %indvars.iv218.i.epil = phi i64 [ %indvars.iv.next219.i.epil, %.lr.ph183.i.epil ], [ %indvars.iv218.i.epil.init, %.lr.ph183.i.epil.preheader ] ; 3 uses
  %epil.iter1802 = phi i64 [ %epil.iter1802.next, %.lr.ph183.i.epil ], [ 0, %.lr.ph183.i.epil.preheader ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %indvars.iv218.i.epil
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv218.i.epil
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !12
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1
  store i8 %i.ie, ptr %i.hz, align 1
  %indvars.iv.next219.i.epil = add nuw nsw i64 %indvars.iv218.i.epil, 1
  %epil.iter1802.next = add i64 %epil.iter1802, 1 ; 2 uses
  %epil.iter1802.cmp.not = icmp eq i64 %epil.iter1802.next, %xtraiter1801
  br i1 %epil.iter1802.cmp.not, label %.preheader172.i, label %.lr.ph183.i.epil, !llvm.loop !661

.preheader172.i:                                  ; preds = %.preheader172.i.loopexit.unr-lcssa, %.lr.ph183.i.epil, %.preheader174.i
  br i1 %i.dx, label %.lr.ph185.preheader.i, label %.loopexit173.i

.lr.ph185.preheader.i:                            ; preds = %.preheader172.i
  %invariant.gep298.i = getelementptr i8, ptr %.0136192.i, i64 %i.gw ; 5 uses
  br i1 %i.ha, label %.lr.ph185.i.epil.preheader, label %.lr.ph185.i

.lr.ph183.i:                                      ; preds = %.lr.ph183.i.preheader, %.lr.ph183.i
  %indvars.iv218.i = phi i64 [ %indvars.iv.next219.i.3, %.lr.ph183.i ], [ 0, %.lr.ph183.i.preheader ] ; 6 uses
  %niter1806 = phi i64 [ %niter1806.next.3, %.lr.ph183.i ], [ 0, %.lr.ph183.i.preheader ]
  %i.if = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %indvars.iv218.i
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv218.i
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !12
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1
  store i8 %i.ik, ptr %i.if, align 1
  %indvars.iv.next219.i = or disjoint i64 %indvars.iv218.i, 1 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %indvars.iv.next219.i
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next219.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !12
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1
  store i8 %i.iq, ptr %i.il, align 1
  %indvars.iv.next219.i.1 = or disjoint i64 %indvars.iv218.i, 2 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %indvars.iv.next219.i.1
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next219.i.1
  %i.it = load i32, ptr %i.is, align 4, !tbaa !12
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1
  store i8 %i.iw, ptr %i.ir, align 1
  %indvars.iv.next219.i.2 = or disjoint i64 %indvars.iv218.i, 3 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %indvars.iv.next219.i.2
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next219.i.2
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !12
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1
  store i8 %i.jc, ptr %i.ix, align 1
  %indvars.iv.next219.i.3 = add nuw nsw i64 %indvars.iv218.i, 4 ; 2 uses
  %niter1806.next.3 = add i64 %niter1806, 4       ; 2 uses
  %niter1806.ncmp.3 = icmp eq i64 %niter1806.next.3, %unroll_iter1805
  br i1 %niter1806.ncmp.3, label %.preheader172.i.loopexit.unr-lcssa, label %.lr.ph183.i, !llvm.loop !662

.lr.ph185.i:                                      ; preds = %.lr.ph185.preheader.i, %.lr.ph185.i
  %indvars.iv223.i = phi i64 [ %indvars.iv.next224.i.3, %.lr.ph185.i ], [ 0, %.lr.ph185.preheader.i ] ; 6 uses
  %niter1813 = phi i64 [ %niter1813.next.3, %.lr.ph185.i ], [ 0, %.lr.ph185.preheader.i ]
  %gep299.i = getelementptr i8, ptr %invariant.gep298.i, i64 %indvars.iv223.i
  %gep301.i = getelementptr [4 x i8], ptr %invariant.gep300.i, i64 %indvars.iv223.i
  %i.jd = load i32, ptr %gep301.i, align 4, !tbaa !12
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1
  store i8 %i.jg, ptr %gep299.i, align 1
  %indvars.iv.next224.i = or disjoint i64 %indvars.iv223.i, 1 ; 2 uses
  %gep299.i.1 = getelementptr i8, ptr %invariant.gep298.i, i64 %indvars.iv.next224.i
  %gep301.i.1 = getelementptr [4 x i8], ptr %invariant.gep300.i, i64 %indvars.iv.next224.i
  %i.jh = load i32, ptr %gep301.i.1, align 4, !tbaa !12
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1
  store i8 %i.jk, ptr %gep299.i.1, align 1
  %indvars.iv.next224.i.1 = or disjoint i64 %indvars.iv223.i, 2 ; 2 uses
  %gep299.i.2 = getelementptr i8, ptr %invariant.gep298.i, i64 %indvars.iv.next224.i.1
  %gep301.i.2 = getelementptr [4 x i8], ptr %invariant.gep300.i, i64 %indvars.iv.next224.i.1
  %i.jl = load i32, ptr %gep301.i.2, align 4, !tbaa !12
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1
  store i8 %i.jo, ptr %gep299.i.2, align 1
  %indvars.iv.next224.i.2 = or disjoint i64 %indvars.iv223.i, 3 ; 2 uses
  %gep299.i.3 = getelementptr i8, ptr %invariant.gep298.i, i64 %indvars.iv.next224.i.2
  %gep301.i.3 = getelementptr [4 x i8], ptr %invariant.gep300.i, i64 %indvars.iv.next224.i.2
  %i.jp = load i32, ptr %gep301.i.3, align 4, !tbaa !12
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1
  store i8 %i.js, ptr %gep299.i.3, align 1
  %indvars.iv.next224.i.3 = add nuw nsw i64 %indvars.iv223.i, 4 ; 2 uses
  %niter1813.next.3 = add i64 %niter1813, 4       ; 2 uses
  %niter1813.ncmp.3 = icmp eq i64 %niter1813.next.3, %unroll_iter1812
  br i1 %niter1813.ncmp.3, label %.loopexit173.i.loopexit.unr-lcssa, label %.lr.ph185.i, !llvm.loop !663

.loopexit173.i.loopexit.unr-lcssa:                ; preds = %.lr.ph185.i
  br i1 %lcmp.mod1810.not, label %.loopexit173.i, label %.lr.ph185.i.epil.preheader

.lr.ph185.i.epil.preheader:                       ; preds = %.loopexit173.i.loopexit.unr-lcssa, %.lr.ph185.preheader.i
  %indvars.iv223.i.epil.init = phi i64 [ 0, %.lr.ph185.preheader.i ], [ %indvars.iv.next224.i.3, %.loopexit173.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1811)
  br label %.lr.ph185.i.epil

.lr.ph185.i.epil:                                 ; preds = %.lr.ph185.i.epil, %.lr.ph185.i.epil.preheader
  %indvars.iv223.i.epil = phi i64 [ %indvars.iv223.i.epil.init, %.lr.ph185.i.epil.preheader ], [ %indvars.iv.next224.i.epil, %.lr.ph185.i.epil ] ; 3 uses
  %epil.iter1809 = phi i64 [ 0, %.lr.ph185.i.epil.preheader ], [ %epil.iter1809.next, %.lr.ph185.i.epil ]
  %gep299.i.epil = getelementptr i8, ptr %invariant.gep298.i, i64 %indvars.iv223.i.epil
  %gep301.i.epil = getelementptr [4 x i8], ptr %invariant.gep300.i, i64 %indvars.iv223.i.epil
  %i.jt = load i32, ptr %gep301.i.epil, align 4, !tbaa !12
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1
  store i8 %i.jw, ptr %gep299.i.epil, align 1
  %indvars.iv.next224.i.epil = add nuw nsw i64 %indvars.iv223.i.epil, 1
  %epil.iter1809.next = add i64 %epil.iter1809, 1 ; 2 uses
  %epil.iter1809.cmp.not = icmp eq i64 %epil.iter1809.next, %xtraiter1808
  br i1 %epil.iter1809.cmp.not, label %.loopexit173.i, label %.lr.ph185.i.epil, !llvm.loop !664

.loopexit173.i:                                   ; preds = %.loopexit173.i.loopexit.unr-lcssa, %.lr.ph185.i.epil, %.preheader172.i
  %i.jx = add nuw nsw i32 %.0135194.i, 1          ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %i.fs
  %i.jz = getelementptr inbounds nuw i8, ptr %.0145190.i, i64 %i.fo
  %exitcond228.not.i = icmp eq i32 %i.jx, %i.fq
  br i1 %exitcond228.not.i, label %.preheader.i, label %.preheader174.i, !llvm.loop !659

._crit_edge199.i:                                 ; preds = %bb.ab, %.preheader.i
  %.0138279285.i = phi ptr [ %.0138279.i, %.preheader.i ], [ %.0138279284287.i, %bb.ab ]
  br i1 %i.dr, label %.lr.ph202.i, label %._crit_edge203.i

._crit_edge199.i.thread:                          ; preds = %.preheader.i.thread
  br i1 %i.dr, label %.lr.ph202.i.thread, label %._crit_edge203.i

.lr.ph202.i.thread:                               ; preds = %._crit_edge199.i.thread
  %i.ka = sext i32 %i.fq to i64
  %i.kb = mul i64 %i.fs, %i.ka
  %i.kc = sext i32 %i.fu to i64
  br label %.lr.ph202.split.us.preheader.i

._crit_edge199.thread291.i.unr-lcssa:             ; preds = %.lr.ph198.split.us.i
  %lcmp.mod1816.not = icmp eq i64 %xtraiter1814, 0
  br i1 %lcmp.mod1816.not, label %._crit_edge199.thread291.i, label %.lr.ph198.split.us.i.epil.preheader

.lr.ph198.split.us.i.epil.preheader:              ; preds = %._crit_edge199.thread291.i.unr-lcssa, %.lr.ph198.split.us.preheader.i
  %indvars.iv245.i.epil.init = phi i64 [ 0, %.lr.ph198.split.us.preheader.i ], [ %indvars.iv.next246.i.3, %._crit_edge199.thread291.i.unr-lcssa ]
  %lcmp.mod1817 = icmp ne i64 %xtraiter1814, 0
  call void @llvm.assume(i1 %lcmp.mod1817)
  br label %.lr.ph198.split.us.i.epil

.lr.ph198.split.us.i.epil:                        ; preds = %.lr.ph198.split.us.i.epil, %.lr.ph198.split.us.i.epil.preheader
  %indvars.iv245.i.epil = phi i64 [ %indvars.iv245.i.epil.init, %.lr.ph198.split.us.i.epil.preheader ], [ %indvars.iv.next246.i.epil, %.lr.ph198.split.us.i.epil ] ; 2 uses
  %epil.iter1815 = phi i64 [ 0, %.lr.ph198.split.us.i.epil.preheader ], [ %epil.iter1815.next, %.lr.ph198.split.us.i.epil ]
  %i.kd = mul i64 %indvars.iv245.i.epil, %i.fs
  %i.ke = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.kd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ke, ptr align 1 %.0138279.i10701072, i64 %i.hn, i1 false)
  %indvars.iv.next246.i.epil = add nuw nsw i64 %indvars.iv245.i.epil, 1
  %epil.iter1815.next = add i64 %epil.iter1815, 1 ; 2 uses
  %epil.iter1815.cmp.not = icmp eq i64 %epil.iter1815.next, %xtraiter1814
  br i1 %epil.iter1815.cmp.not, label %._crit_edge199.thread291.i, label %.lr.ph198.split.us.i.epil, !llvm.loop !665

._crit_edge199.thread291.i:                       ; preds = %.lr.ph198.split.us.i.epil, %._crit_edge199.thread291.i.unr-lcssa
  br i1 %i.dr, label %.lr.ph202.thread293.i, label %._crit_edge203.i

.lr.ph202.thread293.i:                            ; preds = %._crit_edge199.thread291.i
  %i.kf = add nsw i32 %i.fq, %.neg
  %i.kg = sext i32 %i.kf to i64
  %i.kh = mul i64 %i.fs, %i.kg
  br label %.lr.ph202.split.us.preheader.i

._crit_edge199.thread.i:                          ; preds = %.preheader.thread.i
  br i1 %i.dr, label %.lr.ph202.thread.i, label %._crit_edge203.i

.lr.ph202.thread.i:                               ; preds = %._crit_edge199.thread.i
  %i.ki = sext i32 %i.fq to i64
  %i.kj = mul i64 %i.fs, %i.ki
  %i.kk = sext i32 %i.fu to i64
  br label %.lr.ph202.split.preheader.i

.lr.ph202.i:                                      ; preds = %._crit_edge199.i
  %i.kl = add nsw i32 %i.fq, %.sroa.speculated1057
  %i.km = sext i32 %i.kl to i64
  %i.kn = mul i64 %i.fs, %i.km                    ; 2 uses
  %i.ko = sext i32 %i.fu to i64                   ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i, label %.lr.ph202.split.preheader.i

.lr.ph202.split.preheader.i:                      ; preds = %.lr.ph202.i, %.lr.ph202.thread.i
  %i.kp = phi i64 [ %i.kk, %.lr.ph202.thread.i ], [ %i.ko, %.lr.ph202.i ]
  %i.kq = phi i64 [ %i.kj, %.lr.ph202.thread.i ], [ %i.kn, %.lr.ph202.i ]
  %wide.trip.count253.i = zext nneg i32 %i.dq to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.kq
  br label %.lr.ph202.split.i

.lr.ph202.split.us.preheader.i:                   ; preds = %.lr.ph202.i.thread, %.lr.ph202.i, %.lr.ph202.thread293.i
  %i.ks = phi i64 [ %i.hn, %.lr.ph202.thread293.i ], [ %i.ko, %.lr.ph202.i ], [ %i.kc, %.lr.ph202.i.thread ] ; 5 uses
  %.0138279285289295.i = phi ptr [ %.0138279.i10701072, %.lr.ph202.thread293.i ], [ %.0138279285.i, %.lr.ph202.i ], [ %.0138.i, %.lr.ph202.i.thread ] ; 5 uses
  %.pn.i = phi i64 [ %i.kh, %.lr.ph202.thread293.i ], [ %i.kn, %.lr.ph202.i ], [ %i.kb, %.lr.ph202.i.thread ]
  %i.kt = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.pn.i ; 5 uses
  %wide.trip.count258.i = zext nneg i32 %i.dq to i64 ; 2 uses
  %xtraiter1820 = and i64 %wide.trip.count258.i, 3 ; 3 uses
  %i.ku = add i32 %i.dq, -1
  %i.kv = icmp ult i32 %i.ku, 3
  br i1 %i.kv, label %.lr.ph202.split.us.i.epil.preheader, label %.lr.ph202.split.us.preheader.i.new

.lr.ph202.split.us.preheader.i.new:               ; preds = %.lr.ph202.split.us.preheader.i
  %unroll_iter1824 = and i64 %wide.trip.count258.i, 2147483644
  br label %.lr.ph202.split.us.i

.lr.ph202.split.us.i:                             ; preds = %.lr.ph202.split.us.i, %.lr.ph202.split.us.preheader.i.new
  %indvars.iv255.i = phi i64 [ 0, %.lr.ph202.split.us.preheader.i.new ], [ %indvars.iv.next256.i.3, %.lr.ph202.split.us.i ] ; 5 uses
  %niter1825 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i.new ], [ %niter1825.next.3, %.lr.ph202.split.us.i ]
  %i.kw = mul i64 %indvars.iv255.i, %i.fs
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kx, ptr align 1 %.0138279285289295.i, i64 %i.ks, i1 false)
  %indvars.iv.next256.i = or disjoint i64 %indvars.iv255.i, 1
  %i.ky = mul i64 %indvars.iv.next256.i, %i.fs
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ky
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kz, ptr align 1 %.0138279285289295.i, i64 %i.ks, i1 false)
  %indvars.iv.next256.i.1 = or disjoint i64 %indvars.iv255.i, 2
  %i.la = mul i64 %indvars.iv.next256.i.1, %i.fs
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.la
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lb, ptr align 1 %.0138279285289295.i, i64 %i.ks, i1 false)
  %indvars.iv.next256.i.2 = or disjoint i64 %indvars.iv255.i, 3
  %i.lc = mul i64 %indvars.iv.next256.i.2, %i.fs
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.lc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ld, ptr align 1 %.0138279285289295.i, i64 %i.ks, i1 false)
  %indvars.iv.next256.i.3 = add nuw nsw i64 %indvars.iv255.i, 4 ; 2 uses
  %niter1825.next.3 = add i64 %niter1825, 4       ; 2 uses
  %niter1825.ncmp.3 = icmp eq i64 %niter1825.next.3, %unroll_iter1824
  br i1 %niter1825.ncmp.3, label %._crit_edge203.i.loopexit.unr-lcssa, label %.lr.ph202.split.us.i, !llvm.loop !666

.lr.ph198.split.i:                                ; preds = %bb.ab, %.lr.ph198.split.preheader.i
  %indvars.iv240.i = phi i64 [ 0, %.lr.ph198.split.preheader.i ], [ %indvars.iv.next241.i, %bb.ab ] ; 3 uses
  %i.le = trunc i64 %indvars.iv240.i to i32
  %i.lf = sub i32 %i.le, %.sroa.speculated1057
  %i.lg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.lf, i32 noundef %i.fq, i32 noundef %i.p)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.lr.ph198.split.i
  %i.lh = mul i64 %indvars.iv240.i, %i.fs
  %i.li = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.lh
  %i.lj = add nsw i32 %i.lg, %.sroa.speculated1057
  %i.lk = sext i32 %i.lj to i64
  %i.ll = mul i64 %i.fs, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ll
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.li, ptr align 1 %i.lm, i64 %i.hm, i1 false)
  %indvars.iv.next241.i = add nuw nsw i64 %indvars.iv240.i, 1 ; 2 uses
  %exitcond244.not.i = icmp eq i64 %indvars.iv.next241.i, %wide.trip.count243.i
  br i1 %exitcond244.not.i, label %._crit_edge199.i, label %.lr.ph198.split.i, !llvm.loop !660

bb.ac:                                            ; preds = %.lr.ph198.split.i
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

._crit_edge203.i.loopexit.unr-lcssa:              ; preds = %.lr.ph202.split.us.i
  %lcmp.mod1822.not = icmp eq i64 %xtraiter1820, 0
  br i1 %lcmp.mod1822.not, label %._crit_edge203.i, label %.lr.ph202.split.us.i.epil.preheader

.lr.ph202.split.us.i.epil.preheader:              ; preds = %._crit_edge203.i.loopexit.unr-lcssa, %.lr.ph202.split.us.preheader.i
  %indvars.iv255.i.epil.init = phi i64 [ 0, %.lr.ph202.split.us.preheader.i ], [ %indvars.iv.next256.i.3, %._crit_edge203.i.loopexit.unr-lcssa ]
  %lcmp.mod1823 = icmp ne i64 %xtraiter1820, 0
  call void @llvm.assume(i1 %lcmp.mod1823)
  br label %.lr.ph202.split.us.i.epil

.lr.ph202.split.us.i.epil:                        ; preds = %.lr.ph202.split.us.i.epil, %.lr.ph202.split.us.i.epil.preheader
  %indvars.iv255.i.epil = phi i64 [ %indvars.iv255.i.epil.init, %.lr.ph202.split.us.i.epil.preheader ], [ %indvars.iv.next256.i.epil, %.lr.ph202.split.us.i.epil ] ; 2 uses
  %epil.iter1821 = phi i64 [ 0, %.lr.ph202.split.us.i.epil.preheader ], [ %epil.iter1821.next, %.lr.ph202.split.us.i.epil ]
  %i.lo = mul i64 %indvars.iv255.i.epil, %i.fs
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.lo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lp, ptr align 1 %.0138279285289295.i, i64 %i.ks, i1 false)
  %indvars.iv.next256.i.epil = add nuw nsw i64 %indvars.iv255.i.epil, 1
  %epil.iter1821.next = add i64 %epil.iter1821, 1 ; 2 uses
  %epil.iter1821.cmp.not = icmp eq i64 %epil.iter1821.next, %xtraiter1820
  br i1 %epil.iter1821.cmp.not, label %._crit_edge203.i, label %.lr.ph202.split.us.i.epil, !llvm.loop !667

._crit_edge203.i:                                 ; preds = %bb.af, %._crit_edge203.i.loopexit.unr-lcssa, %.lr.ph202.split.us.i.epil, %._crit_edge199.i.thread, %._crit_edge199.thread.i, %._crit_edge199.thread291.i, %._crit_edge199.i
  %i.lq = load ptr, ptr %17, align 8, !tbaa !815  ; 3 uses
  %.not.i.i159.i = icmp eq ptr %i.lq, %i.ce
  %i.lr = icmp eq ptr %i.lq, null
  %or.cond.i.i = or i1 %.not.i.i159.i, %i.lr
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge203.i
  call void @_ZdaPv(ptr noundef nonnull %i.lq) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i:          ; preds = %bb.ad, %._crit_edge203.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.ls = load ptr, ptr %16, align 8, !tbaa !812  ; 3 uses
  %.not.i.i161.i = icmp eq ptr %i.ls, %i.cc
  %i.lt = icmp eq ptr %i.ls, null
  %or.cond.i162.i = or i1 %.not.i.i161.i, %i.lt
  br i1 %or.cond.i162.i, label %_ZN2cv12cpu_baselineL14fillTileBorderILi1EEEvPKhmiiPhmiiiiiS3_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.ls) #27
  br label %_ZN2cv12cpu_baselineL14fillTileBorderILi1EEEvPKhmiiPhmiiiiiS3_.exit

.lr.ph202.split.i:                                ; preds = %bb.af, %.lr.ph202.split.preheader.i
  %indvars.iv250.i = phi i64 [ 0, %.lr.ph202.split.preheader.i ], [ %indvars.iv.next251.i, %bb.af ] ; 3 uses
  %i.lu = trunc i64 %indvars.iv250.i to i32
  %i.lv = add i32 %i.fq, %i.lu
  %i.lw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.lv, i32 noundef %i.fq, i32 noundef %i.p)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.lr.ph202.split.i
  %i.lx = mul i64 %indvars.iv250.i, %i.fs
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.lx
  %i.lz = add nsw i32 %i.lw, %.sroa.speculated1057
  %i.ma = sext i32 %i.lz to i64
  %i.mb = mul i64 %i.fs, %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.mb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ly, ptr align 1 %i.mc, i64 %i.kp, i1 false)
  %indvars.iv.next251.i = add nuw nsw i64 %indvars.iv250.i, 1 ; 2 uses
  %exitcond254.not.i = icmp eq i64 %indvars.iv.next251.i, %wide.trip.count253.i
  br i1 %exitcond254.not.i, label %._crit_edge203.i, label %.lr.ph202.split.i, !llvm.loop !666

bb.ag:                                            ; preds = %.lr.ph202.split.i
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ac, %bb.aa
  %.pn.pn.i = phi { ptr, i32 } [ %i.go, %bb.aa ], [ %i.ln, %bb.ac ], [ %i.md, %bb.ag ]
  %i.me = load ptr, ptr %17, align 8, !tbaa !815  ; 3 uses
  %.not.i.i163.i = icmp eq ptr %i.me, %i.ce
  %i.mf = icmp eq ptr %i.me, null
  %or.cond.i164.i = or i1 %.not.i.i163.i, %i.mf
end_hunk_0
begin_hunk_1_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
bb.am:                                            ; preds = %bb.n
  %i.mj = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.mk = load i64, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.ml = load i32, ptr %i.av, align 4, !tbaa !122 ; 5 uses
  %i.mm = load i32, ptr %i.aw, align 8, !tbaa !130 ; 10 uses
  %i.mn = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 14 uses
  %i.mo = load i64, ptr %i.ay, align 8, !tbaa !97 ; 23 uses
  %i.mp = add i32 %i.ml, %.sroa.speculated1047    ; 2 uses
  %i.mq = add i32 %i.mp, %.sroa.speculated        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.mr = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1047 ; 2 uses
  %i.ms = zext nneg i32 %i.mr to i64              ; 2 uses
  store ptr %i.by, ptr %14, align 8, !tbaa !812
  %.not.i.i.i238 = icmp samesign ugt i32 %i.mr, 264
  store i64 %i.ms, ptr %i.bz, align 8, !tbaa !813
  br i1 %.not.i.i.i238, label %bb.an, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i239

bb.an:                                            ; preds = %bb.am
  %i.mt = shl nuw nsw i64 %i.ms, 2
  %i.mu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mt) #29
          to label %.noexc345 unwind label %bb.al ; 2 uses

.noexc345:                                        ; preds = %bb.an
  store ptr %i.mu, ptr %14, align 8, !tbaa !812
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i239

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i239:        ; preds = %.noexc345, %bb.am
  %i.mv = phi ptr [ %i.by, %bb.am ], [ %i.mu, %.noexc345 ] ; 8 uses
  br i1 %i.ds, label %.lr.ph.preheader.i339, label %.preheader176.i240

.lr.ph.preheader.i339:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i239
  %wide.trip.count.i340 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i341

.preheader176.i240:                               ; preds = %bb.ao, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i239
  br i1 %i.dx, label %.lr.ph179.preheader.i331, label %._crit_edge.i241

.lr.ph179.preheader.i331:                         ; preds = %.preheader176.i240
  %i.mw = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i332 = zext nneg i32 %i.dw to i64
  %invariant.gep.i333 = getelementptr [4 x i8], ptr %i.mv, i64 %i.mw
  br label %.lr.ph179.i334

.lr.ph.i341:                                      ; preds = %bb.ao, %.lr.ph.preheader.i339
  %indvars.iv.i342 = phi i64 [ 0, %.lr.ph.preheader.i339 ], [ %indvars.iv.next.i343, %bb.ao ] ; 3 uses
  %i.mx = trunc i64 %indvars.iv.i342 to i32
  %i.my = sub i32 %i.mx, %.sroa.speculated1047
  %i.mz = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.my, i32 noundef %i.ml, i32 noundef %i.p)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i341
  %i.na = shl nsw i32 %i.mz, 1
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.i342
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !12
  %indvars.iv.next.i343 = add nuw nsw i64 %indvars.iv.i342, 1 ; 2 uses
  %exitcond.not.i344 = icmp eq i64 %indvars.iv.next.i343, %wide.trip.count.i340
  br i1 %exitcond.not.i344, label %.preheader176.i240, label %.lr.ph.i341, !llvm.loop !668

bb.ap:                                            ; preds = %.lr.ph.i341
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

._crit_edge.i241:                                 ; preds = %bb.aq, %.preheader176.i240
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr %i.ca, ptr %15, align 8, !tbaa !815
  store i64 1032, ptr %i.cb, align 8, !tbaa !816
  %or.cond.i320 = or i1 %i.dm, %i.dr
  %or.cond1076 = select i1 %i.bd, i1 %or.cond.i320, i1 false
  br i1 %or.cond1076, label %bb.as, label %.loopexit175.i242

.lr.ph179.i334:                                   ; preds = %bb.aq, %.lr.ph179.preheader.i331
  %indvars.iv208.i335 = phi i64 [ 0, %.lr.ph179.preheader.i331 ], [ %indvars.iv.next209.i337, %bb.aq ] ; 3 uses
  %i.nd = trunc i64 %indvars.iv208.i335 to i32
  %i.ne = add i32 %i.ml, %i.nd
  %i.nf = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ne, i32 noundef %i.ml, i32 noundef %i.p)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.lr.ph179.i334
  %i.ng = shl nsw i32 %i.nf, 1
  %gep.i336 = getelementptr [4 x i8], ptr %invariant.gep.i333, i64 %indvars.iv208.i335
  store i32 %i.ng, ptr %gep.i336, align 4, !tbaa !12
  %indvars.iv.next209.i337 = add nuw nsw i64 %indvars.iv208.i335, 1 ; 2 uses
  %exitcond212.not.i338 = icmp eq i64 %indvars.iv.next209.i337, %wide.trip.count211.i332
  br i1 %exitcond212.not.i338, label %._crit_edge.i241, label %.lr.ph179.i334, !llvm.loop !669

bb.ar:                                            ; preds = %.lr.ph179.i334
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.as:                                            ; preds = %._crit_edge.i241
  %i.ni = shl nsw i32 %i.mq, 1                    ; 2 uses
  %i.nj = sext i32 %i.ni to i64                   ; 2 uses
  %.not.i.i321 = icmp ugt i32 %i.ni, 1032
  store i64 %i.nj, ptr %i.cb, align 8, !tbaa !816
  br i1 %.not.i.i321, label %bb.at, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322

bb.at:                                            ; preds = %bb.as
  %i.nk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nj) #29
          to label %.noexc.i330 unwind label %bb.au ; 2 uses

.noexc.i330:                                      ; preds = %bb.at
  store ptr %i.nk, ptr %15, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322: ; preds = %.noexc.i330, %bb.as
  %i.nl = phi ptr [ %i.nk, %.noexc.i330 ], [ %i.ca, %bb.as ] ; 7 uses
  %i.nm = icmp sgt i32 %i.mq, 0
  br i1 %i.nm, label %iter.check1400, label %.loopexit175.i242

iter.check1400:                                   ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322
  %wide.trip.count216.i324 = zext nneg i32 %i.mq to i64 ; 6 uses
  %.pre.i325 = load i16, ptr %i.fk, align 1       ; 3 uses
  %min.iters.check1387 = icmp ult i32 %i.mq, 4
  br i1 %min.iters.check1387, label %.lr.ph181.i326.preheader, label %vector.main.loop.iter.check1388

vector.main.loop.iter.check1388:                  ; preds = %iter.check1400
  %min.iters.check1389 = icmp ult i32 %i.mq, 16
  br i1 %min.iters.check1389, label %vec.epilog.ph1404, label %vector.ph1390

vector.ph1390:                                    ; preds = %vector.main.loop.iter.check1388
  %i.nn = and i64 %wide.trip.count216.i324, 12
  %n.vec1391 = and i64 %wide.trip.count216.i324, 2147483632 ; 4 uses
  %broadcast.splatinsert1392 = insertelement <8 x i16> poison, i16 %.pre.i325, i64 0
  %broadcast.splat1393 = shufflevector <8 x i16> %broadcast.splatinsert1392, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body1394

vector.body1394:                                  ; preds = %vector.ph1390, %vector.body1394
  %index1395 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1396, %vector.body1394 ] ; 2 uses
  %i.no = shl nuw nsw i64 %index1395, 1
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.no ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  store <8 x i16> %broadcast.splat1393, ptr %i.np, align 1
  store <8 x i16> %broadcast.splat1393, ptr %i.nq, align 1
  %index.next1396 = add nuw i64 %index1395, 16    ; 2 uses
  %i.nr = icmp eq i64 %index.next1396, %n.vec1391
  br i1 %i.nr, label %middle.block1397, label %vector.body1394, !llvm.loop !670

middle.block1397:                                 ; preds = %vector.body1394
  %cmp.n1398 = icmp eq i64 %n.vec1391, %wide.trip.count216.i324
  br i1 %cmp.n1398, label %.loopexit175.i242, label %vec.epilog.iter.check1402

vec.epilog.iter.check1402:                        ; preds = %middle.block1397
  %min.epilog.iters.check1403 = icmp eq i64 %i.nn, 0
  br i1 %min.epilog.iters.check1403, label %.lr.ph181.i326.preheader, label %vec.epilog.ph1404, !prof !241

vec.epilog.ph1404:                                ; preds = %vector.main.loop.iter.check1388, %vec.epilog.iter.check1402
  %vec.epilog.resume.val1399 = phi i64 [ %n.vec1391, %vec.epilog.iter.check1402 ], [ 0, %vector.main.loop.iter.check1388 ]
  %n.vec1405 = and i64 %wide.trip.count216.i324, 2147483644 ; 3 uses
  %broadcast.splatinsert1406 = insertelement <4 x i16> poison, i16 %.pre.i325, i64 0
  %broadcast.splat1407 = shufflevector <4 x i16> %broadcast.splatinsert1406, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1408

vec.epilog.vector.body1408:                       ; preds = %vec.epilog.vector.body1408, %vec.epilog.ph1404
  %index1409 = phi i64 [ %vec.epilog.resume.val1399, %vec.epilog.ph1404 ], [ %index.next1410, %vec.epilog.vector.body1408 ] ; 2 uses
  %i.ns = shl nuw nsw i64 %index1409, 1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.ns
  store <4 x i16> %broadcast.splat1407, ptr %i.nt, align 1
  %index.next1410 = add nuw i64 %index1409, 4     ; 2 uses
  %i.nu = icmp eq i64 %index.next1410, %n.vec1405
  br i1 %i.nu, label %vec.epilog.middle.block1411, label %vec.epilog.vector.body1408, !llvm.loop !671

vec.epilog.middle.block1411:                      ; preds = %vec.epilog.vector.body1408
  %cmp.n1412 = icmp eq i64 %n.vec1405, %wide.trip.count216.i324
  br i1 %cmp.n1412, label %.loopexit175.i242, label %.lr.ph181.i326.preheader

.lr.ph181.i326.preheader:                         ; preds = %iter.check1400, %vec.epilog.iter.check1402, %vec.epilog.middle.block1411
  %indvars.iv213.i327.ph = phi i64 [ 0, %iter.check1400 ], [ %n.vec1391, %vec.epilog.iter.check1402 ], [ %n.vec1405, %vec.epilog.middle.block1411 ]
  br label %.lr.ph181.i326

bb.au:                                            ; preds = %bb.at
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph181.i326:                                   ; preds = %.lr.ph181.i326.preheader, %.lr.ph181.i326
  %indvars.iv213.i327 = phi i64 [ %indvars.iv.next214.i328, %.lr.ph181.i326 ], [ %indvars.iv213.i327.ph, %.lr.ph181.i326.preheader ] ; 2 uses
  %i.nw = shl nuw nsw i64 %indvars.iv213.i327, 1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nw
  store i16 %.pre.i325, ptr %i.nx, align 1
  %indvars.iv.next214.i328 = add nuw nsw i64 %indvars.iv213.i327, 1 ; 2 uses
  %exitcond217.not.i329 = icmp eq i64 %indvars.iv.next214.i328, %wide.trip.count216.i324
  br i1 %exitcond217.not.i329, label %.loopexit175.i242, label %.lr.ph181.i326, !llvm.loop !672

.loopexit175.i242:                                ; preds = %.lr.ph181.i326, %middle.block1397, %vec.epilog.middle.block1411, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322, %._crit_edge.i241
  %.0138.i243 = phi ptr [ null, %._crit_edge.i241 ], [ %i.nl, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322 ], [ %i.nl, %middle.block1397 ], [ %i.nl, %vec.epilog.middle.block1411 ], [ %i.nl, %.lr.ph181.i326 ] ; 10 uses
  %i.ny = icmp sgt i32 %i.mm, 0
  br i1 %i.ny, label %.lr.ph196.i285, label %.preheader.i244

.lr.ph196.i285:                                   ; preds = %.loopexit175.i242
  %i.nz = zext nneg i32 %.sroa.speculated1057 to i64 ; 3 uses
  %i.oa = mul i64 %i.mo, %i.nz                    ; 2 uses
  %i.ob = getelementptr i8, ptr %i.mn, i64 %i.oa  ; 3 uses
  %i.oc = shl nuw nsw i32 %.sroa.speculated1047, 1
  %i.od = zext nneg i32 %i.oc to i64              ; 2 uses
  %i.oe = shl nsw i32 %i.ml, 1
  %i.of = sext i32 %i.oe to i64                   ; 2 uses
  %i.og = sext i32 %i.mp to i64                   ; 11 uses
  %wide.trip.count232.i303 = zext nneg i32 %.sroa.speculated1047 to i64 ; 12 uses
  %wide.trip.count237.i304 = zext nneg i32 %.sroa.speculated to i64 ; 11 uses
  br i1 %i.bd, label %.preheader171.us.i305.preheader, label %.preheader174.preheader.i

.preheader171.us.i305.preheader:                  ; preds = %.lr.ph196.i285
  %i.oh = shl nsw i64 %i.og, 1                    ; 2 uses
  %i.oi = getelementptr i8, ptr %i.mn, i64 %i.oa
  %scevgep1341 = getelementptr i8, ptr %i.oi, i64 %i.oh
  %i.oj = add nsw i32 %i.mm, -1
  %i.ok = zext i32 %i.oj to i64
  %i.ol = add nuw nsw i64 %i.nz, %i.ok
  %i.om = mul i64 %i.mo, %i.ol
  %36 = shl nuw nsw i64 %wide.trip.count237.i304, 1
  %i.on = getelementptr i8, ptr %i.mn, i64 %i.om
  %i.oo = getelementptr i8, ptr %i.on, i64 %i.oh
  %scevgep1343 = getelementptr i8, ptr %i.oo, i64 %36
  %scevgep1344 = getelementptr i8, ptr %i.fk, i64 2
  %i.op = add nsw i32 %i.mm, -1
  %i.oq = zext i32 %i.op to i64
  %i.or = add nuw nsw i64 %i.nz, %i.oq
  %i.os = mul i64 %i.mo, %i.or
  %i.ot = shl nuw nsw i64 %wide.trip.count232.i303, 1
  %i.ou = getelementptr i8, ptr %i.mn, i64 %i.os
  %scevgep1354 = getelementptr i8, ptr %i.ou, i64 %i.ot
  %scevgep1355 = getelementptr i8, ptr %i.fk, i64 2
  %min.iters.check1360 = icmp slt i32 %.neg214, 4
  %bound01356 = icmp ult ptr %i.ob, %scevgep1355
  %bound11357 = icmp ult ptr %i.fk, %scevgep1354
  %found.conflict1358 = and i1 %bound01356, %bound11357
  %stride.check1359 = icmp slt i64 %i.mo, 0
  %i.ov = or i1 %found.conflict1358, %stride.check1359
  %min.iters.check1362 = icmp slt i32 %.neg214, 16
  %i.ow = and i64 %wide.trip.count232.i303, 12
  %n.vec1364 = and i64 %wide.trip.count232.i303, 2147483632 ; 4 uses
  %cmp.n1371 = icmp eq i64 %n.vec1364, %wide.trip.count232.i303
  %min.epilog.iters.check1376 = icmp eq i64 %i.ow, 0
  %n.vec1378 = and i64 %wide.trip.count232.i303, 2147483644 ; 3 uses
  %cmp.n1385 = icmp eq i64 %n.vec1378, %wide.trip.count232.i303
  %xtraiter1782 = and i64 %wide.trip.count232.i303, 3 ; 2 uses
  %lcmp.mod1783.not = icmp eq i64 %xtraiter1782, 0
  %min.iters.check = icmp slt i32 %i.dw, 4
  %bound0 = icmp ult ptr %scevgep1341, %scevgep1344
  %bound1 = icmp ult ptr %i.fk, %scevgep1343
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.mo, 0
  %i.ox = or i1 %found.conflict, %stride.check
  %min.iters.check1346 = icmp slt i32 %i.dw, 16
  %i.oy = and i64 %wide.trip.count237.i304, 12
  %n.vec = and i64 %wide.trip.count237.i304, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count237.i304
  %min.epilog.iters.check = icmp eq i64 %i.oy, 0
  %n.vec1347 = and i64 %wide.trip.count237.i304, 2147483644 ; 3 uses
  %cmp.n1352 = icmp eq i64 %n.vec1347, %wide.trip.count237.i304
  %xtraiter1786 = and i64 %wide.trip.count237.i304, 3 ; 2 uses
  %lcmp.mod1787.not = icmp eq i64 %xtraiter1786, 0
  %invariant.op1848 = add nsw i64 1, %i.og
  %invariant.op1850 = add nsw i64 2, %i.og
  %invariant.op1852 = add nsw i64 3, %i.og
  br label %.preheader171.us.i305

.preheader174.preheader.i:                        ; preds = %.lr.ph196.i285
  %invariant.gep278.i = getelementptr [4 x i8], ptr %i.mv, i64 %wide.trip.count232.i303 ; 3 uses
  %xtraiter1769 = and i64 %wide.trip.count232.i303, 3 ; 3 uses
  %i.oz = add nsw i32 %.sroa.speculated1047, -1
  %i.pa = icmp ult i32 %i.oz, 3
  %unroll_iter1773 = and i64 %wide.trip.count232.i303, 2147483644
  %lcmp.mod1771.not = icmp eq i64 %xtraiter1769, 0
  %lcmp.mod1772 = icmp ne i64 %xtraiter1769, 0
  %xtraiter1776.a = and i64 %wide.trip.count237.i304, 1
  %i.pb = icmp eq i32 %i.dw, 1
  %unroll_iter1780.a = and i64 %wide.trip.count237.i304, 2147483646
  %lcmp.mod1778.not.a = icmp eq i64 %xtraiter1776.a, 0
  %lcmp.mod1779.a = trunc i32 %.sroa.speculated to i1
  br label %.preheader174.i288

.preheader171.us.i305:                            ; preds = %.preheader171.us.i305.preheader, %.loopexit.us.i310
  %.0135194.us.i306 = phi i32 [ %i.rh, %.loopexit.us.i310 ], [ 0, %.preheader171.us.i305.preheader ]
  %.0136192.us.i307 = phi ptr [ %i.ri, %.loopexit.us.i310 ], [ %i.ob, %.preheader171.us.i305.preheader ] ; 16 uses
  %.0145190.us.i308 = phi ptr [ %i.rj, %.loopexit.us.i310 ], [ %i.mj, %.preheader171.us.i305.preheader ] ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.od
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pc, ptr align 1 %.0145190.us.i308, i64 %i.of, i1 false)
  br i1 %i.ds, label %iter.check1373, label %.preheader170.us.i309

iter.check1373:                                   ; preds = %.preheader171.us.i305
  %brmerge = select i1 %min.iters.check1360, i1 true, i1 %i.ov
  br i1 %brmerge, label %.lr.ph187.us.i316.preheader, label %vector.main.loop.iter.check1361

vector.main.loop.iter.check1361:                  ; preds = %iter.check1373
  br i1 %min.iters.check1362, label %vec.epilog.ph1377, label %vector.ph1363

vector.ph1363:                                    ; preds = %vector.main.loop.iter.check1361
  %i.pd = load i16, ptr %i.fk, align 1, !alias.scope !817
  %broadcast.splatinsert1367 = insertelement <8 x i16> poison, i16 %i.pd, i64 0
  %broadcast.splat1368 = shufflevector <8 x i16> %broadcast.splatinsert1367, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.ph1363, %vector.body1365
  %index1366 = phi i64 [ 0, %vector.ph1363 ], [ %index.next1369, %vector.body1365 ] ; 2 uses
  %i.pe = shl nuw nsw i64 %index1366, 1
  %i.pf = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.pe ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  store <8 x i16> %broadcast.splat1368, ptr %i.pf, align 1, !alias.scope !818, !noalias !817
  store <8 x i16> %broadcast.splat1368, ptr %i.pg, align 1, !alias.scope !818, !noalias !817
  %index.next1369 = add nuw i64 %index1366, 16    ; 2 uses
  %i.ph = icmp eq i64 %index.next1369, %n.vec1364
  br i1 %i.ph, label %middle.block1370, label %vector.body1365, !llvm.loop !676

middle.block1370:                                 ; preds = %vector.body1365
  br i1 %cmp.n1371, label %.preheader170.us.i309, label %vec.epilog.iter.check1375

vec.epilog.iter.check1375:                        ; preds = %middle.block1370
  br i1 %min.epilog.iters.check1376, label %.lr.ph187.us.i316.preheader, label %vec.epilog.ph1377, !prof !241

vec.epilog.ph1377:                                ; preds = %vector.main.loop.iter.check1361, %vec.epilog.iter.check1375
  %vec.epilog.resume.val1372 = phi i64 [ %n.vec1364, %vec.epilog.iter.check1375 ], [ 0, %vector.main.loop.iter.check1361 ]
  %i.pi = load i16, ptr %i.fk, align 1, !alias.scope !817
  %broadcast.splatinsert1381 = insertelement <4 x i16> poison, i16 %i.pi, i64 0
  %broadcast.splat1382 = shufflevector <4 x i16> %broadcast.splatinsert1381, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1379

vec.epilog.vector.body1379:                       ; preds = %vec.epilog.vector.body1379, %vec.epilog.ph1377
  %index1380 = phi i64 [ %vec.epilog.resume.val1372, %vec.epilog.ph1377 ], [ %index.next1383, %vec.epilog.vector.body1379 ] ; 2 uses
  %i.pj = shl nuw nsw i64 %index1380, 1
  %i.pk = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.pj
  store <4 x i16> %broadcast.splat1382, ptr %i.pk, align 1, !alias.scope !818, !noalias !817
  %index.next1383 = add nuw i64 %index1380, 4     ; 2 uses
  %i.pl = icmp eq i64 %index.next1383, %n.vec1378
  br i1 %i.pl, label %vec.epilog.middle.block1384, label %vec.epilog.vector.body1379, !llvm.loop !677

vec.epilog.middle.block1384:                      ; preds = %vec.epilog.vector.body1379
  br i1 %cmp.n1385, label %.preheader170.us.i309, label %.lr.ph187.us.i316.preheader

.lr.ph187.us.i316.preheader:                      ; preds = %iter.check1373, %vec.epilog.iter.check1375, %vec.epilog.middle.block1384
  %indvars.iv229.i317.ph = phi i64 [ 0, %iter.check1373 ], [ %n.vec1378, %vec.epilog.middle.block1384 ], [ %n.vec1364, %vec.epilog.iter.check1375 ] ; 3 uses
  br i1 %lcmp.mod1783.not, label %.lr.ph187.us.i316.prol.loopexit, label %.lr.ph187.us.i316.prol

.lr.ph187.us.i316.prol:                           ; preds = %.lr.ph187.us.i316.preheader, %.lr.ph187.us.i316.prol
  %indvars.iv229.i317.prol = phi i64 [ %indvars.iv.next230.i318.prol, %.lr.ph187.us.i316.prol ], [ %indvars.iv229.i317.ph, %.lr.ph187.us.i316.preheader ] ; 2 uses
  %prol.iter1784 = phi i64 [ %prol.iter1784.next, %.lr.ph187.us.i316.prol ], [ 0, %.lr.ph187.us.i316.preheader ]
  %i.pm = shl nuw nsw i64 %indvars.iv229.i317.prol, 1
  %i.pn = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.pm
  %i.po = load i16, ptr %i.fk, align 1
  store i16 %i.po, ptr %i.pn, align 1
  %indvars.iv.next230.i318.prol = add nuw nsw i64 %indvars.iv229.i317.prol, 1 ; 2 uses
  %prol.iter1784.next = add i64 %prol.iter1784, 1 ; 2 uses
  %prol.iter1784.cmp.not = icmp eq i64 %prol.iter1784.next, %xtraiter1782
  br i1 %prol.iter1784.cmp.not, label %.lr.ph187.us.i316.prol.loopexit, label %.lr.ph187.us.i316.prol, !llvm.loop !678

.lr.ph187.us.i316.prol.loopexit:                  ; preds = %.lr.ph187.us.i316.prol, %.lr.ph187.us.i316.preheader
  %indvars.iv229.i317.unr = phi i64 [ %indvars.iv229.i317.ph, %.lr.ph187.us.i316.preheader ], [ %indvars.iv.next230.i318.prol, %.lr.ph187.us.i316.prol ]
  %i.pp = sub nsw i64 %indvars.iv229.i317.ph, %wide.trip.count232.i303
  %i.pq = icmp ugt i64 %i.pp, -4
  br i1 %i.pq, label %.preheader170.us.i309, label %.lr.ph187.us.i316

.lr.ph187.us.i316:                                ; preds = %.lr.ph187.us.i316.prol.loopexit, %.lr.ph187.us.i316
  %indvars.iv229.i317 = phi i64 [ %indvars.iv.next230.i318.3, %.lr.ph187.us.i316 ], [ %indvars.iv229.i317.unr, %.lr.ph187.us.i316.prol.loopexit ] ; 5 uses
  %i.pr = shl nuw nsw i64 %indvars.iv229.i317, 1
  %i.ps = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.pr
  %i.pt = load i16, ptr %i.fk, align 1
  store i16 %i.pt, ptr %i.ps, align 1
  %indvars.iv.next230.i318 = shl i64 %indvars.iv229.i317, 1
  %i.pu = getelementptr i8, ptr %.0136192.us.i307, i64 %indvars.iv.next230.i318
  %i.pv = getelementptr i8, ptr %i.pu, i64 2
  %i.pw = load i16, ptr %i.fk, align 1
  store i16 %i.pw, ptr %i.pv, align 1
  %indvars.iv.next230.i318.1 = shl i64 %indvars.iv229.i317, 1
  %i.px = getelementptr i8, ptr %.0136192.us.i307, i64 %indvars.iv.next230.i318.1
  %i.py = getelementptr i8, ptr %i.px, i64 4
  %i.pz = load i16, ptr %i.fk, align 1
  store i16 %i.pz, ptr %i.py, align 1
  %indvars.iv.next230.i318.2 = shl i64 %indvars.iv229.i317, 1
  %i.qa = getelementptr i8, ptr %.0136192.us.i307, i64 %indvars.iv.next230.i318.2
  %i.qb = getelementptr i8, ptr %i.qa, i64 6
  %i.qc = load i16, ptr %i.fk, align 1
  store i16 %i.qc, ptr %i.qb, align 1
  %indvars.iv.next230.i318.3 = add nuw nsw i64 %indvars.iv229.i317, 4 ; 2 uses
  %exitcond233.not.i319.3 = icmp eq i64 %indvars.iv.next230.i318.3, %wide.trip.count232.i303
  br i1 %exitcond233.not.i319.3, label %.preheader170.us.i309, label %.lr.ph187.us.i316, !llvm.loop !679

.lr.ph189.us.i312:                                ; preds = %.lr.ph189.us.i312.prol.loopexit, %.lr.ph189.us.i312
  %indvars.iv234.i313 = phi i64 [ %indvars.iv.next235.i314.3, %.lr.ph189.us.i312 ], [ %indvars.iv234.i313.unr, %.lr.ph189.us.i312.prol.loopexit ] ; 5 uses
  %i.qd = add nsw i64 %indvars.iv234.i313, %i.og
  %i.qe = shl nsw i64 %i.qd, 1
  %i.qf = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.qe
  %i.qg = load i16, ptr %i.fk, align 1
  store i16 %i.qg, ptr %i.qf, align 1
  %.reass1849 = add nsw i64 %indvars.iv234.i313, %invariant.op1848
  %i.qh = shl nsw i64 %.reass1849, 1
  %i.qi = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.qh
  %i.qj = load i16, ptr %i.fk, align 1
  store i16 %i.qj, ptr %i.qi, align 1
  %.reass1851 = add nsw i64 %indvars.iv234.i313, %invariant.op1850
  %i.qk = shl nsw i64 %.reass1851, 1
  %i.ql = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.qk
  %i.qm = load i16, ptr %i.fk, align 1
  store i16 %i.qm, ptr %i.ql, align 1
  %.reass1853 = add nsw i64 %indvars.iv234.i313, %invariant.op1852
  %i.qn = shl nsw i64 %.reass1853, 1
  %i.qo = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.qn
  %i.qp = load i16, ptr %i.fk, align 1
  store i16 %i.qp, ptr %i.qo, align 1
  %indvars.iv.next235.i314.3 = add nuw nsw i64 %indvars.iv234.i313, 4 ; 2 uses
  %exitcond238.not.i315.3 = icmp eq i64 %indvars.iv.next235.i314.3, %wide.trip.count237.i304
  br i1 %exitcond238.not.i315.3, label %.loopexit.us.i310, label %.lr.ph189.us.i312, !llvm.loop !680

.preheader170.us.i309:                            ; preds = %.lr.ph187.us.i316.prol.loopexit, %.lr.ph187.us.i316, %middle.block1370, %vec.epilog.middle.block1384, %.preheader171.us.i305
  br i1 %i.dx, label %iter.check, label %.loopexit.us.i310

iter.check:                                       ; preds = %.preheader170.us.i309
  %brmerge1854 = select i1 %min.iters.check, i1 true, i1 %i.ox
  br i1 %brmerge1854, label %.lr.ph189.us.i312.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1346, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qq = load i16, ptr %i.fk, align 1, !alias.scope !819
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.qq, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qr = add nsw i64 %index, %i.og
  %i.qs = shl nsw i64 %i.qr, 1
  %i.qt = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.qs ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.qt, align 1, !alias.scope !820, !noalias !819
  store <8 x i16> %broadcast.splat, ptr %i.qu, align 1, !alias.scope !820, !noalias !819
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.qv = icmp eq i64 %index.next, %n.vec
  br i1 %i.qv, label %middle.block, label %vector.body, !llvm.loop !684

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.i310, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph189.us.i312.preheader, label %vec.epilog.ph, !prof !241

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.qw = load i16, ptr %i.fk, align 1, !alias.scope !819
  %broadcast.splatinsert1349 = insertelement <4 x i16> poison, i16 %i.qw, i64 0
  %broadcast.splat1350 = shufflevector <4 x i16> %broadcast.splatinsert1349, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1348 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1351, %vec.epilog.vector.body ] ; 2 uses
  %i.qx = add nsw i64 %index1348, %i.og
  %i.qy = shl nsw i64 %i.qx, 1
  %i.qz = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.qy
  store <4 x i16> %broadcast.splat1350, ptr %i.qz, align 1, !alias.scope !820, !noalias !819
  %index.next1351 = add nuw i64 %index1348, 4     ; 2 uses
  %i.ra = icmp eq i64 %index.next1351, %n.vec1347
  br i1 %i.ra, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !685

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1352, label %.loopexit.us.i310, label %.lr.ph189.us.i312.preheader

.lr.ph189.us.i312.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv234.i313.ph = phi i64 [ 0, %iter.check ], [ %n.vec1347, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod1787.not, label %.lr.ph189.us.i312.prol.loopexit, label %.lr.ph189.us.i312.prol

.lr.ph189.us.i312.prol:                           ; preds = %.lr.ph189.us.i312.preheader, %.lr.ph189.us.i312.prol
  %indvars.iv234.i313.prol = phi i64 [ %indvars.iv.next235.i314.prol, %.lr.ph189.us.i312.prol ], [ %indvars.iv234.i313.ph, %.lr.ph189.us.i312.preheader ] ; 2 uses
  %prol.iter1788 = phi i64 [ %prol.iter1788.next, %.lr.ph189.us.i312.prol ], [ 0, %.lr.ph189.us.i312.preheader ]
  %i.rb = add nsw i64 %indvars.iv234.i313.prol, %i.og
  %i.rc = shl nsw i64 %i.rb, 1
  %i.rd = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.rc
  %i.re = load i16, ptr %i.fk, align 1
  store i16 %i.re, ptr %i.rd, align 1
  %indvars.iv.next235.i314.prol = add nuw nsw i64 %indvars.iv234.i313.prol, 1 ; 2 uses
  %prol.iter1788.next = add i64 %prol.iter1788, 1 ; 2 uses
  %prol.iter1788.cmp.not = icmp eq i64 %prol.iter1788.next, %xtraiter1786
  br i1 %prol.iter1788.cmp.not, label %.lr.ph189.us.i312.prol.loopexit, label %.lr.ph189.us.i312.prol, !llvm.loop !686

.lr.ph189.us.i312.prol.loopexit:                  ; preds = %.lr.ph189.us.i312.prol, %.lr.ph189.us.i312.preheader
  %indvars.iv234.i313.unr = phi i64 [ %indvars.iv234.i313.ph, %.lr.ph189.us.i312.preheader ], [ %indvars.iv.next235.i314.prol, %.lr.ph189.us.i312.prol ]
  %i.rf = sub nsw i64 %indvars.iv234.i313.ph, %wide.trip.count237.i304
  %i.rg = icmp ugt i64 %i.rf, -4
  br i1 %i.rg, label %.loopexit.us.i310, label %.lr.ph189.us.i312

.loopexit.us.i310:                                ; preds = %.lr.ph189.us.i312.prol.loopexit, %.lr.ph189.us.i312, %middle.block, %vec.epilog.middle.block, %.preheader170.us.i309
  %i.rh = add nuw nsw i32 %.0135194.us.i306, 1    ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.mo
  %i.rj = getelementptr inbounds nuw i8, ptr %.0145190.us.i308, i64 %i.mk
  %exitcond239.not.i311 = icmp eq i32 %i.rh, %i.mm
  br i1 %exitcond239.not.i311, label %.preheader.i244, label %.preheader171.us.i305, !llvm.loop !687

.preheader.i244:                                  ; preds = %.loopexit173.i293, %.loopexit.us.i310, %.loopexit175.i242
  br i1 %i.dm, label %.lr.ph198.i273, label %._crit_edge199.i245

.lr.ph198.i273:                                   ; preds = %.preheader.i244
  %i.rk = shl nsw i32 %i.mq, 1
  %i.rl = sext i32 %i.rk to i64                   ; 7 uses
  %wide.trip.count248.i274 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i279.preheader, label %.lr.ph198.split.i275

.lr.ph198.split.us.i279.preheader:                ; preds = %.lr.ph198.i273
  %xtraiter1789 = and i64 %wide.trip.count248.i274, 3 ; 3 uses
  %i.rm = add nsw i32 %.neg, -1
  %i.rn = icmp ult i32 %i.rm, 3
  br i1 %i.rn, label %.lr.ph198.split.us.i279.epil.preheader, label %.lr.ph198.split.us.i279.preheader.new

.lr.ph198.split.us.i279.preheader.new:            ; preds = %.lr.ph198.split.us.i279.preheader
  %unroll_iter1793 = and i64 %wide.trip.count248.i274, 2147483644
  br label %.lr.ph198.split.us.i279

.lr.ph198.split.us.i279:                          ; preds = %.lr.ph198.split.us.i279, %.lr.ph198.split.us.i279.preheader.new
  %indvars.iv245.i280 = phi i64 [ 0, %.lr.ph198.split.us.i279.preheader.new ], [ %indvars.iv.next246.i281.3, %.lr.ph198.split.us.i279 ] ; 5 uses
  %niter1794 = phi i64 [ 0, %.lr.ph198.split.us.i279.preheader.new ], [ %niter1794.next.3, %.lr.ph198.split.us.i279 ]
  %i.ro = mul i64 %indvars.iv245.i280, %i.mo
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.ro
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rp, ptr align 1 %.0138.i243, i64 %i.rl, i1 false)
  %indvars.iv.next246.i281 = or disjoint i64 %indvars.iv245.i280, 1
  %i.rq = mul i64 %indvars.iv.next246.i281, %i.mo
  %i.rr = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.rq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rr, ptr align 1 %.0138.i243, i64 %i.rl, i1 false)
  %indvars.iv.next246.i281.1 = or disjoint i64 %indvars.iv245.i280, 2
  %i.rs = mul i64 %indvars.iv.next246.i281.1, %i.mo
  %i.rt = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.rs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rt, ptr align 1 %.0138.i243, i64 %i.rl, i1 false)
  %indvars.iv.next246.i281.2 = or disjoint i64 %indvars.iv245.i280, 3
  %i.ru = mul i64 %indvars.iv.next246.i281.2, %i.mo
  %i.rv = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.ru
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rv, ptr align 1 %.0138.i243, i64 %i.rl, i1 false)
  %indvars.iv.next246.i281.3 = add nuw nsw i64 %indvars.iv245.i280, 4 ; 2 uses
  %niter1794.next.3 = add i64 %niter1794, 4       ; 2 uses
  %niter1794.ncmp.3 = icmp eq i64 %niter1794.next.3, %unroll_iter1793
  br i1 %niter1794.ncmp.3, label %._crit_edge199.thread.i283.unr-lcssa, label %.lr.ph198.split.us.i279, !llvm.loop !688

.preheader174.i288:                               ; preds = %.loopexit173.i293, %.preheader174.preheader.i
  %.0135194.i289 = phi i32 [ %i.ub, %.loopexit173.i293 ], [ 0, %.preheader174.preheader.i ]
  %.0136192.i290 = phi ptr [ %i.uc, %.loopexit173.i293 ], [ %i.ob, %.preheader174.preheader.i ] ; 10 uses
  %.0145190.i291 = phi ptr [ %i.ud, %.loopexit173.i293 ], [ %i.mj, %.preheader174.preheader.i ] ; 10 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.od
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rw, ptr align 1 %.0145190.i291, i64 %i.of, i1 false)
  br i1 %i.ds, label %.lr.ph183.i299.preheader, label %.preheader172.i292

.lr.ph183.i299.preheader:                         ; preds = %.preheader174.i288
  br i1 %i.pa, label %.lr.ph183.i299.epil.preheader, label %.lr.ph183.i299

.preheader172.i292.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i299
  br i1 %lcmp.mod1771.not, label %.preheader172.i292, label %.lr.ph183.i299.epil.preheader

.lr.ph183.i299.epil.preheader:                    ; preds = %.preheader172.i292.loopexit.unr-lcssa, %.lr.ph183.i299.preheader
  %indvars.iv218.i300.epil.init = phi i64 [ 0, %.lr.ph183.i299.preheader ], [ %indvars.iv.next219.i301.3, %.preheader172.i292.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1772)
  br label %.lr.ph183.i299.epil

.lr.ph183.i299.epil:                              ; preds = %.lr.ph183.i299.epil, %.lr.ph183.i299.epil.preheader
  %indvars.iv218.i300.epil = phi i64 [ %indvars.iv.next219.i301.epil, %.lr.ph183.i299.epil ], [ %indvars.iv218.i300.epil.init, %.lr.ph183.i299.epil.preheader ] ; 3 uses
  %epil.iter1770 = phi i64 [ %epil.iter1770.next, %.lr.ph183.i299.epil ], [ 0, %.lr.ph183.i299.epil.preheader ]
  %i.rx = shl nuw nsw i64 %indvars.iv218.i300.epil, 1
  %i.ry = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.rx
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv218.i300.epil
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !12
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.sb
  %i.sd = load i16, ptr %i.sc, align 1
  store i16 %i.sd, ptr %i.ry, align 1
  %indvars.iv.next219.i301.epil = add nuw nsw i64 %indvars.iv218.i300.epil, 1
  %epil.iter1770.next = add i64 %epil.iter1770, 1 ; 2 uses
  %epil.iter1770.cmp.not = icmp eq i64 %epil.iter1770.next, %xtraiter1769
  br i1 %epil.iter1770.cmp.not, label %.preheader172.i292, label %.lr.ph183.i299.epil, !llvm.loop !689

.preheader172.i292:                               ; preds = %.preheader172.i292.loopexit.unr-lcssa, %.lr.ph183.i299.epil, %.preheader174.i288
  br i1 %i.dx, label %.lr.ph185.i295.preheader, label %.loopexit173.i293

.lr.ph185.i295.preheader:                         ; preds = %.preheader172.i292
  br i1 %i.pb, label %.lr.ph185.i295.epil.preheader, label %.lr.ph185.i295

.lr.ph183.i299:                                   ; preds = %.lr.ph183.i299.preheader, %.lr.ph183.i299
  %indvars.iv218.i300 = phi i64 [ %indvars.iv.next219.i301.3, %.lr.ph183.i299 ], [ 0, %.lr.ph183.i299.preheader ] ; 6 uses
  %niter1774 = phi i64 [ %niter1774.next.3, %.lr.ph183.i299 ], [ 0, %.lr.ph183.i299.preheader ]
  %i.se = shl nuw nsw i64 %indvars.iv218.i300, 1
  %i.sf = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.se
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv218.i300
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !12
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.si
  %i.sk = load i16, ptr %i.sj, align 1
  store i16 %i.sk, ptr %i.sf, align 1
  %indvars.iv.next219.i301 = or disjoint i64 %indvars.iv218.i300, 1 ; 2 uses
  %i.sl = shl nuw nsw i64 %indvars.iv.next219.i301, 1
  %i.sm = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.sl
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.next219.i301
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !12
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.sp
  %i.sr = load i16, ptr %i.sq, align 1
  store i16 %i.sr, ptr %i.sm, align 1
  %indvars.iv.next219.i301.1 = or disjoint i64 %indvars.iv218.i300, 2 ; 2 uses
  %i.ss = shl nuw nsw i64 %indvars.iv.next219.i301.1, 1
  %i.st = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.ss
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.next219.i301.1
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !12
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.sw
  %i.sy = load i16, ptr %i.sx, align 1
  store i16 %i.sy, ptr %i.st, align 1
  %indvars.iv.next219.i301.2 = or disjoint i64 %indvars.iv218.i300, 3 ; 2 uses
  %i.sz = shl nuw nsw i64 %indvars.iv.next219.i301.2, 1
  %i.ta = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.sz
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.next219.i301.2
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !12
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.td
  %i.tf = load i16, ptr %i.te, align 1
  store i16 %i.tf, ptr %i.ta, align 1
  %indvars.iv.next219.i301.3 = add nuw nsw i64 %indvars.iv218.i300, 4 ; 2 uses
  %niter1774.next.3 = add i64 %niter1774, 4       ; 2 uses
  %niter1774.ncmp.3 = icmp eq i64 %niter1774.next.3, %unroll_iter1773
  br i1 %niter1774.ncmp.3, label %.preheader172.i292.loopexit.unr-lcssa, label %.lr.ph183.i299, !llvm.loop !690

.lr.ph185.i295:                                   ; preds = %.lr.ph185.i295.preheader, %.lr.ph185.i295
  %indvars.iv223.i296 = phi i64 [ %indvars.iv.next224.i297.1, %.lr.ph185.i295 ], [ 0, %.lr.ph185.i295.preheader ] ; 4 uses
  %niter1781.a = phi i64 [ %niter1781.next.1, %.lr.ph185.i295 ], [ 0, %.lr.ph185.i295.preheader ]
  %i.tg = add nsw i64 %indvars.iv223.i296, %i.og
  %i.th = shl nsw i64 %i.tg, 1
  %i.ti = getelementptr inbounds i8, ptr %.0136192.i290, i64 %i.th
  %gep279.i = getelementptr [4 x i8], ptr %invariant.gep278.i, i64 %indvars.iv223.i296
  %i.tj = load i32, ptr %gep279.i, align 4, !tbaa !12
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.tk
  %i.tm = load i16, ptr %i.tl, align 1
  store i16 %i.tm, ptr %i.ti, align 1
  %indvars.iv.next224.i297 = or disjoint i64 %indvars.iv223.i296, 1 ; 2 uses
  %i.tn = add nsw i64 %indvars.iv.next224.i297, %i.og
  %i.to = shl nsw i64 %i.tn, 1
  %i.tp = getelementptr inbounds i8, ptr %.0136192.i290, i64 %i.to
  %gep279.i.1 = getelementptr [4 x i8], ptr %invariant.gep278.i, i64 %indvars.iv.next224.i297
  %i.tq = load i32, ptr %gep279.i.1, align 4, !tbaa !12
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.tr
  %i.tt = load i16, ptr %i.ts, align 1
  store i16 %i.tt, ptr %i.tp, align 1
  %indvars.iv.next224.i297.1 = add nuw nsw i64 %indvars.iv223.i296, 2 ; 2 uses
  %niter1781.next.1 = add i64 %niter1781.a, 2     ; 2 uses
  %niter1781.ncmp.1 = icmp eq i64 %niter1781.next.1, %unroll_iter1780.a
  br i1 %niter1781.ncmp.1, label %.loopexit173.i293.loopexit.unr-lcssa, label %.lr.ph185.i295, !llvm.loop !691

.loopexit173.i293.loopexit.unr-lcssa:             ; preds = %.lr.ph185.i295
  br i1 %lcmp.mod1778.not.a, label %.loopexit173.i293, label %.lr.ph185.i295.epil.preheader

.lr.ph185.i295.epil.preheader:                    ; preds = %.loopexit173.i293.loopexit.unr-lcssa, %.lr.ph185.i295.preheader
  %indvars.iv223.i296.epil.init = phi i64 [ 0, %.lr.ph185.i295.preheader ], [ %indvars.iv.next224.i297.1, %.loopexit173.i293.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1779.a)
  %i.tu = add nsw i64 %indvars.iv223.i296.epil.init, %i.og
  %i.tv = shl nsw i64 %i.tu, 1
  %i.tw = getelementptr inbounds i8, ptr %.0136192.i290, i64 %i.tv
  %gep279.i.epil = getelementptr [4 x i8], ptr %invariant.gep278.i, i64 %indvars.iv223.i296.epil.init
  %i.tx = load i32, ptr %gep279.i.epil, align 4, !tbaa !12
  %i.ty = sext i32 %i.tx to i64
  %i.tz = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.ty
  %i.ua = load i16, ptr %i.tz, align 1
  store i16 %i.ua, ptr %i.tw, align 1
  br label %.loopexit173.i293

.loopexit173.i293:                                ; preds = %.lr.ph185.i295.epil.preheader, %.loopexit173.i293.loopexit.unr-lcssa, %.preheader172.i292
  %i.ub = add nuw nsw i32 %.0135194.i289, 1       ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.mo
  %i.ud = getelementptr inbounds nuw i8, ptr %.0145190.i291, i64 %i.mk
  %exitcond228.not.i294 = icmp eq i32 %i.ub, %i.mm
  br i1 %exitcond228.not.i294, label %.preheader.i244, label %.preheader174.i288, !llvm.loop !687

._crit_edge199.i245:                              ; preds = %bb.av, %.preheader.i244
  %i.ue = add nsw i32 %i.mm, %.sroa.speculated1057
  %i.uf = sext i32 %i.ue to i64
  %i.ug = mul i64 %i.mo, %i.uf                    ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.ug
  br i1 %i.dr, label %.lr.ph202.i252, label %._crit_edge203.i246

._crit_edge199.thread.i283.unr-lcssa:             ; preds = %.lr.ph198.split.us.i279
  %lcmp.mod1791.not = icmp eq i64 %xtraiter1789, 0
  br i1 %lcmp.mod1791.not, label %._crit_edge199.thread.i283, label %.lr.ph198.split.us.i279.epil.preheader

.lr.ph198.split.us.i279.epil.preheader:           ; preds = %._crit_edge199.thread.i283.unr-lcssa, %.lr.ph198.split.us.i279.preheader
  %indvars.iv245.i280.epil.init = phi i64 [ 0, %.lr.ph198.split.us.i279.preheader ], [ %indvars.iv.next246.i281.3, %._crit_edge199.thread.i283.unr-lcssa ]
end_hunk_1
begin_hunk_2_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  %or.cond.i168.i263 = or i1 %.not.i.i167.i262, %i.wf
  br i1 %or.cond.i168.i263, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i264, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.we) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i264

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i264:     ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi2EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i249, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.gd

bb.bf:                                            ; preds = %bb.n
  %i.wg = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.wh = load i64, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.wi = load i32, ptr %i.av, align 4, !tbaa !122 ; 5 uses
  %i.wj = load i32, ptr %i.aw, align 8, !tbaa !130 ; 8 uses
  %i.wk = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 11 uses
  %i.wl = load i64, ptr %i.ay, align 8, !tbaa !97 ; 19 uses
  %i.wm = add i32 %i.wi, %.sroa.speculated1047    ; 2 uses
  %i.wn = add i32 %i.wm, %.sroa.speculated        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.wo = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1047 ; 2 uses
  %i.wp = zext nneg i32 %i.wo to i64              ; 2 uses
  store ptr %i.bu, ptr %12, align 8, !tbaa !812
  %.not.i.i.i348 = icmp samesign ugt i32 %i.wo, 264
  store i64 %i.wp, ptr %i.bv, align 8, !tbaa !813
  br i1 %.not.i.i.i348, label %bb.bg, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i349

bb.bg:                                            ; preds = %bb.bf
  %i.wq = shl nuw nsw i64 %i.wp, 2
  %i.wr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wq) #29
          to label %.noexc458 unwind label %bb.al ; 2 uses

.noexc458:                                        ; preds = %bb.bg
  store ptr %i.wr, ptr %12, align 8, !tbaa !812
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i349

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i349:        ; preds = %.noexc458, %bb.bf
  %i.ws = phi ptr [ %i.bu, %bb.bf ], [ %i.wr, %.noexc458 ] ; 6 uses
  br i1 %i.ds, label %.lr.ph.preheader.i452, label %.preheader176.i350

.lr.ph.preheader.i452:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i349
  %wide.trip.count.i453 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i454

.preheader176.i350:                               ; preds = %bb.bh, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i349
  br i1 %i.dx, label %.lr.ph179.preheader.i444, label %._crit_edge.i351

.lr.ph179.preheader.i444:                         ; preds = %.preheader176.i350
  %i.wt = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i445 = zext nneg i32 %i.dw to i64
  %invariant.gep.i446 = getelementptr [4 x i8], ptr %i.ws, i64 %i.wt
  br label %.lr.ph179.i447

.lr.ph.i454:                                      ; preds = %bb.bh, %.lr.ph.preheader.i452
  %indvars.iv.i455 = phi i64 [ 0, %.lr.ph.preheader.i452 ], [ %indvars.iv.next.i456, %bb.bh ] ; 3 uses
  %i.wu = trunc i64 %indvars.iv.i455 to i32
  %i.wv = sub i32 %i.wu, %.sroa.speculated1047
  %i.ww = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.wv, i32 noundef %i.wi, i32 noundef %i.p)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i454
  %i.wx = mul nsw i32 %i.ww, 3
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv.i455
  store i32 %i.wx, ptr %i.wy, align 4, !tbaa !12
  %indvars.iv.next.i456 = add nuw nsw i64 %indvars.iv.i455, 1 ; 2 uses
  %exitcond.not.i457 = icmp eq i64 %indvars.iv.next.i456, %wide.trip.count.i453
  br i1 %exitcond.not.i457, label %.preheader176.i350, label %.lr.ph.i454, !llvm.loop !695

bb.bi:                                            ; preds = %.lr.ph.i454
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

._crit_edge.i351:                                 ; preds = %bb.bj, %.preheader176.i350
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %i.bw, ptr %13, align 8, !tbaa !815
  store i64 1032, ptr %i.bx, align 8, !tbaa !816
  %or.cond.i434 = or i1 %i.dm, %i.dr
  %or.cond1077 = select i1 %i.bd, i1 %or.cond.i434, i1 false
  br i1 %or.cond1077, label %bb.bl, label %.loopexit175.i352

.lr.ph179.i447:                                   ; preds = %bb.bj, %.lr.ph179.preheader.i444
  %indvars.iv208.i448 = phi i64 [ 0, %.lr.ph179.preheader.i444 ], [ %indvars.iv.next209.i450, %bb.bj ] ; 3 uses
  %i.xa = trunc i64 %indvars.iv208.i448 to i32
  %i.xb = add i32 %i.wi, %i.xa
  %i.xc = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.xb, i32 noundef %i.wi, i32 noundef %i.p)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %.lr.ph179.i447
  %i.xd = mul nsw i32 %i.xc, 3
  %gep.i449 = getelementptr [4 x i8], ptr %invariant.gep.i446, i64 %indvars.iv208.i448
  store i32 %i.xd, ptr %gep.i449, align 4, !tbaa !12
  %indvars.iv.next209.i450 = add nuw nsw i64 %indvars.iv208.i448, 1 ; 2 uses
  %exitcond212.not.i451 = icmp eq i64 %indvars.iv.next209.i450, %wide.trip.count211.i445
  br i1 %exitcond212.not.i451, label %._crit_edge.i351, label %.lr.ph179.i447, !llvm.loop !696

bb.bk:                                            ; preds = %.lr.ph179.i447
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bl:                                            ; preds = %._crit_edge.i351
  %i.xf = mul nsw i32 %i.wn, 3                    ; 2 uses
  %i.xg = sext i32 %i.xf to i64                   ; 2 uses
  %.not.i.i435 = icmp ugt i32 %i.xf, 1032
  store i64 %i.xg, ptr %i.bx, align 8, !tbaa !816
  br i1 %.not.i.i435, label %bb.bm, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436

bb.bm:                                            ; preds = %bb.bl
  %i.xh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xg) #29
          to label %.noexc.i443 unwind label %bb.bn ; 2 uses

.noexc.i443:                                      ; preds = %bb.bm
  store ptr %i.xh, ptr %13, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436: ; preds = %.noexc.i443, %bb.bl
  %i.xi = phi ptr [ %i.xh, %.noexc.i443 ], [ %i.bw, %bb.bl ] ; 8 uses
  %i.xj = icmp sgt i32 %i.wn, 0
  br i1 %i.xj, label %.lr.ph181.preheader.i437, label %.loopexit175.i352

.lr.ph181.preheader.i437:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436
  %wide.trip.count216.i438 = zext nneg i32 %i.wn to i64 ; 2 uses
  %xtraiter1725 = and i64 %wide.trip.count216.i438, 3 ; 3 uses
  %i.xk = icmp ult i32 %i.wn, 4
  br i1 %i.xk, label %.lr.ph181.i439.epil.preheader, label %.lr.ph181.preheader.i437.new

.lr.ph181.preheader.i437.new:                     ; preds = %.lr.ph181.preheader.i437
  %unroll_iter1729 = and i64 %wide.trip.count216.i438, 2147483644
  br label %.lr.ph181.i439

bb.bn:                                            ; preds = %bb.bm
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.lr.ph181.i439:                                   ; preds = %.lr.ph181.i439, %.lr.ph181.preheader.i437.new
  %indvars.iv213.i440 = phi i64 [ 0, %.lr.ph181.preheader.i437.new ], [ %indvars.iv.next214.i441.3, %.lr.ph181.i439 ] ; 5 uses
  %niter1730 = phi i64 [ 0, %.lr.ph181.preheader.i437.new ], [ %niter1730.next.3, %.lr.ph181.i439 ]
  %i.xm = mul nuw nsw i64 %indvars.iv213.i440, 3
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xn, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %i.xo = mul nuw i64 %indvars.iv213.i440, 3
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xq, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %i.xr = mul nuw i64 %indvars.iv213.i440, 3
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xt, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %i.xu = mul nuw i64 %indvars.iv213.i440, 3
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xw, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %indvars.iv.next214.i441.3 = add nuw nsw i64 %indvars.iv213.i440, 4 ; 2 uses
  %niter1730.next.3 = add i64 %niter1730, 4       ; 2 uses
  %niter1730.ncmp.3 = icmp eq i64 %niter1730.next.3, %unroll_iter1729
  br i1 %niter1730.ncmp.3, label %.loopexit175.i352.loopexit.unr-lcssa, label %.lr.ph181.i439, !llvm.loop !697

.loopexit175.i352.loopexit.unr-lcssa:             ; preds = %.lr.ph181.i439
  %lcmp.mod1727.not = icmp eq i64 %xtraiter1725, 0
  br i1 %lcmp.mod1727.not, label %.loopexit175.i352, label %.lr.ph181.i439.epil.preheader

.lr.ph181.i439.epil.preheader:                    ; preds = %.loopexit175.i352.loopexit.unr-lcssa, %.lr.ph181.preheader.i437
  %indvars.iv213.i440.epil.init = phi i64 [ 0, %.lr.ph181.preheader.i437 ], [ %indvars.iv.next214.i441.3, %.loopexit175.i352.loopexit.unr-lcssa ]
  %lcmp.mod1728 = icmp ne i64 %xtraiter1725, 0
  call void @llvm.assume(i1 %lcmp.mod1728)
  br label %.lr.ph181.i439.epil

.lr.ph181.i439.epil:                              ; preds = %.lr.ph181.i439.epil, %.lr.ph181.i439.epil.preheader
  %indvars.iv213.i440.epil = phi i64 [ %indvars.iv213.i440.epil.init, %.lr.ph181.i439.epil.preheader ], [ %indvars.iv.next214.i441.epil, %.lr.ph181.i439.epil ] ; 2 uses
  %epil.iter1726 = phi i64 [ 0, %.lr.ph181.i439.epil.preheader ], [ %epil.iter1726.next, %.lr.ph181.i439.epil ]
  %i.xx = mul nuw nsw i64 %indvars.iv213.i440.epil, 3
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xy, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %indvars.iv.next214.i441.epil = add nuw nsw i64 %indvars.iv213.i440.epil, 1
  %epil.iter1726.next = add i64 %epil.iter1726, 1 ; 2 uses
  %epil.iter1726.cmp.not = icmp eq i64 %epil.iter1726.next, %xtraiter1725
  br i1 %epil.iter1726.cmp.not, label %.loopexit175.i352, label %.lr.ph181.i439.epil, !llvm.loop !698

.loopexit175.i352:                                ; preds = %.loopexit175.i352.loopexit.unr-lcssa, %.lr.ph181.i439.epil, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436, %._crit_edge.i351
  %.0138.i353 = phi ptr [ null, %._crit_edge.i351 ], [ %i.xi, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436 ], [ %i.xi, %.lr.ph181.i439.epil ], [ %i.xi, %.loopexit175.i352.loopexit.unr-lcssa ] ; 10 uses
  %i.xz = icmp sgt i32 %i.wj, 0
  br i1 %i.xz, label %.lr.ph196.i395, label %.preheader.i354

.lr.ph196.i395:                                   ; preds = %.loopexit175.i352
  %i.ya = zext nneg i32 %.sroa.speculated1057 to i64
  %i.yb = mul i64 %i.wl, %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wk, i64 %i.yb ; 2 uses
  %i.yd = mul nuw nsw i32 %.sroa.speculated1047, 3
  %i.ye = zext nneg i32 %i.yd to i64              ; 2 uses
  %i.yf = mul nsw i32 %i.wi, 3
  %i.yg = sext i32 %i.yf to i64                   ; 2 uses
  %i.yh = sext i32 %i.wm to i64                   ; 6 uses
  %wide.trip.count232.i417 = zext nneg i32 %.sroa.speculated1047 to i64 ; 5 uses
  %wide.trip.count237.i418 = zext nneg i32 %.sroa.speculated to i64 ; 4 uses
  br i1 %i.bd, label %.preheader171.us.i419.preheader, label %.preheader174.preheader.i396

.preheader171.us.i419.preheader:                  ; preds = %.lr.ph196.i395
  %xtraiter1744 = and i64 %wide.trip.count232.i417, 3 ; 3 uses
  %i.yi = add nsw i32 %.sroa.speculated1047, -1
  %i.yj = icmp ult i32 %i.yi, 3
  %unroll_iter1748 = and i64 %wide.trip.count232.i417, 2147483644
  %lcmp.mod1746.not = icmp eq i64 %xtraiter1744, 0
  %lcmp.mod1747 = icmp ne i64 %xtraiter1744, 0
  %xtraiter1751 = and i64 %wide.trip.count237.i418, 1
  %i.yk = icmp eq i32 %i.dw, 1
  %unroll_iter1755 = and i64 %wide.trip.count237.i418, 2147483646
  %lcmp.mod1753.not = icmp eq i64 %xtraiter1751, 0
  %lcmp.mod1754 = trunc i32 %.sroa.speculated to i1
  br label %.preheader171.us.i419

.preheader174.preheader.i396:                     ; preds = %.lr.ph196.i395
  %invariant.gep278.i399 = getelementptr [4 x i8], ptr %i.ws, i64 %wide.trip.count232.i417 ; 3 uses
  %xtraiter1731 = and i64 %wide.trip.count232.i417, 1
  %i.yl = icmp eq i32 %.neg214, 1
  %unroll_iter1735 = and i64 %wide.trip.count232.i417, 2147483646
  %lcmp.mod1733.not = icmp eq i64 %xtraiter1731, 0
  %lcmp.mod1734 = trunc i32 %.sroa.speculated1047 to i1
  %xtraiter1738 = and i64 %wide.trip.count237.i418, 1
  %i.ym = icmp eq i32 %i.dw, 1
  %unroll_iter1742 = and i64 %wide.trip.count237.i418, 2147483646
  %lcmp.mod1740.not = icmp eq i64 %xtraiter1738, 0
  %lcmp.mod1741 = trunc i32 %.sroa.speculated to i1
  br label %.preheader174.i400

.preheader171.us.i419:                            ; preds = %.preheader171.us.i419.preheader, %.loopexit.us.i424
  %.0135194.us.i420 = phi i32 [ %i.zk, %.loopexit.us.i424 ], [ 0, %.preheader171.us.i419.preheader ]
  %.0136192.us.i421 = phi ptr [ %i.zl, %.loopexit.us.i424 ], [ %i.yc, %.preheader171.us.i419.preheader ] ; 10 uses
  %.0145190.us.i422 = phi ptr [ %i.zm, %.loopexit.us.i424 ], [ %i.wg, %.preheader171.us.i419.preheader ] ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.ye
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yn, ptr align 1 %.0145190.us.i422, i64 %i.yg, i1 false)
  br i1 %i.ds, label %.lr.ph187.us.i430.preheader, label %.preheader170.us.i423

.lr.ph187.us.i430.preheader:                      ; preds = %.preheader171.us.i419
  br i1 %i.yj, label %.lr.ph187.us.i430.epil.preheader, label %.lr.ph187.us.i430

.lr.ph187.us.i430:                                ; preds = %.lr.ph187.us.i430.preheader, %.lr.ph187.us.i430
  %indvars.iv229.i431 = phi i64 [ %indvars.iv.next230.i432.3, %.lr.ph187.us.i430 ], [ 0, %.lr.ph187.us.i430.preheader ] ; 5 uses
  %niter1749 = phi i64 [ %niter1749.next.3, %.lr.ph187.us.i430 ], [ 0, %.lr.ph187.us.i430.preheader ]
  %i.yo = mul nuw nsw i64 %indvars.iv229.i431, 3
  %i.yp = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.yo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yp, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %i.yq = mul nuw i64 %indvars.iv229.i431, 3
  %i.yr = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ys, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %i.yt = mul nuw i64 %indvars.iv229.i431, 3
  %i.yu = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.yt
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yv, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %i.yw = mul nuw i64 %indvars.iv229.i431, 3
  %i.yx = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yy, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %indvars.iv.next230.i432.3 = add nuw nsw i64 %indvars.iv229.i431, 4 ; 2 uses
  %niter1749.next.3 = add i64 %niter1749, 4       ; 2 uses
  %niter1749.ncmp.3 = icmp eq i64 %niter1749.next.3, %unroll_iter1748
  br i1 %niter1749.ncmp.3, label %.preheader170.us.i423.loopexit.unr-lcssa, label %.lr.ph187.us.i430, !llvm.loop !699

.lr.ph189.us.i426:                                ; preds = %.lr.ph189.us.i426.preheader, %.lr.ph189.us.i426
  %indvars.iv234.i427 = phi i64 [ %indvars.iv.next235.i428.1, %.lr.ph189.us.i426 ], [ 0, %.lr.ph189.us.i426.preheader ] ; 3 uses
  %niter1756 = phi i64 [ %niter1756.next.1, %.lr.ph189.us.i426 ], [ 0, %.lr.ph189.us.i426.preheader ]
  %i.yz = add nsw i64 %indvars.iv234.i427, %i.yh
  %i.za = mul nsw i64 %i.yz, 3
  %i.zb = getelementptr inbounds i8, ptr %.0136192.us.i421, i64 %i.za
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.zb, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %indvars.iv.next235.i428 = or disjoint i64 %indvars.iv234.i427, 1
  %i.zc = add nsw i64 %indvars.iv.next235.i428, %i.yh
  %i.zd = mul nsw i64 %i.zc, 3
  %i.ze = getelementptr inbounds i8, ptr %.0136192.us.i421, i64 %i.zd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ze, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %indvars.iv.next235.i428.1 = add nuw nsw i64 %indvars.iv234.i427, 2 ; 2 uses
  %niter1756.next.1 = add i64 %niter1756, 2       ; 2 uses
  %niter1756.ncmp.1 = icmp eq i64 %niter1756.next.1, %unroll_iter1755
  br i1 %niter1756.ncmp.1, label %.loopexit.us.i424.loopexit.unr-lcssa, label %.lr.ph189.us.i426, !llvm.loop !700

.preheader170.us.i423.loopexit.unr-lcssa:         ; preds = %.lr.ph187.us.i430
  br i1 %lcmp.mod1746.not, label %.preheader170.us.i423, label %.lr.ph187.us.i430.epil.preheader

.lr.ph187.us.i430.epil.preheader:                 ; preds = %.preheader170.us.i423.loopexit.unr-lcssa, %.lr.ph187.us.i430.preheader
  %indvars.iv229.i431.epil.init = phi i64 [ 0, %.lr.ph187.us.i430.preheader ], [ %indvars.iv.next230.i432.3, %.preheader170.us.i423.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1747)
  br label %.lr.ph187.us.i430.epil

.lr.ph187.us.i430.epil:                           ; preds = %.lr.ph187.us.i430.epil, %.lr.ph187.us.i430.epil.preheader
  %indvars.iv229.i431.epil = phi i64 [ %indvars.iv.next230.i432.epil, %.lr.ph187.us.i430.epil ], [ %indvars.iv229.i431.epil.init, %.lr.ph187.us.i430.epil.preheader ] ; 2 uses
  %epil.iter1745 = phi i64 [ %epil.iter1745.next, %.lr.ph187.us.i430.epil ], [ 0, %.lr.ph187.us.i430.epil.preheader ]
  %i.zf = mul nuw nsw i64 %indvars.iv229.i431.epil, 3
  %i.zg = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.zf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.zg, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %indvars.iv.next230.i432.epil = add nuw nsw i64 %indvars.iv229.i431.epil, 1
  %epil.iter1745.next = add i64 %epil.iter1745, 1 ; 2 uses
  %epil.iter1745.cmp.not = icmp eq i64 %epil.iter1745.next, %xtraiter1744
  br i1 %epil.iter1745.cmp.not, label %.preheader170.us.i423, label %.lr.ph187.us.i430.epil, !llvm.loop !701

.preheader170.us.i423:                            ; preds = %.preheader170.us.i423.loopexit.unr-lcssa, %.lr.ph187.us.i430.epil, %.preheader171.us.i419
  br i1 %i.dx, label %.lr.ph189.us.i426.preheader, label %.loopexit.us.i424

.lr.ph189.us.i426.preheader:                      ; preds = %.preheader170.us.i423
  br i1 %i.yk, label %.lr.ph189.us.i426.epil.preheader, label %.lr.ph189.us.i426

.loopexit.us.i424.loopexit.unr-lcssa:             ; preds = %.lr.ph189.us.i426
  br i1 %lcmp.mod1753.not, label %.loopexit.us.i424, label %.lr.ph189.us.i426.epil.preheader

.lr.ph189.us.i426.epil.preheader:                 ; preds = %.loopexit.us.i424.loopexit.unr-lcssa, %.lr.ph189.us.i426.preheader
  %indvars.iv234.i427.epil.init = phi i64 [ 0, %.lr.ph189.us.i426.preheader ], [ %indvars.iv.next235.i428.1, %.loopexit.us.i424.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1754)
  %i.zh = add nsw i64 %indvars.iv234.i427.epil.init, %i.yh
  %i.zi = mul nsw i64 %i.zh, 3
  %i.zj = getelementptr inbounds i8, ptr %.0136192.us.i421, i64 %i.zi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.zj, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  br label %.loopexit.us.i424

.loopexit.us.i424:                                ; preds = %.lr.ph189.us.i426.epil.preheader, %.loopexit.us.i424.loopexit.unr-lcssa, %.preheader170.us.i423
  %i.zk = add nuw nsw i32 %.0135194.us.i420, 1    ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.wl
  %i.zm = getelementptr inbounds nuw i8, ptr %.0145190.us.i422, i64 %i.wh
  %exitcond239.not.i425 = icmp eq i32 %i.zk, %i.wj
  br i1 %exitcond239.not.i425, label %.preheader.i354, label %.preheader171.us.i419, !llvm.loop !702

.preheader.i354:                                  ; preds = %.loopexit173.i405, %.loopexit.us.i424, %.loopexit175.i352
  br i1 %i.dm, label %.lr.ph198.i383, label %._crit_edge199.i355

.lr.ph198.i383:                                   ; preds = %.preheader.i354
  %i.zn = mul nsw i32 %i.wn, 3
  %i.zo = sext i32 %i.zn to i64                   ; 7 uses
  %wide.trip.count248.i384 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i389.preheader, label %.lr.ph198.split.i385

.lr.ph198.split.us.i389.preheader:                ; preds = %.lr.ph198.i383
  %xtraiter1757 = and i64 %wide.trip.count248.i384, 3 ; 3 uses
  %i.zp = add nsw i32 %.neg, -1
  %i.zq = icmp ult i32 %i.zp, 3
  br i1 %i.zq, label %.lr.ph198.split.us.i389.epil.preheader, label %.lr.ph198.split.us.i389.preheader.new

.lr.ph198.split.us.i389.preheader.new:            ; preds = %.lr.ph198.split.us.i389.preheader
  %unroll_iter1761 = and i64 %wide.trip.count248.i384, 2147483644
  br label %.lr.ph198.split.us.i389

.lr.ph198.split.us.i389:                          ; preds = %.lr.ph198.split.us.i389, %.lr.ph198.split.us.i389.preheader.new
  %indvars.iv245.i390 = phi i64 [ 0, %.lr.ph198.split.us.i389.preheader.new ], [ %indvars.iv.next246.i391.3, %.lr.ph198.split.us.i389 ] ; 5 uses
  %niter1762 = phi i64 [ 0, %.lr.ph198.split.us.i389.preheader.new ], [ %niter1762.next.3, %.lr.ph198.split.us.i389 ]
  %i.zr = mul i64 %indvars.iv245.i390, %i.wl
  %i.zs = getelementptr inbounds nuw i8, ptr %i.wk, i64 %i.zr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zs, ptr align 1 %.0138.i353, i64 %i.zo, i1 false)
  %indvars.iv.next246.i391 = or disjoint i64 %indvars.iv245.i390, 1
  %i.zt = mul i64 %indvars.iv.next246.i391, %i.wl
  %i.zu = getelementptr inbounds nuw i8, ptr %i.wk, i64 %i.zt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zu, ptr align 1 %.0138.i353, i64 %i.zo, i1 false)
  %indvars.iv.next246.i391.1 = or disjoint i64 %indvars.iv245.i390, 2
  %i.zv = mul i64 %indvars.iv.next246.i391.1, %i.wl
  %i.zw = getelementptr inbounds nuw i8, ptr %i.wk, i64 %i.zv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zw, ptr align 1 %.0138.i353, i64 %i.zo, i1 false)
  %indvars.iv.next246.i391.2 = or disjoint i64 %indvars.iv245.i390, 3
  %i.zx = mul i64 %indvars.iv.next246.i391.2, %i.wl
  %i.zy = getelementptr inbounds nuw i8, ptr %i.wk, i64 %i.zx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zy, ptr align 1 %.0138.i353, i64 %i.zo, i1 false)
  %indvars.iv.next246.i391.3 = add nuw nsw i64 %indvars.iv245.i390, 4 ; 2 uses
  %niter1762.next.3 = add i64 %niter1762, 4       ; 2 uses
  %niter1762.ncmp.3 = icmp eq i64 %niter1762.next.3, %unroll_iter1761
  br i1 %niter1762.ncmp.3, label %._crit_edge199.thread.i393.unr-lcssa, label %.lr.ph198.split.us.i389, !llvm.loop !703

.preheader174.i400:                               ; preds = %.loopexit173.i405, %.preheader174.preheader.i396
  %.0135194.i401 = phi i32 [ %i.abk, %.loopexit173.i405 ], [ 0, %.preheader174.preheader.i396 ]
  %.0136192.i402 = phi ptr [ %i.abl, %.loopexit173.i405 ], [ %i.yc, %.preheader174.preheader.i396 ] ; 8 uses
  %.0145190.i403 = phi ptr [ %i.abm, %.loopexit173.i405 ], [ %i.wg, %.preheader174.preheader.i396 ] ; 8 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.0136192.i402, i64 %i.ye
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zz, ptr align 1 %.0145190.i403, i64 %i.yg, i1 false)
  br i1 %i.ds, label %.lr.ph183.i412.preheader, label %.preheader172.i404

.lr.ph183.i412.preheader:                         ; preds = %.preheader174.i400
  br i1 %i.yl, label %.lr.ph183.i412.epil.preheader, label %.lr.ph183.i412

.preheader172.i404.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i412
  br i1 %lcmp.mod1733.not, label %.preheader172.i404, label %.lr.ph183.i412.epil.preheader

.lr.ph183.i412.epil.preheader:                    ; preds = %.preheader172.i404.loopexit.unr-lcssa, %.lr.ph183.i412.preheader
  %indvars.iv218.i413.epil.init = phi i64 [ 0, %.lr.ph183.i412.preheader ], [ %indvars.iv.next219.i414.1, %.preheader172.i404.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1734)
  %i.aaa = mul nuw nsw i64 %indvars.iv218.i413.epil.init, 3
  %i.aab = getelementptr inbounds nuw i8, ptr %.0136192.i402, i64 %i.aaa
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv218.i413.epil.init
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !12
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds i8, ptr %.0145190.i403, i64 %i.aae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aab, ptr noundef nonnull align 1 dereferenceable(3) %i.aaf, i64 3, i1 false)
  br label %.preheader172.i404

.preheader172.i404:                               ; preds = %.lr.ph183.i412.epil.preheader, %.preheader172.i404.loopexit.unr-lcssa, %.preheader174.i400
  br i1 %i.dx, label %.lr.ph185.i407.preheader, label %.loopexit173.i405

.lr.ph185.i407.preheader:                         ; preds = %.preheader172.i404
  br i1 %i.ym, label %.lr.ph185.i407.epil.preheader, label %.lr.ph185.i407

.lr.ph183.i412:                                   ; preds = %.lr.ph183.i412.preheader, %.lr.ph183.i412
  %indvars.iv218.i413 = phi i64 [ %indvars.iv.next219.i414.1, %.lr.ph183.i412 ], [ 0, %.lr.ph183.i412.preheader ] ; 4 uses
  %niter1736 = phi i64 [ %niter1736.next.1, %.lr.ph183.i412 ], [ 0, %.lr.ph183.i412.preheader ]
  %i.aag = mul nuw nsw i64 %indvars.iv218.i413, 3
  %i.aah = getelementptr inbounds nuw i8, ptr %.0136192.i402, i64 %i.aag
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv218.i413
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !12
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds i8, ptr %.0145190.i403, i64 %i.aak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aah, ptr noundef nonnull align 1 dereferenceable(3) %i.aal, i64 3, i1 false)
  %indvars.iv.next219.i414 = or disjoint i64 %indvars.iv218.i413, 1 ; 2 uses
  %i.aam = mul nuw nsw i64 %indvars.iv.next219.i414, 3
  %i.aan = getelementptr inbounds nuw i8, ptr %.0136192.i402, i64 %i.aam
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv.next219.i414
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !12
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds i8, ptr %.0145190.i403, i64 %i.aaq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aan, ptr noundef nonnull align 1 dereferenceable(3) %i.aar, i64 3, i1 false)
  %indvars.iv.next219.i414.1 = add nuw nsw i64 %indvars.iv218.i413, 2 ; 2 uses
  %niter1736.next.1 = add i64 %niter1736, 2       ; 2 uses
  %niter1736.ncmp.1 = icmp eq i64 %niter1736.next.1, %unroll_iter1735
  br i1 %niter1736.ncmp.1, label %.preheader172.i404.loopexit.unr-lcssa, label %.lr.ph183.i412, !llvm.loop !704

.lr.ph185.i407:                                   ; preds = %.lr.ph185.i407.preheader, %.lr.ph185.i407
  %indvars.iv223.i408 = phi i64 [ %indvars.iv.next224.i410.1, %.lr.ph185.i407 ], [ 0, %.lr.ph185.i407.preheader ] ; 4 uses
  %niter1743 = phi i64 [ %niter1743.next.1, %.lr.ph185.i407 ], [ 0, %.lr.ph185.i407.preheader ]
  %i.aas = add nsw i64 %indvars.iv223.i408, %i.yh
  %i.aat = mul nsw i64 %i.aas, 3
  %i.aau = getelementptr inbounds i8, ptr %.0136192.i402, i64 %i.aat
end_hunk_2
begin_hunk_3_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a

bb.bv:                                            ; preds = %bb.bu
  call void @_ZdaPv(ptr noundef nonnull %i.adl) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i370

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i370:    ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i370, %bb.bk, %bb.bi
  %.pn156.i371 = phi { ptr, i32 } [ %i.wz, %bb.bi ], [ %i.xe, %bb.bk ], [ %.pn.pn.i367, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i370 ]
  %i.adn = load ptr, ptr %12, align 8, !tbaa !812 ; 3 uses
  %.not.i.i167.i372 = icmp eq ptr %i.adn, %i.bu
  %i.ado = icmp eq ptr %i.adn, null
  %or.cond.i168.i373 = or i1 %.not.i.i167.i372, %i.ado
  br i1 %or.cond.i168.i373, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i374, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZdaPv(ptr noundef nonnull %i.adn) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i374

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i374:     ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi3EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i359, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.gd

bb.by:                                            ; preds = %bb.n
  %i.adp = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.adq = load i64, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.adr = load i32, ptr %i.av, align 4, !tbaa !122 ; 5 uses
  %i.ads = load i32, ptr %i.aw, align 8, !tbaa !130 ; 10 uses
  %i.adt = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 14 uses
  %i.adu = load i64, ptr %i.ay, align 8, !tbaa !97 ; 23 uses
  %i.adv = add i32 %i.adr, %.sroa.speculated1047  ; 2 uses
  %i.adw = add i32 %i.adv, %.sroa.speculated      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.adx = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1047 ; 2 uses
  %i.ady = zext nneg i32 %i.adx to i64            ; 2 uses
  store ptr %i.bq, ptr %10, align 8, !tbaa !812
  %.not.i.i.i461 = icmp samesign ugt i32 %i.adx, 264
  store i64 %i.ady, ptr %i.br, align 8, !tbaa !813
  br i1 %.not.i.i.i461, label %bb.bz, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i462

bb.bz:                                            ; preds = %bb.by
  %i.adz = shl nuw nsw i64 %i.ady, 2
  %i.aea = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.adz) #29
          to label %.noexc572 unwind label %bb.al ; 2 uses

.noexc572:                                        ; preds = %bb.bz
  store ptr %i.aea, ptr %10, align 8, !tbaa !812
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i462

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i462:        ; preds = %.noexc572, %bb.by
  %i.aeb = phi ptr [ %i.bq, %bb.by ], [ %i.aea, %.noexc572 ] ; 8 uses
  br i1 %i.ds, label %.lr.ph.preheader.i566, label %.preheader176.i463

.lr.ph.preheader.i566:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i462
  %wide.trip.count.i567 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i568

.preheader176.i463:                               ; preds = %bb.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i462
  br i1 %i.dx, label %.lr.ph179.preheader.i558, label %._crit_edge.i464

.lr.ph179.preheader.i558:                         ; preds = %.preheader176.i463
  %i.aec = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i559 = zext nneg i32 %i.dw to i64
  %invariant.gep.i560 = getelementptr [4 x i8], ptr %i.aeb, i64 %i.aec
  br label %.lr.ph179.i561

.lr.ph.i568:                                      ; preds = %bb.ca, %.lr.ph.preheader.i566
  %indvars.iv.i569 = phi i64 [ 0, %.lr.ph.preheader.i566 ], [ %indvars.iv.next.i570, %bb.ca ] ; 3 uses
  %i.aed = trunc i64 %indvars.iv.i569 to i32
  %i.aee = sub i32 %i.aed, %.sroa.speculated1047
  %i.aef = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.aee, i32 noundef %i.adr, i32 noundef %i.p)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i568
  %i.aeg = shl nsw i32 %i.aef, 2
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %indvars.iv.i569
  store i32 %i.aeg, ptr %i.aeh, align 4, !tbaa !12
  %indvars.iv.next.i570 = add nuw nsw i64 %indvars.iv.i569, 1 ; 2 uses
  %exitcond.not.i571 = icmp eq i64 %indvars.iv.next.i570, %wide.trip.count.i567
  br i1 %exitcond.not.i571, label %.preheader176.i463, label %.lr.ph.i568, !llvm.loop !709

bb.cb:                                            ; preds = %.lr.ph.i568
  %i.aei = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

._crit_edge.i464:                                 ; preds = %bb.cc, %.preheader176.i463
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr %i.bs, ptr %11, align 8, !tbaa !815
  store i64 1032, ptr %i.bt, align 8, !tbaa !816
  %or.cond.i547 = or i1 %i.dm, %i.dr
  %or.cond1078 = select i1 %i.bd, i1 %or.cond.i547, i1 false
  br i1 %or.cond1078, label %bb.ce, label %.loopexit175.i465

.lr.ph179.i561:                                   ; preds = %bb.cc, %.lr.ph179.preheader.i558
  %indvars.iv208.i562 = phi i64 [ 0, %.lr.ph179.preheader.i558 ], [ %indvars.iv.next209.i564, %bb.cc ] ; 3 uses
  %i.aej = trunc i64 %indvars.iv208.i562 to i32
  %i.aek = add i32 %i.adr, %i.aej
  %i.ael = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.aek, i32 noundef %i.adr, i32 noundef %i.p)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %.lr.ph179.i561
  %i.aem = shl nsw i32 %i.ael, 2
  %gep.i563 = getelementptr [4 x i8], ptr %invariant.gep.i560, i64 %indvars.iv208.i562
  store i32 %i.aem, ptr %gep.i563, align 4, !tbaa !12
  %indvars.iv.next209.i564 = add nuw nsw i64 %indvars.iv208.i562, 1 ; 2 uses
  %exitcond212.not.i565 = icmp eq i64 %indvars.iv.next209.i564, %wide.trip.count211.i559
  br i1 %exitcond212.not.i565, label %._crit_edge.i464, label %.lr.ph179.i561, !llvm.loop !710

bb.cd:                                            ; preds = %.lr.ph179.i561
  %i.aen = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ce:                                            ; preds = %._crit_edge.i464
  %i.aeo = shl nsw i32 %i.adw, 2                  ; 2 uses
  %i.aep = sext i32 %i.aeo to i64                 ; 2 uses
  %.not.i.i548 = icmp ugt i32 %i.aeo, 1032
  store i64 %i.aep, ptr %i.bt, align 8, !tbaa !816
  br i1 %.not.i.i548, label %bb.cf, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549

bb.cf:                                            ; preds = %bb.ce
  %i.aeq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aep) #29
          to label %.noexc.i557 unwind label %bb.cg ; 2 uses

.noexc.i557:                                      ; preds = %bb.cf
  store ptr %i.aeq, ptr %11, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549: ; preds = %.noexc.i557, %bb.ce
  %i.aer = phi ptr [ %i.aeq, %.noexc.i557 ], [ %i.bs, %bb.ce ] ; 5 uses
  %i.aes = icmp sgt i32 %i.adw, 0
  br i1 %i.aes, label %.lr.ph181.preheader.i550, label %.loopexit175.i465

.lr.ph181.preheader.i550:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549
  %wide.trip.count216.i551 = zext nneg i32 %i.adw to i64 ; 3 uses
  %.pre.i552 = load i32, ptr %i.fk, align 1       ; 2 uses
  %min.iters.check1454 = icmp ult i32 %i.adw, 8
  br i1 %min.iters.check1454, label %.lr.ph181.i553.preheader, label %vector.ph1455

vector.ph1455:                                    ; preds = %.lr.ph181.preheader.i550
  %n.vec1456 = and i64 %wide.trip.count216.i551, 2147483640 ; 3 uses
  %broadcast.splatinsert1457 = insertelement <4 x i32> poison, i32 %.pre.i552, i64 0
  %broadcast.splat1458 = shufflevector <4 x i32> %broadcast.splatinsert1457, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1459

vector.body1459:                                  ; preds = %vector.body1459, %vector.ph1455
  %index1460 = phi i64 [ 0, %vector.ph1455 ], [ %index.next1461, %vector.body1459 ] ; 2 uses
  %i.aet = shl nuw nsw i64 %index1460, 2
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aet ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  store <4 x i32> %broadcast.splat1458, ptr %i.aeu, align 1
  store <4 x i32> %broadcast.splat1458, ptr %i.aev, align 1
  %index.next1461 = add nuw i64 %index1460, 8     ; 2 uses
  %i.aew = icmp eq i64 %index.next1461, %n.vec1456
  br i1 %i.aew, label %middle.block1462, label %vector.body1459, !llvm.loop !711

middle.block1462:                                 ; preds = %vector.body1459
  %cmp.n1463 = icmp eq i64 %n.vec1456, %wide.trip.count216.i551
  br i1 %cmp.n1463, label %.loopexit175.i465, label %.lr.ph181.i553.preheader

.lr.ph181.i553.preheader:                         ; preds = %.lr.ph181.preheader.i550, %middle.block1462
  %indvars.iv213.i554.ph = phi i64 [ 0, %.lr.ph181.preheader.i550 ], [ %n.vec1456, %middle.block1462 ]
  br label %.lr.ph181.i553

bb.cg:                                            ; preds = %bb.cf
  %i.aex = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.lr.ph181.i553:                                   ; preds = %.lr.ph181.i553.preheader, %.lr.ph181.i553
  %indvars.iv213.i554 = phi i64 [ %indvars.iv.next214.i555, %.lr.ph181.i553 ], [ %indvars.iv213.i554.ph, %.lr.ph181.i553.preheader ] ; 2 uses
  %i.aey = shl nuw nsw i64 %indvars.iv213.i554, 2
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aey
  store i32 %.pre.i552, ptr %i.aez, align 1
  %indvars.iv.next214.i555 = add nuw nsw i64 %indvars.iv213.i554, 1 ; 2 uses
  %exitcond217.not.i556 = icmp eq i64 %indvars.iv.next214.i555, %wide.trip.count216.i551
  br i1 %exitcond217.not.i556, label %.loopexit175.i465, label %.lr.ph181.i553, !llvm.loop !712

.loopexit175.i465:                                ; preds = %.lr.ph181.i553, %middle.block1462, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549, %._crit_edge.i464
  %.0138.i466 = phi ptr [ null, %._crit_edge.i464 ], [ %i.aer, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549 ], [ %i.aer, %middle.block1462 ], [ %i.aer, %.lr.ph181.i553 ] ; 10 uses
  %i.afa = icmp sgt i32 %i.ads, 0
  br i1 %i.afa, label %.lr.ph196.i508, label %.preheader.i467

.lr.ph196.i508:                                   ; preds = %.loopexit175.i465
  %i.afb = zext nneg i32 %.sroa.speculated1057 to i64 ; 3 uses
  %i.afc = mul i64 %i.adu, %i.afb                 ; 2 uses
  %i.afd = getelementptr i8, ptr %i.adt, i64 %i.afc ; 3 uses
  %i.afe = shl nuw nsw i32 %.sroa.speculated1047, 2
  %i.aff = zext nneg i32 %i.afe to i64            ; 2 uses
  %i.afg = shl nsw i32 %i.adr, 2
  %i.afh = sext i32 %i.afg to i64                 ; 2 uses
  %i.afi = sext i32 %i.adv to i64                 ; 10 uses
  %wide.trip.count232.i530 = zext nneg i32 %.sroa.speculated1047 to i64 ; 9 uses
  %wide.trip.count237.i531 = zext nneg i32 %.sroa.speculated to i64 ; 8 uses
  br i1 %i.bd, label %.preheader171.us.i532.preheader, label %.preheader174.preheader.i509

.preheader171.us.i532.preheader:                  ; preds = %.lr.ph196.i508
  %i.afj = shl nsw i64 %i.afi, 2                  ; 2 uses
  %i.afk = getelementptr i8, ptr %i.adt, i64 %i.afc
  %scevgep1415 = getelementptr i8, ptr %i.afk, i64 %i.afj
  %i.afl = add nsw i32 %i.ads, -1
  %i.afm = zext i32 %i.afl to i64
  %i.afn = add nuw nsw i64 %i.afb, %i.afm
  %i.afo = mul i64 %i.adu, %i.afn
  %i.afp = shl nuw nsw i64 %wide.trip.count237.i531, 2
  %i.afq = getelementptr i8, ptr %i.adt, i64 %i.afo
  %i.afr = getelementptr i8, ptr %i.afq, i64 %i.afj
  %scevgep1417 = getelementptr i8, ptr %i.afr, i64 %i.afp
  %scevgep1418 = getelementptr i8, ptr %i.fk, i64 4
  %i.afs = add nsw i32 %i.ads, -1
  %i.aft = zext i32 %i.afs to i64
  %i.afu = add nuw nsw i64 %i.afb, %i.aft
  %i.afv = mul i64 %i.adu, %i.afu
  %i.afw = shl nuw nsw i64 %wide.trip.count232.i530, 2
  %i.afx = getelementptr i8, ptr %i.adt, i64 %i.afv
  %scevgep1435 = getelementptr i8, ptr %i.afx, i64 %i.afw
  %scevgep1436 = getelementptr i8, ptr %i.fk, i64 4
  %min.iters.check1442 = icmp slt i32 %.neg214, 8
  %bound01437 = icmp ult ptr %i.afd, %scevgep1436
  %bound11438 = icmp ult ptr %i.fk, %scevgep1435
  %found.conflict1439 = and i1 %bound01437, %bound11438
  %stride.check1440 = icmp slt i64 %i.adu, 0
  %i.afy = or i1 %found.conflict1439, %stride.check1440
  %n.vec1444 = and i64 %wide.trip.count232.i530, 2147483640 ; 3 uses
  %cmp.n1451 = icmp eq i64 %n.vec1444, %wide.trip.count232.i530
  %xtraiter1707 = and i64 %wide.trip.count232.i530, 3 ; 2 uses
  %lcmp.mod1708.not = icmp eq i64 %xtraiter1707, 0
  %min.iters.check1423 = icmp slt i32 %i.dw, 8
  %bound01419 = icmp ult ptr %scevgep1415, %scevgep1418
  %bound11420 = icmp ult ptr %i.fk, %scevgep1417
  %found.conflict1421 = and i1 %bound01419, %bound11420
  %stride.check1422 = icmp slt i64 %i.adu, 0
  %i.afz = or i1 %found.conflict1421, %stride.check1422
  %n.vec1425 = and i64 %wide.trip.count237.i531, 2147483640 ; 3 uses
  %cmp.n1432 = icmp eq i64 %n.vec1425, %wide.trip.count237.i531
  %xtraiter1710 = and i64 %wide.trip.count237.i531, 3 ; 2 uses
  %lcmp.mod1711.not = icmp eq i64 %xtraiter1710, 0
  %invariant.op1842 = add nsw i64 1, %i.afi
  %invariant.op1844 = add nsw i64 2, %i.afi
  %invariant.op1846 = add nsw i64 3, %i.afi
  br label %.preheader171.us.i532

.preheader174.preheader.i509:                     ; preds = %.lr.ph196.i508
  %invariant.gep278.i512 = getelementptr [4 x i8], ptr %i.aeb, i64 %wide.trip.count232.i530 ; 3 uses
  %xtraiter1694 = and i64 %wide.trip.count232.i530, 3 ; 3 uses
  %i.aga = add nsw i32 %.sroa.speculated1047, -1
  %i.agb = icmp ult i32 %i.aga, 3
  %unroll_iter1698 = and i64 %wide.trip.count232.i530, 2147483644
  %lcmp.mod1696.not = icmp eq i64 %xtraiter1694, 0
  %lcmp.mod1697 = icmp ne i64 %xtraiter1694, 0
  %xtraiter1701 = and i64 %wide.trip.count237.i531, 1
  %i.agc = icmp eq i32 %i.dw, 1
  %unroll_iter1705 = and i64 %wide.trip.count237.i531, 2147483646
  %lcmp.mod1703.not = icmp eq i64 %xtraiter1701, 0
  %lcmp.mod1704 = trunc i32 %.sroa.speculated to i1
  br label %.preheader174.i513

.preheader171.us.i532:                            ; preds = %.preheader171.us.i532.preheader, %.loopexit.us.i537
  %.0135194.us.i533 = phi i32 [ %i.ahz, %.loopexit.us.i537 ], [ 0, %.preheader171.us.i532.preheader ]
  %.0136192.us.i534 = phi ptr [ %i.aia, %.loopexit.us.i537 ], [ %i.afd, %.preheader171.us.i532.preheader ] ; 14 uses
  %.0145190.us.i535 = phi ptr [ %i.aib, %.loopexit.us.i537 ], [ %i.adp, %.preheader171.us.i532.preheader ] ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.aff
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agd, ptr align 1 %.0145190.us.i535, i64 %i.afh, i1 false)
  br i1 %i.ds, label %.lr.ph187.us.i543.preheader, label %.preheader170.us.i536

.lr.ph187.us.i543.preheader:                      ; preds = %.preheader171.us.i532
  %brmerge1855 = select i1 %min.iters.check1442, i1 true, i1 %i.afy
  br i1 %brmerge1855, label %.lr.ph187.us.i543.preheader1518, label %vector.ph1443

vector.ph1443:                                    ; preds = %.lr.ph187.us.i543.preheader
  %i.age = load i32, ptr %i.fk, align 1, !alias.scope !821
  %broadcast.splatinsert1447 = insertelement <4 x i32> poison, i32 %i.age, i64 0
  %broadcast.splat1448 = shufflevector <4 x i32> %broadcast.splatinsert1447, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1445

vector.body1445:                                  ; preds = %vector.body1445, %vector.ph1443
  %index1446 = phi i64 [ 0, %vector.ph1443 ], [ %index.next1449, %vector.body1445 ] ; 2 uses
  %i.agf = shl nuw nsw i64 %index1446, 2
  %i.agg = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.agf ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  store <4 x i32> %broadcast.splat1448, ptr %i.agg, align 1, !alias.scope !822, !noalias !821
  store <4 x i32> %broadcast.splat1448, ptr %i.agh, align 1, !alias.scope !822, !noalias !821
  %index.next1449 = add nuw i64 %index1446, 8     ; 2 uses
  %i.agi = icmp eq i64 %index.next1449, %n.vec1444
  br i1 %i.agi, label %middle.block1450, label %vector.body1445, !llvm.loop !716

middle.block1450:                                 ; preds = %vector.body1445
  br i1 %cmp.n1451, label %.preheader170.us.i536, label %.lr.ph187.us.i543.preheader1518

.lr.ph187.us.i543.preheader1518:                  ; preds = %.lr.ph187.us.i543.preheader, %middle.block1450
  %indvars.iv229.i544.ph = phi i64 [ %n.vec1444, %middle.block1450 ], [ 0, %.lr.ph187.us.i543.preheader ] ; 3 uses
  br i1 %lcmp.mod1708.not, label %.lr.ph187.us.i543.prol.loopexit, label %.lr.ph187.us.i543.prol

.lr.ph187.us.i543.prol:                           ; preds = %.lr.ph187.us.i543.preheader1518, %.lr.ph187.us.i543.prol
  %indvars.iv229.i544.prol = phi i64 [ %indvars.iv.next230.i545.prol, %.lr.ph187.us.i543.prol ], [ %indvars.iv229.i544.ph, %.lr.ph187.us.i543.preheader1518 ] ; 2 uses
  %prol.iter1709 = phi i64 [ %prol.iter1709.next, %.lr.ph187.us.i543.prol ], [ 0, %.lr.ph187.us.i543.preheader1518 ]
  %i.agj = shl nuw nsw i64 %indvars.iv229.i544.prol, 2
  %i.agk = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.agj
  %i.agl = load i32, ptr %i.fk, align 1
  store i32 %i.agl, ptr %i.agk, align 1
  %indvars.iv.next230.i545.prol = add nuw nsw i64 %indvars.iv229.i544.prol, 1 ; 2 uses
  %prol.iter1709.next = add i64 %prol.iter1709, 1 ; 2 uses
  %prol.iter1709.cmp.not = icmp eq i64 %prol.iter1709.next, %xtraiter1707
  br i1 %prol.iter1709.cmp.not, label %.lr.ph187.us.i543.prol.loopexit, label %.lr.ph187.us.i543.prol, !llvm.loop !717

.lr.ph187.us.i543.prol.loopexit:                  ; preds = %.lr.ph187.us.i543.prol, %.lr.ph187.us.i543.preheader1518
  %indvars.iv229.i544.unr = phi i64 [ %indvars.iv229.i544.ph, %.lr.ph187.us.i543.preheader1518 ], [ %indvars.iv.next230.i545.prol, %.lr.ph187.us.i543.prol ]
  %i.agm = sub nsw i64 %indvars.iv229.i544.ph, %wide.trip.count232.i530
  %i.agn = icmp ugt i64 %i.agm, -4
  br i1 %i.agn, label %.preheader170.us.i536, label %.lr.ph187.us.i543

.lr.ph187.us.i543:                                ; preds = %.lr.ph187.us.i543.prol.loopexit, %.lr.ph187.us.i543
  %indvars.iv229.i544 = phi i64 [ %indvars.iv.next230.i545.3, %.lr.ph187.us.i543 ], [ %indvars.iv229.i544.unr, %.lr.ph187.us.i543.prol.loopexit ] ; 5 uses
  %i.ago = shl nuw nsw i64 %indvars.iv229.i544, 2
  %i.agp = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.ago
  %i.agq = load i32, ptr %i.fk, align 1
  store i32 %i.agq, ptr %i.agp, align 1
  %indvars.iv.next230.i545 = shl i64 %indvars.iv229.i544, 2
  %i.agr = getelementptr i8, ptr %.0136192.us.i534, i64 %indvars.iv.next230.i545
  %i.ags = getelementptr i8, ptr %i.agr, i64 4
  %i.agt = load i32, ptr %i.fk, align 1
  store i32 %i.agt, ptr %i.ags, align 1
  %indvars.iv.next230.i545.1 = shl i64 %indvars.iv229.i544, 2
  %i.agu = getelementptr i8, ptr %.0136192.us.i534, i64 %indvars.iv.next230.i545.1
  %i.agv = getelementptr i8, ptr %i.agu, i64 8
  %i.agw = load i32, ptr %i.fk, align 1
  store i32 %i.agw, ptr %i.agv, align 1
  %indvars.iv.next230.i545.2 = shl i64 %indvars.iv229.i544, 2
  %i.agx = getelementptr i8, ptr %.0136192.us.i534, i64 %indvars.iv.next230.i545.2
  %i.agy = getelementptr i8, ptr %i.agx, i64 12
  %i.agz = load i32, ptr %i.fk, align 1
  store i32 %i.agz, ptr %i.agy, align 1
  %indvars.iv.next230.i545.3 = add nuw nsw i64 %indvars.iv229.i544, 4 ; 2 uses
  %exitcond233.not.i546.3 = icmp eq i64 %indvars.iv.next230.i545.3, %wide.trip.count232.i530
  br i1 %exitcond233.not.i546.3, label %.preheader170.us.i536, label %.lr.ph187.us.i543, !llvm.loop !718

.lr.ph189.us.i539:                                ; preds = %.lr.ph189.us.i539.prol.loopexit, %.lr.ph189.us.i539
  %indvars.iv234.i540 = phi i64 [ %indvars.iv.next235.i541.3, %.lr.ph189.us.i539 ], [ %indvars.iv234.i540.unr, %.lr.ph189.us.i539.prol.loopexit ] ; 5 uses
  %i.aha = add nsw i64 %indvars.iv234.i540, %i.afi
  %i.ahb = shl nsw i64 %i.aha, 2
  %i.ahc = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.ahb
  %i.ahd = load i32, ptr %i.fk, align 1
  store i32 %i.ahd, ptr %i.ahc, align 1
  %.reass1843 = add nsw i64 %indvars.iv234.i540, %invariant.op1842
  %i.ahe = shl nsw i64 %.reass1843, 2
  %i.ahf = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.ahe
  %i.ahg = load i32, ptr %i.fk, align 1
  store i32 %i.ahg, ptr %i.ahf, align 1
  %.reass1845 = add nsw i64 %indvars.iv234.i540, %invariant.op1844
  %i.ahh = shl nsw i64 %.reass1845, 2
  %i.ahi = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.ahh
  %i.ahj = load i32, ptr %i.fk, align 1
  store i32 %i.ahj, ptr %i.ahi, align 1
  %.reass1847 = add nsw i64 %indvars.iv234.i540, %invariant.op1846
  %i.ahk = shl nsw i64 %.reass1847, 2
  %i.ahl = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.ahk
  %i.ahm = load i32, ptr %i.fk, align 1
  store i32 %i.ahm, ptr %i.ahl, align 1
  %indvars.iv.next235.i541.3 = add nuw nsw i64 %indvars.iv234.i540, 4 ; 2 uses
  %exitcond238.not.i542.3 = icmp eq i64 %indvars.iv.next235.i541.3, %wide.trip.count237.i531
  br i1 %exitcond238.not.i542.3, label %.loopexit.us.i537, label %.lr.ph189.us.i539, !llvm.loop !719

.preheader170.us.i536:                            ; preds = %.lr.ph187.us.i543.prol.loopexit, %.lr.ph187.us.i543, %middle.block1450, %.preheader171.us.i532
  br i1 %i.dx, label %.lr.ph189.us.i539.preheader, label %.loopexit.us.i537

.lr.ph189.us.i539.preheader:                      ; preds = %.preheader170.us.i536
  %brmerge1856 = select i1 %min.iters.check1423, i1 true, i1 %i.afz
  br i1 %brmerge1856, label %.lr.ph189.us.i539.preheader1517, label %vector.ph1424

vector.ph1424:                                    ; preds = %.lr.ph189.us.i539.preheader
  %i.ahn = load i32, ptr %i.fk, align 1, !alias.scope !823
  %broadcast.splatinsert1428 = insertelement <4 x i32> poison, i32 %i.ahn, i64 0
  %broadcast.splat1429 = shufflevector <4 x i32> %broadcast.splatinsert1428, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1426

vector.body1426:                                  ; preds = %vector.body1426, %vector.ph1424
  %index1427 = phi i64 [ 0, %vector.ph1424 ], [ %index.next1430, %vector.body1426 ] ; 2 uses
  %i.aho = add nsw i64 %index1427, %i.afi
  %i.ahp = shl nsw i64 %i.aho, 2
  %i.ahq = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.ahp ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 16
  store <4 x i32> %broadcast.splat1429, ptr %i.ahq, align 1, !alias.scope !824, !noalias !823
  store <4 x i32> %broadcast.splat1429, ptr %i.ahr, align 1, !alias.scope !824, !noalias !823
  %index.next1430 = add nuw i64 %index1427, 8     ; 2 uses
  %i.ahs = icmp eq i64 %index.next1430, %n.vec1425
  br i1 %i.ahs, label %middle.block1431, label %vector.body1426, !llvm.loop !723

middle.block1431:                                 ; preds = %vector.body1426
  br i1 %cmp.n1432, label %.loopexit.us.i537, label %.lr.ph189.us.i539.preheader1517

.lr.ph189.us.i539.preheader1517:                  ; preds = %.lr.ph189.us.i539.preheader, %middle.block1431
  %indvars.iv234.i540.ph = phi i64 [ %n.vec1425, %middle.block1431 ], [ 0, %.lr.ph189.us.i539.preheader ] ; 3 uses
  br i1 %lcmp.mod1711.not, label %.lr.ph189.us.i539.prol.loopexit, label %.lr.ph189.us.i539.prol

.lr.ph189.us.i539.prol:                           ; preds = %.lr.ph189.us.i539.preheader1517, %.lr.ph189.us.i539.prol
  %indvars.iv234.i540.prol = phi i64 [ %indvars.iv.next235.i541.prol, %.lr.ph189.us.i539.prol ], [ %indvars.iv234.i540.ph, %.lr.ph189.us.i539.preheader1517 ] ; 2 uses
  %prol.iter1712 = phi i64 [ %prol.iter1712.next, %.lr.ph189.us.i539.prol ], [ 0, %.lr.ph189.us.i539.preheader1517 ]
  %i.aht = add nsw i64 %indvars.iv234.i540.prol, %i.afi
  %i.ahu = shl nsw i64 %i.aht, 2
  %i.ahv = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.ahu
  %i.ahw = load i32, ptr %i.fk, align 1
  store i32 %i.ahw, ptr %i.ahv, align 1
  %indvars.iv.next235.i541.prol = add nuw nsw i64 %indvars.iv234.i540.prol, 1 ; 2 uses
  %prol.iter1712.next = add i64 %prol.iter1712, 1 ; 2 uses
  %prol.iter1712.cmp.not = icmp eq i64 %prol.iter1712.next, %xtraiter1710
  br i1 %prol.iter1712.cmp.not, label %.lr.ph189.us.i539.prol.loopexit, label %.lr.ph189.us.i539.prol, !llvm.loop !724

.lr.ph189.us.i539.prol.loopexit:                  ; preds = %.lr.ph189.us.i539.prol, %.lr.ph189.us.i539.preheader1517
  %indvars.iv234.i540.unr = phi i64 [ %indvars.iv234.i540.ph, %.lr.ph189.us.i539.preheader1517 ], [ %indvars.iv.next235.i541.prol, %.lr.ph189.us.i539.prol ]
  %i.ahx = sub nsw i64 %indvars.iv234.i540.ph, %wide.trip.count237.i531
  %i.ahy = icmp ugt i64 %i.ahx, -4
  br i1 %i.ahy, label %.loopexit.us.i537, label %.lr.ph189.us.i539

.loopexit.us.i537:                                ; preds = %.lr.ph189.us.i539.prol.loopexit, %.lr.ph189.us.i539, %middle.block1431, %.preheader170.us.i536
  %i.ahz = add nuw nsw i32 %.0135194.us.i533, 1   ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.adu
  %i.aib = getelementptr inbounds nuw i8, ptr %.0145190.us.i535, i64 %i.adq
  %exitcond239.not.i538 = icmp eq i32 %i.ahz, %i.ads
  br i1 %exitcond239.not.i538, label %.preheader.i467, label %.preheader171.us.i532, !llvm.loop !725

.preheader.i467:                                  ; preds = %.loopexit173.i518, %.loopexit.us.i537, %.loopexit175.i465
  br i1 %i.dm, label %.lr.ph198.i496, label %._crit_edge199.i468

.lr.ph198.i496:                                   ; preds = %.preheader.i467
  %i.aic = shl nsw i32 %i.adw, 2
  %i.aid = sext i32 %i.aic to i64                 ; 7 uses
  %wide.trip.count248.i497 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i502.preheader, label %.lr.ph198.split.i498

.lr.ph198.split.us.i502.preheader:                ; preds = %.lr.ph198.i496
  %xtraiter1713 = and i64 %wide.trip.count248.i497, 3 ; 3 uses
  %i.aie = add nsw i32 %.neg, -1
  %i.aif = icmp ult i32 %i.aie, 3
  br i1 %i.aif, label %.lr.ph198.split.us.i502.epil.preheader, label %.lr.ph198.split.us.i502.preheader.new

.lr.ph198.split.us.i502.preheader.new:            ; preds = %.lr.ph198.split.us.i502.preheader
  %unroll_iter1717 = and i64 %wide.trip.count248.i497, 2147483644
  br label %.lr.ph198.split.us.i502

.lr.ph198.split.us.i502:                          ; preds = %.lr.ph198.split.us.i502, %.lr.ph198.split.us.i502.preheader.new
  %indvars.iv245.i503 = phi i64 [ 0, %.lr.ph198.split.us.i502.preheader.new ], [ %indvars.iv.next246.i504.3, %.lr.ph198.split.us.i502 ] ; 5 uses
  %niter1718 = phi i64 [ 0, %.lr.ph198.split.us.i502.preheader.new ], [ %niter1718.next.3, %.lr.ph198.split.us.i502 ]
  %i.aig = mul i64 %indvars.iv245.i503, %i.adu
  %i.aih = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.aig
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aih, ptr align 1 %.0138.i466, i64 %i.aid, i1 false)
  %indvars.iv.next246.i504 = or disjoint i64 %indvars.iv245.i503, 1
  %i.aii = mul i64 %indvars.iv.next246.i504, %i.adu
  %i.aij = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.aii
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aij, ptr align 1 %.0138.i466, i64 %i.aid, i1 false)
  %indvars.iv.next246.i504.1 = or disjoint i64 %indvars.iv245.i503, 2
  %i.aik = mul i64 %indvars.iv.next246.i504.1, %i.adu
  %i.ail = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.aik
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ail, ptr align 1 %.0138.i466, i64 %i.aid, i1 false)
  %indvars.iv.next246.i504.2 = or disjoint i64 %indvars.iv245.i503, 3
  %i.aim = mul i64 %indvars.iv.next246.i504.2, %i.adu
  %i.ain = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.aim
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ain, ptr align 1 %.0138.i466, i64 %i.aid, i1 false)
  %indvars.iv.next246.i504.3 = add nuw nsw i64 %indvars.iv245.i503, 4 ; 2 uses
  %niter1718.next.3 = add i64 %niter1718, 4       ; 2 uses
  %niter1718.ncmp.3 = icmp eq i64 %niter1718.next.3, %unroll_iter1717
  br i1 %niter1718.ncmp.3, label %._crit_edge199.thread.i506.unr-lcssa, label %.lr.ph198.split.us.i502, !llvm.loop !726

.preheader174.i513:                               ; preds = %.loopexit173.i518, %.preheader174.preheader.i509
  %.0135194.i514 = phi i32 [ %i.akt, %.loopexit173.i518 ], [ 0, %.preheader174.preheader.i509 ]
  %.0136192.i515 = phi ptr [ %i.aku, %.loopexit173.i518 ], [ %i.afd, %.preheader174.preheader.i509 ] ; 10 uses
  %.0145190.i516 = phi ptr [ %i.akv, %.loopexit173.i518 ], [ %i.adp, %.preheader174.preheader.i509 ] ; 10 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.aff
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aio, ptr align 1 %.0145190.i516, i64 %i.afh, i1 false)
  br i1 %i.ds, label %.lr.ph183.i525.preheader, label %.preheader172.i517

.lr.ph183.i525.preheader:                         ; preds = %.preheader174.i513
  br i1 %i.agb, label %.lr.ph183.i525.epil.preheader, label %.lr.ph183.i525

.preheader172.i517.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i525
  br i1 %lcmp.mod1696.not, label %.preheader172.i517, label %.lr.ph183.i525.epil.preheader

.lr.ph183.i525.epil.preheader:                    ; preds = %.preheader172.i517.loopexit.unr-lcssa, %.lr.ph183.i525.preheader
  %indvars.iv218.i526.epil.init = phi i64 [ 0, %.lr.ph183.i525.preheader ], [ %indvars.iv.next219.i527.3, %.preheader172.i517.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1697)
  br label %.lr.ph183.i525.epil

.lr.ph183.i525.epil:                              ; preds = %.lr.ph183.i525.epil, %.lr.ph183.i525.epil.preheader
  %indvars.iv218.i526.epil = phi i64 [ %indvars.iv.next219.i527.epil, %.lr.ph183.i525.epil ], [ %indvars.iv218.i526.epil.init, %.lr.ph183.i525.epil.preheader ] ; 3 uses
  %epil.iter1695 = phi i64 [ %epil.iter1695.next, %.lr.ph183.i525.epil ], [ 0, %.lr.ph183.i525.epil.preheader ]
  %i.aip = shl nuw nsw i64 %indvars.iv218.i526.epil, 2
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.aip
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %indvars.iv218.i526.epil
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !12
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.ait
  %i.aiv = load i32, ptr %i.aiu, align 1
  store i32 %i.aiv, ptr %i.aiq, align 1
  %indvars.iv.next219.i527.epil = add nuw nsw i64 %indvars.iv218.i526.epil, 1
  %epil.iter1695.next = add i64 %epil.iter1695, 1 ; 2 uses
  %epil.iter1695.cmp.not = icmp eq i64 %epil.iter1695.next, %xtraiter1694
  br i1 %epil.iter1695.cmp.not, label %.preheader172.i517, label %.lr.ph183.i525.epil, !llvm.loop !727

.preheader172.i517:                               ; preds = %.preheader172.i517.loopexit.unr-lcssa, %.lr.ph183.i525.epil, %.preheader174.i513
  br i1 %i.dx, label %.lr.ph185.i520.preheader, label %.loopexit173.i518

.lr.ph185.i520.preheader:                         ; preds = %.preheader172.i517
  br i1 %i.agc, label %.lr.ph185.i520.epil.preheader, label %.lr.ph185.i520

.lr.ph183.i525:                                   ; preds = %.lr.ph183.i525.preheader, %.lr.ph183.i525
  %indvars.iv218.i526 = phi i64 [ %indvars.iv.next219.i527.3, %.lr.ph183.i525 ], [ 0, %.lr.ph183.i525.preheader ] ; 6 uses
  %niter1699 = phi i64 [ %niter1699.next.3, %.lr.ph183.i525 ], [ 0, %.lr.ph183.i525.preheader ]
  %i.aiw = shl nuw nsw i64 %indvars.iv218.i526, 2
  %i.aix = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.aiw
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %indvars.iv218.i526
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !12
  %i.aja = sext i32 %i.aiz to i64
  %i.ajb = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.aja
  %i.ajc = load i32, ptr %i.ajb, align 1
  store i32 %i.ajc, ptr %i.aix, align 1
  %indvars.iv.next219.i527 = or disjoint i64 %indvars.iv218.i526, 1 ; 2 uses
  %i.ajd = shl nuw nsw i64 %indvars.iv.next219.i527, 2
  %i.aje = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.ajd
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %indvars.iv.next219.i527
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !12
  %i.ajh = sext i32 %i.ajg to i64
  %i.aji = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.ajh
  %i.ajj = load i32, ptr %i.aji, align 1
  store i32 %i.ajj, ptr %i.aje, align 1
  %indvars.iv.next219.i527.1 = or disjoint i64 %indvars.iv218.i526, 2 ; 2 uses
  %i.ajk = shl nuw nsw i64 %indvars.iv.next219.i527.1, 2
  %i.ajl = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.ajk
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %indvars.iv.next219.i527.1
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !12
  %i.ajo = sext i32 %i.ajn to i64
  %i.ajp = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.ajo
  %i.ajq = load i32, ptr %i.ajp, align 1
  store i32 %i.ajq, ptr %i.ajl, align 1
  %indvars.iv.next219.i527.2 = or disjoint i64 %indvars.iv218.i526, 3 ; 2 uses
  %i.ajr = shl nuw nsw i64 %indvars.iv.next219.i527.2, 2
  %i.ajs = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.ajr
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %indvars.iv.next219.i527.2
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !12
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.ajv
  %i.ajx = load i32, ptr %i.ajw, align 1
  store i32 %i.ajx, ptr %i.ajs, align 1
  %indvars.iv.next219.i527.3 = add nuw nsw i64 %indvars.iv218.i526, 4 ; 2 uses
  %niter1699.next.3 = add i64 %niter1699, 4       ; 2 uses
  %niter1699.ncmp.3 = icmp eq i64 %niter1699.next.3, %unroll_iter1698
  br i1 %niter1699.ncmp.3, label %.preheader172.i517.loopexit.unr-lcssa, label %.lr.ph183.i525, !llvm.loop !728

.lr.ph185.i520:                                   ; preds = %.lr.ph185.i520.preheader, %.lr.ph185.i520
  %indvars.iv223.i521 = phi i64 [ %indvars.iv.next224.i523.1, %.lr.ph185.i520 ], [ 0, %.lr.ph185.i520.preheader ] ; 4 uses
  %niter1706 = phi i64 [ %niter1706.next.1, %.lr.ph185.i520 ], [ 0, %.lr.ph185.i520.preheader ]
  %i.ajy = add nsw i64 %indvars.iv223.i521, %i.afi
  %i.ajz = shl nsw i64 %i.ajy, 2
  %i.aka = getelementptr inbounds i8, ptr %.0136192.i515, i64 %i.ajz
  %gep279.i522 = getelementptr [4 x i8], ptr %invariant.gep278.i512, i64 %indvars.iv223.i521
  %i.akb = load i32, ptr %gep279.i522, align 4, !tbaa !12
  %i.akc = sext i32 %i.akb to i64
  %i.akd = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.akc
  %i.ake = load i32, ptr %i.akd, align 1
  store i32 %i.ake, ptr %i.aka, align 1
  %indvars.iv.next224.i523 = or disjoint i64 %indvars.iv223.i521, 1 ; 2 uses
  %i.akf = add nsw i64 %indvars.iv.next224.i523, %i.afi
  %i.akg = shl nsw i64 %i.akf, 2
  %i.akh = getelementptr inbounds i8, ptr %.0136192.i515, i64 %i.akg
  %gep279.i522.1 = getelementptr [4 x i8], ptr %invariant.gep278.i512, i64 %indvars.iv.next224.i523
  %i.aki = load i32, ptr %gep279.i522.1, align 4, !tbaa !12
  %i.akj = sext i32 %i.aki to i64
  %i.akk = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.akj
  %i.akl = load i32, ptr %i.akk, align 1
  store i32 %i.akl, ptr %i.akh, align 1
  %indvars.iv.next224.i523.1 = add nuw nsw i64 %indvars.iv223.i521, 2 ; 2 uses
  %niter1706.next.1 = add i64 %niter1706, 2       ; 2 uses
  %niter1706.ncmp.1 = icmp eq i64 %niter1706.next.1, %unroll_iter1705
  br i1 %niter1706.ncmp.1, label %.loopexit173.i518.loopexit.unr-lcssa, label %.lr.ph185.i520, !llvm.loop !729

.loopexit173.i518.loopexit.unr-lcssa:             ; preds = %.lr.ph185.i520
  br i1 %lcmp.mod1703.not, label %.loopexit173.i518, label %.lr.ph185.i520.epil.preheader

.lr.ph185.i520.epil.preheader:                    ; preds = %.loopexit173.i518.loopexit.unr-lcssa, %.lr.ph185.i520.preheader
  %indvars.iv223.i521.epil.init = phi i64 [ 0, %.lr.ph185.i520.preheader ], [ %indvars.iv.next224.i523.1, %.loopexit173.i518.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1704)
  %i.akm = add nsw i64 %indvars.iv223.i521.epil.init, %i.afi
  %i.akn = shl nsw i64 %i.akm, 2
  %i.ako = getelementptr inbounds i8, ptr %.0136192.i515, i64 %i.akn
  %gep279.i522.epil = getelementptr [4 x i8], ptr %invariant.gep278.i512, i64 %indvars.iv223.i521.epil.init
  %i.akp = load i32, ptr %gep279.i522.epil, align 4, !tbaa !12
  %i.akq = sext i32 %i.akp to i64
  %i.akr = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.akq
  %i.aks = load i32, ptr %i.akr, align 1
  store i32 %i.aks, ptr %i.ako, align 1
  br label %.loopexit173.i518

.loopexit173.i518:                                ; preds = %.lr.ph185.i520.epil.preheader, %.loopexit173.i518.loopexit.unr-lcssa, %.preheader172.i517
  %i.akt = add nuw nsw i32 %.0135194.i514, 1      ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.adu
  %i.akv = getelementptr inbounds nuw i8, ptr %.0145190.i516, i64 %i.adq
  %exitcond228.not.i519 = icmp eq i32 %i.akt, %i.ads
  br i1 %exitcond228.not.i519, label %.preheader.i467, label %.preheader174.i513, !llvm.loop !725

._crit_edge199.i468:                              ; preds = %bb.ch, %.preheader.i467
  %i.akw = add nsw i32 %i.ads, %.sroa.speculated1057
  %i.akx = sext i32 %i.akw to i64
  %i.aky = mul i64 %i.adu, %i.akx                 ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.aky
  br i1 %i.dr, label %.lr.ph202.i475, label %._crit_edge203.i469

._crit_edge199.thread.i506.unr-lcssa:             ; preds = %.lr.ph198.split.us.i502
  %lcmp.mod1715.not = icmp eq i64 %xtraiter1713, 0
  br i1 %lcmp.mod1715.not, label %._crit_edge199.thread.i506, label %.lr.ph198.split.us.i502.epil.preheader

.lr.ph198.split.us.i502.epil.preheader:           ; preds = %._crit_edge199.thread.i506.unr-lcssa, %.lr.ph198.split.us.i502.preheader
  %indvars.iv245.i503.epil.init = phi i64 [ 0, %.lr.ph198.split.us.i502.preheader ], [ %indvars.iv.next246.i504.3, %._crit_edge199.thread.i506.unr-lcssa ]
end_hunk_3
begin_hunk_4_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  %or.cond.i168.i486 = or i1 %.not.i.i167.i485, %i.amx
  br i1 %or.cond.i168.i486, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i487, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_ZdaPv(ptr noundef nonnull %i.amw) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i487

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i487:     ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi4EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i472, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.gd

bb.cr:                                            ; preds = %bb.n
  %i.amy = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.amz = load i64, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.ana = load i32, ptr %i.av, align 4, !tbaa !122 ; 5 uses
  %i.anb = load i32, ptr %i.aw, align 8, !tbaa !130 ; 8 uses
  %i.anc = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 11 uses
  %i.and = load i64, ptr %i.ay, align 8, !tbaa !97 ; 19 uses
  %i.ane = add i32 %i.ana, %.sroa.speculated1047  ; 2 uses
  %i.anf = add i32 %i.ane, %.sroa.speculated      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ang = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1047 ; 2 uses
  %i.anh = zext nneg i32 %i.ang to i64            ; 2 uses
  store ptr %i.bm, ptr %8, align 8, !tbaa !812
  %.not.i.i.i575 = icmp samesign ugt i32 %i.ang, 264
  store i64 %i.anh, ptr %i.bn, align 8, !tbaa !813
  br i1 %.not.i.i.i575, label %bb.cs, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i576

bb.cs:                                            ; preds = %bb.cr
  %i.ani = shl nuw nsw i64 %i.anh, 2
  %i.anj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ani) #29
          to label %.noexc685 unwind label %bb.al ; 2 uses

.noexc685:                                        ; preds = %bb.cs
  store ptr %i.anj, ptr %8, align 8, !tbaa !812
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i576

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i576:        ; preds = %.noexc685, %bb.cr
  %i.ank = phi ptr [ %i.bm, %bb.cr ], [ %i.anj, %.noexc685 ] ; 6 uses
  br i1 %i.ds, label %.lr.ph.preheader.i679, label %.preheader176.i577

.lr.ph.preheader.i679:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i576
  %wide.trip.count.i680 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i681

.preheader176.i577:                               ; preds = %bb.ct, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i576
  br i1 %i.dx, label %.lr.ph179.preheader.i671, label %._crit_edge.i578

.lr.ph179.preheader.i671:                         ; preds = %.preheader176.i577
  %i.anl = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i672 = zext nneg i32 %i.dw to i64
  %invariant.gep.i673 = getelementptr [4 x i8], ptr %i.ank, i64 %i.anl
  br label %.lr.ph179.i674

.lr.ph.i681:                                      ; preds = %bb.ct, %.lr.ph.preheader.i679
  %indvars.iv.i682 = phi i64 [ 0, %.lr.ph.preheader.i679 ], [ %indvars.iv.next.i683, %bb.ct ] ; 3 uses
  %i.anm = trunc i64 %indvars.iv.i682 to i32
  %i.ann = sub i32 %i.anm, %.sroa.speculated1047
  %i.ano = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ann, i32 noundef %i.ana, i32 noundef %i.p)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %.lr.ph.i681
  %i.anp = mul nsw i32 %i.ano, 6
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv.i682
  store i32 %i.anp, ptr %i.anq, align 4, !tbaa !12
  %indvars.iv.next.i683 = add nuw nsw i64 %indvars.iv.i682, 1 ; 2 uses
  %exitcond.not.i684 = icmp eq i64 %indvars.iv.next.i683, %wide.trip.count.i680
  br i1 %exitcond.not.i684, label %.preheader176.i577, label %.lr.ph.i681, !llvm.loop !733

bb.cu:                                            ; preds = %.lr.ph.i681
  %i.anr = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

._crit_edge.i578:                                 ; preds = %bb.cv, %.preheader176.i577
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %i.bo, ptr %9, align 8, !tbaa !815
  store i64 1032, ptr %i.bp, align 8, !tbaa !816
  %or.cond.i661 = or i1 %i.dm, %i.dr
  %or.cond1079 = select i1 %i.bd, i1 %or.cond.i661, i1 false
  br i1 %or.cond1079, label %bb.cx, label %.loopexit175.i579

.lr.ph179.i674:                                   ; preds = %bb.cv, %.lr.ph179.preheader.i671
  %indvars.iv208.i675 = phi i64 [ 0, %.lr.ph179.preheader.i671 ], [ %indvars.iv.next209.i677, %bb.cv ] ; 3 uses
  %i.ans = trunc i64 %indvars.iv208.i675 to i32
  %i.ant = add i32 %i.ana, %i.ans
  %i.anu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ant, i32 noundef %i.ana, i32 noundef %i.p)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %.lr.ph179.i674
  %i.anv = mul nsw i32 %i.anu, 6
  %gep.i676 = getelementptr [4 x i8], ptr %invariant.gep.i673, i64 %indvars.iv208.i675
  store i32 %i.anv, ptr %gep.i676, align 4, !tbaa !12
  %indvars.iv.next209.i677 = add nuw nsw i64 %indvars.iv208.i675, 1 ; 2 uses
  %exitcond212.not.i678 = icmp eq i64 %indvars.iv.next209.i677, %wide.trip.count211.i672
  br i1 %exitcond212.not.i678, label %._crit_edge.i578, label %.lr.ph179.i674, !llvm.loop !734

bb.cw:                                            ; preds = %.lr.ph179.i674
  %i.anw = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cx:                                            ; preds = %._crit_edge.i578
  %i.anx = mul nsw i32 %i.anf, 6                  ; 2 uses
  %i.any = sext i32 %i.anx to i64                 ; 2 uses
  %.not.i.i662 = icmp ugt i32 %i.anx, 1032
  store i64 %i.any, ptr %i.bp, align 8, !tbaa !816
  br i1 %.not.i.i662, label %bb.cy, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663

bb.cy:                                            ; preds = %bb.cx
  %i.anz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.any) #29
          to label %.noexc.i670 unwind label %bb.cz ; 2 uses

.noexc.i670:                                      ; preds = %bb.cy
  store ptr %i.anz, ptr %9, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663: ; preds = %.noexc.i670, %bb.cx
  %i.aoa = phi ptr [ %i.anz, %.noexc.i670 ], [ %i.bo, %bb.cx ] ; 8 uses
  %i.aob = icmp sgt i32 %i.anf, 0
  br i1 %i.aob, label %.lr.ph181.preheader.i664, label %.loopexit175.i579

.lr.ph181.preheader.i664:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663
  %wide.trip.count216.i665 = zext nneg i32 %i.anf to i64 ; 2 uses
  %xtraiter1650.a = and i64 %wide.trip.count216.i665, 3 ; 3 uses
  %i.aoc = icmp ult i32 %i.anf, 4
  br i1 %i.aoc, label %.lr.ph181.i666.epil.preheader, label %.lr.ph181.preheader.i664.new

.lr.ph181.preheader.i664.new:                     ; preds = %.lr.ph181.preheader.i664
  %unroll_iter1654.a = and i64 %wide.trip.count216.i665, 2147483644
  br label %.lr.ph181.i666

bb.cz:                                            ; preds = %bb.cy
  %i.aod = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

.lr.ph181.i666:                                   ; preds = %.lr.ph181.i666, %.lr.ph181.preheader.i664.new
  %indvars.iv213.i667 = phi i64 [ 0, %.lr.ph181.preheader.i664.new ], [ %indvars.iv.next214.i668.3, %.lr.ph181.i666 ] ; 5 uses
  %niter1655.a = phi i64 [ 0, %.lr.ph181.preheader.i664.new ], [ %niter1655.next.3, %.lr.ph181.i666 ]
  %i.aoe = mul nuw nsw i64 %indvars.iv213.i667, 6
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoa, i64 %i.aoe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aof, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %i.aog = mul nuw i64 %indvars.iv213.i667, 6
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoa, i64 %i.aog
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aoi, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %i.aoj = mul nuw i64 %indvars.iv213.i667, 6
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoa, i64 %i.aoj
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aol, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %i.aom = mul nuw i64 %indvars.iv213.i667, 6
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aoa, i64 %i.aom
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aoo, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %indvars.iv.next214.i668.3 = add nuw nsw i64 %indvars.iv213.i667, 4 ; 2 uses
  %niter1655.next.3 = add i64 %niter1655.a, 4     ; 2 uses
  %niter1655.ncmp.3 = icmp eq i64 %niter1655.next.3, %unroll_iter1654.a
  br i1 %niter1655.ncmp.3, label %.loopexit175.i579.loopexit.unr-lcssa, label %.lr.ph181.i666, !llvm.loop !735

.loopexit175.i579.loopexit.unr-lcssa:             ; preds = %.lr.ph181.i666
  %lcmp.mod1652.not.a = icmp eq i64 %xtraiter1650.a, 0
  br i1 %lcmp.mod1652.not.a, label %.loopexit175.i579, label %.lr.ph181.i666.epil.preheader

.lr.ph181.i666.epil.preheader:                    ; preds = %.loopexit175.i579.loopexit.unr-lcssa, %.lr.ph181.preheader.i664
  %indvars.iv213.i667.epil.init = phi i64 [ 0, %.lr.ph181.preheader.i664 ], [ %indvars.iv.next214.i668.3, %.loopexit175.i579.loopexit.unr-lcssa ]
  %lcmp.mod1653.a = icmp ne i64 %xtraiter1650.a, 0
  call void @llvm.assume(i1 %lcmp.mod1653.a)
  br label %.lr.ph181.i666.epil

.lr.ph181.i666.epil:                              ; preds = %.lr.ph181.i666.epil, %.lr.ph181.i666.epil.preheader
  %indvars.iv213.i667.epil = phi i64 [ %indvars.iv213.i667.epil.init, %.lr.ph181.i666.epil.preheader ], [ %indvars.iv.next214.i668.epil, %.lr.ph181.i666.epil ] ; 2 uses
  %epil.iter1651 = phi i64 [ 0, %.lr.ph181.i666.epil.preheader ], [ %epil.iter1651.next, %.lr.ph181.i666.epil ]
  %i.aop = mul nuw nsw i64 %indvars.iv213.i667.epil, 6
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aoa, i64 %i.aop
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aoq, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %indvars.iv.next214.i668.epil = add nuw nsw i64 %indvars.iv213.i667.epil, 1
  %epil.iter1651.next = add i64 %epil.iter1651, 1 ; 2 uses
  %epil.iter1651.cmp.not = icmp eq i64 %epil.iter1651.next, %xtraiter1650.a
  br i1 %epil.iter1651.cmp.not, label %.loopexit175.i579, label %.lr.ph181.i666.epil, !llvm.loop !736

.loopexit175.i579:                                ; preds = %.loopexit175.i579.loopexit.unr-lcssa, %.lr.ph181.i666.epil, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663, %._crit_edge.i578
  %.0138.i580 = phi ptr [ null, %._crit_edge.i578 ], [ %i.aoa, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663 ], [ %i.aoa, %.lr.ph181.i666.epil ], [ %i.aoa, %.loopexit175.i579.loopexit.unr-lcssa ] ; 10 uses
  %i.aor = icmp sgt i32 %i.anb, 0
  br i1 %i.aor, label %.lr.ph196.i622, label %.preheader.i581

.lr.ph196.i622:                                   ; preds = %.loopexit175.i579
  %i.aos = zext nneg i32 %.sroa.speculated1057 to i64
  %i.aot = mul i64 %i.and, %i.aos
  %i.aou = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.aot ; 2 uses
  %i.aov = mul nuw nsw i32 %.sroa.speculated1047, 6
  %i.aow = zext nneg i32 %i.aov to i64            ; 2 uses
  %i.aox = mul nsw i32 %i.ana, 6
  %i.aoy = sext i32 %i.aox to i64                 ; 2 uses
  %i.aoz = sext i32 %i.ane to i64                 ; 6 uses
  %wide.trip.count232.i644 = zext nneg i32 %.sroa.speculated1047 to i64 ; 5 uses
  %wide.trip.count237.i645 = zext nneg i32 %.sroa.speculated to i64 ; 4 uses
  br i1 %i.bd, label %.preheader171.us.i646.preheader, label %.preheader174.preheader.i623

.preheader171.us.i646.preheader:                  ; preds = %.lr.ph196.i622
  %xtraiter1669 = and i64 %wide.trip.count232.i644, 3 ; 3 uses
  %i.apa = add nsw i32 %.sroa.speculated1047, -1
  %i.apb = icmp ult i32 %i.apa, 3
  %unroll_iter1673 = and i64 %wide.trip.count232.i644, 2147483644
  %lcmp.mod1671.not = icmp eq i64 %xtraiter1669, 0
  %lcmp.mod1672 = icmp ne i64 %xtraiter1669, 0
  %xtraiter1676 = and i64 %wide.trip.count237.i645, 1
  %i.apc = icmp eq i32 %i.dw, 1
  %unroll_iter1680 = and i64 %wide.trip.count237.i645, 2147483646
  %lcmp.mod1678.not = icmp eq i64 %xtraiter1676, 0
  %lcmp.mod1679 = trunc i32 %.sroa.speculated to i1
  br label %.preheader171.us.i646

.preheader174.preheader.i623:                     ; preds = %.lr.ph196.i622
  %invariant.gep278.i626 = getelementptr [4 x i8], ptr %i.ank, i64 %wide.trip.count232.i644 ; 3 uses
  %xtraiter1656 = and i64 %wide.trip.count232.i644, 1
  %i.apd = icmp eq i32 %.neg214, 1
  %unroll_iter1660 = and i64 %wide.trip.count232.i644, 2147483646
  %lcmp.mod1658.not = icmp eq i64 %xtraiter1656, 0
  %lcmp.mod1659 = trunc i32 %.sroa.speculated1047 to i1
  %xtraiter1663 = and i64 %wide.trip.count237.i645, 1
  %i.ape = icmp eq i32 %i.dw, 1
  %unroll_iter1667 = and i64 %wide.trip.count237.i645, 2147483646
  %lcmp.mod1665.not = icmp eq i64 %xtraiter1663, 0
  %lcmp.mod1666 = trunc i32 %.sroa.speculated to i1
  br label %.preheader174.i627

.preheader171.us.i646:                            ; preds = %.preheader171.us.i646.preheader, %.loopexit.us.i651
  %.0135194.us.i647 = phi i32 [ %i.aqc, %.loopexit.us.i651 ], [ 0, %.preheader171.us.i646.preheader ]
  %.0136192.us.i648 = phi ptr [ %i.aqd, %.loopexit.us.i651 ], [ %i.aou, %.preheader171.us.i646.preheader ] ; 10 uses
  %.0145190.us.i649 = phi ptr [ %i.aqe, %.loopexit.us.i651 ], [ %i.amy, %.preheader171.us.i646.preheader ] ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.aow
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apf, ptr align 1 %.0145190.us.i649, i64 %i.aoy, i1 false)
  br i1 %i.ds, label %.lr.ph187.us.i657.preheader, label %.preheader170.us.i650

.lr.ph187.us.i657.preheader:                      ; preds = %.preheader171.us.i646
  br i1 %i.apb, label %.lr.ph187.us.i657.epil.preheader, label %.lr.ph187.us.i657

.lr.ph187.us.i657:                                ; preds = %.lr.ph187.us.i657.preheader, %.lr.ph187.us.i657
  %indvars.iv229.i658 = phi i64 [ %indvars.iv.next230.i659.3, %.lr.ph187.us.i657 ], [ 0, %.lr.ph187.us.i657.preheader ] ; 5 uses
  %niter1674 = phi i64 [ %niter1674.next.3, %.lr.ph187.us.i657 ], [ 0, %.lr.ph187.us.i657.preheader ]
  %i.apg = mul nuw nsw i64 %indvars.iv229.i658, 6
  %i.aph = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.apg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aph, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %i.api = mul nuw i64 %indvars.iv229.i658, 6
  %i.apj = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.api
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.apk, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %i.apl = mul nuw i64 %indvars.iv229.i658, 6
  %i.apm = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.apl
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.apn, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %i.apo = mul nuw i64 %indvars.iv229.i658, 6
  %i.app = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.apq, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %indvars.iv.next230.i659.3 = add nuw nsw i64 %indvars.iv229.i658, 4 ; 2 uses
  %niter1674.next.3 = add i64 %niter1674, 4       ; 2 uses
  %niter1674.ncmp.3 = icmp eq i64 %niter1674.next.3, %unroll_iter1673
  br i1 %niter1674.ncmp.3, label %.preheader170.us.i650.loopexit.unr-lcssa, label %.lr.ph187.us.i657, !llvm.loop !737

.lr.ph189.us.i653:                                ; preds = %.lr.ph189.us.i653.preheader, %.lr.ph189.us.i653
  %indvars.iv234.i654 = phi i64 [ %indvars.iv.next235.i655.1, %.lr.ph189.us.i653 ], [ 0, %.lr.ph189.us.i653.preheader ] ; 3 uses
  %niter1681 = phi i64 [ %niter1681.next.1, %.lr.ph189.us.i653 ], [ 0, %.lr.ph189.us.i653.preheader ]
  %i.apr = add nsw i64 %indvars.iv234.i654, %i.aoz
  %i.aps = mul nsw i64 %i.apr, 6
  %i.apt = getelementptr inbounds i8, ptr %.0136192.us.i648, i64 %i.aps
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.apt, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %indvars.iv.next235.i655 = or disjoint i64 %indvars.iv234.i654, 1
  %i.apu = add nsw i64 %indvars.iv.next235.i655, %i.aoz
  %i.apv = mul nsw i64 %i.apu, 6
  %i.apw = getelementptr inbounds i8, ptr %.0136192.us.i648, i64 %i.apv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.apw, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %indvars.iv.next235.i655.1 = add nuw nsw i64 %indvars.iv234.i654, 2 ; 2 uses
  %niter1681.next.1 = add i64 %niter1681, 2       ; 2 uses
  %niter1681.ncmp.1 = icmp eq i64 %niter1681.next.1, %unroll_iter1680
  br i1 %niter1681.ncmp.1, label %.loopexit.us.i651.loopexit.unr-lcssa, label %.lr.ph189.us.i653, !llvm.loop !738

.preheader170.us.i650.loopexit.unr-lcssa:         ; preds = %.lr.ph187.us.i657
  br i1 %lcmp.mod1671.not, label %.preheader170.us.i650, label %.lr.ph187.us.i657.epil.preheader

.lr.ph187.us.i657.epil.preheader:                 ; preds = %.preheader170.us.i650.loopexit.unr-lcssa, %.lr.ph187.us.i657.preheader
  %indvars.iv229.i658.epil.init = phi i64 [ 0, %.lr.ph187.us.i657.preheader ], [ %indvars.iv.next230.i659.3, %.preheader170.us.i650.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1672)
  br label %.lr.ph187.us.i657.epil

.lr.ph187.us.i657.epil:                           ; preds = %.lr.ph187.us.i657.epil, %.lr.ph187.us.i657.epil.preheader
  %indvars.iv229.i658.epil = phi i64 [ %indvars.iv.next230.i659.epil, %.lr.ph187.us.i657.epil ], [ %indvars.iv229.i658.epil.init, %.lr.ph187.us.i657.epil.preheader ] ; 2 uses
  %epil.iter1670 = phi i64 [ %epil.iter1670.next, %.lr.ph187.us.i657.epil ], [ 0, %.lr.ph187.us.i657.epil.preheader ]
  %i.apx = mul nuw nsw i64 %indvars.iv229.i658.epil, 6
  %i.apy = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.apx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.apy, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  %indvars.iv.next230.i659.epil = add nuw nsw i64 %indvars.iv229.i658.epil, 1
  %epil.iter1670.next = add i64 %epil.iter1670, 1 ; 2 uses
  %epil.iter1670.cmp.not = icmp eq i64 %epil.iter1670.next, %xtraiter1669
  br i1 %epil.iter1670.cmp.not, label %.preheader170.us.i650, label %.lr.ph187.us.i657.epil, !llvm.loop !739

.preheader170.us.i650:                            ; preds = %.preheader170.us.i650.loopexit.unr-lcssa, %.lr.ph187.us.i657.epil, %.preheader171.us.i646
  br i1 %i.dx, label %.lr.ph189.us.i653.preheader, label %.loopexit.us.i651

.lr.ph189.us.i653.preheader:                      ; preds = %.preheader170.us.i650
  br i1 %i.apc, label %.lr.ph189.us.i653.epil.preheader, label %.lr.ph189.us.i653

.loopexit.us.i651.loopexit.unr-lcssa:             ; preds = %.lr.ph189.us.i653
  br i1 %lcmp.mod1678.not, label %.loopexit.us.i651, label %.lr.ph189.us.i653.epil.preheader

.lr.ph189.us.i653.epil.preheader:                 ; preds = %.loopexit.us.i651.loopexit.unr-lcssa, %.lr.ph189.us.i653.preheader
  %indvars.iv234.i654.epil.init = phi i64 [ 0, %.lr.ph189.us.i653.preheader ], [ %indvars.iv.next235.i655.1, %.loopexit.us.i651.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1679)
  %i.apz = add nsw i64 %indvars.iv234.i654.epil.init, %i.aoz
  %i.aqa = mul nsw i64 %i.apz, 6
  %i.aqb = getelementptr inbounds i8, ptr %.0136192.us.i648, i64 %i.aqa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aqb, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.fk, i64 6, i1 false)
  br label %.loopexit.us.i651

.loopexit.us.i651:                                ; preds = %.lr.ph189.us.i653.epil.preheader, %.loopexit.us.i651.loopexit.unr-lcssa, %.preheader170.us.i650
  %i.aqc = add nuw nsw i32 %.0135194.us.i647, 1   ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.and
  %i.aqe = getelementptr inbounds nuw i8, ptr %.0145190.us.i649, i64 %i.amz
  %exitcond239.not.i652 = icmp eq i32 %i.aqc, %i.anb
  br i1 %exitcond239.not.i652, label %.preheader.i581, label %.preheader171.us.i646, !llvm.loop !740

.preheader.i581:                                  ; preds = %.loopexit173.i632, %.loopexit.us.i651, %.loopexit175.i579
  br i1 %i.dm, label %.lr.ph198.i610, label %._crit_edge199.i582

.lr.ph198.i610:                                   ; preds = %.preheader.i581
  %i.aqf = mul nsw i32 %i.anf, 6
  %i.aqg = sext i32 %i.aqf to i64                 ; 7 uses
  %wide.trip.count248.i611 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i616.preheader, label %.lr.ph198.split.i612

.lr.ph198.split.us.i616.preheader:                ; preds = %.lr.ph198.i610
  %xtraiter1682 = and i64 %wide.trip.count248.i611, 3 ; 3 uses
  %i.aqh = add nsw i32 %.neg, -1
  %i.aqi = icmp ult i32 %i.aqh, 3
  br i1 %i.aqi, label %.lr.ph198.split.us.i616.epil.preheader, label %.lr.ph198.split.us.i616.preheader.new

.lr.ph198.split.us.i616.preheader.new:            ; preds = %.lr.ph198.split.us.i616.preheader
  %unroll_iter1686 = and i64 %wide.trip.count248.i611, 2147483644
  br label %.lr.ph198.split.us.i616

.lr.ph198.split.us.i616:                          ; preds = %.lr.ph198.split.us.i616, %.lr.ph198.split.us.i616.preheader.new
  %indvars.iv245.i617 = phi i64 [ 0, %.lr.ph198.split.us.i616.preheader.new ], [ %indvars.iv.next246.i618.3, %.lr.ph198.split.us.i616 ] ; 5 uses
  %niter1687 = phi i64 [ 0, %.lr.ph198.split.us.i616.preheader.new ], [ %niter1687.next.3, %.lr.ph198.split.us.i616 ]
  %i.aqj = mul i64 %indvars.iv245.i617, %i.and
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.aqj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqk, ptr align 1 %.0138.i580, i64 %i.aqg, i1 false)
  %indvars.iv.next246.i618 = or disjoint i64 %indvars.iv245.i617, 1
  %i.aql = mul i64 %indvars.iv.next246.i618, %i.and
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.aql
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqm, ptr align 1 %.0138.i580, i64 %i.aqg, i1 false)
  %indvars.iv.next246.i618.1 = or disjoint i64 %indvars.iv245.i617, 2
  %i.aqn = mul i64 %indvars.iv.next246.i618.1, %i.and
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.aqn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqo, ptr align 1 %.0138.i580, i64 %i.aqg, i1 false)
  %indvars.iv.next246.i618.2 = or disjoint i64 %indvars.iv245.i617, 3
  %i.aqp = mul i64 %indvars.iv.next246.i618.2, %i.and
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.aqp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqq, ptr align 1 %.0138.i580, i64 %i.aqg, i1 false)
  %indvars.iv.next246.i618.3 = add nuw nsw i64 %indvars.iv245.i617, 4 ; 2 uses
  %niter1687.next.3 = add i64 %niter1687, 4       ; 2 uses
  %niter1687.ncmp.3 = icmp eq i64 %niter1687.next.3, %unroll_iter1686
  br i1 %niter1687.ncmp.3, label %._crit_edge199.thread.i620.unr-lcssa, label %.lr.ph198.split.us.i616, !llvm.loop !741

.preheader174.i627:                               ; preds = %.loopexit173.i632, %.preheader174.preheader.i623
  %.0135194.i628 = phi i32 [ %i.asc, %.loopexit173.i632 ], [ 0, %.preheader174.preheader.i623 ]
  %.0136192.i629 = phi ptr [ %i.asd, %.loopexit173.i632 ], [ %i.aou, %.preheader174.preheader.i623 ] ; 8 uses
  %.0145190.i630 = phi ptr [ %i.ase, %.loopexit173.i632 ], [ %i.amy, %.preheader174.preheader.i623 ] ; 8 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %.0136192.i629, i64 %i.aow
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqr, ptr align 1 %.0145190.i630, i64 %i.aoy, i1 false)
  br i1 %i.ds, label %.lr.ph183.i639.preheader, label %.preheader172.i631

.lr.ph183.i639.preheader:                         ; preds = %.preheader174.i627
  br i1 %i.apd, label %.lr.ph183.i639.epil.preheader, label %.lr.ph183.i639

.preheader172.i631.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i639
  br i1 %lcmp.mod1658.not, label %.preheader172.i631, label %.lr.ph183.i639.epil.preheader

.lr.ph183.i639.epil.preheader:                    ; preds = %.preheader172.i631.loopexit.unr-lcssa, %.lr.ph183.i639.preheader
  %indvars.iv218.i640.epil.init = phi i64 [ 0, %.lr.ph183.i639.preheader ], [ %indvars.iv.next219.i641.1, %.preheader172.i631.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1659)
  %i.aqs = mul nuw nsw i64 %indvars.iv218.i640.epil.init, 6
  %i.aqt = getelementptr inbounds nuw i8, ptr %.0136192.i629, i64 %i.aqs
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv218.i640.epil.init
  %i.aqv = load i32, ptr %i.aqu, align 4, !tbaa !12
  %i.aqw = sext i32 %i.aqv to i64
  %i.aqx = getelementptr inbounds i8, ptr %.0145190.i630, i64 %i.aqw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aqt, ptr noundef nonnull align 1 dereferenceable(6) %i.aqx, i64 6, i1 false)
  br label %.preheader172.i631

.preheader172.i631:                               ; preds = %.lr.ph183.i639.epil.preheader, %.preheader172.i631.loopexit.unr-lcssa, %.preheader174.i627
  br i1 %i.dx, label %.lr.ph185.i634.preheader, label %.loopexit173.i632

.lr.ph185.i634.preheader:                         ; preds = %.preheader172.i631
  br i1 %i.ape, label %.lr.ph185.i634.epil.preheader, label %.lr.ph185.i634

.lr.ph183.i639:                                   ; preds = %.lr.ph183.i639.preheader, %.lr.ph183.i639
  %indvars.iv218.i640 = phi i64 [ %indvars.iv.next219.i641.1, %.lr.ph183.i639 ], [ 0, %.lr.ph183.i639.preheader ] ; 4 uses
  %niter1661 = phi i64 [ %niter1661.next.1, %.lr.ph183.i639 ], [ 0, %.lr.ph183.i639.preheader ]
  %i.aqy = mul nuw nsw i64 %indvars.iv218.i640, 6
  %i.aqz = getelementptr inbounds nuw i8, ptr %.0136192.i629, i64 %i.aqy
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv218.i640
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !12
  %i.arc = sext i32 %i.arb to i64
  %i.ard = getelementptr inbounds i8, ptr %.0145190.i630, i64 %i.arc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aqz, ptr noundef nonnull align 1 dereferenceable(6) %i.ard, i64 6, i1 false)
  %indvars.iv.next219.i641 = or disjoint i64 %indvars.iv218.i640, 1 ; 2 uses
  %i.are = mul nuw nsw i64 %indvars.iv.next219.i641, 6
  %i.arf = getelementptr inbounds nuw i8, ptr %.0136192.i629, i64 %i.are
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv.next219.i641
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !12
  %i.ari = sext i32 %i.arh to i64
  %i.arj = getelementptr inbounds i8, ptr %.0145190.i630, i64 %i.ari
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.arf, ptr noundef nonnull align 1 dereferenceable(6) %i.arj, i64 6, i1 false)
  %indvars.iv.next219.i641.1 = add nuw nsw i64 %indvars.iv218.i640, 2 ; 2 uses
  %niter1661.next.1 = add i64 %niter1661, 2       ; 2 uses
  %niter1661.ncmp.1 = icmp eq i64 %niter1661.next.1, %unroll_iter1660
  br i1 %niter1661.ncmp.1, label %.preheader172.i631.loopexit.unr-lcssa, label %.lr.ph183.i639, !llvm.loop !742

.lr.ph185.i634:                                   ; preds = %.lr.ph185.i634.preheader, %.lr.ph185.i634
  %indvars.iv223.i635 = phi i64 [ %indvars.iv.next224.i637.1, %.lr.ph185.i634 ], [ 0, %.lr.ph185.i634.preheader ] ; 4 uses
  %niter1668 = phi i64 [ %niter1668.next.1, %.lr.ph185.i634 ], [ 0, %.lr.ph185.i634.preheader ]
  %i.ark = add nsw i64 %indvars.iv223.i635, %i.aoz
  %i.arl = mul nsw i64 %i.ark, 6
  %i.arm = getelementptr inbounds i8, ptr %.0136192.i629, i64 %i.arl
end_hunk_4
begin_hunk_5_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a

bb.dh:                                            ; preds = %bb.dg
  call void @_ZdaPv(ptr noundef nonnull %i.aud) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i597

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i597:    ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.di

bb.di:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i597, %bb.cw, %bb.cu
  %.pn156.i598 = phi { ptr, i32 } [ %i.anr, %bb.cu ], [ %i.anw, %bb.cw ], [ %.pn.pn.i594, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i597 ]
  %i.auf = load ptr, ptr %8, align 8, !tbaa !812  ; 3 uses
  %.not.i.i167.i599 = icmp eq ptr %i.auf, %i.bm
  %i.aug = icmp eq ptr %i.auf, null
  %or.cond.i168.i600 = or i1 %.not.i.i167.i599, %i.aug
  br i1 %or.cond.i168.i600, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i601, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZdaPv(ptr noundef nonnull %i.auf) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i601

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i601:     ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi6EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i586, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.gd

bb.dk:                                            ; preds = %bb.n
  %i.auh = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.aui = load i64, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.auj = load i32, ptr %i.av, align 4, !tbaa !122 ; 5 uses
  %i.auk = load i32, ptr %i.aw, align 8, !tbaa !130 ; 10 uses
  %i.aul = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 14 uses
  %i.aum = load i64, ptr %i.ay, align 8, !tbaa !97 ; 23 uses
  %i.aun = add i32 %i.auj, %.sroa.speculated1047  ; 2 uses
  %i.auo = add i32 %i.aun, %.sroa.speculated      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.aup = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1047 ; 2 uses
  %i.auq = zext nneg i32 %i.aup to i64            ; 2 uses
  store ptr %i.bi, ptr %6, align 8, !tbaa !812
  %.not.i.i.i688 = icmp samesign ugt i32 %i.aup, 264
  store i64 %i.auq, ptr %i.bj, align 8, !tbaa !813
  br i1 %.not.i.i.i688, label %bb.dl, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i689

bb.dl:                                            ; preds = %bb.dk
  %i.aur = shl nuw nsw i64 %i.auq, 2
  %i.aus = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aur) #29
          to label %.noexc799 unwind label %bb.al ; 2 uses

.noexc799:                                        ; preds = %bb.dl
  store ptr %i.aus, ptr %6, align 8, !tbaa !812
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i689

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i689:        ; preds = %.noexc799, %bb.dk
  %i.aut = phi ptr [ %i.bi, %bb.dk ], [ %i.aus, %.noexc799 ] ; 8 uses
  br i1 %i.ds, label %.lr.ph.preheader.i793, label %.preheader176.i690

.lr.ph.preheader.i793:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i689
  %wide.trip.count.i794 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i795

.preheader176.i690:                               ; preds = %bb.dm, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i689
  br i1 %i.dx, label %.lr.ph179.preheader.i785, label %._crit_edge.i691

.lr.ph179.preheader.i785:                         ; preds = %.preheader176.i690
  %i.auu = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i786 = zext nneg i32 %i.dw to i64
  %invariant.gep.i787 = getelementptr [4 x i8], ptr %i.aut, i64 %i.auu
  br label %.lr.ph179.i788

.lr.ph.i795:                                      ; preds = %bb.dm, %.lr.ph.preheader.i793
  %indvars.iv.i796 = phi i64 [ 0, %.lr.ph.preheader.i793 ], [ %indvars.iv.next.i797, %bb.dm ] ; 3 uses
  %i.auv = trunc i64 %indvars.iv.i796 to i32
  %i.auw = sub i32 %i.auv, %.sroa.speculated1047
  %i.aux = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.auw, i32 noundef %i.auj, i32 noundef %i.p)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.i795
  %i.auy = shl nsw i32 %i.aux, 3
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %indvars.iv.i796
  store i32 %i.auy, ptr %i.auz, align 4, !tbaa !12
  %indvars.iv.next.i797 = add nuw nsw i64 %indvars.iv.i796, 1 ; 2 uses
  %exitcond.not.i798 = icmp eq i64 %indvars.iv.next.i797, %wide.trip.count.i794
  br i1 %exitcond.not.i798, label %.preheader176.i690, label %.lr.ph.i795, !llvm.loop !747

bb.dn:                                            ; preds = %.lr.ph.i795
  %i.ava = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

._crit_edge.i691:                                 ; preds = %bb.do, %.preheader176.i690
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.bk, ptr %7, align 8, !tbaa !815
  store i64 1032, ptr %i.bl, align 8, !tbaa !816
  %or.cond.i774 = or i1 %i.dm, %i.dr
  %or.cond1080 = select i1 %i.bd, i1 %or.cond.i774, i1 false
  br i1 %or.cond1080, label %bb.dq, label %.loopexit175.i692

.lr.ph179.i788:                                   ; preds = %bb.do, %.lr.ph179.preheader.i785
  %indvars.iv208.i789 = phi i64 [ 0, %.lr.ph179.preheader.i785 ], [ %indvars.iv.next209.i791, %bb.do ] ; 3 uses
  %i.avb = trunc i64 %indvars.iv208.i789 to i32
  %i.avc = add i32 %i.auj, %i.avb
  %i.avd = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.avc, i32 noundef %i.auj, i32 noundef %i.p)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %.lr.ph179.i788
  %i.ave = shl nsw i32 %i.avd, 3
  %gep.i790 = getelementptr [4 x i8], ptr %invariant.gep.i787, i64 %indvars.iv208.i789
  store i32 %i.ave, ptr %gep.i790, align 4, !tbaa !12
  %indvars.iv.next209.i791 = add nuw nsw i64 %indvars.iv208.i789, 1 ; 2 uses
  %exitcond212.not.i792 = icmp eq i64 %indvars.iv.next209.i791, %wide.trip.count211.i786
  br i1 %exitcond212.not.i792, label %._crit_edge.i691, label %.lr.ph179.i788, !llvm.loop !748

bb.dp:                                            ; preds = %.lr.ph179.i788
  %i.avf = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dq:                                            ; preds = %._crit_edge.i691
  %i.avg = shl nsw i32 %i.auo, 3                  ; 2 uses
  %i.avh = sext i32 %i.avg to i64                 ; 2 uses
  %.not.i.i775 = icmp ugt i32 %i.avg, 1032
  store i64 %i.avh, ptr %i.bl, align 8, !tbaa !816
  br i1 %.not.i.i775, label %bb.dr, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776

bb.dr:                                            ; preds = %bb.dq
  %i.avi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.avh) #29
          to label %.noexc.i784 unwind label %bb.ds ; 2 uses

.noexc.i784:                                      ; preds = %bb.dr
  store ptr %i.avi, ptr %7, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776: ; preds = %.noexc.i784, %bb.dq
  %i.avj = phi ptr [ %i.avi, %.noexc.i784 ], [ %i.bk, %bb.dq ] ; 5 uses
  %i.avk = icmp sgt i32 %i.auo, 0
  br i1 %i.avk, label %.lr.ph181.preheader.i777, label %.loopexit175.i692

.lr.ph181.preheader.i777:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776
  %wide.trip.count216.i778 = zext nneg i32 %i.auo to i64 ; 3 uses
  %.pre.i779 = load i64, ptr %i.fk, align 1       ; 2 uses
  %min.iters.check1506 = icmp ult i32 %i.auo, 4
  br i1 %min.iters.check1506, label %.lr.ph181.i780.preheader, label %vector.ph1507

vector.ph1507:                                    ; preds = %.lr.ph181.preheader.i777
  %n.vec1508 = and i64 %wide.trip.count216.i778, 2147483644 ; 3 uses
  %broadcast.splatinsert1509 = insertelement <2 x i64> poison, i64 %.pre.i779, i64 0
  %broadcast.splat1510 = shufflevector <2 x i64> %broadcast.splatinsert1509, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1511

vector.body1511:                                  ; preds = %vector.body1511, %vector.ph1507
  %index1512 = phi i64 [ 0, %vector.ph1507 ], [ %index.next1513, %vector.body1511 ] ; 2 uses
  %i.avl = shl nuw nsw i64 %index1512, 3
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avj, i64 %i.avl ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 16
  store <2 x i64> %broadcast.splat1510, ptr %i.avm, align 1
  store <2 x i64> %broadcast.splat1510, ptr %i.avn, align 1
  %index.next1513 = add nuw i64 %index1512, 4     ; 2 uses
  %i.avo = icmp eq i64 %index.next1513, %n.vec1508
  br i1 %i.avo, label %middle.block1514, label %vector.body1511, !llvm.loop !749

middle.block1514:                                 ; preds = %vector.body1511
  %cmp.n1515 = icmp eq i64 %n.vec1508, %wide.trip.count216.i778
  br i1 %cmp.n1515, label %.loopexit175.i692, label %.lr.ph181.i780.preheader

.lr.ph181.i780.preheader:                         ; preds = %.lr.ph181.preheader.i777, %middle.block1514
  %indvars.iv213.i781.ph = phi i64 [ 0, %.lr.ph181.preheader.i777 ], [ %n.vec1508, %middle.block1514 ]
  br label %.lr.ph181.i780

bb.ds:                                            ; preds = %bb.dr
  %i.avp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.lr.ph181.i780:                                   ; preds = %.lr.ph181.i780.preheader, %.lr.ph181.i780
  %indvars.iv213.i781 = phi i64 [ %indvars.iv.next214.i782, %.lr.ph181.i780 ], [ %indvars.iv213.i781.ph, %.lr.ph181.i780.preheader ] ; 2 uses
  %i.avq = shl nuw nsw i64 %indvars.iv213.i781, 3
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avj, i64 %i.avq
  store i64 %.pre.i779, ptr %i.avr, align 1
  %indvars.iv.next214.i782 = add nuw nsw i64 %indvars.iv213.i781, 1 ; 2 uses
  %exitcond217.not.i783 = icmp eq i64 %indvars.iv.next214.i782, %wide.trip.count216.i778
  br i1 %exitcond217.not.i783, label %.loopexit175.i692, label %.lr.ph181.i780, !llvm.loop !750

.loopexit175.i692:                                ; preds = %.lr.ph181.i780, %middle.block1514, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776, %._crit_edge.i691
  %.0138.i693 = phi ptr [ null, %._crit_edge.i691 ], [ %i.avj, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776 ], [ %i.avj, %middle.block1514 ], [ %i.avj, %.lr.ph181.i780 ] ; 10 uses
  %i.avs = icmp sgt i32 %i.auk, 0
  br i1 %i.avs, label %.lr.ph196.i735, label %.preheader.i694

.lr.ph196.i735:                                   ; preds = %.loopexit175.i692
  %i.avt = zext nneg i32 %.sroa.speculated1057 to i64 ; 3 uses
  %i.avu = mul i64 %i.aum, %i.avt                 ; 2 uses
  %i.avv = getelementptr i8, ptr %i.aul, i64 %i.avu ; 3 uses
  %i.avw = shl nuw nsw i32 %.sroa.speculated1047, 3
  %i.avx = zext nneg i32 %i.avw to i64            ; 2 uses
  %i.avy = shl nsw i32 %i.auj, 3
  %i.avz = sext i32 %i.avy to i64                 ; 2 uses
  %i.awa = sext i32 %i.aun to i64                 ; 10 uses
  %wide.trip.count232.i757 = zext nneg i32 %.sroa.speculated1047 to i64 ; 9 uses
  %wide.trip.count237.i758 = zext nneg i32 %.sroa.speculated to i64 ; 8 uses
  br i1 %i.bd, label %.preheader171.us.i759.preheader, label %.preheader174.preheader.i736

.preheader171.us.i759.preheader:                  ; preds = %.lr.ph196.i735
  %i.awb = shl nsw i64 %i.awa, 3                  ; 2 uses
  %i.awc = getelementptr i8, ptr %i.aul, i64 %i.avu
  %scevgep1466 = getelementptr i8, ptr %i.awc, i64 %i.awb
  %i.awd = add nsw i32 %i.auk, -1
  %i.awe = zext i32 %i.awd to i64
  %i.awf = add nuw nsw i64 %i.avt, %i.awe
  %i.awg = mul i64 %i.aum, %i.awf
  %i.awh = shl nuw nsw i64 %wide.trip.count237.i758, 3
  %i.awi = getelementptr i8, ptr %i.aul, i64 %i.awg
  %i.awj = getelementptr i8, ptr %i.awi, i64 %i.awb
  %scevgep1468 = getelementptr i8, ptr %i.awj, i64 %i.awh
  %scevgep1469 = getelementptr i8, ptr %i.fk, i64 8
  %i.awk = add nsw i32 %i.auk, -1
  %i.awl = zext i32 %i.awk to i64
  %i.awm = add nuw nsw i64 %i.avt, %i.awl
  %i.awn = mul i64 %i.aum, %i.awm
  %i.awo = shl nuw nsw i64 %wide.trip.count232.i757, 3
  %i.awp = getelementptr i8, ptr %i.aul, i64 %i.awn
  %scevgep1487 = getelementptr i8, ptr %i.awp, i64 %i.awo
  %scevgep1488 = getelementptr i8, ptr %i.fk, i64 8
  %min.iters.check1494 = icmp slt i32 %.neg214, 4
  %bound01489 = icmp ult ptr %i.avv, %scevgep1488
  %bound11490 = icmp ult ptr %i.fk, %scevgep1487
  %found.conflict1491 = and i1 %bound01489, %bound11490
  %stride.check1492 = icmp slt i64 %i.aum, 0
  %i.awq = or i1 %found.conflict1491, %stride.check1492
  %n.vec1496 = and i64 %wide.trip.count232.i757, 2147483644 ; 3 uses
  %cmp.n1503 = icmp eq i64 %n.vec1496, %wide.trip.count232.i757
  %xtraiter1633 = and i64 %wide.trip.count232.i757, 3 ; 2 uses
  %lcmp.mod1634.not.a = icmp eq i64 %xtraiter1633, 0
  %min.iters.check1475 = icmp slt i32 %i.dw, 4
  %bound01470 = icmp ult ptr %scevgep1466, %scevgep1469
  %bound11471 = icmp ult ptr %i.fk, %scevgep1468
  %found.conflict1472 = and i1 %bound01470, %bound11471
  %stride.check1473 = icmp slt i64 %i.aum, 0
  %i.awr = or i1 %found.conflict1472, %stride.check1473
  %n.vec1477 = and i64 %wide.trip.count237.i758, 2147483644 ; 3 uses
  %cmp.n1484 = icmp eq i64 %n.vec1477, %wide.trip.count237.i758
  %xtraiter1635 = and i64 %wide.trip.count237.i758, 3 ; 2 uses
  %lcmp.mod1636.not = icmp eq i64 %xtraiter1635, 0
  %invariant.op = add nsw i64 1, %i.awa
  %invariant.op1838 = add nsw i64 2, %i.awa
  %invariant.op1840 = add nsw i64 3, %i.awa
  br label %.preheader171.us.i759

.preheader174.preheader.i736:                     ; preds = %.lr.ph196.i735
  %invariant.gep278.i739 = getelementptr [4 x i8], ptr %i.aut, i64 %wide.trip.count232.i757 ; 3 uses
  %xtraiter1620 = and i64 %wide.trip.count232.i757, 3 ; 3 uses
  %i.aws = icmp slt i32 %.neg214, 4
  %unroll_iter1624 = and i64 %wide.trip.count232.i757, 2147483644
  %lcmp.mod1622.not = icmp eq i64 %xtraiter1620, 0
  %lcmp.mod1623 = icmp ne i64 %xtraiter1620, 0
  %xtraiter1627 = and i64 %wide.trip.count237.i758, 1
  %i.awt = icmp eq i32 %i.dw, 1
  %unroll_iter1631 = and i64 %wide.trip.count237.i758, 2147483646
  %lcmp.mod1629.not = icmp eq i64 %xtraiter1627, 0
  %lcmp.mod1630 = trunc i32 %.sroa.speculated to i1
  br label %.preheader174.i740

.preheader171.us.i759:                            ; preds = %.preheader171.us.i759.preheader, %.loopexit.us.i764
  %.0135194.us.i760 = phi i32 [ %i.ayq, %.loopexit.us.i764 ], [ 0, %.preheader171.us.i759.preheader ]
  %.0136192.us.i761 = phi ptr [ %i.ayr, %.loopexit.us.i764 ], [ %i.avv, %.preheader171.us.i759.preheader ] ; 14 uses
  %.0145190.us.i762 = phi ptr [ %i.ays, %.loopexit.us.i764 ], [ %i.auh, %.preheader171.us.i759.preheader ] ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.avx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awu, ptr align 1 %.0145190.us.i762, i64 %i.avz, i1 false)
  br i1 %i.ds, label %.lr.ph187.us.i770.preheader, label %.preheader170.us.i763

.lr.ph187.us.i770.preheader:                      ; preds = %.preheader171.us.i759
  %brmerge1857 = select i1 %min.iters.check1494, i1 true, i1 %i.awq
  br i1 %brmerge1857, label %.lr.ph187.us.i770.preheader1520, label %vector.ph1495

vector.ph1495:                                    ; preds = %.lr.ph187.us.i770.preheader
  %i.awv = load i64, ptr %i.fk, align 1, !alias.scope !825
  %broadcast.splatinsert1499 = insertelement <2 x i64> poison, i64 %i.awv, i64 0
  %broadcast.splat1500 = shufflevector <2 x i64> %broadcast.splatinsert1499, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1497

vector.body1497:                                  ; preds = %vector.body1497, %vector.ph1495
  %index1498 = phi i64 [ 0, %vector.ph1495 ], [ %index.next1501, %vector.body1497 ] ; 2 uses
  %i.aww = shl nuw nsw i64 %index1498, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.aww ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 16
  store <2 x i64> %broadcast.splat1500, ptr %i.awx, align 1, !alias.scope !826, !noalias !825
  store <2 x i64> %broadcast.splat1500, ptr %i.awy, align 1, !alias.scope !826, !noalias !825
  %index.next1501 = add nuw i64 %index1498, 4     ; 2 uses
  %i.awz = icmp eq i64 %index.next1501, %n.vec1496
  br i1 %i.awz, label %middle.block1502, label %vector.body1497, !llvm.loop !754

middle.block1502:                                 ; preds = %vector.body1497
  br i1 %cmp.n1503, label %.preheader170.us.i763, label %.lr.ph187.us.i770.preheader1520

.lr.ph187.us.i770.preheader1520:                  ; preds = %.lr.ph187.us.i770.preheader, %middle.block1502
  %indvars.iv229.i771.ph = phi i64 [ %n.vec1496, %middle.block1502 ], [ 0, %.lr.ph187.us.i770.preheader ] ; 3 uses
  br i1 %lcmp.mod1634.not.a, label %.lr.ph187.us.i770.prol.loopexit, label %.lr.ph187.us.i770.prol

.lr.ph187.us.i770.prol:                           ; preds = %.lr.ph187.us.i770.preheader1520, %.lr.ph187.us.i770.prol
  %indvars.iv229.i771.prol = phi i64 [ %indvars.iv.next230.i772.prol, %.lr.ph187.us.i770.prol ], [ %indvars.iv229.i771.ph, %.lr.ph187.us.i770.preheader1520 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph187.us.i770.prol ], [ 0, %.lr.ph187.us.i770.preheader1520 ]
  %i.axa = shl nuw nsw i64 %indvars.iv229.i771.prol, 3
  %i.axb = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.axa
  %i.axc = load i64, ptr %i.fk, align 1
  store i64 %i.axc, ptr %i.axb, align 1
  %indvars.iv.next230.i772.prol = add nuw nsw i64 %indvars.iv229.i771.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1633
  br i1 %prol.iter.cmp.not, label %.lr.ph187.us.i770.prol.loopexit, label %.lr.ph187.us.i770.prol, !llvm.loop !755

.lr.ph187.us.i770.prol.loopexit:                  ; preds = %.lr.ph187.us.i770.prol, %.lr.ph187.us.i770.preheader1520
  %indvars.iv229.i771.unr = phi i64 [ %indvars.iv229.i771.ph, %.lr.ph187.us.i770.preheader1520 ], [ %indvars.iv.next230.i772.prol, %.lr.ph187.us.i770.prol ]
  %i.axd = sub nsw i64 %indvars.iv229.i771.ph, %wide.trip.count232.i757
  %i.axe = icmp ugt i64 %i.axd, -4
  br i1 %i.axe, label %.preheader170.us.i763, label %.lr.ph187.us.i770

.lr.ph187.us.i770:                                ; preds = %.lr.ph187.us.i770.prol.loopexit, %.lr.ph187.us.i770
  %indvars.iv229.i771 = phi i64 [ %indvars.iv.next230.i772.3, %.lr.ph187.us.i770 ], [ %indvars.iv229.i771.unr, %.lr.ph187.us.i770.prol.loopexit ] ; 5 uses
  %i.axf = shl nuw nsw i64 %indvars.iv229.i771, 3
  %i.axg = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.axf
  %i.axh = load i64, ptr %i.fk, align 1
  store i64 %i.axh, ptr %i.axg, align 1
  %indvars.iv.next230.i772 = shl i64 %indvars.iv229.i771, 3
  %i.axi = getelementptr i8, ptr %.0136192.us.i761, i64 %indvars.iv.next230.i772
  %i.axj = getelementptr i8, ptr %i.axi, i64 8
  %i.axk = load i64, ptr %i.fk, align 1
  store i64 %i.axk, ptr %i.axj, align 1
  %indvars.iv.next230.i772.1 = shl i64 %indvars.iv229.i771, 3
  %i.axl = getelementptr i8, ptr %.0136192.us.i761, i64 %indvars.iv.next230.i772.1
  %i.axm = getelementptr i8, ptr %i.axl, i64 16
  %i.axn = load i64, ptr %i.fk, align 1
  store i64 %i.axn, ptr %i.axm, align 1
  %indvars.iv.next230.i772.2 = shl i64 %indvars.iv229.i771, 3
  %i.axo = getelementptr i8, ptr %.0136192.us.i761, i64 %indvars.iv.next230.i772.2
  %i.axp = getelementptr i8, ptr %i.axo, i64 24
  %i.axq = load i64, ptr %i.fk, align 1
  store i64 %i.axq, ptr %i.axp, align 1
  %indvars.iv.next230.i772.3 = add nuw nsw i64 %indvars.iv229.i771, 4 ; 2 uses
  %exitcond233.not.i773.3 = icmp eq i64 %indvars.iv.next230.i772.3, %wide.trip.count232.i757
  br i1 %exitcond233.not.i773.3, label %.preheader170.us.i763, label %.lr.ph187.us.i770, !llvm.loop !756

.lr.ph189.us.i766:                                ; preds = %.lr.ph189.us.i766.prol.loopexit, %.lr.ph189.us.i766
  %indvars.iv234.i767 = phi i64 [ %indvars.iv.next235.i768.3, %.lr.ph189.us.i766 ], [ %indvars.iv234.i767.unr, %.lr.ph189.us.i766.prol.loopexit ] ; 5 uses
  %i.axr = add nsw i64 %indvars.iv234.i767, %i.awa
  %i.axs = shl nsw i64 %i.axr, 3
  %i.axt = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.axs
  %i.axu = load i64, ptr %i.fk, align 1
  store i64 %i.axu, ptr %i.axt, align 1
  %.reass = add nsw i64 %indvars.iv234.i767, %invariant.op
  %i.axv = shl nsw i64 %.reass, 3
  %i.axw = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.axv
  %i.axx = load i64, ptr %i.fk, align 1
  store i64 %i.axx, ptr %i.axw, align 1
  %.reass1839 = add nsw i64 %indvars.iv234.i767, %invariant.op1838
  %i.axy = shl nsw i64 %.reass1839, 3
  %i.axz = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.axy
  %i.aya = load i64, ptr %i.fk, align 1
  store i64 %i.aya, ptr %i.axz, align 1
  %.reass1841 = add nsw i64 %indvars.iv234.i767, %invariant.op1840
  %i.ayb = shl nsw i64 %.reass1841, 3
  %i.ayc = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.ayb
  %i.ayd = load i64, ptr %i.fk, align 1
  store i64 %i.ayd, ptr %i.ayc, align 1
  %indvars.iv.next235.i768.3 = add nuw nsw i64 %indvars.iv234.i767, 4 ; 2 uses
  %exitcond238.not.i769.3 = icmp eq i64 %indvars.iv.next235.i768.3, %wide.trip.count237.i758
  br i1 %exitcond238.not.i769.3, label %.loopexit.us.i764, label %.lr.ph189.us.i766, !llvm.loop !757

.preheader170.us.i763:                            ; preds = %.lr.ph187.us.i770.prol.loopexit, %.lr.ph187.us.i770, %middle.block1502, %.preheader171.us.i759
  br i1 %i.dx, label %.lr.ph189.us.i766.preheader, label %.loopexit.us.i764

.lr.ph189.us.i766.preheader:                      ; preds = %.preheader170.us.i763
  %brmerge1858 = select i1 %min.iters.check1475, i1 true, i1 %i.awr
  br i1 %brmerge1858, label %.lr.ph189.us.i766.preheader1519, label %vector.ph1476

vector.ph1476:                                    ; preds = %.lr.ph189.us.i766.preheader
  %i.aye = load i64, ptr %i.fk, align 1, !alias.scope !827
  %broadcast.splatinsert1480 = insertelement <2 x i64> poison, i64 %i.aye, i64 0
  %broadcast.splat1481 = shufflevector <2 x i64> %broadcast.splatinsert1480, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1476
  %index1479 = phi i64 [ 0, %vector.ph1476 ], [ %index.next1482, %vector.body1478 ] ; 2 uses
  %i.ayf = add nsw i64 %index1479, %i.awa
  %i.ayg = shl nsw i64 %i.ayf, 3
  %i.ayh = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.ayg ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 16
  store <2 x i64> %broadcast.splat1481, ptr %i.ayh, align 1, !alias.scope !828, !noalias !827
  store <2 x i64> %broadcast.splat1481, ptr %i.ayi, align 1, !alias.scope !828, !noalias !827
  %index.next1482 = add nuw i64 %index1479, 4     ; 2 uses
  %i.ayj = icmp eq i64 %index.next1482, %n.vec1477
  br i1 %i.ayj, label %middle.block1483, label %vector.body1478, !llvm.loop !761

middle.block1483:                                 ; preds = %vector.body1478
  br i1 %cmp.n1484, label %.loopexit.us.i764, label %.lr.ph189.us.i766.preheader1519

.lr.ph189.us.i766.preheader1519:                  ; preds = %.lr.ph189.us.i766.preheader, %middle.block1483
  %indvars.iv234.i767.ph = phi i64 [ %n.vec1477, %middle.block1483 ], [ 0, %.lr.ph189.us.i766.preheader ] ; 3 uses
  br i1 %lcmp.mod1636.not, label %.lr.ph189.us.i766.prol.loopexit, label %.lr.ph189.us.i766.prol

.lr.ph189.us.i766.prol:                           ; preds = %.lr.ph189.us.i766.preheader1519, %.lr.ph189.us.i766.prol
  %indvars.iv234.i767.prol = phi i64 [ %indvars.iv.next235.i768.prol, %.lr.ph189.us.i766.prol ], [ %indvars.iv234.i767.ph, %.lr.ph189.us.i766.preheader1519 ] ; 2 uses
  %prol.iter1637 = phi i64 [ %prol.iter1637.next, %.lr.ph189.us.i766.prol ], [ 0, %.lr.ph189.us.i766.preheader1519 ]
  %i.ayk = add nsw i64 %indvars.iv234.i767.prol, %i.awa
  %i.ayl = shl nsw i64 %i.ayk, 3
  %i.aym = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.ayl
  %i.ayn = load i64, ptr %i.fk, align 1
  store i64 %i.ayn, ptr %i.aym, align 1
  %indvars.iv.next235.i768.prol = add nuw nsw i64 %indvars.iv234.i767.prol, 1 ; 2 uses
  %prol.iter1637.next = add i64 %prol.iter1637, 1 ; 2 uses
  %prol.iter1637.cmp.not = icmp eq i64 %prol.iter1637.next, %xtraiter1635
  br i1 %prol.iter1637.cmp.not, label %.lr.ph189.us.i766.prol.loopexit, label %.lr.ph189.us.i766.prol, !llvm.loop !762

.lr.ph189.us.i766.prol.loopexit:                  ; preds = %.lr.ph189.us.i766.prol, %.lr.ph189.us.i766.preheader1519
  %indvars.iv234.i767.unr = phi i64 [ %indvars.iv234.i767.ph, %.lr.ph189.us.i766.preheader1519 ], [ %indvars.iv.next235.i768.prol, %.lr.ph189.us.i766.prol ]
  %i.ayo = sub nsw i64 %indvars.iv234.i767.ph, %wide.trip.count237.i758
  %i.ayp = icmp ugt i64 %i.ayo, -4
  br i1 %i.ayp, label %.loopexit.us.i764, label %.lr.ph189.us.i766

.loopexit.us.i764:                                ; preds = %.lr.ph189.us.i766.prol.loopexit, %.lr.ph189.us.i766, %middle.block1483, %.preheader170.us.i763
  %i.ayq = add nuw nsw i32 %.0135194.us.i760, 1   ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.aum
  %i.ays = getelementptr inbounds nuw i8, ptr %.0145190.us.i762, i64 %i.aui
  %exitcond239.not.i765 = icmp eq i32 %i.ayq, %i.auk
  br i1 %exitcond239.not.i765, label %.preheader.i694, label %.preheader171.us.i759, !llvm.loop !763

.preheader.i694:                                  ; preds = %.loopexit173.i745, %.loopexit.us.i764, %.loopexit175.i692
  br i1 %i.dm, label %.lr.ph198.i723, label %._crit_edge199.i695

.lr.ph198.i723:                                   ; preds = %.preheader.i694
  %i.ayt = shl nsw i32 %i.auo, 3
  %i.ayu = sext i32 %i.ayt to i64                 ; 7 uses
  %wide.trip.count248.i724 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i729.preheader, label %.lr.ph198.split.i725

.lr.ph198.split.us.i729.preheader:                ; preds = %.lr.ph198.i723
  %xtraiter1638 = and i64 %wide.trip.count248.i724, 3 ; 3 uses
  %i.ayv = add nsw i32 %.neg, -1
  %i.ayw = icmp ult i32 %i.ayv, 3
  br i1 %i.ayw, label %.lr.ph198.split.us.i729.epil.preheader, label %.lr.ph198.split.us.i729.preheader.new

.lr.ph198.split.us.i729.preheader.new:            ; preds = %.lr.ph198.split.us.i729.preheader
  %unroll_iter1642 = and i64 %wide.trip.count248.i724, 2147483644
  br label %.lr.ph198.split.us.i729

.lr.ph198.split.us.i729:                          ; preds = %.lr.ph198.split.us.i729, %.lr.ph198.split.us.i729.preheader.new
  %indvars.iv245.i730 = phi i64 [ 0, %.lr.ph198.split.us.i729.preheader.new ], [ %indvars.iv.next246.i731.3, %.lr.ph198.split.us.i729 ] ; 5 uses
  %niter1643 = phi i64 [ 0, %.lr.ph198.split.us.i729.preheader.new ], [ %niter1643.next.3, %.lr.ph198.split.us.i729 ]
  %i.ayx = mul i64 %indvars.iv245.i730, %i.aum
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.aul, i64 %i.ayx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ayy, ptr align 1 %.0138.i693, i64 %i.ayu, i1 false)
  %indvars.iv.next246.i731 = or disjoint i64 %indvars.iv245.i730, 1
  %i.ayz = mul i64 %indvars.iv.next246.i731, %i.aum
  %i.aza = getelementptr inbounds nuw i8, ptr %i.aul, i64 %i.ayz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aza, ptr align 1 %.0138.i693, i64 %i.ayu, i1 false)
  %indvars.iv.next246.i731.1 = or disjoint i64 %indvars.iv245.i730, 2
  %i.azb = mul i64 %indvars.iv.next246.i731.1, %i.aum
  %i.azc = getelementptr inbounds nuw i8, ptr %i.aul, i64 %i.azb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.azc, ptr align 1 %.0138.i693, i64 %i.ayu, i1 false)
  %indvars.iv.next246.i731.2 = or disjoint i64 %indvars.iv245.i730, 3
  %i.azd = mul i64 %indvars.iv.next246.i731.2, %i.aum
  %i.aze = getelementptr inbounds nuw i8, ptr %i.aul, i64 %i.azd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aze, ptr align 1 %.0138.i693, i64 %i.ayu, i1 false)
  %indvars.iv.next246.i731.3 = add nuw nsw i64 %indvars.iv245.i730, 4 ; 2 uses
  %niter1643.next.3 = add i64 %niter1643, 4       ; 2 uses
  %niter1643.ncmp.3 = icmp eq i64 %niter1643.next.3, %unroll_iter1642
  br i1 %niter1643.ncmp.3, label %._crit_edge199.thread.i733.unr-lcssa, label %.lr.ph198.split.us.i729, !llvm.loop !764

.preheader174.i740:                               ; preds = %.loopexit173.i745, %.preheader174.preheader.i736
  %.0135194.i741 = phi i32 [ %i.bbk, %.loopexit173.i745 ], [ 0, %.preheader174.preheader.i736 ]
  %.0136192.i742 = phi ptr [ %i.bbl, %.loopexit173.i745 ], [ %i.avv, %.preheader174.preheader.i736 ] ; 10 uses
  %.0145190.i743 = phi ptr [ %i.bbm, %.loopexit173.i745 ], [ %i.auh, %.preheader174.preheader.i736 ] ; 10 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.avx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.azf, ptr align 1 %.0145190.i743, i64 %i.avz, i1 false)
  br i1 %i.ds, label %.lr.ph183.i752.preheader, label %.preheader172.i744

.lr.ph183.i752.preheader:                         ; preds = %.preheader174.i740
  br i1 %i.aws, label %.lr.ph183.i752.epil.preheader, label %.lr.ph183.i752

.preheader172.i744.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i752
  br i1 %lcmp.mod1622.not, label %.preheader172.i744, label %.lr.ph183.i752.epil.preheader

.lr.ph183.i752.epil.preheader:                    ; preds = %.preheader172.i744.loopexit.unr-lcssa, %.lr.ph183.i752.preheader
  %indvars.iv218.i753.epil.init = phi i64 [ 0, %.lr.ph183.i752.preheader ], [ %indvars.iv.next219.i754.3, %.preheader172.i744.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1623)
  br label %.lr.ph183.i752.epil

.lr.ph183.i752.epil:                              ; preds = %.lr.ph183.i752.epil, %.lr.ph183.i752.epil.preheader
  %indvars.iv218.i753.epil = phi i64 [ %indvars.iv.next219.i754.epil, %.lr.ph183.i752.epil ], [ %indvars.iv218.i753.epil.init, %.lr.ph183.i752.epil.preheader ] ; 3 uses
  %epil.iter1621 = phi i64 [ %epil.iter1621.next, %.lr.ph183.i752.epil ], [ 0, %.lr.ph183.i752.epil.preheader ]
  %i.azg = shl nuw nsw i64 %indvars.iv218.i753.epil, 3
  %i.azh = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.azg
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %indvars.iv218.i753.epil
  %i.azj = load i32, ptr %i.azi, align 4, !tbaa !12
  %i.azk = sext i32 %i.azj to i64
  %i.azl = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.azk
  %i.azm = load i64, ptr %i.azl, align 1
  store i64 %i.azm, ptr %i.azh, align 1
  %indvars.iv.next219.i754.epil = add nuw nsw i64 %indvars.iv218.i753.epil, 1
  %epil.iter1621.next = add i64 %epil.iter1621, 1 ; 2 uses
  %epil.iter1621.cmp.not = icmp eq i64 %epil.iter1621.next, %xtraiter1620
  br i1 %epil.iter1621.cmp.not, label %.preheader172.i744, label %.lr.ph183.i752.epil, !llvm.loop !765

.preheader172.i744:                               ; preds = %.preheader172.i744.loopexit.unr-lcssa, %.lr.ph183.i752.epil, %.preheader174.i740
  br i1 %i.dx, label %.lr.ph185.i747.preheader, label %.loopexit173.i745

.lr.ph185.i747.preheader:                         ; preds = %.preheader172.i744
  br i1 %i.awt, label %.lr.ph185.i747.epil.preheader, label %.lr.ph185.i747

.lr.ph183.i752:                                   ; preds = %.lr.ph183.i752.preheader, %.lr.ph183.i752
  %indvars.iv218.i753 = phi i64 [ %indvars.iv.next219.i754.3, %.lr.ph183.i752 ], [ 0, %.lr.ph183.i752.preheader ] ; 6 uses
  %niter1625 = phi i64 [ %niter1625.next.3, %.lr.ph183.i752 ], [ 0, %.lr.ph183.i752.preheader ]
  %i.azn = shl nuw nsw i64 %indvars.iv218.i753, 3
  %i.azo = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.azn
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %indvars.iv218.i753
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !12
  %i.azr = sext i32 %i.azq to i64
  %i.azs = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.azr
  %i.azt = load i64, ptr %i.azs, align 1
  store i64 %i.azt, ptr %i.azo, align 1
  %indvars.iv.next219.i754 = or disjoint i64 %indvars.iv218.i753, 1 ; 2 uses
  %i.azu = shl nuw nsw i64 %indvars.iv.next219.i754, 3
  %i.azv = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.azu
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %indvars.iv.next219.i754
  %i.azx = load i32, ptr %i.azw, align 4, !tbaa !12
  %i.azy = sext i32 %i.azx to i64
  %i.azz = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.azy
  %i.baa = load i64, ptr %i.azz, align 1
  store i64 %i.baa, ptr %i.azv, align 1
  %indvars.iv.next219.i754.1 = or disjoint i64 %indvars.iv218.i753, 2 ; 2 uses
  %i.bab = shl nuw nsw i64 %indvars.iv.next219.i754.1, 3
  %i.bac = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.bab
  %i.bad = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %indvars.iv.next219.i754.1
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !12
  %i.baf = sext i32 %i.bae to i64
  %i.bag = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.baf
  %i.bah = load i64, ptr %i.bag, align 1
  store i64 %i.bah, ptr %i.bac, align 1
  %indvars.iv.next219.i754.2 = or disjoint i64 %indvars.iv218.i753, 3 ; 2 uses
  %i.bai = shl nuw nsw i64 %indvars.iv.next219.i754.2, 3
  %i.baj = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.bai
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %indvars.iv.next219.i754.2
  %i.bal = load i32, ptr %i.bak, align 4, !tbaa !12
  %i.bam = sext i32 %i.bal to i64
  %i.ban = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bam
  %i.bao = load i64, ptr %i.ban, align 1
  store i64 %i.bao, ptr %i.baj, align 1
  %indvars.iv.next219.i754.3 = add nuw nsw i64 %indvars.iv218.i753, 4 ; 2 uses
  %niter1625.next.3 = add i64 %niter1625, 4       ; 2 uses
  %niter1625.ncmp.3 = icmp eq i64 %niter1625.next.3, %unroll_iter1624
  br i1 %niter1625.ncmp.3, label %.preheader172.i744.loopexit.unr-lcssa, label %.lr.ph183.i752, !llvm.loop !766

.lr.ph185.i747:                                   ; preds = %.lr.ph185.i747.preheader, %.lr.ph185.i747
  %indvars.iv223.i748 = phi i64 [ %indvars.iv.next224.i750.1, %.lr.ph185.i747 ], [ 0, %.lr.ph185.i747.preheader ] ; 4 uses
  %niter1632 = phi i64 [ %niter1632.next.1, %.lr.ph185.i747 ], [ 0, %.lr.ph185.i747.preheader ]
  %i.bap = add nsw i64 %indvars.iv223.i748, %i.awa
  %i.baq = shl nsw i64 %i.bap, 3
  %i.bar = getelementptr inbounds i8, ptr %.0136192.i742, i64 %i.baq
  %gep279.i749 = getelementptr [4 x i8], ptr %invariant.gep278.i739, i64 %indvars.iv223.i748
  %i.bas = load i32, ptr %gep279.i749, align 4, !tbaa !12
  %i.bat = sext i32 %i.bas to i64
  %i.bau = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bat
  %i.bav = load i64, ptr %i.bau, align 1
  store i64 %i.bav, ptr %i.bar, align 1
  %indvars.iv.next224.i750 = or disjoint i64 %indvars.iv223.i748, 1 ; 2 uses
  %i.baw = add nsw i64 %indvars.iv.next224.i750, %i.awa
  %i.bax = shl nsw i64 %i.baw, 3
  %i.bay = getelementptr inbounds i8, ptr %.0136192.i742, i64 %i.bax
  %gep279.i749.1 = getelementptr [4 x i8], ptr %invariant.gep278.i739, i64 %indvars.iv.next224.i750
  %i.baz = load i32, ptr %gep279.i749.1, align 4, !tbaa !12
  %i.bba = sext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bba
  %i.bbc = load i64, ptr %i.bbb, align 1
  store i64 %i.bbc, ptr %i.bay, align 1
  %indvars.iv.next224.i750.1 = add nuw nsw i64 %indvars.iv223.i748, 2 ; 2 uses
  %niter1632.next.1 = add i64 %niter1632, 2       ; 2 uses
  %niter1632.ncmp.1 = icmp eq i64 %niter1632.next.1, %unroll_iter1631
  br i1 %niter1632.ncmp.1, label %.loopexit173.i745.loopexit.unr-lcssa, label %.lr.ph185.i747, !llvm.loop !767

.loopexit173.i745.loopexit.unr-lcssa:             ; preds = %.lr.ph185.i747
  br i1 %lcmp.mod1629.not, label %.loopexit173.i745, label %.lr.ph185.i747.epil.preheader

.lr.ph185.i747.epil.preheader:                    ; preds = %.loopexit173.i745.loopexit.unr-lcssa, %.lr.ph185.i747.preheader
  %indvars.iv223.i748.epil.init = phi i64 [ 0, %.lr.ph185.i747.preheader ], [ %indvars.iv.next224.i750.1, %.loopexit173.i745.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1630)
  %i.bbd = add nsw i64 %indvars.iv223.i748.epil.init, %i.awa
  %i.bbe = shl nsw i64 %i.bbd, 3
  %i.bbf = getelementptr inbounds i8, ptr %.0136192.i742, i64 %i.bbe
  %gep279.i749.epil = getelementptr [4 x i8], ptr %invariant.gep278.i739, i64 %indvars.iv223.i748.epil.init
  %i.bbg = load i32, ptr %gep279.i749.epil, align 4, !tbaa !12
  %i.bbh = sext i32 %i.bbg to i64
  %i.bbi = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bbh
  %i.bbj = load i64, ptr %i.bbi, align 1
  store i64 %i.bbj, ptr %i.bbf, align 1
  br label %.loopexit173.i745

.loopexit173.i745:                                ; preds = %.lr.ph185.i747.epil.preheader, %.loopexit173.i745.loopexit.unr-lcssa, %.preheader172.i744
  %i.bbk = add nuw nsw i32 %.0135194.i741, 1      ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.aum
  %i.bbm = getelementptr inbounds nuw i8, ptr %.0145190.i743, i64 %i.aui
  %exitcond228.not.i746 = icmp eq i32 %i.bbk, %i.auk
  br i1 %exitcond228.not.i746, label %.preheader.i694, label %.preheader174.i740, !llvm.loop !763

._crit_edge199.i695:                              ; preds = %bb.dt, %.preheader.i694
  %i.bbn = add nsw i32 %i.auk, %.sroa.speculated1057
  %i.bbo = sext i32 %i.bbn to i64
  %i.bbp = mul i64 %i.aum, %i.bbo                 ; 2 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.aul, i64 %i.bbp
  br i1 %i.dr, label %.lr.ph202.i702, label %._crit_edge203.i696

._crit_edge199.thread.i733.unr-lcssa:             ; preds = %.lr.ph198.split.us.i729
  %lcmp.mod1640.not = icmp eq i64 %xtraiter1638, 0
  br i1 %lcmp.mod1640.not, label %._crit_edge199.thread.i733, label %.lr.ph198.split.us.i729.epil.preheader

.lr.ph198.split.us.i729.epil.preheader:           ; preds = %._crit_edge199.thread.i733.unr-lcssa, %.lr.ph198.split.us.i729.preheader
  %indvars.iv245.i730.epil.init = phi i64 [ 0, %.lr.ph198.split.us.i729.preheader ], [ %indvars.iv.next246.i731.3, %._crit_edge199.thread.i733.unr-lcssa ]
end_hunk_5
begin_hunk_6_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  %or.cond.i168.i713 = or i1 %.not.i.i167.i712, %i.bdo
  br i1 %or.cond.i168.i713, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i714, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @_ZdaPv(ptr noundef nonnull %i.bdn) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i714

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i714:     ; preds = %bb.ec, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi8EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i699, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.gd

bb.ed:                                            ; preds = %bb.n
  %i.bdp = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.bdq = load i64, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.bdr = load i32, ptr %i.av, align 4, !tbaa !122 ; 5 uses
  %i.bds = load i32, ptr %i.aw, align 8, !tbaa !130 ; 8 uses
  %i.bdt = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 11 uses
  %i.bdu = load i64, ptr %i.ay, align 8, !tbaa !97 ; 19 uses
  %i.bdv = add i32 %i.bdr, %.sroa.speculated1047  ; 2 uses
  %i.bdw = add i32 %i.bdv, %.sroa.speculated      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bdx = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1047 ; 2 uses
  %i.bdy = zext nneg i32 %i.bdx to i64            ; 2 uses
  store ptr %i.be, ptr %4, align 8, !tbaa !812
  %.not.i.i.i802 = icmp samesign ugt i32 %i.bdx, 264
  store i64 %i.bdy, ptr %i.bf, align 8, !tbaa !813
  br i1 %.not.i.i.i802, label %bb.ee, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i803

bb.ee:                                            ; preds = %bb.ed
  %i.bdz = shl nuw nsw i64 %i.bdy, 2
  %i.bea = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bdz) #29
          to label %.noexc912 unwind label %bb.al ; 2 uses

.noexc912:                                        ; preds = %bb.ee
  store ptr %i.bea, ptr %4, align 8, !tbaa !812
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i803

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i803:        ; preds = %.noexc912, %bb.ed
  %i.beb = phi ptr [ %i.be, %bb.ed ], [ %i.bea, %.noexc912 ] ; 6 uses
  br i1 %i.ds, label %.lr.ph.preheader.i906, label %.preheader176.i804

.lr.ph.preheader.i906:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i803
  %wide.trip.count.i907 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i908

.preheader176.i804:                               ; preds = %bb.ef, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i803
  br i1 %i.dx, label %.lr.ph179.preheader.i898, label %._crit_edge.i805

.lr.ph179.preheader.i898:                         ; preds = %.preheader176.i804
  %i.bec = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i899 = zext nneg i32 %i.dw to i64
  %invariant.gep.i900 = getelementptr [4 x i8], ptr %i.beb, i64 %i.bec
  br label %.lr.ph179.i901

.lr.ph.i908:                                      ; preds = %bb.ef, %.lr.ph.preheader.i906
  %indvars.iv.i909 = phi i64 [ 0, %.lr.ph.preheader.i906 ], [ %indvars.iv.next.i910, %bb.ef ] ; 3 uses
  %i.bed = trunc i64 %indvars.iv.i909 to i32
  %i.bee = sub i32 %i.bed, %.sroa.speculated1047
  %i.bef = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bee, i32 noundef %i.bdr, i32 noundef %i.p)
          to label %bb.ef unwind label %bb.eg

bb.ef:                                            ; preds = %.lr.ph.i908
  %i.beg = mul nsw i32 %i.bef, 12
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.beb, i64 %indvars.iv.i909
  store i32 %i.beg, ptr %i.beh, align 4, !tbaa !12
  %indvars.iv.next.i910 = add nuw nsw i64 %indvars.iv.i909, 1 ; 2 uses
  %exitcond.not.i911 = icmp eq i64 %indvars.iv.next.i910, %wide.trip.count.i907
  br i1 %exitcond.not.i911, label %.preheader176.i804, label %.lr.ph.i908, !llvm.loop !771

bb.eg:                                            ; preds = %.lr.ph.i908
  %i.bei = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

._crit_edge.i805:                                 ; preds = %bb.eh, %.preheader176.i804
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.bg, ptr %5, align 8, !tbaa !815
  store i64 1032, ptr %i.bh, align 8, !tbaa !816
  %or.cond.i888 = or i1 %i.dm, %i.dr
  %or.cond1081 = select i1 %i.bd, i1 %or.cond.i888, i1 false
  br i1 %or.cond1081, label %bb.ej, label %.loopexit175.i806

.lr.ph179.i901:                                   ; preds = %bb.eh, %.lr.ph179.preheader.i898
  %indvars.iv208.i902 = phi i64 [ 0, %.lr.ph179.preheader.i898 ], [ %indvars.iv.next209.i904, %bb.eh ] ; 3 uses
  %i.bej = trunc i64 %indvars.iv208.i902 to i32
  %i.bek = add i32 %i.bdr, %i.bej
  %i.bel = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bek, i32 noundef %i.bdr, i32 noundef %i.p)
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %.lr.ph179.i901
  %i.bem = mul nsw i32 %i.bel, 12
  %gep.i903 = getelementptr [4 x i8], ptr %invariant.gep.i900, i64 %indvars.iv208.i902
  store i32 %i.bem, ptr %gep.i903, align 4, !tbaa !12
  %indvars.iv.next209.i904 = add nuw nsw i64 %indvars.iv208.i902, 1 ; 2 uses
  %exitcond212.not.i905 = icmp eq i64 %indvars.iv.next209.i904, %wide.trip.count211.i899
  br i1 %exitcond212.not.i905, label %._crit_edge.i805, label %.lr.ph179.i901, !llvm.loop !772

bb.ei:                                            ; preds = %.lr.ph179.i901
  %i.ben = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ej:                                            ; preds = %._crit_edge.i805
  %i.beo = mul nsw i32 %i.bdw, 12                 ; 2 uses
  %i.bep = sext i32 %i.beo to i64                 ; 2 uses
  %.not.i.i889 = icmp ugt i32 %i.beo, 1032
  store i64 %i.bep, ptr %i.bh, align 8, !tbaa !816
  br i1 %.not.i.i889, label %bb.ek, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i890

bb.ek:                                            ; preds = %bb.ej
  %i.beq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bep) #29
          to label %.noexc.i897 unwind label %bb.el ; 2 uses

.noexc.i897:                                      ; preds = %bb.ek
  store ptr %i.beq, ptr %5, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i890

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i890: ; preds = %.noexc.i897, %bb.ej
  %i.ber = phi ptr [ %i.beq, %.noexc.i897 ], [ %i.bg, %bb.ej ] ; 8 uses
  %i.bes = icmp sgt i32 %i.bdw, 0
  br i1 %i.bes, label %.lr.ph181.preheader.i891, label %.loopexit175.i806

.lr.ph181.preheader.i891:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i890
  %wide.trip.count216.i892 = zext nneg i32 %i.bdw to i64 ; 2 uses
  %xtraiter1576 = and i64 %wide.trip.count216.i892, 3 ; 3 uses
  %i.bet = icmp ult i32 %i.bdw, 4
  br i1 %i.bet, label %.lr.ph181.i893.epil.preheader, label %.lr.ph181.preheader.i891.new

.lr.ph181.preheader.i891.new:                     ; preds = %.lr.ph181.preheader.i891
  %unroll_iter1580 = and i64 %wide.trip.count216.i892, 2147483644
  br label %.lr.ph181.i893

bb.el:                                            ; preds = %bb.ek
  %i.beu = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.lr.ph181.i893:                                   ; preds = %.lr.ph181.i893, %.lr.ph181.preheader.i891.new
  %indvars.iv213.i894 = phi i64 [ 0, %.lr.ph181.preheader.i891.new ], [ %indvars.iv.next214.i895.3, %.lr.ph181.i893 ] ; 5 uses
  %niter1581 = phi i64 [ 0, %.lr.ph181.preheader.i891.new ], [ %niter1581.next.3, %.lr.ph181.i893 ]
  %i.bev = mul nuw nsw i64 %indvars.iv213.i894, 12
  %i.bew = getelementptr inbounds nuw i8, ptr %i.ber, i64 %i.bev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bew, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %i.bex = mul nuw i64 %indvars.iv213.i894, 12
  %i.bey = getelementptr inbounds nuw i8, ptr %i.ber, i64 %i.bex
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bez, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %i.bfa = mul nuw i64 %indvars.iv213.i894, 12
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.ber, i64 %i.bfa
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bfc, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %i.bfd = mul nuw i64 %indvars.iv213.i894, 12
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.ber, i64 %i.bfd
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bff, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %indvars.iv.next214.i895.3 = add nuw nsw i64 %indvars.iv213.i894, 4 ; 2 uses
  %niter1581.next.3 = add i64 %niter1581, 4       ; 2 uses
  %niter1581.ncmp.3 = icmp eq i64 %niter1581.next.3, %unroll_iter1580
  br i1 %niter1581.ncmp.3, label %.loopexit175.i806.loopexit.unr-lcssa, label %.lr.ph181.i893, !llvm.loop !773

.loopexit175.i806.loopexit.unr-lcssa:             ; preds = %.lr.ph181.i893
  %lcmp.mod1578.not = icmp eq i64 %xtraiter1576, 0
  br i1 %lcmp.mod1578.not, label %.loopexit175.i806, label %.lr.ph181.i893.epil.preheader

.lr.ph181.i893.epil.preheader:                    ; preds = %.loopexit175.i806.loopexit.unr-lcssa, %.lr.ph181.preheader.i891
  %indvars.iv213.i894.epil.init = phi i64 [ 0, %.lr.ph181.preheader.i891 ], [ %indvars.iv.next214.i895.3, %.loopexit175.i806.loopexit.unr-lcssa ]
  %lcmp.mod1579 = icmp ne i64 %xtraiter1576, 0
  call void @llvm.assume(i1 %lcmp.mod1579)
  br label %.lr.ph181.i893.epil

.lr.ph181.i893.epil:                              ; preds = %.lr.ph181.i893.epil, %.lr.ph181.i893.epil.preheader
  %indvars.iv213.i894.epil = phi i64 [ %indvars.iv213.i894.epil.init, %.lr.ph181.i893.epil.preheader ], [ %indvars.iv.next214.i895.epil, %.lr.ph181.i893.epil ] ; 2 uses
  %epil.iter1577 = phi i64 [ 0, %.lr.ph181.i893.epil.preheader ], [ %epil.iter1577.next, %.lr.ph181.i893.epil ]
  %i.bfg = mul nuw nsw i64 %indvars.iv213.i894.epil, 12
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.ber, i64 %i.bfg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bfh, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %indvars.iv.next214.i895.epil = add nuw nsw i64 %indvars.iv213.i894.epil, 1
  %epil.iter1577.next = add i64 %epil.iter1577, 1 ; 2 uses
  %epil.iter1577.cmp.not = icmp eq i64 %epil.iter1577.next, %xtraiter1576
  br i1 %epil.iter1577.cmp.not, label %.loopexit175.i806, label %.lr.ph181.i893.epil, !llvm.loop !774

.loopexit175.i806:                                ; preds = %.loopexit175.i806.loopexit.unr-lcssa, %.lr.ph181.i893.epil, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i890, %._crit_edge.i805
  %.0138.i807 = phi ptr [ null, %._crit_edge.i805 ], [ %i.ber, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i890 ], [ %i.ber, %.lr.ph181.i893.epil ], [ %i.ber, %.loopexit175.i806.loopexit.unr-lcssa ] ; 10 uses
  %i.bfi = icmp sgt i32 %i.bds, 0
  br i1 %i.bfi, label %.lr.ph196.i849, label %.preheader.i808

.lr.ph196.i849:                                   ; preds = %.loopexit175.i806
  %i.bfj = zext nneg i32 %.sroa.speculated1057 to i64
  %i.bfk = mul i64 %i.bdu, %i.bfj
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bdt, i64 %i.bfk ; 2 uses
  %i.bfm = mul nuw nsw i32 %.sroa.speculated1047, 12
  %i.bfn = zext nneg i32 %i.bfm to i64            ; 2 uses
  %i.bfo = mul nsw i32 %i.bdr, 12
  %i.bfp = sext i32 %i.bfo to i64                 ; 2 uses
  %i.bfq = sext i32 %i.bdv to i64                 ; 6 uses
  %wide.trip.count232.i871 = zext nneg i32 %.sroa.speculated1047 to i64 ; 5 uses
  %wide.trip.count237.i872 = zext nneg i32 %.sroa.speculated to i64 ; 4 uses
  br i1 %i.bd, label %.preheader171.us.i873.preheader, label %.preheader174.preheader.i850

.preheader171.us.i873.preheader:                  ; preds = %.lr.ph196.i849
  %xtraiter1595 = and i64 %wide.trip.count232.i871, 3 ; 3 uses
  %i.bfr = icmp slt i32 %.neg214, 4
  %unroll_iter1599 = and i64 %wide.trip.count232.i871, 2147483644
  %lcmp.mod1597.not = icmp eq i64 %xtraiter1595, 0
  %lcmp.mod1598 = icmp ne i64 %xtraiter1595, 0
  %xtraiter1602 = and i64 %wide.trip.count237.i872, 1
  %i.bfs = icmp eq i32 %i.dw, 1
  %unroll_iter1606 = and i64 %wide.trip.count237.i872, 2147483646
  %lcmp.mod1604.not = icmp eq i64 %xtraiter1602, 0
  %lcmp.mod1605 = trunc i32 %.sroa.speculated to i1
  br label %.preheader171.us.i873

.preheader174.preheader.i850:                     ; preds = %.lr.ph196.i849
  %invariant.gep278.i853 = getelementptr [4 x i8], ptr %i.beb, i64 %wide.trip.count232.i871 ; 3 uses
  %xtraiter1582 = and i64 %wide.trip.count232.i871, 1
  %i.bft = icmp eq i32 %.neg214, 1
  %unroll_iter1586 = and i64 %wide.trip.count232.i871, 2147483646
  %lcmp.mod1584.not = icmp eq i64 %xtraiter1582, 0
  %lcmp.mod1585 = trunc i32 %.sroa.speculated1047 to i1
  %xtraiter1589 = and i64 %wide.trip.count237.i872, 1
  %i.bfu = icmp eq i32 %i.dw, 1
  %unroll_iter1593 = and i64 %wide.trip.count237.i872, 2147483646
  %lcmp.mod1591.not = icmp eq i64 %xtraiter1589, 0
  %lcmp.mod1592 = trunc i32 %.sroa.speculated to i1
  br label %.preheader174.i854

.preheader171.us.i873:                            ; preds = %.preheader171.us.i873.preheader, %.loopexit.us.i878
  %.0135194.us.i874 = phi i32 [ %i.bgs, %.loopexit.us.i878 ], [ 0, %.preheader171.us.i873.preheader ]
  %.0136192.us.i875 = phi ptr [ %i.bgt, %.loopexit.us.i878 ], [ %i.bfl, %.preheader171.us.i873.preheader ] ; 10 uses
  %.0145190.us.i876 = phi ptr [ %i.bgu, %.loopexit.us.i878 ], [ %i.bdp, %.preheader171.us.i873.preheader ] ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bfn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bfv, ptr align 1 %.0145190.us.i876, i64 %i.bfp, i1 false)
  br i1 %i.ds, label %.lr.ph187.us.i884.preheader, label %.preheader170.us.i877

.lr.ph187.us.i884.preheader:                      ; preds = %.preheader171.us.i873
  br i1 %i.bfr, label %.lr.ph187.us.i884.epil.preheader, label %.lr.ph187.us.i884

.lr.ph187.us.i884:                                ; preds = %.lr.ph187.us.i884.preheader, %.lr.ph187.us.i884
  %indvars.iv229.i885 = phi i64 [ %indvars.iv.next230.i886.3, %.lr.ph187.us.i884 ], [ 0, %.lr.ph187.us.i884.preheader ] ; 5 uses
  %niter1600 = phi i64 [ %niter1600.next.3, %.lr.ph187.us.i884 ], [ 0, %.lr.ph187.us.i884.preheader ]
  %i.bfw = mul nuw nsw i64 %indvars.iv229.i885, 12
  %i.bfx = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bfw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bfx, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %i.bfy = mul nuw i64 %indvars.iv229.i885, 12
  %i.bfz = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bfy
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bga, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %i.bgb = mul nuw i64 %indvars.iv229.i885, 12
  %i.bgc = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bgb
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgc, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bgd, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %i.bge = mul nuw i64 %indvars.iv229.i885, 12
  %i.bgf = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bge
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bgg, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %indvars.iv.next230.i886.3 = add nuw nsw i64 %indvars.iv229.i885, 4 ; 2 uses
  %niter1600.next.3 = add i64 %niter1600, 4       ; 2 uses
  %niter1600.ncmp.3 = icmp eq i64 %niter1600.next.3, %unroll_iter1599
  br i1 %niter1600.ncmp.3, label %.preheader170.us.i877.loopexit.unr-lcssa, label %.lr.ph187.us.i884, !llvm.loop !775

.lr.ph189.us.i880:                                ; preds = %.lr.ph189.us.i880.preheader, %.lr.ph189.us.i880
  %indvars.iv234.i881 = phi i64 [ %indvars.iv.next235.i882.1, %.lr.ph189.us.i880 ], [ 0, %.lr.ph189.us.i880.preheader ] ; 3 uses
  %niter1607 = phi i64 [ %niter1607.next.1, %.lr.ph189.us.i880 ], [ 0, %.lr.ph189.us.i880.preheader ]
  %i.bgh = add nsw i64 %indvars.iv234.i881, %i.bfq
  %i.bgi = mul nsw i64 %i.bgh, 12
  %i.bgj = getelementptr inbounds i8, ptr %.0136192.us.i875, i64 %i.bgi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bgj, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %indvars.iv.next235.i882 = or disjoint i64 %indvars.iv234.i881, 1
  %i.bgk = add nsw i64 %indvars.iv.next235.i882, %i.bfq
  %i.bgl = mul nsw i64 %i.bgk, 12
  %i.bgm = getelementptr inbounds i8, ptr %.0136192.us.i875, i64 %i.bgl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bgm, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %indvars.iv.next235.i882.1 = add nuw nsw i64 %indvars.iv234.i881, 2 ; 2 uses
  %niter1607.next.1 = add i64 %niter1607, 2       ; 2 uses
  %niter1607.ncmp.1 = icmp eq i64 %niter1607.next.1, %unroll_iter1606
  br i1 %niter1607.ncmp.1, label %.loopexit.us.i878.loopexit.unr-lcssa, label %.lr.ph189.us.i880, !llvm.loop !776

.preheader170.us.i877.loopexit.unr-lcssa:         ; preds = %.lr.ph187.us.i884
  br i1 %lcmp.mod1597.not, label %.preheader170.us.i877, label %.lr.ph187.us.i884.epil.preheader

.lr.ph187.us.i884.epil.preheader:                 ; preds = %.preheader170.us.i877.loopexit.unr-lcssa, %.lr.ph187.us.i884.preheader
  %indvars.iv229.i885.epil.init = phi i64 [ 0, %.lr.ph187.us.i884.preheader ], [ %indvars.iv.next230.i886.3, %.preheader170.us.i877.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1598)
  br label %.lr.ph187.us.i884.epil

.lr.ph187.us.i884.epil:                           ; preds = %.lr.ph187.us.i884.epil, %.lr.ph187.us.i884.epil.preheader
  %indvars.iv229.i885.epil = phi i64 [ %indvars.iv.next230.i886.epil, %.lr.ph187.us.i884.epil ], [ %indvars.iv229.i885.epil.init, %.lr.ph187.us.i884.epil.preheader ] ; 2 uses
  %epil.iter1596 = phi i64 [ %epil.iter1596.next, %.lr.ph187.us.i884.epil ], [ 0, %.lr.ph187.us.i884.epil.preheader ]
  %i.bgn = mul nuw nsw i64 %indvars.iv229.i885.epil, 12
  %i.bgo = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bgn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bgo, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  %indvars.iv.next230.i886.epil = add nuw nsw i64 %indvars.iv229.i885.epil, 1
  %epil.iter1596.next = add i64 %epil.iter1596, 1 ; 2 uses
  %epil.iter1596.cmp.not = icmp eq i64 %epil.iter1596.next, %xtraiter1595
  br i1 %epil.iter1596.cmp.not, label %.preheader170.us.i877, label %.lr.ph187.us.i884.epil, !llvm.loop !777

.preheader170.us.i877:                            ; preds = %.preheader170.us.i877.loopexit.unr-lcssa, %.lr.ph187.us.i884.epil, %.preheader171.us.i873
  br i1 %i.dx, label %.lr.ph189.us.i880.preheader, label %.loopexit.us.i878

.lr.ph189.us.i880.preheader:                      ; preds = %.preheader170.us.i877
  br i1 %i.bfs, label %.lr.ph189.us.i880.epil.preheader, label %.lr.ph189.us.i880

.loopexit.us.i878.loopexit.unr-lcssa:             ; preds = %.lr.ph189.us.i880
  br i1 %lcmp.mod1604.not, label %.loopexit.us.i878, label %.lr.ph189.us.i880.epil.preheader

.lr.ph189.us.i880.epil.preheader:                 ; preds = %.loopexit.us.i878.loopexit.unr-lcssa, %.lr.ph189.us.i880.preheader
  %indvars.iv234.i881.epil.init = phi i64 [ 0, %.lr.ph189.us.i880.preheader ], [ %indvars.iv.next235.i882.1, %.loopexit.us.i878.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1605)
  %i.bgp = add nsw i64 %indvars.iv234.i881.epil.init, %i.bfq
  %i.bgq = mul nsw i64 %i.bgp, 12
  %i.bgr = getelementptr inbounds i8, ptr %.0136192.us.i875, i64 %i.bgq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bgr, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.fk, i64 12, i1 false)
  br label %.loopexit.us.i878

.loopexit.us.i878:                                ; preds = %.lr.ph189.us.i880.epil.preheader, %.loopexit.us.i878.loopexit.unr-lcssa, %.preheader170.us.i877
  %i.bgs = add nuw nsw i32 %.0135194.us.i874, 1   ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bdu
  %i.bgu = getelementptr inbounds nuw i8, ptr %.0145190.us.i876, i64 %i.bdq
  %exitcond239.not.i879 = icmp eq i32 %i.bgs, %i.bds
  br i1 %exitcond239.not.i879, label %.preheader.i808, label %.preheader171.us.i873, !llvm.loop !778

.preheader.i808:                                  ; preds = %.loopexit173.i859, %.loopexit.us.i878, %.loopexit175.i806
  br i1 %i.dm, label %.lr.ph198.i837, label %._crit_edge199.i809

.lr.ph198.i837:                                   ; preds = %.preheader.i808
  %i.bgv = mul nsw i32 %i.bdw, 12
  %i.bgw = sext i32 %i.bgv to i64                 ; 7 uses
  %wide.trip.count248.i838 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i843.preheader, label %.lr.ph198.split.i839

.lr.ph198.split.us.i843.preheader:                ; preds = %.lr.ph198.i837
  %xtraiter1608 = and i64 %wide.trip.count248.i838, 3 ; 3 uses
  %i.bgx = add nsw i32 %.neg, -1
  %i.bgy = icmp ult i32 %i.bgx, 3
  br i1 %i.bgy, label %.lr.ph198.split.us.i843.epil.preheader, label %.lr.ph198.split.us.i843.preheader.new

.lr.ph198.split.us.i843.preheader.new:            ; preds = %.lr.ph198.split.us.i843.preheader
  %unroll_iter1612 = and i64 %wide.trip.count248.i838, 2147483644
  br label %.lr.ph198.split.us.i843

.lr.ph198.split.us.i843:                          ; preds = %.lr.ph198.split.us.i843, %.lr.ph198.split.us.i843.preheader.new
  %indvars.iv245.i844 = phi i64 [ 0, %.lr.ph198.split.us.i843.preheader.new ], [ %indvars.iv.next246.i845.3, %.lr.ph198.split.us.i843 ] ; 5 uses
  %niter1613 = phi i64 [ 0, %.lr.ph198.split.us.i843.preheader.new ], [ %niter1613.next.3, %.lr.ph198.split.us.i843 ]
  %i.bgz = mul i64 %indvars.iv245.i844, %i.bdu
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bdt, i64 %i.bgz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bha, ptr align 1 %.0138.i807, i64 %i.bgw, i1 false)
  %indvars.iv.next246.i845 = or disjoint i64 %indvars.iv245.i844, 1
  %i.bhb = mul i64 %indvars.iv.next246.i845, %i.bdu
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bdt, i64 %i.bhb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bhc, ptr align 1 %.0138.i807, i64 %i.bgw, i1 false)
  %indvars.iv.next246.i845.1 = or disjoint i64 %indvars.iv245.i844, 2
  %i.bhd = mul i64 %indvars.iv.next246.i845.1, %i.bdu
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bdt, i64 %i.bhd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bhe, ptr align 1 %.0138.i807, i64 %i.bgw, i1 false)
  %indvars.iv.next246.i845.2 = or disjoint i64 %indvars.iv245.i844, 3
  %i.bhf = mul i64 %indvars.iv.next246.i845.2, %i.bdu
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bdt, i64 %i.bhf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bhg, ptr align 1 %.0138.i807, i64 %i.bgw, i1 false)
  %indvars.iv.next246.i845.3 = add nuw nsw i64 %indvars.iv245.i844, 4 ; 2 uses
  %niter1613.next.3 = add i64 %niter1613, 4       ; 2 uses
  %niter1613.ncmp.3 = icmp eq i64 %niter1613.next.3, %unroll_iter1612
  br i1 %niter1613.ncmp.3, label %._crit_edge199.thread.i847.unr-lcssa, label %.lr.ph198.split.us.i843, !llvm.loop !779

.preheader174.i854:                               ; preds = %.loopexit173.i859, %.preheader174.preheader.i850
  %.0135194.i855 = phi i32 [ %i.bis, %.loopexit173.i859 ], [ 0, %.preheader174.preheader.i850 ]
  %.0136192.i856 = phi ptr [ %i.bit, %.loopexit173.i859 ], [ %i.bfl, %.preheader174.preheader.i850 ] ; 8 uses
  %.0145190.i857 = phi ptr [ %i.biu, %.loopexit173.i859 ], [ %i.bdp, %.preheader174.preheader.i850 ] ; 8 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %.0136192.i856, i64 %i.bfn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bhh, ptr align 1 %.0145190.i857, i64 %i.bfp, i1 false)
  br i1 %i.ds, label %.lr.ph183.i866.preheader, label %.preheader172.i858

.lr.ph183.i866.preheader:                         ; preds = %.preheader174.i854
  br i1 %i.bft, label %.lr.ph183.i866.epil.preheader, label %.lr.ph183.i866

.preheader172.i858.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i866
  br i1 %lcmp.mod1584.not, label %.preheader172.i858, label %.lr.ph183.i866.epil.preheader

.lr.ph183.i866.epil.preheader:                    ; preds = %.preheader172.i858.loopexit.unr-lcssa, %.lr.ph183.i866.preheader
  %indvars.iv218.i867.epil.init = phi i64 [ 0, %.lr.ph183.i866.preheader ], [ %indvars.iv.next219.i868.1, %.preheader172.i858.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1585)
  %i.bhi = mul nuw nsw i64 %indvars.iv218.i867.epil.init, 12
  %i.bhj = getelementptr inbounds nuw i8, ptr %.0136192.i856, i64 %i.bhi
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.beb, i64 %indvars.iv218.i867.epil.init
  %i.bhl = load i32, ptr %i.bhk, align 4, !tbaa !12
  %i.bhm = sext i32 %i.bhl to i64
  %i.bhn = getelementptr inbounds i8, ptr %.0145190.i857, i64 %i.bhm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bhj, ptr noundef nonnull align 1 dereferenceable(12) %i.bhn, i64 12, i1 false)
  br label %.preheader172.i858

.preheader172.i858:                               ; preds = %.lr.ph183.i866.epil.preheader, %.preheader172.i858.loopexit.unr-lcssa, %.preheader174.i854
  br i1 %i.dx, label %.lr.ph185.i861.preheader, label %.loopexit173.i859

.lr.ph185.i861.preheader:                         ; preds = %.preheader172.i858
  br i1 %i.bfu, label %.lr.ph185.i861.epil.preheader, label %.lr.ph185.i861

.lr.ph183.i866:                                   ; preds = %.lr.ph183.i866.preheader, %.lr.ph183.i866
  %indvars.iv218.i867 = phi i64 [ %indvars.iv.next219.i868.1, %.lr.ph183.i866 ], [ 0, %.lr.ph183.i866.preheader ] ; 4 uses
  %niter1587 = phi i64 [ %niter1587.next.1, %.lr.ph183.i866 ], [ 0, %.lr.ph183.i866.preheader ]
  %i.bho = mul nuw nsw i64 %indvars.iv218.i867, 12
  %i.bhp = getelementptr inbounds nuw i8, ptr %.0136192.i856, i64 %i.bho
  %i.bhq = getelementptr inbounds nuw [4 x i8], ptr %i.beb, i64 %indvars.iv218.i867
  %i.bhr = load i32, ptr %i.bhq, align 4, !tbaa !12
  %i.bhs = sext i32 %i.bhr to i64
  %i.bht = getelementptr inbounds i8, ptr %.0145190.i857, i64 %i.bhs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bhp, ptr noundef nonnull align 1 dereferenceable(12) %i.bht, i64 12, i1 false)
  %indvars.iv.next219.i868 = or disjoint i64 %indvars.iv218.i867, 1 ; 2 uses
  %i.bhu = mul nuw nsw i64 %indvars.iv.next219.i868, 12
  %i.bhv = getelementptr inbounds nuw i8, ptr %.0136192.i856, i64 %i.bhu
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.beb, i64 %indvars.iv.next219.i868
  %i.bhx = load i32, ptr %i.bhw, align 4, !tbaa !12
  %i.bhy = sext i32 %i.bhx to i64
  %i.bhz = getelementptr inbounds i8, ptr %.0145190.i857, i64 %i.bhy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bhv, ptr noundef nonnull align 1 dereferenceable(12) %i.bhz, i64 12, i1 false)
  %indvars.iv.next219.i868.1 = add nuw nsw i64 %indvars.iv218.i867, 2 ; 2 uses
  %niter1587.next.1 = add i64 %niter1587, 2       ; 2 uses
  %niter1587.ncmp.1 = icmp eq i64 %niter1587.next.1, %unroll_iter1586
  br i1 %niter1587.ncmp.1, label %.preheader172.i858.loopexit.unr-lcssa, label %.lr.ph183.i866, !llvm.loop !780

.lr.ph185.i861:                                   ; preds = %.lr.ph185.i861.preheader, %.lr.ph185.i861
  %indvars.iv223.i862 = phi i64 [ %indvars.iv.next224.i864.1, %.lr.ph185.i861 ], [ 0, %.lr.ph185.i861.preheader ] ; 4 uses
  %niter1594 = phi i64 [ %niter1594.next.1, %.lr.ph185.i861 ], [ 0, %.lr.ph185.i861.preheader ]
  %i.bia = add nsw i64 %indvars.iv223.i862, %i.bfq
  %i.bib = mul nsw i64 %i.bia, 12
  %i.bic = getelementptr inbounds i8, ptr %.0136192.i856, i64 %i.bib
end_hunk_6
begin_hunk_7_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  %or.cond.i168.i827 = or i1 %.not.i.i167.i826, %i.bkw
  br i1 %or.cond.i168.i827, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i828, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @_ZdaPv(ptr noundef nonnull %i.bkv) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i828

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i828:     ; preds = %bb.ev, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi12EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i813, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.gd

bb.ew:                                            ; preds = %bb.n
  %i.bkx = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.bky = load i64, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.bkz = load i32, ptr %i.av, align 4, !tbaa !122 ; 5 uses
  %i.bla = load i32, ptr %i.aw, align 8, !tbaa !130 ; 8 uses
  %i.blb = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 11 uses
  %i.blc = load i64, ptr %i.ay, align 8, !tbaa !97 ; 19 uses
  %i.bld = add i32 %i.bkz, %.sroa.speculated1047  ; 2 uses
  %i.ble = add i32 %i.bld, %.sroa.speculated      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.blf = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1047 ; 2 uses
  %i.blg = zext nneg i32 %i.blf to i64            ; 2 uses
  store ptr %i.az, ptr %2, align 8, !tbaa !812
  %.not.i.i.i915 = icmp samesign ugt i32 %i.blf, 264
  store i64 %i.blg, ptr %i.ba, align 8, !tbaa !813
  br i1 %.not.i.i.i915, label %bb.ex, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i916

bb.ex:                                            ; preds = %bb.ew
  %i.blh = shl nuw nsw i64 %i.blg, 2
  %i.bli = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.blh) #29
          to label %.noexc1025 unwind label %bb.al ; 2 uses

.noexc1025:                                       ; preds = %bb.ex
  store ptr %i.bli, ptr %2, align 8, !tbaa !812
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i916

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i916:        ; preds = %.noexc1025, %bb.ew
  %i.blj = phi ptr [ %i.az, %bb.ew ], [ %i.bli, %.noexc1025 ] ; 6 uses
  br i1 %i.ds, label %.lr.ph.preheader.i1019, label %.preheader176.i917

.lr.ph.preheader.i1019:                           ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i916
  %wide.trip.count.i1020 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i1021

.preheader176.i917:                               ; preds = %bb.ey, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i916
  br i1 %i.dx, label %.lr.ph179.preheader.i1011, label %._crit_edge.i918

.lr.ph179.preheader.i1011:                        ; preds = %.preheader176.i917
  %i.blk = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i1012 = zext nneg i32 %i.dw to i64
  %invariant.gep.i1013 = getelementptr [4 x i8], ptr %i.blj, i64 %i.blk
  br label %.lr.ph179.i1014

.lr.ph.i1021:                                     ; preds = %bb.ey, %.lr.ph.preheader.i1019
  %indvars.iv.i1022 = phi i64 [ 0, %.lr.ph.preheader.i1019 ], [ %indvars.iv.next.i1023, %bb.ey ] ; 3 uses
  %i.bll = trunc i64 %indvars.iv.i1022 to i32
  %i.blm = sub i32 %i.bll, %.sroa.speculated1047
  %i.bln = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.blm, i32 noundef %i.bkz, i32 noundef %i.p)
          to label %bb.ey unwind label %bb.ez

bb.ey:                                            ; preds = %.lr.ph.i1021
  %i.blo = shl nsw i32 %i.bln, 4
  %i.blp = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %indvars.iv.i1022
  store i32 %i.blo, ptr %i.blp, align 4, !tbaa !12
  %indvars.iv.next.i1023 = add nuw nsw i64 %indvars.iv.i1022, 1 ; 2 uses
  %exitcond.not.i1024 = icmp eq i64 %indvars.iv.next.i1023, %wide.trip.count.i1020
  br i1 %exitcond.not.i1024, label %.preheader176.i917, label %.lr.ph.i1021, !llvm.loop !785

bb.ez:                                            ; preds = %.lr.ph.i1021
  %i.blq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

._crit_edge.i918:                                 ; preds = %bb.fa, %.preheader176.i917
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.bb, ptr %3, align 8, !tbaa !815
  store i64 1032, ptr %i.bc, align 8, !tbaa !816
  %or.cond.i1001 = or i1 %i.dm, %i.dr
  %or.cond1082 = select i1 %i.bd, i1 %or.cond.i1001, i1 false
  br i1 %or.cond1082, label %bb.fc, label %.loopexit175.i919

.lr.ph179.i1014:                                  ; preds = %bb.fa, %.lr.ph179.preheader.i1011
  %indvars.iv208.i1015 = phi i64 [ 0, %.lr.ph179.preheader.i1011 ], [ %indvars.iv.next209.i1017, %bb.fa ] ; 3 uses
  %i.blr = trunc i64 %indvars.iv208.i1015 to i32
  %i.bls = add i32 %i.bkz, %i.blr
  %i.blt = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bls, i32 noundef %i.bkz, i32 noundef %i.p)
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %.lr.ph179.i1014
  %i.blu = shl nsw i32 %i.blt, 4
  %gep.i1016 = getelementptr [4 x i8], ptr %invariant.gep.i1013, i64 %indvars.iv208.i1015
  store i32 %i.blu, ptr %gep.i1016, align 4, !tbaa !12
  %indvars.iv.next209.i1017 = add nuw nsw i64 %indvars.iv208.i1015, 1 ; 2 uses
  %exitcond212.not.i1018 = icmp eq i64 %indvars.iv.next209.i1017, %wide.trip.count211.i1012
  br i1 %exitcond212.not.i1018, label %._crit_edge.i918, label %.lr.ph179.i1014, !llvm.loop !786

bb.fb:                                            ; preds = %.lr.ph179.i1014
  %i.blv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fc:                                            ; preds = %._crit_edge.i918
  %i.blw = shl nsw i32 %i.ble, 4                  ; 2 uses
  %i.blx = sext i32 %i.blw to i64                 ; 2 uses
  %.not.i.i1002 = icmp ugt i32 %i.blw, 1032
  store i64 %i.blx, ptr %i.bc, align 8, !tbaa !816
  br i1 %.not.i.i1002, label %bb.fd, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i1003

bb.fd:                                            ; preds = %bb.fc
  %i.bly = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.blx) #29
          to label %.noexc.i1010 unwind label %bb.fe ; 2 uses

.noexc.i1010:                                     ; preds = %bb.fd
  store ptr %i.bly, ptr %3, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i1003

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i1003: ; preds = %.noexc.i1010, %bb.fc
  %i.blz = phi ptr [ %i.bly, %.noexc.i1010 ], [ %i.bb, %bb.fc ] ; 8 uses
  %i.bma = icmp sgt i32 %i.ble, 0
  br i1 %i.bma, label %.lr.ph181.preheader.i1004, label %.loopexit175.i919

.lr.ph181.preheader.i1004:                        ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i1003
  %wide.trip.count216.i1005 = zext nneg i32 %i.ble to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count216.i1005, 3 ; 3 uses
  %i.bmb = icmp ult i32 %i.ble, 4
  br i1 %i.bmb, label %.lr.ph181.i1006.epil.preheader, label %.lr.ph181.preheader.i1004.new

.lr.ph181.preheader.i1004.new:                    ; preds = %.lr.ph181.preheader.i1004
  %unroll_iter = and i64 %wide.trip.count216.i1005, 2147483644
  br label %.lr.ph181.i1006

bb.fe:                                            ; preds = %bb.fd
  %i.bmc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

.lr.ph181.i1006:                                  ; preds = %.lr.ph181.i1006, %.lr.ph181.preheader.i1004.new
  %indvars.iv213.i1007 = phi i64 [ 0, %.lr.ph181.preheader.i1004.new ], [ %indvars.iv.next214.i1008.3, %.lr.ph181.i1006 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph181.preheader.i1004.new ], [ %niter.next.3, %.lr.ph181.i1006 ]
  %i.bmd = shl nuw nsw i64 %indvars.iv213.i1007, 4
  %i.bme = getelementptr inbounds nuw i8, ptr %i.blz, i64 %i.bmd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bme, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next214.i1008 = shl i64 %indvars.iv213.i1007, 4
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.blz, i64 %indvars.iv.next214.i1008
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bmg, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next214.i1008.1 = shl i64 %indvars.iv213.i1007, 4
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.blz, i64 %indvars.iv.next214.i1008.1
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmh, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bmi, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next214.i1008.2 = shl i64 %indvars.iv213.i1007, 4
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.blz, i64 %indvars.iv.next214.i1008.2
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bmk, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next214.i1008.3 = add nuw nsw i64 %indvars.iv213.i1007, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit175.i919.loopexit.unr-lcssa, label %.lr.ph181.i1006, !llvm.loop !787

.loopexit175.i919.loopexit.unr-lcssa:             ; preds = %.lr.ph181.i1006
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit175.i919, label %.lr.ph181.i1006.epil.preheader

.lr.ph181.i1006.epil.preheader:                   ; preds = %.loopexit175.i919.loopexit.unr-lcssa, %.lr.ph181.preheader.i1004
  %indvars.iv213.i1007.epil.init = phi i64 [ 0, %.lr.ph181.preheader.i1004 ], [ %indvars.iv.next214.i1008.3, %.loopexit175.i919.loopexit.unr-lcssa ]
  %lcmp.mod1537 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1537)
  br label %.lr.ph181.i1006.epil

.lr.ph181.i1006.epil:                             ; preds = %.lr.ph181.i1006.epil, %.lr.ph181.i1006.epil.preheader
  %indvars.iv213.i1007.epil = phi i64 [ %indvars.iv213.i1007.epil.init, %.lr.ph181.i1006.epil.preheader ], [ %indvars.iv.next214.i1008.epil, %.lr.ph181.i1006.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph181.i1006.epil.preheader ], [ %epil.iter.next, %.lr.ph181.i1006.epil ]
  %i.bml = shl nuw nsw i64 %indvars.iv213.i1007.epil, 4
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.blz, i64 %i.bml
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bmm, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next214.i1008.epil = add nuw nsw i64 %indvars.iv213.i1007.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit175.i919, label %.lr.ph181.i1006.epil, !llvm.loop !788

.loopexit175.i919:                                ; preds = %.loopexit175.i919.loopexit.unr-lcssa, %.lr.ph181.i1006.epil, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i1003, %._crit_edge.i918
  %.0138.i920 = phi ptr [ null, %._crit_edge.i918 ], [ %i.blz, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i1003 ], [ %i.blz, %.lr.ph181.i1006.epil ], [ %i.blz, %.loopexit175.i919.loopexit.unr-lcssa ] ; 10 uses
  %i.bmn = icmp sgt i32 %i.bla, 0
  br i1 %i.bmn, label %.lr.ph196.i962, label %.preheader.i921

.lr.ph196.i962:                                   ; preds = %.loopexit175.i919
  %i.bmo = zext nneg i32 %.sroa.speculated1057 to i64
  %i.bmp = mul i64 %i.blc, %i.bmo
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.blb, i64 %i.bmp ; 2 uses
  %i.bmr = shl nuw nsw i32 %.sroa.speculated1047, 4
  %i.bms = zext nneg i32 %i.bmr to i64            ; 2 uses
  %i.bmt = shl nsw i32 %i.bkz, 4
  %i.bmu = sext i32 %i.bmt to i64                 ; 2 uses
  %i.bmv = sext i32 %i.bld to i64                 ; 6 uses
  %wide.trip.count232.i984 = zext nneg i32 %.sroa.speculated1047 to i64 ; 5 uses
  %wide.trip.count237.i985 = zext nneg i32 %.sroa.speculated to i64 ; 4 uses
  br i1 %i.bd, label %.preheader171.us.i986.preheader, label %.preheader174.preheader.i963

.preheader171.us.i986.preheader:                  ; preds = %.lr.ph196.i962
  %xtraiter1551 = and i64 %wide.trip.count232.i984, 3 ; 3 uses
  %i.bmw = icmp slt i32 %.neg214, 4
  %unroll_iter1555 = and i64 %wide.trip.count232.i984, 2147483644
  %lcmp.mod1553.not = icmp eq i64 %xtraiter1551, 0
  %lcmp.mod1554 = icmp ne i64 %xtraiter1551, 0
  %xtraiter1558 = and i64 %wide.trip.count237.i985, 1
  %i.bmx = icmp eq i32 %i.dw, 1
  %unroll_iter1562 = and i64 %wide.trip.count237.i985, 2147483646
  %lcmp.mod1560.not = icmp eq i64 %xtraiter1558, 0
  %lcmp.mod1561 = trunc i32 %.sroa.speculated to i1
  br label %.preheader171.us.i986

.preheader174.preheader.i963:                     ; preds = %.lr.ph196.i962
  %invariant.gep278.i966 = getelementptr [4 x i8], ptr %i.blj, i64 %wide.trip.count232.i984 ; 3 uses
  %xtraiter1538 = and i64 %wide.trip.count232.i984, 1
  %i.bmy = icmp eq i32 %.neg214, 1
  %unroll_iter1542 = and i64 %wide.trip.count232.i984, 2147483646
  %lcmp.mod1540.not = icmp eq i64 %xtraiter1538, 0
  %lcmp.mod1541 = trunc i32 %.sroa.speculated1047 to i1
  %xtraiter1545 = and i64 %wide.trip.count237.i985, 1
  %i.bmz = icmp eq i32 %i.dw, 1
  %unroll_iter1549 = and i64 %wide.trip.count237.i985, 2147483646
  %lcmp.mod1547.not = icmp eq i64 %xtraiter1545, 0
  %lcmp.mod1548 = trunc i32 %.sroa.speculated to i1
  br label %.preheader174.i967

.preheader171.us.i986:                            ; preds = %.preheader171.us.i986.preheader, %.loopexit.us.i991
  %.0135194.us.i987 = phi i32 [ %i.bnu, %.loopexit.us.i991 ], [ 0, %.preheader171.us.i986.preheader ]
  %.0136192.us.i988 = phi ptr [ %i.bnv, %.loopexit.us.i991 ], [ %i.bmq, %.preheader171.us.i986.preheader ] ; 10 uses
  %.0145190.us.i989 = phi ptr [ %i.bnw, %.loopexit.us.i991 ], [ %i.bkx, %.preheader171.us.i986.preheader ] ; 2 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %.0136192.us.i988, i64 %i.bms
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bna, ptr align 1 %.0145190.us.i989, i64 %i.bmu, i1 false)
  br i1 %i.ds, label %.lr.ph187.us.i997.preheader, label %.preheader170.us.i990

.lr.ph187.us.i997.preheader:                      ; preds = %.preheader171.us.i986
  br i1 %i.bmw, label %.lr.ph187.us.i997.epil.preheader, label %.lr.ph187.us.i997

.lr.ph187.us.i997:                                ; preds = %.lr.ph187.us.i997.preheader, %.lr.ph187.us.i997
  %indvars.iv229.i998 = phi i64 [ %indvars.iv.next230.i999.3, %.lr.ph187.us.i997 ], [ 0, %.lr.ph187.us.i997.preheader ] ; 5 uses
  %niter1556 = phi i64 [ %niter1556.next.3, %.lr.ph187.us.i997 ], [ 0, %.lr.ph187.us.i997.preheader ]
  %i.bnb = shl nuw nsw i64 %indvars.iv229.i998, 4
  %i.bnc = getelementptr inbounds nuw i8, ptr %.0136192.us.i988, i64 %i.bnb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bnc, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next230.i999 = shl i64 %indvars.iv229.i998, 4
  %i.bnd = getelementptr inbounds nuw i8, ptr %.0136192.us.i988, i64 %indvars.iv.next230.i999
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bne, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next230.i999.1 = shl i64 %indvars.iv229.i998, 4
  %i.bnf = getelementptr inbounds nuw i8, ptr %.0136192.us.i988, i64 %indvars.iv.next230.i999.1
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bng, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next230.i999.2 = shl i64 %indvars.iv229.i998, 4
  %i.bnh = getelementptr inbounds nuw i8, ptr %.0136192.us.i988, i64 %indvars.iv.next230.i999.2
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bni, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next230.i999.3 = add nuw nsw i64 %indvars.iv229.i998, 4 ; 2 uses
  %niter1556.next.3 = add i64 %niter1556, 4       ; 2 uses
  %niter1556.ncmp.3 = icmp eq i64 %niter1556.next.3, %unroll_iter1555
  br i1 %niter1556.ncmp.3, label %.preheader170.us.i990.loopexit.unr-lcssa, label %.lr.ph187.us.i997, !llvm.loop !789

.lr.ph189.us.i993:                                ; preds = %.lr.ph189.us.i993.preheader, %.lr.ph189.us.i993
  %indvars.iv234.i994 = phi i64 [ %indvars.iv.next235.i995.1, %.lr.ph189.us.i993 ], [ 0, %.lr.ph189.us.i993.preheader ] ; 3 uses
  %niter1563 = phi i64 [ %niter1563.next.1, %.lr.ph189.us.i993 ], [ 0, %.lr.ph189.us.i993.preheader ]
  %i.bnj = add nsw i64 %indvars.iv234.i994, %i.bmv
  %i.bnk = shl nsw i64 %i.bnj, 4
  %i.bnl = getelementptr inbounds i8, ptr %.0136192.us.i988, i64 %i.bnk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bnl, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next235.i995 = or disjoint i64 %indvars.iv234.i994, 1
  %i.bnm = add nsw i64 %indvars.iv.next235.i995, %i.bmv
  %i.bnn = shl nsw i64 %i.bnm, 4
  %i.bno = getelementptr inbounds i8, ptr %.0136192.us.i988, i64 %i.bnn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bno, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next235.i995.1 = add nuw nsw i64 %indvars.iv234.i994, 2 ; 2 uses
  %niter1563.next.1 = add i64 %niter1563, 2       ; 2 uses
  %niter1563.ncmp.1 = icmp eq i64 %niter1563.next.1, %unroll_iter1562
  br i1 %niter1563.ncmp.1, label %.loopexit.us.i991.loopexit.unr-lcssa, label %.lr.ph189.us.i993, !llvm.loop !790

.preheader170.us.i990.loopexit.unr-lcssa:         ; preds = %.lr.ph187.us.i997
  br i1 %lcmp.mod1553.not, label %.preheader170.us.i990, label %.lr.ph187.us.i997.epil.preheader

.lr.ph187.us.i997.epil.preheader:                 ; preds = %.preheader170.us.i990.loopexit.unr-lcssa, %.lr.ph187.us.i997.preheader
  %indvars.iv229.i998.epil.init = phi i64 [ 0, %.lr.ph187.us.i997.preheader ], [ %indvars.iv.next230.i999.3, %.preheader170.us.i990.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1554)
  br label %.lr.ph187.us.i997.epil

.lr.ph187.us.i997.epil:                           ; preds = %.lr.ph187.us.i997.epil, %.lr.ph187.us.i997.epil.preheader
  %indvars.iv229.i998.epil = phi i64 [ %indvars.iv.next230.i999.epil, %.lr.ph187.us.i997.epil ], [ %indvars.iv229.i998.epil.init, %.lr.ph187.us.i997.epil.preheader ] ; 2 uses
  %epil.iter1552 = phi i64 [ %epil.iter1552.next, %.lr.ph187.us.i997.epil ], [ 0, %.lr.ph187.us.i997.epil.preheader ]
  %i.bnp = shl nuw nsw i64 %indvars.iv229.i998.epil, 4
  %i.bnq = getelementptr inbounds nuw i8, ptr %.0136192.us.i988, i64 %i.bnp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bnq, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  %indvars.iv.next230.i999.epil = add nuw nsw i64 %indvars.iv229.i998.epil, 1
  %epil.iter1552.next = add i64 %epil.iter1552, 1 ; 2 uses
  %epil.iter1552.cmp.not = icmp eq i64 %epil.iter1552.next, %xtraiter1551
  br i1 %epil.iter1552.cmp.not, label %.preheader170.us.i990, label %.lr.ph187.us.i997.epil, !llvm.loop !791

.preheader170.us.i990:                            ; preds = %.preheader170.us.i990.loopexit.unr-lcssa, %.lr.ph187.us.i997.epil, %.preheader171.us.i986
  br i1 %i.dx, label %.lr.ph189.us.i993.preheader, label %.loopexit.us.i991

.lr.ph189.us.i993.preheader:                      ; preds = %.preheader170.us.i990
  br i1 %i.bmx, label %.lr.ph189.us.i993.epil.preheader, label %.lr.ph189.us.i993

.loopexit.us.i991.loopexit.unr-lcssa:             ; preds = %.lr.ph189.us.i993
  br i1 %lcmp.mod1560.not, label %.loopexit.us.i991, label %.lr.ph189.us.i993.epil.preheader

.lr.ph189.us.i993.epil.preheader:                 ; preds = %.loopexit.us.i991.loopexit.unr-lcssa, %.lr.ph189.us.i993.preheader
  %indvars.iv234.i994.epil.init = phi i64 [ 0, %.lr.ph189.us.i993.preheader ], [ %indvars.iv.next235.i995.1, %.loopexit.us.i991.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1561)
  %i.bnr = add nsw i64 %indvars.iv234.i994.epil.init, %i.bmv
  %i.bns = shl nsw i64 %i.bnr, 4
  %i.bnt = getelementptr inbounds i8, ptr %.0136192.us.i988, i64 %i.bns
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bnt, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  br label %.loopexit.us.i991

.loopexit.us.i991:                                ; preds = %.lr.ph189.us.i993.epil.preheader, %.loopexit.us.i991.loopexit.unr-lcssa, %.preheader170.us.i990
  %i.bnu = add nuw nsw i32 %.0135194.us.i987, 1   ; 2 uses
  %i.bnv = getelementptr inbounds nuw i8, ptr %.0136192.us.i988, i64 %i.blc
  %i.bnw = getelementptr inbounds nuw i8, ptr %.0145190.us.i989, i64 %i.bky
  %exitcond239.not.i992 = icmp eq i32 %i.bnu, %i.bla
  br i1 %exitcond239.not.i992, label %.preheader.i921, label %.preheader171.us.i986, !llvm.loop !792

.preheader.i921:                                  ; preds = %.loopexit173.i972, %.loopexit.us.i991, %.loopexit175.i919
  br i1 %i.dm, label %.lr.ph198.i950, label %._crit_edge199.i922

.lr.ph198.i950:                                   ; preds = %.preheader.i921
  %i.bnx = shl nsw i32 %i.ble, 4
  %i.bny = sext i32 %i.bnx to i64                 ; 7 uses
  %wide.trip.count248.i951 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i956.preheader, label %.lr.ph198.split.i952

.lr.ph198.split.us.i956.preheader:                ; preds = %.lr.ph198.i950
  %xtraiter1564 = and i64 %wide.trip.count248.i951, 3 ; 3 uses
  %i.bnz = icmp ult i32 %.neg, 4
  br i1 %i.bnz, label %.lr.ph198.split.us.i956.epil.preheader, label %.lr.ph198.split.us.i956.preheader.new

.lr.ph198.split.us.i956.preheader.new:            ; preds = %.lr.ph198.split.us.i956.preheader
  %unroll_iter1568 = and i64 %wide.trip.count248.i951, 2147483644
  br label %.lr.ph198.split.us.i956

.lr.ph198.split.us.i956:                          ; preds = %.lr.ph198.split.us.i956, %.lr.ph198.split.us.i956.preheader.new
  %indvars.iv245.i957 = phi i64 [ 0, %.lr.ph198.split.us.i956.preheader.new ], [ %indvars.iv.next246.i958.3, %.lr.ph198.split.us.i956 ] ; 5 uses
  %niter1569 = phi i64 [ 0, %.lr.ph198.split.us.i956.preheader.new ], [ %niter1569.next.3, %.lr.ph198.split.us.i956 ]
  %i.boa = mul i64 %indvars.iv245.i957, %i.blc
  %i.bob = getelementptr inbounds nuw i8, ptr %i.blb, i64 %i.boa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bob, ptr align 1 %.0138.i920, i64 %i.bny, i1 false)
  %indvars.iv.next246.i958 = or disjoint i64 %indvars.iv245.i957, 1
  %i.boc = mul i64 %indvars.iv.next246.i958, %i.blc
  %i.bod = getelementptr inbounds nuw i8, ptr %i.blb, i64 %i.boc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bod, ptr align 1 %.0138.i920, i64 %i.bny, i1 false)
  %indvars.iv.next246.i958.1 = or disjoint i64 %indvars.iv245.i957, 2
  %i.boe = mul i64 %indvars.iv.next246.i958.1, %i.blc
  %i.bof = getelementptr inbounds nuw i8, ptr %i.blb, i64 %i.boe
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bof, ptr align 1 %.0138.i920, i64 %i.bny, i1 false)
  %indvars.iv.next246.i958.2 = or disjoint i64 %indvars.iv245.i957, 3
  %i.bog = mul i64 %indvars.iv.next246.i958.2, %i.blc
  %i.boh = getelementptr inbounds nuw i8, ptr %i.blb, i64 %i.bog
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.boh, ptr align 1 %.0138.i920, i64 %i.bny, i1 false)
  %indvars.iv.next246.i958.3 = add nuw nsw i64 %indvars.iv245.i957, 4 ; 2 uses
  %niter1569.next.3 = add i64 %niter1569, 4       ; 2 uses
  %niter1569.ncmp.3 = icmp eq i64 %niter1569.next.3, %unroll_iter1568
  br i1 %niter1569.ncmp.3, label %._crit_edge199.thread.i960.unr-lcssa, label %.lr.ph198.split.us.i956, !llvm.loop !793

.preheader174.i967:                               ; preds = %.loopexit173.i972, %.preheader174.preheader.i963
  %.0135194.i968 = phi i32 [ %i.bpt, %.loopexit173.i972 ], [ 0, %.preheader174.preheader.i963 ]
  %.0136192.i969 = phi ptr [ %i.bpu, %.loopexit173.i972 ], [ %i.bmq, %.preheader174.preheader.i963 ] ; 8 uses
  %.0145190.i970 = phi ptr [ %i.bpv, %.loopexit173.i972 ], [ %i.bkx, %.preheader174.preheader.i963 ] ; 8 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %.0136192.i969, i64 %i.bms
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.boi, ptr align 1 %.0145190.i970, i64 %i.bmu, i1 false)
  br i1 %i.ds, label %.lr.ph183.i979.preheader, label %.preheader172.i971

.lr.ph183.i979.preheader:                         ; preds = %.preheader174.i967
  br i1 %i.bmy, label %.lr.ph183.i979.epil.preheader, label %.lr.ph183.i979

.preheader172.i971.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i979
  br i1 %lcmp.mod1540.not, label %.preheader172.i971, label %.lr.ph183.i979.epil.preheader

.lr.ph183.i979.epil.preheader:                    ; preds = %.preheader172.i971.loopexit.unr-lcssa, %.lr.ph183.i979.preheader
  %indvars.iv218.i980.epil.init = phi i64 [ 0, %.lr.ph183.i979.preheader ], [ %indvars.iv.next219.i981.1, %.preheader172.i971.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1541)
  %i.boj = shl nuw nsw i64 %indvars.iv218.i980.epil.init, 4
  %i.bok = getelementptr inbounds nuw i8, ptr %.0136192.i969, i64 %i.boj
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %indvars.iv218.i980.epil.init
  %i.bom = load i32, ptr %i.bol, align 4, !tbaa !12
  %i.bon = sext i32 %i.bom to i64
  %i.boo = getelementptr inbounds i8, ptr %.0145190.i970, i64 %i.bon
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bok, ptr noundef nonnull align 1 dereferenceable(16) %i.boo, i64 16, i1 false)
  br label %.preheader172.i971

.preheader172.i971:                               ; preds = %.lr.ph183.i979.epil.preheader, %.preheader172.i971.loopexit.unr-lcssa, %.preheader174.i967
  br i1 %i.dx, label %.lr.ph185.i974.preheader, label %.loopexit173.i972

.lr.ph185.i974.preheader:                         ; preds = %.preheader172.i971
  br i1 %i.bmz, label %.lr.ph185.i974.epil.preheader, label %.lr.ph185.i974

.lr.ph183.i979:                                   ; preds = %.lr.ph183.i979.preheader, %.lr.ph183.i979
  %indvars.iv218.i980 = phi i64 [ %indvars.iv.next219.i981.1, %.lr.ph183.i979 ], [ 0, %.lr.ph183.i979.preheader ] ; 4 uses
  %niter1543 = phi i64 [ %niter1543.next.1, %.lr.ph183.i979 ], [ 0, %.lr.ph183.i979.preheader ]
  %i.bop = shl nuw nsw i64 %indvars.iv218.i980, 4
  %i.boq = getelementptr inbounds nuw i8, ptr %.0136192.i969, i64 %i.bop
  %i.bor = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %indvars.iv218.i980
  %i.bos = load i32, ptr %i.bor, align 4, !tbaa !12
  %i.bot = sext i32 %i.bos to i64
  %i.bou = getelementptr inbounds i8, ptr %.0145190.i970, i64 %i.bot
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.boq, ptr noundef nonnull align 1 dereferenceable(16) %i.bou, i64 16, i1 false)
  %indvars.iv.next219.i981 = or disjoint i64 %indvars.iv218.i980, 1 ; 2 uses
  %i.bov = shl nuw nsw i64 %indvars.iv.next219.i981, 4
  %i.bow = getelementptr inbounds nuw i8, ptr %.0136192.i969, i64 %i.bov
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %indvars.iv.next219.i981
  %i.boy = load i32, ptr %i.box, align 4, !tbaa !12
  %i.boz = sext i32 %i.boy to i64
  %i.bpa = getelementptr inbounds i8, ptr %.0145190.i970, i64 %i.boz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bow, ptr noundef nonnull align 1 dereferenceable(16) %i.bpa, i64 16, i1 false)
  %indvars.iv.next219.i981.1 = add nuw nsw i64 %indvars.iv218.i980, 2 ; 2 uses
  %niter1543.next.1 = add i64 %niter1543, 2       ; 2 uses
  %niter1543.ncmp.1 = icmp eq i64 %niter1543.next.1, %unroll_iter1542
  br i1 %niter1543.ncmp.1, label %.preheader172.i971.loopexit.unr-lcssa, label %.lr.ph183.i979, !llvm.loop !794

.lr.ph185.i974:                                   ; preds = %.lr.ph185.i974.preheader, %.lr.ph185.i974
  %indvars.iv223.i975 = phi i64 [ %indvars.iv.next224.i977.1, %.lr.ph185.i974 ], [ 0, %.lr.ph185.i974.preheader ] ; 4 uses
  %niter1550 = phi i64 [ %niter1550.next.1, %.lr.ph185.i974 ], [ 0, %.lr.ph185.i974.preheader ]
  %i.bpb = add nsw i64 %indvars.iv223.i975, %i.bmv
  %i.bpc = shl nsw i64 %i.bpb, 4
  %i.bpd = getelementptr inbounds i8, ptr %.0136192.i969, i64 %i.bpc
  %gep279.i976 = getelementptr [4 x i8], ptr %invariant.gep278.i966, i64 %indvars.iv223.i975
end_hunk_7
