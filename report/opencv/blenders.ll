Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/blenders?download=true
inline.NumInlined: 723
inline.NumDeleted: 215
begin_hunk_0_@_ZN2cv6detail16MultiBandBlender5blendERKNS_17_InputOutputArrayES4_:bb.a
  store i64 0, ptr %i.n, align 8
  store i32 50987008, ptr %6, align 8, !tbaa !36
  store ptr %i.s, ptr %i.m, align 8, !tbaa !37
  invoke void @_ZN2cv6detail23normalizeUsingWeightMapERKNS_11_InputArrayERKNS_17_InputOutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.t = load i32, ptr %i.f, align 4, !tbaa !72
  %i.u = sext i32 %i.t to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.u
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !208

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.r

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !62
  invoke void @_ZN2cv4UMatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(184) %7, ptr noundef nonnull align 8 dereferenceable(184) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit unwind label %bb.l

_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit:              ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMataSEOS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.x, ptr noundef nonnull align 8 dereferenceable(184) %7)
          to label %bb.f unwind label %bb.m       ; 0 uses

bb.f:                                             ; preds = %_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62
  %i.ab = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMataSERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.aa)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !62  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.ac
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.g ] ; 2 uses
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i) #18
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !61
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit:     ; preds = %bb.g, %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !62  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.ai, %i.ag
  br i1 %.not.i.i27, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit32, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit, %.lr.ph.i.i.i.i28
  %.05.i.i.i.i29 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i28 ], [ %i.ag, %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit ] ; 2 uses
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i29) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i29, i64 184 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i30, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i31, label %.lr.ph.i.i.i.i28, !llvm.loop !0

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i31: ; preds = %.lr.ph.i.i.i.i28
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !61
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit32

_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit32:   ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN2cv4UMatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(184) %9, ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit32
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.ak, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.al, align 4, !tbaa !49
  store i32 17432576, ptr %8, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.am, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store double f0x3EE4F8B580000000, ptr %i.a, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833530, ptr %10, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.a, ptr %i.ao, align 8, !tbaa !37
  store i64 4294967297, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.ar, align 8
  store i32 34209792, ptr %11, align 8, !tbaa !36
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !37
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  invoke void @_ZN2cv6detail7Blender5blendERKNS_17_InputOutputArrayES4_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.k:                                             ; preds = %bb.i, %bb.f, %._crit_edge
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %7) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit32
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %9) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.k, %bb.d
  %.pn23.pn.pn = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.as, %bb.k ], [ %.pn18.pn.pn.pn, %bb.q ], [ %.pn, %bb.n ]
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail26restoreImageFromLaplacePyrERSt6vectorINS_4UMatESaIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.cv::UMat", align 8          ; 8 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %6 = alloca %"class.cv::Size_", align 8         ; 5 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !210
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %3, i32 noundef 0) #18
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.f = load ptr, ptr %0, align 8, !tbaa !62
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 184                 ; 2 uses
  %.01927 = add nsw i64 %i.j, -1                  ; 2 uses
  %.not28 = icmp eq i64 %.01927, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %bb.n, %bb.b
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.q

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.01930 = phi i64 [ %.01927, %.lr.ph ], [ %.019, %bb.n ] ; 3 uses
  %.019.in29 = phi i64 [ %i.j, %.lr.ph ], [ %.01930, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.x = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %i.y = getelementptr inbounds nuw [184 x i8], ptr %i.x, i64 %.01930
  store i32 0, ptr %i.k, align 8, !tbaa !48
  store i32 0, ptr %i.l, align 4, !tbaa !49
  store i32 17432576, ptr %4, align 8, !tbaa !36
  store ptr %i.y, ptr %i.m, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i64 0, ptr %i.o, align 8
  store i32 34209792, ptr %5, align 8, !tbaa !36
  store ptr %3, ptr %i.n, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.z = add i64 %.019.in29, -2                   ; 2 uses
  %i.aa = getelementptr inbounds nuw [184 x i8], ptr %i.x, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !75 ; 6 uses
  %i.ad = icmp slt i32 %i.ac, 3
  br i1 %i.ad, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #20
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  unreachable

bb.f:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !30
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.ak = icmp sgt i32 %i.ac, 0
  br i1 %i.ak, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %i.al = icmp eq i32 %i.ac, 0
  %i.am = zext i1 %i.al to i32
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 60 ; 2 uses
  %i.ao = icmp eq i32 %i.ac, 2
  %i.ap = zext i1 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !63 ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load i32, ptr %i.an, align 4, !tbaa !63
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %.thread.i
  %i.at = phi i32 [ %i.am, %.thread.i ], [ %i.ar, %bb.h ]
  %i.au = icmp sgt i32 %i.ac, -1
  %i.av = zext i1 %i.au to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = phi i32 [ %i.ar, %bb.i ], [ %i.at, %bb.j ]
  %i.ax = phi i32 [ %i.as, %bb.i ], [ %i.av, %bb.j ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.ax to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.aw to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %6, align 8
  invoke void @_ZN2cv5pyrUpERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef 4)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 0, ptr %i.p, align 8, !tbaa !48
  store i32 0, ptr %i.q, align 4, !tbaa !49
  store i32 17432576, ptr %7, align 8, !tbaa !36
  store ptr %3, ptr %i.r, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ay = load ptr, ptr %0, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw [184 x i8], ptr %i.ay, i64 %i.z ; 2 uses
  store i32 0, ptr %i.s, align 8, !tbaa !48
  store i32 0, ptr %i.t, align 4, !tbaa !49
  store i32 17432576, ptr %8, align 8, !tbaa !36
  store ptr %i.az, ptr %i.u, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i64 0, ptr %i.w, align 8
  store i32 34209792, ptr %9, align 8, !tbaa !36
  store ptr %i.az, ptr %i.v, align 8, !tbaa !37
  %i.ba = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i32 noundef -1)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.019 = add i64 %.01930, -1                     ; 2 uses
  %.not = icmp eq i64 %.019, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !209

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.body
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.o ], [ %eh.lpad-body, %.body ]
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn22.pn.pn.pn

bb.q:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv17distanceTransformERKNS_11_InputArrayERKNS_12_OutputArrayEiii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, i32 noundef) local_unnamed_addr #3

declare noundef double @_ZN2cv9thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv5pyrUpERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv8subtractERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN2cv6detail19createLaplacePyrGpuERKNS_11_InputArrayEiRSt6vectorINS_4UMatESaIS5_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 32, ptr %i.a, align 8, !tbaa !32
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !29
  %i.d = load i64, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) @.str.8, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !33
  %i.f = load ptr, ptr %3, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv6detail19createLaplacePyrGpuERKNS_11_InputArrayEiRSt6vectorINS_4UMatESaIS5_EE, ptr noundef nonnull @.str.1, i32 noundef 863) #20
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !tbaa !30
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN2cv6detail29restoreImageFromLaplacePyrGpuERSt6vectorINS_4UMatESaIS2_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 32, ptr %i.a, align 8, !tbaa !32
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !29
  %i.d = load i64, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) @.str.8, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !33
  %i.f = load ptr, ptr %1, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv6detail29restoreImageFromLaplacePyrGpuERSt6vectorINS_4UMatESaIS2_EE, ptr noundef nonnull @.str.1, i32 noundef 901) #20
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !tbaa !30
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6detail7BlenderD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv6detail7BlenderE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.b) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6detail7BlenderD0Ev(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv6detail7BlenderE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.a) #18, !inline_history !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.b) #18, !inline_history !69
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6detail14FeatherBlenderD2Ev(ptr noundef nonnull align 8 dead_on_return(768) dereferenceable(768) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv6detail14FeatherBlenderE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.b) #18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv6detail7BlenderE, i64 16), ptr %0, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.c) #18, !inline_history !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.d) #18, !inline_history !69
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6detail14FeatherBlenderD0Ev(ptr noundef nonnull align 8 dereferenceable(768) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv6detail14FeatherBlenderE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.a) #18, !inline_history !211
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.b) #18, !inline_history !211
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv6detail7BlenderE, i64 16), ptr %0, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.c) #18, !inline_history !212
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.d) #18, !inline_history !212
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 768) #19
  ret void
}
end_hunk_0
