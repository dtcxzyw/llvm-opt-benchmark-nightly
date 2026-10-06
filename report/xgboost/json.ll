Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/json?download=true
inline.NumInlined: 3220
inline.NumDeleted: 1196
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN7xgboost10JsonReader6ExpectEaa:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.q:                                             ; preds = %bb.o
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %6, align 8, !tbaa !128   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cp
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.q
  %i.dm = load i64, ptr %i.cp, align 8, !tbaa !54
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.b
  %.pn11 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.j, %bb.b ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.dj, %bb.q ]
  %i.do = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.b
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !54
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10JsonReader11ParseStringEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.xgboost::Json") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.xgboost::JsonString", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN7xgboost10JsonReader18ParseStringLiteralB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %3, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 7 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !126
  %i.e = load ptr, ptr %2, align 8, !tbaa !128    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !129  ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !128
  %i.l = load i64, ptr %i.f, align 8, !tbaa !54
  store i64 %i.l, ptr %i.d, align 8, !tbaa !54
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !129
  br label %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.m, ptr %i.o, align 8, !tbaa !129
  store ptr %i.f, ptr %2, align 8, !tbaa !128
  store i64 0, ptr %i.n, align 8, !tbaa !129
  store i8 0, ptr %i.f, align 8, !tbaa !54
  %i.p = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #37
          to label %bb.c unwind label %bb.d       ; 7 uses

bb.c:                                             ; preds = %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.r, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %i.p, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 0, ptr %i.u, align 8, !tbaa !129
  store i8 0, ptr %i.t, align 8, !tbaa !54
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.s) #16
  store ptr %i.p, ptr %0, align 8, !tbaa !103
  %i.v = atomicrmw add ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %3, align 8, !tbaa !28
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZN7xgboost10JsonStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.d, align 8, !tbaa !54
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #34, !inline_history !130
  br label %_ZN7xgboost10JsonStringD2Ev.exit

_ZN7xgboost10JsonStringD2Ev.exit:                 ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.aa = load ptr, ptr %2, align 8, !tbaa !128   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.f
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !54
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.d:                                             ; preds = %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %3, align 8, !tbaa !28
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !128 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.d
  br i1 %i.ag, label %_ZN7xgboost10JsonStringD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %bb.d
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !54
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #34, !inline_history !130
  br label %_ZN7xgboost10JsonStringD2Ev.exit5

_ZN7xgboost10JsonStringD2Ev.exit5:                ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.aj = load ptr, ptr %2, align 8, !tbaa !128   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit5
  %i.al = load i64, ptr %i.f, align 8, !tbaa !54
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10JsonReader9ParseNullEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.xgboost::Json") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !149  ; 6 uses
  %.promoted.i.i = load i64, ptr %i.b, align 8, !tbaa !151 ; 3 uses
  %i.e = icmp ult i64 %.promoted.i.i, %i.d
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN7xgboost10JsonReader10SkipSpacesEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152
  br label %bb.b

bb.b:                                             ; preds = %_ZN7xgboost12_GLOBAL__N_17IsSpaceEa.exit.i.i, %.lr.ph.i.i
  %i.h = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.k, %_ZN7xgboost12_GLOBAL__N_17IsSpaceEa.exit.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !54
  switch i8 %i.j, label %_ZN7xgboost10JsonReader10SkipSpacesEv.exit.i [
    i8 32, label %_ZN7xgboost12_GLOBAL__N_17IsSpaceEa.exit.i.i
    i8 13, label %_ZN7xgboost12_GLOBAL__N_17IsSpaceEa.exit.i.i
    i8 10, label %_ZN7xgboost12_GLOBAL__N_17IsSpaceEa.exit.i.i
    i8 9, label %_ZN7xgboost12_GLOBAL__N_17IsSpaceEa.exit.i.i
  ]

_ZN7xgboost12_GLOBAL__N_17IsSpaceEa.exit.i.i:     ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.k = add i64 %i.h, 1                          ; 3 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !151
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.d
  br i1 %exitcond.not.i.i, label %.loopexit.thread, label %bb.b

_ZN7xgboost10JsonReader10SkipSpacesEv.exit.i:     ; preds = %bb.b, %bb.a
  %i.l = phi i64 [ %.promoted.i.i, %bb.a ], [ %i.h, %bb.b ] ; 6 uses
  %i.m = icmp eq i64 %i.l, %i.d
  br i1 %i.m, label %.loopexit.thread, label %.loopexit, !prof !162

.loopexit.thread:                                 ; preds = %_ZN7xgboost12_GLOBAL__N_17IsSpaceEa.exit.i.i, %_ZN7xgboost10JsonReader10SkipSpacesEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !126
  store i8 -1, ptr %i.n, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread

.loopexit:                                        ; preds = %_ZN7xgboost10JsonReader10SkipSpacesEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.s = load i8, ptr %i.r, align 1, !tbaa !54
  %i.t = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.t, ptr %i.b, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !126
  store i8 %i.s, ptr %i.u, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 1, ptr %i.v, align 8, !tbaa !129
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.w, align 1, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.y = icmp eq i64 %i.t, %i.d
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, !prof !162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread: ; preds = %.loopexit, %.loopexit.thread
  %.ph47 = phi ptr [ %i.o, %.loopexit.thread ], [ %i.v, %.loopexit ] ; 2 uses
  %.ph48 = phi ptr [ %i.n, %.loopexit.thread ], [ %i.u, %.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 -1, ptr %i.z, align 1, !tbaa !54
  store i64 2, ptr %.ph47, align 8, !tbaa !129
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %.loopexit
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !152
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !54
  %i.ae = add i64 %i.l, 2                         ; 3 uses
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !151
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !54
  store i64 2, ptr %i.v, align 8, !tbaa !129
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 3 uses
  store i8 0, ptr %i.ag, align 2, !tbaa !54
  %i.ah = icmp eq i64 %i.ae, %i.d
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1, !prof !162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread
  %.ph50 = phi ptr [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %.ph51 = phi ptr [ %.ph48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %.ph52 = phi ptr [ %.ph47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ] ; 2 uses
  store i8 -1, ptr %.ph50, align 1, !tbaa !54
  store i64 3, ptr %.ph52, align 8, !tbaa !129
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 19
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !152
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !54
  %i.am = add i64 %i.l, 3                         ; 3 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !151
  store i8 %i.al, ptr %i.ag, align 2, !tbaa !54
  store i64 3, ptr %i.v, align 8, !tbaa !129
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 19 ; 3 uses
  store i8 0, ptr %i.an, align 1, !tbaa !54
  %i.ao = icmp eq i64 %i.am, %i.d
  br i1 %i.ao, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %bb.c, !prof !162

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !152
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !54
  %i.as = add i64 %i.l, 4
  store i64 %i.as, ptr %i.b, align 8, !tbaa !151
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.thread, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1
  %i.at = phi ptr [ %i.an, %bb.c ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1 ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.thread ]
  %i.au = phi ptr [ %i.v, %bb.c ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1 ], [ %.ph52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.thread ]
  %i.av = phi ptr [ %i.u, %bb.c ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1 ], [ %.ph51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.thread ] ; 5 uses
  %.0.i.2 = phi i8 [ %i.ar, %bb.c ], [ -1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1 ], [ -1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.thread ]
  store i8 %.0.i.2, ptr %i.at, align 1, !tbaa !54
  store i64 4, ptr %i.au, align 8, !tbaa !129
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %i.aw, align 4, !tbaa !54
  %lhsv = load i32, ptr %i.av, align 4
  %.not45 = icmp eq i32 %lhsv, 1819047278
  br i1 %.not45, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 27, ptr %i.a, align 8, !tbaa !95
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.e   ; 2 uses

.noexc13:                                         ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store ptr %i.ay, ptr %3, align 8, !tbaa !128
  %i.az = load i64, ptr %i.a, align 8, !tbaa !95  ; 3 uses
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ay, ptr noundef nonnull align 1 dereferenceable(27) @.str.38, i64 27, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !129
  %i.bb = load ptr, ptr %3, align 8, !tbaa !128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  invoke void @_ZNK7xgboost10JsonReader5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc13
  %i.bd = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ax
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.d
  %i.bf = load i64, ptr %i.ax, align 8, !tbaa !54
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.f:                                             ; preds = %.noexc13
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ax
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.f
  %i.bl = load i64, ptr %i.ax, align 8, !tbaa !54
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37
          to label %bb.g unwind label %bb.h       ; 4 uses

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 6, ptr %i.bp, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost8JsonNullE, i64 16), ptr %i.bn, align 8, !tbaa !28
  store ptr %i.bn, ptr %0, align 8, !tbaa !103
  %i.bq = atomicrmw add ptr %i.bo, i32 1 monotonic, align 4 ; 0 uses
  %i.br = load ptr, ptr %2, align 8, !tbaa !128   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.av
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.g
  %i.bt = load i64, ptr %i.av, align 8, !tbaa !54
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.f, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.h
  %.pn10 = phi { ptr, i32 } [ %i.bh, %bb.e ], [ %i.bv, %bb.h ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.bi, %bb.f ]
  %i.bw = load ptr, ptr %2, align 8, !tbaa !128   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.av
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.by = load i64, ptr %i.av, align 8, !tbaa !54
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10JsonReader10ParseArrayEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.xgboost::Json") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.75", align 16   ; 14 uses
  %3 = alloca %"class.xgboost::JsonArray", align 8 ; 12 uses
  %4 = alloca %"class.xgboost::Json", align 8     ; 9 uses
  %5 = alloca %"class.xgboost::JsonArray", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !151  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !149
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %_ZN7xgboost10JsonReader11GetNextCharEv.exit.i.thread, label %_ZN7xgboost10JsonReader11GetNextCharEv.exit.i, !prof !160

_ZN7xgboost10JsonReader11GetNextCharEv.exit.i:    ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = load i8, ptr %i.h, align 1, !tbaa !54    ; 2 uses
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !151
  %.not.i = icmp eq i8 %i.i, 91
  br i1 %.not.i, label %_ZN7xgboost10JsonReader18GetConsecutiveCharEc.exit, label %_ZN7xgboost10JsonReader11GetNextCharEv.exit.i.thread, !prof !161

_ZN7xgboost10JsonReader11GetNextCharEv.exit.i.thread: ; preds = %bb.a, %_ZN7xgboost10JsonReader11GetNextCharEv.exit.i
  %.0.i.i39 = phi i8 [ %i.i, %_ZN7xgboost10JsonReader11GetNextCharEv.exit.i ], [ -1, %bb.a ]
  invoke void @_ZN7xgboost10JsonReader6ExpectEaa(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 91, i8 noundef signext %.0.i.i39)
          to label %_ZN7xgboost10JsonReader18GetConsecutiveCharEc.exit unwind label %.loopexit.split-lp

_ZN7xgboost10JsonReader18GetConsecutiveCharEc.exit: ; preds = %_ZN7xgboost10JsonReader11GetNextCharEv.exit.i.thread, %_ZN7xgboost10JsonReader11GetNextCharEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %_ZN7xgboost10JsonReader18GetConsecutiveCharEc.exit
  %i.n = load i64, ptr %i.a, align 8, !tbaa !151  ; 3 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !149
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %_ZN7xgboost10JsonReader12PeekNextCharEv.exit.thread, label %_ZN7xgboost10JsonReader12PeekNextCharEv.exit

_ZN7xgboost10JsonReader12PeekNextCharEv.exit:     ; preds = %bb.b
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !152
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %i.s = load i8, ptr %i.r, align 1, !tbaa !54
  %i.t = icmp eq i8 %i.s, 93
  br i1 %i.t, label %_ZN7xgboost10JsonReader18GetConsecutiveCharEc.exit15, label %_ZN7xgboost10JsonReader12PeekNextCharEv.exit.thread

_ZN7xgboost10JsonReader18GetConsecutiveCharEc.exit15: ; preds = %_ZN7xgboost10JsonReader12PeekNextCharEv.exit
  %i.u = add i64 %i.n, 1
  store i64 %i.u, ptr %i.a, align 8, !tbaa !151
  %.pre67 = load ptr, ptr %i.m, align 16, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 4, ptr %i.w, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost9JsonArrayE, i64 16), ptr %3, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.y = load <2 x ptr>, ptr %2, align 16, !tbaa !145
  store <2 x ptr> %i.y, ptr %i.x, align 8, !tbaa !145
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr %.pre67, ptr %i.z, align 8, !tbaa !144
end_hunk_0
