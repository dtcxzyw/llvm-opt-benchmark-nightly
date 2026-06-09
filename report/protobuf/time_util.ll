inline.NumInlined: 352
inline.NumDeleted: 135
begin_hunk_0_@_ZN6google8protobuf4util8TimeUtil8ToStringB5cxx11ERKNS0_9TimestampE:bb.a
  %i.t = load ptr, ptr %7, align 8, !tbaa !25, !noalias !8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30, !noalias !8
  store i64 %i.v, ptr %6, align 8, !noalias !8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.t, ptr %i.w, align 8, !noalias !8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit.i
  %i.x = load ptr, ptr %7, align 8, !tbaa !25, !noalias !8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !7, !noalias !8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !8
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i

bb.i:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %7, align 8, !tbaa !25, !noalias !8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i: ; preds = %bb.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !7, !noalias !8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !8
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !8
  store i64 1, ptr %8, align 8, !noalias !8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.5, ptr %i.aj, align 8, !noalias !8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_110FormatTimeB5cxx11Eli.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i
  %.pn21.i = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i ]
  %i.al = load ptr, ptr %0, align 8, !tbaa !25, !alias.scope !8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %bb.l
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !7, !alias.scope !8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
  resume { ptr, i32 } %.pn21.i

_ZN6google8protobuf4util12_GLOBAL__N_110FormatTimeB5cxx11Eli.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !8
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util8TimeUtil10FromStringESt17basic_string_viewIcSt11char_traitsIcEEPNS0_9TimestampE(i64 %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::Time", align 8 ; 7 uses
  %4 = alloca %"class.google::protobuf::Timestamp", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051212RFC3339_fullE) #18
  %i.c = call noundef zeroext i1 @_ZN4absl12lts_202505129ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES4_PNS0_4TimeEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(i64 %i.b, ptr nonnull @_ZN4absl12lts_2025051212RFC3339_fullE, i64 %0, ptr %1, ptr noundef nonnull %3, ptr noundef null) ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf4util12_GLOBAL__N_19ParseTimeESt17basic_string_viewIcSt11char_traitsIcEEPlPi.exit

_ZN6google8protobuf4util12_GLOBAL__N_19ParseTimeESt17basic_string_viewIcSt11char_traitsIcEEPlPi.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %3, align 8
  %.sroa.22.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !3
  %i.d = call { i64, i64 } @_ZN4absl12lts_2025051210ToTimespecENS0_4TimeE(i64 %.sroa.01.0.copyload.i, i32 %.sroa.22.0.copyload.i) #16 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %i.g = trunc i64 %i.f to i32                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.h = add i32 %i.g, -1000000000
  %or.cond.i = icmp ult i32 %i.h, -1999999999
  br i1 %or.cond.i, label %bb.c, label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

bb.c:                                             ; preds = %bb.b
  %i.i = sdiv i32 %i.g, 1000000000
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i64 %i.e, %i.j
  %i.l = srem i32 %i.g, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit: ; preds = %bb.b, %bb.c
  %.013.i = phi i32 [ %i.l, %bb.c ], [ %i.g, %bb.b ] ; 4 uses
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.e, %bb.b ]
  %i.m = icmp slt i32 %.013.i, 0
  %i.n = add nsw i32 %.013.i, 1000000000
  %.114.i = select i1 %i.m, i32 %i.n, i32 %.013.i
  %.013.lobit.i = ashr i32 %.013.i, 31
  %i.o = sext i32 %.013.lobit.i to i64
  %.1.i = add nsw i64 %.0.i, %i.o
  call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef null)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.1.i, ptr %i.p, align 8, !tbaa !7, !alias.scope !34
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !3, !alias.scope !34
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %.114.i, ptr %i.s, align 8, !tbaa !7, !alias.scope !34
  %i.t = or i32 %i.r, 3
  store i32 %i.t, ptr %i.q, align 8, !tbaa !3, !alias.scope !34
  %i.u = icmp eq ptr %2, %4
  br i1 %i.u, label %_ZN6google8protobuf9TimestampaSEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !37 ; 3 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !39

bb.g:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.af = add nsw i64 %i.ad, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.ai = inttoptr i64 %i.ad to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i: ; preds = %bb.h, %bb.g
  %.0.i.i7.i = phi ptr [ %i.ah, %bb.g ], [ %i.ai, %bb.h ]
  %i.aj = icmp eq ptr %.0.i.i.i, %.0.i.i7.i
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf9Timestamp12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %_ZN6google8protobuf9TimestampaSEOS1_.exit unwind label %bb.k

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf9Timestamp8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %_ZN6google8protobuf9TimestampaSEOS1_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #20
  unreachable

_ZN6google8protobuf9TimestampaSEOS1_.exit:        ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit, %bb.i, %bb.j
  call void @_ZN6google8protobuf9TimestampD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_19ParseTimeESt17basic_string_viewIcSt11char_traitsIcEEPlPi.exit, %_ZN6google8protobuf9TimestampaSEOS1_.exit
  ret i1 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN6google8protobuf9TimestampD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil14GetCurrentTimeEv(ptr dead_on_unwind noalias writable sret(%"class.google::protobuf::Timestamp") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZN4absl12lts_202505123NowEv() ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.a, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.a, 1
  %i.b = tail call { i64, i64 } @_ZN4absl12lts_2025051210ToTimespecENS0_4TimeE(i64 %.fca.0.extract.i, i32 %.fca.1.extract.i) #16 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = trunc i64 %i.d to i32                    ; 4 uses
  %i.f = add i32 %i.e, -1000000000
  %or.cond.i = icmp ult i32 %i.f, -1999999999
  br i1 %or.cond.i, label %bb.b, label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i32 %i.e, 1000000000
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.c, %i.h
  %i.j = srem i32 %i.e, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit: ; preds = %bb.a, %bb.b
  %.013.i = phi i32 [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.c, %bb.a ]
  %i.k = icmp slt i32 %.013.i, 0
  %i.l = add nsw i32 %.013.i, 1000000000
  %.114.i = select i1 %i.k, i32 %i.l, i32 %.013.i
  %.013.lobit.i = ashr i32 %.013.i, 31
  %i.m = sext i32 %.013.lobit.i to i64
  %.1.i = add nsw i64 %.0.i, %i.m
  tail call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.1.i, ptr %i.n, align 8, !tbaa !7, !alias.scope !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !3, !alias.scope !43
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.114.i, ptr %i.q, align 8, !tbaa !7, !alias.scope !43
  %i.r = or i32 %i.p, 3
  store i32 %i.r, ptr %i.o, align 8, !tbaa !3, !alias.scope !43
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil8GetEpochEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Timestamp") align 8 %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil8ToStringB5cxx11ERKNS0_8DurationE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %3 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %4 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !30
  store i8 0, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7    ; 3 uses
  %i.g = icmp slt i64 %i.d, 0
  %i.h = icmp slt i32 %i.f, 0
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.b
  %i.j = sub nsw i64 0, %i.d
  %i.k = sub nsw i32 0, %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.017 = phi i64 [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %i.d, %bb.a ]
  %.0 = phi i32 [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %i.f, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.n = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef %.017, ptr noundef nonnull %i.m)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  store i64 %i.q, ptr %5, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.m, ptr %i.r, align 8, !tbaa !49
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i64 1, ptr %6, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.1, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.t = srem i32 %.0, 1000000
  %i.u = sdiv i32 %.0, 1000000
  %i.v = icmp eq i32 %i.t, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !50
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %i.u to i64
  %i.w = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i.i to ptr
  store ptr %i.w, ptr %4, align 8, !tbaa !7, !noalias !50
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.x, align 8, !tbaa !16, !noalias !50
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.6, i64 4, ptr nonnull %4, i64 1)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !50
  br label %_ZN6google8protobuf4util12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit

bb.i:                                             ; preds = %bb.g
  %i.y = srem i32 %.0, 1000
  %i.z = sdiv i32 %.0, 1000
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !55
  %.sroa.0.0.insert.ext.i.i.i.i5.i = zext i32 %i.z to i64
  %i.ab = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i5.i to ptr
  store ptr %i.ab, ptr %3, align 8, !tbaa !7, !noalias !55
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ac, align 8, !tbaa !16, !noalias !55
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.7, i64 4, ptr nonnull %3, i64 1)
          to label %.noexc25 unwind label %bb.n

.noexc25:                                         ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !55
  br label %_ZN6google8protobuf4util12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !58
  %.sroa.0.0.insert.ext.i.i.i.i10.i = zext i32 %.0 to i64
  %i.ad = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i10.i to ptr
  store ptr %i.ad, ptr %2, align 8, !tbaa !7, !noalias !58
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ae, align 8, !tbaa !16, !noalias !58
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.8, i64 4, ptr nonnull %2, i64 1)
          to label %.noexc26 unwind label %bb.n

.noexc26:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !58
  br label %_ZN6google8protobuf4util12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit

_ZN6google8protobuf4util12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit: ; preds = %.noexc26, %.noexc25, %.noexc
  %i.af = load ptr, ptr %8, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !30
  store i64 %i.ah, ptr %7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.af, ptr %i.ai, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit
  %i.aj = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !7
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.p

bb.m:                                             ; preds = %bb.d, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.s

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.o:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.o
  %i.au = load i64, ptr %i.as, align 8, !tbaa !7
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.n ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.aq, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.s

bb.p:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i64 1, ptr %9, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.2, ptr %i.aw, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

bb.r:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.r
  %.pn22.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.ax, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.ao, %bb.m ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.s
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !7
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  resume { ptr, i32 } %.pn22.pn
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util8TimeUtil10FromStringESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE(i64 %0, ptr nofree readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = icmp ult i64 %0, 2
  br i1 %i.e, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 %0
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !7
  %.not = icmp eq i8 %i.h, 115
  br i1 %.not, label %bb.c, label %bb.an

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %1, align 1, !tbaa !7
  %i.j = icmp eq i8 %i.i, 45                      ; 3 uses
  %i.k = zext i1 %i.j to i64                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store i64 0, ptr %i.m, align 8, !tbaa !30
  store i8 0, ptr %i.l, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 0, ptr %i.o, align 8, !tbaa !30
  store i8 0, ptr %i.n, align 8, !tbaa !7
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %.not13.i.i = icmp eq i64 %i.p, 0
  br i1 %.not13.i.i, label %bb.f, label %bb.e, !llvm.loop !61

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1.i.i174 = phi i64 [ %0, %bb.c ], [ %i.p, %bb.d ] ; 4 uses
  %i.p = add i64 %.1.i.i174, -1                   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7
  %i.s = icmp eq i8 %i.r, 46
  br i1 %i.s, label %bb.q, label %bb.d, !llvm.loop !61

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.t = xor i64 %i.k, -1
  %i.u = add i64 %0, %i.t
  %i.v = sub nuw i64 %0, %i.k
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.u) ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.x, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 %.sroa.speculated.i, ptr %i.c, align 8, !tbaa !63
  %i.y = icmp ugt i64 %.sroa.speculated.i, 15
  br i1 %i.y, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc39 unwind label %bb.o   ; 2 uses

.noexc39:                                         ; preds = %.noexc.i.i.i
  store ptr %i.z, ptr %5, align 8, !tbaa !25
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !63
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !7
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc39, %bb.f
  %i.ab = phi ptr [ %i.z, %.noexc39 ], [ %i.x, %bb.f ] ; 2 uses
  switch i64 %.sroa.speculated.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !7
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !7
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %i.w, i64 %.sroa.speculated.i, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !30
  %i.af = load ptr, ptr %5, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.ah = load ptr, ptr %3, align 8, !tbaa !25    ; 6 uses
  %i.ai = icmp eq ptr %i.ah, %i.l
  %i.aj = load ptr, ptr %5, align 8, !tbaa !25    ; 5 uses
  %i.ak = icmp eq ptr %i.aj, %i.x                 ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.i
  br i1 %i.ak, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.i
  br i1 %i.ak, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !30 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  switch i64 %i.al, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !7
  store i8 %i.an, ptr %i.ah, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  store i64 %i.ao, ptr %i.m, align 8, !tbaa !30
  %i.ap = load ptr, ptr %3, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !7
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.aj, ptr %3, align 8, !tbaa !25
  %i.ar = load <2 x i64>, ptr %i.ae, align 8, !tbaa !7
  store <2 x i64> %i.ar, ptr %i.m, align 8, !tbaa !7
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.as = load i64, ptr %i.l, align 8, !tbaa !7
  store ptr %i.aj, ptr %3, align 8, !tbaa !25
  %i.at = load <2 x i64>, ptr %i.ae, align 8, !tbaa !7
  store <2 x i64> %i.at, ptr %i.m, align 8, !tbaa !7
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ah, ptr %5, align 8, !tbaa !25
  store i64 %i.as, ptr %i.x, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.x, ptr %5, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.au = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ah, %bb.m ], [ %i.x, %bb.n ]
  store i64 0, ptr %i.ae, align 8, !tbaa !30
  store i8 0, ptr %i.au, align 1, !tbaa !7
  %i.av = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.x
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ax = load i64, ptr %i.x, align 8, !tbaa !7
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.az = load i64, ptr %i.o, align 8, !tbaa !30
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.az, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.p ; 0 uses

bb.o:                                             ; preds = %.noexc.i.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.am

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bd = sub i64 %i.p, %i.k
  %i.be = sub nuw i64 %0, %i.k
  %.sroa.speculated.i41 = call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bd) ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.bg, ptr %6, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %.sroa.speculated.i41, ptr %i.b, align 8, !tbaa !63
  %i.bh = icmp ugt i64 %.sroa.speculated.i41, 15
  br i1 %i.bh, label %.noexc.i.i.i51, label %._crit_edge.i.i.i.i50

.noexc.i.i.i51:                                   ; preds = %bb.q
  %i.bi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc53 unwind label %bb.ah  ; 2 uses

.noexc53:                                         ; preds = %.noexc.i.i.i51
  store ptr %i.bi, ptr %6, align 8, !tbaa !25
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !63
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !7
  br label %._crit_edge.i.i.i.i50

._crit_edge.i.i.i.i50:                            ; preds = %.noexc53, %bb.q
  %i.bk = phi ptr [ %i.bi, %.noexc53 ], [ %i.bg, %bb.q ] ; 2 uses
  switch i64 %.sroa.speculated.i41, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

end_hunk_0
