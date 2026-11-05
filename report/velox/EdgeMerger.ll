Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/EdgeMerger?download=true
inline.NumInlined: 287
inline.NumDeleted: 155
begin_hunk_0_@_ZN4geos9operation9overlayng10EdgeMerger5mergeERSt6vectorIPNS1_4EdgeESaIS5_EE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  invoke void @_ZN4geos9operation9overlayng4Edge5mergeEPKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull %i.t)
          to label %_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EE9push_backERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d, %bb.e, %.noexc18, %_ZN4geos9operation9overlayng7EdgeKey10initPointsEPKNS1_4EdgeE.exit.i, %_ZNK4geos9operation9overlayng4Edge4sizeEv.exit, %_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit, %_ZNKSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.u
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.y:                                             ; preds = %_ZNK4geos9operation9overlayng4Edge4sizeEv.exit26
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.z:                                             ; preds = %.noexc27
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.j
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.dp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.y
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.y ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.do, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.loopexit.split-lp

_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dr = phi ptr [ %i.ct, %_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.q, %bb.s ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ds = phi ptr [ %i.cs, %_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.ce, %bb.s ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.dt = phi ptr [ %i.cp, %_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.s, %bb.s ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.du, %i.i
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn14.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %lpad.loopexit.split-lp65, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.dv = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.dv) #21
  br label %_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.aa
  resume { ptr, i32 } %.pn14.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !68 {
bb.a:
  %2 = alloca %"class.std::tuple.9", align 8      ; 4 uses
  %3 = alloca %"class.std::tuple.12", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not14.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load double, ptr %1, align 8, !tbaa !36  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8           ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load double, ptr %i.g, align 8           ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i, %.lr.ph.i.i.i
  %.016.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i ] ; 9 uses
  %.0815.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !36 ; 2 uses
  %i.m = fcmp olt double %i.l, %i.d
  br i1 %i.m, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = fcmp ogt double %i.l, %i.d
  br i1 %i.n, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !37 ; 2 uses
  %i.q = fcmp olt double %i.p, %i.f
  br i1 %i.q, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = fcmp ogt double %i.p, %i.f
  br i1 %i.r, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 48
  %i.t = load double, ptr %i.s, align 8, !tbaa !38 ; 2 uses
  %i.u = fcmp olt double %i.t, %i.h
  br i1 %i.u, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = fcmp ogt double %i.t, %i.h
  br i1 %i.v, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 56
  %i.x = load double, ptr %i.w, align 8, !tbaa !39
  %i.y = fcmp olt double %i.x, %i.j
  br i1 %i.y, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i, %bb.f, %bb.d, %bb.b
  br label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i: ; preds = %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i, %bb.g, %bb.e, %bb.c
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i ], [ 16, %bb.g ], [ 16, %bb.c ], [ 16, %bb.e ], [ 16, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0815.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i ], [ %.016.i.i.i, %bb.g ], [ %.016.i.i.i, %bb.c ], [ %.016.i.i.i, %bb.e ], [ %.016.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i ] ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !0

_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i
  %i.aa = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.aa, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %i.ad = fcmp olt double %i.d, %i.ac
  br i1 %i.ad, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = fcmp ogt double %i.d, %i.ac
  br i1 %i.ae, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ag = load double, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.ah = fcmp olt double %i.f, %i.ag
  br i1 %i.ah, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = fcmp ogt double %i.f, %i.ag
  br i1 %i.ai, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = fcmp olt double %i.h, %i.ak
  br i1 %i.al, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = fcmp ogt double %i.h, %i.ak
  br i1 %i.am, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 56
  %i.ao = load double, ptr %i.an, align 8, !tbaa !39
  %i.ap = fcmp olt double %i.j, %i.ao
  br i1 %i.ap, label %.critedge, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15

.critedge:                                        ; preds = %bb.l, %bb.j, %bb.h, %bb.a, %_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit
  %.08.lcssa.i.i.i11 = phi ptr [ %i.c, %bb.a ], [ %.19.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit ], [ %.19.i.i.i, %_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit ], [ %.19.i.i.i, %bb.h ], [ %.19.i.i.i, %bb.j ], [ %.19.i.i.i, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %1, ptr %2, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.aq = call ptr @_ZNSt8_Rb_treeIN4geos9operation9overlayng7EdgeKeyESt4pairIKS3_PNS2_4EdgeEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15: ; preds = %bb.m, %bb.i, %bb.k, %.critedge, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit
  %.sroa.06.0 = phi ptr [ %i.aq, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit ], [ %.19.i.i.i, %bb.k ], [ %.19.i.i.i, %bb.i ], [ %.19.i.i.i, %bb.m ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 64
  ret ptr %i.ar
}

declare void @_ZN4geos4util6Assert6isTrueEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4geos9operation9overlayng4Edge5mergeEPKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !guid !70 {
  %3 = load i32, ptr %0, align 8, !tbaa !79       ; 2 uses
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i8, ptr %6, align 8, !tbaa !80, !range !81, !noundef !82
  %8 = trunc nuw i8 %7 to i1
  %9 = xor i1 %8, true
  br label %10

10:                                               ; preds = %5, %2
  %.0.i.ph.i = phi i1 [ false, %2 ], [ %9, %5 ]   ; 2 uses
  %11 = load i32, ptr %1, align 8, !tbaa !79      ; 3 uses
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %bb.a

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load i8, ptr %14, align 8, !tbaa !80, !range !81, !noundef !82
  %16 = trunc nuw i8 %15 to i1
  %17 = xor i1 %16, true
  %18 = or i1 %.0.i.ph.i, %17
  br label %bb.a

bb.a:                                             ; preds = %10, %13
  %.0.i6.i = phi i1 [ %18, %13 ], [ %.0.i.ph.i, %10 ]
  %19 = xor i1 %.0.i6.i, true
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = zext i1 %19 to i8
  store i8 %20, ptr %i.a, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sink.in.i8.i13 = load i32, ptr %i.b, align 4, !tbaa !83 ; 2 uses
  %.sink.i9.i14.not = icmp eq i32 %.sink.in.i8.i13, 2
  br i1 %.sink.i9.i14.not, label %21, label %_ZNK4geos9operation9overlayng4Edge7isShellEi.exit.i

21:                                               ; preds = %bb.a
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %23 = load i8, ptr %22, align 4, !tbaa !84, !range !81, !noundef !82
  %24 = trunc nuw i8 %23 to i1
  %25 = xor i1 %24, true
  br label %_ZNK4geos9operation9overlayng4Edge7isShellEi.exit.i

_ZNK4geos9operation9overlayng4Edge7isShellEi.exit.i: ; preds = %21, %bb.a
  %.0.i.i = phi i1 [ false, %bb.a ], [ %25, %21 ] ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %27 = load i32, ptr %26, align 4, !tbaa !83     ; 3 uses
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %_ZN4geos9operation9overlayng4Edge12isHoleMergedEiPKS2_S4_.exit14

29:                                               ; preds = %_ZNK4geos9operation9overlayng4Edge7isShellEi.exit.i
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %31 = load i8, ptr %30, align 4, !tbaa !84, !range !81, !noundef !82
  %32 = trunc nuw i8 %31 to i1
  %33 = xor i1 %32, true
  %34 = or i1 %.0.i.i, %33
  br label %_ZN4geos9operation9overlayng4Edge12isHoleMergedEiPKS2_S4_.exit14

_ZN4geos9operation9overlayng4Edge12isHoleMergedEiPKS2_S4_.exit14: ; preds = %_ZNK4geos9operation9overlayng4Edge7isShellEi.exit.i, %29
  %.0.i6.i13 = phi i1 [ %.0.i.i, %_ZNK4geos9operation9overlayng4Edge7isShellEi.exit.i ], [ %34, %29 ]
  %35 = xor i1 %.0.i6.i13, true
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %37 = zext i1 %35 to i8
  store i8 %37, ptr %36, align 4, !tbaa !84
  %38 = icmp sgt i32 %11, %3
  br i1 %38, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4geos9operation9overlayng4Edge12isHoleMergedEiPKS2_S4_.exit14
  store i32 %11, ptr %0, align 8, !tbaa !79
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4geos9operation9overlayng4Edge12isHoleMergedEiPKS2_S4_.exit14
  %i.c = icmp sgt i32 %27, %.sink.in.i8.i13
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %27, ptr %i.b, align 4, !tbaa !83
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0), !inline_history !69
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0), !inline_history !69
  %i.p = load <2 x double>, ptr %i.i, align 8
  %i.q = load <2 x double>, ptr %i.o, align 8
  %i.r = fcmp oeq <2 x double> %i.p, %i.q         ; 2 uses
  %i.s = extractelement <2 x i1> %i.r, i64 0
  %i.t = extractelement <2 x i1> %i.r, i64 1
  %.0.i.i.a = select i1 %i.s, i1 %i.t, i1 false
  br i1 %.0.i.i.a, label %_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit, label %_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit.thread

_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit: ; preds = %bb.e
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 1), !inline_history !69
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef 1), !inline_history !69
  %i.ae = load <2 x double>, ptr %i.y, align 8
  %i.af = load <2 x double>, ptr %i.ad, align 8
  %i.ag = fcmp oeq <2 x double> %i.ae, %i.af      ; 2 uses
  %i.ah = extractelement <2 x i1> %i.ag, i64 0
  %i.ai = extractelement <2 x i1> %i.ag, i64 1
  %.0.i4.i = select i1 %i.ah, i1 %i.ai, i1 false
  %cond.fr = freeze i1 %.0.i4.i
  %spec.select = select i1 %cond.fr, i32 1, i32 -1
  br label %_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit.thread

_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit.thread: ; preds = %_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit, %bb.e
  %i.aj = phi i32 [ -1, %bb.e ], [ %spec.select, %_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !85
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !85
  %i.ap = add nsw i32 %i.ao, %i.am
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !85
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !86
  %i.as = mul nsw i32 %i.ar, %i.aj
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !86
  %i.av = add nsw i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !guid !87 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  invoke void @_ZNSt8_Rb_treeIN4geos9operation9overlayng7EdgeKeyESt4pairIKS3_PNS2_4EdgeEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4geos9operation9overlayng7EdgeKeyESt4pairIKS3_PNS2_4EdgeEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #18
  unreachable

_ZNSt8_Rb_treeIN4geos9operation9overlayng7EdgeKeyESt4pairIKS3_PNS2_4EdgeEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !guid !88 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4geos9operation9overlayng4Edge9directionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !90 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !89
  %i.g = icmp ult i64 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %i.h, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN4geos4util13GEOSExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.r unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %bb.d
  %.017 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.017, label %.sink.split, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.017, label %.sink.split, label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0) ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 1) ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x), !inline_history !89
  %i.ac = add i64 %i.ab, -1
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef %i.ac) ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !28  ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah), !inline_history !89
  %i.am = add i64 %i.al, -2
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef %i.am) ; 2 uses
  %i.ar = load double, ptr %i.r, align 8, !tbaa !91 ; 2 uses
  %i.as = load double, ptr %i.ag, align 8, !tbaa !91 ; 2 uses
  %i.at = fcmp olt double %i.ar, %i.as
  br i1 %i.at, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = fcmp ogt double %i.ar, %i.as
  br i1 %i.au, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !34 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !34 ; 2 uses
  %i.az = fcmp olt double %i.aw, %i.ay
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN4geos9operation9overlayng7EdgeKeyESt4pairIKS3_PNS2_4EdgeEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE24_M_get_insert_unique_posERS5_:bb.a
  %.022 = load ptr, ptr %i.y, align 8, !tbaa !40  ; 2 uses
  %.not = icmp eq ptr %.022, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !99

._crit_edge:                                      ; preds = %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread
  br i1 %.0.i.i.i24, label %._crit_edge.thread, label %bb.i

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.021.lcssa52 = phi ptr [ %.02236, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ab = icmp eq ptr %.021.lcssa52, %i.aa
  br i1 %i.ab, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa52) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.021.lcssa51 = phi ptr [ %.021.lcssa52, %bb.h ], [ %.02236, %._crit_edge ] ; 4 uses
  %.sroa.07.0 = phi ptr [ %i.ac, %bb.h ], [ %.02236, %._crit_edge ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 32
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %i.af = load double, ptr %1, align 8, !tbaa !36 ; 2 uses
  %i.ag = fcmp olt double %i.ae, %i.af
  br i1 %i.ag, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = fcmp ogt double %i.ae, %i.af
  br i1 %i.ah, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread32, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 40
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !37 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %i.am = fcmp olt double %i.aj, %i.al
  br i1 %i.am, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = fcmp ogt double %i.aj, %i.al
  br i1 %i.an, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread32, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 48
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !38 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %i.as = fcmp olt double %i.ap, %i.ar
  br i1 %i.as, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = fcmp ogt double %i.ap, %i.ar
  br i1 %i.at, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread32, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6: ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 56
  %i.av = load double, ptr %i.au, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !39
  %i.ay = fcmp olt double %i.av, %i.ax
  br i1 %i.ay, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread32

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread32: ; preds = %bb.n, %bb.j, %bb.l, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6
  br label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread: ; preds = %bb.m, %bb.k, %bb.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6, %._crit_edge.thread, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread32
  %.sroa.020.0 = phi ptr [ %.sroa.07.0, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread32 ], [ null, %._crit_edge.thread ], [ null, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6 ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ]
  %.sroa.4.0 = phi ptr [ null, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6.thread32 ], [ %.021.lcssa52, %._crit_edge.thread ], [ %.021.lcssa51, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit6 ], [ %.021.lcssa51, %bb.i ], [ %.021.lcssa51, %bb.k ], [ %.021.lcssa51, %bb.m ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.020.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !41}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{i64 6236774061745756602}
!10 = !{i64 5668453780867300564}
!11 = !{i64 4015750017726582872}
!12 = !{i64 -7365273506265098196}
!13 = !{i64 2636788095777509889}
!14 = !{i64 870706534506076527}
!15 = !{i64 -9144424820382680693}
!16 = !{i64 562609276683761825}
!17 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!20 = !{!"_ZTSSt18_Rb_tree_node_base", !17, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!21 = !{!"long", !5, i64 0}
!22 = !{!"_ZTSSt15_Rb_tree_header", !20, i64 0, !21, i64 32}
!23 = !{!22, !19, i64 8}
!24 = !{!22, !19, i64 16}
!25 = !{!22, !21, i64 32}
!26 = !{!"p1 _ZTSN4geos9operation9overlayng4EdgeE", !18, i64 0}
!27 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !18, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"vtable pointer", !4, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"double", !5, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"_ZTSN4geos4geom10CoordinateE", !31, i64 0, !31, i64 8, !31, i64 16}
!34 = !{!33, !31, i64 8}
!35 = !{!"_ZTSN4geos9operation9overlayng7EdgeKeyE", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!36 = !{!35, !31, i64 0}
!37 = !{!35, !31, i64 8}
!38 = !{!35, !31, i64 16}
!39 = !{!35, !31, i64 24}
!40 = !{!19, !19, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"_ZTSSt4pairIKN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeEE", !35, i64 0, !26, i64 32}
!43 = !{!42, !26, i64 32}
!44 = !{!"p1 omnipotent char", !18, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !21, i64 8, !5, i64 16}
!47 = !{!46, !44, i64 0}
!48 = !{!"p1 _ZTSN4geos9operation9overlayng7EdgeKeyE", !18, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!20, !19, i64 24}
!51 = distinct !{null}
!52 = distinct !{null}
!53 = !{i64 3138934923878647636}
!54 = !{!22, !17, i64 0}
!55 = !{!22, !19, i64 24}
!56 = !{!"any p2 pointer", !18, i64 0}
!57 = !{!"p2 _ZTSN4geos9operation9overlayng4EdgeE", !56, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!26, !26, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIPN4geos9operation9overlayng4EdgeESaIS4_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!61 = !{!60, !57, i64 8}
!62 = !{!60, !57, i64 0}
!63 = !{!60, !57, i64 16}
!64 = !{!45, !44, i64 0}
!65 = !{!21, !21, i64 0}
!66 = !{!5, !5, i64 0}
!67 = !{!46, !21, i64 8}
!68 = !{i64 -1207406218365317579}
!69 = distinct !{null, null}
!70 = !{i64 2156618920098447117}
!71 = !{!"bool", !5, i64 0}
!72 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom18CoordinateSequenceELb0EE", !27, i64 0}
!73 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !72, i64 0}
!74 = !{!"_ZTSSt5tupleIJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !73, i64 0}
!75 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !74, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_ELb1ELb1EE", !75, i64 0}
!77 = !{!"_ZTSSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !76, i64 0}
!78 = !{!"_ZTSN4geos9operation9overlayng4EdgeE", !6, i64 0, !6, i64 4, !71, i64 8, !6, i64 12, !6, i64 16, !71, i64 20, !77, i64 24}
!79 = !{!78, !6, i64 0}
!80 = !{!78, !71, i64 8}
!81 = !{i8 0, i8 2}
!82 = !{}
!83 = !{!78, !6, i64 12}
!84 = !{!78, !71, i64 20}
!85 = !{!78, !6, i64 4}
!86 = !{!78, !6, i64 16}
!87 = !{i64 -2930715054567517504}
!88 = !{i64 1080103601501470593}
!89 = distinct !{null}
!90 = !{i64 -8433208582727366467}
!91 = !{!33, !31, i64 0}
!92 = !{i64 5858586566290294766}
!93 = distinct !{!93, !41}
!94 = !{i64 722367129539921366}
!95 = !{!20, !19, i64 16}
!96 = !{i64 -7551155793130966470}
!97 = !{i64 0, i64 8, !32, i64 8, i64 8, !32, i64 16, i64 8, !32, i64 24, i64 8, !32}
!98 = !{i64 6469937670947987612}
!99 = distinct !{!99, !41}
!100 = !{i64 4889795985017382881}
end_hunk_1
