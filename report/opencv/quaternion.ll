Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/quaternion?download=true
inline.NumInlined: 860
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv8ximgproc18colorMatchTemplateERKNS_11_InputArrayES3_RKNS_12_OutputArrayE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

declare void @_ZN2cv8subtractERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #2

declare void @_ZN2cv4sqrtERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_EN21PixelOperationWrapperD0Ev"(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %union.Index, align 4               ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !51   ; 2 uses
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %i.h = icmp ult i32 %i.f, %narrow.i
  br i1 %i.h, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #16
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %7, align 8, !tbaa !8      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !14
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.o = zext nneg i32 %i.f to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !52   ; 6 uses
  %i.s = icmp samesign ult i32 %i.d, 3
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.t = load i32, ptr %1, align 4, !tbaa !53     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !55   ; 2 uses
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.lr.ph, label %.loopexit

.lr.ph.i.i.i.lr.ph:                               ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.d to i64
  %i.ab = sext i32 %i.r to i64
  %.idx.i = shl nsw i64 %i.ab, 5                  ; 2 uses
  %i.ac = icmp sgt i32 %i.r, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.us.preheader, label %.loopexit

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph.i.i.i.lr.ph
  %i.ad = add nsw i32 %i.d, -1
  %i.ae = icmp ult i32 %i.ad, 3
  %lcmp.mod152.not = icmp eq i32 %i.d, 0
  %lcmp.mod158 = icmp ne i32 %i.d, 0
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us"
  %.03494.us = phi i32 [ %i.by, %"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us" ], [ %i.t, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i32 %.03494.us, ptr %6, align 4, !tbaa !52
  store i32 0, ptr %i.x, align 4, !tbaa !52
  br i1 %i.ae, label %.epil.preheader149, label %.lr.ph.i.i.i.us.new

.lr.ph.i.i.i.us.new:                              ; preds = %.lr.ph.i.i.i.us, %.lr.ph.i.i.i.us.new
  %indvars.iv.i.i.i.us = phi i64 [ %indvars.iv.next.i.i.i.us.3, %.lr.ph.i.i.i.us.new ], [ 0, %.lr.ph.i.i.i.us ] ; 6 uses
  %.010.i.i.i.us = phi ptr [ %i.bg, %.lr.ph.i.i.i.us.new ], [ %i.z, %.lr.ph.i.i.i.us ]
  %niter160 = phi i64 [ %niter160.next.3, %.lr.ph.i.i.i.us.new ], [ 0, %.lr.ph.i.i.i.us ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !52
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !45
  %i.ak = mul i64 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us, i64 %i.ak
  %indvars.iv.next.i.i.i.us = or disjoint i64 %indvars.iv.i.i.i.us, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us
  %i.an = load i32, ptr %i.am, align 4, !tbaa !52
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45
  %i.ar = mul i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar
  %indvars.iv.next.i.i.i.us.1 = or disjoint i64 %indvars.iv.i.i.i.us, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !52
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.1
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ay ; 2 uses
  %indvars.iv.next.i.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.i.us, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !52
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.2
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !45
  %i.bf = mul i64 %i.be, %i.bc                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bf ; 3 uses
  %indvars.iv.next.i.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.i.us, 4 ; 2 uses
  %niter160.next.3 = add i64 %niter160, 4         ; 2 uses
  %niter160.ncmp.3 = icmp eq i64 %niter160.next.3, 0
  br i1 %niter160.ncmp.3, label %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa, label %.lr.ph.i.i.i.us.new, !llvm.loop !96

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.02.i.us = phi ptr [ %i.bh, %.lr.ph.i.us ], [ %.02.i.us.ph, %.lr.ph.i.us.preheader ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02.i.us, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02.i.us, i64 16 ; 2 uses
  %i.bj = load <2 x double>, ptr %.02.i.us, align 8, !tbaa !73 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.bj, %i.bj
  %i.bk = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.bl = extractelement <2 x double> %i.bj, i64 0 ; 2 uses
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %i.bk)
  %i.bn = load <2 x double>, ptr %i.bi, align 8, !tbaa !73 ; 3 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0 ; 2 uses
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %i.bm)
  %i.bq = extractelement <2 x double> %i.bn, i64 1 ; 2 uses
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bp)
  %sqrt.i.i.us = tail call double @llvm.sqrt.f64(double %i.br)
  %i.bs = fdiv double 1.000000e+00, %sqrt.i.i.us
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = fmul <2 x double> %i.bj, %i.bu
  store <2 x double> %i.bv, ptr %.02.i.us, align 8, !tbaa !73
  %i.bw = fmul <2 x double> %i.bn, %i.bu
  store <2 x double> %i.bw, ptr %i.bi, align 8, !tbaa !73
  %i.bx = icmp ult ptr %i.bh, %i.cg
  br i1 %i.bx, label %.lr.ph.i.us, label %"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", !llvm.loop !97

"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us": ; preds = %.lr.ph.i.us, %middle.block133
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.by = add nsw i32 %.03494.us, 1               ; 2 uses
  %exitcond99.not = icmp eq i32 %i.by, %i.v
  br i1 %exitcond99.not, label %.loopexit, label %.lr.ph.i.i.i.us, !llvm.loop !100

_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.us.new
  br i1 %lcmp.mod152.not, label %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us, label %.epil.preheader149

.epil.preheader149:                               ; preds = %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.us
  %indvars.iv.i.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %indvars.iv.next.i.i.i.us.3, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ]
  %.010.i.i.i.us.epil.init = phi ptr [ %i.z, %.lr.ph.i.i.i.us ], [ %i.bg, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader149
  %indvars.iv.i.i.i.us.epil = phi i64 [ %indvars.iv.i.i.i.us.epil.init, %.epil.preheader149 ], [ %indvars.iv.next.i.i.i.us.epil, %bb.f ] ; 3 uses
  %.010.i.i.i.us.epil = phi ptr [ %.010.i.i.i.us.epil.init, %.epil.preheader149 ], [ %i.cf, %bb.f ] ; 2 uses
  %epil.iter151 = phi i64 [ 0, %.epil.preheader149 ], [ %epil.iter151.next, %bb.f ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us.epil
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !52
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us.epil
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !45
  %i.ce = mul i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us.epil, i64 %i.ce ; 2 uses
  %indvars.iv.next.i.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.i.us.epil, 1
  %epil.iter151.next = add i64 %epil.iter151, 1   ; 2 uses
  %epil.iter151.cmp.not = icmp eq i64 %epil.iter151.next, %wide.trip.count.i.i.i
  br i1 %epil.iter151.cmp.not, label %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us, label %bb.f, !llvm.loop !101

_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us: ; preds = %bb.f, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa
  %.010.i.i.i.us.lcssa = phi ptr [ %i.az, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ], [ %.010.i.i.i.us.epil, %bb.f ]
  %.lcssa142.a = phi i64 [ %i.bf, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ], [ %i.ce, %bb.f ] ; 2 uses
  %.lcssa = phi ptr [ %i.bg, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ], [ %i.cf, %bb.f ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.idx.i
  %i.ch = ptrtoaddr ptr %.010.i.i.i.us.lcssa to i64 ; 2 uses
  %i.ci = add i64 %.lcssa142.a, %i.ch             ; 2 uses
  %i.cj = add i64 %i.ci, %.idx.i
  %i.ck = add i64 %i.ci, 32
  %i.cl = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 %i.ck)
  %i.cm = xor i64 %.lcssa142.a, -1
  %i.cn = add i64 %i.cl, %i.cm
  %i.co = sub i64 %i.cn, %i.ch
  %i.cp = lshr i64 %i.co, 5                       ; 2 uses
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check124 = icmp eq i64 %i.cp, 0
  br i1 %min.iters.check124, label %.lr.ph.i.us.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us
  %n.vec126 = and i64 %i.cq, 1152921504606846974  ; 3 uses
  %i.cr = shl i64 %n.vec126, 5
  %i.cs = getelementptr i8, ptr %.lcssa, i64 %i.cr
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body127 ] ; 2 uses
  %i.ct = shl i64 %index128, 5                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %.lcssa, i64 %i.ct ; 5 uses
  %i.cu = getelementptr i8, ptr %.lcssa, i64 %i.ct ; 4 uses
  %next.gep130 = getelementptr i8, ptr %i.cu, i64 32
  %i.cv = load double, ptr %next.gep129, align 8, !tbaa !73
  %i.cw = load double, ptr %next.gep130, align 8, !tbaa !73
  %i.cx = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cw, i64 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %next.gep129, i64 8
  %i.da = getelementptr i8, ptr %i.cu, i64 40
  %i.db = load double, ptr %i.cz, align 8, !tbaa !73
  %i.dc = load double, ptr %i.da, align 8, !tbaa !73
  %i.dd = insertelement <2 x double> poison, double %i.db, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.dc, i64 1 ; 3 uses
  %i.df = fmul <2 x double> %i.de, %i.de
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cy, <2 x double> %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %next.gep129, i64 16
  %i.di = getelementptr i8, ptr %i.cu, i64 48
  %i.dj = load double, ptr %i.dh, align 8, !tbaa !73
  %i.dk = load double, ptr %i.di, align 8, !tbaa !73
  %i.dl = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dk, i64 1 ; 3 uses
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dm, <2 x double> %i.dg)
  %i.do = getelementptr inbounds nuw i8, ptr %next.gep129, i64 24
  %i.dp = getelementptr i8, ptr %i.cu, i64 56
  %i.dq = load double, ptr %i.do, align 8, !tbaa !73
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !73
  %i.ds = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dr, i64 1 ; 3 uses
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.dt, <2 x double> %i.dn)
  %i.dv = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.du)
  %i.dw = fdiv <2 x double> splat (double 1.000000e+00), %i.dv ; 2 uses
  %i.dx = shufflevector <2 x double> %i.cy, <2 x double> %i.de, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dy = shufflevector <2 x double> %i.dw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dz = fmul <4 x double> %i.dx, %i.dy
  %i.ea = shufflevector <2 x double> %i.dm, <2 x double> %i.dt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eb = shufflevector <2 x double> %i.dw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ec = fmul <4 x double> %i.ea, %i.eb
  %interleaved.vec131 = shufflevector <4 x double> %i.dz, <4 x double> %i.ec, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec131, ptr %next.gep129, align 8, !tbaa !73
  %index.next132 = add nuw i64 %index128, 2       ; 2 uses
  %i.ed = icmp eq i64 %index.next132, %n.vec126
  br i1 %i.ed, label %middle.block133, label %vector.body127, !llvm.loop !103

middle.block133:                                  ; preds = %vector.body127
  %cmp.n134 = icmp eq i64 %i.cq, %n.vec126
  br i1 %cmp.n134, label %"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us, %middle.block133
  %.02.i.us.ph = phi ptr [ %.lcssa, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us ], [ %i.cs, %middle.block133 ]
  br label %.lr.ph.i.us

bb.g:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.ee = zext nneg i32 %i.d to i64               ; 4 uses
  %i.ef = shl nuw nsw i64 %i.ee, 2                ; 4 uses
  %i.eg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #19 ; 14 uses
  store i32 0, ptr %i.eg, align 4, !tbaa !52
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ef, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eh, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !52
  %i.ei = load i32, ptr %1, align 4, !tbaa !53    ; 3 uses
  %i.ej = add nsw i32 %i.ei, -1
  %i.ek = add nsw i32 %i.d, -2                    ; 2 uses
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.el ; 3 uses
  store i32 %i.ej, ptr %i.em, align 4, !tbaa !52
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !55 ; 2 uses
  %i.ep = icmp slt i32 %i.ei, %i.eo
  br i1 %i.ep, label %.lr.ph93, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph93:                                         ; preds = %bb.g
  %i.eq = getelementptr [4 x i8], ptr %i.eg, i64 %i.ee
  %i.er = getelementptr i8, ptr %i.eq, i64 -4     ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 5 uses
  %i.eu = icmp sgt i32 %i.r, 0
  %i.ev = zext nneg i32 %i.ek to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ev
  %narrow.i39 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.ew = zext nneg i32 %narrow.i39 to i64
  %i.ex = zext nneg i32 %narrow.i to i64
  %xtraiter = and i64 %i.ee, 3                    ; 3 uses
  %i.ey = icmp eq i32 %i.d, 3
  %unroll_iter = and i64 %i.ee, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  %i.ez = zext nneg i32 %i.r to i64               ; 2 uses
  %min.iters.check = icmp eq i32 %i.r, 1
  %n.vec = and i64 %i.ez, 2147483646              ; 4 uses
  %i.fa = shl nuw nsw i64 %n.vec, 5
  %i.fb = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ez
  br label %.lr.ph.preheader

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit87, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ef) #18
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %.loopexit87, %.lr.ph93
  %.03091 = phi i32 [ %i.ei, %.lr.ph93 ], [ %i.jq, %.loopexit87 ]
  %i.fc = load i32, ptr %i.em, align 4, !tbaa !52
  %i.fd = add nsw i32 %i.fc, 1
  store i32 %i.fd, ptr %i.em, align 4, !tbaa !52
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !52
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2cv8MatShapeixEm.exit63
  %i.fe = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.ft, %_ZN2cv8MatShapeixEm.exit63 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ev, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2cv8MatShapeixEm.exit63 ] ; 6 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.fg = icmp ult i64 %indvars.iv, %i.ew
  br i1 %i.fg, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc44 unwind label %bb.o

.noexc44:                                         ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #16
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc44
  unreachable

bb.j:                                             ; preds = %.noexc44
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41: ; preds = %bb.j
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !14
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit75

bb.k:                                             ; preds = %.lr.ph
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !52 ; 3 uses
  %.not = icmp slt i32 %i.fe, %i.fo
  br i1 %.not, label %.lr.ph.i.i.i68, label %_ZN2cv8MatShapeixEm.exit54

_ZN2cv8MatShapeixEm.exit54:                       ; preds = %bb.k
  %i.fp = sdiv i32 %i.fe, %i.fo
  %i.fq = srem i32 %i.fe, %i.fo
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !52
  %i.ft = add nsw i32 %i.fs, %i.fp                ; 2 uses
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !52
  %i.fu = icmp samesign ult i64 %indvars.iv, %i.ex
  br i1 %i.fu, label %_ZN2cv8MatShapeixEm.exit63, label %bb.l

bb.l:                                             ; preds = %_ZN2cv8MatShapeixEm.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc60 unwind label %bb.o

.noexc60:                                         ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #16
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc60
  unreachable

bb.n:                                             ; preds = %.noexc60
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.n
end_hunk_0
