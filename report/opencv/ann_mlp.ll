Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ann_mlp?download=true
inline.NumInlined: 1164
inline.NumDeleted: 373
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv2ml11ANN_MLPImpl14train_backpropERKNS_3MatES4_S4_NS_12TermCriteriaE:bb.a
  br label %bb.co

._crit_edge356:                                   ; preds = %bb.cj, %._crit_edge350
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.ne = add nuw nsw i32 %.0185359, 1            ; 2 uses
  %exitcond393.not = icmp eq i32 %i.ne, %i.h
  br i1 %exitcond393.not, label %._crit_edge362, label %bb.aa, !llvm.loop !279

bb.co:                                            ; preds = %bb.cn, %bb.bi
  %.pn218.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn218.pn.pn.pn.pn.pn.pn, %bb.cn ], [ %i.lo, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.bc
  %.pn232.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn, %bb.bc ], [ %.pn218.pn.pn.pn.pn.pn.pn.pn, %bb.co ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.ar
  %.pn232.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn.pn, %bb.cp ], [ %i.kf, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.cx

._crit_edge362:                                   ; preds = %._crit_edge356, %bb.ad, %bb.z
  %.0185.lcssa = phi i32 [ 0, %bb.z ], [ %.0185359, %bb.ad ], [ %i.h, %._crit_edge356 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.nf = load ptr, ptr %17, align 8, !tbaa !124  ; 3 uses
  %.not.i.i277 = icmp eq ptr %i.nf, %i.ei
  %i.ng = icmp eq ptr %i.nf, null
  %or.cond.i = or i1 %.not.i.i277, %i.ng
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge362
  call void @_ZdaPv(ptr noundef nonnull %i.nf) #18
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit

_ZN2cv10AutoBufferIdLm136EED2Ev.exit:             ; preds = %._crit_edge362, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.bc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2cv10AutoBufferIdLm136EED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.nh, %.lr.ph.i.i.i ], [ %.pr.i, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #19
  %i.nh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.nh, %i.bc
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ni = ptrtoint ptr %.pr.i to i64
  %i.nj = sub i64 %i.aw, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.nj) #18
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.nk = load ptr, ptr %i.ay, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i278 = icmp eq ptr %.pr.i282, %i.nk
  br i1 %.not4.i.i.i278, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i279

.lr.ph.i.i.i279:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i280 = phi ptr [ %i.nr, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i ], [ %.pr.i282, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %i.nl = load ptr, ptr %.05.i.i.i280, align 8, !tbaa !142 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i.i279
  %i.nm = getelementptr inbounds nuw i8, ptr %.05.i.i.i280, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !151
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = ptrtoint ptr %i.nl to i64
  %i.nq = sub i64 %i.no, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.nq) #18
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.ct, %.lr.ph.i.i.i279
  %i.nr = getelementptr inbounds nuw i8, ptr %.05.i.i.i280, i64 24 ; 2 uses
  %.not.i.i.i281 = icmp eq ptr %i.nr, %i.nk
  br i1 %.not.i.i.i281, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i279, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %.not.i.i1.i283 = icmp eq ptr %.pr.i282, null
  br i1 %.not.i.i1.i283, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ns = load ptr, ptr %i.ax, align 8, !tbaa !138
  %i.nt = ptrtoint ptr %i.ns to i64
  %i.nu = ptrtoint ptr %.pr.i282 to i64
  %i.nv = sub i64 %i.nt, %i.nu
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i282, i64 noundef %i.nv) #18
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.nw = load ptr, ptr %i.az, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i284 = icmp eq ptr %.pr.i291, %i.nw
  br i1 %.not4.i.i.i284, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i292, label %.lr.ph.i.i.i285

.lr.ph.i.i.i285:                                  ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288
  %.05.i.i.i286 = phi ptr [ %i.od, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288 ], [ %.pr.i291, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.nx = load ptr, ptr %.05.i.i.i286, align 8, !tbaa !142 ; 3 uses
  %.not.i.i.i.i.i.i.i287 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i.i.i.i.i287, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i.i.i285
  %i.ny = getelementptr inbounds nuw i8, ptr %.05.i.i.i286, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !151
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = ptrtoint ptr %i.nx to i64
  %i.oc = sub i64 %i.oa, %i.ob
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.oc) #18
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288: ; preds = %bb.cv, %.lr.ph.i.i.i285
  %i.od = getelementptr inbounds nuw i8, ptr %.05.i.i.i286, i64 24 ; 2 uses
  %.not.i.i.i289 = icmp eq ptr %i.od, %i.nw
  br i1 %.not.i.i.i289, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i292, label %.lr.ph.i.i.i285, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i292: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit
  %.not.i.i1.i293 = icmp eq ptr %.pr.i291, null
  br i1 %.not.i.i1.i293, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit294, label %bb.cw

bb.cw:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i292
  %i.oe = load ptr, ptr %i.ba, align 8, !tbaa !138
  %i.of = ptrtoint ptr %i.oe to i64
  %i.og = ptrtoint ptr %.pr.i291 to i64
  %i.oh = sub i64 %i.of, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i291, i64 noundef %i.oh) #18
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit294

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit294:      ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i292, %bb.cw
  %i.oi = sdiv i32 %.0185.lcssa, %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  ret i32 %i.oi

bb.cx:                                            ; preds = %bb.cq, %bb.af
  %.pn232.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn.pn.pn, %bb.cq ], [ %i.hx, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.oj = load ptr, ptr %17, align 8, !tbaa !124  ; 3 uses
  %.not.i.i295 = icmp eq ptr %i.oj, %i.ei
  %i.ok = icmp eq ptr %i.oj, null
  %or.cond.i296 = or i1 %.not.i.i295, %i.ok
  br i1 %or.cond.i296, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit297, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @_ZdaPv(ptr noundef nonnull %i.oj) #18
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit297

_ZN2cv10AutoBufferIdLm136EED2Ev.exit297:          ; preds = %bb.cy, %bb.cx, %bb.ae
  %.pn232.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hw, %bb.ae ], [ %.pn232.pn.pn.pn.pn.pn.pn, %bb.cx ], [ %.pn232.pn.pn.pn.pn.pn.pn, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN2cv10AutoBufferIdLm136EED2Ev.exit297, %bb.v
  %.pn232.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn.pn.pn.pn.pn, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit297 ], [ %i.ed, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.da

bb.da:                                            ; preds = %bb.s, %.body, %bb.cz
  %.pn242.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cz ], [ %.pn242, %.body ], [ %i.dt, %bb.s ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #19
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.r
  %.pn242.pn.pn.pn = phi { ptr, i32 } [ %.pn242.pn.pn, %bb.da ], [ %i.ds, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #19
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.q
  %.pn242.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn242.pn.pn.pn, %bb.db ], [ %i.dr, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  resume { ptr, i32 } %.pn242.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv2ml11ANN_MLPImpl11train_rpropERKNS_3MatES4_S4_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, i64 %4, double %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::vector.11", align 8   ; 22 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %17 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %18 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %22 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %23 = alloca %"struct.cv::ml::ANN_MLPImpl::RPropLoop", align 8 ; 16 uses
  %24 = alloca %"class.cv::Range", align 4        ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator", align 1   ; 3 uses
  %.sroa.1.0.extract.shift = lshr i64 %4, 32
  %.sroa.1.0.extract.trunc = trunc nuw i64 %.sroa.1.0.extract.shift to i32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !120  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load double, ptr %i.d, align 8, !tbaa !96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load double, ptr %i.f, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !98 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load double, ptr %i.j, align 8, !tbaa !99 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = lshr i64 %i.r, 2                         ; 4 uses
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %sext = shl i64 %i.r, 30
  %i.u = ashr i64 %sext, 32                       ; 9 uses
  %i.v = icmp ugt i64 %i.u, 44343134792571037
  br i1 %i.v, label %.noexc, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #20
  unreachable

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.w = mul nuw nsw i64 %i.u, 208                ; 3 uses
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 5 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  %.08.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #19
  %i.y = add nsw i64 %.057.i.i.i.i.i, -1          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i150, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i150: ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.x, i64 %i.u ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17
          to label %.noexc158 unwind label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit252.thread ; 3 uses

.noexc158:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i150
  store ptr %i.ab, ptr %14, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ad = getelementptr inbounds nuw [208 x i8], ptr %i.ab, i64 %i.u
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !105
  br label %.lr.ph.i.i.i.i.i151

.lr.ph.i.i.i.i.i151:                              ; preds = %.lr.ph.i.i.i.i.i151, %.noexc158
  %.08.i.i.i.i.i152 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i151 ], [ %i.ab, %.noexc158 ] ; 2 uses
  %.057.i.i.i.i.i153 = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i151 ], [ %i.u, %.noexc158 ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i152) #19
  %i.af = add nsw i64 %.057.i.i.i.i.i153, -1      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i152, i64 208 ; 2 uses
  %.not.i.i.i.i.i154 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i154, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i162, label %.lr.ph.i.i.i.i.i151, !llvm.loop !2

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i162: ; preds = %.lr.ph.i.i.i.i.i151
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !37
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17
          to label %.lr.ph.i.i.i.i.i163 unwind label %bb.ac ; 3 uses

.lr.ph.i.i.i.i.i163:                              ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i162, %.lr.ph.i.i.i.i.i163
  %.08.i.i.i.i.i164 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i163 ], [ %i.ah, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i162 ] ; 2 uses
  %.057.i.i.i.i.i165 = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i163 ], [ %i.u, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i162 ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i164) #19
  %i.ai = add nsw i64 %.057.i.i.i.i.i165, -1      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i164, i64 208 ; 2 uses
  %.not.i.i.i.i.i166 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i166, label %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit, label %.lr.ph.i.i.i.i.i163, !llvm.loop !2

_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit: ; preds = %.lr.ph.i.i.i.i.i163
  %i.ak = getelementptr inbounds nuw [208 x i8], ptr %i.ah, i64 %i.u
  %i.al = ptrtoint ptr %i.ak to i64
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171

_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171:  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168
  %.sroa.18.0316356 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.aa, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 3 uses
  %.sroa.0294.0326349 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.x, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 9 uses
  %.0.lcssa.i.i.i.i.i336342 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.z, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 4 uses
  %.sroa.0286.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.ah, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 12 uses
  %.sroa.17.0 = phi i64 [ 0, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.al, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 2 uses
  %.0.lcssa.i.i.i.i.i167 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.aj, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 4 uses
  %i.am = icmp sgt i32 %i.t, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 432
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 224
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 432
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 224
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 16
  %wide.trip.count = and i64 %i.s, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv3MataSERKNS_7MatExprE.exit197
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv3MataSERKNS_7MatExprE.exit197 ] ; 8 uses
  %.0102397 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %_ZN2cv3MataSERKNS_7MatExprE.exit197 ]
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !80
  %i.ba = add nsw i32 %i.az, %.0102397            ; 4 uses
  %i.bb = getelementptr inbounds nuw [208 x i8], ptr %.sroa.0294.0326349, i64 %indvars.iv ; 2 uses
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.bd = getelementptr inbounds nuw [208 x i8], ptr %i.bc, i64 %indvars.iv ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !143 ; 6 uses
  %i.bg = icmp slt i32 %i.bf, 3
  br i1 %i.bg, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc172 unwind label %.loopexit.split-lp

.noexc172:                                        ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZNK2cv8internal14VecReaderProxyIiLi1EEclERSt6vectorIiSaIiEEm, ptr noundef nonnull @.str.14, i32 noundef 109) #20
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc172
  unreachable

bb.e:                                             ; preds = %.noexc172
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %12, align 8, !tbaa !32   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !31
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.body

bb.f:                                             ; preds = %bb.b
  %i.bn = icmp sgt i32 %i.bf, 0
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 84
  %i.bp = icmp eq i32 %i.bf, 2
  %i.bq = zext i1 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !80
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bt = icmp eq i32 %i.bf, 0
  %i.bu = zext i1 %i.bt to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bv = phi i32 [ %i.bs, %bb.g ], [ %i.bu, %bb.h ]
  %i.bw = icmp eq i32 %i.bf, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 84
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = icmp sgt i32 %i.bf, -1
  %i.ca = zext i1 %i.bz to i32
  %i.cb = select i1 %i.bw, i32 %i.by, i32 %i.ca
  %.sroa.2.0.insert.ext.i = zext i32 %i.cb to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bv to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.bb, i64 %.sroa.0.0.insert.insert.i, i32 noundef 6)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.cc = load double, ptr %i.ao, align 8, !tbaa !95
  %27 = insertelement <4 x double> poison, double %i.cc, i64 0
  %28 = shufflevector <4 x double> %27, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %28, ptr %16, align 8, !tbaa !91, !alias.scope !290
  store i32 -1056833530, ptr %15, align 8, !tbaa !62
  store ptr %16, ptr %i.aq, align 8, !tbaa !63
  store i64 17179869185, ptr %i.ap, align 8, !tbaa !80
  %i.cd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.k unwind label %bb.ad

bb.k:                                             ; preds = %bb.j
  %i.ce = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %bb.l unwind label %bb.ad      ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.cf = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw [208 x i8], ptr %i.cf, i64 %indvars.iv ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !143 ; 6 uses
  %i.cj = icmp slt i32 %i.ci, 3
  br i1 %i.cj, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc180 unwind label %.loopexit.split-lp364

.noexc180:                                        ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZNK2cv8internal14VecReaderProxyIiLi1EEclERSt6vectorIiSaIiEEm, ptr noundef nonnull @.str.14, i32 noundef 109) #20
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc180
  unreachable

bb.o:                                             ; preds = %.noexc180
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %10, align 8, !tbaa !32   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173: ; preds = %bb.o
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i174: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body181

bb.p:                                             ; preds = %bb.l
  %i.cq = icmp sgt i32 %i.ci, 0
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 84
  %i.cs = icmp eq i32 %i.ci, 2
  %i.ct = zext i1 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !80
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cw = icmp eq i32 %i.ci, 0
  %i.cx = zext i1 %i.cw to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cy = phi i32 [ %i.cv, %bb.q ], [ %i.cx, %bb.r ]
  %i.cz = icmp eq i32 %i.ci, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 84
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = icmp sgt i32 %i.ci, -1
  %i.dd = zext i1 %i.dc to i32
  %i.de = select i1 %i.cz, i32 %i.db, i32 %i.dd
  %.sroa.2.0.insert.ext.i176 = zext i32 %i.de to i64
  %.sroa.2.0.insert.shift.i177 = shl nuw i64 %.sroa.2.0.insert.ext.i176, 32
  %.sroa.0.0.insert.ext.i178 = zext i32 %i.cy to i64
  %.sroa.0.0.insert.insert.i179 = or disjoint i64 %.sroa.2.0.insert.shift.i177, %.sroa.0.0.insert.ext.i178
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %17, i64 %.sroa.0.0.insert.insert.i179, i32 noundef 1)
          to label %bb.t unwind label %.loopexit363

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw [208 x i8], ptr %.sroa.0286.0, i64 %indvars.iv
  %i.dg = load ptr, ptr %17, align 8, !tbaa !149  ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull align 8 dereferenceable(688) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.df, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.ae, !inline_history !3

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.t
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ar) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.as) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.at) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.dk = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw [208 x i8], ptr %i.dk, i64 %indvars.iv ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !143 ; 6 uses
  %i.do = icmp slt i32 %i.dn, 3
  br i1 %i.do, label %bb.x, label %bb.u

bb.u:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc192 unwind label %.loopexit.split-lp369

.noexc192:                                        ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8internal14VecReaderProxyIiLi1EEclERSt6vectorIiSaIiEEm, ptr noundef nonnull @.str.14, i32 noundef 109) #20
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.noexc192
  unreachable

bb.w:                                             ; preds = %.noexc192
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = load ptr, ptr %8, align 8, !tbaa !32    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i185: ; preds = %bb.w
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !31
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i186: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.body193

bb.x:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.dv = icmp sgt i32 %i.dn, 0
  br i1 %i.dv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 84
  %i.dx = icmp eq i32 %i.dn, 2
  %i.dy = zext i1 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !80
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.eb = icmp eq i32 %i.dn, 0
  %i.ec = zext i1 %i.eb to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ed = phi i32 [ %i.ea, %bb.y ], [ %i.ec, %bb.z ]
  %i.ee = icmp eq i32 %i.dn, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dl, i64 84
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = icmp sgt i32 %i.dn, -1
  %i.ei = zext i1 %i.eh to i32
  %i.ej = select i1 %i.ee, i32 %i.eg, i32 %i.ei
  %.sroa.2.0.insert.ext.i188 = zext i32 %i.ej to i64
  %.sroa.2.0.insert.shift.i189 = shl nuw i64 %.sroa.2.0.insert.ext.i188, 32
  %.sroa.0.0.insert.ext.i190 = zext i32 %i.ed to i64
  %.sroa.0.0.insert.insert.i191 = or disjoint i64 %.sroa.2.0.insert.shift.i189, %.sroa.0.0.insert.ext.i190
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %18, i64 %.sroa.0.0.insert.insert.i191, i32 noundef 6)
          to label %bb.ab unwind label %.loopexit368

bb.ab:                                            ; preds = %bb.aa
  %i.ek = load ptr, ptr %14, align 8, !tbaa !36
  %i.el = getelementptr inbounds nuw [208 x i8], ptr %i.ek, i64 %indvars.iv
  %i.em = load ptr, ptr %18, align 8, !tbaa !149  ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull align 8 dereferenceable(688) %18, ptr noundef nonnull align 8 dereferenceable(208) %i.el, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit197 unwind label %bb.af, !inline_history !3

_ZN2cv3MataSERKNS_7MatExprE.exit197:              ; preds = %bb.ab
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.av) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aw) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !284

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit252.thread: ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i150
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %.lr.ph.i.i.i254.preheader

bb.ac:                                            ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i162
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit243
end_hunk_0
