Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ts_func?download=true
inline.NumInlined: 3054
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 703
loop-unroll.NumUnrolled: 777
begin_hunk_0_@_ZN6cvtest10randomTypeERN2cv3RNGENS0_12_OutputArray9DepthMaskEii:bb.a
  %i.g = add nuw i64 %i.e, %i.f                   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !tbaa !32
  %i.h = trunc i64 %i.g to i32
  %i.i = sub nsw i32 %i.a, %2
  %i.j = urem i32 %i.h, %i.i
  %i.k = add i32 %i.j, %2
  br label %_ZN2cv3RNG7uniformEii.exit

_ZN2cv3RNG7uniformEii.exit:                       ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %i.k, %bb.b ], [ %2, %bb.a ]
  %i.m = and i32 %1, 8191
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_ZN2cv3RNG7uniformEii.exit
  %.promoted = load i64, ptr %0, align 8, !tbaa !32
  br label %bb.f

bb.c:                                             ; preds = %_ZN2cv3RNG7uniformEii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN6cvtest10randomTypeERN2cv3RNGENS0_12_OutputArray9DepthMaskEii, ptr noundef nonnull @.str.35, i32 noundef 75) #31
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !26
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %.preheader, %bb.f
  %i.t = phi i64 [ %.promoted, %.preheader ], [ %i.x, %bb.f ] ; 2 uses
  %i.u = and i64 %i.t, 4294967295
  %i.v = mul nuw i64 %i.u, 4164903690
  %i.w = lshr i64 %i.t, 32
  %i.x = add nuw i64 %i.v, %i.w                   ; 3 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = urem i32 %i.y, 13                        ; 2 uses
  %i.aa = shl nuw nsw i32 1, %i.z
  %i.ab = and i32 %i.aa, %1
  %.not12 = icmp eq i32 %i.ab, 0
  br i1 %.not12, label %bb.f, label %bb.g, !llvm.loop !125

bb.g:                                             ; preds = %bb.f
  store i64 %i.x, ptr %0, align 8, !tbaa !32
  %i.ac = shl i32 %i.l, 5
  %i.ad = add i32 %i.ac, -32
  %i.ae = or disjoint i32 %i.ad, %i.z
  ret i32 %i.ae
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN6cvtest9getMinValEi(i32 noundef %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = and i32 %0, 31                           ; 4 uses
  %i.b = icmp samesign ult i32 %i.a, 13
  %switch.maskindex = trunc nuw nsw i32 %i.a to i16
  %switch.shifted = lshr i16 7679, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.b, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %i.a, 9                      ; 2 uses
  %i.d = uitofp nneg i1 %i.c to double
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN6cvtest9getMinValEi, ptr noundef nonnull @.str.35, i32 noundef 98) #31
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8, !tbaa !26
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %i.e

switch.lookup:                                    ; preds = %bb.a
  %i.k = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6cvtest9getMinValEi, i64 %i.k
  %switch.load = load double, ptr %switch.gep, align 8
  br label %.thread

.thread:                                          ; preds = %switch.lookup, %bb.b
  %i.l = phi double [ %i.d, %bb.b ], [ %switch.load, %switch.lookup ]
  ret double %i.l
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN6cvtest9getMaxValEi(i32 noundef %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = and i32 %0, 31                           ; 4 uses
  %i.b = icmp samesign ult i32 %i.a, 13
  %switch.maskindex = trunc nuw nsw i32 %i.a to i16
  %switch.shifted = lshr i16 7679, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.b, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.a, 9                      ; 2 uses
  %i.d = select i1 %i.c, i32 1, i32 -1
  %i.e = sitofp i32 %i.d to double
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN6cvtest9getMaxValEi, ptr noundef nonnull @.str.35, i32 noundef 115) #31
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !26
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %i.f

switch.lookup:                                    ; preds = %bb.a
  %i.l = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6cvtest9getMaxValEi, i64 %i.l
  %switch.load = load double, ptr %switch.gep, align 8
  br label %.thread

.thread:                                          ; preds = %switch.lookup, %bb.b
  %i.m = phi double [ %i.e, %bb.b ], [ %switch.load, %switch.lookup ]
  ret double %i.m
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest9randomMatERN2cv3RNGENS0_5Size_IiEEiddb(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %2, i32 noundef %3, double noundef %4, double noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %11 = alloca %"class.cv::Rect_", align 8        ; 6 uses
  %.sroa.029.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.3.0.extract.shift = lshr i64 %2, 32
  %12 = bitcast i64 %2 to <2 x i32>               ; 3 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  store double %4, ptr %i.a, align 8, !tbaa !38
  store double %5, ptr %i.b, align 8, !tbaa !38
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.d = and i64 %i.c, 4294967295
  %i.e = mul nuw i64 %i.d, 4164903690
  %i.f = lshr i64 %i.c, 32
  %i.g = add <2 x i32> %12, splat (i32 -5)
  %i.h = add nuw i64 %i.e, %i.f                   ; 3 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw i64 %i.i, 4164903690
  %i.k = lshr i64 %i.h, 32
  %i.l = add nuw i64 %i.j, %i.k                   ; 2 uses
  %i.m = trunc i64 %i.h to i32
  %i.n = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.o = trunc i64 %i.l to i32
  %i.p = insertelement <2 x i32> %i.n, i32 %i.o, i64 1
  %i.q = urem <2 x i32> %i.p, splat (i32 10)
  %i.r = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.q, <2 x i32> splat (i32 5))
  store i64 %i.l, ptr %1, align 8, !tbaa !32
  %i.s = add <2 x i32> %i.g, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = phi <2 x i32> [ %i.s, %bb.b ], [ %12, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %.sroa.0.0.insert.insert = bitcast <2 x i32> %i.t to i64
  call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %7, i64 %.sroa.0.0.insert.insert, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.v, align 8
  store i32 50397184, ptr %8, align 8, !tbaa !41
  store ptr %7, ptr %i.u, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833530, ptr %9, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !42
  store i64 4294967297, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833530, ptr %10, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.b, ptr %i.z, align 8, !tbaa !42
  store i64 4294967297, ptr %i.y, align 8
  invoke void @_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = extractelement <2 x i32> %i.t, i64 0
  %i.ab = extractelement <2 x i32> %i.t, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ac = icmp eq i32 %i.aa, %.sroa.029.0.extract.trunc
  %i.ad = icmp eq i32 %i.ab, %.sroa.3.0.extract.trunc
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %7) #30
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.ag = sub nsw <2 x i32> %i.t, %12
  %i.ah = sdiv <2 x i32> %i.ag, splat (i32 2)
  store <2 x i32> %i.ah, ptr %11, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %2, ptr %i.ai, align 8
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.h

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.j

bb.i:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit, %bb.e
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void

bb.j:                                             ; preds = %bb.h, %bb.f
  %.pn13 = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.af, %bb.f ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %.pn13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) unnamed_addr #10

declare void @_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest9randomMatERN2cv3RNGERKSt6vectorIiSaIiEEiddb(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, double noundef %4, double noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %8 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  store double %4, ptr %i.a, align 8, !tbaa !38
  store double %5, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = load ptr, ptr %2, align 8, !tbaa !36
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = lshr i64 %i.h, 2                         ; 4 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %sext = shl i64 %i.h, 30                        ; 4 uses
  %i.k = ashr exact i64 %sext, 32                 ; 4 uses
  %i.l = icmp ugt i64 %i.k, 2305843009213693951
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #31
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv5RangeESaIS1_EEC2EmRKS2_.exit, label %.noexc52

.noexc52:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.m = ashr exact i64 %sext, 30
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #33 ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.k ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !27
  %i.p = add nsw i64 %i.k, -1                     ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc52
  %i.r = getelementptr i8, ptr %i.n, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.p, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !27
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.noexc52, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.s = ashr exact i64 %sext, 29                 ; 2 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #33
          to label %.noexc55 unwind label %_ZNSt6vectorIN2cv5RangeESaIS1_EED2Ev.exit59.thread ; 3 uses

.noexc55:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !27
  %i.v = ptrtoint ptr %i.u to i64
  br label %_ZNSt6vectorIN2cv5RangeESaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorIN2cv5RangeESaIS1_EEC2EmRKS2_.exit:   ; preds = %.noexc55, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.073.0100 = phi ptr [ %i.n, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 10 uses
  %.sroa.15.091 = phi ptr [ %i.o, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.066.0 = phi ptr [ %i.t, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sink.i = phi i64 [ %i.v, %.noexc55 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.w = icmp sgt i32 %i.j, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv5RangeESaIS1_EEC2EmRKS2_.exit
  %i.x = load ptr, ptr %2, align 8, !tbaa !36     ; 5 uses
  br i1 %6, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.y = and i64 %i.h, 8589934588
  %i.z = icmp eq i64 %i.y, 4
  br i1 %i.z, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %i.i, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.promoted = load i64, ptr %1, align 8, !tbaa !32
  %wide.trip.count117 = and i64 %i.i, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.split.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %bb.d ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.aa = phi i64 [ %i.ai, %bb.d ], [ %.promoted, %.lr.ph.split.us ] ; 2 uses
  %.0112.us = phi i1 [ %i.au, %bb.d ], [ true, %.lr.ph.split.us ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv115 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.073.0100, i64 %indvars.iv115 ; 2 uses
end_hunk_0
