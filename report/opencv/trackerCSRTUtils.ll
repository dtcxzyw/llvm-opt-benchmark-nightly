Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/trackerCSRTUtils?download=true
inline.NumInlined: 438
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN2cvL7chebwinEif:bb.a
._crit_edge65:                                    ; preds = %.lr.ph64.split.epil.preheader, %._crit_edge65.loopexit.unr-lcssa, %bb.a, %._crit_edge65.split.us, %.preheader
  ret void
}

declare void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv16get_features_hogERKNS_3MatEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %12 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 15 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 15 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %22 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.a = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.b, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !38
  store ptr %17, ptr %i.a, align 8, !tbaa !39
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef 70, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
          to label %bb.b unwind label %bb.cj

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.c = load i32, ptr %17, align 8, !tbaa !160   ; 2 uses
  %i.d = and i32 %i.c, 4064
  %i.e = icmp eq i32 %i.d, 64
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cvL13computeHOG32DERKNS_3MatERS0_iii, ptr noundef nonnull @.str.4, i32 noundef 272) #19
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %7, align 8, !tbaa !50     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !51
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body

bb.h:                                             ; preds = %bb.b
  %i.m = and i32 %i.c, 31
  %i.n = icmp eq i32 %i.m, 6
  br i1 %i.n, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cvL13computeHOG32DERKNS_3MatERS0_iii, ptr noundef nonnull @.str.4, i32 noundef 273) #19
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.i

bb.m:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %9, align 8, !tbaa !50     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.i: ; preds = %bb.m
  %i.t = load i64, ptr %i.r, align 8, !tbaa !51
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.i, %bb.l
  %.pn363.i = phi { ptr, i32 } [ %i.o, %bb.l ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.i ], [ %i.p, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body

bb.n:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !161  ; 6 uses
  %i.x = icmp slt i32 %i.w, 3
  br i1 %i.x, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.cl

.noexc:                                           ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #19
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc
  unreachable

bb.q:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %5, align 8, !tbaa !50     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !51
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.ae = icmp sgt i32 %i.w, 0
  br i1 %i.ae, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.af = icmp eq i32 %i.w, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.af, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %17, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.ag = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !45
  br label %_ZNK2cv8MatShapeclEv.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ah = icmp eq i32 %i.w, 0
  %i.ai = zext i1 %i.ah to i32
  br label %_ZNK2cv8MatShapeclEv.exit.i

_ZNK2cv8MatShapeclEv.exit.i:                      ; preds = %bb.t, %bb.s
  %i.aj = phi i32 [ %i.ag, %bb.s ], [ %i.ai, %bb.t ]
  %i.ak = icmp eq i32 %i.w, 2
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 84
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp sgt i32 %i.w, -1
  %i.ao = zext i1 %i.an to i32
  %i.ap = select i1 %i.ak, i32 %i.am, i32 %i.ao
  %i.aq = sitofp i32 %2 to double                 ; 3 uses
  %i.ar = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.as = insertelement <2 x i32> %i.ar, i32 %i.ap, i64 1
  %i.at = sitofp <2 x i32> %i.as to <2 x double>
  %i.au = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x double> %i.at, %i.av
  %i.ax = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.aw)
  %i.ay = fptosi <2 x double> %i.ax to <2 x i32>  ; 4 uses
  %i.az = extractelement <2 x i32> %i.ay, i64 0   ; 7 uses
  %i.ba = call i32 @llvm.smax.i32(i32 %i.az, i32 2) ; 2 uses
  %i.bb = extractelement <2 x i32> %i.ay, i64 1   ; 5 uses
  %i.bc = call i32 @llvm.smax.i32(i32 %i.bb, i32 2) ; 2 uses
  %.sroa.11.0.insert.ext.i = zext i32 %i.bb to i64 ; 2 uses
  %.sroa.11.0.insert.shift.i = shl nuw i64 %.sroa.11.0.insert.ext.i, 32
  %i.bd = mul i32 %2, %i.az                       ; 2 uses
  %i.be = mul i32 %2, %i.bb                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.bf = mul nsw i32 %i.az, 18
  %.sroa.0455.0.insert.ext.i = zext i32 %i.bf to i64
  %.sroa.0455.0.insert.insert.i = or disjoint i64 %.sroa.11.0.insert.shift.i, %.sroa.0455.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %12, i64 %.sroa.0455.0.insert.insert.i, i32 noundef 6)
          to label %.noexc24 unwind label %bb.cl

.noexc24:                                         ; preds = %_ZNK2cv8MatShapeclEv.exit.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #18
  %i.bg = load ptr, ptr %12, align 8, !tbaa !31, !noalias !162 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 8 dereferenceable(688) %12, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %.body.i

.body.i:                                          ; preds = %.noexc24
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.by

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %.noexc24
  %.sroa.0472.0.insert.insert.i = bitcast <2 x i32> %i.ay to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bl) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bm) #18
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bn) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, i64 %.sroa.0472.0.insert.insert.i, i32 noundef 6)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #18
  %i.bo = load ptr, ptr %14, align 8, !tbaa !31, !noalias !163 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i unwind label %.body389.i

.body389.i:                                       ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #18
  br label %bb.ab

_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i:            ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bt) #18
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bu) #18
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bv) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.bw = shl nuw nsw i32 %i.ba, 5
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.bc to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.bw to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, i64 %.sroa.0.0.insert.insert.i, i32 noundef 6)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i
  %i.bx = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit.i unwind label %bb.ad, !inline_history !1

_ZN2cv3MataSERKNS_7MatExprE.exit.i:               ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cb) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cc) #18
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cd) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.ce = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef 0)
          to label %bb.w unwind label %bb.bv      ; 5 uses

bb.w:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.cf = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 0)
          to label %bb.x unwind label %bb.bv      ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.cg = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 0)
          to label %bb.y unwind label %bb.bv      ; 11 uses

bb.y:                                             ; preds = %bb.x
  %i.ch = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef 0)
          to label %bb.z unwind label %bb.bv

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !21 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21 ; 5 uses
  %i.co = ptrtoaddr ptr %i.cn to i64              ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21 ; 37 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 9 uses
  %i.cs = icmp sgt i32 %i.be, 2
  br i1 %i.cs, label %.preheader490.lr.ph.i, label %.preheader489.i

.preheader490.lr.ph.i:                            ; preds = %bb.z
  %i.ct = icmp sgt i32 %i.bd, 2
  %i.cu = sub i64 0, %i.ce                        ; 3 uses
  br i1 %i.ct, label %.preheader490.lr.ph.split.i, label %.preheader489.i

.preheader490.lr.ph.split.i:                      ; preds = %.preheader490.lr.ph.i
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !19
  %i.cy = add nsw i32 %i.cx, -2
  %i.cz = load i32, ptr %i.cv, align 8, !tbaa !18
  %i.da = add nsw i32 %i.cz, -2
  %i.db = add nsw i32 %i.bd, -2
  %i.dc = add nsw i32 %i.be, -2
  br label %.preheader490.i

.preheader490.i:                                  ; preds = %._crit_edge.i, %.preheader490.lr.ph.split.i
  %storemerge495.i = phi i32 [ 1, %.preheader490.lr.ph.split.i ], [ %i.eo, %._crit_edge.i ] ; 4 uses
  %.sroa.speculated438.i = call i32 @llvm.smin.i32(i32 %i.da, i32 %storemerge495.i)
  %i.dd = sext i32 %.sroa.speculated438.i to i64
  %i.de = mul i64 %i.ce, %i.dd
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.cj, i64 %i.de
  %i.df = uitofp nneg i32 %storemerge495.i to double
  %i.dg = fadd double %i.df, 5.000000e-01
  %i.dh = fdiv double %i.dg, %i.aq
  %i.di = fadd double %i.dh, -5.000000e-01        ; 2 uses
  %i.dj = call double @llvm.floor.f64(double %i.di)
  %i.dk = fptosi double %i.dj to i32              ; 5 uses
  %i.dl = sitofp i32 %i.dk to double
  %i.dm = fsub double %i.di, %i.dl                ; 3 uses
  %i.dn = fsub double 1.000000e+00, %i.dm         ; 2 uses
  %i.do = icmp sgt i32 %i.dk, -1
  %i.dp = zext nneg i32 %i.dk to i64
  %i.dq = mul i64 %i.cf, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dq ; 2 uses
  %i.ds = add nsw i32 %i.dk, 1                    ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.bb               ; 2 uses
  %i.du = sext i32 %i.ds to i64
  %i.dv = mul i64 %i.cf, %i.du
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dv ; 2 uses
  br label %bb.af

.preheader489.i:                                  ; preds = %._crit_edge.i, %.preheader490.lr.ph.i, %bb.z
  %i.dx = icmp sgt i32 %i.bb, 0
  br i1 %i.dx, label %.lr.ph503.i, label %.preheader485.i

.lr.ph503.i:                                      ; preds = %.preheader489.i
  %i.dy = sext i32 %i.az to i64
  %.idx.i = shl nsw i64 %i.dy, 3                  ; 3 uses
  %i.dz = icmp sgt i32 %i.az, 0
  br i1 %i.dz, label %.lr.ph.preheader.i.preheader, label %.preheader485.i

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph503.i
  %i.ea = shl i64 %i.cf, 3
  %i.eb = mul i64 %i.cg, -8
  %i.ec = xor i64 %i.co, -1
  %i.ed = add i64 %i.co, 8
  %i.ee = add i64 %.idx.i, %i.co
  %i.ef = shl i64 %i.cg, 3
  %i.eg = add i64 %.idx.i, %i.co
  %i.eh = shl i64 %i.cg, 3
  %i.ei = add i64 %i.co, 8
  %i.ej = xor i64 %i.co, -1
  %i.ek = mul i64 %i.cg, -8
  br label %.lr.ph.preheader.i

bb.aa:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.body389.i
  %.pn365.i = phi { ptr, i32 } [ %i.bs, %.body389.i ], [ %i.el, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.bx

bb.ac:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.v
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn367.i = phi { ptr, i32 } [ %i.en, %bb.ad ], [ %i.em, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bw

._crit_edge.i:                                    ; preds = %bb.bn
  %i.eo = add nuw nsw i32 %storemerge495.i, 1
  %exitcond540.not.i = icmp eq i32 %storemerge495.i, %i.dc
  br i1 %exitcond540.not.i, label %.preheader489.i, label %.preheader490.i, !llvm.loop !142

bb.af:                                            ; preds = %bb.bn, %.preheader490.i
  %storemerge379494.i = phi i32 [ 1, %.preheader490.i ], [ %i.jz, %bb.bn ] ; 4 uses
  %.sroa.speculated442.i = call i32 @llvm.smin.i32(i32 %i.cy, i32 %storemerge379494.i)
  %i.ep = mul nsw i32 %.sroa.speculated442.i, 3
  %i.eq = sext i32 %i.ep to i64
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.eq ; 10 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %gep.i, i64 %i.ce
  %i.es = load double, ptr %i.er, align 8, !tbaa !53
  %i.et = getelementptr inbounds [8 x i8], ptr %gep.i, i64 %i.cu
  %i.eu = load double, ptr %i.et, align 8, !tbaa !53
  %i.ev = fsub double %i.es, %i.eu                ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %gep.i, i64 24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !53
end_hunk_0
begin_hunk_1_@_ZN2cv16get_features_hogERKNS_3MatEi:bb.a
bb.aj:                                            ; preds = %bb.ai
  %i.gx = fneg double %i.gv                       ; 2 uses
  %i.gy = fcmp olt double %.1338.i, %i.gx
  br i1 %i.gy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.1338.1.i = phi double [ %.1338.i, %bb.aj ], [ %i.gx, %bb.ak ], [ %i.gv, %bb.ai ] ; 3 uses
  %.1336.1.i = phi i32 [ %.1336.i, %bb.aj ], [ 10, %bb.ak ], [ 1, %bb.ai ]
  %i.gz = fmul double %.1344.i, 6.428000e-01      ; 2 uses
  %i.ha = call double @llvm.fmuladd.f64(double %.1342.i, double 7.660000e-01, double %i.gz) ; 3 uses
  %i.hb = fcmp ogt double %i.ha, %.1338.1.i
  br i1 %i.hb, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hc = fneg double %i.ha                       ; 2 uses
  %i.hd = fcmp olt double %.1338.1.i, %i.hc
  br i1 %i.hd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.1338.2.i = phi double [ %.1338.1.i, %bb.am ], [ %i.hc, %bb.an ], [ %i.ha, %bb.al ] ; 3 uses
  %.1336.2.i = phi i32 [ %.1336.1.i, %bb.am ], [ 11, %bb.an ], [ 2, %bb.al ]
  %i.he = fmul double %.1344.i, 8.660000e-01      ; 2 uses
  %i.hf = call double @llvm.fmuladd.f64(double %.1342.i, double 5.000000e-01, double %i.he) ; 3 uses
  %i.hg = fcmp ogt double %i.hf, %.1338.2.i
  br i1 %i.hg, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hh = fneg double %i.hf                       ; 2 uses
  %i.hi = fcmp olt double %.1338.2.i, %i.hh
  br i1 %i.hi, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.1338.3.i = phi double [ %.1338.2.i, %bb.ap ], [ %i.hh, %bb.aq ], [ %i.hf, %bb.ao ] ; 3 uses
  %.1336.3.i = phi i32 [ %.1336.2.i, %bb.ap ], [ 12, %bb.aq ], [ 3, %bb.ao ]
  %i.hj = fmul double %.1344.i, 9.848000e-01      ; 2 uses
  %i.hk = call double @llvm.fmuladd.f64(double %.1342.i, double 1.736000e-01, double %i.hj) ; 3 uses
  %i.hl = fcmp ogt double %i.hk, %.1338.3.i
  br i1 %i.hl, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hm = fneg double %i.hk                       ; 2 uses
  %i.hn = fcmp olt double %.1338.3.i, %i.hm
  br i1 %i.hn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.1338.4.i = phi double [ %.1338.3.i, %bb.as ], [ %i.hm, %bb.at ], [ %i.hk, %bb.ar ] ; 3 uses
  %.1336.4.i = phi i32 [ %.1336.3.i, %bb.as ], [ 13, %bb.at ], [ 4, %bb.ar ]
  %i.ho = call double @llvm.fmuladd.f64(double %.1342.i, double -1.736000e-01, double %i.hj) ; 3 uses
  %i.hp = fcmp ogt double %i.ho, %.1338.4.i
  br i1 %i.hp, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hq = fneg double %i.ho                       ; 2 uses
  %i.hr = fcmp olt double %.1338.4.i, %i.hq
  br i1 %i.hr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.1338.5.i = phi double [ %.1338.4.i, %bb.av ], [ %i.hq, %bb.aw ], [ %i.ho, %bb.au ] ; 3 uses
  %.1336.5.i = phi i32 [ %.1336.4.i, %bb.av ], [ 14, %bb.aw ], [ 5, %bb.au ]
  %i.hs = call double @llvm.fmuladd.f64(double %.1342.i, double -5.000000e-01, double %i.he) ; 3 uses
  %i.ht = fcmp ogt double %i.hs, %.1338.5.i
  br i1 %i.ht, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hu = fneg double %i.hs                       ; 2 uses
  %i.hv = fcmp olt double %.1338.5.i, %i.hu
  br i1 %i.hv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.1338.6.i = phi double [ %.1338.5.i, %bb.ay ], [ %i.hu, %bb.az ], [ %i.hs, %bb.ax ] ; 3 uses
  %.1336.6.i = phi i32 [ %.1336.5.i, %bb.ay ], [ 15, %bb.az ], [ 6, %bb.ax ]
  %i.hw = call double @llvm.fmuladd.f64(double %.1342.i, double -7.660000e-01, double %i.gz) ; 3 uses
  %i.hx = fcmp ogt double %i.hw, %.1338.6.i
  br i1 %i.hx, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hy = fneg double %i.hw                       ; 2 uses
  %i.hz = fcmp olt double %.1338.6.i, %i.hy
  br i1 %i.hz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.1338.7.i = phi double [ %.1338.6.i, %bb.bb ], [ %i.hy, %bb.bc ], [ %i.hw, %bb.ba ] ; 2 uses
  %.1336.7.i = phi i32 [ %.1336.6.i, %bb.bb ], [ 16, %bb.bc ], [ 7, %bb.ba ]
  %i.ia = call double @llvm.fmuladd.f64(double %.1342.i, double f0xBFEE1205BC01A36E, double %i.gu) ; 2 uses
  %i.ib = fcmp ogt double %i.ia, %.1338.7.i
  %i.ic = fneg double %i.ia
  %i.id = fcmp olt double %.1338.7.i, %i.ic
  %spec.select.i = select i1 %i.id, i32 17, i32 %.1336.7.i
  %.1336.8.i = select i1 %i.ib, i32 8, i32 %spec.select.i ; 4 uses
  %.1340.i = select i1 %i.go, double %i.fc, double %.0339.i
  %i.ie = uitofp nneg i32 %storemerge379494.i to double
  %i.if = fadd double %i.ie, 5.000000e-01
  %i.ig = fdiv double %i.if, %i.aq
  %i.ih = fadd double %i.ig, -5.000000e-01        ; 2 uses
  %i.ii = call double @llvm.floor.f64(double %i.ih)
  %i.ij = fptosi double %i.ii to i32              ; 7 uses
  %i.ik = sitofp i32 %i.ij to double
  %i.il = fsub double %i.ih, %i.ik                ; 3 uses
  %i.im = fsub double 1.000000e+00, %i.il         ; 2 uses
  %sqrt.i = call double @llvm.sqrt.f64(double %.1340.i) ; 4 uses
  %i.in = icmp sgt i32 %i.ij, -1
  %i.io = or i32 %i.ij, %i.dk
  %or.cond.i = icmp sgt i32 %i.io, -1
  br i1 %or.cond.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ip = fmul double %i.dn, %i.im
  %i.iq = mul nuw nsw i32 %i.ij, 18
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ir
  %i.it = zext nneg i32 %.1336.8.i to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.it ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !53
  %i.iw = call double @llvm.fmuladd.f64(double %i.ip, double %sqrt.i, double %i.iv)
  store double %i.iw, ptr %i.iu, align 8, !tbaa !53
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.do, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ix = add nsw i32 %i.ij, 1                    ; 2 uses
  %i.iy = icmp slt i32 %i.ix, %i.az
  br i1 %i.iy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.iz = fmul double %i.dn, %i.il
  %i.ja = mul nsw i32 %i.ix, 18
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.jb
  %i.jd = zext nneg i32 %.1336.8.i to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jd ; 2 uses
  %i.jf = load double, ptr %i.je, align 8, !tbaa !53
  %i.jg = call double @llvm.fmuladd.f64(double %i.iz, double %sqrt.i, double %i.jf)
  store double %i.jg, ptr %i.je, align 8, !tbaa !53
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %or.cond3.i = and i1 %i.dt, %i.in
  br i1 %or.cond3.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jh = fmul double %i.dm, %i.im
  %i.ji = mul nuw nsw i32 %i.ij, 18
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.jj
  %i.jl = zext nneg i32 %.1336.8.i to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jl ; 2 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !53
  %i.jo = call double @llvm.fmuladd.f64(double %i.jh, double %sqrt.i, double %i.jn)
  store double %i.jo, ptr %i.jm, align 8, !tbaa !53
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  br i1 %i.dt, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.jp = add nsw i32 %i.ij, 1                    ; 2 uses
  %i.jq = icmp slt i32 %i.jp, %i.az
  br i1 %i.jq, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jr = fmul double %i.dm, %i.il
  %i.js = mul nsw i32 %i.jp, 18
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.jt
  %i.jv = zext nneg i32 %.1336.8.i to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jv ; 2 uses
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !53
  %i.jy = call double @llvm.fmuladd.f64(double %i.jr, double %sqrt.i, double %i.jx)
  store double %i.jy, ptr %i.jw, align 8, !tbaa !53
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.jz = add nuw nsw i32 %storemerge379494.i, 1
  %exitcond.not.i = icmp eq i32 %storemerge379494.i, %i.db
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.af, !llvm.loop !143

.preheader488.i.split:                            ; preds = %._crit_edge501.i.loopexit
  %23 = icmp sgt <2 x i32> %i.ay, splat (i32 2)   ; 2 uses
  %24 = extractelement <2 x i1> %23, i64 0
  %25 = extractelement <2 x i1> %23, i64 1
  %or.cond = select i1 %25, i1 %24, i1 false
  br i1 %or.cond, label %.preheader487.preheader.i, label %.preheader485.i

.preheader487.preheader.i:                        ; preds = %.preheader488.i.split
  %i.ka = add nsw i32 %i.bc, -1
  %i.kb = add nsw i32 %i.ba, -1
  %wide.trip.count554.i = zext nneg i32 %i.ka to i64
  %wide.trip.count549.i = zext nneg i32 %i.kb to i64
  br label %.preheader487.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %._crit_edge501.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge501.i.loopexit ], [ 0, %.lr.ph.preheader.i.preheader ] ; 8 uses
  %i.kc = mul i64 %indvars.iv.i, %i.cg
  %i.kd = getelementptr [8 x i8], ptr %i.cn, i64 %i.kc ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %.idx.i
  %i.kf = mul i64 %indvars.iv.i, %i.cf
  %i.kg = getelementptr [8 x i8], ptr %i.cl, i64 %i.kf ; 6 uses
  %i.kh = mul i64 %indvars.iv.i, %i.eh            ; 2 uses
  %i.ki = add i64 %i.eg, %i.kh
  %i.kj = add i64 %i.ei, %i.kh
  %i.kk = call i64 @llvm.umax.i64(i64 %i.ki, i64 %i.kj)
  %i.kl = mul i64 %indvars.iv.i, %i.ek
  %i.km = add i64 %i.kl, %i.ej
  %i.kn = add i64 %i.kk, %i.km
  %i.ko = lshr i64 %i.kn, 3                       ; 2 uses
  %i.kp = add nuw nsw i64 %i.ko, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.ko, 0
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.kq = mul i64 %indvars.iv.i, %i.ef            ; 3 uses
  %i.kr = add i64 %i.ee, %i.kq
  %i.ks = add i64 %i.ed, %i.kq
  %i.kt = call i64 @llvm.umax.i64(i64 %i.kr, i64 %i.ks)
  %i.ku = mul i64 %indvars.iv.i, %i.eb
  %i.kv = add i64 %i.ku, %i.ec
  %i.kw = add i64 %i.kt, %i.kv                    ; 2 uses
  %i.kx = lshr i64 %i.kw, 3
  %i.ky = and i64 %i.kw, -8
  %i.kz = getelementptr i8, ptr %i.cn, i64 %i.kq
  %i.la = getelementptr i8, ptr %i.kz, i64 8
  %i.lb = getelementptr i8, ptr %i.la, i64 %i.ky
  %i.lc = mul i64 %indvars.iv.i, %i.ea
  %i.ld = mul i64 %i.kx, 144
  %i.le = getelementptr i8, ptr %i.cl, i64 %i.lc
  %i.lf = getelementptr i8, ptr %i.le, i64 144
  %i.lg = getelementptr i8, ptr %i.lf, i64 %i.ld
  %bound0 = icmp ult ptr %i.kd, %i.lg
  %bound1 = icmp ult ptr %i.kg, %i.lb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kp, 4611686018427387902     ; 4 uses
  %i.lh = shl i64 %n.vec, 3
  %i.li = getelementptr i8, ptr %i.kd, i64 %i.lh
  %i.lj = mul i64 %n.vec, 144
  %i.lk = getelementptr i8, ptr %i.kg, i64 %i.lj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ll = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.kd, i64 %i.ll ; 10 uses
  %i.lm = mul i64 %index, 144                     ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.kg, i64 %i.lm ; 18 uses
  %i.ln = getelementptr i8, ptr %i.kg, i64 %i.lm  ; 18 uses
  %next.gep113 = getelementptr i8, ptr %i.ln, i64 144
  store <2 x double> zeroinitializer, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.lo = load double, ptr %next.gep112, align 8, !tbaa !53, !alias.scope !165
  %i.lp = load double, ptr %next.gep113, align 8, !tbaa !53, !alias.scope !165
  %i.lq = insertelement <2 x double> poison, double %i.lo, i64 0
  %i.lr = insertelement <2 x double> %i.lq, double %i.lp, i64 1
  %i.ls = getelementptr inbounds nuw i8, ptr %next.gep112, i64 72
  %i.lt = getelementptr i8, ptr %i.ln, i64 216
  %i.lu = load double, ptr %i.ls, align 8, !tbaa !53, !alias.scope !165
  %i.lv = load double, ptr %i.lt, align 8, !tbaa !53, !alias.scope !165
  %i.lw = insertelement <2 x double> poison, double %i.lu, i64 0
  %i.lx = insertelement <2 x double> %i.lw, double %i.lv, i64 1
  %i.ly = fadd <2 x double> %i.lr, %i.lx          ; 2 uses
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.ly, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.lz, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.ma = getelementptr inbounds nuw i8, ptr %next.gep112, i64 8
  %i.mb = getelementptr i8, ptr %i.ln, i64 152
  %i.mc = load double, ptr %i.ma, align 8, !tbaa !53, !alias.scope !165
  %i.md = load double, ptr %i.mb, align 8, !tbaa !53, !alias.scope !165
  %i.me = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.mf = insertelement <2 x double> %i.me, double %i.md, i64 1
  %i.mg = getelementptr inbounds nuw i8, ptr %next.gep112, i64 80
  %i.mh = getelementptr i8, ptr %i.ln, i64 224
  %i.mi = load double, ptr %i.mg, align 8, !tbaa !53, !alias.scope !165
  %i.mj = load double, ptr %i.mh, align 8, !tbaa !53, !alias.scope !165
  %i.mk = insertelement <2 x double> poison, double %i.mi, i64 0
  %i.ml = insertelement <2 x double> %i.mk, double %i.mj, i64 1
  %i.mm = fadd <2 x double> %i.mf, %i.ml          ; 2 uses
  %i.mn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> %i.mm, <2 x double> %i.lz) ; 2 uses
  store <2 x double> %i.mn, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.mo = getelementptr inbounds nuw i8, ptr %next.gep112, i64 16
  %i.mp = getelementptr i8, ptr %i.ln, i64 160
  %i.mq = load double, ptr %i.mo, align 8, !tbaa !53, !alias.scope !165
  %i.mr = load double, ptr %i.mp, align 8, !tbaa !53, !alias.scope !165
  %i.ms = insertelement <2 x double> poison, double %i.mq, i64 0
  %i.mt = insertelement <2 x double> %i.ms, double %i.mr, i64 1
  %i.mu = getelementptr inbounds nuw i8, ptr %next.gep112, i64 88
  %i.mv = getelementptr i8, ptr %i.ln, i64 232
  %i.mw = load double, ptr %i.mu, align 8, !tbaa !53, !alias.scope !165
  %i.mx = load double, ptr %i.mv, align 8, !tbaa !53, !alias.scope !165
  %i.my = insertelement <2 x double> poison, double %i.mw, i64 0
  %i.mz = insertelement <2 x double> %i.my, double %i.mx, i64 1
  %i.na = fadd <2 x double> %i.mt, %i.mz          ; 2 uses
  %i.nb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> %i.na, <2 x double> %i.mn) ; 2 uses
  store <2 x double> %i.nb, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.nc = getelementptr inbounds nuw i8, ptr %next.gep112, i64 24
  %i.nd = getelementptr i8, ptr %i.ln, i64 168
  %i.ne = load double, ptr %i.nc, align 8, !tbaa !53, !alias.scope !165
  %i.nf = load double, ptr %i.nd, align 8, !tbaa !53, !alias.scope !165
  %i.ng = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.nh = insertelement <2 x double> %i.ng, double %i.nf, i64 1
  %i.ni = getelementptr inbounds nuw i8, ptr %next.gep112, i64 96
  %i.nj = getelementptr i8, ptr %i.ln, i64 240
  %i.nk = load double, ptr %i.ni, align 8, !tbaa !53, !alias.scope !165
  %i.nl = load double, ptr %i.nj, align 8, !tbaa !53, !alias.scope !165
  %i.nm = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.nn = insertelement <2 x double> %i.nm, double %i.nl, i64 1
  %i.no = fadd <2 x double> %i.nh, %i.nn          ; 2 uses
  %i.np = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.no, <2 x double> %i.no, <2 x double> %i.nb) ; 2 uses
  store <2 x double> %i.np, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.nq = getelementptr inbounds nuw i8, ptr %next.gep112, i64 32
  %i.nr = getelementptr i8, ptr %i.ln, i64 176
  %i.ns = load double, ptr %i.nq, align 8, !tbaa !53, !alias.scope !165
  %i.nt = load double, ptr %i.nr, align 8, !tbaa !53, !alias.scope !165
  %i.nu = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.nv = insertelement <2 x double> %i.nu, double %i.nt, i64 1
  %i.nw = getelementptr inbounds nuw i8, ptr %next.gep112, i64 104
  %i.nx = getelementptr i8, ptr %i.ln, i64 248
  %i.ny = load double, ptr %i.nw, align 8, !tbaa !53, !alias.scope !165
  %i.nz = load double, ptr %i.nx, align 8, !tbaa !53, !alias.scope !165
  %i.oa = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.ob = insertelement <2 x double> %i.oa, double %i.nz, i64 1
  %i.oc = fadd <2 x double> %i.nv, %i.ob          ; 2 uses
  %i.od = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oc, <2 x double> %i.oc, <2 x double> %i.np) ; 2 uses
  store <2 x double> %i.od, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.oe = getelementptr inbounds nuw i8, ptr %next.gep112, i64 40
  %i.of = getelementptr i8, ptr %i.ln, i64 184
  %i.og = load double, ptr %i.oe, align 8, !tbaa !53, !alias.scope !165
  %i.oh = load double, ptr %i.of, align 8, !tbaa !53, !alias.scope !165
  %i.oi = insertelement <2 x double> poison, double %i.og, i64 0
  %i.oj = insertelement <2 x double> %i.oi, double %i.oh, i64 1
  %i.ok = getelementptr inbounds nuw i8, ptr %next.gep112, i64 112
  %i.ol = getelementptr i8, ptr %i.ln, i64 256
  %i.om = load double, ptr %i.ok, align 8, !tbaa !53, !alias.scope !165
  %i.on = load double, ptr %i.ol, align 8, !tbaa !53, !alias.scope !165
  %i.oo = insertelement <2 x double> poison, double %i.om, i64 0
  %i.op = insertelement <2 x double> %i.oo, double %i.on, i64 1
  %i.oq = fadd <2 x double> %i.oj, %i.op          ; 2 uses
  %i.or = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> %i.oq, <2 x double> %i.od) ; 2 uses
  store <2 x double> %i.or, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.os = getelementptr inbounds nuw i8, ptr %next.gep112, i64 48
  %i.ot = getelementptr i8, ptr %i.ln, i64 192
  %i.ou = load double, ptr %i.os, align 8, !tbaa !53, !alias.scope !165
  %i.ov = load double, ptr %i.ot, align 8, !tbaa !53, !alias.scope !165
  %i.ow = insertelement <2 x double> poison, double %i.ou, i64 0
  %i.ox = insertelement <2 x double> %i.ow, double %i.ov, i64 1
  %i.oy = getelementptr inbounds nuw i8, ptr %next.gep112, i64 120
  %i.oz = getelementptr i8, ptr %i.ln, i64 264
  %i.pa = load double, ptr %i.oy, align 8, !tbaa !53, !alias.scope !165
  %i.pb = load double, ptr %i.oz, align 8, !tbaa !53, !alias.scope !165
  %i.pc = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pd = insertelement <2 x double> %i.pc, double %i.pb, i64 1
  %i.pe = fadd <2 x double> %i.ox, %i.pd          ; 2 uses
  %i.pf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pe, <2 x double> %i.pe, <2 x double> %i.or) ; 2 uses
  store <2 x double> %i.pf, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.pg = getelementptr inbounds nuw i8, ptr %next.gep112, i64 56
  %i.ph = getelementptr i8, ptr %i.ln, i64 200
  %i.pi = load double, ptr %i.pg, align 8, !tbaa !53, !alias.scope !165
  %i.pj = load double, ptr %i.ph, align 8, !tbaa !53, !alias.scope !165
  %i.pk = insertelement <2 x double> poison, double %i.pi, i64 0
  %i.pl = insertelement <2 x double> %i.pk, double %i.pj, i64 1
  %i.pm = getelementptr inbounds nuw i8, ptr %next.gep112, i64 128
  %i.pn = getelementptr i8, ptr %i.ln, i64 272
  %i.po = load double, ptr %i.pm, align 8, !tbaa !53, !alias.scope !165
  %i.pp = load double, ptr %i.pn, align 8, !tbaa !53, !alias.scope !165
  %i.pq = insertelement <2 x double> poison, double %i.po, i64 0
  %i.pr = insertelement <2 x double> %i.pq, double %i.pp, i64 1
  %i.ps = fadd <2 x double> %i.pl, %i.pr          ; 2 uses
  %i.pt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ps, <2 x double> %i.ps, <2 x double> %i.pf) ; 2 uses
  store <2 x double> %i.pt, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.pu = getelementptr inbounds nuw i8, ptr %next.gep112, i64 64
  %i.pv = getelementptr i8, ptr %i.ln, i64 208
  %i.pw = load double, ptr %i.pu, align 8, !tbaa !53, !alias.scope !165
  %i.px = load double, ptr %i.pv, align 8, !tbaa !53, !alias.scope !165
  %i.py = insertelement <2 x double> poison, double %i.pw, i64 0
  %i.pz = insertelement <2 x double> %i.py, double %i.px, i64 1
  %i.qa = getelementptr inbounds nuw i8, ptr %next.gep112, i64 136
  %i.qb = getelementptr i8, ptr %i.ln, i64 280
  %i.qc = load double, ptr %i.qa, align 8, !tbaa !53, !alias.scope !165
  %i.qd = load double, ptr %i.qb, align 8, !tbaa !53, !alias.scope !165
  %i.qe = insertelement <2 x double> poison, double %i.qc, i64 0
  %i.qf = insertelement <2 x double> %i.qe, double %i.qd, i64 1
  %i.qg = fadd <2 x double> %i.pz, %i.qf          ; 2 uses
  %i.qh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.qg, <2 x double> %i.pt)
end_hunk_1
