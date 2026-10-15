Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN3fmt3v126detail19parse_chrono_formatIcNS1_17tm_format_checkerEEEPKT_S6_S6_OT0_:bb.a
    i8 99, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 120, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 88, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 122, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 1)
  br label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit

bb.ai:                                            ; preds = %bb.ag
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull @.str.446)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.al:                                            ; preds = %bb.r
  %i.ah = icmp eq ptr %i.q, %1
  br i1 %i.ah, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull @.str.446)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ap:                                            ; preds = %bb.al
  %i.ak = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 14 uses
  %i.al = load i8, ptr %i.q, align 1, !tbaa !232
  switch i8 %i.al, label %bb.ar [
    i8 121, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 109, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 85, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 87, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 86, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 100, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 101, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 119, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 117, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 72, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 73, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 77, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 83, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit
    i8 122, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 1)
  br label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit

bb.ar:                                            ; preds = %bb.ap
  %i.am = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull @.str.446)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.au:                                            ; preds = %bb.r
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull @.str.446)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit: ; preds = %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.y, %bb.u, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.ah, %bb.aq, %bb.f
  %.3 = phi ptr [ %i.ak, %bb.ap ], [ %i.f, %bb.f ], [ %i.ak, %bb.aq ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.ak, %bb.ap ], [ %i.q, %bb.r ], [ %i.q, %bb.u ], [ %i.q, %bb.y ], [ %i.ad, %bb.ag ], [ %i.ad, %bb.ag ], [ %i.ad, %bb.ag ], [ %i.ad, %bb.ag ], [ %i.ad, %bb.ag ], [ %i.ad, %bb.ah ], [ %i.ad, %bb.ag ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ] ; 4 uses
  %.not145 = icmp eq ptr %.3, %1
  br i1 %.not145, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit.thread, label %.lr.phthread-pre-split

_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit.thread: ; preds = %.lr.ph, %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129168, %.lr.ph ], [ %.3, %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit ]
  ret ptr %.0134
}

; Function Attrs: noreturn
declare void @_ZN3fmt3v1212report_errorEPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !330
  %i.b = load i8, ptr %0, align 1, !tbaa !232     ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !4

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !232   ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !4

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !4

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !232
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.1073) #31
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !239
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !232
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !332 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.1075) #31
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !332
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !330
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %4, ptr %5, align 8, !tbaa !4779
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !4780
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !335
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l
  %.0 = phi ptr [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ], [ %i.ar, %bb.l ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !232
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !330
  br label %bb.q

bb.p:                                             ; preds = %bb.h, %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.1074) #31
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !232     ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !4

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !232   ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !4

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !4

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !232
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !232
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.1074) #31
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !4783, !nonnull !250, !align !336
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !4784, !nonnull !250, !align !337
  store i32 1, ptr %i.am, align 4, !tbaa !330
  %i.an = load ptr, ptr %2, align 8, !tbaa !4785, !nonnull !250, !align !336
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !332
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.1076) #31
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !332
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ar = and i8 %i.c, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.c, 95
  %i.au = or i1 %i.at, %or.cond10.i
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.1074) #31
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !4781

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !232 ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !4781

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !4781

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !4783, !nonnull !250, !align !336 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !232
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !4784, !nonnull !250, !align !337
  store i32 2, ptr %i.bl, align 4, !tbaa !330
  %i.bm = load ptr, ptr %2, align 8, !tbaa !4785, !nonnull !250, !align !336
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !332
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !324, !range !249, !noundef !250
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail18duration_formatterIcjSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_:bb.a

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcjSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !607, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %6, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.x, align 8, !tbaa !352
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %1, ptr %i.y, align 8, !tbaa !353
  %i.z = getelementptr inbounds i8, ptr %6, i64 %3 ; 2 uses
  %i.aa = and i64 %2, 1
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !212
  %i.ac = getelementptr i8, ptr %i.ab, i64 %2
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load ptr, ptr %i.ad, align 8, !nosanitize !250
  br label %bb.p

bb.m:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.af, %bb.m ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ag = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %_ZN3fmt3v126detail10get_localeD2Ev.exit

bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINS0_7weekdayEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::formatter.397", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !317
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !232
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !319
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc37ELc70ELc32ELc37ELc84EEE5valueE, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !321    ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !322  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  %.not.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.g, align 1, !tbaa !232
  %i.l = icmp eq i8 %i.k, 76
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i32 49152, ptr %3, align 8, !tbaa !317
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %.not13.i = icmp eq ptr %.0.i, %i.j
  br i1 %.not13.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %.0.i, align 1, !tbaa !232
  %i.o = icmp ne i8 %i.n, 125                     ; 2 uses
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %i.f, align 8, !tbaa !610
  br i1 %i.o, label %bb.f, label %_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit

bb.f:                                             ; preds = %bb.e
  %i.q = call noundef ptr @_ZN3fmt3v129formatterI2tmcvE8do_parseERNS0_13parse_contextIcEEb(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext true)
  %.pre = load ptr, ptr %1, align 8, !tbaa !321
  %.pre7 = load i64, ptr %i.h, align 8, !tbaa !322
  br label %_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit

.critedge.i:                                      ; preds = %bb.d, %bb.a
  %.016.i = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.a ]
  store i8 0, ptr %i.f, align 8, !tbaa !610
  br label %_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.e, %bb.f, %.critedge.i
  %i.r = phi i64 [ %.pre7, %bb.f ], [ %i.i, %.critedge.i ], [ %i.i, %bb.e ]
  %i.s = phi ptr [ %.pre, %bb.f ], [ %i.g, %.critedge.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.q, %bb.f ], [ %.016.i, %.critedge.i ], [ %.0.i, %bb.e ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  store ptr %i.x, ptr %1, align 8, !tbaa !321
  %i.y = sub i64 %i.r, %i.w
  store i64 %i.y, ptr %i.h, align 8, !tbaa !322
  %.sroa.0.0.copyload = load i8, ptr %0, align 1, !tbaa !232
  %i.z = call ptr @_ZNK3fmt3v129formatterINS0_7weekdayEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES2_RT_(ptr noundef nonnull align 8 dereferenceable(49) %3, i8 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v129formatterINS0_7weekdayEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES2_RT_(ptr noundef nonnull align 8 dereferenceable(49) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v12::locale_ref", align 8 ; 4 uses
  %4 = alloca %struct.tm, align 8                 ; 7 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = zext i8 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.a, ptr %i.b, align 8, !tbaa !291
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !610, !range !249, !noundef !250
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_ZNK3fmt3v129formatterI2tmcvE9do_formatINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS0_7contextEEEDTcldtfp0_3outEERKS2_RT0_PKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.g = load i32, ptr %0, align 8, !tbaa !317
  %i.h = and i32 %i.g, 16384                      ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.copyload.i, ptr %3, align 8
  %.lobit = lshr exact i32 %i.h, 14
  %i.j = trunc nuw nsw i32 %.lobit to i8          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.j, ptr %i.k, align 8, !tbaa !341
  br i1 %.not, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre = load i8, ptr %i.k, align 8, !tbaa !341, !range !249
  br label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.c, %bb.d
  %i.l = phi i8 [ %i.j, %bb.c ], [ %.pre, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.h, %bb.f, %bb.e
  %i.s = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.t = phi ptr [ %i.s, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.0.0.copyload.i7 = load ptr, ptr %2, align 8, !tbaa !351
  store ptr %i.t, ptr %6, align 8, !tbaa !344
  %i.u = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.n, !prof !342

bb.j:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.w = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i9 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i9, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.x, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.n:                                             ; preds = %bb.l, %bb.j, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.ab = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #30
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %i.z, align 8, !tbaa !350
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.0.0.copyload.i7, ptr %i.ad, align 8, !tbaa !351
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.ae, align 8, !tbaa !352
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %4, ptr %i.af, align 8, !tbaa !353
  invoke void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_abbr_weekdayEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i12 = load ptr, ptr %i.ad, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ag = load i8, ptr %i.k, align 8, !tbaa !341, !range !249, !noundef !250
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.p, label %_ZN3fmt3v126detail10get_localeD2Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.m, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.ai, %bb.q ], [ %i.y, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.aj = load i8, ptr %i.k, align 8, !tbaa !341, !range !249, !noundef !250
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.r, label %_ZN3fmt3v126detail10get_localeD2Ev.exit13

bb.r:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit13

_ZN3fmt3v126detail10get_localeD2Ev.exit13:        ; preds = %.body, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %eh.lpad-body

bb.s:                                             ; preds = %_ZN3fmt3v126detail10get_localeD2Ev.exit, %bb.b
  %.sroa.06.0 = phi ptr [ %i.f, %bb.b ], [ %.sroa.0.0.copyload.i12, %_ZN3fmt3v126detail10get_localeD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !231
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !229 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !230  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.e, ptr %i.a, align 8, !tbaa !255
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
end_hunk_1
begin_hunk_2_@_ZNK3fmt3v129formatterINS0_4yearEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES2_RT_:bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.m = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %.sroa.0.0.copyload.i7 = load ptr, ptr %2, align 8, !tbaa !351 ; 11 uses
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.m, !prof !342

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i9 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i9, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.m:                                             ; preds = %bb.k, %bb.i, %bb.h
  %i.s = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.t = tail call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.s) #30 ; 0 uses
  %i.u = load i32, ptr %i.b, align 4, !tbaa !237  ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = add nsw i64 %i.v, 1900
  %i.x = icmp slt i32 %i.u, -1900
  %spec.select26.i = tail call i64 @llvm.abs.i64(i64 %i.w, i1 true) ; 3 uses
  %i.y = or i64 %spec.select26.i, 1
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !232 ; 2 uses
  %i.ad = zext i8 %i.ac to i32
  %i.ae = zext i8 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !255
  %i.ah = icmp ult i64 %spec.select26.i, %i.ag
  %.neg.i.i.i = sext i1 %i.ah to i32
  %i.ai = add nsw i32 %.neg.i.i.i, %i.ad          ; 4 uses
  br i1 %i.x, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i7, i64 8 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !354 ; 2 uses
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i7, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !339
  %i.ao = icmp ugt i64 %i.al, %i.an
  br i1 %i.ao, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i7, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !260
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i7, i64 noundef %i.al)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !6488

.noexc:                                           ; preds = %bb.o
  %.pre.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %.thread.i

bb.p:                                             ; preds = %bb.m
  %i.ar = icmp slt i32 %i.ai, 4
  br i1 %i.ar, label %.lr.ph.i.i.i, label %.thread37.i

.thread.i:                                        ; preds = %.noexc, %bb.n
  %.pre-phi.i.i.i = phi i64 [ %i.al, %bb.n ], [ %.pre2.i.i.i, %.noexc ]
  %i.as = phi i64 [ %i.ak, %bb.n ], [ %.pre.i.i.i, %.noexc ]
  %i.at = load ptr, ptr %.sroa.0.0.copyload.i7, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.aj, align 8, !tbaa !354
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 45, ptr %i.au, align 1, !tbaa !232
  %i.av = icmp slt i32 %i.ai, 3
  br i1 %i.av, label %.lr.ph.i.i.i, label %.thread37.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.thread.i
  %.pn.i = phi i32 [ 3, %.thread.i ], [ 4, %bb.p ]
  %i.aw = sub nsw i32 %.pn.i, %i.ai
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i7, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i7, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i7, i64 24
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.i, %.lr.ph.i.i.i
  %.04.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.bi, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.i ]
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !354 ; 2 uses
  %i.bb = add i64 %i.ba, 1                        ; 3 uses
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !339
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.r, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !260
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i7, i64 noundef %i.bb)
          to label %.noexc15 unwind label %.loopexit, !inline_history !6488

.noexc15:                                         ; preds = %bb.r
  %.pre.i.i.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i.i.i = add i64 %.pre.i.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.i:    ; preds = %.noexc15, %bb.q
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.bb, %bb.q ], [ %.pre2.i.i.i.i.i, %.noexc15 ]
  %i.bf = phi i64 [ %i.ba, %bb.q ], [ %.pre.i.i.i.i.i, %.noexc15 ]
  %i.bg = load ptr, ptr %.sroa.0.0.copyload.i7, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i.i.i, ptr %i.ax, align 8, !tbaa !354
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 48, ptr %i.bh, align 1, !tbaa !232
  %i.bi = add nuw nsw i32 %.04.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.bi, %i.aw
  br i1 %exitcond.not.i.i.i, label %.thread37.i, label %bb.q, !llvm.loop !14

.thread37.i:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.i, %bb.p, %.thread.i
  %i.bj = invoke ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.0.0.copyload.i7, i64 noundef %spec.select26.i, i32 noundef %i.ai)
          to label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE7on_yearENS1_14numeric_systemENS1_8pad_typeE.exit unwind label %.loopexit.split-lp

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE7on_yearENS1_14numeric_systemENS1_8pad_typeE.exit: ; preds = %.thread37.i
  %i.bk = load i8, ptr %i.g, align 8, !tbaa !341, !range !249, !noundef !250
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.s, label %_ZN3fmt3v126detail10get_localeD2Ev.exit

bb.s:                                             ; preds = %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE7on_yearENS1_14numeric_systemENS1_8pad_typeE.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %4) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE7on_yearENS1_14numeric_systemENS1_8pad_typeE.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.u

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.o, %.thread37.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.l, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.r, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bm = load i8, ptr %i.g, align 8, !tbaa !341, !range !249, !noundef !250
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.t, label %_ZN3fmt3v126detail10get_localeD2Ev.exit13

bb.t:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %4) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit13

_ZN3fmt3v126detail10get_localeD2Ev.exit13:        ; preds = %.body, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %eh.lpad-body

bb.u:                                             ; preds = %_ZN3fmt3v126detail10get_localeD2Ev.exit, %bb.b
  %.sroa.06.0 = phi ptr [ %i.f, %bb.b ], [ %i.bj, %_ZN3fmt3v126detail10get_localeD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINS0_5monthEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::formatter.472", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !317
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !232
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !319
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc37ELc70ELc32ELc37ELc84EEE5valueE, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !321    ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !322  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  %.not.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.g, align 1, !tbaa !232
  %i.l = icmp eq i8 %i.k, 76
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i32 49152, ptr %3, align 8, !tbaa !317
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %.not13.i = icmp eq ptr %.0.i, %i.j
  br i1 %.not13.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %.0.i, align 1, !tbaa !232
  %i.o = icmp ne i8 %i.n, 125                     ; 2 uses
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %i.f, align 8, !tbaa !713
  br i1 %i.o, label %bb.f, label %_ZN3fmt3v129formatterINS0_5monthEcvE5parseERNS0_13parse_contextIcEE.exit

bb.f:                                             ; preds = %bb.e
  %i.q = call noundef ptr @_ZN3fmt3v129formatterI2tmcvE8do_parseERNS0_13parse_contextIcEEb(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext true)
  %.pre = load ptr, ptr %1, align 8, !tbaa !321
  %.pre7 = load i64, ptr %i.h, align 8, !tbaa !322
  br label %_ZN3fmt3v129formatterINS0_5monthEcvE5parseERNS0_13parse_contextIcEE.exit

.critedge.i:                                      ; preds = %bb.d, %bb.a
  %.016.i = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.a ]
  store i8 0, ptr %i.f, align 8, !tbaa !713
  br label %_ZN3fmt3v129formatterINS0_5monthEcvE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v129formatterINS0_5monthEcvE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.e, %bb.f, %.critedge.i
  %i.r = phi i64 [ %.pre7, %bb.f ], [ %i.i, %.critedge.i ], [ %i.i, %bb.e ]
  %i.s = phi ptr [ %.pre, %bb.f ], [ %i.g, %.critedge.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.q, %bb.f ], [ %.016.i, %.critedge.i ], [ %.0.i, %bb.e ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  store ptr %i.x, ptr %1, align 8, !tbaa !321
  %i.y = sub i64 %i.r, %i.w
  store i64 %i.y, ptr %i.h, align 8, !tbaa !322
  %.sroa.0.0.copyload = load i8, ptr %0, align 1, !tbaa !232
  %i.z = call ptr @_ZNK3fmt3v129formatterINS0_5monthEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES2_RT_(ptr noundef nonnull align 8 dereferenceable(49) %3, i8 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v129formatterINS0_5monthEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES2_RT_(ptr noundef nonnull align 8 dereferenceable(49) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v12::locale_ref", align 8 ; 4 uses
  %4 = alloca %struct.tm, align 8                 ; 7 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = zext i8 %1 to i32
  %i.b = add nsw i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.b, ptr %i.c, align 8, !tbaa !238
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i8, ptr %i.d, align 8, !tbaa !713, !range !249, !noundef !250
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @_ZNK3fmt3v129formatterI2tmcvE9do_formatINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS0_7contextEEEDTcldtfp0_3outEERKS2_RT0_PKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.h = load i32, ptr %0, align 8, !tbaa !317
  %i.i = and i32 %i.h, 16384                      ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.copyload.i, ptr %3, align 8
  %.lobit = lshr exact i32 %i.i, 14
  %i.k = trunc nuw nsw i32 %.lobit to i8          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.k, ptr %i.l, align 8, !tbaa !341
  br i1 %.not, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre = load i8, ptr %i.l, align 8, !tbaa !341, !range !249
  br label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.c, %bb.d
  %i.m = phi i8 [ %i.k, %bb.c ], [ %.pre, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.o = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.f, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.f:                                             ; preds = %bb.e
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.r, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.h, %bb.f, %bb.e
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.u = phi ptr [ %i.t, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.0.0.copyload.i7 = load ptr, ptr %2, align 8, !tbaa !351
  store ptr %i.u, ptr %6, align 8, !tbaa !344
  %i.v = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.n, !prof !342

bb.j:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.x = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i9 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i9, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.y, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.n:                                             ; preds = %bb.l, %bb.j, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.ac = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #30
  %i.ad = zext i1 %i.ac to i8
  store i8 %i.ad, ptr %i.aa, align 8, !tbaa !350
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.0.0.copyload.i7, ptr %i.ae, align 8, !tbaa !351
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.af, align 8, !tbaa !352
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %4, ptr %i.ag, align 8, !tbaa !353
  invoke void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE13on_abbr_monthEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i12 = load ptr, ptr %i.ae, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ah = load i8, ptr %i.l, align 8, !tbaa !341, !range !249, !noundef !250
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.p, label %_ZN3fmt3v126detail10get_localeD2Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.m, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.aj, %bb.q ], [ %i.z, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ak = load i8, ptr %i.l, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %_ZN3fmt3v126detail10get_localeD2Ev.exit13

bb.r:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit13

_ZN3fmt3v126detail10get_localeD2Ev.exit13:        ; preds = %.body, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %eh.lpad-body

bb.s:                                             ; preds = %_ZN3fmt3v126detail10get_localeD2Ev.exit, %bb.b
  %.sroa.06.0 = phi ptr [ %i.g, %bb.b ], [ %.sroa.0.0.copyload.i12, %_ZN3fmt3v126detail10get_localeD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINS0_3dayEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::formatter.474", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !317
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !232
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !319
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc37ELc70ELc32ELc37ELc84EEE5valueE, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 5, ptr %i.e, align 8
  %i.f = load ptr, ptr %1, align 8, !tbaa !321    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !322  ; 2 uses
  %.not.i = icmp samesign eq i64 %i.h, 0
  br i1 %.not.i, label %_ZN3fmt3v129formatterINS0_3dayEcvE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

end_hunk_2
