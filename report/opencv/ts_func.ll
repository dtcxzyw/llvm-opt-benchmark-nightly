Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ts_func?download=true
inline.NumInlined: 3054
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 706
loop-unroll.NumUnrolled: 780
begin_hunk_0_@_ZN6cvtest10randomSizeERN2cv3RNGEiidRSt6vectorIiSaIiEE:bb.a

_ZN2cv3RNG7uniformEii.exit:                       ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %i.k, %bb.b ], [ %1, %bb.a ]   ; 6 uses
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.m
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2cv3RNG7uniformEii.exit
  %i.v = sub nuw nsw i64 %i.m, %i.t
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.v)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %_ZN2cv3RNG7uniformEii.exit
  %i.w = icmp ugt i64 %i.t, %i.m
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.x
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.x, ptr %i.n, align 8, !tbaa !24
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.y = icmp sgt i32 %i.l, 0
  br i1 %i.y, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.z = load ptr, ptr %4, align 8, !tbaa !27
  %.promoted = load i64, ptr %0, align 8, !tbaa !22
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.f

_ZN2cv3RNG7uniformEii.exit28.lr.ph:               ; preds = %bb.f
  store i64 %i.ak, ptr %0, align 8, !tbaa !22
  %i.aa = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  br label %_ZN2cv3RNG7uniformEii.exit28

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ab = phi i64 [ %.promoted, %.lr.ph ], [ %i.ak, %bb.f ] ; 2 uses
  %.030 = phi double [ %3, %.lr.ph ], [ %i.aq, %bb.f ] ; 2 uses
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = mul nuw i64 %i.ac, 4164903690
  %i.ae = lshr i64 %i.ab, 32
  %i.af = add nuw i64 %i.ad, %i.ae                ; 3 uses
  %i.ag = shl i64 %i.af, 32
  %i.ah = and i64 %i.af, 4294967295
  %i.ai = mul nuw i64 %i.ah, 4164903690
  %i.aj = lshr i64 %i.af, 32
  %i.ak = add nuw i64 %i.ai, %i.aj                ; 4 uses
  %i.al = and i64 %i.ak, 4294967295
  %i.am = or disjoint i64 %i.al, %i.ag
  %i.an = uitofp i64 %i.am to double
  %i.ao = fmul nnan double %i.an, f0x3BF0000000000000
  %i.ap = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %.030, double 0.000000e+00) ; 2 uses
  %i.aq = fsub double %.030, %i.ap
  %i.ar = tail call double @exp(double noundef %i.ap) #30
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.as)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  store i32 %i.at, ptr %i.au, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN2cv3RNG7uniformEii.exit28.lr.ph, label %bb.f, !llvm.loop !28

_ZN2cv3RNG7uniformEii.exit28:                     ; preds = %_ZN2cv3RNG7uniformEii.exit28.lr.ph, %_ZN2cv3RNG7uniformEii.exit28
  %i.av = phi i64 [ %i.ak, %_ZN2cv3RNG7uniformEii.exit28.lr.ph ], [ %i.bf, %_ZN2cv3RNG7uniformEii.exit28 ] ; 2 uses
  %.131 = phi i32 [ 0, %_ZN2cv3RNG7uniformEii.exit28.lr.ph ], [ %i.bo, %_ZN2cv3RNG7uniformEii.exit28 ]
  %i.aw = and i64 %i.av, 4294967295
  %i.ax = mul nuw i64 %i.aw, 4164903690
  %i.ay = lshr i64 %i.av, 32
  %i.az = add nuw i64 %i.ax, %i.ay                ; 3 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = urem i32 %i.ba, %i.l
  %i.bc = and i64 %i.az, 4294967295
  %i.bd = mul nuw i64 %i.bc, 4164903690
  %i.be = lshr i64 %i.az, 32
  %i.bf = add nuw i64 %i.bd, %i.be                ; 3 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = urem i32 %i.bg, %i.l
  %i.bi = zext nneg i32 %i.bb to i64
  %i.bj = zext nneg i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bj ; 2 uses
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !17
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !17
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !17
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !17
  %i.bo = add nuw nsw i32 %.131, 1                ; 2 uses
  %exitcond36.not = icmp eq i32 %i.bo, %i.l
  br i1 %exitcond36.not, label %._crit_edge, label %_ZN2cv3RNG7uniformEii.exit28, !llvm.loop !29

._crit_edge:                                      ; preds = %_ZN2cv3RNG7uniformEii.exit28
  store i64 %i.bf, ptr %0, align 8, !tbaa !22
  br label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -32, -48) i32 @_ZN6cvtest10randomTypeERN2cv3RNGENS0_12_OutputArray9DepthMaskEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = add nsw i32 %3, 1                        ; 2 uses
  %i.b = icmp eq i32 %2, %i.a
  br i1 %i.b, label %_ZN2cv3RNG7uniformEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.d = and i64 %i.c, 4294967295
  %i.e = mul nuw i64 %i.d, 4164903690
  %i.f = lshr i64 %i.c, 32
  %i.g = add nuw i64 %i.e, %i.f                   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !tbaa !22
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
  %.promoted = load i64, ptr %0, align 8, !tbaa !22
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
  %i.o = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !16
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
  br i1 %.not12, label %bb.f, label %bb.g, !llvm.loop !30

bb.g:                                             ; preds = %bb.f
  store i64 %i.x, ptr %0, align 8, !tbaa !22
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
  %i.a = and i32 %0, 31                           ; 5 uses
  %i.b = icmp samesign ult i32 %i.a, 13
  %switch.maskindex = trunc nuw nsw i32 %i.a to i16
  %switch.shifted = lshr i16 7679, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.b, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %i.a, 9
  %3 = sitofp i1 %i.c to double
  %4 = icmp eq i32 %i.a, 9
  br i1 %4, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN6cvtest9getMinValEi, ptr noundef nonnull @.str.35, i32 noundef 98) #31
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.h = load i64, ptr %i.f, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %i.d

switch.lookup:                                    ; preds = %bb.a
  %i.j = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6cvtest9getMinValEi, i64 %i.j
  %switch.load = load double, ptr %switch.gep, align 8
  br label %.thread

.thread:                                          ; preds = %switch.lookup, %bb.b
  %i.k = phi double [ %3, %bb.b ], [ %switch.load, %switch.lookup ]
  ret double %i.k
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
  %i.g = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
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
  %i.c = bitcast i64 %2 to <2 x i32>              ; 3 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  store double %4, ptr %i.a, align 8, !tbaa !31
  store double %5, ptr %i.b, align 8, !tbaa !31
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.e = and i64 %i.d, 4294967295
  %i.f = mul nuw i64 %i.e, 4164903690
  %i.g = lshr i64 %i.d, 32
  %i.h = add <2 x i32> %i.c, splat (i32 -5)
  %i.i = add nuw i64 %i.f, %i.g                   ; 3 uses
  %i.j = and i64 %i.i, 4294967295
  %i.k = mul nuw i64 %i.j, 4164903690
  %i.l = lshr i64 %i.i, 32
  %i.m = add nuw i64 %i.k, %i.l                   ; 2 uses
  %i.n = trunc i64 %i.i to i32
  %i.o = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.p = trunc i64 %i.m to i32
  %i.q = insertelement <2 x i32> %i.o, i32 %i.p, i64 1
  %i.r = urem <2 x i32> %i.q, splat (i32 10)
  %i.s = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.r, <2 x i32> splat (i32 5))
  store i64 %i.m, ptr %1, align 8, !tbaa !22
  %i.t = add <2 x i32> %i.h, %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.u = phi <2 x i32> [ %i.t, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %.sroa.0.0.insert.insert = bitcast <2 x i32> %i.u to i64
  call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %7, i64 %.sroa.0.0.insert.insert, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.w, align 8
  store i32 50397184, ptr %8, align 8, !tbaa !33
  store ptr %7, ptr %i.v, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833530, ptr %9, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.y, align 8, !tbaa !36
  store i64 4294967297, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833530, ptr %10, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !36
  store i64 4294967297, ptr %i.z, align 8
  invoke void @_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ab = extractelement <2 x i32> %i.u, i64 0
  %i.ac = extractelement <2 x i32> %i.u, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ad = icmp eq i32 %i.ab, %.sroa.029.0.extract.trunc
  %i.ae = icmp eq i32 %i.ac, %.sroa.3.0.extract.trunc
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %7) #30
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.ah = sub nsw <2 x i32> %i.u, %i.c
  %i.ai = sdiv <2 x i32> %i.ah, splat (i32 2)
  store <2 x i32> %i.ai, ptr %11, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %2, ptr %i.aj, align 8
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.h

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
end_hunk_0
