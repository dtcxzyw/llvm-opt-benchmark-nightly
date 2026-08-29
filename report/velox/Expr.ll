Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Expr?download=true
inline.NumInlined: 11089
inline.NumDeleted: 4035
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5folly13to_ascii_sizeILm10EEEmm:bb.a
bb.m:                                             ; preds = %bb.l
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 104), align 8, !tbaa !35
  %i.ab = icmp ult i64 %0, %i.aa
  br i1 %i.ab, label %.loopexit, label %bb.n, !prof !63

bb.n:                                             ; preds = %bb.m
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 112), align 8, !tbaa !35
  %i.ad = icmp ult i64 %0, %i.ac
  br i1 %i.ad, label %.loopexit, label %bb.o, !prof !63

bb.o:                                             ; preds = %bb.n
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 120), align 8, !tbaa !35
  %i.af = icmp ult i64 %0, %i.ae
  br i1 %i.af, label %.loopexit, label %bb.p, !prof !63

bb.p:                                             ; preds = %bb.o
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !35
  %i.ah = icmp ult i64 %0, %i.ag
  br i1 %i.ah, label %.loopexit, label %bb.q, !prof !63

bb.q:                                             ; preds = %bb.p
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !35
  %i.aj = icmp ult i64 %0, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.r, !prof !63

bb.r:                                             ; preds = %bb.q
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !35
  %i.al = icmp ult i64 %0, %i.ak
  br i1 %i.al, label %.loopexit, label %bb.s, !prof !63

bb.s:                                             ; preds = %bb.r
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !35
  %i.an = icmp ult i64 %0, %i.am
  br i1 %i.an, label %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit, label %.loopexit, !prof !63

_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit: ; preds = %bb.s
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit
  %i.ao = phi i64 [ 20, %bb.s ], [ 1, %bb.a ], [ 19, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ], [ 9, %bb.i ], [ 10, %bb.j ], [ 11, %bb.k ], [ 12, %bb.l ], [ 13, %bb.m ], [ 14, %bb.n ], [ 15, %bb.o ], [ 16, %bb.p ], [ 17, %bb.q ], [ 18, %bb.r ]
  ret i64 %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !35
  %i.b = icmp ult i64 %1, %i.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.d = icmp ult i64 %1, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !prof !1941
  br i1 %or.cond, label %._crit_edge.thread, label %bb.b, !prof !1941

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !35
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %._crit_edge.thread14, label %bb.c, !prof !63

._crit_edge.thread14:                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.h = load i16, ptr %i.g, align 2, !tbaa !1942
  br label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !35
  %i.j = icmp ult i64 %1, %i.i
  br i1 %i.j, label %.lr.ph.preheader, label %bb.d, !prof !63

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !35
  %i.l = icmp ult i64 %1, %i.k
  br i1 %i.l, label %.lr.ph.preheader, label %bb.e, !prof !63

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !35
  %i.n = icmp ult i64 %1, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %bb.f, !prof !63

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 48), align 8, !tbaa !35
  %i.p = icmp ult i64 %1, %i.o
  br i1 %i.p, label %.lr.ph.preheader, label %bb.g, !prof !63

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 56), align 8, !tbaa !35
  %i.r = icmp ult i64 %1, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %bb.h, !prof !63

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 64), align 8, !tbaa !35
  %i.t = icmp ult i64 %1, %i.s
  br i1 %i.t, label %.lr.ph.preheader, label %bb.i, !prof !63

bb.i:                                             ; preds = %bb.h
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 72), align 8, !tbaa !35
  %i.v = icmp ult i64 %1, %i.u
  br i1 %i.v, label %.lr.ph.preheader, label %bb.j, !prof !63

bb.j:                                             ; preds = %bb.i
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 80), align 8, !tbaa !35
  %i.x = icmp ult i64 %1, %i.w
  br i1 %i.x, label %.lr.ph.preheader, label %bb.k, !prof !63

bb.k:                                             ; preds = %bb.j
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 88), align 8, !tbaa !35
  %i.z = icmp ult i64 %1, %i.y
  br i1 %i.z, label %.lr.ph.preheader, label %bb.l, !prof !63

bb.l:                                             ; preds = %bb.k
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 96), align 8, !tbaa !35
  %i.ab = icmp ult i64 %1, %i.aa
  br i1 %i.ab, label %.lr.ph.preheader, label %bb.m, !prof !63

bb.m:                                             ; preds = %bb.l
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 104), align 8, !tbaa !35
  %i.ad = icmp ult i64 %1, %i.ac
  br i1 %i.ad, label %.lr.ph.preheader, label %bb.n, !prof !63

bb.n:                                             ; preds = %bb.m
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 112), align 8, !tbaa !35
  %i.af = icmp ult i64 %1, %i.ae
  br i1 %i.af, label %.lr.ph.preheader, label %bb.o, !prof !63

bb.o:                                             ; preds = %bb.n
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 120), align 8, !tbaa !35
  %i.ah = icmp ult i64 %1, %i.ag
  br i1 %i.ah, label %.lr.ph.preheader, label %bb.p, !prof !63

bb.p:                                             ; preds = %bb.o
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !35
  %i.aj = icmp ult i64 %1, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.q, !prof !63

bb.q:                                             ; preds = %bb.p
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !35
  %i.al = icmp ult i64 %1, %i.ak
  br i1 %i.al, label %.lr.ph.preheader, label %bb.r, !prof !63

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !35
  %i.an = icmp ult i64 %1, %i.am
  br i1 %i.an, label %.lr.ph.preheader, label %bb.s, !prof !63

bb.s:                                             ; preds = %bb.r
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !35
  %i.ap = icmp ult i64 %1, %i.ao
  br i1 %i.ap, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit, label %.lr.ph.preheader, !prof !63

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit: ; preds = %bb.s
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit
  %.ph = phi i64 [ 19, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit ], [ 18, %bb.r ], [ 17, %bb.q ], [ 16, %bb.p ], [ 15, %bb.o ], [ 14, %bb.n ], [ 13, %bb.m ], [ 12, %bb.l ], [ 11, %bb.k ], [ 10, %bb.j ], [ 9, %bb.i ], [ 8, %bb.h ], [ 7, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 20, %bb.s ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0.i6 = phi i64 [ %i.ar, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.014.i5 = phi i64 [ %i.aq, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %i.aq = add i64 %.014.i5, -2                    ; 4 uses
  %i.ar = udiv i64 %.0.i6, 100                    ; 2 uses
  %i.as = urem i64 %.0.i6, 100
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !1942
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i16 %i.au, ptr %i.av, align 1
  %i.aw = icmp ugt i64 %i.aq, 2
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !1943

._crit_edge.thread:                               ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !1942
  br label %bb.u

._crit_edge:                                      ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ar
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !1942 ; 2 uses
  %i.bb = icmp eq i64 %i.aq, 2
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.thread14, %._crit_edge
  %i.bc = phi i16 [ %i.h, %._crit_edge.thread14 ], [ %i.ba, %._crit_edge ]
  %i.bd = phi i64 [ 2, %._crit_edge.thread14 ], [ %.ph, %._crit_edge ]
  store i16 %i.bc, ptr %0, align 1
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.be = phi i16 [ %i.ay, %._crit_edge.thread ], [ %i.ba, %._crit_edge ]
  %i.bf = phi i64 [ 1, %._crit_edge.thread ], [ %.ph, %._crit_edge ]
  %i.bg = lshr i16 %i.be, 8
  %i.bh = trunc nuw i16 %i.bg to i8
  store i8 %i.bh, ptr %0, align 1, !tbaa !10
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit: ; preds = %bb.t, %bb.u
  %i.bi = phi i64 [ %i.bd, %bb.t ], [ %i.bf, %bb.u ]
  ret i64 %i.bi
}

declare void @_ZNK8facebook5velox10BaseVector8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(94), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Buffer7setSizeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.750", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !1764
  %i.c = and i8 %i.b, 2
  %.not4 = icmp eq i8 %i.c, 0
  br i1 %.not4, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1762 ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.g, !prof !63

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1944
  store i64 %1, ptr %2, align 16, !tbaa !10, !alias.scope !1947, !noalias !1944
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.e, ptr %i.f, align 16, !tbaa !10, !alias.scope !1947, !noalias !1944
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.26, i64 11, i64 68, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1944
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.26) #44
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.m, align 8, !tbaa !1765
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox13AlignedBuffer10transferToEPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.747", align 16 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1576 ; 3 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1762 ; 3 uses
  %4 = icmp ugt i64 %i.e, -97
  br i1 %4, label %bb.c, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !63

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1950
  store ptr @.str.146, ptr %2, align 16, !tbaa !10, !alias.scope !1953, !noalias !1950
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 96, ptr %i.f, align 16, !tbaa !10, !noalias !1950
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.e, ptr %i.g, align 16, !tbaa !10, !noalias !1950
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.153, i64 20, i64 1100, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1950
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.153) #44
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.h

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.b
  %5 = add nuw i64 %i.e, 96
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef %1, ptr noundef nonnull %0, i64 noundef %5)
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  store ptr %1, ptr %i.a, align 8, !tbaa !1109
  br label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, %bb.a, %bb.f
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.f ], [ false, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer15setEndGuardImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1761
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1762
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i64 -4982426243126403411, ptr %i.e, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox13AlignedBuffer17checkEndGuardImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.751", align 16 ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1761
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1762 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %.not = icmp eq i64 %i.f, -4982426243126403411
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30, !noalias !1956
  %.sroa.03.0.insert.ext.i = zext i64 %i.d to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %1, align 16, !noalias !1956
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.161, i64 31, i64 4, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !1956
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox13AlignedBuffer17checkEndGuardImplEvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.161) #44
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer10freeToPoolEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.747", align 16 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1762 ; 3 uses
  %3 = icmp ugt i64 %i.b, -97
  br i1 %3, label %bb.b, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30, !noalias !1959
  store ptr @.str.146, ptr %1, align 16, !tbaa !10, !alias.scope !1962, !noalias !1959
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 96, ptr %i.c, align 16, !tbaa !10, !noalias !1959
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.b, ptr %i.d, align 16, !tbaa !10, !noalias !1959
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.153, i64 20, i64 1100, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !1959
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.153) #44
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !10
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.e

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1576 ; 2 uses
  %4 = add nuw i64 %i.b, 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(264) %i.l, ptr noundef nonnull %0, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Buffer8copyFromEPKS1_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.654", align 16 ; 7 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.750", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !1764  ; 2 uses
  %i.d = and i8 %i.c, 2
  %.not13 = icmp eq i8 %i.d, 0
  br i1 %.not13, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer8copyFromEPKS1_mE18veloxCheckFailArgs) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1762 ; 2 uses
  %.not = icmp ult i64 %i.f, %2
  br i1 %.not, label %bb.d, label %bb.g, !prof !63

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1965
  store i64 %i.f, ptr %4, align 16, !tbaa !10, !alias.scope !1968, !noalias !1965
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %2, ptr %i.g, align 16, !tbaa !10, !alias.scope !1968, !noalias !1965
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.26, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1965
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer8copyFromEPKS1_mE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.26) #44
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %.not4 = icmp eq i8 %i.c, 1
  br i1 %.not4, label %bb.k, label %bb.h, !prof !24

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 1, ptr %i.a, align 1, !tbaa !1971
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1972
  store ptr %i.b, ptr %3, align 16, !tbaa !10, !noalias !1972
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox6Buffer4TypeENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.n, align 8, !tbaa !10, !noalias !1972
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.o, align 16, !tbaa !10, !noalias !1972
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox6Buffer4TypeENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.p, align 8, !tbaa !10, !noalias !1972
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.26, i64 11, i64 255, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer8copyFromEPKS1_mE18veloxCheckFailArgs_3, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.26) #44
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !31     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.j
  %i.u = load i64, ptr %i.s, align 8, !tbaa !10
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1761
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1761
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.z, i64 %2, i1 false)
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6Buffer16releaseResourcesEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6Buffer15setEndGuardImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8facebook5velox6Buffer17checkEndGuardImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Buffer10freeToPoolEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer10freeToPoolEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.157) #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox6Buffer4TypeENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.752", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !1581
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !10
  %scevgep.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !1583
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !10
  %i.e = load ptr, ptr %1, align 8, !tbaa !1585   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1587 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !10
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !1585
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !1587
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i64 [ %.pre6, %bb.c ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !1585
  %i.s = sub i64 %i.m, %i.q
  store i64 %i.s, ptr %i.f, align 8, !tbaa !1587
  %i.t = load i8, ptr %0, align 1, !tbaa !1971
  %i.u = call ptr @_ZNK3fmt3v119formatterIN8facebook5velox6Buffer4TypeEcvE6formatES5_RNS0_7contextE(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterIN8facebook5velox6Buffer4TypeEcvE6formatES5_RNS0_7contextE(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN8facebook5velox6Buffer10typeStringB5cxx11ENS1_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i8 noundef zeroext %1)
  %i.a = load ptr, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox14ConstantVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_:bb.a

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !2300
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.66") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bl = load <2 x ptr>, ptr %9, align 16, !tbaa !49, !noalias !2303
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !2300
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !74 ; 8 uses
  store <2 x ptr> %i.bl, ptr %i.aq, align 8, !tbaa !49
  %.not.i.i.i.i23 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i23, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bn, align 8, !tbaa !77
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !79
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #30, !inline_history !315
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #30, !inline_history !315
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.ab ], [ %i.ca, %bb.ac ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.ad, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.z, %bb.x
  %i.cc = load ptr, ptr %i.aq, align 8, !tbaa !205 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(94) %i.cc, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.af unwind label %bb.u

bb.ae:                                            ; preds = %bb.w
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p
  %i.ch = load i8, ptr %i.at, align 8, !tbaa !2041, !range !55, !noundef !59
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  %i.cj = load i32, ptr %i.as, align 8, !tbaa !973, !noalias !2306 ; 4 uses
  %i.ck = icmp ult i32 %i.cj, 13
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !2306
  %i.co = select i1 %i.ck, ptr %i.cl, ptr %i.cn   ; 2 uses
  %i.cp = zext i32 %i.cj to i64                   ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.cq, ptr %12, align 8, !tbaa !107, !alias.scope !2306
  %i.cr = icmp eq ptr %i.co, null
  br i1 %i.cr, label %.noexc.i28, label %bb.ah

.noexc.i28:                                       ; preds = %bb.ag
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.191) #44
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %.noexc.i28
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.cs = icmp ugt i32 %i.cj, 15
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.ct = add nuw nsw i64 %i.cp, 1
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #47
          to label %.noexc29 unwind label %bb.am  ; 2 uses

.noexc29:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.cu, ptr %12, align 8, !tbaa !31, !alias.scope !2306
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !10, !alias.scope !2306
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc29, %bb.ah
  %i.cv = phi ptr [ %i.cu, %.noexc29 ], [ %i.cq, %bb.ah ] ; 3 uses
  switch i32 %i.cj, label %bb.aj [
    i32 1, label %bb.ai
    i32 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.cw = load i8, ptr %i.cl, align 4, !tbaa !10, !noalias !2306
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !10
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull align 1 %i.co, i64 %i.cp, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.cp, ptr %i.cx, align 8, !tbaa !108, !alias.scope !2306
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cp
  store i8 0, ptr %i.cy, align 1, !tbaa !10
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE8setValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cz = load ptr, ptr %12, align 8, !tbaa !31   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cq
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.al
  %i.db = load i64, ptr %i.cq, align 8, !tbaa !10
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ao

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc.i28
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.an:                                            ; preds = %bb.ak
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %12, align 8, !tbaa !31   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cq
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.an
  %i.dh = load i64, ptr %i.cq, align 8, !tbaa !10
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.am
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.am ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.de, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.af
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.ae, %bb.v, %bb.u
  %.pn18 = phi { ptr, i32 } [ %i.bj, %bb.v ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.bi, %bb.u ], [ %i.cg, %bb.ae ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #30
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aq) #30
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #30
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.t
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.ap ], [ %i.bh, %bb.t ]
  resume { ptr, i32 } %.pn18.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind noalias writable sret(%"class.boost::intrusive_ptr") align 8 %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i1 noundef zeroext %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.747", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.747", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  br i1 %4, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %1, -64                          ; 3 uses
  %9 = icmp ugt i64 %i.a, -161
  br i1 %9, label %bb.c, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !63

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !2309
  store ptr @.str.146, ptr %7, align 16, !tbaa !10, !alias.scope !2312, !noalias !2309
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.a, ptr %i.b, align 16, !tbaa !10, !noalias !2309
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 160, ptr %i.c, align 16, !tbaa !10, !noalias !2309
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.153, i64 20, i64 1100, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !2309
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.153) #44
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %8, align 8, !tbaa !31     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.h = load i64, ptr %i.f, align 8, !tbaa !10
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.aj, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.b
  %10 = add nuw i64 %i.a, 160
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %11 = icmp ugt i64 %1, -97
  br i1 %11, label %bb.g, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, !prof !63

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !2315
  store ptr @.str.146, ptr %5, align 16, !tbaa !10, !alias.scope !2318, !noalias !2315
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.j, align 16, !tbaa !10, !noalias !2315
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 96, ptr %i.k, align 16, !tbaa !10, !noalias !2315
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.153, i64 20, i64 1100, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !2315
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.153) #44
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %6, align 8, !tbaa !31     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !10
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23: ; preds = %bb.f
  %12 = add nuw i64 %1, 96
  %i.r = load ptr, ptr %2, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %12)
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  %.0 = phi i64 [ %10, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ], [ %i.u, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23 ] ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %.0, i64 0) ; 12 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.k, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit, !prof !63

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit: ; preds = %bb.j
  %i.z = add i64 %.0, -96
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %2, ptr %i.ab, align 8, !tbaa !1576
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !1761
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i64 %i.z, ptr %i.ae, align 8, !tbaa !1762
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  store i32 0, ptr %i.af, align 8, !tbaa !1763
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  store i8 1, ptr %i.ag, align 4, !tbaa !1764
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 -1, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.y, align 8, !tbaa !80
  store i64 %1, ptr %i.ad, align 8, !tbaa !1765
  store ptr %i.y, ptr %0, align 8, !tbaa !1574
  %i.ai = atomicrmw add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  invoke void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 noundef 0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #30
  br label %common.resume

bb.m:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.750", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1762 ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !2321
  store i64 %2, ptr %4, align 16, !tbaa !10, !alias.scope !2324, !noalias !2321
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !10, !alias.scope !2324, !noalias !2321
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.26, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !2321
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.26) #44
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !10
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !55
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPccEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !1764
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit, label %bb.g, !prof !24

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #44
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1761
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %gepdiff = sub nuw nsw i64 %2, %1
  %i.s = load i8, ptr %3, align 1, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %i.s, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit

_ZSt4fillIPccEvT_S1_RKT0_.exit:                   ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKPNS1_6memory10MemoryPoolERiRKiRKSt10shared_ptrINS1_10BaseVectorEEEEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.66", align 16 ; 6 uses
  %6 = alloca %"struct.facebook::velox::SimpleVectorStats", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !79
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = load ptr, ptr %1, align 8, !tbaa !1109
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i32, ptr %3, align 4, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74   ; 2 uses
  %i.j = load <2 x ptr>, ptr %4, align 8, !tbaa !49
  store <2 x ptr> %i.j, ptr %5, align 16, !tbaa !49
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.k, align 4, !tbaa !21
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.p, align 8, !tbaa !2327
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.q, align 8, !tbaa !2327
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS2_EE(ptr noundef nonnull align 8 dereferenceable(272) %i.c, ptr noundef %i.d, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.e unwind label %.body, !inline_history !2328

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.s, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !79
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #30, !inline_history !2329
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #30, !inline_history !2329
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i6.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i6.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i32 %i.v, -1
end_hunk_1
