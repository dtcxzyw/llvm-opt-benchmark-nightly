Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/xchar-test?download=true
inline.NumInlined: 12086
inline.NumDeleted: 3130
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 104
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN3fmt3v126detail19parse_chrono_formatIwRNS1_21chrono_format_checkerEEEPKT_S7_S7_OT0_:bb.a
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ae:                                            ; preds = %.split309.us
  %i.am = load i32, ptr %.us-phi310, align 4, !tbaa !192
  switch i32 %i.am, label %bb.am [
    i32 89, label %bb.af
    i32 121, label %bb.ag
    i32 67, label %bb.ah
    i32 99, label %bb.ai
    i32 120, label %bb.aj
    i32 88, label %bb.ak
    i32 122, label %bb.al
  ]

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

bb.ah:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

bb.ai:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

bb.aj:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

bb.ak:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

bb.al:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

bb.am:                                            ; preds = %bb.ae
  %i.an = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull @.str.422)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ap:                                            ; preds = %bb.y
  %i.ap = icmp eq ptr %i.af, %1
  br i1 %i.ap, label %.split312.us, label %bb.as

.split312.us:                                     ; preds = %bb.ap, %bb.i
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull @.str.422)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.split312.us
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ar:                                            ; preds = %.split312.us
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.as:                                            ; preds = %bb.ap
  %i.as = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 4 uses
  %i.at = load i32, ptr %i.af, align 4, !tbaa !192
  switch i32 %i.at, label %.split314.us [
    i32 121, label %.split316.us
    i32 109, label %.split318.us
    i32 85, label %.split320.us
    i32 87, label %.split322.us
    i32 86, label %.split324.us
    i32 100, label %.split326.us
    i32 101, label %.split328.us
    i32 119, label %.split330.us
    i32 117, label %.split332.us
    i32 72, label %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit
    i32 73, label %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit
    i32 77, label %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit
    i32 83, label %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit
    i32 122, label %.split334.us
  ]

.split316.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

.split318.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

.split320.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

.split322.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

.split324.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

.split326.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

.split328.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

.split330.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

.split332.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

.split334.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  unreachable

.split314.us:                                     ; preds = %bb.as, %bb.j
  %i.au = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull @.str.422)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.split314.us
  tail call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.au:                                            ; preds = %.split314.us
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.split259.us:                                     ; preds = %bb.y, %bb.h
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.422)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %.split259.us
  tail call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.aw:                                            ; preds = %.split259.us
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit: ; preds = %bb.y, %bb.as, %bb.as, %bb.as, %bb.as, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.o
  %.3 = phi ptr [ %i.as, %bb.as ], [ %i.u, %bb.o ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.as, %bb.as ], [ %i.as, %bb.as ], [ %i.as, %bb.as ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ] ; 3 uses
  %.not145 = icmp eq ptr %.3, %1
  br i1 %.not145, label %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit.thread, label %.lr.ph.split

_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit.thread: ; preds = %.lr.ph.split, %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit, %.lr.ph.split.us, %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit.us, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129253.us, %.lr.ph.split.us ], [ %.3.us, %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit.us ], [ %.0129253, %.lr.ph.split ], [ %.3, %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit ]
  ret ptr %.0134
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.467)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail19parse_chrono_formatIwRNS1_18duration_formatterIwlSt5ratioILl1ELl1EEEEEEPKT_SA_SA_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %4 = alloca %struct.tm, align 8                 ; 6 uses
  %5 = alloca %struct.tm, align 8                 ; 6 uses
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit208, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !192
  switch i32 %i.d, label %bb.c [
    i32 125, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit208
    i32 37, label %.lr.ph
  ]

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.422)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #29
  br label %bb.bw

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
  %.0129230 = phi ptr [ %0, %.lr.ph ], [ %.3, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165 ] ; 9 uses
  %.0135229 = phi ptr [ %0, %.lr.ph ], [ %.1136, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165 ] ; 4 uses
  %i.l = load i32, ptr %.0129230, align 4, !tbaa !192
  switch i32 %i.l, label %bb.g [
    i32 125, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165.thread
    i32 37, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.0129230, i64 4
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165, !llvm.loop !3033

bb.h:                                             ; preds = %bb.f
  %.not147 = icmp eq ptr %.0135229, %.0129230
  br i1 %.not147, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.h
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !183 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 16 ; 2 uses
  %i.p = ptrtoint ptr %.0129230 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 24
  %.pre.i.i.i = load i64, ptr %i.n, align 8, !tbaa !199
  %.pre37.i.i.i = load i64, ptr %i.o, align 8, !tbaa !200
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.r = phi i64 [ %.pre37.i.i.i, %.lr.ph34.i.i.i ], [ %i.ae, %._crit_edge.i.i.i ] ; 2 uses
  %i.s = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.ax, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %.0135229, %.lr.ph34.i.i.i ], [ %i.ay, %._crit_edge.i.i.i ] ; 8 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = ptrtoint ptr %.02732.i.i.i to i64        ; 2 uses
  %i.v = sub i64 %i.p, %i.u
  %i.w = ashr exact i64 %i.v, 2                   ; 4 uses
  %i.x = icmp ult i64 %i.t, %i.w
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !176
  %i.z = add i64 %i.w, %i.s
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i, i64 noundef %i.z), !inline_history !3034
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !199 ; 2 uses
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !200 ; 2 uses
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.ac)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = phi i64 [ %i.ab, %bb.j ], [ %i.r, %bb.i ]
  %i.af = phi i64 [ %i.aa, %bb.j ], [ %i.s, %bb.i ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.ad, %bb.j ], [ %i.w, %bb.i ] ; 9 uses
  %i.ag = load ptr, ptr %.sroa.01.0.copyload.i, align 8, !tbaa !198 ; 2 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af ; 6 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k
  %min.iters.check264 = icmp ult i64 %.025.i.i.i, 8
  br i1 %min.iters.check264, label %.lr.ph.i.i.i.preheader291, label %vector.memcheck261

vector.memcheck261:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.aj = shl i64 %i.af, 2
  %i.ak = add i64 %i.aj, %i.ah
  %i.al = sub i64 %i.u, %i.ak
  %diff.check262 = icmp ugt i64 %i.al, -32
  br i1 %diff.check262, label %.lr.ph.i.i.i.preheader291, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck261
  %n.vec266 = and i64 %.025.i.i.i, -8             ; 3 uses
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph265
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next271, %vector.body267 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %index268 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load269 = load <4 x i32>, ptr %i.am, align 4, !tbaa !192
  %wide.load270 = load <4 x i32>, ptr %i.an, align 4, !tbaa !192
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index268 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %wide.load269, ptr %i.ao, align 4, !tbaa !192
  store <4 x i32> %wide.load270, ptr %i.ap, align 4, !tbaa !192
  %index.next271 = add nuw i64 %index268, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next271, %n.vec266
  br i1 %i.aq, label %middle.block272, label %vector.body267, !llvm.loop !3035

middle.block272:                                  ; preds = %vector.body267
  %cmp.n273 = icmp eq i64 %.025.i.i.i, %n.vec266
  br i1 %cmp.n273, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader291

.lr.ph.i.i.i.preheader291:                        ; preds = %vector.memcheck261, %.lr.ph.i.i.i.preheader, %middle.block272
  %.030.i.i.i.ph = phi i64 [ 0, %vector.memcheck261 ], [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec266, %middle.block272 ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader291, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader291 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader291 ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !192
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.030.i.i.i.prol
  store i32 %i.as, ptr %i.at, align 4, !tbaa !192
  %i.au = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3036

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader291
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader291 ], [ %i.au, %.lr.ph.i.i.i.prol ]
  %i.av = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block272, %bb.k
  %i.ax = add i64 %.025.i.i.i, %i.af              ; 2 uses
  store i64 %i.ax, ptr %i.n, align 8, !tbaa !199
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %.0129230
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit, label %bb.i, !llvm.loop !16

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !192
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.030.i.i.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !192
  %i.bc = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !192
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bc
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !192
  %i.bg = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !192
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bg
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !192
  %i.bk = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !192
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bk
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !192
  %i.bo = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bo, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3037

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit: ; preds = %._crit_edge.i.i.i, %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %.0129230, i64 4 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, %1
  br i1 %i.bq, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull @.str.422)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.br) #29
  br label %bb.bw

bb.o:                                             ; preds = %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !192
  switch i32 %i.bt, label %bb.r [
    i32 95, label %bb.p
    i32 45, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.0129230, i64 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %.0129230, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail19parse_chrono_formatIwRNS1_18duration_formatterIwlSt5ratioILl1ELl1EEEEEEPKT_SA_SA_OT0_:bb.a
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i157.ptr, i64 %.030.i.i.i161.prol
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !192
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.030.i.i.i161.prol
  store i32 %i.de, ptr %i.df, align 4, !tbaa !192
  %i.dg = add nuw i64 %.030.i.i.i161.prol, 1      ; 2 uses
  %prol.iter294.next = add i64 %prol.iter294, 1   ; 2 uses
  %prol.iter294.cmp.not = icmp eq i64 %prol.iter294.next, %xtraiter292
  br i1 %prol.iter294.cmp.not, label %.lr.ph.i.i.i160.prol.loopexit, label %.lr.ph.i.i.i160.prol, !llvm.loop !3039

.lr.ph.i.i.i160.prol.loopexit:                    ; preds = %.lr.ph.i.i.i160.prol, %.lr.ph.i.i.i160.preheader290
  %.030.i.i.i161.unr = phi i64 [ %.030.i.i.i161.ph, %.lr.ph.i.i.i160.preheader290 ], [ %i.dg, %.lr.ph.i.i.i160.prol ]
  %i.dh = sub i64 %.030.i.i.i161.ph, %.025.i.i.i158
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %._crit_edge.i.i.i163, label %.lr.ph.i.i.i160

._crit_edge.i.i.i163:                             ; preds = %.lr.ph.i.i.i160.prol.loopexit, %.lr.ph.i.i.i160, %middle.block, %bb.z
  %i.dj = add i64 %.025.i.i.i158, %i.cq           ; 2 uses
  store i64 %i.dj, ptr %i.cb, align 8, !tbaa !199
  %.idx213 = shl nuw nsw i64 %.025.i.i.i158, 2
  %.02732.i.i.i157.add = add nuw nsw i64 %.idx213, %.02732.i.i.i157.idx ; 2 uses
  %.not.i.i.i164 = icmp eq i64 %.02732.i.i.i157.add, 4
  br i1 %.not.i.i.i164, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165, label %bb.x, !llvm.loop !16

.lr.ph.i.i.i160:                                  ; preds = %.lr.ph.i.i.i160.prol.loopexit, %.lr.ph.i.i.i160
  %.030.i.i.i161 = phi i64 [ %i.dz, %.lr.ph.i.i.i160 ], [ %.030.i.i.i161.unr, %.lr.ph.i.i.i160.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i157.ptr, i64 %.030.i.i.i161
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !192
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.030.i.i.i161
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !192
  %i.dn = add nuw i64 %.030.i.i.i161, 1           ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i157.ptr, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !192
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dn
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !192
  %i.dr = add nuw i64 %.030.i.i.i161, 2           ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i157.ptr, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !192
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dr
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !192
  %i.dv = add nuw i64 %.030.i.i.i161, 3           ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i157.ptr, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !192
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dv
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !192
  %i.dz = add nuw i64 %.030.i.i.i161, 4           ; 2 uses
  %exitcond.not.i.i.i162.3 = icmp eq i64 %i.dz, %.025.i.i.i158
  br i1 %exitcond.not.i.i.i162.3, label %._crit_edge.i.i.i163, label %.lr.ph.i.i.i160, !llvm.loop !3040

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 10, ptr %i.a, align 4
  %.sroa.01.0.copyload.i166 = load ptr, ptr %2, align 8, !tbaa !183 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i166, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i166, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i166, i64 24
  %.pre.i.i.i169 = load i64, ptr %i.ea, align 8, !tbaa !199
  %.pre37.i.i.i170 = load i64, ptr %i.eb, align 8, !tbaa !200
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i.i.i177, %bb.aa
  %i.ed = phi i64 [ %.pre37.i.i.i170, %bb.aa ], [ %i.eo, %._crit_edge.i.i.i177 ] ; 2 uses
  %i.ee = phi i64 [ %.pre.i.i.i169, %bb.aa ], [ %i.et, %._crit_edge.i.i.i177 ] ; 3 uses
  %.02732.i.i.i171.idx = phi i64 [ 0, %bb.aa ], [ %.02732.i.i.i171.add, %._crit_edge.i.i.i177 ] ; 3 uses
  %.02732.i.i.i171.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.i171.idx
  %i.ef = sub i64 %i.ed, %i.ee
  %gepdiff235 = sub nsw i64 4, %.02732.i.i.i171.idx
  %i.eg = ashr exact i64 %gepdiff235, 2           ; 4 uses
  %i.eh = icmp ult i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !176
  %i.ej = add i64 %i.eg, %i.ee
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i166, i64 noundef %i.ej), !inline_history !3034
  %i.ek = load i64, ptr %i.ea, align 8, !tbaa !199 ; 2 uses
  %i.el = load i64, ptr %i.eb, align 8, !tbaa !200 ; 2 uses
  %i.em = sub i64 %i.el, %i.ek
  %i.en = call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.em)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eo = phi i64 [ %i.el, %bb.ac ], [ %i.ed, %bb.ab ]
  %i.ep = phi i64 [ %i.ek, %bb.ac ], [ %i.ee, %bb.ab ] ; 2 uses
  %.025.i.i.i172 = phi i64 [ %i.en, %bb.ac ], [ %i.eg, %bb.ab ] ; 3 uses
  %.not36.i.i.i173 = icmp eq i64 %.025.i.i.i172, 0
  br i1 %.not36.i.i.i173, label %._crit_edge.i.i.i177, label %.lr.ph.i.i.i174.preheader

.lr.ph.i.i.i174.preheader:                        ; preds = %bb.ad
  %i.eq = load ptr, ptr %.sroa.01.0.copyload.i166, align 8, !tbaa !198
  %i.er = getelementptr [4 x i8], ptr %i.eq, i64 %i.ep
  %i.es = shl nuw i64 %.025.i.i.i172, 2           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.er, ptr align 4 %.02732.i.i.i171.ptr, i64 %i.es, i1 false), !tbaa !192
  br label %._crit_edge.i.i.i177

._crit_edge.i.i.i177:                             ; preds = %bb.ad, %.lr.ph.i.i.i174.preheader
  %.idx212.pre-phi = phi i64 [ %i.es, %.lr.ph.i.i.i174.preheader ], [ 0, %bb.ad ]
  %i.et = add i64 %.025.i.i.i172, %i.ep           ; 2 uses
  store i64 %i.et, ptr %i.ea, align 8, !tbaa !199
  %.02732.i.i.i171.add = add nuw nsw i64 %.idx212.pre-phi, %.02732.i.i.i171.idx ; 2 uses
  %.not.i.i.i178 = icmp eq i64 %.02732.i.i.i171.add, 4
  br i1 %.not.i.i.i178, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit179, label %bb.ab, !llvm.loop !16

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit179: ; preds = %._crit_edge.i.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.ae:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 9, ptr %i.b, align 4
  %.sroa.01.0.copyload.i180 = load ptr, ptr %2, align 8, !tbaa !183 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i180, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i180, i64 16 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i180, i64 24
  %.pre.i.i.i183 = load i64, ptr %i.eu, align 8, !tbaa !199
  %.pre37.i.i.i184 = load i64, ptr %i.ev, align 8, !tbaa !200
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i.i191, %bb.ae
  %i.ex = phi i64 [ %.pre37.i.i.i184, %bb.ae ], [ %i.fi, %._crit_edge.i.i.i191 ] ; 2 uses
  %i.ey = phi i64 [ %.pre.i.i.i183, %bb.ae ], [ %i.fn, %._crit_edge.i.i.i191 ] ; 3 uses
  %.02732.i.i.i185.idx = phi i64 [ 0, %bb.ae ], [ %.02732.i.i.i185.add, %._crit_edge.i.i.i191 ] ; 3 uses
  %.02732.i.i.i185.ptr = getelementptr i8, ptr %i.b, i64 %.02732.i.i.i185.idx
  %i.ez = sub i64 %i.ex, %i.ey
  %gepdiff = sub nsw i64 4, %.02732.i.i.i185.idx
  %i.fa = ashr exact i64 %gepdiff, 2              ; 4 uses
  %i.fb = icmp ult i64 %i.ez, %i.fa
  br i1 %i.fb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !176
  %i.fd = add i64 %i.fa, %i.ey
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i180, i64 noundef %i.fd), !inline_history !3034
  %i.fe = load i64, ptr %i.eu, align 8, !tbaa !199 ; 2 uses
  %i.ff = load i64, ptr %i.ev, align 8, !tbaa !200 ; 2 uses
  %i.fg = sub i64 %i.ff, %i.fe
  %i.fh = call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.fg)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fi = phi i64 [ %i.ff, %bb.ag ], [ %i.ex, %bb.af ]
  %i.fj = phi i64 [ %i.fe, %bb.ag ], [ %i.ey, %bb.af ] ; 2 uses
  %.025.i.i.i186 = phi i64 [ %i.fh, %bb.ag ], [ %i.fa, %bb.af ] ; 3 uses
  %.not36.i.i.i187 = icmp eq i64 %.025.i.i.i186, 0
  br i1 %.not36.i.i.i187, label %._crit_edge.i.i.i191, label %.lr.ph.i.i.i188.preheader

.lr.ph.i.i.i188.preheader:                        ; preds = %bb.ah
  %i.fk = load ptr, ptr %.sroa.01.0.copyload.i180, align 8, !tbaa !198
  %i.fl = getelementptr [4 x i8], ptr %i.fk, i64 %i.fj
  %i.fm = shl nuw i64 %.025.i.i.i186, 2           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fl, ptr align 4 %.02732.i.i.i185.ptr, i64 %i.fm, i1 false), !tbaa !192
  br label %._crit_edge.i.i.i191

._crit_edge.i.i.i191:                             ; preds = %bb.ah, %.lr.ph.i.i.i188.preheader
  %.idx.pre-phi = phi i64 [ %i.fm, %.lr.ph.i.i.i188.preheader ], [ 0, %bb.ah ]
  %i.fn = add i64 %.025.i.i.i186, %i.fj           ; 2 uses
  store i64 %i.fn, ptr %i.eu, align 8, !tbaa !199
  %.02732.i.i.i185.add = add nuw nsw i64 %.idx.pre-phi, %.02732.i.i.i185.idx ; 2 uses
  %.not.i.i.i192 = icmp eq i64 %.02732.i.i.i185.add, 4
  br i1 %.not.i.i.i192, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit193, label %bb.af, !llvm.loop !16

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit193: ; preds = %._crit_edge.i.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.ai:                                            ; preds = %bb.v
  %i.fo = load i64, ptr %i.e, align 8, !tbaa !644
  %i.fp = udiv i64 %i.fo, 86400
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.fp, i32 noundef 0, i32 noundef 0)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.aj:                                            ; preds = %bb.v
  %i.fq = load i64, ptr %i.e, align 8, !tbaa !644
  %i.fr = udiv i64 %i.fq, 3600
  %i.fs = urem i64 %i.fr, 24
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.fs, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.ak:                                            ; preds = %bb.v
  %i.ft = load i64, ptr %i.e, align 8, !tbaa !644
  %i.fu = udiv i64 %i.ft, 3600
  %i.fv = urem i64 %i.fu, 12                      ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  %i.fx = select i1 %i.fw, i64 12, i64 %i.fv
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.fx, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.al:                                            ; preds = %bb.v
  %i.fy = load i64, ptr %i.e, align 8, !tbaa !644
  %i.fz = udiv i64 %i.fy, 60
  %i.ga = urem i64 %i.fz, 60
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.ga, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.am:                                            ; preds = %bb.v
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 0, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.an:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !3049)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !alias.scope !3049
  %i.gb = load i64, ptr %i.e, align 8, !tbaa !644, !noalias !3049 ; 3 uses
  %i.gc = udiv i64 %i.gb, 3600
  %i.gd = urem i64 %i.gc, 24
  %i.ge = trunc nuw nsw i64 %i.gd to i32
  store i32 %i.ge, ptr %i.h, align 8, !tbaa !619, !alias.scope !3049
  %i.gf = udiv i64 %i.gb, 60
  %8 = urem i64 %i.gf, 60
  %9 = trunc nuw nsw i64 %8 to i32
  store i32 %9, ptr %i.i, align 4, !tbaa !620, !alias.scope !3049
  %10 = urem i64 %i.gb, 60
  %11 = trunc nuw nsw i64 %10 to i32
  store i32 %11, ptr %5, align 8, !tbaa !621, !alias.scope !3049
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_12_hour_timeEv to i64), i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.ao:                                            ; preds = %bb.v
  %i.gg = load i64, ptr %i.e, align 8, !tbaa !644
  %i.gh = udiv i64 %i.gg, 3600
  %i.gi = urem i64 %i.gh, 24
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.gi, i32 noundef 2, i32 noundef 0)
  %.sroa.0.0.copyload.i1.i = load ptr, ptr %2, align 8, !tbaa !183 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 8 ; 3 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !199 ; 2 uses
  %i.gl = add i64 %i.gk, 1                        ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !200
  %i.go = icmp ugt i64 %i.gl, %i.gn
  br i1 %i.go, label %bb.ap, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit

bb.ap:                                            ; preds = %bb.ao
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !176
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i1.i, i64 noundef %i.gl), !inline_history !107
  %.pre.i.i3.i = load i64, ptr %i.gj, align 8, !tbaa !199 ; 2 uses
  %.pre2.i.i4.i = add i64 %.pre.i.i3.i, 1
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit: ; preds = %bb.ao, %bb.ap
  %.pre-phi.i.i2.i = phi i64 [ %i.gl, %bb.ao ], [ %.pre2.i.i4.i, %bb.ap ]
  %i.gr = phi i64 [ %i.gk, %bb.ao ], [ %.pre.i.i3.i, %bb.ap ]
  %i.gs = load ptr, ptr %.sroa.0.0.copyload.i1.i, align 8, !tbaa !198
  store i64 %.pre-phi.i.i2.i, ptr %i.gj, align 8, !tbaa !199
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gr
  store i32 58, ptr %i.gt, align 4, !tbaa !192
  %i.gu = load i64, ptr %i.e, align 8, !tbaa !644
  %i.gv = udiv i64 %i.gu, 60
  %i.gw = urem i64 %i.gv, 60
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.gw, i32 noundef 2, i32 noundef 0)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.aq:                                            ; preds = %bb.v
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE11on_iso_timeEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.ar:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false), !alias.scope !3050
  %i.gx = load i64, ptr %i.e, align 8, !tbaa !644, !noalias !3050 ; 3 uses
  %i.gy = udiv i64 %i.gx, 3600
  %i.gz = urem i64 %i.gy, 24
  %i.ha = trunc nuw nsw i64 %i.gz to i32
  store i32 %i.ha, ptr %6, align 8, !tbaa !619, !alias.scope !3050
  %i.hb = udiv i64 %i.gx, 60
  %12 = urem i64 %i.hb, 60
  %13 = trunc nuw nsw i64 %12 to i32
  store i32 %13, ptr %7, align 4, !tbaa !620, !alias.scope !3050
  %14 = urem i64 %i.gx, 60
  %15 = trunc nuw nsw i64 %14 to i32
  store i32 %15, ptr %4, align 8, !tbaa !621, !alias.scope !3050
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE8on_am_pmEv to i64), i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.as:                                            ; preds = %bb.v
  %i.hc = load i8, ptr %i.f, align 8, !tbaa !641, !range !169, !noundef !170
  %i.hd = trunc nuw i8 %i.hc to i1
  %.sroa.0.0.copyload.pre2.i = load ptr, ptr %2, align 8, !tbaa !183 ; 7 uses
  br i1 %i.hd, label %bb.at, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit

bb.at:                                            ; preds = %bb.as
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre2.i, i64 8 ; 3 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !199 ; 2 uses
  %i.hg = add i64 %i.hf, 1                        ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre2.i, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !200
  %i.hj = icmp ugt i64 %i.hg, %i.hi
  br i1 %i.hj, label %bb.au, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i

bb.au:                                            ; preds = %bb.at
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre2.i, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !176
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.pre2.i, i64 noundef %i.hg), !inline_history !3045
  %.pre.i.i.i.i = load i64, ptr %i.he, align 8, !tbaa !199 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  %.sroa.0.0.copyload.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !183
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i

_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i:      ; preds = %bb.au, %bb.at
  %.sroa.0.0.copyload.pre.i = phi ptr [ %.sroa.0.0.copyload.pre2.i, %bb.at ], [ %.sroa.0.0.copyload.pre.pre.i, %bb.au ]
  %.pre-phi.i.i.i.i = phi i64 [ %i.hg, %bb.at ], [ %.pre2.i.i.i.i, %bb.au ]
  %i.hm = phi i64 [ %i.hf, %bb.at ], [ %.pre.i.i.i.i, %bb.au ]
  %i.hn = load ptr, ptr %.sroa.0.0.copyload.pre2.i, align 8, !tbaa !198
  store i64 %.pre-phi.i.i.i.i, ptr %i.he, align 8, !tbaa !199
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hm
  store i32 45, ptr %i.ho, align 4, !tbaa !192
  store i8 0, ptr %i.f, align 8, !tbaa !641
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit: ; preds = %bb.as, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.pre.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i ], [ %.sroa.0.0.copyload.pre2.i, %bb.as ]
  %i.hp = load i64, ptr %i.g, align 8, !tbaa !640
  %i.hq = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEmTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i, i64 noundef %i.hp)
  store ptr %i.hq, ptr %2, align 8, !tbaa !183
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.av:                                            ; preds = %bb.v
  %.sroa.0.0.copyload.i194 = load ptr, ptr %2, align 8, !tbaa !183
  %i.hr = call ptr @_ZN3fmt3v126detail9copy_unitINS0_14basic_appenderIwEEEET_NS0_17basic_string_viewIcEES5_w(ptr nonnull @.str.254, i64 1, ptr %.sroa.0.0.copyload.i194, i32 noundef signext 0)
  store ptr %i.hr, ptr %2, align 8, !tbaa !183
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.aw:                                            ; preds = %bb.v
  %i.hs = icmp eq ptr %i.bz, %1
  br i1 %i.hs, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ht = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull @.str.422)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @__cxa_throw(ptr nonnull %i.ht, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ht) #29
  br label %bb.bw

bb.ba:                                            ; preds = %bb.aw
  %i.hv = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 14 uses
  %i.hw = load i32, ptr %i.bz, align 4, !tbaa !192
  switch i32 %i.hw, label %bb.bb [
    i32 89, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 121, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 67, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 99, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 120, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 88, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 122, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.hx = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull @.str.422)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @__cxa_throw(ptr nonnull %i.hx, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hx) #29
  br label %bb.bw

bb.be:                                            ; preds = %bb.v
  %i.hz = icmp eq ptr %i.bz, %1
  br i1 %i.hz, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ia = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, ptr noundef nonnull @.str.422)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @__cxa_throw(ptr nonnull %i.ia, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ia) #29
  br label %bb.bw

bb.bi:                                            ; preds = %bb.be
  %i.ic = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 28 uses
  %i.id = load i32, ptr %i.bz, align 4, !tbaa !192
  switch i32 %i.id, label %bb.bn [
    i32 121, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 109, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 85, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 87, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 86, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 100, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 101, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 119, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 117, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 72, label %bb.bj
    i32 73, label %bb.bk
    i32 77, label %bb.bl
    i32 83, label %bb.bm
    i32 122, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
  ]

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.bk:                                            ; preds = %bb.bi
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.bl:                                            ; preds = %bb.bi
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.ie = load i64, ptr %i.e, align 8, !tbaa !644
  %i.if = urem i64 %i.ie, 60
  %i.ig = trunc nuw nsw i64 %i.if to i32
  store i32 %i.ig, ptr %3, align 8, !tbaa !621
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_secondENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef 1, i32 noundef %.0128)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.bn:                                            ; preds = %bb.bi
  %i.ih = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull @.str.422)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @__cxa_throw(ptr nonnull %i.ih, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ih) #29
  br label %bb.bw

bb.bq:                                            ; preds = %bb.v
  %i.ij = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull @.str.422)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @__cxa_throw(ptr nonnull %i.ij, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ij) #29
  br label %bb.bw

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165: ; preds = %._crit_edge.i.i.i163, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit179, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit193, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit, %bb.aq, %bb.ar, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit, %bb.av, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.g
  %.1136 = phi ptr [ %i.ic, %bb.bi ], [ %.0135229, %bb.g ], [ %i.ic, %bb.bi ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit179 ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit193 ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.ai ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.aj ], [ %i.bz, %bb.ak ], [ %i.bz, %bb.al ], [ %i.bz, %bb.am ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.an ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit ], [ %i.bz, %bb.aq ], [ %i.bz, %bb.ar ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit ], [ %i.bz, %bb.av ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bj ], [ %i.ic, %bb.bk ], [ %i.ic, %bb.bl ], [ %i.ic, %bb.bm ], [ %i.bz, %._crit_edge.i.i.i163 ] ; 2 uses
  %.3 = phi ptr [ %i.ic, %bb.bi ], [ %i.m, %bb.g ], [ %i.ic, %bb.bi ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit179 ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit193 ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.ai ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.aj ], [ %i.bz, %bb.ak ], [ %i.bz, %bb.al ], [ %i.bz, %bb.am ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.an ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit ], [ %i.bz, %bb.aq ], [ %i.bz, %bb.ar ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit ], [ %i.bz, %bb.av ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bj ], [ %i.ic, %bb.bk ], [ %i.ic, %bb.bl ], [ %i.ic, %bb.bm ], [ %i.bz, %._crit_edge.i.i.i163 ] ; 3 uses
  %.not145 = icmp eq ptr %.3, %1
  br i1 %.not145, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165.thread, label %bb.f

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165.thread: ; preds = %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165, %bb.f
  %.0135.lcssa.ph = phi ptr [ %.1136, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165 ], [ %.0135229, %bb.f ] ; 2 uses
  %.0129.lcssa.ph = phi ptr [ %.3, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165 ], [ %.0129230, %bb.f ] ; 5 uses
end_hunk_1
