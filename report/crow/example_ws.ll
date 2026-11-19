Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow12query_stringC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !160
  %i.b = load ptr, ptr %1, align 8, !tbaa !164    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !166  ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !164
  %i.i = load i64, ptr %i.c, align 8, !tbaa !165
  store i64 %i.i, ptr %i.a, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !166
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !166
  store ptr %i.c, ptr %1, align 8, !tbaa !164
  store i64 0, ptr %i.j, align 8, !tbaa !166
  store i8 0, ptr %i.c, align 8, !tbaa !165
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = load i64, ptr %i.l, align 8, !tbaa !166
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt6vectorIPcSaIS0_EE13shrink_to_fitEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_ZNSt6vectorIPcSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 256)
          to label %_ZNSt6vectorIPcSaIS0_EE6resizeEm.exit unwind label %bb.i

_ZNSt6vectorIPcSaIS0_EE6resizeEm.exit:            ; preds = %bb.c
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !1399
  %i.q = load ptr, ptr %0, align 8, !tbaa !164
  %i.r = invoke noundef i64 @_ZN4crow8qs_parseEPcPS0_mb(ptr noundef nonnull %i.q, ptr noundef nonnull %.pre, i64 noundef 256, i1 noundef zeroext %2)
          to label %bb.d unwind label %bb.i       ; 4 uses

bb.d:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE6resizeEm.exit
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !1452 ; 4 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !1399 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 3 uses
  %i.y = icmp ugt i64 %i.r, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = sub nuw i64 %i.r, %i.x
  invoke void @_ZNSt6vectorIPcSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.z)
          to label %._ZNSt6vectorIPcSaIS0_EE6resizeEm.exit9_crit_edge unwind label %bb.i

._ZNSt6vectorIPcSaIS0_EE6resizeEm.exit9_crit_edge: ; preds = %bb.e
  %.pre11 = load ptr, ptr %i.p, align 8, !tbaa !1452
  br label %_ZNSt6vectorIPcSaIS0_EE6resizeEm.exit9

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp ult i64 %i.r, %i.x
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIPcSaIS0_EE6resizeEm.exit9

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i6, label %_ZNSt6vectorIPcSaIS0_EE6resizeEm.exit9, label %_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E.exit.i.i7

_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E.exit.i.i7:    ; preds = %bb.g
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !1452
  br label %_ZNSt6vectorIPcSaIS0_EE6resizeEm.exit9

_ZNSt6vectorIPcSaIS0_EE6resizeEm.exit9:           ; preds = %._ZNSt6vectorIPcSaIS0_EE6resizeEm.exit9_crit_edge, %_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E.exit.i.i7, %bb.g, %bb.f
  %i.ac = phi ptr [ %.pre11, %._ZNSt6vectorIPcSaIS0_EE6resizeEm.exit9_crit_edge ], [ %i.ab, %_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E.exit.i.i7 ], [ %i.s, %bb.g ], [ %i.s, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1400
  %i.af = icmp eq ptr %i.ae, %i.ac
  br i1 %i.af, label %_ZNSt6vectorIPcSaIS0_EE13shrink_to_fitEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE6resizeEm.exit9
  %i.ag = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPcSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #40 ; 0 uses
  br label %_ZNSt6vectorIPcSaIS0_EE13shrink_to_fitEv.exit

_ZNSt6vectorIPcSaIS0_EE13shrink_to_fitEv.exit:    ; preds = %bb.h, %_ZNSt6vectorIPcSaIS0_EE6resizeEm.exit9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c, %_ZNSt6vectorIPcSaIS0_EE6resizeEm.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !1399 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1400
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #41
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %bb.i, %bb.j
  %i.ao = load ptr, ptr %0, align 8, !tbaa !164   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.a
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPcSaIS0_EED2Ev.exit
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !165
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ah
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4crow8qs_parseEPcPS0_mb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat {
bb.a:
  %.not52 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not52, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = shl nuw i64 %2, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %i.a, i1 false), !tbaa !551
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.b = tail call i64 @strcspn(ptr noundef %0, ptr noundef nonnull @.str.466) #45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !165
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ %0, %._crit_edge ]
  br i1 %.not52, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.d, %bb.f
  %.146 = phi ptr [ %i.l, %bb.f ], [ %.0, %bb.d ] ; 3 uses
  %.13845 = phi i64 [ %i.m, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.13845
  store ptr %.146, ptr %i.f, align 8, !tbaa !551
  %i.g = tail call i64 @strcspn(ptr noundef %.146, ptr noundef nonnull @.str.467) #45
  %i.h = getelementptr inbounds nuw i8, ptr %.146, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !165
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph48
  %i.k = add nuw i64 %.13845, 1
  br label %.lr.ph51.preheader

bb.f:                                             ; preds = %.lr.ph48
  %i.l = getelementptr i8, ptr %i.h, i64 1
  %i.m = add nuw i64 %.13845, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %2
  br i1 %exitcond.not, label %.lr.ph51.preheader, label %.lr.ph48, !llvm.loop !3223

.lr.ph51.preheader:                               ; preds = %bb.f, %bb.e
  %.2.ph = phi i64 [ %i.k, %bb.e ], [ %2, %bb.f ] ; 2 uses
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.w
  %.03649 = phi i64 [ %i.ar, %bb.w ], [ 0, %.lr.ph51.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03649
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !551  ; 2 uses
  %i.p = tail call i64 @strcspn(ptr noundef %i.o, ptr noundef nonnull @.str.468) #45
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !165
  switch i8 %i.r, label %bb.h [
    i8 38, label %bb.g
    i8 0, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph51, %.lr.ph51
  store i8 0, ptr %i.q, align 1, !tbaa !165
  br label %bb.w

bb.h:                                             ; preds = %.lr.ph51
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.v, %bb.h
  %.093.i = phi i32 [ 0, %bb.h ], [ %5, %bb.v ]   ; 3 uses
  %.0.i = phi i32 [ 0, %bb.h ], [ %i.ap, %bb.v ]  ; 4 uses
  %i.t = sext i32 %.0.i to i64
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !165   ; 2 uses
  switch i8 %i.v, label %bb.u [
    i8 61, label %_ZN4crow9qs_decodeEPc.exit
    i8 35, label %_ZN4crow9qs_decodeEPc.exit
    i8 38, label %_ZN4crow9qs_decodeEPc.exit
    i8 0, label %_ZN4crow9qs_decodeEPc.exit
    i8 43, label %bb.v
    i8 37, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %i.u, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !165
  %.fr137.i = freeze i8 %i.x                      ; 7 uses
  %i.y = icmp eq i8 %.fr137.i, 0
  br i1 %i.y, label %_ZN4crow9qs_decodeEPc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = add nsw i32 %.0.i, 2                     ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !165
  %.fr138.i = freeze i8 %i.ac                     ; 7 uses
  %i.ad = icmp eq i8 %.fr138.i, 0
  br i1 %i.ad, label %_ZN4crow9qs_decodeEPc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = add i8 %.fr137.i, -48                   ; 2 uses
  %or.cond.i = icmp ult i8 %i.ae, 10              ; 2 uses
  br i1 %or.cond.i, label %.critedge116.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.l
  switch i8 %.fr137.i, label %_ZN4crow9qs_decodeEPc.exit [
    i8 102, label %.critedge116.i
    i8 101, label %.critedge116.i
    i8 100, label %.critedge116.i
    i8 99, label %.critedge116.i
    i8 98, label %.critedge116.i
    i8 97, label %.critedge116.i
    i8 70, label %.critedge116.i
    i8 69, label %.critedge116.i
    i8 68, label %.critedge116.i
    i8 67, label %.critedge116.i
    i8 66, label %.critedge116.i
    i8 65, label %.critedge116.i
  ]

.critedge116.i:                                   ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.l
  %i.af = add i8 %.fr138.i, -48                   ; 2 uses
  %or.cond117.i = icmp ult i8 %i.af, 10           ; 2 uses
  br i1 %or.cond117.i, label %.critedge121.i, label %switch.early.test134.i

switch.early.test134.i:                           ; preds = %.critedge116.i
  switch i8 %.fr138.i, label %_ZN4crow9qs_decodeEPc.exit [
    i8 102, label %.critedge121.i
    i8 101, label %.critedge121.i
    i8 100, label %.critedge121.i
    i8 99, label %.critedge121.i
    i8 98, label %.critedge121.i
    i8 97, label %.critedge121.i
    i8 70, label %.critedge121.i
    i8 69, label %.critedge121.i
    i8 68, label %.critedge121.i
    i8 67, label %.critedge121.i
    i8 66, label %.critedge121.i
    i8 65, label %.critedge121.i
  ]

.critedge121.i:                                   ; preds = %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %.critedge116.i
  br i1 %or.cond.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.critedge121.i
  %i.ag = add nsw i8 %.fr137.i, -65
  %or.cond123.i = icmp ult i8 %i.ag, 6
  br i1 %or.cond123.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %narrow109.i = add nsw i8 %.fr137.i, -55
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ah = icmp samesign ugt i8 %.fr137.i, 96
  %narrow.i = add nsw i8 %.fr137.i, -87
  %spec.select128.i = select i1 %i.ah, i8 %narrow.i, i8 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.critedge121.i
  %i.ai = phi i8 [ %spec.select128.i, %bb.o ], [ %narrow109.i, %bb.n ], [ %i.ae, %.critedge121.i ]
  %i.aj = shl nuw i8 %i.ai, 4
  br i1 %or.cond117.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = add nsw i8 %.fr138.i, -65
  %or.cond126.i = icmp ult i8 %i.ak, 6
  br i1 %or.cond126.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %narrow112.i = add nsw i8 %.fr138.i, -55
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.al = icmp samesign ugt i8 %.fr138.i, 96
  %narrow111.i = add nsw i8 %.fr138.i, -87
  %spec.select129.i = select i1 %i.al, i8 %narrow111.i, i8 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %i.am = phi i8 [ %spec.select129.i, %bb.s ], [ %narrow112.i, %bb.r ], [ %i.af, %bb.p ]
  %i.an = add nuw i8 %i.am, %i.aj
  br label %bb.v

bb.u:                                             ; preds = %bb.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.i
  %.sink.i = phi i8 [ %i.an, %bb.t ], [ %i.v, %bb.u ], [ 32, %bb.i ]
  %.1.i = phi i32 [ %i.z, %bb.t ], [ %.0.i, %bb.u ], [ %.0.i, %bb.i ]
  %4 = zext nneg i32 %.093.i to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 %4
  store i8 %.sink.i, ptr %i.ao, align 1, !tbaa !165
  %5 = add nuw nsw i32 %.093.i, 1
  %i.ap = add nsw i32 %.1.i, 1
  br label %bb.i, !llvm.loop !3224

_ZN4crow9qs_decodeEPc.exit:                       ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.j, %bb.k, %switch.early.test.i, %switch.early.test134.i
  %6 = zext nneg i32 %.093.i to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 %6
  store i8 0, ptr %i.aq, align 1, !tbaa !165
  br label %bb.w

bb.w:                                             ; preds = %bb.g, %_ZN4crow9qs_decodeEPc.exit
  %i.ar = add nuw i64 %.03649, 1                  ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ar, %.2.ph
  br i1 %exitcond56.not, label %.loopexit, label %.lr.ph51, !llvm.loop !3225

.loopexit:                                        ; preds = %bb.w, %bb.d, %bb.b
  %.039 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ %.2.ph, %bb.w ]
  ret i64 %.039
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPcSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1452 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1399   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1400
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !551
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !551
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !1452
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.421) #39
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #43 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !551
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !551
  br label %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #41
  br label %_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m.exit36

_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m.exit36: ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !1399
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !1452
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !1400
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPcSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1437   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1437 ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.238) #39
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIPcSaIS0_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #43
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIPcSaIS0_EED2Ev.exit.i ; 6 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 4 uses
  %i.k = icmp samesign ugt i64 %i.f, 8
  br i1 %i.k, label %bb.c, label %bb.d, !prof !1133

bb.c:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

bb.d:                                             ; preds = %.noexc5.i
  %i.l = icmp eq i64 %i.f, 8
  br i1 %i.l, label %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, label %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread: ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !551
  store ptr %i.m, ptr %i.i, align 8, !tbaa !551
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1400
  store ptr %i.i, ptr %0, align 8, !tbaa !1399
  store ptr %i.j, ptr %i.b, align 8, !tbaa !1452
  store ptr %i.j, ptr %i.n, align 8, !tbaa !1400
  br label %bb.e

_ZNSt12_Vector_baseIPcSaIS0_EED2Ev.exit.i:        ; preds = %bb.b, %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.09) #40 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit unwind label %bb.f

_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit: ; preds = %bb.d, %bb.c, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %.thread.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.012.0 = phi ptr [ null, %.thread.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1400
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !1399
  store ptr %.sroa.12.0, ptr %i.b, align 8, !tbaa !1452
  store ptr %.sroa.12.0, ptr %i.r, align 8, !tbaa !1400
  %.not.i.i.i10 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit
  %i.t = phi ptr [ %i.o, %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread ], [ %i.s, %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.v) #41
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %bb.e, %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, %_ZNSt12_Vector_baseIPcSaIS0_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIPcSaIS0_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ], [ true, %bb.e ]
  ret i1 %.0

end_hunk_0
