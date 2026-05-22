inline.NumInlined: 266
inline.NumDeleted: 160
begin_hunk_0_@_ZN5folly9TimePoint5resetEv:bb.a
  br label %_ZN5follyL19getSchedTimeWaitingEi.exit

bb.as:                                            ; preds = %bb.ao
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.aq, %bb.ap
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #26
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn46.i = phi { ptr, i32 } [ %i.br, %bb.at ], [ %i.bq, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.an
  %.pn46.pn.i = phi { ptr, i32 } [ %.pn46.i, %bb.au ], [ %i.bi, %bb.an ]
  invoke void @__cxa_end_catch()
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.ak, %bb.f
  %.merged.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %.pn43.pn.i, %bb.ak ], [ %.pn46.pn.i, %bb.av ]
  resume { ptr, i32 } %.merged.i

bb.ax:                                            ; preds = %bb.av
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #30
  unreachable

bb.ay:                                            ; preds = %bb.ad, %bb.y, %bb.s, %bb.k
  unreachable

_ZN5follyL19getSchedTimeWaitingEi.exit:           ; preds = %bb.e, %bb.ah, %bb.ar
  %.sroa.0.0.i = phi i64 [ %i.bc, %bb.ah ], [ 0, %bb.ar ], [ 0, %bb.e ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i, ptr %i.bu, align 8, !tbaa !11
  %i.bv = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i64 @_ZN5folly13getOSThreadIDEv() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -1, 1001) i64 @_ZN5follyL23determineSchedstatUnitsEv() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::Range", align 8      ; 7 uses
  %1 = alloca %"class.folly::Range", align 8      ; 5 uses
  %2 = alloca %"class.folly::Expected", align 8   ; 6 uses
  %3 = alloca %class.anon.4, align 8              ; 5 uses
  %4 = alloca %class.anon.6, align 8              ; 5 uses
  %5 = alloca %"class.folly::Range", align 8      ; 7 uses
  %6 = alloca %"class.folly::Range", align 8      ; 5 uses
  %7 = alloca %"class.folly::Expected", align 8   ; 6 uses
  %8 = alloca %class.anon.4, align 8              ; 5 uses
  %9 = alloca %class.anon.6, align 8              ; 3 uses
  %10 = alloca %"class.folly::Range", align 8     ; 7 uses
  %11 = alloca %"class.folly::Range", align 8     ; 5 uses
  %12 = alloca %"class.folly::Expected", align 8  ; 6 uses
  %13 = alloca %class.anon.4, align 8             ; 5 uses
  %14 = alloca %class.anon.6, align 8             ; 3 uses
  %15 = alloca %struct.utsname, align 1           ; 5 uses
  %16 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %19 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.b = alloca [1024 x i8], align 16             ; 13 uses
  %20 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %21 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.c = call i32 @uname(ptr noundef nonnull %15) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %16, ptr noundef nonnull @.str.6, i32 noundef 78, i32 noundef 2)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %16)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.8, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.f = tail call ptr @__errno_location() #27
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  invoke void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i32 noundef %i.g)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = load ptr, ptr %17, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %17, align 8, !tbaa !18    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !23
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.bf

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %17, align 8, !tbaa !18    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.g
  %i.w = load i64, ptr %i.u, align 8, !tbaa !23
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.f
  %.pn36 = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.s, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.e
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.q, %bb.e ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.bg

bb.i:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 130 ; 11 uses
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #26 ; 9 uses
  %i.aa = icmp samesign eq i64 %i.z, 0
  br i1 %i.aa, label %_ZNK5folly5RangeIPKcE4findERS1_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = call noundef ptr @memchr(ptr noundef nonnull %i.y, i32 noundef 46, i64 noundef %i.z) #31 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZNK5folly5RangeIPKcE4findERS1_.exit.thread.i, label %_ZNK5folly5RangeIPKcE4findERS1_.exit.i

_ZNK5folly5RangeIPKcE4findERS1_.exit.i:           ; preds = %bb.j
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_ZNK5folly5RangeIPKcE4findERS1_.exit.thread.i, label %bb.l

_ZNK5folly5RangeIPKcE4findERS1_.exit.thread.i:    ; preds = %_ZNK5folly5RangeIPKcE4findERS1_.exit.i, %bb.j, %bb.i
  %i.ah = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull @.str.22)
          to label %.invoke unwind label %bb.k

bb.k:                                             ; preds = %_ZNK5folly5RangeIPKcE4findERS1_.exit.thread.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr nonnull %i.ah) #26
  br label %.body

bb.l:                                             ; preds = %_ZNK5folly5RangeIPKcE4findERS1_.exit.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.z, i64 %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.speculated.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.y, ptr %11, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !39
  store ptr %i.y, ptr %10, align 8, !noalias !45
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8, !noalias !45
  %i.am = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %10) #26, !noalias !45 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.an = and i64 %i.am, 255
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.m, label %bb.o, !prof !52

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !53, !noalias !54 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !53, !noalias !54 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %12, align 8, !alias.scope !54
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !54
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 1, ptr %i.ap, align 8, !alias.scope !54
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %.not14.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i.i, label %_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i, label %.lr.ph.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, %.sroa.2.0.copyload.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %bb.n
  %.01115.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.n ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.m ] ; 2 uses
  %i.ar = load i8, ptr %.01115.i.i.i.i.i.i, align 1, !tbaa !23
  %i.as = sext i8 %i.ar to i32
  %i.at = call i32 @isspace(i32 noundef %i.as) #31
  %.not12.not.i.i.i.i.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not12.not.i.i.i.i.not.i.i, label %bb.p, label %bb.n

bb.o:                                             ; preds = %bb.l
  %.sroa.42.0.extract.shift.i.i.i.i = lshr i64 %i.am, 8
  %.sroa.42.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.42.0.extract.shift.i.i.i.i to i8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %11, ptr %13, align 8, !tbaa !55
  invoke void @_ZZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef zeroext %.sroa.42.0.extract.trunc.i.i.i.i)
          to label %.noexc59.invoke unwind label %bb.ab

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %12, ptr %14, align 8, !tbaa !57
  br label %.invoke112

_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.au = add nuw i64 %i.af, 1                    ; 4 uses
  %.not.i = icmp ult i64 %i.af, %i.z
  br i1 %.not.i, label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i, label %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread.i

_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i:       ; preds = %_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i
  %i.av = getelementptr i8, ptr %i.y, i64 %i.au   ; 5 uses
  %i.aw = icmp eq i64 %i.au, %i.z
  br i1 %i.aw, label %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i
  %gepdiff = sub i64 %i.z, %i.au                  ; 2 uses
  %i.ax = call noundef ptr @memchr(ptr noundef %i.av, i32 noundef 46, i64 noundef %gepdiff) #31 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread.i, label %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i.i

_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i.i: ; preds = %bb.q
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = icmp eq i64 %i.bb, -1
  %i.bd = add i64 %i.bb, %i.au                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, -1
  %or.cond.i = or i1 %i.bc, %i.be
  br i1 %or.cond.i, label %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread.i, label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i

_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread.i:   ; preds = %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i.i, %bb.q, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i, %_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i
  %i.bf = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull @.str.23)
          to label %.invoke unwind label %bb.r

.invoke:                                          ; preds = %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread.i, %_ZNK5folly5RangeIPKcE4findERS1_.exit.thread.i
  %i.bg = phi ptr [ %i.ah, %_ZNK5folly5RangeIPKcE4findERS1_.exit.thread.i ], [ %i.bf, %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread.i ]
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #28
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr nonnull %i.bf) #26
  br label %.body

_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i:         ; preds = %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i.i
  %.sroa.speculated.i23.i = call i64 @llvm.umin.i64(i64 %gepdiff, i64 %i.bb)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.speculated.i23.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.av, ptr %6, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bi, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !59
  store ptr %i.av, ptr %5, align 8, !noalias !65
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.bk, align 8, !noalias !65
  %i.bl = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %5) #26, !noalias !65 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.bm = and i64 %i.bl, 255
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.s, label %bb.u, !prof !52

bb.s:                                             ; preds = %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i.i28.i = load ptr, ptr %5, align 8, !tbaa !53, !noalias !72 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i29.i = load ptr, ptr %i.bk, align 8, !tbaa !53, !noalias !72 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i28.i, ptr %7, align 8, !alias.scope !72
  %.sroa.46.0..sroa_idx.i.i.i.i.i30.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i29.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i30.i, align 8, !alias.scope !72
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 1, ptr %i.bo, align 8, !alias.scope !72
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %.not14.i.i.i.i.i31.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i28.i, %.sroa.2.0.copyload.i.i.i.i.i.i29.i
  br i1 %.not14.i.i.i.i.i31.i, label %_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit38.i, label %.lr.ph.i.i.i.i.i32.i

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i32.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i33.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i35.i = icmp eq ptr %i.bp, %.sroa.2.0.copyload.i.i.i.i.i.i29.i
  br i1 %.not.i.i.i.i.i35.i, label %_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit38.i, label %.lr.ph.i.i.i.i.i32.i

.lr.ph.i.i.i.i.i32.i:                             ; preds = %bb.s, %bb.t
  %.01115.i.i.i.i.i33.i = phi ptr [ %i.bp, %bb.t ], [ %.sroa.0.0.copyload.i.i.i.i.i.i28.i, %bb.s ] ; 2 uses
  %i.bq = load i8, ptr %.01115.i.i.i.i.i33.i, align 1, !tbaa !23
  %i.br = sext i8 %i.bq to i32
  %i.bs = call i32 @isspace(i32 noundef %i.br) #31
  %.not12.not.i.i.i.i.not.i34.i = icmp eq i32 %i.bs, 0
  br i1 %.not12.not.i.i.i.i.not.i34.i, label %bb.v, label %bb.t

bb.u:                                             ; preds = %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i
  %.sroa.42.0.extract.shift.i.i.i26.i = lshr i64 %i.bl, 8
  %.sroa.42.0.extract.trunc.i.i.i27.i = trunc i64 %.sroa.42.0.extract.shift.i.i.i26.i to i8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %6, ptr %8, align 8, !tbaa !55
  invoke void @_ZZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef zeroext %.sroa.42.0.extract.trunc.i.i.i27.i)
          to label %.noexc59.invoke unwind label %bb.ab

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %7, ptr %9, align 8, !tbaa !57
  br label %.invoke112

_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit38.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bt = add nuw i64 %i.bd, 1                    ; 5 uses
  %.not75.i = icmp ult i64 %i.bd, %i.z
  br i1 %.not75.i, label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i40.i, label %_ZNK5folly5RangeIPKcE4findERS1_m.exit44.i

_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i40.i:     ; preds = %_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit38.i
  %i.bu = getelementptr i8, ptr %i.y, i64 %i.bt   ; 5 uses
  %i.bv = icmp eq i64 %i.bt, %i.z
  br i1 %i.bv, label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit48.i, label %bb.w

bb.w:                                             ; preds = %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i40.i
  %gepdiff88 = sub i64 %i.z, %i.bt                ; 3 uses
  %i.bw = call noundef ptr @memchr(ptr noundef %i.bu, i32 noundef 45, i64 noundef %gepdiff88) #31 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit48.i, label %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i41.i

_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i41.i: ; preds = %bb.w
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.bz, %i.by                    ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = add i64 %i.ca, %i.bt
  %spec.select111 = select i1 %i.cb, i64 -1, i64 %i.cc
  br label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit48.i

_ZNK5folly5RangeIPKcE4findERS1_m.exit44.i:        ; preds = %_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit38.i
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.25) #8
          to label %.noexc56 unwind label %bb.ab

.noexc56:                                         ; preds = %_ZNK5folly5RangeIPKcE4findERS1_m.exit44.i
  unreachable

_ZNK5folly5RangeIPKcE8subpieceEmm.exit48.i:       ; preds = %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i41.i, %bb.w, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i40.i
  %.pre-phi = phi i64 [ %gepdiff88, %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i41.i ], [ %gepdiff88, %bb.w ], [ 0, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i40.i ]
  %.0.i42.ph.i = phi i64 [ %spec.select111, %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i41.i ], [ -1, %bb.w ], [ -1, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i40.i ]
  %i.cd = sub i64 %.0.i42.ph.i, %i.bt
  %.sroa.speculated.i45.i = call i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.speculated.i45.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.bu, ptr %1, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ce, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %0), !noalias !73
  store ptr %i.bu, ptr %0, align 8, !noalias !79
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ce, ptr %i.cg, align 8, !noalias !79
  %i.ch = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %0) #26, !noalias !79 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.ci = and i64 %i.ch, 255
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.x, label %bb.z, !prof !52

bb.x:                                             ; preds = %_ZNK5folly5RangeIPKcE8subpieceEmm.exit48.i
  %.sroa.0.0.copyload.i.i.i.i.i.i51.i = load ptr, ptr %0, align 8, !tbaa !53, !noalias !86 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i52.i = load ptr, ptr %i.cg, align 8, !tbaa !53, !noalias !86 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i51.i, ptr %2, align 8, !alias.scope !86
  %.sroa.46.0..sroa_idx.i.i.i.i.i53.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i52.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i53.i, align 8, !alias.scope !86
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.ck, align 8, !alias.scope !86
  call void @llvm.lifetime.end.p0(ptr nonnull %0), !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.not14.i.i.i.i.i54.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i51.i, %.sroa.2.0.copyload.i.i.i.i.i.i52.i
  br i1 %.not14.i.i.i.i.i54.i, label %.loopexit, label %.lr.ph.i.i.i.i.i55.i

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i55.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i56.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i58.i = icmp eq ptr %i.cl, %.sroa.2.0.copyload.i.i.i.i.i.i52.i
  br i1 %.not.i.i.i.i.i58.i, label %.loopexit, label %.lr.ph.i.i.i.i.i55.i

.lr.ph.i.i.i.i.i55.i:                             ; preds = %bb.x, %bb.y
  %.01115.i.i.i.i.i56.i = phi ptr [ %i.cl, %bb.y ], [ %.sroa.0.0.copyload.i.i.i.i.i.i51.i, %bb.x ] ; 2 uses
  %i.cm = load i8, ptr %.01115.i.i.i.i.i56.i, align 1, !tbaa !23
  %i.cn = sext i8 %i.cm to i32
  %i.co = call i32 @isspace(i32 noundef %i.cn) #31
  %.not12.not.i.i.i.i.not.i57.i = icmp eq i32 %i.co, 0
  br i1 %.not12.not.i.i.i.i.not.i57.i, label %bb.aa, label %bb.y

bb.z:                                             ; preds = %_ZNK5folly5RangeIPKcE8subpieceEmm.exit48.i
  %.sroa.42.0.extract.shift.i.i.i49.i = lshr i64 %i.ch, 8
  %.sroa.42.0.extract.trunc.i.i.i50.i = trunc i64 %.sroa.42.0.extract.shift.i.i.i49.i to i8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0), !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %1, ptr %3, align 8, !tbaa !55
  invoke void @_ZZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef zeroext %.sroa.42.0.extract.trunc.i.i.i50.i)
          to label %.noexc59.invoke unwind label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i55.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %2, ptr %4, align 8, !tbaa !57
  br label %.invoke112

.invoke112:                                       ; preds = %bb.p, %bb.v, %bb.aa
  %i.cp = phi ptr [ %4, %bb.aa ], [ %9, %bb.v ], [ %14, %bb.p ]
  invoke void @_ZZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE0_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, i8 noundef zeroext 10)
          to label %.noexc59.invoke unwind label %bb.ab

.noexc59.invoke:                                  ; preds = %.invoke112, %bb.z, %bb.u, %bb.o
  %i.cq = phi i8 [ %.sroa.42.0.extract.trunc.i.i.i50.i, %bb.z ], [ 10, %.invoke112 ], [ %.sroa.42.0.extract.trunc.i.i.i27.i, %bb.u ], [ %.sroa.42.0.extract.trunc.i.i.i.i, %bb.o ]
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_14ConversionCodeEEEJS3_EEEvDpT0_(i8 noundef zeroext %i.cq) #8
          to label %.noexc59.cont unwind label %bb.ab

.noexc59.cont:                                    ; preds = %.noexc59.invoke
  unreachable

.loopexit:                                        ; preds = %bb.y, %bb.x
  %.sroa.53.0.extract.shift.i.i.i36.i = lshr i64 %i.bl, 32
  %.sroa.53.0.extract.trunc.i.i.i37.i = trunc nuw i64 %.sroa.53.0.extract.shift.i.i.i36.i to i32
  %.sroa.53.0.extract.shift.i.i.i.i = lshr i64 %i.am, 32
  %.sroa.53.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.53.0.extract.shift.i.i.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %.sroa.53.0.extract.shift.i.i.i59.i = lshr i64 %i.ch, 32
  %.sroa.53.0.extract.trunc.i.i.i60.i = trunc nuw i64 %.sroa.53.0.extract.shift.i.i.i59.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.cr = mul nsw i32 %.sroa.53.0.extract.trunc.i.i.i.i, 1000
  %i.cs = add nsw i32 %i.cr, %.sroa.53.0.extract.trunc.i.i.i37.i
  %i.ct = mul nsw i32 %i.cs, 1000
  %i.cu = add nsw i32 %i.ct, %.sroa.53.0.extract.trunc.i.i.i60.i
  %i.cv = icmp sgt i32 %i.cu, 2006022
  br i1 %i.cv, label %bb.bf, label %bb.ai

bb.ab:                                            ; preds = %.invoke112, %.invoke, %.noexc59.invoke, %bb.z, %_ZNK5folly5RangeIPKcE4findERS1_m.exit44.i, %bb.u, %bb.o
  %i.cw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.k, %bb.r, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %i.cw, %bb.ab ], [ %i.ai, %bb.k ], [ %i.bh, %bb.r ] ; 3 uses
  %i.cx = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.cy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #26
  %i.cz = icmp eq i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.ac, label %bb.bg

bb.ac:                                            ; preds = %.body
  %i.da = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.db = call ptr @__cxa_begin_catch(ptr %i.da) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %18, ptr noundef nonnull @.str.6, i32 noundef 95, i32 noundef 2)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %18)
          to label %bb.ae unwind label %bb.ag     ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.9, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.ae
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.10, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.df = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #26
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull %i.y, i64 noundef %i.df)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @__cxa_end_catch()
  br label %bb.bf

bb.af:                                            ; preds = %bb.ac
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62, %bb.ae, %bb.ad
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %18) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.ag ], [ %i.di, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  invoke void @__cxa_end_catch()
          to label %bb.bg unwind label %bb.bh

bb.ai:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.dk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.y) #26 ; 0 uses
  %i.dl = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.13) ; 5 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %19, ptr noundef nonnull @.str.6, i32 noundef 118, i32 noundef 2)
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %19)
          to label %bb.ak unwind label %bb.al     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull @.str.14, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %bb.ak
  %i.dp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #26
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull %i.a, i64 noundef %i.dp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bd

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %bb.ak, %bb.aj
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.be

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ds = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 1024, ptr noundef nonnull %i.dl)
  %.not2490 = icmp eq ptr %i.ds, null
  br i1 %.not2490, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.am, %bb.ax
  %.091 = phi i64 [ %.1, %bb.ax ], [ -1, %bb.am ]
  %i.dt = load i128, ptr %i.b, align 16
  %i.du = icmp ne i128 %i.dt, 54382001006447129220470549821411139
  %i.dv = zext i1 %i.du to i32
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.an, label %bb.at

bb.an:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %20, ptr noundef nonnull @.str.6, i32 noundef 131, i32 noundef 2)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %20)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.16, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %bb.ap
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_L23determineSchedstatUnitsEvE3$_0Lb1EED2Ev.exit"

bb.aq:                                            ; preds = %bb.an
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %20) #26
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn31 = phi { ptr, i32 } [ %i.ea, %bb.ar ], [ %i.dz, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_L23determineSchedstatUnitsEvE3$_0Lb1EED2Ev.exit83"

bb.at:                                            ; preds = %.lr.ph
  %i.eb = load i128, ptr %i.b, align 16
  %i.ec = icmp ne i128 %i.eb, 52900342112931807516926005587365699
  %i.ed = zext i1 %i.ec to i32
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ef = load i64, ptr %i.b, align 16
  %i.eg = xor i64 %i.ef, 5214965273556045635
  %i.eh = getelementptr i8, ptr %i.b, i64 7
  %i.ei = load i64, ptr %i.eh, align 1
  %i.ej = xor i64 %i.ei, 2867733343328840
  %i.ek = or i64 %i.eg, %i.ej
  %i.el = icmp ne i64 %i.ek, 0
  %i.em = zext i1 %i.el to i32
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eo = load i64, ptr %i.b, align 16
  %i.ep = xor i64 %i.eo, 5214965273556045635
  %i.eq = getelementptr i8, ptr %i.b, i64 7
  %i.er = load i64, ptr %i.eq, align 1
  %i.es = xor i64 %i.er, 2867754801388104
  %i.et = or i64 %i.ep, %i.es
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ex = load i64, ptr %i.b, align 16
  %i.ey = xor i64 %i.ex, 5214965273556045635
  %i.ez = getelementptr i8, ptr %i.b, i64 7
  %i.fa = load i64, ptr %i.ez, align 1
  %i.fb = xor i64 %i.fa, 2867733309774408
  %i.fc = or i64 %i.ey, %i.fb
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = zext i1 %i.fd to i32
  %i.ff = icmp eq i32 %i.fe, 0
  %spec.select = select i1 %i.ff, i64 100, i64 %.091
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %.1 = phi i64 [ %spec.select, %bb.aw ], [ 1000, %bb.at ], [ 300, %bb.au ], [ 250, %bb.av ] ; 3 uses
  %i.fg = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 1024, ptr noundef nonnull %i.dl)
  %.not24 = icmp eq ptr %i.fg, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.ax
  %i.fh = icmp eq i64 %.1, -1
  br i1 %i.fh, label %._crit_edge.thread, label %"_ZN5folly6detail14ScopeGuardImplIZNS_L23determineSchedstatUnitsEvE3$_0Lb1EED2Ev.exit"

._crit_edge.thread:                               ; preds = %bb.am, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %21, ptr noundef nonnull @.str.6, i32 noundef 145, i32 noundef 2)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %._crit_edge.thread
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %21)
          to label %bb.az unwind label %bb.bb     ; 2 uses
end_hunk_0
