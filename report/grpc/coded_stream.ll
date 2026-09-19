Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/coded_stream?download=true
inline.NumInlined: 268
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6google8protobuf2io16CodedInputStream22GetDirectBufferPointerEPPKvPi:bb.a
  %i.j = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  store ptr %i.j, ptr %1, align 8, !tbaa !41
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.l = load ptr, ptr %0, align 8, !tbaa !24
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %2, align 4, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !25   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !31
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30
  %i.p = sub nsw i32 %i.o, %i.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %.not10 = icmp slt i32 %i.p, %i.r
  br i1 %.not10, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !31
  %.not11 = icmp eq i32 %i.r, %i.t
  br i1 %.not11, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6google8protobuf2io16CodedInputStream25PrintTotalBytesLimitErrorEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b), !inline_history !64 ; 2 uses
  br i1 %i.z, label %bb.i, label %_ZN6google8protobuf2io12_GLOBAL__N_112NextNonEmptyEPNS1_19ZeroCopyInputStreamEPPKvPi.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !34  ; 5 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.j, !llvm.loop !65

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !24
  %i.ad = sext i32 %i.aa to i64                   ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !23
  %.not.i.i = icmp slt i32 %i.aa, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k, !prof !43

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !30  ; 3 uses
  %i.ah = sub nuw nsw i32 2147483647, %i.aa       ; 2 uses
  %.not9 = icmp sgt i32 %i.ag, %i.ah
  br i1 %.not9, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ai = call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.ad, i64 noundef 0, ptr noundef nonnull @.str.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 705, ptr noundef nonnull %i.ai) #22
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.m

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.l
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #20
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #20
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %i.aa, %i.ag
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.al = sub nuw nsw i32 %i.ag, %i.ah            ; 2 uses
  store i32 %i.al, ptr %i.f, align 4, !tbaa !26
  %i.am = zext nneg i32 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 %i.an
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ap = phi ptr [ %i.ao, %bb.o ], [ %i.ae, %bb.n ]
  %storemerge = phi i32 [ 2147483647, %bb.o ], [ %i.ak, %bb.n ] ; 3 uses
  store i32 %storemerge, ptr %i.i, align 8, !tbaa !30
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !25
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar ; 2 uses
  store ptr %i.as, ptr %i.af, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !34
  %i.av = load i32, ptr %i.k, align 8, !tbaa !34
  %i.aw = call i32 @llvm.smin.i32(i32 %i.au, i32 %i.av) ; 2 uses
  %i.ax = icmp slt i32 %i.aw, %storemerge
  br i1 %i.ax, label %bb.q, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

bb.q:                                             ; preds = %bb.p
  %i.ay = sub nsw i32 %storemerge, %i.aw          ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.as, i64 %i.ba
  store ptr %i.bb, ptr %i.af, align 8, !tbaa !23
  br label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit: ; preds = %bb.p, %bb.q
  %.sink.i = phi i32 [ %i.ay, %bb.q ], [ 0, %bb.p ]
  store i32 %.sink.i, ptr %i.c, align 4, !tbaa !25
  br label %bb.r

_ZN6google8protobuf2io12_GLOBAL__N_112NextNonEmptyEPNS1_19ZeroCopyInputStreamEPPKvPi.exit: ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %_ZN6google8protobuf2io12_GLOBAL__N_112NextNonEmptyEPNS1_19ZeroCopyInputStreamEPPKvPi.exit, %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.r
  %.1 = phi i1 [ %i.z, %bb.r ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.f
  %.015 = phi ptr [ %.116, %bb.f ], [ %1, %.preheader ] ; 4 uses
  %.0 = phi i32 [ %.1, %bb.f ], [ %2, %.preheader ] ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %.not = icmp sgt i32 %.0, %i.i
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %i.h, 2147483647                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.015, ptr align 1 %i.e, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.015, i64 %i.k
  %i.m = sub nuw nsw i32 %.0, %i.i
  %i.n = load ptr, ptr %0, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store ptr %i.o, ptr %0, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.116 = phi ptr [ %i.l, %bb.e ], [ %.015, %bb.d ]
  %.1 = phi i32 [ %i.m, %bb.e ], [ %.0, %bb.d ]
  %i.p = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.p, label %bb.c, label %.loopexit, !llvm.loop !0

bb.g:                                             ; preds = %bb.c
  %3 = zext nneg i32 %.0 to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.015, ptr align 1 %i.e, i64 %3, i1 false)
  %i.q = load ptr, ptr %0, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %3
  store ptr %i.r, ptr %0, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g, %bb.b, %bb.a
  %.118 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ true, %bb.g ], [ false, %bb.f ]
  ret i1 %.118
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream10ReadStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = load ptr, ptr %0, align 8, !tbaa !24
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %.not = icmp sgt i32 %2, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %2 to i64                  ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.i, i8 noundef signext 0)
  %i.j = load ptr, ptr %1, align 8, !tbaa !47
  %i.k = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.k, i64 %i.i, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store ptr %i.m, ptr %0, align 8, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream18ReadStringFallbackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i1 [ %i.n, %bb.d ], [ false, %bb.a ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream18ReadStringFallbackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !67
  %i.d = load ptr, ptr %1, align 8, !tbaa !47
  store i8 0, ptr %i.d, align 1, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !34
  %i.h = load i32, ptr %i.e, align 8, !tbaa !34
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %.not = icmp eq i32 %i.i, 2147483647
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = load ptr, ptr %0, align 8, !tbaa !24
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %.neg3.i.neg = sub i64 %i.o, %i.p
  %.neg4.i.neg = trunc i64 %.neg3.i.neg to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %.neg2.i.neg = sub i32 %i.i, %i.k
  %.neg = add i32 %.neg2.i.neg, %i.r
  %i.s = add i32 %.neg, %.neg4.i.neg              ; 2 uses
  %i.t = icmp slt i32 %i.s, 1
  %i.u = icmp slt i32 %2, 1
  %or.cond.not36 = or i1 %i.u, %i.t
  %.not29 = icmp sgt i32 %2, %i.s
  %or.cond31 = or i1 %.not29, %or.cond.not36
  br i1 %or.cond31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = zext nneg i32 %2 to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.v)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.split, %bb.f
  %.0 = phi i32 [ %2, %bb.f ], [ %i.al, %.split ] ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.y = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 3 uses
  %.not45.not.not.not.not = icmp sle i32 %.0, %i.ac ; 2 uses
  br i1 %.not45.not.not.not.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not30 = icmp eq i32 %i.ac, 0
  br i1 %.not30, label %.split, label %.split24

.split24:                                         ; preds = %bb.h
  %sext = shl i64 %i.ab, 32
  %i.ad = ashr exact i64 %sext, 32                ; 3 uses
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !67
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %.split24
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %.split24
  %i.ah = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.y, i64 noundef %i.ad) ; 0 uses
  %i.ai = sub nsw i32 %.0, %i.ac
  %i.aj = load ptr, ptr %0, align 8, !tbaa !24
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ad
  store ptr %i.ak, ptr %0, align 8, !tbaa !24
  br label %.split

.split:                                           ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.al = phi i32 [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %.0, %bb.h ]
  %i.am = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.am, label %bb.g, label %.loopexit, !llvm.loop !66

bb.j:                                             ; preds = %bb.g
  %i.an = sext i32 %.0 to i64                     ; 3 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !67
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.an
  br i1 %i.aq, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit32

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit32: ; preds = %bb.j
  %i.ar = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.y, i64 noundef %i.an) ; 0 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !24
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.an
  store ptr %i.at, ptr %0, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit32
  ret i1 %.not45.not.not.not.not
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream8ReadCordEPN4absl12lts_202505124CordEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_202505124Cord5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = icmp eq ptr %i.c, null
  %i.e = icmp samesign ult i32 %2, 512
  %or.cond = or i1 %i.e, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.l) ; 2 uses
  %i.m = sext i32 %.sroa.speculated to i64        ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_202505124CordaSESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.m, ptr %i.g) ; 0 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !24
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.m
  store ptr %i.p, ptr %0, align 8, !tbaa !24
  %i.q = sub nsw i32 %2, %.sroa.speculated
  %.not = icmp sgt i32 %2, %i.l
  br i1 %.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = add nsw i32 %i.w, %i.u
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit, label %.thread

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_202505124Cord5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.aa = load ptr, ptr %0, align 8, !tbaa !24
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.aj = add i32 %i.ai, %i.ag
  %i.ak = add i32 %i.aj, %i.ae                    ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef %i.ak), !inline_history !29
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.ar = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %.neg4.i = sub i64 %i.at, %i.as
  %.neg5.i = trunc i64 %.neg4.i to i32
  %i.au = load i32, ptr %i.af, align 4, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !30
  %.neg3.i = sub i32 %i.aw, %i.au
  %i.ax = add i32 %.neg3.i, %.neg5.i
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !30
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !23
  store i32 0, ptr %i.af, align 4, !tbaa !25
  store i32 0, ptr %i.ah, align 4, !tbaa !26
  br label %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit

_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit: ; preds = %bb.h, %bb.g, %bb.f
  %.026 = phi i32 [ %i.q, %bb.f ], [ %2, %bb.g ], [ %2, %bb.h ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !34
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !34
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.bb) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !30 ; 2 uses
  %i.bf = sub nsw i32 %i.bc, %i.be                ; 2 uses
  %i.bg = icmp sgt i32 %.026, %i.bf
  br i1 %i.bg, label %bb.i, label %bb.j, !prof !43

bb.i:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !30
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %1, i32 noundef %i.bf) ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv.exit
  %i.bm = add nsw i32 %i.be, %.026
  store i32 %i.bm, ptr %i.bd, align 8, !tbaa !30
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %1, i32 noundef %.026)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.i, %bb.j, %bb.f, %bb.b
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.i ], [ %i.br, %bb.j ], [ true, %bb.d ], [ false, %bb.e ]
  ret i1 %.2
}

declare void @_ZN4absl12lts_202505124Cord5ClearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_202505124CordaSESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian16FallbackEPt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %bb.f

.preheader:                                       ; preds = %bb.a, %bb.e
  %.015.i = phi ptr [ %.116.i, %bb.e ], [ %i.a, %bb.a ] ; 4 uses
  %.0.i = phi i32 [ %.1.i, %bb.e ], [ 2, %bb.a ]  ; 4 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.l = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %.not.i = icmp sgt i32 %.0.i, %i.p
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread

bb.c:                                             ; preds = %.preheader
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = and i64 %i.o, 2147483647                 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.015.i, ptr align 1 %i.l, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i, i64 %i.r
  %2 = add nsw i32 %.0.i, -1
  %i.t = load ptr, ptr %0, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store ptr %i.u, ptr %0, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.116.i = phi ptr [ %i.s, %bb.d ], [ %.015.i, %bb.c ]
  %.1.i = phi i32 [ %2, %bb.d ], [ %.0.i, %bb.c ]
  %i.v = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.v, label %.preheader, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit, !llvm.loop !0

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread: ; preds = %.preheader
  %3 = zext nneg i32 %.0.i to i64                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.015.i, ptr align 1 %i.l, i64 %3, i1 false)
  %i.w = load ptr, ptr %0, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %3
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread, %bb.b
  %storemerge = phi ptr [ %i.x, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.j, %bb.b ]
  %.0 = phi ptr [ %i.a, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.d, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !24
  %i.y = load i16, ptr %.0, align 1
  store i16 %i.y, ptr %1, align 2, !tbaa !69
  br label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit: ; preds = %bb.e, %bb.f
  %.04 = phi i1 [ true, %bb.f ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian32FallbackEPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 3
  br i1 %i.i, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.f

.preheader:                                       ; preds = %bb.a, %bb.e
  %.015.i = phi ptr [ %.116.i, %bb.e ], [ %i.a, %bb.a ] ; 4 uses
  %.0.i = phi i32 [ %.1.i, %bb.e ], [ 4, %bb.a ]  ; 4 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.l = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %.not.i = icmp sgt i32 %.0.i, %i.p
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread

bb.c:                                             ; preds = %.preheader
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = and i64 %i.o, 2147483647                 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.015.i, ptr align 1 %i.l, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i, i64 %i.r
  %i.t = sub nuw nsw i32 %.0.i, %i.p
  %i.u = load ptr, ptr %0, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  store ptr %i.v, ptr %0, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.116.i = phi ptr [ %i.s, %bb.d ], [ %.015.i, %bb.c ]
  %.1.i = phi i32 [ %i.t, %bb.d ], [ %.0.i, %bb.c ]
  %i.w = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.w, label %.preheader, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit, !llvm.loop !0

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread: ; preds = %.preheader
  %2 = zext nneg i32 %.0.i to i64                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.015.i, ptr align 1 %i.l, i64 %2, i1 false)
  %i.x = load ptr, ptr %0, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %2
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread, %bb.b
  %storemerge = phi ptr [ %i.y, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.j, %bb.b ]
  %.0 = phi ptr [ %i.a, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.d, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !24
  %i.z = load i32, ptr %.0, align 1
  store i32 %i.z, ptr %1, align 4, !tbaa !34
  br label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit: ; preds = %bb.e, %bb.f
  %.04 = phi i1 [ true, %bb.f ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian64FallbackEPm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 7
  br i1 %i.i, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

.preheader:                                       ; preds = %bb.a, %bb.e
  %.015.i = phi ptr [ %.116.i, %bb.e ], [ %i.a, %bb.a ] ; 4 uses
  %.0.i = phi i32 [ %.1.i, %bb.e ], [ 8, %bb.a ]  ; 4 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.l = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %.not.i = icmp sgt i32 %.0.i, %i.p
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread

bb.c:                                             ; preds = %.preheader
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = and i64 %i.o, 2147483647                 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.015.i, ptr align 1 %i.l, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i, i64 %i.r
  %i.t = sub nuw nsw i32 %.0.i, %i.p
  %i.u = load ptr, ptr %0, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  store ptr %i.v, ptr %0, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.116.i = phi ptr [ %i.s, %bb.d ], [ %.015.i, %bb.c ]
  %.1.i = phi i32 [ %i.t, %bb.d ], [ %.0.i, %bb.c ]
  %i.w = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.w, label %.preheader, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit, !llvm.loop !0

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread: ; preds = %.preheader
  %2 = zext nneg i32 %.0.i to i64                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.015.i, ptr align 1 %i.l, i64 %2, i1 false)
  %i.x = load ptr, ptr %0, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %2
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread, %bb.b
  %storemerge = phi ptr [ %i.y, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.j, %bb.b ]
  %.0 = phi ptr [ %i.a, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.d, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !24
  %i.z = load i64, ptr %.0, align 1
  store i64 %i.z, ptr %1, align 8, !tbaa !48
  br label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit: ; preds = %bb.e, %bb.f
  %.04 = phi i1 [ true, %bb.f ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream16ReadVarint32SlowEPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.a, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.a, 1
  %i.b = trunc i64 %.fca.0.extract to i32
  store i32 %i.b, ptr %1, align 4, !tbaa !34
  %i.c = trunc i8 %.fca.1.extract to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !24     ; 24 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 9
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt ptr %i.d, %i.e
  br i1 %i.k, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %.not = icmp sgt i8 %i.m, -1
  br i1 %.not, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37    ; 5 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = zext nneg i8 %i.o to i64
  %i.r = shl nuw nsw i64 %i.q, 7
  %i.s = load i8, ptr %i.e, align 1, !tbaa !37
  %i.t = zext i8 %i.s to i64
  %i.u = add nsw i64 %i.r, -128
  %i.v = add nsw i64 %i.u, %i.t
  store i64 %i.v, ptr %i.a, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !37    ; 4 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = zext nneg i8 %i.y to i64
  %i.ab = shl nuw nsw i64 %i.aa, 14
  %i.ac = load i8, ptr %i.e, align 1, !tbaa !37
  %i.ad = zext i8 %i.ac to i64
  %i.ae = zext i8 %i.o to i64
  %i.af = shl nuw nsw i64 %i.ae, 7
  %i.ag = add nsw i64 %i.af, -16512
  %i.ah = add nsw i64 %i.ag, %i.ab
  %i.ai = add nsw i64 %i.ah, %i.ad
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37  ; 3 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = zext nneg i8 %i.al to i64
  %i.ao = shl nuw nsw i64 %i.an, 21
  %i.ap = load i8, ptr %i.e, align 1, !tbaa !37
  %i.aq = zext i8 %i.ap to i64
  %i.ar = zext i8 %i.o to i64
  %i.as = shl nuw nsw i64 %i.ar, 7
  %i.at = zext i8 %i.y to i64
  %i.au = shl nuw nsw i64 %i.at, 14
  %i.av = add nuw nsw i64 %i.as, -2113664
  %i.aw = add nsw i64 %i.av, %i.au
  %i.ax = add nsw i64 %i.aw, %i.ao
  %i.ay = add nsw i64 %i.ax, %i.aq
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

bb.j:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37  ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = zext nneg i8 %i.bb to i64
  %i.be = shl nuw nsw i64 %i.bd, 28
  %i.bf = load i8, ptr %i.e, align 1, !tbaa !37
  %i.bg = zext i8 %i.bf to i64
  %i.bh = zext i8 %i.o to i64
  %i.bi = shl nuw nsw i64 %i.bh, 7
  %i.bj = zext i8 %i.y to i64
  %i.bk = shl nuw nsw i64 %i.bj, 14
  %i.bl = zext i8 %i.al to i64
  %i.bm = shl nuw nsw i64 %i.bl, 21
  %i.bn = add nuw nsw i64 %i.bi, -270549120
  %i.bo = add nuw nsw i64 %i.bn, %i.bk
  %i.bp = add nsw i64 %i.bo, %i.bm
  %i.bq = add nsw i64 %i.bp, %i.be
  %i.br = add nsw i64 %i.bq, %i.bg
  store i64 %i.br, ptr %i.a, align 8, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

bb.l:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = call fastcc noundef ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm6EEEPKhS5_Pm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

bb.n:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !37
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = call fastcc noundef ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm7EEEPKhS5_Pm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

bb.p:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37
  %i.cd = icmp sgt i8 %i.cc, -1
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = call fastcc noundef ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm8EEEPKhS5_Pm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

bb.r:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !37
  %i.ch = icmp sgt i8 %i.cg, -1
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = call fastcc noundef ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm9EEEPKhS5_Pm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

bb.t:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !37
  %i.cl = icmp sgt i8 %i.ck, -1
  br i1 %i.cl, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.cm = call fastcc noundef ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm10EEEPKhS5_Pm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit: ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.0.pn = phi ptr [ %i.cm, %bb.u ], [ %i.w, %bb.e ], [ %i.aj, %bb.g ], [ %i.az, %bb.i ], [ %i.bs, %bb.k ], [ %i.bw, %bb.m ], [ %i.ca, %bb.o ], [ %i.ce, %bb.q ], [ %i.ci, %bb.s ]
  store ptr %.0.pn, ptr %0, align 8, !tbaa !24
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit
  %.sroa.016.0 = phi i64 [ %i.cn, %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit ], [ 0, %bb.t ]
  %.sroa.4.0 = phi i8 [ 1, %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
end_hunk_0
