Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/dynamic_integer_points_kd_tree_encoder?download=true
inline.NumInlined: 237
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EEC2Ej:bb.a

bb.z:                                             ; preds = %.loopexit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.body68:                                          ; preds = %bb.l, %bb.m, %bb.z
  %eh.lpad-body69 = phi { ptr, i32 } [ %i.cw, %bb.z ], [ %i.bt, %bb.m ], [ %i.bt, %bb.l ] ; 2 uses
  %i.cx = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIjSaIjEED2Ev.exit76, label %bb.aa

bb.aa:                                            ; preds = %.body68
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

_ZNSt6vectorIjSaIjEED2Ev.exit76:                  ; preds = %bb.aa, %.body68, %bb.y
  %.pn20 = phi { ptr, i32 } [ %i.cv, %bb.y ], [ %eh.lpad-body69, %.body68 ], [ %eh.lpad-body69, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #16
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit76, %_ZNSt6vectorIjSaIjEED2Ev.exit74
  %i.dd = phi ptr [ %i.al, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.ct, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.de = phi ptr [ %i.am, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cu, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIjSaIjEED2Ev.exit78, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !25
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit78

_ZNSt6vectorIjSaIjEED2Ev.exit78:                  ; preds = %bb.ac, %bb.ab, %bb.u
  %i.dl = phi ptr [ %i.p, %bb.u ], [ %i.dd, %bb.ab ], [ %i.dd, %bb.ac ] ; 2 uses
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.u ], [ %.pn20.pn, %bb.ab ], [ %.pn20.pn, %bb.ac ] ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIjSaIjEED2Ev.exit80, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit78
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !25
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit80

_ZNSt6vectorIjSaIjEED2Ev.exit80:                  ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEED2Ev.exit78, %bb.t
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.t ], [ %.pn20.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit78 ], [ %.pn20.pn.pn, %bb.ad ] ; 2 uses
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !24  ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIjSaIjEED2Ev.exit82, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit80
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !25
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit82

_ZNSt6vectorIjSaIjEED2Ev.exit82:                  ; preds = %bb.ae, %_ZNSt6vectorIjSaIjEED2Ev.exit80, %bb.s
  %.pn20.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.s ], [ %.pn20.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit80 ], [ %.pn20.pn.pn.pn, %bb.ae ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #16
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit82, %bb.r
  %.pn20.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit82 ], [ %i.ch, %bb.r ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.f) #16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.q
  %.pn20.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn.pn.pn.pn, %bb.af ], [ %i.cg, %bb.q ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.e) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.p
  %.pn20.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn.pn.pn.pn.pn, %bb.ag ], [ %i.cf, %bb.p ]
  call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.c) #16
  call void @_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EED2Ev(ptr noundef nonnull align 8 dead_on_return(1792) dereferenceable(1848) %i.b) #16
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i32 @_ZNK5draco33DynamicIntegerPointsKdTreeEncoderILi6EE9dimensionEv(ptr noundef nonnull align 8 dereferenceable(2080) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE8SplitterC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 comdat($_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE8SplitterC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE12EncodeNumberEij(ptr noundef nonnull align 8 dereferenceable(2080) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN5draco18FoldedBit32EncoderINS_14RAnsBitEncoderEE28EncodeLeastSignificantBits32Eij.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = add nsw i32 %1, -1
  %i.d = shl nuw i32 1, %i.c
  %wide.trip.count.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.011.i = phi i32 [ %i.d, %.lr.ph.preheader.i ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %i.e = and i32 %.011.i, %2
  %i.f = icmp ne i32 %i.e, 0
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %indvars.iv.i
  tail call void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i1 noundef zeroext %i.f)
  %i.h = lshr i32 %.011.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5draco18FoldedBit32EncoderINS_14RAnsBitEncoderEE28EncodeLeastSignificantBits32Eij.exit, label %.lr.ph.i, !llvm.loop !1

_ZN5draco18FoldedBit32EncoderINS_14RAnsBitEncoderEE28EncodeLeastSignificantBits32Eij.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.b = phi ptr [ %.pre, %.lr.ph ], [ %i.m, %bb.g ] ; 2 uses
  %.018 = phi ptr [ %0, %.lr.ph ], [ %i.w, %bb.g ] ; 6 uses
  %.01117 = phi i64 [ %1, %.lr.ph ], [ %i.v, %bb.g ]
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i.i.i, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !65

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #15
          to label %.noexc12 unwind label %bb.h

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.i = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !25
  %i.m = load ptr, ptr %2, align 8, !tbaa !66     ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !67

bb.d:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.m, i64 %i.q, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc12
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.m, align 4, !tbaa !26
  store i32 %i.t, ptr %i.i, align 4, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !27
  %i.v = add i64 %.01117, -1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !64

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %lpad.loopexit.split-lp31, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #16 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIjSaIjEEEvT_S4_(ptr noundef %0, ptr noundef nonnull %.018)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #18
          to label %bb.m unwind label %bb.j

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.w, %bb.g ]
  ret ptr %.0.lcssa

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.z

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #19
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIjSaIjEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIjSaIjEEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #17
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i:      ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIjSaIjEEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIjSaIjEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EEC2Ev(ptr noundef nonnull align 8 dereferenceable(1792) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.1)
          to label %bb.b unwind label %.preheader.preheader

bb.b:                                             ; preds = %bb.a
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.2)
          to label %bb.c unwind label %.preheader.preheader

bb.c:                                             ; preds = %bb.b
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.3)
          to label %bb.d unwind label %.preheader.preheader

bb.d:                                             ; preds = %bb.c
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.4)
          to label %bb.e unwind label %.preheader.preheader

bb.e:                                             ; preds = %bb.d
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.5)
          to label %bb.f unwind label %.preheader.preheader

bb.f:                                             ; preds = %bb.e
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.6)
          to label %bb.g unwind label %.preheader.preheader

bb.g:                                             ; preds = %bb.f
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.7)
          to label %bb.h unwind label %.preheader.preheader

bb.h:                                             ; preds = %bb.g
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.8)
          to label %bb.i unwind label %.preheader.preheader

bb.i:                                             ; preds = %bb.h
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.9)
          to label %bb.j unwind label %.preheader.preheader

bb.j:                                             ; preds = %bb.i
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.10)
          to label %bb.k unwind label %.preheader.preheader

bb.k:                                             ; preds = %bb.j
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.11)
          to label %bb.l unwind label %.preheader.preheader

bb.l:                                             ; preds = %bb.k
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.12)
          to label %bb.m unwind label %.preheader.preheader

bb.m:                                             ; preds = %bb.l
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.13)
          to label %bb.n unwind label %.preheader.preheader

bb.n:                                             ; preds = %bb.m
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.14)
          to label %bb.o unwind label %.preheader.preheader

bb.o:                                             ; preds = %bb.n
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.15)
          to label %bb.p unwind label %.preheader.preheader

bb.p:                                             ; preds = %bb.o
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.16)
          to label %bb.q unwind label %.preheader.preheader

bb.q:                                             ; preds = %bb.p
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.17)
          to label %bb.r unwind label %.preheader.preheader

bb.r:                                             ; preds = %bb.q
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.18)
          to label %bb.s unwind label %.preheader.preheader

bb.s:                                             ; preds = %bb.r
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.19)
          to label %bb.t unwind label %.preheader.preheader

bb.t:                                             ; preds = %bb.s
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.20)
          to label %bb.u unwind label %.preheader.preheader

bb.u:                                             ; preds = %bb.t
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.21)
          to label %bb.v unwind label %.preheader.preheader

bb.v:                                             ; preds = %bb.u
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.22)
          to label %bb.w unwind label %.preheader.preheader

bb.w:                                             ; preds = %bb.v
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.23)
          to label %bb.x unwind label %.preheader.preheader

bb.x:                                             ; preds = %bb.w
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.24)
          to label %bb.y unwind label %.preheader.preheader

bb.y:                                             ; preds = %bb.x
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.25)
          to label %bb.z unwind label %.preheader.preheader

bb.z:                                             ; preds = %bb.y
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.26)
          to label %bb.aa unwind label %.preheader.preheader

bb.aa:                                            ; preds = %bb.z
end_hunk_0
