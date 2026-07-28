inline.NumInlined: 5381
inline.NumDeleted: 1762
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN5arrow14NumericBuilderINS_9Int64TypeEE12AppendValuesEPKllPKhl:bb.a
  %i.m = shl i64 %3, 3                            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !294
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !325
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %2, i64 %i.m, i1 false)
  %i.s = load i64, ptr %i.p, align 8, !tbaa !325
  %i.t = add nsw i64 %i.s, %i.m
  store i64 %i.t, ptr %i.p, align 8, !tbaa !325
  %i.u = icmp eq ptr %4, null
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i64 %3, 0
  br i1 %i.v, label %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i, label %bb.e

._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !448
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !294
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !324
  call void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3, ptr noundef %i.x, i64 noundef %i.z)
  %i.aa = call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3)
  %i.ab = sub i64 %3, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !448
  %i.ae = add nsw i64 %i.ab, %i.ad                ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !448
  %i.af = load i64, ptr %i.y, align 8, !tbaa !324
  %i.ag = add nsw i64 %i.af, %3
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !324
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i: ; preds = %bb.e, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i
  %i.ah = phi i64 [ %.pre.i, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i ], [ %i.ae, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !338
  %i.ak = add nsw i64 %i.aj, %3
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !338
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !432
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i
  store ptr null, ptr %0, align 8, !tbaa !161, !alias.scope !913
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow4json16NumericConverterINS_9Int64TypeEE7ConvertERKSt10shared_ptrINS_5ArrayEEPS6_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESD_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %2, ptr %3) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.arrow::internal::StringConverter.254", align 1 ; 3 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %2, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.b, align 8
  %i.c = load ptr, ptr %1, align 8, !tbaa !809    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !916, !nonnull !229, !align !230
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.f = call noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef %3, i64 noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !918
  call void @_ZN5arrow4util13StringBuilderIJRA27_KcRKNS_8DataTypeERA18_S2_RSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcSC_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(27) @.str.3, ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 1 dereferenceable(18) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %6), !noalias !918
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %4, align 8, !tbaa !156, !noalias !918 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44, !noalias !918
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22
  br label %_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !156, !noalias !918 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !44, !noalias !918
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !918
  resume { ptr, i32 } %i.n

_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !918
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !925, !nonnull !229, !align !230 ; 5 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !170
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !294
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !324  ; 2 uses
  %i.aa = sdiv i64 %i.z, 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !44
  %i.ad = srem i64 %i.z, 8
  %i.ae = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !44
  %i.ag = or i8 %i.af, %i.ac
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !44
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !324
  %i.ai = add nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !324
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 104 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !170
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !170
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !294
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 200 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !325
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap
  store i64 %i.v, ptr %i.aq, align 1
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !325
  %i.as = add nsw i64 %i.ar, 8
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !325
  store ptr null, ptr %0, align 8, !tbaa !161, !alias.scope !926
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !170
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %3, 2
  %i.d = load i8, ptr %2, align 1, !tbaa !44      ; 2 uses
  %i.e = icmp eq i8 %i.d, 48
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !44
  switch i8 %i.g, label %.thread [
    i8 120, label %bb.d
    i8 88, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = add i64 %3, -3                           ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !251

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %.03049.i = phi i64 [ %i.q, %bb.i ], [ 0, %bb.d ] ; 3 uses
  %.03148.i = phi i64 [ %.1.i, %bb.i ], [ 0, %bb.d ]
  %i.k = shl i64 %.03148.i, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.03049.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !44    ; 5 uses
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.n, 10
  br i1 %or.cond.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = add i8 %i.m, -65
  %or.cond42.i = icmp ult i8 %i.o, 6
  br i1 %or.cond42.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %narrow40.i = add nuw nsw i8 %i.m, 9
  %5 = and i8 %narrow40.i, 31
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = add i8 %i.m, -97
  %or.cond43.i = icmp ult i8 %i.p, 6
  br i1 %or.cond43.i, label %bb.h, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !538

bb.h:                                             ; preds = %bb.g
  %narrow.i = add nuw nsw i8 %i.m, 9
  %6 = and i8 %narrow.i, 31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph.i
  %.pn.in.i = phi i8 [ %6, %bb.h ], [ %5, %bb.f ], [ %i.n, %.lr.ph.i ]
  %.pn.i = zext nneg i8 %.pn.in.i to i64
  %.1.i = or i64 %i.k, %.pn.i                     ; 2 uses
  %i.q = add nuw nsw i64 %.03049.i, 1
  %exitcond.not.i = icmp eq i64 %.03049.i, %i.i
  br i1 %exitcond.not.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, label %.lr.ph.i, !llvm.loop !929

thread-pre-split:                                 ; preds = %bb.b
  %i.r = icmp eq i8 %i.d, 45
  br i1 %i.r, label %bb.j, label %.thread

bb.j:                                             ; preds = %thread-pre-split
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.t = add i64 %3, -1                           ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.c, %bb.j, %thread-pre-split
  %i.v = phi i1 [ true, %bb.j ], [ false, %thread-pre-split ], [ false, %bb.c ]
  %.024 = phi ptr [ %i.s, %bb.j ], [ %2, %thread-pre-split ], [ %2, %bb.c ] ; 2 uses
  %.023 = phi i64 [ %i.t, %bb.j ], [ %3, %thread-pre-split ], [ %3, %bb.c ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.024, i64 %.023
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.l
  %.133 = phi i64 [ %.023, %.thread ], [ %i.y, %bb.l ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.z, %bb.l ] ; 3 uses
  %i.w = load i8, ptr %.12532, align 1, !tbaa !44
  %i.x = icmp eq i8 %i.w, 48
  br i1 %i.x, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %.133, -1                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.12532, i64 1
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.critedge, label %bb.k, !llvm.loop !930

.critedge:                                        ; preds = %bb.l, %bb.k
  %.125.lcssa = phi ptr [ %scevgep, %bb.l ], [ %.12532, %bb.k ]
  %.1.lcssa = phi i64 [ 0, %bb.l ], [ %.133, %bb.k ]
  %i.aa = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.aa, label %bb.m, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !251

bb.m:                                             ; preds = %.critedge
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !170 ; 4 uses
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp ugt i64 %i.ab, -9223372036854775808
  br i1 %i.ac, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.o, !prof !46

bb.o:                                             ; preds = %bb.n
  %i.ad = sub i64 0, %i.ab
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ae = icmp slt i64 %i.ab, 0
  br i1 %i.ae, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, !prof !46

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split: ; preds = %bb.i, %bb.o, %bb.p
  %storemerge.sink = phi i64 [ %i.ab, %bb.p ], [ %i.ad, %bb.o ], [ %.1.i, %bb.i ]
  store i64 %storemerge.sink, ptr %4, align 8, !tbaa !170
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread: ; preds = %bb.g, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, %bb.d, %bb.p, %bb.n, %.critedge, %bb.j, %bb.a
  %.022 = phi i1 [ false, %bb.j ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.p ], [ false, %.critedge ], [ true, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.n ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.022
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !44
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext nneg i8 %i.c to i64                 ; 2 uses
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not247 = icmp eq i64 %1, 1
  br i1 %.not247, label %bb.aq, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !44
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext nneg i8 %i.h to i64
  %i.l = add nuw nsw i64 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not248 = icmp eq i64 %1, 2
  br i1 %.not248, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !44
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i64 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext nneg i8 %i.o to i64
  %i.s = add nuw nsw i64 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %.not249 = icmp eq i64 %1, 3
  br i1 %.not249, label %bb.aq, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !44
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i64 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext nneg i8 %i.v to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not250 = icmp eq i64 %1, 4
  br i1 %.not250, label %bb.aq, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !44
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i64 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext nneg i8 %i.ac to i64
  %i.ag = add nuw nsw i64 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.not251 = icmp eq i64 %1, 5
  br i1 %.not251, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !44
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i64 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext nneg i8 %i.aj to i64
  %i.an = add nuw nsw i64 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %.not252 = icmp eq i64 %1, 6
  br i1 %.not252, label %bb.aq, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !44
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i64 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext nneg i8 %i.aq to i64
  %i.au = add nuw nsw i64 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %.not253 = icmp eq i64 %1, 7
  br i1 %.not253, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !44
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i64 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext nneg i8 %i.ax to i64
  %i.bb = add nuw nsw i64 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.not254 = icmp eq i64 %1, 8
  br i1 %.not254, label %bb.aq, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !44
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i64 %i.bb, 10
  %i.bg = icmp ult i8 %i.be, 10
  %i.bh = zext nneg i8 %i.be to i64
  %i.bi = add nuw nsw i64 %i.bf, %i.bh            ; 2 uses
  br i1 %i.bg, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %.not255 = icmp eq i64 %1, 9
  br i1 %.not255, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !44
end_hunk_0
begin_hunk_1_@_ZN5arrow14NumericBuilderINS_10UInt64TypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i57: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i.i.i.i58 = phi i32 [ %i.im, %bb.cn ], [ %i.iw, %bb.co ]
  %i.ix = icmp eq i32 %.0.i.i.i.i.i.i.i58, 1
  br i1 %i.ix, label %bb.cp, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59, !prof !46

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ii) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59: ; preds = %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i57, %bb.cl, %bb.cj
  %.pr.i60 = load ptr, ptr %3, align 8, !tbaa !161
  %.not.i.i61 = icmp eq ptr %.pr.i60, null
  br i1 %.not.i.i61, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit62, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i54, !prof !253

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i54: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59, %bb.ci
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit62

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit62: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.cq:                                            ; preds = %bb.ch, %bb.c
  %.pn23 = phi { ptr, i32 } [ %i.m, %bb.c ], [ %.pn19.pn, %bb.ch ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn23
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow14NumericBuilderINS_10UInt64TypeEE4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !171
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !171
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !45
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !45
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE12AppendValuesEPKmlPKhl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !354, !noalias !1418 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !41, !noalias !1418
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1418
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !1418, !inline_history !358
  %i.g = add nsw i64 %i.f, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit11.thread

_ZN5arrow6StatusD2Ev.exit11.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !41, !noalias !1418
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1418
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !358
  %.pr = load ptr, ptr %6, align 8, !tbaa !161, !noalias !1421 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  store ptr %.pr, ptr %0, align 8, !tbaa !161, !alias.scope !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit11.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = shl i64 %3, 3                            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !294
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !325
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %2, i64 %i.m, i1 false)
  %i.s = load i64, ptr %i.p, align 8, !tbaa !325
  %i.t = add nsw i64 %i.s, %i.m
  store i64 %i.t, ptr %i.p, align 8, !tbaa !325
  %i.u = icmp eq ptr %4, null
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i64 %3, 0
  br i1 %i.v, label %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i, label %bb.e

._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !448
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !294
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !324
  call void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3, ptr noundef %i.x, i64 noundef %i.z)
  %i.aa = call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3)
  %i.ab = sub i64 %3, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !448
  %i.ae = add nsw i64 %i.ab, %i.ad                ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !448
  %i.af = load i64, ptr %i.y, align 8, !tbaa !324
  %i.ag = add nsw i64 %i.af, %3
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !324
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i: ; preds = %bb.e, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i
  %i.ah = phi i64 [ %.pre.i, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i ], [ %i.ae, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !338
  %i.ak = add nsw i64 %i.aj, %3
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !338
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !432
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i
  store ptr null, ptr %0, align 8, !tbaa !161, !alias.scope !1424
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow4json16NumericConverterINS_10UInt64TypeEE7ConvertERKSt10shared_ptrINS_5ArrayEEPS6_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESD_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %2, ptr %3) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %2, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.b, align 8
  %i.c = load ptr, ptr %1, align 8, !tbaa !1320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, 2
  br i1 %i.e, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %3, align 1, !tbaa !44
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !44
  switch i8 %i.i, label %bb.k [
    i8 120, label %bb.e
    i8 88, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.k = add i64 %2, -3                           ; 2 uses
  %i.l = icmp ult i64 %i.k, 16
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread, !prof !251

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.j
  %.03049.i.i.i = phi i64 [ %i.s, %bb.j ], [ 0, %bb.e ] ; 3 uses
  %.03148.i.i.i = phi i64 [ %.1.i.i.i, %bb.j ], [ 0, %bb.e ]
  %i.m = shl i64 %.03148.i.i.i, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.03049.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !44    ; 5 uses
  %i.p = add i8 %i.o, -48                         ; 2 uses
  %or.cond.i.i.i = icmp ult i8 %i.p, 10
  br i1 %or.cond.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.q = add i8 %i.o, -65
  %or.cond42.i.i.i = icmp ult i8 %i.q, 6
  br i1 %or.cond42.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %narrow40.i.i.i = add nuw nsw i8 %i.o, 9
  %6 = and i8 %narrow40.i.i.i, 31
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.r = add i8 %i.o, -97
  %or.cond43.i.i.i = icmp ult i8 %i.r, 6
  br i1 %or.cond43.i.i.i, label %bb.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread

bb.i:                                             ; preds = %bb.h
  %narrow.i.i.i = add nuw nsw i8 %i.o, 9
  %7 = and i8 %narrow.i.i.i, 31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %.lr.ph.i.i.i
  %.pn.in.i.i.i = phi i8 [ %7, %bb.i ], [ %6, %bb.g ], [ %i.p, %.lr.ph.i.i.i ]
  %.pn.i.i.i = zext nneg i8 %.pn.in.i.i.i to i64
  %.1.i.i.i = or i64 %i.m, %.pn.i.i.i             ; 3 uses
  %i.s = add nuw nsw i64 %.03049.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %.03049.i.i.i, %i.k
  br i1 %exitcond.not.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread2, label %.lr.ph.i.i.i, !llvm.loop !929

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread2: ; preds = %bb.j
  store i64 %.1.i.i.i, ptr %i.a, align 8, !tbaa !170
  br label %bb.p

bb.k:                                             ; preds = %bb.d, %bb.c, %bb.b
  %scevgep.i.i = getelementptr i8, ptr %3, i64 %2
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.01722.i.i = phi i64 [ %2, %bb.k ], [ %i.v, %bb.m ] ; 2 uses
  %.01821.i.i = phi ptr [ %3, %bb.k ], [ %i.w, %bb.m ] ; 3 uses
  %i.t = load i8, ptr %.01821.i.i, align 1, !tbaa !44
  %i.u = icmp eq i8 %i.t, 48
  br i1 %i.u, label %bb.m, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit

bb.m:                                             ; preds = %bb.l
  %i.v = add i64 %.01722.i.i, -1                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01821.i.i, i64 1
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit, label %bb.l, !llvm.loop !1427

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit: ; preds = %bb.l, %bb.m
  %.018.lcssa.i.i = phi ptr [ %scevgep.i.i, %bb.m ], [ %.01821.i.i, %bb.l ]
  %.017.lcssa.i.i = phi i64 [ 0, %bb.m ], [ %.01722.i.i, %bb.l ]
  %i.x = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i, i64 noundef %.017.lcssa.i.i, ptr noundef nonnull %i.a)
  br i1 %i.x, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit._crit_edge, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit._crit_edge: ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !170
  br label %bb.p

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread: ; preds = %bb.h, %bb.e, %bb.a, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1428
  call void @_ZN5arrow4util13StringBuilderIJRA27_KcRKNS_8DataTypeERA18_S2_RSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcSC_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(27) @.str.3, ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 1 dereferenceable(18) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %5), !noalias !1428
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread
  %i.aa = load ptr, ptr %4, align 8, !tbaa !156, !noalias !1428 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !44, !noalias !1428
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #22
  br label %_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit

bb.o:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %4, align 8, !tbaa !156, !noalias !1428 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i: ; preds = %bb.o
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !44, !noalias !1428
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1428
  resume { ptr, i32 } %i.af

_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1428
  br label %bb.q

bb.p:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit._crit_edge, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread2
  %i.al = phi i64 [ %.pre, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit._crit_edge ], [ %.1.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread2 ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1435, !nonnull !229, !align !230 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !294
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 80 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !324 ; 2 uses
  %i.as = sdiv i64 %i.ar, 8
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !44
  %i.av = srem i64 %i.ar, 8
  %i.aw = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !44
  %i.ay = or i8 %i.ax, %i.au
  store i8 %i.ay, ptr %i.at, align 1, !tbaa !44
  %i.az = load i64, ptr %i.aq, align 8, !tbaa !324
  %i.ba = add nsw i64 %i.az, 1
  store i64 %i.ba, ptr %i.aq, align 8, !tbaa !324
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 104 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !170
  %i.bd = add nsw i64 %i.bc, 1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !170
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !294
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 200 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !325
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh
  store i64 %i.al, ptr %i.bi, align 1
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !325
  %i.bk = add nsw i64 %i.bj, 8
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !325
  store ptr null, ptr %0, align 8, !tbaa !161, !alias.scope !1436
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow4json16NumericConverterINS0_9FloatTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS0_10MemoryPoolERKSt10shared_ptrINS0_8DataTypeEEEEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow4json16NumericConverterINS0_9FloatTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !11     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 10 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 9 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !45
  %i.k = add nsw i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.l, align 8, !tbaa !192
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.n, align 8, !tbaa !37
  br label %bb.d

.thread.i.i:                                      ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.o, align 8, !tbaa !192
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.q, align 8, !tbaa !37
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.r = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %i.s = icmp eq i8 %.pre.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow4json9ConverterE, i64 16), ptr %i.c, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.t, align 8, !tbaa !192
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.u, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.v, align 8, !tbaa !37
  br i1 %i.s, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.h, align 4, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.thread.i
  %i.w = phi i32 [ %.pre, %._crit_edge ], [ %i.k, %.thread.i ]
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.h, align 4, !tbaa !45
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow4json18PrimitiveConverterE, i64 16), ptr %i.c, align 8, !tbaa !41
  %i.z = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.h, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !40
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
end_hunk_1
begin_hunk_2_@_ZZN5arrow4json16NumericConverterINS_13TimestampTypeEE7ConvertERKSt10shared_ptrINS_5ArrayEEPS6_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESD_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.f = call noundef zeroext i1 @_ZN5arrow8internal15StringConverterINS_13TimestampTypeEvE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef %3, i64 noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1807
  call void @_ZN5arrow4util13StringBuilderIJRA27_KcRKNS_8DataTypeERA18_S2_RSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcSC_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(27) @.str.3, ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 1 dereferenceable(18) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %6), !noalias !1807
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %4, align 8, !tbaa !156, !noalias !1807 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44, !noalias !1807
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22
  br label %_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !156, !noalias !1807 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !44, !noalias !1807
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1807
  resume { ptr, i32 } %i.n

_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1807
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1814, !nonnull !229, !align !230 ; 5 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !170
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !294
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !324  ; 2 uses
  %i.aa = sdiv i64 %i.z, 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !44
  %i.ad = srem i64 %i.z, 8
  %i.ae = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !44
  %i.ag = or i8 %i.af, %i.ac
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !44
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !324
  %i.ai = add nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !324
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 104 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !170
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !170
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !294
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 200 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !325
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap
  store i64 %i.v, ptr %i.aq, align 1
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !325
  %i.as = add nsw i64 %i.ar, 8
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !325
  store ptr null, ptr %0, align 8, !tbaa !161, !alias.scope !1815
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5arrow4json22GenericConversionErrorIJRA18_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENS_6StatusERKNS_8DataTypeEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal15StringConverterINS_13TimestampTypeEvE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.std::chrono::duration", align 8 ; 12 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1818 ; 4 uses
  %i.e = icmp ult i64 %3, 10
  br i1 %i.e, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i8, ptr %i.f, align 1, !tbaa !44
  %.not.i.i = icmp eq i8 %i.g, 45
  br i1 %.not.i.i, label %bb.c, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !251

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.i = load i8, ptr %i.h, align 1, !tbaa !44
  %.not7.i.i = icmp eq i8 %i.i, 45
  br i1 %.not7.i.i, label %bb.d, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !251

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %2, align 1, !tbaa !44
  %i.k = add i8 %i.j, -48                         ; 2 uses
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.e, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !538

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !44
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = icmp ult i8 %i.o, 10
  br i1 %i.p, label %bb.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !538

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !44
  %i.s = add i8 %i.r, -48                         ; 2 uses
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %bb.g, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !538

bb.g:                                             ; preds = %bb.f
  %narrow.i.i = mul nuw nsw i8 %i.k, 10
  %narrow47.i.i = add nuw nsw i8 %i.o, %narrow.i.i
  %i.u = zext nneg i8 %narrow47.i.i to i16
  %i.v = mul nuw nsw i16 %i.u, 10
  %i.w = zext nneg i8 %i.s to i16
  %i.x = add nuw nsw i16 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !44
  %i.aa = add i8 %i.z, -48                        ; 2 uses
  %i.ab = mul nuw nsw i16 %i.x, 10
  %i.ac = icmp ult i8 %i.aa, 10
  %i.ad = zext nneg i8 %i.aa to i16
  %i.ae = add nuw nsw i16 %i.ab, %i.ad            ; 4 uses
  br i1 %i.ac, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !538

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !44
  %i.ah = add i8 %i.ag, -48                       ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %bb.h, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !538

bb.h:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !44
  %i.al = add i8 %i.ak, -48                       ; 2 uses
  %narrow.i8.i.i = mul nuw nsw i8 %i.ah, 10
  %i.am = icmp ult i8 %i.al, 10
  %i.an = add i8 %i.al, %narrow.i8.i.i            ; 6 uses
  br i1 %i.am, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !538

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !44
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = icmp ult i8 %i.aq, 10
  br i1 %i.ar, label %bb.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !538

bb.i:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !44
  %i.au = add i8 %i.at, -48                       ; 2 uses
  %narrow.i10.i.i = mul nuw nsw i8 %i.aq, 10
  %i.av = icmp ugt i8 %i.au, 9
  %i.aw = add i8 %i.au, %narrow.i10.i.i           ; 3 uses
  %i.ax = add i8 %i.an, -13
  %spec.select.i.i.i.i = icmp ult i8 %i.ax, -12
  %or.cond34.not38.i.i = select i1 %i.av, i1 true, i1 %spec.select.i.i.i.i, !prof !1823
  %.not8.i.i.i = icmp eq i8 %i.aw, 0
  %or.cond35.i.i = select i1 %or.cond34.not38.i.i, i1 true, i1 %.not8.i.i.i, !prof !1824
  br i1 %or.cond35.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.j, !prof !1824

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i8 %i.an, 2
  %i.ay = and i16 %i.ae, 3
  %i.az = icmp eq i16 %i.ay, 0
  %or.cond.i.i.i = and i1 %i.az, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.k, label %.thread.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ba = urem i16 %i.ae, 100
  %.not.i.i.i.i.i = icmp ne i16 %i.ba, 0
  %i.bb = urem i16 %i.ae, 400
  %i.bc = icmp eq i16 %i.bb, 0
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.bc
  br i1 %or.cond.i.i.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.k, %bb.j
  %i.bd = zext nneg i8 %i.an to i64
  %6 = add nuw nsw i64 %i.bd, 4294967295
  %7 = and i64 %6, 4294967295
  %i.be = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %7
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !44
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i: ; preds = %.thread.i.i.i.i, %bb.k
  %.sroa.03.0.i.i.i.i = phi i8 [ %i.bf, %.thread.i.i.i.i ], [ 29, %bb.k ]
  %.not41.i.i = icmp ult i8 %.sroa.03.0.i.i.i.i, %i.aw
  br i1 %.not41.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.l, !prof !1825

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i
  %i.bg = zext nneg i16 %i.ae to i32
  %i.bh = icmp samesign ult i8 %i.an, 3
  %.neg.i.i.i.i = sext i1 %i.bh to i32
  %i.bi = add nsw i32 %.neg.i.i.i.i, %i.bg        ; 4 uses
  %i.bj = zext nneg i8 %i.an to i32
  %i.bk = zext i8 %i.aw to i32
  %i.bl = add nsw i32 %i.bi, 65137
  %i.bm = icmp slt i32 %i.bi, 0
  %i.bn = select i1 %i.bm, i32 %i.bl, i32 %i.bi
  %.lhs.trunc.i.i = trunc i32 %i.bn to i16
  %i.bo = sdiv i16 %.lhs.trunc.i.i, 400
  %.sext.i.i = sext i16 %i.bo to i32              ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %.sext.i.i, -400
  %i.bp = add nsw i32 %.neg15.i.i.i.i, %i.bi      ; 3 uses
  %i.bq = icmp samesign ugt i8 %i.an, 2
  %.v.i.i.i.i = select i1 %i.bq, i32 -3, i32 9
  %i.br = add nsw i32 %.v.i.i.i.i, %i.bj
  %i.bs = mul nsw i32 %i.br, 153
  %i.bt = add nsw i32 %i.bs, 2
  %i.bu = udiv i32 %i.bt, 5
  %i.bv = mul nsw i32 %i.bp, 365
  %i.bw = lshr i32 %i.bp, 2
  %i.bx = udiv i32 %i.bp, 100
  %i.by = mul nsw i32 %.sext.i.i, 146097
  %i.bz = add nsw i32 %i.bu, -719469
  %i.ca = add nsw i32 %i.bz, %i.by
  %i.cb = add nsw i32 %i.ca, %i.bw
  %i.cc = add nsw i32 %i.cb, %i.bv
  %i.cd = sub nsw i32 %i.cc, %i.bx
  %i.ce = add nsw i32 %i.cd, %i.bk
  %i.cf = sext i32 %i.ce to i64                   ; 4 uses
  %i.cg = mul nsw i64 %i.cf, 86400                ; 3 uses
  %i.ch = icmp eq i64 %3, 10
  br i1 %i.ch, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  switch i32 %i.d, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i [
    i32 3, label %bb.p
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ci = mul nsw i64 %i.cf, 86400000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cj = mul nsw i64 %i.cf, 86400000000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i

bb.p:                                             ; preds = %bb.m
  %i.ck = mul nsw i64 %i.cf, 86400000000000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.0.i.i.i = phi i64 [ %i.cj, %bb.o ], [ %i.ck, %bb.p ], [ %i.ci, %bb.n ], [ %i.cg, %bb.m ]
  store i64 %.0.i.i.i, ptr %4, align 8, !tbaa !170
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit

bb.q:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !44
  switch i8 %i.cm, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit [
    i8 32, label %bb.r
    i8 84, label %bb.r
  ], !prof !1826

bb.r:                                             ; preds = %bb.q, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 0, ptr %5, align 8
  %i.cn = getelementptr i8, ptr %2, i64 %3
  %i.co = getelementptr i8, ptr %i.cn, i64 -1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !44  ; 3 uses
  %i.cq = icmp eq i8 %i.cp, 90
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cr = add i64 %3, -1
  br label %bb.aj

bb.t:                                             ; preds = %bb.r
  %i.cs = add i64 %3, -3                          ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !44  ; 4 uses
  switch i8 %i.cu, label %bb.y [
    i8 43, label %bb.u
    i8 45, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !44
  %i.cx = add i8 %i.cw, -48                       ; 2 uses
  %i.cy = icmp ult i8 %i.cx, 10
  br i1 %i.cy, label %bb.v, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !538

bb.v:                                             ; preds = %bb.u
  %i.cz = add i8 %i.cp, -48                       ; 2 uses
  %narrow.i.i.i = mul nuw nsw i8 %i.cx, 10
  %i.da = icmp ugt i8 %i.cz, 9
  %i.db = add i8 %narrow.i.i.i, %i.cz             ; 2 uses
  %i.dc = icmp ugt i8 %i.db, 23
  %or.cond.i.i = select i1 %i.da, i1 true, i1 %i.dc, !prof !1827
  br i1 %or.cond.i.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, label %bb.w, !prof !1827

bb.w:                                             ; preds = %bb.v
  %i.dd = zext nneg i8 %i.db to i64
  %i.de = mul nuw nsw i64 %i.dd, 3600             ; 2 uses
  store i64 %i.de, ptr %5, align 8, !tbaa !170
  %i.df = icmp eq i8 %i.cu, 43
  br i1 %i.df, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %bb.w
  %i.dg = sub nsw i64 0, %i.de
  store i64 %i.dg, ptr %5, align 8, !tbaa !1828
  br label %bb.aj

bb.y:                                             ; preds = %bb.t
  %i.dh = add i64 %3, -5                          ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %i.dh ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !44  ; 2 uses
  switch i8 %i.dj, label %bb.ae [
    i8 43, label %bb.z
    i8 45, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !44
  %i.dm = add i8 %i.dl, -48                       ; 2 uses
  %i.dn = icmp ult i8 %i.dm, 10
  br i1 %i.dn, label %bb.aa, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !538

bb.aa:                                            ; preds = %bb.z
  %i.do = add i8 %i.cu, -48                       ; 2 uses
  %narrow.i.i76.i = mul nuw nsw i8 %i.dm, 10
  %i.dp = icmp ult i8 %i.do, 10
  %i.dq = add i8 %narrow.i.i76.i, %i.do           ; 2 uses
  br i1 %i.dp, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i77.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !538

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i77.i: ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !44
  %i.dt = add i8 %i.ds, -48                       ; 2 uses
  %i.du = icmp ult i8 %i.dt, 10
  br i1 %i.du, label %bb.ab, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !538

bb.ab:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i77.i
  %i.dv = add i8 %i.cp, -48                       ; 2 uses
  %narrow.i8.i78.i = mul nuw nsw i8 %i.dt, 10
  %i.dw = icmp ult i8 %i.dv, 10
  %i.dx = add i8 %narrow.i8.i78.i, %i.dv          ; 2 uses
  br i1 %i.dw, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !538

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i: ; preds = %bb.ab
  %i.dy = icmp ugt i8 %i.dq, 23
  %i.dz = icmp ugt i8 %i.dx, 59
  %or.cond6.i.i = select i1 %i.dy, i1 true, i1 %i.dz, !prof !1830
  br i1 %or.cond6.i.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, label %bb.ac, !prof !1831

bb.ac:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i
  %i.ea = zext nneg i8 %i.dq to i64
  %i.eb = zext nneg i8 %i.dx to i64
  %i.ec = mul nuw nsw i64 %i.ea, 60
  %i.ed = add nuw nsw i64 %i.ec, %i.eb
  %i.ee = mul nuw nsw i64 %i.ed, 60               ; 2 uses
  store i64 %i.ee, ptr %5, align 8, !tbaa !170
  %i.ef = icmp eq i8 %i.dj, 43
  br i1 %i.ef, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.eg = sub nsw i64 0, %i.ee
  store i64 %i.eg, ptr %5, align 8, !tbaa !1828
  br label %bb.aj

bb.ae:                                            ; preds = %bb.y
  %i.eh = add i64 %3, -6                          ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %i.eh ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !44  ; 2 uses
  switch i8 %i.ej, label %bb.aj [
    i8 43, label %bb.af
    i8 45, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.ek = icmp eq i8 %i.cu, 58
  br i1 %i.ek, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.em = call fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr noundef nonnull %i.el, ptr noundef %5)
end_hunk_2
