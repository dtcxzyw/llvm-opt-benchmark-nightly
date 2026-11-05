Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nlsat_solver?download=true
inline.NumInlined: 3993
inline.NumDeleted: 1516
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZNKSt5ctypeIcE13_M_widen_initEv
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5nlsat6solver3imp30display_mathematica_assignmentERSo(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph

_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph:      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %_ZNK5nlsat6solver3imp8num_varsEv.exit

_ZNK5nlsat6solver3imp8num_varsEv.exit:            ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread
  %i.g = phi ptr [ %i.b, %_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph ], [ %i.ad, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph ], [ %indvars.iv.next, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread ] ; 6 uses
  %.01012 = phi i8 [ 1, %_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph ], [ %.2, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread ] ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !192
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %indvars.iv, %i.j
  br i1 %i.k, label %bb.b, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.thread, %_ZNK5nlsat6solver3imp8num_varsEv.exit
  %.010.lcssa.ph = phi i8 [ %.01012, %_ZNK5nlsat6solver3imp8num_varsEv.exit ], [ %.2, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread ]
  %i.l = trunc nuw i8 %.010.lcssa.ph to i1
  %i.m = xor i1 %i.l, true
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.010.lcssa = phi i1 [ false, %bb.a ], [ %i.m, %.critedge.loopexit ]
  ret i1 %.010.lcssa

bb.b:                                             ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !183  ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !192
  %i.r = zext i32 %i.q to i64
  %.not.i.i = icmp samesign ult i64 %indvars.iv, %i.r
  br i1 %.not.i.i, label %_ZNK5nlsat10assignment11is_assignedEj.exit, label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread

_ZNK5nlsat10assignment11is_assignedEj.exit:       ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %.0.i.sroa.speculate.load..i = load i8, ptr %i.s, align 1, !tbaa !261
  %i.t = trunc nuw i8 %.0.i.sroa.speculate.load..i to i1
  br i1 %i.t, label %bb.c, label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread

bb.c:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit
  %i.u = trunc nuw i8 %.01012 to i1
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.30, i64 noundef 4) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %indvars.iv)
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.31, i64 noundef 4) ; 0 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !292, !nonnull !73, !align !74
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !182
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK17algebraic_numbers7manager19display_mathematicaERSoRKNS_4anumE(ptr noundef nonnull align 8 dereferenceable(17) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ab) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !183
  br label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread

_ZNK5nlsat10assignment11is_assignedEj.exit.thread: ; preds = %bb.b, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i, %_ZNK5nlsat10assignment11is_assignedEj.exit, %bb.e
  %i.ad = phi ptr [ %.pre, %bb.e ], [ %i.g, %_ZNK5nlsat10assignment11is_assignedEj.exit ], [ %i.g, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.2 = phi i8 [ 0, %bb.e ], [ %.01012, %_ZNK5nlsat10assignment11is_assignedEj.exit ], [ %.01012, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i ], [ %.01012, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.critedge.loopexit, label %_ZNK5nlsat6solver3imp8num_varsEv.exit, !llvm.loop !623
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp19display_mathematicaERSoN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = trunc i32 %2 to i1
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %2, 1                           ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.32, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.e = zext nneg i32 %i.b to i64                ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !244
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = icmp eq i32 %i.b, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.35, i64 noundef 7) ; 0 uses
  br label %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit

bb.f:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !244
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !240  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.36, i64 noundef 1) ; 0 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.e) ; 0 uses
  br label %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit

bb.h:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.n, align 4, !tbaa !243
  %i.s = icmp slt i32 %i.r, 3
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp19display_mathematicaERSoRKNS_9ineq_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.n) ; 0 uses
  br label %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit

bb.j:                                             ; preds = %bb.h
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp19display_mathematicaERSoRKNS_9root_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.n) ; 0 uses
  br label %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit

_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.j
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !244
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.e
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240
  %.not9 = icmp eq ptr %i.x, null
  br i1 %.not9, label %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit10, label %bb.k

bb.k:                                             ; preds = %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br label %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit10

bb.l:                                             ; preds = %bb.a
  %i.z = icmp eq i32 %2, 0
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.35, i64 noundef 7) ; 0 uses
  br label %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit10

bb.n:                                             ; preds = %bb.l
  %i.ab = lshr exact i32 %2, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ad = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !244
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !240 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.36, i64 noundef 1) ; 0 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ad) ; 0 uses
  br label %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit10

bb.p:                                             ; preds = %bb.n
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !243
  %i.al = icmp slt i32 %i.ak, 3
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp19display_mathematicaERSoRKNS_9ineq_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 0 uses
  br label %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit10

bb.r:                                             ; preds = %bb.p
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp19display_mathematicaERSoRKNS_9root_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ag) ; 0 uses
  br label %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit10

_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit10: ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %_ZNK5nlsat6solver3imp24display_mathematica_atomERSoj.exit, %bb.k
  ret ptr %1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK17algebraic_numbers7manager19display_mathematicaERSoRKNS_4anumE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp19display_mathematicaERSoRKNS_9ineq_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.polynomial::display_var_proc", align 8 ; 24 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !263
  %.fr32 = freeze i32 %i.b                        ; 3 uses
  %.not31 = icmp eq i32 %.fr32, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %.not33 = icmp eq i32 %.fr32, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  br i1 %.not33, label %.lr.ph.split.preheader._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %wide.trip.count = zext i32 %.fr32 to i64
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.e = ptrtoint ptr %.pre to i64
  %i.f = and i64 %i.e, 7
  %.not27.us.peel = icmp eq i64 %i.f, 0
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  br i1 %.not27.us.peel, label %.critedge.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !184, !nonnull !73, !align !74
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, -8
  %i.m = inttoptr i64 %i.l to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10polynomial16display_var_procE, i64 16), ptr %3, align 8, !tbaa !181
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager7displayERSoPKNS_10polynomialERKNS_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.38, i64 noundef 3) ; 0 uses
  br label %.lr.ph.split.us.peel.next

.critedge.peel:                                   ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !184, !nonnull !73, !align !74
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, -8
  %i.t = inttoptr i64 %i.s to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10polynomial16display_var_procE, i64 16), ptr %3, align 8, !tbaa !181
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager7displayERSoPKNS_10polynomialERKNS_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.lr.ph.split.us.peel.next

.lr.ph.split.us.peel.next:                        ; preds = %bb.c, %.critedge.peel
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br label %bb.e

.lr.ph.split.preheader._crit_edge:                ; preds = %.lr.ph
  %.pre43 = load ptr, ptr %i.c, align 8, !tbaa !265 ; 2 uses
  %i.w = ptrtoint ptr %.pre43 to i64
  %i.x = and i64 %i.w, 7
  %.not27.peel = icmp eq i64 %i.x, 0
  br i1 %.not27.peel, label %.critedge30.peel, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.preheader._crit_edge
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !184, !nonnull !73, !align !74
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, -8
  %i.ac = inttoptr i64 %i.ab to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10polynomial16display_var_procE, i64 16), ptr %3, align 8, !tbaa !181
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager7displayERSoPKNS_10polynomialERKNS_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.38, i64 noundef 3) ; 0 uses
  br label %._crit_edge

.critedge30.peel:                                 ; preds = %.lr.ph.split.preheader._crit_edge
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !184, !nonnull !73, !align !74
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10polynomial16display_var_procE, i64 16), ptr %3, align 8, !tbaa !181
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager7displayERSoPKNS_10polynomialERKNS_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %.pre43, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %._crit_edge

bb.e:                                             ; preds = %.lr.ph.split.us.peel.next, %13
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next, %13 ] ; 2 uses
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.37, i64 noundef 1) ; 0 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !265
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = and i64 %i.ai, 7
  %.not27.us = icmp eq i64 %i.aj, 0
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  br i1 %.not27.us, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !184, !nonnull !73, !align !74
  %i.al = load ptr, ptr %6, align 8, !tbaa !265
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = and i64 %i.am, -8
  %i.ao = inttoptr i64 %i.an to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10polynomial16display_var_procE, i64 16), ptr %3, align 8, !tbaa !181
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager7displayERSoPKNS_10polynomialERKNS_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.38, i64 noundef 3) ; 0 uses
  br label %13

.critedge:                                        ; preds = %bb.e
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !184, !nonnull !73, !align !74
  %9 = load ptr, ptr %6, align 8, !tbaa !265
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, -8
  %12 = inttoptr i64 %11 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10polynomial16display_var_procE, i64 16), ptr %3, align 8, !tbaa !181
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager7displayERSoPKNS_10polynomialERKNS_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %13

13:                                               ; preds = %.critedge, %bb.f
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !624

._crit_edge:                                      ; preds = %13, %.critedge30.peel, %bb.d, %bb.a
  %15 = load i32, ptr %2, align 8, !tbaa !243
  switch i32 %15, label %bb.j [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.39, i64 noundef 4) ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.40, i64 noundef 4) ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.41, i64 noundef 5) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 3722, ptr noundef nonnull @.str.12)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp19display_mathematicaERSoRKNS_9root_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.nlsat::solver::imp::mathematica_var_proc", align 8 ; 5 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !293
  %i.d = zext i32 %i.c to i64
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.d) ; 0 uses
  %i.f = load i32, ptr %2, align 8, !tbaa !243
  switch i32 %i.f, label %bb.g [
    i32 11, label %bb.b
    i32 12, label %bb.c
    i32 13, label %bb.d
    i32 14, label %bb.e
    i32 10, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.42, i64 noundef 3) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.43, i64 noundef 3) ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.44, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.45, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.31, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 3972, ptr noundef nonnull @.str.12)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.46, i64 noundef 5) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.o = load i32, ptr %i.b, align 8, !tbaa !293
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5nlsat6solver3imp20mathematica_var_procE, i64 16), ptr %3, align 8, !tbaa !181
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !426
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp18display_polynomialERSoPN10polynomial10polynomialERKNS3_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.47, i64 noundef 4) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !427
  %i.u = zext i32 %i.t to i64
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.u)
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.48, i64 noundef 1) ; 0 uses
  ret ptr %1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager7displayERSoPKNS_10polynomialERKNS_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp18display_polynomialERSoPN10polynomial10polynomialERKNS3_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.obj_ref.50, align 8          ; 10 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %6 = alloca %class.mpq, align 8                 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.c = load i8, ptr %i.b, align 8, !tbaa !626, !range !75, !noundef !73
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !184, !nonnull !73, !align !74 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !309
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !175
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %.noexc.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2)
          to label %.noexc.thread unwind label %bb.d

.noexc.thread:                                    ; preds = %bb.c, %bb.b
  store ptr %2, ptr %5, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.critedge, label %_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph

_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph:      ; preds = %.noexc.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %_ZNK5nlsat6solver3imp8num_varsEv.exit

_ZNK5nlsat6solver3imp8num_varsEv.exit:            ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread
  %i.s = phi ptr [ %2, %_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph ], [ %i.ay, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread ] ; 6 uses
  %i.t = phi ptr [ %i.i, %_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph ], [ %i.bb, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread ]
  %storemerge27 = phi i32 [ 0, %_ZNK5nlsat6solver3imp8num_varsEv.exit.lr.ph ], [ %i.ba, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !192
  %i.w = icmp ult i32 %storemerge27, %i.v
  br i1 %i.w, label %bb.e, label %.critedge

.critedge:                                        ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread, %.noexc.thread
  %i.x = phi ptr [ %2, %.noexc.thread ], [ %i.s, %_ZNK5nlsat6solver3imp8num_varsEv.exit ], [ %i.ay, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !184, !nonnull !73, !align !74
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager7displayERSoPKNS_10polynomialERKNS_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
          to label %bb.q unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.e:                                             ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !183 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.e
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !192
  %.not.i.i18 = icmp ult i32 %storemerge27, %i.ae
  br i1 %.not.i.i18, label %_ZNK5nlsat10assignment11is_assignedEj.exit, label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread

_ZNK5nlsat10assignment11is_assignedEj.exit:       ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i
  %i.af = zext i32 %storemerge27 to i64           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %.0.i.sroa.speculate.load..i = load i8, ptr %i.ag, align 1, !tbaa !261
  %i.ah = trunc nuw i8 %.0.i.sroa.speculate.load..i to i1
  br i1 %i.ah, label %bb.f, label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread

bb.f:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !182
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.af ; 2 uses
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !292, !nonnull !73, !align !74
  %i.al = invoke noundef zeroext i1 @_ZN17algebraic_numbers7manager11is_rationalERKNS_4anumE(ptr noundef nonnull align 8 dereferenceable(17) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.al, label %bb.i, label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i32 0, ptr %6, align 8, !tbaa !52
  %i.an = load i8, ptr %i.n, align 4
  %i.ao = and i8 %i.an, -4
  store i8 %i.ao, ptr %i.n, align 4
  store ptr null, ptr %i.o, align 8, !tbaa !53
  store i32 1, ptr %i.p, align 8, !tbaa !52
  %i.ap = load i8, ptr %i.q, align 4
  %i.aq = and i8 %i.ap, -4
  store i8 %i.aq, ptr %i.q, align 4
  store ptr null, ptr %i.r, align 8, !tbaa !53
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !292, !nonnull !73, !align !74
  invoke void @_ZN17algebraic_numbers7manager11to_rationalERKNS_4anumER3mpq(ptr noundef nonnull align 8 dereferenceable(17) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %6)
end_hunk_0
begin_hunk_1_@_ZNK5nlsat6solver3imp17display_smt2_atomERSojRKN10polynomial16display_var_procE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp17display_ineq_smt2ERSoRKNS_9ineq_atomERKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !243
  switch i32 %i.a, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.102, i64 noundef 3) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.103, i64 noundef 3) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.106, i64 noundef 3) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 3736, ptr noundef nonnull @.str.12)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !263  ; 4 uses
  %i.g = icmp ugt i32 %i.f, 1                     ; 2 uses
  br i1 %i.g, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.202, i64 noundef 3) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not35 = icmp eq i32 %i.f, 0
  br i1 %.not35, label %._crit_edge.thread, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %wide.trip.count = zext i32 %i.f to i64
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !265 ; 2 uses
  %i.k = ptrtoint ptr %.pre to i64
  %i.l = and i64 %i.k, 7
  %.not33.peel = icmp eq i64 %i.l, 0
  br i1 %.not33.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.202, i64 noundef 3) ; 0 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !265
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !184, !nonnull !73, !align !74
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager12display_smt2ERSoPKNS_10polynomialERKNS_16display_var_procE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.52, i64 noundef 1) ; 0 uses
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !265
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, -8
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !184, !nonnull !73, !align !74
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager12display_smt2ERSoPKNS_10polynomialERKNS_16display_var_procE(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !184, !nonnull !73, !align !74
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager12display_smt2ERSoPKNS_10polynomialERKNS_16display_var_procE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %exitcond.peel.not = icmp eq i32 %i.f, 1
  br i1 %exitcond.peel.not, label %._crit_edge.thread, label %.peel.next

._crit_edge:                                      ; preds = %bb.n
  br i1 %i.g, label %bb.o, label %._crit_edge.thread

.peel.next:                                       ; preds = %bb.k, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 1, %bb.k ] ; 2 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.52, i64 noundef 1) ; 0 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !265 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %i.ag, 7
  %.not33 = icmp eq i64 %i.ah, 0
  br i1 %.not33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.peel.next
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.202, i64 noundef 3) ; 0 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !265
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, -8
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !184, !nonnull !73, !align !74
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager12display_smt2ERSoPKNS_10polynomialERKNS_16display_var_procE(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.52, i64 noundef 1) ; 0 uses
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !265
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, -8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !184, !nonnull !73, !align !74
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager12display_smt2ERSoPKNS_10polynomialERKNS_16display_var_procE(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.peel.next
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !184, !nonnull !73, !align !74
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10polynomial7manager12display_smt2ERSoPKNS_10polynomialERKNS_16display_var_procE(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !810

bb.o:                                             ; preds = %._crit_edge
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %bb.k, %bb.o, %._crit_edge
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.203, i64 noundef 3) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp12display_smt2ERSojPKN3sat7literalERKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  switch i32 %2, label %.lr.ph.preheader [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 5) ; 0 uses
  br label %_ZNK5nlsat6solver3imp12display_smt2ERSoN3sat7literalERKN10polynomial16display_var_procE.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i32, ptr %3, align 4, !tbaa !192 ; 2 uses
  %i.b = trunc i32 %.sroa.03.0.copyload to i1
  %i.c = lshr i32 %.sroa.03.0.copyload, 1         ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.81, i64 noundef 5) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp17display_smt2_atomERSojRKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br label %_ZNK5nlsat6solver3imp12display_smt2ERSoN3sat7literalERKN10polynomial16display_var_procE.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp17display_smt2_atomERSojRKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  br label %_ZNK5nlsat6solver3imp12display_smt2ERSoN3sat7literalERKN10polynomial16display_var_procE.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.205, i64 noundef 3) ; 0 uses
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK5nlsat6solver3imp12display_smt2ERSoN3sat7literalERKN10polynomial16display_var_procE.exit19
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br label %_ZNK5nlsat6solver3imp12display_smt2ERSoN3sat7literalERKN10polynomial16display_var_procE.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK5nlsat6solver3imp12display_smt2ERSoN3sat7literalERKN10polynomial16display_var_procE.exit19
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK5nlsat6solver3imp12display_smt2ERSoN3sat7literalERKN10polynomial16display_var_procE.exit19 ] ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.52, i64 noundef 1) ; 0 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.k, align 4, !tbaa !192 ; 2 uses
  %i.l = trunc i32 %.sroa.0.0.copyload to i1
  %i.m = lshr i32 %.sroa.0.0.copyload, 1          ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.81, i64 noundef 5) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp17display_smt2_atomERSojRKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br label %_ZNK5nlsat6solver3imp12display_smt2ERSoN3sat7literalERKN10polynomial16display_var_procE.exit19

bb.g:                                             ; preds = %.lr.ph
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp17display_smt2_atomERSojRKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  br label %_ZNK5nlsat6solver3imp12display_smt2ERSoN3sat7literalERKN10polynomial16display_var_procE.exit19

_ZNK5nlsat6solver3imp12display_smt2ERSoN3sat7literalERKN10polynomial16display_var_procE.exit19: ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !811

_ZNK5nlsat6solver3imp12display_smt2ERSoN3sat7literalERKN10polynomial16display_var_procE.exit: ; preds = %bb.e, %bb.d, %._crit_edge, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp12display_ineqERSoRKNS_9ineq_atomERKN10polynomial16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !263
  %.fr36 = freeze i32 %i.b                        ; 3 uses
  %.not = icmp eq i32 %.fr36, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %.not37 = icmp eq i32 %.fr36, 1
  br i1 %.not37, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %wide.trip.count51 = zext i32 %.fr36 to i64     ; 2 uses
  br i1 %4, label %bb.b, label %.lr.ph.split.us.split.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.d = ptrtoint ptr %.pre to i64
  %i.e = and i64 %i.d, 7
  %.not43.peel = icmp eq i64 %i.e, 0
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp18display_polynomialERSoPN10polynomial10polynomialERKNS3_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br i1 %.not43.peel, label %.lr.ph.split.us.split.peel.next.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.206, i64 noundef 2) ; 0 uses
  br label %.lr.ph.split.us.split.peel.next.preheader

.lr.ph.split.us.split.peel.next.preheader:        ; preds = %bb.b, %bb.c
  br label %.lr.ph.split.us.split.peel.next

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !265
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 7
  %.not41.a = icmp eq i64 %i.q, 0
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !265
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, -8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp18display_polynomialERSoPN10polynomial10polynomialERKNS3_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false) ; 0 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br i1 %.not41.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split.us
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.206, i64 noundef 2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us.split.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count51
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !812

.lr.ph.split.us.split.peel.next:                  ; preds = %.lr.ph.split.us.split.peel.next.preheader, %bb.g
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %bb.g ], [ 1, %.lr.ph.split.us.split.peel.next.preheader ] ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.37, i64 noundef 1) ; 0 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !265
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 7
  %.not43 = icmp eq i64 %i.ad, 0
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !265
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %i.ag, -8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp18display_polynomialERSoPN10polynomial10polynomialERKNS3_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br i1 %.not43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.split.peel.next
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.206, i64 noundef 2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.split.peel.next
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count51
  br i1 %exitcond52.not, label %._crit_edge, label %.lr.ph.split.us.split.peel.next, !llvm.loop !813

.lr.ph.split:                                     ; preds = %.lr.ph
  %.pre65 = load ptr, ptr %i.c, align 8, !tbaa !265 ; 3 uses
  %i.am = ptrtoint ptr %.pre65 to i64
  %i.an = and i64 %i.am, 7
  %.not40.peel = icmp eq i64 %i.an, 0             ; 2 uses
  br i1 %4, label %bb.h, label %.lr.ph.split.split.us

bb.h:                                             ; preds = %.lr.ph.split
  br i1 %.not40.peel, label %.thread.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, -8
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp18display_polynomialERSoPN10polynomial10polynomialERKNS3_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) ; 0 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.206, i64 noundef 2) ; 0 uses
  br label %._crit_edge

.thread.peel:                                     ; preds = %bb.h
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp18display_polynomialERSoPN10polynomial10polynomialERKNS3_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %.pre65, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) ; 0 uses
  br label %._crit_edge

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %.not40.peel, label %.thread.us.a, label %bb.j

.thread.us.a:                                     ; preds = %.lr.ph.split.split.us
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp18display_polynomialERSoPN10polynomial10polynomialERKNS3_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %.pre65, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false) ; 0 uses
  br label %._crit_edge

bb.j:                                             ; preds = %.lr.ph.split.split.us
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, -8
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp18display_polynomialERSoPN10polynomial10polynomialERKNS3_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false) ; 0 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.206, i64 noundef 2) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.g, %bb.j, %.thread.us.a, %.thread.peel, %bb.i, %bb.a
  %6 = load i32, ptr %2, align 8, !tbaa !243
  switch i32 %6, label %bb.n [
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.39, i64 noundef 4) ; 0 uses
  br label %bb.o

bb.l:                                             ; preds = %._crit_edge
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.40, i64 noundef 4) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %._crit_edge
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.207, i64 noundef 4) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 3697, ptr noundef nonnull @.str.12)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp12display_rootERSoRKNS_9root_atomERKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !293
  %i.c = load ptr, ptr %3, align 8, !tbaa !181
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.b) ; 0 uses
  %i.f = load i32, ptr %2, align 8, !tbaa !243
  switch i32 %i.f, label %bb.g [
    i32 11, label %bb.b
    i32 12, label %bb.c
    i32 13, label %bb.d
    i32 14, label %bb.e
    i32 10, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.42, i64 noundef 3) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.43, i64 noundef 3) ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.44, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.45, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.127, i64 noundef 3) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 3944, ptr noundef nonnull @.str.12)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.208, i64 noundef 5) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !427
  %i.o = zext i32 %i.n to i64
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.o)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.209, i64 noundef 2) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !267
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp18display_polynomialERSoPN10polynomial10polynomialERKNS3_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false) ; 0 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  ret ptr %1
}

declare void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat6solver3imp21add_clause_to_watchesERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !238  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %.not16.i.i = icmp eq i32 %i.b, 0
  br i1 %.not16.i.i, label %_ZNK5nlsat6solver3imp8max_bvarERKNS_6clauseE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !244  ; 3 uses
  %wide.trip.count.i.i = zext i32 %i.b to i64     ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 3 uses
  %.015.i.i = phi i32 [ -1, %.lr.ph.i.i.new ], [ %.2.i.i.1, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i
  %.sroa.03.0.copyload.i.i = load i32, ptr %i.g, align 8, !tbaa !192
  %i.h = lshr i32 %.sroa.03.0.copyload.i.i, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !240  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i

_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !260  ; 2 uses
  %i.n = icmp eq i32 %.015.i.i, -1
  %i.o = tail call i32 @llvm.umax.i32(i32 %i.m, i32 %.015.i.i)
  %.1.i.i = select i1 %i.n, i32 %i.m, i32 %i.o
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i, %bb.b
  %.2.i.i = phi i32 [ %.1.i.i, %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i ], [ %.015.i.i, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.03.0.copyload.i.i.1 = load i32, ptr %i.q, align 4, !tbaa !192
  %i.r = lshr i32 %.sroa.03.0.copyload.i.i.1, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !240  ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.1, label %bb.d, label %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.1

_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.1: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !260  ; 2 uses
  %i.x = icmp eq i32 %.2.i.i, -1
  %i.y = tail call i32 @llvm.umax.i32(i32 %i.w, i32 %.2.i.i)
  %.1.i.i.1 = select i1 %i.x, i32 %i.w, i32 %i.y
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.1, %bb.c
  %.2.i.i.1 = phi i32 [ %.1.i.i.1, %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.1 ], [ %.2.i.i, %bb.c ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa, label %bb.b, !llvm.loop !5

_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa ]
  %.015.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i ], [ %.2.i.i.1, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa ] ; 3 uses
  %lcmp.mod27 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i.epil.init
  %.sroa.03.0.copyload.i.i.epil = load i32, ptr %i.z, align 4, !tbaa !192
  %i.aa = lshr i32 %.sroa.03.0.copyload.i.i.epil, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !240 ; 2 uses
  %.not.i.i.epil = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.epil, label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit, label %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.epil

_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.epil: ; preds = %.epil.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !260 ; 2 uses
  %i.ag = icmp eq i32 %.015.i.i.epil.init, -1
  %i.ah = tail call i32 @llvm.umax.i32(i32 %i.af, i32 %.015.i.i.epil.init)
  %.1.i.i.epil = select i1 %i.ag, i32 %i.af, i32 %i.ah
  br label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit

_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit: ; preds = %.epil.preheader, %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.epil, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa
  %.2.i.i.lcssa = phi i32 [ %.2.i.i.1, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.unr-lcssa ], [ %.1.i.i.epil, %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.epil ], [ %.015.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.not = icmp eq i32 %.2.i.i.lcssa, -1
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !248
  %i.ak = zext i32 %.2.i.i.lcssa to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !236 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN6vectorIPN5nlsat6clauseELb0EjE9push_backEOS2_.exit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !192 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !192
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %_ZN6vectorIPN5nlsat6clauseELb0EjE9push_backEOS2_.exit.sink.split, label %_ZN6vectorIPN5nlsat6clauseELb0EjE9push_backEOS2_.exit

bb.g:                                             ; preds = %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit
  %i.at = add nuw nsw i64 %wide.trip.count.i.i, 4611686018427387903
  %i.au = and i64 %i.at, 4611686018427387903      ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %xtraiter28 = and i64 %i.av, 3                  ; 3 uses
  %i.aw = icmp samesign ult i64 %i.au, 3
  br i1 %i.aw, label %.lr.ph.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter32 = and i64 %i.av, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.new
  %.014.i = phi ptr [ %i.c, %.new ], [ %i.bq, %.lr.ph.i ] ; 5 uses
  %.0913.i = phi i32 [ 2147483647, %.new ], [ %.1.i.3, %.lr.ph.i ] ; 2 uses
  %niter33 = phi i64 [ 0, %.new ], [ %niter33.next.3, %.lr.ph.i ]
  %i.ax = load i32, ptr %.014.i, align 4, !tbaa !192
end_hunk_1
