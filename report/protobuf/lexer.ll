Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/lexer?download=true
inline.NumInlined: 1075
inline.NumDeleted: 411
begin_hunk_0_@_ZNK6google8protobuf13json_internal16MaybeOwnedString6AsViewEv:bb.a
bb.j:                                             ; preds = %bb.a
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.z, align 8, !tbaa !150
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @.str.28, ptr %i.aa, align 8, !tbaa !152
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #21
  unreachable

_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_N6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_N6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEERKT_RKSt7variantIJDpT0_EE.exit
  %.sroa.0.1 = phi i64 [ %i.ad, %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_N6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEERKT_RKSt7variantIJDpT0_EE.exit ], [ %.pn15.i.i, %bb.i ]
  %.sroa.3.1 = phi ptr [ %i.ab, %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_N6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEERKT_RKSt7variantIJDpT0_EE.exit ], [ %.pn13.i.i, %bb.i ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.3.1, 1
  ret { i64, ptr } %.fca.1.insert
}

declare void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream16BufferAtLeastOneEv(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEv(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %3 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %4 = alloca %"class.google::protobuf::json_internal::BufferingGuard", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %7 = alloca %"struct.google::protobuf::json_internal::JsonLocation", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::StatusOr.79", align 8 ; 28 uses
  %9 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %10 = alloca %"struct.google::protobuf::json_internal::LocationWith", align 8 ; 20 uses
  %11 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %12 = alloca %"class.absl::lts_20250512::StatusOr.9", align 8 ; 36 uses
  %13 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %15 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %16 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %17 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %18 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.absl::lts_20250512::Status", align 8 ; 10 uses
  %21 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @_ZN6google8protobuf13json_internal9JsonLexer11SkipToTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.b = load i64, ptr %11, align 8, !tbaa !29
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.g, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSD_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %common.resume

bb.d:                                             ; preds = %bb.b
  %.pre = load i64, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.e = trunc i64 %.pre to i1
  br i1 %i.e, label %_ZN4absl12lts_202505126StatusD2Ev.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #20
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.thread:    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.fc

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !tbaa.struct !122, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !155
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32, !noalias !161 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !161
  store ptr %1, ptr %4, align 8, !tbaa !80, !noalias !161
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !119, !noalias !161 ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !119, !noalias !161
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %bb.h, label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.k, ptr %i.p, align 8, !tbaa !46, !noalias !161
  br label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit.i.i

_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit.i.i: ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.i

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i:       ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !161
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i, %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit.i.i
  %.sroa.4.0.i.i = phi i8 [ 0, %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit.i.i ], [ %i.am, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i32 [ 0, %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit.i.i ], [ %.sroa.0.125.i.i, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !161
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream16BufferAtLeastOneEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.j unwind label %bb.m, !noalias !161

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %5, align 8, !tbaa !29, !noalias !161 ; 3 uses
  %i.w = icmp eq i64 %i.v, 1
  %i.x = trunc i64 %i.v to i1
  br i1 %i.x, label %_ZN4absl12lts_202505126StatusD2Ev.exit19.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = inttoptr i64 %i.v to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit19.i.i unwind label %bb.l, !noalias !161

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #20, !noalias !161
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit19.i.i:     ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !161
  %.pre.i.i = load i64, ptr %i.j, align 8, !tbaa !32, !noalias !161 ; 6 uses
  br i1 %i.w, label %bb.n, label %bb.ad

bb.m:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !161
  br label %bb.am

bb.n:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit19.i.i
  %.sroa.010.0.copyload.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !41, !noalias !161
  %.sroa.6.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !42, !noalias !161
  %i.ac = load i8, ptr %i.r, align 8, !tbaa !43, !range !44, !noalias !161, !noundef !45
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !46, !noalias !161
  %i.af = sub i64 %.pre.i.i, %i.ae
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !47, !noalias !161 ; 2 uses
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !48, !noalias !161
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.010.0.i.i.i.i.i = phi i64 [ %i.ak, %bb.o ], [ %.sroa.010.0.copyload.i.i.i.i.i, %bb.n ] ; 2 uses
  %.sroa.6.0.i.i.i.i.i = phi ptr [ %i.ag, %bb.o ], [ %.sroa.6.0.copyload.i.i.i.i.i, %bb.n ]
  %.0.i.i.i.i.i = phi i64 [ %i.af, %bb.o ], [ %.pre.i.i, %bb.n ] ; 3 uses
  %i.al = icmp ugt i64 %.0.i.i.i.i.i, %.sroa.010.0.i.i.i.i.i
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i64 noundef %.0.i.i.i.i.i, i64 noundef %.sroa.010.0.i.i.i.i.i) #21
          to label %.noexc.i.i unwind label %bb.w, !noalias !161

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %.pn13.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i.i.i.i, i64 %.0.i.i.i.i.i
  %i.am = load i8, ptr %.pn13.i.i.i.i.i, align 1, !tbaa !14, !noalias !161 ; 6 uses
  %i.an = add i8 %i.am, -48
  %i.ao = icmp ult i8 %i.an, 10
  br i1 %i.ao, label %"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.thread.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = add i8 %.sroa.4.0.i.i, -48              ; 2 uses
  %i.aq = icmp ult i8 %i.ap, 10                   ; 2 uses
  %i.ar = icmp eq i32 %.sroa.0.0.i.i, 0           ; 2 uses
  %i.as = icmp eq i8 %i.am, 45
  %or.cond.i.i.i = and i1 %i.ar, %i.as
  br i1 %or.cond.i.i.i, label %"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = icmp eq i8 %i.am, 46
  %i.au = and i1 %i.aq, %i.at
  %or.cond7.i.i.i = and i1 %i.ar, %i.au
  br i1 %or.cond7.i.i.i, label %"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.thread.i.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = icmp ne i32 %.sroa.0.0.i.i, 2
  %i.aw = and i8 %i.am, -33
  %or.cond12.i.i.i = icmp eq i8 %i.aw, 69
  %i.ax = and i1 %i.av, %or.cond12.i.i.i
  %or.cond33.i.i.i = and i1 %i.aq, %i.ax
  br i1 %or.cond33.i.i.i, label %"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.thread.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = and i8 %.sroa.4.0.i.i, -33
  %or.cond15.i.i.i = icmp eq i8 %i.ay, 69
  br i1 %or.cond15.i.i.i, label %.split.i.i, label %bb.ad

.split.i.i:                                       ; preds = %bb.v
  %i.az = add i8 %i.am, -43
  %switch.and.i.i.i = and i8 %i.az, -3
  %switch.selectcmp.i.i.i = icmp eq i8 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.thread.i.i", label %bb.ad

"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.i.i": ; preds = %bb.s
  %23 = icmp ugt i8 %i.ap, 9
  br i1 %23, label %"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.thread.i.i", label %bb.ad

bb.w:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.thread.i.i": ; preds = %"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.i.i", %.split.i.i, %bb.u, %bb.t, %bb.r
  %.sroa.0.125.i.i = phi i32 [ %.sroa.0.0.i.i, %.split.i.i ], [ 0, %"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.i.i" ], [ 2, %bb.u ], [ 1, %bb.t ], [ %.sroa.0.0.i.i, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !161
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream7AdvanceEm(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 noundef 1)
          to label %bb.x unwind label %bb.z, !noalias !161

bb.x:                                             ; preds = %"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.thread.i.i"
  %i.bb = load i64, ptr %6, align 8, !tbaa !29, !noalias !161
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i, label %bb.y, !prof !31

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal16MaybeOwnedStringEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSB_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.aa, !noalias !155

bb.z:                                             ; preds = %"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.thread.i.i"
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18, !noalias !155
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18, !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !161
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i, !llvm.loop !162

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %.pn13.i.i = phi { ptr, i32 } [ %i.be, %bb.aa ], [ %i.bd, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !161
  br label %bb.am

bb.ad:                                            ; preds = %"_ZZN6google8protobuf13json_internal9JsonLexer14ParseRawNumberEvEN3$_0clEmc.exit.i.i", %.split.i.i, %bb.v, %_ZN4absl12lts_202505126StatusD2Ev.exit19.i.i
  %i.bf = load i32, ptr %i.l, align 4, !tbaa !119, !noalias !161 ; 4 uses
  %i.bg = add nsw i32 %i.bf, 1                    ; 2 uses
  store i32 %i.bg, ptr %i.l, align 4, !tbaa !119, !noalias !161
  %i.bh = icmp eq i32 %i.bf, 0
  br i1 %i.bh, label %.thread.i, label %bb.ae

.thread.i:                                        ; preds = %bb.ad
  store i64 %.pre.i.i, ptr %i.s, align 8, !tbaa !46, !noalias !161
  store i32 2, ptr %i.l, align 4, !tbaa !119, !noalias !161
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bi = add nsw i32 %i.bf, 2                    ; 2 uses
  store i32 %i.bi, ptr %i.l, align 4, !tbaa !119, !noalias !161
  %i.bj = icmp eq i32 %i.bg, 0
  br i1 %i.bj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i64 %.pre.i.i, ptr %i.s, align 8, !tbaa !46, !noalias !161
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.thread.i
  %i.bk = phi i32 [ 2, %.thread.i ], [ 2, %bb.af ], [ %i.bi, %bb.ae ]
  %i.bl = sub i64 %.pre.i.i, %i.k
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %1, ptr %i.bm, align 8, !tbaa !133, !noalias !155
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !41, !noalias !155
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.bl, ptr %.sroa.526.0..sroa_idx.i, align 8, !tbaa !41, !noalias !155
  store i8 1, ptr %i.bn, align 8, !tbaa !83, !alias.scope !158, !noalias !155
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %1, ptr %i.bo, align 8, !tbaa !80, !alias.scope !158, !noalias !155
  %i.bp = add nsw i32 %i.bf, 3
  store i32 %i.bp, ptr %i.l, align 4, !tbaa !119, !noalias !161
  %i.bq = icmp eq i32 %i.bk, 0
  br i1 %i.bq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i64 %.pre.i.i, ptr %i.s, align 8, !tbaa !46, !noalias !161
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i64 1, ptr %8, align 8, !tbaa !29, !alias.scope !158, !noalias !155
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %_ZN6google8protobuf13json_internal16MaybeOwnedStringD2Ev.exit.i.i unwind label %bb.aj, !noalias !161

bb.aj:                                            ; preds = %bb.ai
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #20, !noalias !161
  unreachable

_ZN6google8protobuf13json_internal16MaybeOwnedStringD2Ev.exit.i.i: ; preds = %bb.ai
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i unwind label %bb.ak, !noalias !161

bb.ak:                                            ; preds = %_ZN6google8protobuf13json_internal16MaybeOwnedStringD2Ev.exit.i.i
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #20, !noalias !161
  unreachable

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i: ; preds = %_ZN6google8protobuf13json_internal16MaybeOwnedStringD2Ev.exit.i.i, %bb.ab
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %"_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9TakeWhileIZNS1_9JsonLexer14ParseRawNumberEvE3$_0EEN4absl12lts_202505128StatusOrINS1_16MaybeOwnedStringEEET_.exit.i" unwind label %bb.al, !noalias !155

bb.al:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #20, !noalias !155
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.fb, %bb.am, %bb.bu
  %common.resume.op = phi { ptr, i32 } [ %.pn12.pn.pn.i, %bb.bu ], [ %.pn15.pn.pn.i.i, %bb.am ], [ %.pn52.pn.pn, %bb.fb ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.am:                                            ; preds = %bb.ac, %bb.w, %bb.m
  %.pn15.pn.pn.i.i = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %.pn13.i.i, %bb.ac ], [ %i.ba, %bb.w ]
  call void @_ZN6google8protobuf13json_internal14BufferingGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18, !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !161
  br label %common.resume

"_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9TakeWhileIZNS1_9JsonLexer14ParseRawNumberEvE3$_0EEN4absl12lts_202505128StatusOrINS1_16MaybeOwnedStringEEET_.exit.i": ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !155
  %i.bx = load i64, ptr %8, align 8, !tbaa !29, !noalias !155 ; 4 uses
  store i64 %i.bx, ptr %9, align 8, !tbaa !29, !noalias !155
  %i.by = trunc i64 %i.bx to i1
  br i1 %i.by, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %"_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9TakeWhileIZNS1_9JsonLexer14ParseRawNumberEvE3$_0EEN4absl12lts_202505128StatusOrINS1_16MaybeOwnedStringEEET_.exit.i"
  %i.bz = inttoptr i64 %i.bx to ptr
  %i.ca = atomicrmw add ptr %i.bz, i32 1 monotonic, align 4, !noalias !155 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %"_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9TakeWhileIZNS1_9JsonLexer14ParseRawNumberEvE3$_0EEN4absl12lts_202505128StatusOrINS1_16MaybeOwnedStringEEET_.exit.i"
  %i.cb = icmp eq i64 %i.bx, 1
  br i1 %i.cb, label %bb.as, label %bb.ap, !prof !31

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSD_(ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !155
  br label %bb.bu

bb.ar:                                            ; preds = %bb.ap
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !155
  br label %bb.bn

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !155
  %i.cd = load i64, ptr %8, align 8, !tbaa !29, !noalias !155
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.au, label %bb.at, !prof !31

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %8) #21
          to label %.noexc.i unwind label %bb.bl, !noalias !155

.noexc.i:                                         ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.cg = invoke { i64, ptr } @_ZNK6google8protobuf13json_internal16MaybeOwnedString6AsViewEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cf)
          to label %bb.av unwind label %bb.bl, !noalias !155

bb.av:                                            ; preds = %bb.au
  %i.ch = extractvalue { i64, ptr } %i.cg, 0      ; 2 uses
  %i.ci = load i64, ptr %i.i, align 8, !tbaa !58, !noalias !155
  %i.cj = add i64 %i.ci, %i.ch
  store i64 %i.cj, ptr %i.i, align 8, !tbaa !58, !noalias !155
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !61, !noalias !155
  %i.cm = add i64 %i.cl, %i.ch
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !61, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18, !noalias !155
  %i.cn = load i64, ptr %8, align 8, !tbaa !29, !noalias !155
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %_ZNO4absl12lts_202505128StatusOrIN6google8protobuf13json_internal16MaybeOwnedStringEEdeEv.exit.i, label %bb.aw, !prof !31

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %8) #21
          to label %.noexc16.i unwind label %bb.bm, !noalias !155

.noexc16.i:                                       ; preds = %bb.aw
end_hunk_0
