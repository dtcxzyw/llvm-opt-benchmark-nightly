Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/onnx_importer2?download=true
inline.NumInlined: 6221
inline.NumDeleted: 1408
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter29parseFileEPKc:bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %6, align 8, !tbaa !94    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.n
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.u
  %i.bq = load i64, ptr %i.n, align 8, !tbaa !15
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.t
  %.pn15 = phi { ptr, i32 } [ %i.bm, %bb.t ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.bn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ai

bb.v:                                             ; preds = %bb.af, %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.w:                                             ; preds = %bb.q
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.x:                                             ; preds = %bb.r
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %8, align 8, !tbaa !94    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.x
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.w
  %.pn19 = phi { ptr, i32 } [ %i.bt, %bb.w ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.bu, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ah

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cb = invoke noundef zeroext i1 @_ZN6google8protobuf11MessageLite16ParseFromIstreamEPSi(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull %7)
          to label %bb.z unwind label %bb.v

bb.z:                                             ; preds = %bb.y
  br i1 %i.cb, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.5, ptr noundef nonnull %2)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter29parseFileEPKc, ptr noundef nonnull @.str.3, i32 noundef 346) #26
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.ae:                                            ; preds = %bb.ab
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %9, align 8, !tbaa !94    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.ae
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !15
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.ad
  %.pn17 = phi { ptr, i32 } [ %i.cc, %bb.ad ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.cd, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ah

bb.af:                                            ; preds = %bb.z
  invoke void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseModelEv(ptr dead_on_unwind writable sret(%"class.cv::dnn::dnn5_v20260605::Net") align 8 %0, ptr noundef nonnull align 8 dereferenceable(761) %1)
          to label %bb.ag unwind label %bb.v

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt13basic_fstreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(264) %7, ptr noundef nonnull @_ZTTSt13basic_fstreamIcSt11char_traitsIcEE) #24
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 264
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cj) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.v
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.bs, %bb.v ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ]
  call void @_ZNSt13basic_fstreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(264) %7, ptr noundef nonnull @_ZTTSt13basic_fstreamIcSt11char_traitsIcEE) #24
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 264
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ck) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %bb.ah ], [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn19.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

declare void @_ZN2cv5utils2fs9getParentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

declare void @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6google8protobuf11MessageLite16ParseFromIstreamEPSi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseModelEv(ptr dead_on_unwind noalias writable sret(%"class.cv::dnn::dnn5_v20260605::Net") align 8 %0, ptr noundef nonnull align 8 dereferenceable(761) initializes((528, 532), (592, 596)) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"struct.cv::Ptr.4", align 8        ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 528
  store i32 0, ptr %i.a, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i32 0, ptr %i.b, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.e, %bb.a ] ; 6 uses
  %i.f = load ptr, ptr %.06.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !15
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !15
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #27
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !123

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.a
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = shl i64 %i.u, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.v, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 596 ; 2 uses
  store i8 0, ptr %i.w, align 4, !tbaa !124
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !104  ; 2 uses
  %i.z = and i32 %i.y, 16
  %.not159 = icmp eq i32 %i.z, 0                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %14 = load ptr, ptr %i.aa, align 8              ; 3 uses
  %15 = icmp ne ptr %14, null
  %16 = select i1 %.not159, i1 true, i1 %15
  tail call void @llvm.assume(i1 %16)
  br i1 %.not159, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseModelEv, ptr noundef nonnull @.str.3, i32 noundef 689) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ac, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.df

bb.g:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE5clearEv.exit
  %i.ai = icmp eq ptr %14, null
  br i1 %i.ai, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !125 ; 2 uses
  %i.al = trunc i64 %i.ak to i1
  %i.am = and i64 %i.ak, -4
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  br i1 %i.al, label %bb.i, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, !prof !105

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !126
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.ao, %bb.i ], [ %i.an, %bb.h ]
  %i.ap = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx10GraphProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !128
  %.pre = load i32, ptr %i.x, align 8, !tbaa !104
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, %bb.g
  %i.aq = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %i.ar = phi ptr [ %i.ap, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %14, %bb.g ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.at, align 8, !tbaa !12
  store i8 0, ptr %i.as, align 8, !tbaa !15
  %i.au = trunc i32 %i.aq to i1
  br i1 %i.au, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !129
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, -2
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 448
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %._crit_edge unwind label %bb.l

._crit_edge:                                      ; preds = %bb.k
  %.pre165 = load i32, ptr %i.x, align 8, !tbaa !104
  br label %bb.m

bb.l:                                             ; preds = %bb.n, %bb.k, %bb.ay
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.m:                                             ; preds = %._crit_edge, %bb.j
  %i.bc = phi i32 [ %.pre165, %._crit_edge ], [ %i.aq, %bb.j ]
  %i.bd = and i32 %i.bc, 2
  %.not160 = icmp eq i32 %i.bd, 0
  br i1 %.not160, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit73, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !129
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = and i64 %i.bg, -2
  %i.bi = inttoptr i64 %i.bh to ptr
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit73 unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit73: ; preds = %bb.n, %bb.m
  %i.bj = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.p unwind label %bb.o       ; 3 uses

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit73
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit73
  %.not = icmp eq ptr %i.bj, null                 ; 2 uses
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !130
  %i.bn = icmp slt i32 %i.bm, 4
  br i1 %i.bn, label %bb.ay, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.s unwind label %bb.ao

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.50, i64 noundef 22)
          to label %bb.t unwind label %bb.ap      ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bq = load i32, ptr %i.x, align 8, !tbaa !104
  %i.br = and i32 %i.bq, 32
  %.not161 = icmp eq i32 %i.br, 0
  br i1 %.not161, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !133
  %i.bu = trunc i64 %i.bt to i32
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.51, i32 noundef %i.bu)
          to label %._crit_edge166 unwind label %bb.aq

._crit_edge166:                                   ; preds = %bb.u
  %.pre167 = load ptr, ptr %6, align 8, !tbaa !94
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre168 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bv, ptr %6, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !12
  store i8 0, ptr %i.bv, align 8, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge166, %bb.v
  %i.bx = phi i64 [ %.pre168, %._crit_edge166 ], [ 0, %bb.v ]
  %i.by = phi ptr [ %.pre167, %._crit_edge166 ], [ %i.bv, %bb.v ]
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.by, i64 noundef %i.bx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ar ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.w
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.52, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !94
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !12
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef %i.cc, i64 noundef %i.ce)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit75 unwind label %bb.ar ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit75: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.40, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ch = load i64, ptr %i.at, align 8, !tbaa !12
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.cj, ptr %7, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !12
  store i8 0, ptr %i.cj, align 8, !tbaa !15
  br label %bb.z

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.cl = load ptr, ptr %4, align 8, !tbaa !94
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.53, ptr noundef %i.cl)
          to label %._crit_edge169 unwind label %bb.as

._crit_edge169:                                   ; preds = %bb.y
  %.pre170 = load ptr, ptr %7, align 8, !tbaa !94
  %.phi.trans.insert171 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre172 = load i64, ptr %.phi.trans.insert171, align 8, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge169, %bb.x
  %i.cm = phi i64 [ %.pre172, %._crit_edge169 ], [ 0, %bb.x ]
  %i.cn = phi ptr [ %.pre170, %._crit_edge169 ], [ %i.cj, %bb.x ]
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef %i.cn, i64 noundef %i.cm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77 unwind label %bb.at ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77: ; preds = %bb.z
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.54, i64 noundef 20)
          to label %bb.aa unwind label %bb.at     ; 0 uses

bb.aa:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !134
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.co, i32 noundef %i.cr)
          to label %bb.ab unwind label %bb.at     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.55, i64 noundef 17)
          to label %bb.ac unwind label %bb.at     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !134
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, i32 noundef %i.cv)
          to label %bb.ad unwind label %bb.at     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.56, i64 noundef 11)
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseModelEv:bb.a
  call void @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.bo
  %.pn66.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn, %bb.dc ], [ %i.hw, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.de

bb.de:                                            ; preds = %bb.o, %bb.ax, %bb.dd, %bb.l
  %.pn66.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn.pn, %bb.dd ], [ %i.bb, %bb.l ], [ %.pn53.pn.pn, %bb.ax ], [ %i.bk, %bb.o ]
  %i.ob = load ptr, ptr %4, align 8, !tbaa !94    ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.as
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.de
  %i.od = load i64, ptr %i.as, align 8, !tbaa !15
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.oe) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.df

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn66.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn66.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter211parseBufferEPKvm(ptr dead_on_unwind noalias writable sret(%"class.cv::dnn::dnn5_v20260605::Net") align 8 %0, ptr noundef nonnull align 8 dereferenceable(761) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %struct._Buf, align 8               ; 12 uses
  %6 = alloca %"class.std::basic_istream", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 0, ptr %i.e, align 8, !tbaa !12
  store i8 0, ptr %i.d, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !94
  store i64 0, ptr %i.b, align 8, !tbaa !12
  store i8 0, ptr %.pre.i, align 1, !tbaa !15
  %i.f = load ptr, ptr %4, align 8, !tbaa !94     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.h = load i64, ptr %i.a, align 8, !tbaa !15
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %5, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVZN2cv3dnn14dnn5_v2026060513ONNXImporter211parseBufferEPKvmE4_Buf, i64 16), ptr %5, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %3
  store ptr %2, ptr %i.j, align 8, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.m, align 8, !tbaa !255
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.n, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #24
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 232
  store ptr null, ptr %i.p, align 8, !tbaa !257
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 240
  store i8 0, ptr %i.q, align 8, !tbaa !263
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 241
  store i8 0, ptr %i.r, align 1, !tbaa !264
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSi, i64 24), ptr %6, align 8, !tbaa !101
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSi, i64 64), ptr %i.o, align 8, !tbaa !101
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.t, align 8, !tbaa !146
  %i.u = load i64, ptr getelementptr inbounds nuw inrange(0, 40) (i8, ptr @_ZTVSi, i64 0), align 8
  %i.v = getelementptr inbounds i8, ptr %6, i64 %i.u
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.v, ptr noundef nonnull %5)
          to label %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit unwind label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = invoke noundef zeroext i1 @_ZN6google8protobuf11MessageLite16ParseFromIstreamEPSi(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull %6)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  br i1 %i.y, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter211parseBufferEPKvm, ptr noundef nonnull @.str.3, i32 noundef 370) #26
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.i, %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.h:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %7, align 8, !tbaa !94    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.h
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ab, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  invoke void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseModelEv(ptr dead_on_unwind writable sret(%"class.cv::dnn::dnn5_v20260605::Net") align 8 %0, ptr noundef nonnull align 8 dereferenceable(761) %1)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.ah, ptr %6, align 8, !tbaa !101
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %6, i64 %i.ak
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !101
  store i64 0, ptr %i.t, align 8, !tbaa !146
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.o) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %5, align 8, !tbaa !101
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.z, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  %i.am = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !101
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %6, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !101
  store i64 0, ptr %i.t, align 8, !tbaa !146
  br label %.body

.body:                                            ; preds = %bb.a, %bb.k
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %bb.k ], [ %i.w, %bb.a ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.o) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %5, align 8, !tbaa !101
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter214getLayerParamsERKN11opencv_onnx9NodeProtoE(ptr dead_on_unwind noalias writable sret(%"class.cv::dnn::dnn5_v20260605::LayerParams") align 8 initializes((8, 12), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(761) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.opencv_onnx::AttributeProto", align 8 ; 21 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator", align 1   ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %27 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %35 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::allocator", align 1   ; 4 uses
  %38 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %39 = alloca %"class.opencv_onnx::TensorProto", align 8 ; 8 uses
  %40 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %42 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %45 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %51 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.m, align 8, !tbaa !12
  store i8 0, ptr %i.l, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.p, align 8, !tbaa !12
  store i8 0, ptr %i.o, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !134
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph608, label %._crit_edge609

.lr.ph608:                                        ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.az = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %53 = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bm = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.cd = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %19, i64 19
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 22
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 27
  %i.cl = getelementptr inbounds nuw i8, ptr %30, i64 27
  %i.cm = getelementptr inbounds nuw i8, ptr %31, i64 28
  %i.cn = getelementptr inbounds nuw i8, ptr %33, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph608, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
  %indvars.iv633 = phi i64 [ 0, %.lr.ph608 ], [ %indvars.iv.next634, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !265
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv633
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !252
  invoke void @_ZN11opencv_onnx14AttributeProtoC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(256) %i.cr)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cs = load ptr, ptr %i.u, align 8, !tbaa !129
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, -2
  %i.cv = inttoptr i64 %i.cu to ptr               ; 2 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !94 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.cy, ptr %i.a, align 8, !tbaa !93
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.da, ptr %4, align 8, !tbaa !94
  %i.db = load i64, ptr %i.a, align 8, !tbaa !93
  store i64 %i.db, ptr %i.v, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.dc = phi ptr [ %i.da, %.noexc ], [ %i.v, %bb.c ] ; 2 uses
  switch i64 %i.cy, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.dd = load i8, ptr %i.cw, align 1, !tbaa !15
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cw, i64 %i.cy, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.de = load i64, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  store i64 %i.de, ptr %i.w, align 8, !tbaa !12
  %i.df = load ptr, ptr %4, align 8, !tbaa !94
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store i8 0, ptr %i.dg, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.dh = load i64, ptr %i.w, align 8, !tbaa !12  ; 6 uses
  switch i64 %i.dh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325.thread508 [
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit218
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit233
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit282
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.di = load ptr, ptr %4, align 8, !tbaa !94    ; 2 uses
  %i.dj = load i64, ptr %i.di, align 1
  %i.dk = xor i64 %i.dj, 8313482620049712491
  %i.dl = getelementptr i8, ptr %i.di, i64 8
  %i.dm = load i32, ptr %i.dl, align 1
  %i.dn = zext i32 %i.dm to i64
  %i.do = xor i64 %i.dn, 1701863784
  %i.dp = or i64 %i.dk, %i.do
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325.thread508

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dt = load i32, ptr %i.aa, align 8, !tbaa !266
  %.off = add i32 %i.dt, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %._crit_edge.i.i208, label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.h:                                             ; preds = %.noexc.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

bb.i:                                             ; preds = %bb.cw
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit267

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter214getLayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.3, i32 noundef 457) #26
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.dx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE          ; 2 uses
  %i.dz = load ptr, ptr %5, align 8, !tbaa !94    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.au
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.eb = load i64, ptr %i.au, align 8, !tbaa !15
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn189 = phi { ptr, i32 } [ %i.dx, %bb.m ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dy, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit267

._crit_edge.i.i208:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.av, ptr %7, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.av, ptr noundef nonnull align 1 dereferenceable(11) @.str.9, i64 11, i1 false)
  store i64 11, ptr %i.aw, align 8, !tbaa !12
  store i8 0, ptr %i.ck, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke fastcc void @_ZN2cv3dnn14dnn5_v20260605L5parseERKN6google8protobuf13RepeatedFieldIlEE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %._crit_edge.i.i208
  %i.ed = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.p unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ee = load ptr, ptr %7, align 8, !tbaa !94    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.av
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.p
  %i.eg = load i64, ptr %i.av, align 8, !tbaa !15
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #27
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter214getLayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
  store double %i.sy, ptr %i.sz, align 8, !tbaa !305, !noalias !309
  %i.ta = getelementptr inbounds nuw i8, ptr %.0910.i379, i64 4
  %indvars.iv.next.i380 = add nuw nsw i64 %indvars.iv.i378, 1 ; 2 uses
  %exitcond.not.i381 = icmp eq i64 %indvars.iv.next.i380, %wide.trip.count.i377
  br i1 %exitcond.not.i381, label %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPKfEES2_T_i.exit386, label %scalar.ph, !llvm.loop !313

_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPKfEES2_T_i.exit386: ; preds = %scalar.ph, %middle.block, %_ZN2cv10AutoBufferIdLm1EEC2Em.exit.i375
  %i.tb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.dh unwind label %bb.dl     ; 0 uses

bb.dh:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPKfEES2_T_i.exit386
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  %i.tc = load ptr, ptr %33, align 8, !tbaa !94   ; 2 uses
  %i.td = icmp eq ptr %i.tc, %i.by
  br i1 %i.td, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387: ; preds = %bb.dh
  %i.te = load i64, ptr %i.by, align 8, !tbaa !15
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.di:                                            ; preds = %bb.db
  %i.tg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %.body366

bb.dj:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPKfEES2_T_i.exit
  %i.th = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %32)
  br label %.body366

.body366:                                         ; preds = %bb.di, %bb.dd, %bb.dj
  %.pn147 = phi { ptr, i32 } [ %i.th, %bb.dj ], [ %i.tg, %bb.di ], [ %i.rj, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit267

bb.dk:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit369.thread
  %i.ti = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %.body384

bb.dl:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPKfEES2_T_i.exit386
  %i.tj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
  br label %.body384

.body384:                                         ; preds = %bb.dk, %bb.dg, %bb.dl
  %.pn149 = phi { ptr, i32 } [ %i.tj, %bb.dl ], [ %i.ti, %bb.dk ], [ %i.sw, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  %i.tk = load ptr, ptr %33, align 8, !tbaa !94   ; 2 uses
  %i.tl = icmp eq ptr %i.tk, %i.by
  br i1 %i.tl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390: ; preds = %.body384
  %i.tm = load i64, ptr %i.by, align 8, !tbaa !15
  %i.tn = add i64 %i.tm, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.tn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392: ; preds = %.body384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit267

bb.dm:                                            ; preds = %bb.da
  %i.to = load i32, ptr %i.aa, align 8, !tbaa !266
  %i.tp = icmp sgt i32 %i.to, 0
  br i1 %i.tp, label %bb.dn, label %bb.ea

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  invoke fastcc void @_ZN2cv3dnn14dnn5_v20260605L5parseERKN6google8protobuf13RepeatedFieldIlEE(ptr dead_on_unwind noalias writable align 8 %35, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %bb.do unwind label %bb.dt

bb.do:                                            ; preds = %bb.dn
  %i.tq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %35)
          to label %bb.dp unwind label %bb.du     ; 0 uses

bb.dp:                                            ; preds = %bb.do
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.tr = load ptr, ptr %i.x, align 8, !tbaa !129
  %i.ts = ptrtoint ptr %i.tr to i64
  %i.tt = and i64 %i.ts, -2
  %i.tu = inttoptr i64 %i.tt to ptr               ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !12
  %i.tx = icmp eq i64 %i.tw, 8
  br i1 %i.tx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394, label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394: ; preds = %bb.dp
  %i.ty = load ptr, ptr %i.tu, align 8, !tbaa !94
  %i.tz = load i64, ptr %i.ty, align 1
  %i.ua = icmp ne i64 %i.tz, 8389750308618530627
  %i.ub = zext i1 %i.ua to i32
  %i.uc = icmp eq i32 %i.ub, 0
  br i1 %i.uc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394.thread, label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.dq unwind label %bb.dw

bb.dq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  invoke fastcc void @_ZN2cv3dnn14dnn5_v20260605L5parseERKN6google8protobuf13RepeatedFieldIlEE(ptr dead_on_unwind noalias writable align 8 %38, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %bb.dr unwind label %bb.dx

bb.dr:                                            ; preds = %bb.dq
  %i.ud = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(16) %38)
          to label %bb.ds unwind label %bb.dy     ; 0 uses

bb.ds:                                            ; preds = %bb.dr
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.ue = load ptr, ptr %36, align 8, !tbaa !94   ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.bv
  br i1 %i.uf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %bb.ds
  %i.ug = load i64, ptr %i.bv, align 8, !tbaa !15
  %i.uh = add i64 %i.ug, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.uh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.dt:                                            ; preds = %bb.dn
  %i.ui = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.dv

bb.du:                                            ; preds = %bb.do
  %i.uj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %35)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pn142 = phi { ptr, i32 } [ %i.uj, %bb.du ], [ %i.ui, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit267

bb.dw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit394.thread
  %i.uk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

bb.dx:                                            ; preds = %bb.dq
  %i.ul = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dr
  %i.um = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %38)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.pn144 = phi { ptr, i32 } [ %i.um, %bb.dy ], [ %i.ul, %bb.dx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.un = load ptr, ptr %36, align 8, !tbaa !94   ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.bv
  br i1 %i.uo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %bb.dz
  %i.up = load i64, ptr %i.bv, align 8, !tbaa !15
  %i.uq = add i64 %i.up, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.uq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398, %bb.dw
  %.pn144.pn = phi { ptr, i32 } [ %i.uk, %bb.dw ], [ %.pn144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398 ], [ %.pn144, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit267

bb.ea:                                            ; preds = %bb.dm
  %i.ur = and i32 %i.nw, 16
  %.not521 = icmp eq i32 %i.ur, 0                 ; 2 uses
  %54 = load ptr, ptr %i.bg, align 8              ; 3 uses
  %55 = icmp ne ptr %54, null
  %56 = select i1 %.not521, i1 true, i1 %55
  call void @llvm.assume(i1 %56)
  br i1 %.not521, label %bb.ep, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  %.not.i.i401 = icmp eq ptr %54, null
  %i.us = select i1 %.not.i.i401, ptr @_ZN11opencv_onnx30_TensorProto_default_instance_E, ptr %54
  invoke void @_ZN11opencv_onnx11TensorProtoC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %39, ptr noundef nonnull align 8 dereferenceable(256) %i.us)
          to label %bb.ec unwind label %bb.eh

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  invoke void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter211parseTensorERKN11opencv_onnx11TensorProtoE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %40, ptr noundef nonnull align 8 dereferenceable(761) %1, ptr noundef nonnull align 8 dereferenceable(256) %39)
          to label %bb.ed unwind label %bb.ei

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(208) %40)
          to label %bb.ee unwind label %bb.ej

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %bb.ef unwind label %bb.ek

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.ut = load i32, ptr %53, align 8, !tbaa !266
  store i32 %i.ut, ptr %i.e, align 4, !tbaa !104
  %i.uu = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.eg unwind label %bb.el     ; 0 uses

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.uv = load ptr, ptr %41, align 8, !tbaa !94   ; 2 uses
  %i.uw = icmp eq ptr %i.uv, %i.bi
  br i1 %i.uw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402: ; preds = %bb.eg
  %i.ux = load i64, ptr %i.bi, align 8, !tbaa !15
  %i.uy = add i64 %i.ux, 1
  call void @_ZdlPvm(ptr noundef %i.uv, i64 noundef %i.uy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @_ZN11opencv_onnx11TensorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %39) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.eh:                                            ; preds = %bb.eb
  %i.uz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.eo

bb.ei:                                            ; preds = %bb.ec
  %i.va = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.en

bb.ej:                                            ; preds = %bb.ed
  %i.vb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.em

bb.ek:                                            ; preds = %bb.ee
  %i.vc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407

bb.el:                                            ; preds = %bb.ef
  %i.vd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.ve = load ptr, ptr %41, align 8, !tbaa !94   ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.bi
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405: ; preds = %bb.el
  %i.vg = load i64, ptr %i.bi, align 8, !tbaa !15
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.ve, i64 noundef %i.vh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405, %bb.ek
  %.pn137 = phi { ptr, i32 } [ %i.vc, %bb.ek ], [ %i.vd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405 ], [ %i.vd, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %bb.em

bb.em:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407, %bb.ej
  %.pn137.pn = phi { ptr, i32 } [ %.pn137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407 ], [ %i.vb, %bb.ej ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #24
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.ei
  %.pn137.pn.pn = phi { ptr, i32 } [ %.pn137.pn, %bb.em ], [ %i.va, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @_ZN11opencv_onnx11TensorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %39) #24
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.eh
  %.pn137.pn.pn.pn = phi { ptr, i32 } [ %.pn137.pn.pn, %bb.en ], [ %i.uz, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit267

bb.ep:                                            ; preds = %bb.ea
  %i.vi = and i32 %i.nw, 32
  %.not522 = icmp eq i32 %i.vi, 0                 ; 2 uses
  %57 = load ptr, ptr %i.bj, align 8
  %58 = icmp ne ptr %57, null
  %59 = select i1 %.not522, i1 true, i1 %58
  call void @llvm.assume(i1 %59)
  br i1 %.not522, label %bb.eq, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.eq:                                            ; preds = %bb.ep
  %i.vj = load i32, ptr %i.bk, align 8, !tbaa !134 ; 2 uses
  %i.vk = icmp sgt i32 %i.vj, 0
  br i1 %i.vk, label %bb.er, label %bb.ew

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.vl = load ptr, ptr %4, align 8, !tbaa !94
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef nonnull @.str.35, ptr noundef %i.vl, i32 noundef %i.vj)
          to label %bb.es unwind label %bb.eu

bb.es:                                            ; preds = %bb.er
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter214getLayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.3, i32 noundef 560) #26
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  unreachable

bb.eu:                                            ; preds = %bb.er
  %i.vm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

bb.ev:                                            ; preds = %bb.es
  %i.vn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE          ; 2 uses
  %i.vo = load ptr, ptr %43, align 8, !tbaa !94   ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.bu
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %bb.ev
  %i.vq = load i64, ptr %i.bu, align 8, !tbaa !15
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409, %bb.eu
  %.pn135 = phi { ptr, i32 } [ %i.vm, %bb.eu ], [ %i.vn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %i.vn, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit267

bb.ew:                                            ; preds = %bb.eq
  %i.vs = load i32, ptr %i.y, align 8, !tbaa !134 ; 2 uses
  %i.vt = icmp sgt i32 %i.vs, 0
  br i1 %i.vt, label %bb.ex, label %bb.gl

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  %i.vu = load ptr, ptr %4, align 8, !tbaa !94
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %44, ptr noundef nonnull @.str.36, ptr noundef %i.vu, i32 noundef %i.vs)
          to label %bb.ez unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.vv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438

bb.ez:                                            ; preds = %bb.ex
  %i.vw = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.fb unwind label %bb.fa     ; 3 uses

bb.fa:                                            ; preds = %bb.ez
  %i.vx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.gk

bb.fb:                                            ; preds = %bb.ez
  %.not = icmp eq ptr %i.vw, null                 ; 2 uses
  br i1 %.not, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !130
  %i.wa = icmp slt i32 %i.vz, 2
  br i1 %i.wa, label %bb.fp, label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %45)
          to label %bb.fe unwind label %bb.fj

bb.fe:                                            ; preds = %bb.fd
  %i.wb = load ptr, ptr %44, align 8, !tbaa !94
  %i.wc = load i64, ptr %i.bp, align 8, !tbaa !12
  %i.wd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.wb, i64 noundef %i.wc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.fk ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.fe
  br i1 %.not, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.we = load ptr, ptr %i.vw, align 8, !tbaa !135
  br label %bb.fg

bb.fg:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.ff
  %i.wf = phi ptr [ %i.we, %bb.ff ], [ null, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %46, ptr noundef nonnull align 8 dereferenceable(128) %45)
          to label %bb.fh unwind label %bb.fl

bb.fh:                                            ; preds = %bb.fg
  %i.wg = load ptr, ptr %46, align 8, !tbaa !94
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.wf, ptr noundef nonnull @.str.3, i32 noundef 566, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter214getLayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef %i.wg)
          to label %bb.fi unwind label %bb.fm

bb.fi:                                            ; preds = %bb.fh
  %i.wh = load ptr, ptr %46, align 8, !tbaa !94   ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.bq
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %bb.fi
  %i.wj = load i64, ptr %i.bq, align 8, !tbaa !15
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %45) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  br label %bb.fp

bb.fj:                                            ; preds = %bb.fd
  %i.wl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.fo

bb.fk:                                            ; preds = %bb.fe
  %i.wm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.fn

bb.fl:                                            ; preds = %bb.fg
  %i.wn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

bb.fm:                                            ; preds = %bb.fh
  %i.wo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE          ; 2 uses
  %i.wp = load ptr, ptr %46, align 8, !tbaa !94   ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.bq
  br i1 %i.wq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %bb.fm
  %i.wr = load i64, ptr %i.bq, align 8, !tbaa !15
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.ws) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416, %bb.fl
  %.pn121 = phi { ptr, i32 } [ %i.wn, %bb.fl ], [ %i.wo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416 ], [ %i.wo, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br label %bb.fn

bb.fn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, %bb.fk
  %.pn121.pn = phi { ptr, i32 } [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418 ], [ %i.wm, %bb.fk ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %45) #24
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fj
  %.pn121.pn.pn = phi { ptr, i32 } [ %.pn121.pn, %bb.fn ], [ %i.wl, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  br label %bb.gk

bb.fp:                                            ; preds = %bb.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %i.wt = load i32, ptr %i.y, align 8, !tbaa !134
  %i.wu = icmp sgt i32 %i.wt, 0
  br i1 %i.wu, label %.lr.ph605, label %._crit_edge

._crit_edge:                                      ; preds = %bb.gh, %bb.fp
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter214getLayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.3, i32 noundef 571) #26
          to label %bb.gi unwind label %bb.gj

.lr.ph605:                                        ; preds = %bb.fp, %bb.gh
  %indvars.iv630 = phi i64 [ %indvars.iv.next631, %bb.gh ], [ 0, %bb.fp ] ; 3 uses
  %i.wv = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.fr unwind label %bb.fq     ; 3 uses

bb.fq:                                            ; preds = %.lr.ph605
  %i.ww = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.gk

bb.fr:                                            ; preds = %.lr.ph605
  %.not126 = icmp eq ptr %i.wv, null              ; 2 uses
  br i1 %.not126, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
end_hunk_2
begin_hunk_3_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseGraphEPN11opencv_onnx10GraphProtoEb:bb.a
  call void %i.sz(ptr noundef nonnull align 8 dereferenceable(16) %i.sr) #24, !inline_history !253
  %i.ta = load ptr, ptr %i.sr, align 8, !tbaa !101
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  %i.tc = load ptr, ptr %i.tb, align 8
  call void %i.tc(ptr noundef nonnull align 8 dereferenceable(16) %i.sr) #24, !inline_history !253
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

bb.dz:                                            ; preds = %bb.dx
  %i.td = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i196 = icmp eq i8 %i.td, 0
  br i1 %.not.i.i.i196, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.te = add nsw i32 %i.sv, -1
  store i32 %i.te, ptr %i.ss, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

bb.eb:                                            ; preds = %bb.dz
  %i.tf = atomicrmw volatile add ptr %i.ss, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i198 = phi i32 [ %i.sv, %bb.ea ], [ %i.tf, %bb.eb ]
  %i.tg = icmp eq i32 %.0.i.i.i.i198, 1
  br i1 %i.tg, label %bb.ec, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, !prof !105

bb.ec:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sr) #24
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199: ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev.exit, %bb.dy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.th = load ptr, ptr %7, align 8, !tbaa !453   ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !455 ; 2 uses
  %.not4.i.i.i200 = icmp eq ptr %i.th, %i.tj
  br i1 %.not4.i.i.i200, label %_ZSt8_DestroyIPN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i201

.lr.ph.i.i.i201:                                  ; preds = %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, %_ZSt8_DestroyIN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoEEvPT_.exit.i.i.i
  %.05.i.i.i202 = phi ptr [ %i.tv, %_ZSt8_DestroyIN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoEEvPT_.exit.i.i.i ], [ %i.th, %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199 ] ; 5 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.05.i.i.i202, i64 40
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !94 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.05.i.i.i202, i64 56 ; 2 uses
  %i.tn = icmp eq ptr %i.tl, %i.tm
  br i1 %i.tn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i201
  %i.to = load i64, ptr %i.tm, align 8, !tbaa !15
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tl, i64 noundef %i.tp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.tq = load ptr, ptr %.05.i.i.i202, align 8, !tbaa !94 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.05.i.i.i202, i64 16 ; 2 uses
  %i.ts = icmp eq ptr %i.tq, %i.tr
  br i1 %i.ts, label %_ZSt8_DestroyIN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.tt = load i64, ptr %i.tr, align 8, !tbaa !15
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tu) #27
  br label %_ZSt8_DestroyIN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.tv = getelementptr inbounds nuw i8, ptr %.05.i.i.i202, i64 72 ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %i.tv, %i.tj
  br i1 %.not.i.i.i203, label %_ZSt8_DestroyIPN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i201, !llvm.loop !456

_ZSt8_DestroyIPN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoEEvPT_.exit.i.i.i
  %.pr.i204 = load ptr, ptr %7, align 8, !tbaa !453
  br label %_ZSt8_DestroyIPN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199
  %i.tw = phi ptr [ %.pr.i204, %_ZSt8_DestroyIPN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.th, %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199 ] ; 3 uses
  %.not.i.i1.i205 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i1.i205, label %_ZNSt6vectorIN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoESaIS4_EED2Ev.exit, label %bb.ed

bb.ed:                                            ; preds = %_ZSt8_DestroyIPN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoES4_EvT_S6_RSaIT0_E.exit.i
  %i.tx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !457
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = ptrtoint ptr %i.tw to i64
  %i.ub = sub i64 %i.tz, %i.ua
  call void @_ZdlPvm(ptr noundef nonnull %i.tw, i64 noundef %i.ub) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoESaIS4_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoES4_EvT_S6_RSaIT0_E.exit.i, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %bb.dn, %bb.cu, %bb.cr, %bb.an, %bb.r
  %.pn87.pn.pn.pn = phi { ptr, i32 } [ %i.rd, %bb.dn ], [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %.pn87.pn, %bb.r ], [ %i.gq, %bb.an ], [ %i.pf, %bb.cr ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %i.pk, %bb.cu ]
  %i.uc = load ptr, ptr %11, align 8, !tbaa !406  ; 3 uses
  %.not.i.i.i206 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i.i206, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit207, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ud = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !405
  %i.uf = ptrtoint ptr %i.ue to i64
  %i.ug = ptrtoint ptr %i.uc to i64
  %i.uh = sub i64 %i.uf, %i.ug
  call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef %i.uh) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit207

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit207: ; preds = %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ui = load ptr, ptr %10, align 8, !tbaa !406  ; 3 uses
  %.not.i.i.i208 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i.i208, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit209, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit207
  %i.uj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !405
  %i.ul = ptrtoint ptr %i.uk to i64
  %i.um = ptrtoint ptr %i.ui to i64
  %i.un = sub i64 %i.ul, %i.um
  call void @_ZdlPvm(ptr noundef nonnull %i.ui, i64 noundef %i.un) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit209

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit209: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit207, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.eh

bb.eh:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit209, %bb.c
  %.pn87.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit209 ], [ %i.g, %bb.c ]
  call void @_ZNSt6vectorIN2cv3dnn14dnn5_v2026060513ONNXImporter210RenameUndoESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  resume { ptr, i32 } %.pn87.pn.pn.pn.pn
}

declare void @_ZN2cv3dnn14dnn5_v202606053Net4Impl19prepareForInferenceEv(ptr noundef nonnull align 8 dereferenceable(1076)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter214parseValueInfoERKN11opencv_onnx14ValueInfoProtoERNS1_7ArgDataE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(92) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter214parseValueInfoERKN11opencv_onnx14ValueInfoProtoERNS1_7ArgDataE, ptr noundef nonnull @.str.3, i32 noundef 740) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !94     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.k = and i32 %i.b, 4
  %.not123 = icmp eq i32 %i.k, 0                  ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %18 = load ptr, ptr %17, align 8                ; 3 uses
  %19 = icmp ne ptr %18, null
  %20 = select i1 %.not123, i1 true, i1 %19
  tail call void @llvm.assume(i1 %20)
  br i1 %.not123, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter214parseValueInfoERKN11opencv_onnx14ValueInfoProtoERNS1_7ArgDataE, ptr noundef nonnull @.str.3, i32 noundef 741) #26
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %7, align 8, !tbaa !94     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !15
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.k
  %.pn76 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %18, null
  %i.s = select i1 %.not.i.i, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %18 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !104
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter214parseValueInfoERKN11opencv_onnx14ValueInfoProtoERNS1_7ArgDataE, ptr noundef nonnull @.str.3, i32 noundef 743) #26
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.r:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %9, align 8, !tbaa !94     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.r
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.q
  %.pn78 = phi { ptr, i32 } [ %i.w, %bb.q ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.x, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

bb.s:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !104
  %i.ah = trunc i32 %i.ag to i1                   ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %22 = load ptr, ptr %21, align 8                ; 3 uses
  %23 = icmp ne ptr %22, null
  %not..i.i100 = xor i1 %i.ah, true
  %24 = select i1 %not..i.i100, i1 true, i1 %23
  tail call void @llvm.assume(i1 %24)
  br i1 %i.ah, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter214parseValueInfoERKN11opencv_onnx14ValueInfoProtoERNS1_7ArgDataE, ptr noundef nonnull @.str.3, i32 noundef 745) #26
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.x:                                             ; preds = %bb.u
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %11, align 8, !tbaa !94   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.x
  %i.an = load i64, ptr %i.al, align 8, !tbaa !15
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.w
  %.pn80 = phi { ptr, i32 } [ %i.ai, %bb.w ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %i.aj, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %common.resume

bb.y:                                             ; preds = %bb.s
  %.not.i.i104 = icmp eq ptr %22, null
  %i.ap = select i1 %.not.i.i104, ptr @_ZN11opencv_onnx35_TensorShapeProto_default_instance_E, ptr %22 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !458 ; 3 uses
  %switch.tableidx = add i32 %i.ar, -1            ; 3 uses
  %i.as = icmp ult i32 %switch.tableidx, 16
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -385, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.as, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZN2cv3dnn14dnn5_v20260605L11dataType2cvEi.exit

switch.lookup:                                    ; preds = %bb.y
  %i.at = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cv3dnn14dnn5_v2026060513ONNXImporter214parseValueInfoERKN11opencv_onnx14ValueInfoProtoERNS1_7ArgDataE, i64 %i.at
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 %switch.ext, ptr %i.au, align 8, !tbaa !461
  br label %bb.ae

_ZN2cv3dnn14dnn5_v20260605L11dataType2cvEi.exit:  ; preds = %bb.y
  %.not124 = icmp eq i32 %i.ar, 9                 ; 2 uses
  %i.av = select i1 %.not124, i32 9, i32 -1
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !461
  br i1 %.not124, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L11dataType2cvEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call fastcc void @_ZN2cv3dnn14dnn5_v20260605L12dataType2strB5cxx11Ei(ptr dead_on_unwind noalias writable align 8 %14, i32 noundef %i.ar)
  %i.ax = load ptr, ptr %14, align 8, !tbaa !94
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.69, ptr noundef %i.ax)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter214parseValueInfoERKN11opencv_onnx14ValueInfoProtoERNS1_7ArgDataE, ptr noundef nonnull @.str.3, i32 noundef 751) #26
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.ad:                                            ; preds = %bb.aa
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %13, align 8, !tbaa !94   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ad
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ac
  %.pn86 = phi { ptr, i32 } [ %i.ay, %bb.ac ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.az, %bb.ad ]
  %i.bf = load ptr, ptr %14, align 8, !tbaa !94   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %common.resume

bb.ae:                                            ; preds = %switch.lookup, %_ZN2cv3dnn14dnn5_v20260605L11dataType2cvEi.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !134 ; 4 uses
  %i.bm = icmp sgt i32 %i.bl, -1
  br i1 %i.bm, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.bl, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v2026060513ONNXImporter214parseValueInfoERKN11opencv_onnx14ValueInfoProtoERNS1_7ArgDataEE15__cv_check__755) #26
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.bn = zext nneg i32 %i.bl to i64              ; 2 uses
  call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %15, i64 noundef %i.bn, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %.not85132 = icmp eq i32 %i.bl, 0
  br i1 %.not85132, label %.critedge93, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.ag
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 12
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph135, %bb.at
  %indvars.iv137 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next138, %bb.at ] ; 4 uses
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !265
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv137
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !252 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !104
  switch i32 %i.bz, label %bb.ak [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = trunc i64 %i.cb to i32
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = and i64 %i.cf, -2
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = call noundef i32 @_ZN2cv3dnn14dnn5_v202606053Net7findDimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i1 noundef zeroext true)
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ah
  %i.cj = load ptr, ptr %i.bq, align 8, !tbaa !383 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %._crit_edge.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !134 ; 2 uses
  %.not82130 = icmp sgt i32 %i.cl, 0
  br i1 %.not82130, label %.lr.ph, label %._crit_edge.i.i

.lr.ph:                                           ; preds = %bb.al
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !265
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %wide.trip.count = zext nneg i32 %i.cl to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !252
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 152
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !129
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, -2
  %i.cv = inttoptr i64 %i.cu to ptr               ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !12
  %i.cy = icmp eq i64 %i.cx, 4
  br i1 %i.cy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.am
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !94
  %i.da = load i32, ptr %i.cz, align 1
  %i.db = icmp ne i32 %i.da, 1297371980
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.am, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i.i, label %bb.am, !llvm.loop !462

._crit_edge.i.i:                                  ; preds = %.critedge, %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  store ptr %i.br, ptr %16, align 8, !tbaa !8
  store i64 0, ptr %i.bs, align 8, !tbaa !12
  store i8 0, ptr %i.br, align 8, !tbaa !15
  %i.de = invoke noundef i32 @_ZN2cv3dnn14dnn5_v202606053Net7findDimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %16, i1 noundef zeroext true)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i.i
  %i.df = load ptr, ptr %16, align 8, !tbaa !94   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.br
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.an
  %i.dh = load i64, ptr %i.br, align 8, !tbaa !15
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.ap

end_hunk_3
