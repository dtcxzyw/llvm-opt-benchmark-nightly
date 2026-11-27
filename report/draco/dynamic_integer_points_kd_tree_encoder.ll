Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/dynamic_integer_points_kd_tree_encoder?download=true
inline.NumInlined: 237
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi0EEC2Ej:bb.a

_ZNSt6vectorIjSaIjEED2Ev.exit74:                  ; preds = %bb.w, %.body, %bb.u
  %i.cr = phi ptr [ %i.n, %bb.u ], [ %i.aj, %.body ], [ %i.aj, %bb.w ]
  %i.cs = phi ptr [ %i.t, %bb.u ], [ %i.ak, %.body ], [ %i.ak, %bb.w ]
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.aa

bb.x:                                             ; preds = %bb.j
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

bb.y:                                             ; preds = %.loopexit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.body68:                                          ; preds = %bb.k, %bb.l, %bb.y
  %eh.lpad-body69 = phi { ptr, i32 } [ %i.cu, %bb.y ], [ %i.br, %bb.l ], [ %i.br, %bb.k ] ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIjSaIjEED2Ev.exit76, label %bb.z

bb.z:                                             ; preds = %.body68
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

_ZNSt6vectorIjSaIjEED2Ev.exit76:                  ; preds = %bb.z, %.body68, %bb.x
  %.pn20 = phi { ptr, i32 } [ %i.ct, %bb.x ], [ %eh.lpad-body69, %.body68 ], [ %eh.lpad-body69, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.al) #16
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit76, %_ZNSt6vectorIjSaIjEED2Ev.exit74
  %i.db = phi ptr [ %i.aj, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cr, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.dc = phi ptr [ %i.ak, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cs, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIjSaIjEED2Ev.exit78, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !25
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit78

_ZNSt6vectorIjSaIjEED2Ev.exit78:                  ; preds = %bb.ab, %bb.aa, %bb.t
  %i.dj = phi ptr [ %i.n, %bb.t ], [ %i.db, %bb.aa ], [ %i.db, %bb.ab ] ; 2 uses
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.t ], [ %.pn20.pn, %bb.aa ], [ %.pn20.pn, %bb.ab ] ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIjSaIjEED2Ev.exit80, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit78
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !25
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit80

_ZNSt6vectorIjSaIjEED2Ev.exit80:                  ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEED2Ev.exit78, %bb.s
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.s ], [ %.pn20.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit78 ], [ %.pn20.pn.pn, %bb.ac ] ; 2 uses
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !24  ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIjSaIjEED2Ev.exit82, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit80
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !25
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit82

_ZNSt6vectorIjSaIjEED2Ev.exit82:                  ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEED2Ev.exit80, %bb.r
  %.pn20.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.r ], [ %.pn20.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit80 ], [ %.pn20.pn.pn.pn, %bb.ad ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.e) #16
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit82, %bb.q
  %.pn20.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit82 ], [ %i.cf, %bb.q ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.p
  %.pn20.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn.pn.pn.pn, %bb.ae ], [ %i.ce, %bb.p ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.o
  %.pn20.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn.pn.pn.pn.pn, %bb.af ], [ %i.cd, %bb.o ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #16
  resume { ptr, i32 } %.pn20.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #17
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #17
  br label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i32 @_ZNK5draco33DynamicIntegerPointsKdTreeEncoderILi0EE9dimensionEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE8SplitterC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 comdat($_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE8SplitterC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE12EncodeNumberEij(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5draco16DirectBitEncoder28EncodeLeastSignificantBits32Eij(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco16DirectBitEncoder28EncodeLeastSignificantBits32Eij(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50
  %.fr = freeze i32 %i.b                          ; 3 uses
  %i.c = sub i32 32, %.fr                         ; 2 uses
  %i.d = sub nsw i32 32, %1                       ; 2 uses
  %i.e = shl i32 %2, %i.d                         ; 2 uses
  %.not = icmp sgt i32 %1, %i.c
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %i.e, %.fr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51
  %i.i = or i32 %i.h, %i.f
  %3 = freeze i32 %i.i                            ; 2 uses
  %i.j = add i32 %.fr, %1                         ; 2 uses
  %4 = zext i32 %3 to i64
  %5 = zext i32 %i.j to i64
  %6 = shl nuw i64 %5, 32
  %7 = or disjoint i64 %6, %4
  store i64 %7, ptr %i.g, align 8
  %i.k = icmp eq i32 %i.j, 32
  br i1 %i.k, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %3, ptr %i.m, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %i.p, ptr %i.l, align 8, !tbaa !27
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %i.z = select i1 %i.x, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #15 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !26
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !26
  %i.ae = icmp sgt i64 %i.t, 0
  br i1 %i.ae, label %bb.g, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.t) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !24
  store ptr %i.af, ptr %i.l, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !25
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.d, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  store i64 0, ptr %i.g, align 8
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.ah = lshr exact i32 %i.e, %i.d               ; 2 uses
  %i.ai = sub i32 %1, %i.c                        ; 2 uses
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !51
  %i.am = or i32 %i.al, %i.aj
  %8 = freeze i32 %i.am                           ; 2 uses
  %9 = zext i32 %8 to i64
  %10 = zext i32 %i.ai to i64
  %11 = shl nuw i64 %10, 32
  %12 = or disjoint i64 %11, %9
  store i64 %12, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25
  %.not.i15 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %8, ptr %i.ao, align 4, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !27
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit22

bb.k:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %0, align 8, !tbaa !24    ; 4 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 6 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775804
  br i1 %i.aw, label %bb.l, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i16

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i16: ; preds = %bb.k
  %i.ax = ashr exact i64 %i.av, 2                 ; 3 uses
  %.sroa.speculated.i.i.i17 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i17, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 2305843009213693951)
  %i.bb = select i1 %i.az, i64 2305843009213693951, i64 %i.ba ; 3 uses
  %.not.i.i.i18 = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i18)
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #15 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !26
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !26
  %i.bg = icmp sgt i64 %i.av, 0
  br i1 %i.bg, label %bb.m, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i19

bb.m:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i19

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i19: ; preds = %bb.m, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.not.i17.i.i20 = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i20, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i21, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i21

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i21: ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i19
  store ptr %i.bd, ptr %0, align 8, !tbaa !24
  store ptr %i.bh, ptr %i.an, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bi, ptr %i.ap, align 8, !tbaa !25
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit22

_ZNSt6vectorIjSaIjEE9push_backERKj.exit22:        ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i21
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !50
  %i.bk = sub i32 32, %i.bj
  %i.bl = shl i32 %i.ah, %i.bk
  store i32 %i.bl, ptr %i.ak, align 8, !tbaa !51
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi2EEC2Ej(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1) unnamed_addr #0 comdat($_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi2EEC5Ej) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  store i32 0, ptr %0, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.g = zext i32 %1 to i64                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %1, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 12 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #15
          to label %.noexc unwind label %bb.r     ; 4 uses

.noexc:                                           ; preds = %bb.e
  store ptr %i.i, ptr %i.f, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.j, ptr %i.k, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.h, i1 false), !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.l, ptr %i.m, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #15
          to label %.noexc35 unwind label %bb.s   ; 4 uses

.noexc35:                                         ; preds = %.noexc
  store ptr %i.o, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.p, ptr %i.q, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.h, i1 false), !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.r, ptr %i.s, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #15
          to label %.noexc43 unwind label %bb.t   ; 4 uses

.noexc43:                                         ; preds = %.noexc35
  store ptr %i.u, ptr %i.t, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.v, ptr %i.w, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 0, i64 %i.h, i1 false), !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.x, ptr %i.y, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #15
          to label %.noexc51 unwind label %bb.u   ; 4 uses

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit98

.noexc51:                                         ; preds = %.noexc43
  %i.ac = shl i32 %1, 5
  %i.ad = or disjoint i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  store ptr %i.z, ptr %2, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.g
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 0, i64 %i.h, i1 false), !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.h
  br label %.loopexit98

.loopexit98:                                      ; preds = %.noexc51, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50
  %i.ai = phi i64 [ 1, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ae, %.noexc51 ] ; 5 uses
  %i.aj = phi ptr [ %i.aa, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.n, %.noexc51 ] ; 3 uses
  %i.ak = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.t, %.noexc51 ] ; 3 uses
  %.0.i.i.i.i.i.i.i49 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ah, %.noexc51 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i.i.i49, ptr %i.am, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.an = mul nuw nsw i64 %i.ai, 24               ; 2 uses
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #15
          to label %.noexc54 unwind label %bb.v   ; 4 uses

.noexc54:                                         ; preds = %.loopexit98
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ai
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !30
  %i.as = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.ao, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.noexc54
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !28 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #17
  br label %.body

bb.h:                                             ; preds = %.noexc54
end_hunk_0
