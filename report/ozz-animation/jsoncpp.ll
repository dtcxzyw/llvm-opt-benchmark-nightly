Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4Json6Reader16recoverFromErrorENS0_9TokenTypeE
define dso_local noundef zeroext i1 @_ZN4Json6Reader16recoverFromErrorENS0_9TokenTypeE(ptr noundef nonnull align 8 dereferenceable(267) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.Json::Reader::Token", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.m = call noundef zeroext i1 @_ZN4Json6Reader9readTokenERNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %i.n = load i32, ptr %2, align 8, !tbaa !104    ; 2 uses
  %i.o = icmp eq i32 %i.n, %1
  %i.p = icmp eq i32 %i.n, 0
  %or.cond = or i1 %i.o, %i.p
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !8

bb.c:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %i.g to i64
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 6
  %i.u = ptrtoint ptr %i.d to i64
  %i.v = ptrtoint ptr %i.f to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.x to i64
  %i.y = shl nsw i64 %.neg.i.i, 3
  %i.z = add i64 %i.w, %i.y
  %i.aa = and i64 %i.z, 4294967288
  %i.ab = add nuw nsw i64 %i.t, %i.aa
  %i.ac = ptrtoint ptr %i.k to i64
  %i.ad = ptrtoint ptr %i.l to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 6
  %i.ag = add nuw nsw i64 %i.ab, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %sext = shl i64 %i.ag, 32
  %i.ai = ashr exact i64 %sext, 32
  tail call void @_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, i64 noundef %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json6Reader18addErrorAndRecoverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_5TokenENS0_9TokenTypeE(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.Json::Reader::Token", align 8 ; 4 uses
  %i.a = tail call noundef zeroext i1 @_ZN4Json6Reader8addErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_5TokenEPKc(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef null) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.n = call noundef zeroext i1 @_ZN4Json6Reader9readTokenERNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  %i.o = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.p = icmp eq i32 %i.o, %3
  %i.q = icmp eq i32 %i.o, 0
  %or.cond.i = or i1 %i.p, %i.q
  br i1 %or.cond.i, label %_ZN4Json6Reader16recoverFromErrorENS0_9TokenTypeE.exit, label %bb.b, !llvm.loop !8

_ZN4Json6Reader16recoverFromErrorENS0_9TokenTypeE.exit: ; preds = %bb.b
  %i.r = ptrtoint ptr %i.h to i64
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 6
  %i.v = ptrtoint ptr %i.e to i64
  %i.w = ptrtoint ptr %i.g to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ne ptr %i.e, null
  %.neg.i.i.i = sext i1 %i.y to i64
  %i.z = shl nsw i64 %.neg.i.i.i, 3
  %i.aa = add i64 %i.x, %i.z
  %i.ab = and i64 %i.aa, 4294967288
  %i.ac = add nuw nsw i64 %i.u, %i.ab
  %i.ad = ptrtoint ptr %i.l to i64
  %i.ae = ptrtoint ptr %i.m to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr exact i64 %i.af, 6
  %i.ah = add nuw nsw i64 %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %sext.i = shl i64 %i.ah, 32
  %i.aj = ashr exact i64 %sext.i, 32
  tail call void @_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, i64 noundef %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, ptr noundef %i.d)
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5ValueixEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.68, i64 noundef 63)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #44
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !50
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1)
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json6Reader12decodeNumberERNS0_5TokenERNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 8 uses
  %4 = alloca %"class.Json::Value", align 8       ; 8 uses
  %5 = alloca %"class.Json::Value", align 8       ; 8 uses
  %6 = alloca %"class.Json::Value", align 8       ; 8 uses
  %7 = alloca %"class.Json::Value", align 8       ; 9 uses
  %8 = alloca %"class.Json::Value", align 8       ; 9 uses
  %9 = alloca %"class.Json::Value", align 8       ; 9 uses
  %10 = alloca %"class.Json::Value", align 8      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !50
  %i.d = icmp eq i8 %i.c, 45                      ; 5 uses
  %spec.select = select i1 %i.d, i64 -9223372036854775808, i64 -1 ; 2 uses
  %spec.select58.idx = zext i1 %i.d to i64
  %spec.select58 = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select58.idx ; 2 uses
  %i.e = udiv i64 %spec.select, 10                ; 2 uses
  %i.f = urem i64 %spec.select, 10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 3 uses
  %i.i = icmp ult ptr %spec.select58, %i.h
  br i1 %i.i, label %.lr.ph, label %.thread86

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.04678 = phi i64 [ %i.u, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.14977 = phi ptr [ %i.j, %bb.f ], [ %spec.select58, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.14977, i64 1 ; 3 uses
  %i.k = load i8, ptr %.14977, align 1, !tbaa !50 ; 2 uses
  %i.l = add i8 %i.k, -58
  %or.cond = icmp ult i8 %i.l, -10
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call noundef zeroext i1 @_ZN4Json6Reader12decodeDoubleERNS0_5TokenERNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.n = zext nneg i8 %i.k to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %.not = icmp ult i64 %.04678, %i.e
  br i1 %.not, label %._crit_edge79, label %bb.d

._crit_edge79:                                    ; preds = %bb.c
  %.pre = zext nneg i32 %i.o to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ugt i64 %.04678, %i.e
  %.not57 = icmp ne ptr %i.j, %i.h
  %or.cond59.not74 = select i1 %i.p, i1 true, i1 %.not57
  %i.q = zext nneg i32 %i.o to i64                ; 2 uses
  %i.r = icmp samesign ult i64 %i.f, %i.q
  %or.cond62 = select i1 %or.cond59.not74, i1 true, i1 %i.r
  br i1 %or.cond62, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_ZN4Json6Reader12decodeDoubleERNS0_5TokenERNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %.thread

bb.f:                                             ; preds = %._crit_edge79, %bb.d
  %.pre-phi = phi i64 [ %.pre, %._crit_edge79 ], [ %i.q, %bb.d ]
  %i.t = mul i64 %.04678, 10
  %i.u = add i64 %i.t, %.pre-phi                  ; 6 uses
  %exitcond.not = icmp eq ptr %i.j, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !335

._crit_edge:                                      ; preds = %bb.f
  %i.v = icmp eq i64 %i.u, -9223372036854775808
  %or.cond63 = select i1 %i.d, i1 %i.v, i1 false
  br i1 %or.cond63, label %bb.g, label %bb.j

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i64 -9223372036854775808, ptr %7, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  invoke void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8            ; 2 uses
  %i.ac = and i16 %i.z, -512
  %i.ad = and i16 %i.ab, -512
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !50
  %i.ae = load i64, ptr %6, align 8, !tbaa !50
  store i64 %i.ae, ptr %2, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %6, align 8, !tbaa !50
  %i.af = and i16 %i.ab, 511
  %i.ag = or disjoint i16 %i.af, %i.ac
  store i16 %i.ag, ptr %i.y, align 8
  %i.ah = and i16 %i.z, 511
  %i.ai = or disjoint i16 %i.ad, %i.ah
  store i16 %i.ai, ptr %i.aa, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !130
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !130
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !130
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !130
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.t

bb.j:                                             ; preds = %._crit_edge
  br i1 %i.d, label %bb.k, label %bb.n

.thread86:                                        ; preds = %bb.a
  br i1 %i.d, label %bb.k, label %.thread90

bb.k:                                             ; preds = %.thread86, %bb.j
  %.046.lcssa8589 = phi i64 [ 0, %.thread86 ], [ %i.u, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.ao = sub nsw i64 0, %.046.lcssa8589
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store i64 %i.ao, ptr %8, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  invoke void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(32) %8)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.au = load i16, ptr %i.at, align 8            ; 2 uses
  %i.av = and i16 %i.as, -512
  %i.aw = and i16 %i.au, -512
  %.sroa.0.0.copyload.i.i.i.i64 = load i64, ptr %2, align 8, !tbaa !50
  %i.ax = load i64, ptr %5, align 8, !tbaa !50
  store i64 %i.ax, ptr %2, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i.i.i64, ptr %5, align 8, !tbaa !50
  %i.ay = and i16 %i.au, 511
  %i.az = or disjoint i16 %i.ay, %i.av
  store i16 %i.az, ptr %i.ar, align 8
  %i.ba = and i16 %i.as, 511
  %i.bb = or disjoint i16 %i.aw, %i.ba
  store i16 %i.bb, ptr %i.at, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !130
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !130
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !130
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !130
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.t

bb.n:                                             ; preds = %bb.j
  %i.bh = icmp ult i64 %i.u, 2147483648
  br i1 %i.bh, label %.thread90, label %bb.q

.thread90:                                        ; preds = %.thread86, %bb.n
  %.046.lcssa858892 = phi i64 [ %i.u, %bb.n ], [ 0, %.thread86 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 1, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  store i64 %.046.lcssa858892, ptr %9, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  invoke void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(32) %9)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.thread90
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 8            ; 2 uses
  %i.bo = and i16 %i.bl, -512
  %i.bp = and i16 %i.bn, -512
  %.sroa.0.0.copyload.i.i.i.i66 = load i64, ptr %2, align 8, !tbaa !50
  %i.bq = load i64, ptr %4, align 8, !tbaa !50
  store i64 %i.bq, ptr %2, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i.i.i66, ptr %4, align 8, !tbaa !50
  %i.br = and i16 %i.bn, 511
  %i.bs = or disjoint i16 %i.br, %i.bo
  store i16 %i.bs, ptr %i.bk, align 8
  %i.bt = and i16 %i.bl, 511
  %i.bu = or disjoint i16 %i.bp, %i.bt
  store i16 %i.bu, ptr %i.bm, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !130
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !130
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !130
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !130
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %.thread

bb.p:                                             ; preds = %.thread90
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i16 2, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  store i64 %i.u, ptr %10, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(32) %10)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8            ; 2 uses
  %i.cg = and i16 %i.cd, -512
  %i.ch = and i16 %i.cf, -512
  %.sroa.0.0.copyload.i.i.i.i68 = load i64, ptr %2, align 8, !tbaa !50
  %i.ci = load i64, ptr %3, align 8, !tbaa !50
  store i64 %i.ci, ptr %2, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i.i.i68, ptr %3, align 8, !tbaa !50
  %i.cj = and i16 %i.cf, 511
  %i.ck = or disjoint i16 %i.cj, %i.cg
  store i16 %i.ck, ptr %i.cc, align 8
  %i.cl = and i16 %i.cd, 511
  %i.cm = or disjoint i16 %i.ch, %i.cl
  store i16 %i.cm, ptr %i.ce, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !130
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !130
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !130
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !130
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
end_hunk_0
