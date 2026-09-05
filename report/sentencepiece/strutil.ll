Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/strutil?download=true
begin_hunk_0_@_ZN6google8protobuf18safe_uint_internalIjEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_:bb.a
  br i1 %i.v, label %_ZN6google8protobuf23safe_parse_positive_intIjEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.g
  %.02640.i = phi ptr [ %i.af, %bb.g ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %.02739.i = phi i32 [ %i.ae, %bb.g ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  %i.w = load i8, ptr %.02640.i, align 1, !tbaa !21 ; 2 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = add i8 %i.w, -58
  %or.cond.i = icmp ult i8 %i.y, -10
  br i1 %or.cond.i, label %_ZN6google8protobuf23safe_parse_positive_intIjEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = icmp ugt i32 %.02739.i, 429496729
  br i1 %i.z, label %_ZN6google8protobuf23safe_parse_positive_intIjEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = mul nuw i32 %.02739.i, 10               ; 2 uses
  %i.ab = sub nsw i32 47, %i.x
  %i.ac = icmp ugt i32 %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6google8protobuf23safe_parse_positive_intIjEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add i32 %i.aa, -48
  %i.ae = add i32 %i.ad, %i.x                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02640.i, i64 1 ; 2 uses
  %.not.i = icmp ult ptr %i.af, %i.u
  br i1 %.not.i, label %.lr.ph.i, label %_ZN6google8protobuf23safe_parse_positive_intIjEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, !llvm.loop !100

_ZN6google8protobuf23safe_parse_positive_intIjEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.02739.lcssa.sink.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ae, %bb.g ], [ -1, %bb.e ], [ %.02739.i, %.lr.ph.i ], [ -1, %bb.f ]
  %i.ag = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ true, %bb.g ], [ false, %bb.e ], [ false, %.lr.ph.i ], [ false, %bb.f ] ; 2 uses
  store i32 %.02739.lcssa.sink.i, ptr %1, align 4, !tbaa !31
  %i.ah = icmp eq ptr %i.s, %i.f
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf23safe_parse_positive_intIjEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit
  %i.ai = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.ai)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf23safe_parse_positive_intIjEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !21
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.ak) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf12safe_strto64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !24
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.e, ptr %i.a, align 8, !tbaa !25
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !20
  %i.h = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.h, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !21
  store i8 %i.j, ptr %i.i, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = load ptr, ptr %2, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.o = invoke noundef zeroext i1 @_ZN6google8protobuf17safe_int_internalIlEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_(ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !21
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret i1 %i.o

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.e
  %i.w = load i64, ptr %i.b, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6google8protobuf17safe_int_internalIlEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_(ptr nofreeobj noundef align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  store i64 0, ptr %1, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = call noundef zeroext i1 @_ZN6google8protobuf15safe_parse_signEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  br i1 %i.c, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !36, !range !37, !noundef !38
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !24
  %i.g = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.i, ptr %i.a, align 8, !tbaa !25
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !20
  %i.l = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.l, ptr %i.f, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !21
  store i8 %i.n, ptr %i.m, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = load ptr, ptr %2, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.s = load ptr, ptr %2, align 8, !tbaa !20     ; 4 uses
  %i.t = load i64, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %_ZN6google8protobuf23safe_parse_positive_intIlEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.h
  %.02640.i = phi ptr [ %i.ac, %bb.h ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %.02739.i = phi i64 [ %i.ab, %bb.h ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  %i.w = load i8, ptr %.02640.i, align 1, !tbaa !21 ; 2 uses
  %i.x = add i8 %i.w, -58
  %or.cond.i = icmp ult i8 %i.x, -10
  br i1 %or.cond.i, label %_ZN6google8protobuf23safe_parse_positive_intIlEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.y = icmp sgt i64 %.02739.i, 922337203685477580
  br i1 %i.y, label %_ZN6google8protobuf23safe_parse_positive_intIlEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = mul nsw i64 %.02739.i, 10                ; 2 uses
  %3 = and i8 %i.w, 15
  %4 = zext nneg i8 %3 to i64                     ; 2 uses
  %5 = xor i64 %4, 9223372036854775807
  %i.aa = icmp sgt i64 %i.z, %5
  br i1 %i.aa, label %_ZN6google8protobuf23safe_parse_positive_intIlEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i64 %i.z, %4                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02640.i, i64 1 ; 2 uses
  %.not.i = icmp ult ptr %i.ac, %i.u
  br i1 %.not.i, label %.lr.ph.i, label %_ZN6google8protobuf23safe_parse_positive_intIlEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, !llvm.loop !101

_ZN6google8protobuf23safe_parse_positive_intIlEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit: ; preds = %.lr.ph.i, %bb.f, %bb.g, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.02739.lcssa.sink.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ab, %bb.h ], [ 9223372036854775807, %bb.f ], [ %.02739.i, %.lr.ph.i ], [ 9223372036854775807, %bb.g ]
  %i.ad = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ true, %bb.h ], [ false, %bb.f ], [ false, %.lr.ph.i ], [ false, %bb.g ] ; 2 uses
  store i64 %.02739.lcssa.sink.i, ptr %1, align 8, !tbaa !25
  %i.ae = icmp eq ptr %i.s, %i.f
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf23safe_parse_positive_intIlEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit
  %i.af = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf23safe_parse_positive_intIlEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !21
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %_ZN6google8protobuf23safe_parse_negative_intIlEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %bb.i, %bb.l
  %.03045.i = phi ptr [ %i.at, %bb.l ], [ %i.ai, %bb.i ] ; 2 uses
  %.03244.i = phi i64 [ %i.as, %bb.l ], [ 0, %bb.i ] ; 3 uses
  %i.an = load i8, ptr %.03045.i, align 1, !tbaa !21 ; 2 uses
  %i.ao = add i8 %i.an, -58
  %or.cond.i5 = icmp ult i8 %i.ao, -10
  br i1 %or.cond.i5, label %_ZN6google8protobuf23safe_parse_negative_intIlEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i4
  %i.ap = icmp slt i64 %.03244.i, -922337203685477580
  br i1 %i.ap, label %_ZN6google8protobuf23safe_parse_negative_intIlEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = mul nsw i64 %.03244.i, 10               ; 2 uses
  %6 = and i8 %i.an, 15
  %7 = zext nneg i8 %6 to i64                     ; 2 uses
  %8 = or disjoint i64 %7, -9223372036854775808
  %i.ar = icmp slt i64 %i.aq, %8
  br i1 %i.ar, label %_ZN6google8protobuf23safe_parse_negative_intIlEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = sub nsw i64 %i.aq, %7                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.03045.i, i64 1 ; 2 uses
  %.not.i6 = icmp ult ptr %i.at, %i.al
  br i1 %.not.i6, label %.lr.ph.i4, label %_ZN6google8protobuf23safe_parse_negative_intIlEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, !llvm.loop !102

_ZN6google8protobuf23safe_parse_negative_intIlEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit: ; preds = %.lr.ph.i4, %bb.j, %bb.k, %bb.l, %bb.i
  %.03244.lcssa.sink.i = phi i64 [ 0, %bb.i ], [ %i.as, %bb.l ], [ -9223372036854775808, %bb.j ], [ %.03244.i, %.lr.ph.i4 ], [ -9223372036854775808, %bb.k ]
  %i.au = phi i1 [ true, %bb.i ], [ true, %bb.l ], [ false, %bb.j ], [ false, %.lr.ph.i4 ], [ false, %bb.k ]
  store i64 %.03244.lcssa.sink.i, ptr %1, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.a, %_ZN6google8protobuf23safe_parse_negative_intIlEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit
  %.0 = phi i1 [ %i.au, %_ZN6google8protobuf23safe_parse_negative_intIlEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit ], [ false, %bb.a ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf13safe_strtou64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !24
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.e, ptr %i.a, align 8, !tbaa !25
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !20
  %i.h = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.h, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !21
  store i8 %i.j, ptr %i.i, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = load ptr, ptr %2, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.o = invoke noundef zeroext i1 @_ZN6google8protobuf18safe_uint_internalImEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_(ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !21
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret i1 %i.o

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.e
  %i.w = load i64, ptr %i.b, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6google8protobuf18safe_uint_internalImEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_(ptr nofreeobj noundef align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  store i64 0, ptr %1, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = call noundef zeroext i1 @_ZN6google8protobuf15safe_parse_signEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %.not = xor i1 %i.c, true
  %i.d = load i8, ptr %i.b, align 1, !range !37
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !24
  %i.g = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.i, ptr %i.a, align 8, !tbaa !25
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !20
  %i.l = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.l, ptr %i.f, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !21
  store i8 %i.n, ptr %i.m, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = load ptr, ptr %2, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.s = load ptr, ptr %2, align 8, !tbaa !20     ; 4 uses
  %i.t = load i64, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %_ZN6google8protobuf23safe_parse_positive_intImEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.g
  %.02640.i = phi ptr [ %i.ac, %bb.g ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %.02739.i = phi i64 [ %i.ab, %bb.g ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  %i.w = load i8, ptr %.02640.i, align 1, !tbaa !21 ; 2 uses
  %i.x = add i8 %i.w, -58
  %or.cond.i = icmp ult i8 %i.x, -10
  br i1 %or.cond.i, label %_ZN6google8protobuf23safe_parse_positive_intImEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = icmp ugt i64 %.02739.i, 1844674407370955161
  br i1 %i.y, label %_ZN6google8protobuf23safe_parse_positive_intImEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = mul nuw i64 %.02739.i, 10                ; 2 uses
  %3 = and i8 %i.w, 15
  %4 = zext nneg i8 %3 to i64                     ; 2 uses
  %5 = xor i64 %4, -1
  %i.aa = icmp ugt i64 %i.z, %5
  br i1 %i.aa, label %_ZN6google8protobuf23safe_parse_positive_intImEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add i64 %i.z, %4                        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02640.i, i64 1 ; 2 uses
  %.not.i = icmp ult ptr %i.ac, %i.u
  br i1 %.not.i, label %.lr.ph.i, label %_ZN6google8protobuf23safe_parse_positive_intImEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit, !llvm.loop !103

_ZN6google8protobuf23safe_parse_positive_intImEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.02739.lcssa.sink.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ab, %bb.g ], [ -1, %bb.e ], [ %.02739.i, %.lr.ph.i ], [ -1, %bb.f ]
  %i.ad = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ true, %bb.g ], [ false, %bb.e ], [ false, %.lr.ph.i ], [ false, %bb.f ] ; 2 uses
  store i64 %.02739.lcssa.sink.i, ptr %1, align 8, !tbaa !25
  %i.ae = icmp eq ptr %i.s, %i.f
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf23safe_parse_positive_intImEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit
  %i.af = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf23safe_parse_positive_intImEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_.exit
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !21
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN6google8protobuf7strings8AlphaNumC2ENS1_3HexE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, i32 %2) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = zext i32 %2 to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = add nsw i64 %i.c, -4
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.012 = phi ptr [ %i.a, %bb.a ], [ %i.j, %bb.b ]
  %.011 = phi i64 [ %1, %bb.a ], [ %i.k, %bb.b ]  ; 2 uses
  %.0 = phi i64 [ %i.f, %bb.a ], [ %i.l, %bb.b ]
  %i.g = and i64 %.011, 15
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN6google8protobuf7strings8AlphaNumC1ENS1_3HexEE9hexdigits, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21
  %i.j = getelementptr inbounds i8, ptr %.012, i64 -1 ; 4 uses
  store i8 %i.i, ptr %i.j, align 1, !tbaa !21
  %i.k = lshr i64 %.011, 4
  %i.l = lshr i64 %.0, 4                          ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !104

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %0, align 8, !tbaa !40
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6StrCatB5cxx11ERKNS0_7strings8AlphaNumES4_(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !23
  store i8 0, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %i.g = add i64 %i.f, %i.d
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.i = load i64, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.j = load ptr, ptr %1, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.j, i64 %i.i, i1 false)
  %i.k = load i64, ptr %i.c, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %.0.i = phi ptr [ %i.l, %bb.b ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ]
  %i.m = load i64, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %.not13.i = icmp eq i64 %i.m, 0
  br i1 %.not13.i, label %_ZN6google8protobufL7Append2EPcRKNS0_7strings8AlphaNumES5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %2, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %i.n, i64 %i.m, i1 false)
  br label %_ZN6google8protobufL7Append2EPcRKNS0_7strings8AlphaNumES5_.exit

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZN6google8protobufL7Append2EPcRKNS0_7strings8AlphaNumES5_.exit: ; preds = %bb.d, %bb.c
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.a, align 8, !tbaa !21
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6StrCatB5cxx11ERKNS0_7strings8AlphaNumES4_S4_(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !23
  store i8 0, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %i.g = add i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41
  %i.j = add i64 %i.g, %i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.l = load i64, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.m, i64 %i.l, i1 false)
  %i.n = load i64, ptr %i.c, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %.0.i = phi ptr [ %i.o, %bb.b ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ] ; 3 uses
  %i.p = load i64, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %.not13.i = icmp eq i64 %i.p, 0
  br i1 %.not13.i, label %_ZN6google8protobufL7Append2EPcRKNS0_7strings8AlphaNumES5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %2, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %i.q, i64 %i.p, i1 false)
  %i.r = load i64, ptr %i.e, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  br label %_ZN6google8protobufL7Append2EPcRKNS0_7strings8AlphaNumES5_.exit

_ZN6google8protobufL7Append2EPcRKNS0_7strings8AlphaNumES5_.exit: ; preds = %bb.d, %bb.c
  %.1.i = phi ptr [ %i.s, %bb.d ], [ %.0.i, %bb.c ]
  %i.t = load i64, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %.not.i12 = icmp eq i64 %i.t, 0
  br i1 %.not.i12, label %_ZN6google8protobufL7Append1EPcRKNS0_7strings8AlphaNumE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobufL7Append2EPcRKNS0_7strings8AlphaNumES5_.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i, ptr align 1 %i.u, i64 %i.t, i1 false)
  br label %_ZN6google8protobufL7Append1EPcRKNS0_7strings8AlphaNumE.exit

bb.f:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZN6google8protobufL7Append1EPcRKNS0_7strings8AlphaNumE.exit: ; preds = %bb.e, %_ZN6google8protobufL7Append2EPcRKNS0_7strings8AlphaNumES5_.exit
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.a, align 8, !tbaa !21
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
end_hunk_0
