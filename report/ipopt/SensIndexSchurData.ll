Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/SensIndexSchurData?download=true
inline.NumInlined: 482
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5Ipopt14IndexSchurData20MakeNewSchurDataCopyEv:bb.a
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge unwind label %bb.p

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12
  %.pre24 = load ptr, ptr %i.u, align 8, !tbaa !25 ; 2 uses
  %.pre25 = load ptr, ptr %i.v, align 8, !tbaa !25
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre31 = ptrtoint ptr %.pre24 to i64
  br label %.noexc15

.noexc15:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge, %bb.f
  %.pre-phi32 = phi i64 [ %.pre31, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge ], [ %i.z, %bb.f ]
  %.pre-phi30 = phi i64 [ %.pre29, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge ], [ %i.y, %bb.f ]
  %i.ad = phi ptr [ %.pre24, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge ], [ %i.x, %bb.f ] ; 2 uses
  %i.ae = phi ptr [ %i.ac, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge ], [ null, %bb.f ] ; 5 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !21
  %i.ai = sub i64 %.pre-phi30, %.pre-phi32        ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 4
  br i1 %i.aj, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %.noexc15
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.ad, i64 %i.ai, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc15
  %i.ak = icmp eq i64 %i.ai, 4
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !24
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 %i.ai
  store ptr %i.am, ptr %i.af, align 8, !tbaa !16
  invoke void @_ZN5Ipopt14IndexSchurDataC1ESt6vectorIiSaIiEES3_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %3)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !8
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !8
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  %i.aq = load ptr, ptr %3, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  %i.av = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIiSaIiEED2Ev.exit18, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit18

_ZNSt6vectorIiSaIiEED2Ev.exit18:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12, %.noexc.i.i13
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit20

bb.q:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIiSaIiEED2Ev.exit20, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit20

_ZNSt6vectorIiSaIiEED2Ev.exit20:                  ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %i.bc, %bb.q ], [ %i.bc, %bb.r ] ; 2 uses
  %i.bi = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit20
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt6vectorIiSaIiEED2Ev.exit20, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit20 ], [ %.pn, %bb.s ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #14
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14IndexSchurData12SetData_FlagEiPKid(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, double noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp ogt double %3, 0.000000e+00
  %. = select i1 %i.a, i32 1, i32 -1              ; 2 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit11, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(20) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 2
  %i.t = trunc i64 %i.s to i32
  %i.u = load ptr, ptr %0, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.t)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit11
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit11 ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !24
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit11, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !20  ; 4 uses
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ai = ashr exact i64 %i.ag, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 2305843009213693951)
  %i.am = select i1 %i.ak, i64 2305843009213693951, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #16 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !24
  %i.ar = icmp sgt i64 %i.ag, 0
  br i1 %i.ar, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.av) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !20
  store ptr %i.as, ptr %i.d, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.aw, ptr %i.e, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !16  ; 4 uses
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !21
  %.not.i4 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %., ptr %i.ax, align 4, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store ptr %i.az, ptr %i.g, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit11

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !20  ; 4 uses
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 5 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i5

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i5: ; preds = %bb.j
  %i.bf = ashr exact i64 %i.bd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i6, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 2305843009213693951)
  %i.bj = select i1 %i.bh, i64 2305843009213693951, i64 %i.bi ; 3 uses
  %.not.i.i.i7 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i7)
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #16 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store i32 %., ptr %i.bm, align 4, !tbaa !24
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i8

bb.l:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr align 4 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i8

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i8: ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.not.i17.i.i9 = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i9, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i10, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i8
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.br) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i10

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i10: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i8
  store ptr %i.bl, ptr %i.f, align 8, !tbaa !20
  store ptr %i.bo, ptr %i.g, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit11

_ZNSt6vectorIiSaIiEE9push_backERKi.exit11:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i10, %bb.i, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !29
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14IndexSchurData12SetData_FlagEiPKiPKd(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(20) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 2
  %i.s = trunc i64 %i.r to i32
  %i.t = load ptr, ptr %0, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.s)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !24
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !16   ; 4 uses
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !20  ; 4 uses
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775804
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ah = ashr exact i64 %i.af, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 2305843009213693951)
  %i.al = select i1 %i.aj, i64 2305843009213693951, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #16 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !24
  %i.aq = icmp sgt i64 %i.af, 0
  br i1 %i.aq, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.an, ptr align 4 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.au) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.an, ptr %i.b, align 8, !tbaa !20
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.al
  store ptr %i.av, ptr %i.d, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !31
  %i.ay = fcmp ogt double %i.ax, 0.000000e+00
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !16  ; 7 uses
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.az, %i.ba            ; 2 uses
  br i1 %i.ay, label %bb.i, label %bb.o

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.az, align 4, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.bb, ptr %i.f, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !20  ; 4 uses
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 5 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775804
  br i1 %i.bg, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.bh = ashr exact i64 %i.bf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 2305843009213693951)
  %i.bl = select i1 %i.bj, i64 2305843009213693951, i64 %i.bk ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #16 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bf ; 2 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !24
  %i.bp = icmp sgt i64 %i.bf, 0
  br i1 %i.bp, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bn, ptr align 4 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bt) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bn, ptr %i.e, align 8, !tbaa !20
  store ptr %i.bq, ptr %i.f, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.bu, ptr %i.g, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 -1, ptr %i.az, align 4, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.bv, ptr %i.f, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.q:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !20  ; 4 uses
  %i.bx = ptrtoint ptr %i.az to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 5 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775804
  br i1 %i.ca, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i4

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i4: ; preds = %bb.q
  %i.cb = ashr exact i64 %i.bz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i5 = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i5, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 2305843009213693951)
  %i.cf = select i1 %i.cd, i64 2305843009213693951, i64 %i.ce ; 3 uses
  %.not.i.i.i.i6 = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i6)
  %i.cg = shl nuw nsw i64 %i.cf, 2
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #16 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bz ; 2 uses
  store i32 -1, ptr %i.ci, align 4, !tbaa !24
  %i.cj = icmp sgt i64 %i.bz, 0
  br i1 %i.cj, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i7

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr align 4 %i.bw, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i7

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i7: ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %.not.i17.i.i.i8 = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i.i8, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i9, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i7
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cn) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i9

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i9: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i7
  store ptr %i.ch, ptr %i.e, align 8, !tbaa !20
  store ptr %i.ck, ptr %i.f, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.co, ptr %i.g, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i9, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !33
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, -2147483648) i32 @_ZN5Ipopt14IndexSchurData13SetData_IndexEiPKid(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef %2, double noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = fcmp ogt double %3, 0.000000e+00
  %. = select i1 %i.c, i32 1, i32 -1              ; 6 uses
  %i.d = tail call noundef i32 @_ZN5Ipopt10AsIndexMaxEiPKii(i32 noundef %1, ptr noundef %2, i32 noundef 1) ; 5 uses
  %i.e = sext i32 %i.d to i64                     ; 10 uses
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.d, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc41

.noexc41:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.g = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 -1, i64 %i.g, i1 false), !tbaa !24
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = ptrtoint ptr %i.i to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc41, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.j, %.noexc41 ] ; 2 uses
  %.sroa.049.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.h, %.noexc41 ] ; 14 uses
  %.sroa.049.085 = ptrtoaddr ptr %.sroa.049.0 to i64 ; 2 uses
  %.not3861 = icmp sgt i32 %1, 0
  br i1 %.not3861, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.n = zext nneg i32 %i.l to i64
  %i.o = getelementptr [4 x i8], ptr %.sroa.049.0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -4       ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !24
  %.not = icmp eq i32 %i.q, -1
  br i1 %.not, label %bb.c, label %.thread56

bb.c:                                             ; preds = %bb.b
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.r, ptr %i.p, align 4, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.d, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16   ; 3 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.e
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ab = sub nuw nsw i64 %i.e, %i.z
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr %i.u, i64 noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit unwind label %bb.k

bb.f:                                             ; preds = %._crit_edge
  %i.ac = icmp ugt i64 %i.z, %i.e
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 3 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2                 ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.e
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.an = sub nuw nsw i64 %i.e, %i.al
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr %i.ag, i64 noundef %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit46 unwind label %bb.l

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.ao = icmp ugt i64 %i.al, %i.e
  br i1 %i.ao, label %bb.j, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit46

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.e ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.ag, %i.ap
  br i1 %.not.i.i43, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit46, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i44

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i44:      ; preds = %bb.j
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit46

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit46:          ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i44, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %.not.i.i.i.i, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit46
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !20  ; 7 uses
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 7 uses
  %wide.trip.count72 = zext nneg i32 %i.d to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.d, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph64
  %i.as = ptrtoaddr ptr %i.ar to i64              ; 2 uses
  %i.at = ptrtoaddr ptr %i.aq to i64              ; 2 uses
  %i.au = sub i64 %i.at, %i.as
  %diff.check = icmp ugt i64 %i.au, -32
  %i.av = sub i64 %.sroa.049.085, %i.at
  %diff.check86 = icmp ugt i64 %i.av, -32
  %conflict.rdx = or i1 %diff.check, %diff.check86
  %i.aw = sub i64 %.sroa.049.085, %i.as
  %diff.check87 = icmp ugt i64 %i.aw, -32
  %conflict.rdx88 = or i1 %conflict.rdx, %diff.check87
  br i1 %conflict.rdx88, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count72, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %., i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !24
end_hunk_0
begin_hunk_1_@_ZNK5Ipopt14IndexSchurData6GetRowEiRNS_14IteratesVectorE:bb.a
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, %_ZN5Ipopt11DenseVector6ValuesEv.exit
  %.0.i3.i = phi ptr [ %i.cu, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i ], [ %i.cq, %_ZN5Ipopt11DenseVector6ValuesEv.exit ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !8, !noalias !106 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !86
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !87
  %i.db = add nsw i32 %i.da, %i.bc
  %i.dc = sub i32 %i.db, %i.be
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.dd
  store double %i.bj, ptr %i.de, align 8, !tbaa !31
  store i32 %i.cw, ptr %i.cv, align 8, !tbaa !8
  %i.df = icmp eq i32 %i.cw, 0
  br i1 %i.df, label %bb.l, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.l:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i
  %i.dg = load ptr, ptr %.0.i3.i, align 8, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i) #17, !inline_history !109
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.l, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !8
  %i.dl = add nsw i32 %i.dk, -1                   ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !8
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.m, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.m:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.dn = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(205) %i.bm) #17, !inline_history !110
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #14
  ret void

bb.n:                                             ; preds = %bb.k
  %i.dq = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(205) %i.bm) #17, !inline_history !110
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit33

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit33:       ; preds = %bb.k, %bb.n
  resume { ptr, i32 } %i.ci
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZNK5Ipopt14IndexSchurData16GetVectorLengthsERKNS_14IteratesVectorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !67   ; 4 uses
  %i.e = sext i32 %i.d to i64
  %i.f = icmp slt i32 %i.d, 0
  %i.g = shl nsw i64 %i.e, 2
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75, !noalias !111
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79, !noalias !111 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i:    ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82, !noalias !111
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83, !noalias !111, !nonnull !85, !noundef !85
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, %bb.a
  %.0.i3.i = phi ptr [ %i.o, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i ], [ %i.l, %bb.a ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !8, !noalias !111
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !87
  store i32 %i.u, ptr %i.i, align 4, !tbaa !24
  %i.v = icmp eq i32 %i.q, 0
  br i1 %i.v, label %bb.b, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.b:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i
  %i.w = load ptr, ptr %.0.i3.i, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i) #17, !inline_history !109
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i, %bb.b
  %i.z = icmp sgt i32 %i.d, 1
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 232
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  ret ptr %i.i

bb.c:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29 ] ; 4 uses
  %i.ab = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !24
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !75, !noalias !114
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !79, !noalias !114 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i21, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25:  ; preds = %bb.c
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !82, !noalias !114
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83, !noalias !114, !nonnull !85, !noundef !85
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25, %bb.c
  %.0.i3.i23 = phi ptr [ %i.aj, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25 ], [ %i.ag, %bb.c ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i3.i23, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !8, !noalias !114 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i3.i23, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !87
  %i.aq = add nsw i32 %i.ap, %i.ad
  store i32 %i.aq, ptr %i.ab, align 4, !tbaa !24
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !8
  %i.ar = icmp eq i32 %i.al, 0
  br i1 %i.ar, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29

bb.d:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22
  %i.as = load ptr, ptr %.0.i3.i23, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i23) #17, !inline_history !109
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29:      ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !92
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14IndexSchurData21GetMultiplyingVectorsEiRSt6vectorIiSaIiEERS1_IdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.d, align 4, !tbaa !24
  store i32 %i.i, ptr %i.f, align 4, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.j, ptr %i.e, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !20     ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775804
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 2305843009213693951)
  %i.t = select i1 %i.r, i64 2305843009213693951, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #16 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  %i.x = load i32, ptr %i.d, align 4, !tbaa !24
  store i32 %i.x, ptr %i.w, align 4, !tbaa !24
  %i.y = icmp sgt i64 %i.n, 0
  br i1 %i.y, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ac) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.v, ptr %2, align 8, !tbaa !20
  store ptr %i.z, ptr %i.e, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.b
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24
  %i.ai = sitofp i32 %i.ah to double              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !117 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119
  %.not.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store double %i.ai, ptr %i.ak, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !117
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ao = load ptr, ptr %3, align 8, !tbaa !120   ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.i, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #16 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 2 uses
  store double %i.ai, ptr %i.ba, align 8, !tbaa !31
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.j, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !119
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bf) #14
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.az, ptr %3, align 8, !tbaa !120
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !117
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bg, ptr %i.al, align 8, !tbaa !119
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14IndexSchurData8MultiplyERKNS_14IteratesVectorERNS_6VectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(205) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(205) %2, double noundef 0.000000e+00), !inline_history !93
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !98, !range !102, !noundef !85
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 233 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !102
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %2)
  store i8 1, ptr %i.d, align 8, !tbaa !98
  store i8 0, ptr %i.g, align 1, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %_ZN5Ipopt11DenseVector6ValuesEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = zext nneg i32 %i.p to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #16
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ] ; 2 uses
  store ptr %.0.i.i.i, ptr %i.j, align 8, !tbaa !104
  br label %_ZN5Ipopt11DenseVector6ValuesEv.exit

_ZN5Ipopt11DenseVector6ValuesEv.exit:             ; preds = %bb.c, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i
  %i.u = phi ptr [ %i.k, %bb.c ], [ %.0.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !67   ; 4 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i32 %i.y, 0
  %i.ab = shl nsw i64 %i.z, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75, !noalias !121
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !79, !noalias !121 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i.i:  ; preds = %_ZN5Ipopt11DenseVector6ValuesEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !82, !noalias !121
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83, !noalias !121, !nonnull !85, !noundef !85
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i.i, %_ZN5Ipopt11DenseVector6ValuesEv.exit
  %.0.i3.i.i = phi ptr [ %i.aj, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i.i ], [ %i.ag, %_ZN5Ipopt11DenseVector6ValuesEv.exit ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !8, !noalias !121
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !87
  store i32 %i.ap, ptr %i.ad, align 4, !tbaa !24
  %i.aq = icmp eq i32 %i.al, 0
  br i1 %i.aq, label %bb.f, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i

bb.f:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i
  %i.ar = load ptr, ptr %.0.i3.i.i, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i) #17, !inline_history !88
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i:      ; preds = %bb.f, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i
  %i.au = icmp sgt i32 %i.y, 1
  br i1 %i.au, label %.lr.ph.i, label %_ZNK5Ipopt14IndexSchurData16GetVectorLengthsERKNS_14IteratesVectorE.exit

.lr.ph.i:                                         ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 232
  %wide.trip.count.i = zext nneg i32 %i.y to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i ] ; 4 uses
  %i.aw = getelementptr [4 x i8], ptr %i.ad, i64 %indvars.iv.i ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !75, !noalias !124
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !79, !noalias !124 ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i21.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25.i: ; preds = %bb.g
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !82, !noalias !124
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !83, !noalias !124, !nonnull !85, !noundef !85
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22.i: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25.i, %bb.g
  %.0.i3.i23.i = phi ptr [ %i.be, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25.i ], [ %i.bb, %bb.g ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i3.i23.i, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !8, !noalias !124 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i3.i23.i, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !87
  %i.bl = add nsw i32 %i.bk, %i.ay
  store i32 %i.bl, ptr %i.aw, align 4, !tbaa !24
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !8
  %i.bm = icmp eq i32 %i.bg, 0
  br i1 %i.bm, label %bb.h, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i

bb.h:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22.i
  %i.bn = load ptr, ptr %.0.i3.i23.i, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i23.i) #17, !inline_history !88
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i:    ; preds = %bb.h, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5Ipopt14IndexSchurData16GetVectorLengthsERKNS_14IteratesVectorE.exit, label %bb.g, !llvm.loop !92

_ZNK5Ipopt14IndexSchurData16GetVectorLengthsERKNS_14IteratesVectorE.exit: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !20 ; 2 uses
  %.not77 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Ipopt14IndexSchurData16GetVectorLengthsERKNS_14IteratesVectorE.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52
  %i.bw = phi ptr [ %i.bt, %.lr.ph ], [ %i.ep, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52 ]
  %.02876 = phi i64 [ 0, %.lr.ph ], [ %i.en, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52 ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.02876
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !24 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ -1, %bb.i ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 6 uses
end_hunk_1
begin_hunk_2_@_ZNK5Ipopt14IndexSchurData13TransMultiplyERKNS_6VectorERNS_14IteratesVectorE:bb.a
  tail call void %i.er(ptr noundef nonnull align 8 dereferenceable(205) %i.do) #17, !inline_history !110
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit63

_ZN5Ipopt11DenseVector6ValuesEv.exit:             ; preds = %.noexc58, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i
  %i.es = phi ptr [ %i.ea, %.noexc58 ], [ %.0.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !8
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %i.et, align 8, !tbaa !8
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.o, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit65

bb.o:                                             ; preds = %_ZN5Ipopt11DenseVector6ValuesEv.exit
  %i.ex = load ptr, ptr %i.do, align 8, !tbaa !14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  tail call void %i.ez(ptr noundef nonnull align 8 dereferenceable(205) %i.do) #17, !inline_history !110
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit65

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit65:       ; preds = %_ZN5Ipopt11DenseVector6ValuesEv.exit, %bb.o
  %i.fa = sext i32 %.04083 to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.fa
  tail call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.dg, ptr noundef nonnull %i.fb, i32 noundef 1, ptr noundef %i.es, i32 noundef 1)
  %i.fc = add nsw i32 %i.dg, %.04083
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !67
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %indvars.iv.next94, %i.fg
  br i1 %i.fh, label %bb.e, label %._crit_edge86, !llvm.loop !148

._crit_edge86:                                    ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit65, %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.ar) #14
  ret void

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit63:       ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.ek
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

declare void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14IndexSchurData9PrintImplERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !149
  %i.b = load ptr, ptr %4, align 8, !tbaa !149
  %i.c = load ptr, ptr %0, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.g = load ptr, ptr %1, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void (ptr, i32, i32, i32, ptr, ...) %i.i(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @.str, ptr noundef %i.a, ptr noundef %i.b, i32 noundef %i.f)
  %i.j = load ptr, ptr %0, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(20) %0)
  br i1 %i.m, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.p, %i.q
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.s = phi ptr [ %i.q, %.lr.ph ], [ %i.af, %bb.b ]
  %.022 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.b ] ; 4 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !149
  %i.u = load ptr, ptr %4, align 8, !tbaa !149
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.022
  %i.w = load i32, ptr %i.v, align 4, !tbaa !24
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.022
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24
  %i.aa = load ptr, ptr %1, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void (ptr, i32, i32, i32, ptr, ...) %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @.str.1, ptr noundef %i.t, ptr noundef %i.u, i64 noundef %.022, i32 noundef %i.w, i32 noundef %i.z)
  %i.ad = add nuw i64 %.022, 1                    ; 2 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !20  ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2
  %i.ak = icmp ult i64 %i.ad, %i.aj
  br i1 %i.ak, label %bb.b, label %.loopexit, !llvm.loop !154

bb.c:                                             ; preds = %bb.a
  %i.al = load ptr, ptr %6, align 8, !tbaa !149
  %i.am = load ptr, ptr %1, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void (ptr, i32, i32, i32, ptr, ...) %i.ao(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @.str.2, ptr noundef %i.al)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14IndexSchurData12AddData_FlagEiPiRSt6vectorIiSaIiEEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, i32 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph45, label %._crit_edge

.lr.ph45:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.e, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph45, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29
  %indvars.iv = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29 ] ; 5 uses
  %.01244 = phi i32 [ %i.j, %.lr.ph45 ], [ %.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29 ] ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !24
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %.not46 = icmp eq ptr %i.s, %i.t
  br i1 %.not46, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.041 = phi i64 [ %i.bb, %bb.i ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.041
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp eq i64 %indvars.iv, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.ac = trunc i64 %.041 to i32                  ; 2 uses
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !16  ; 4 uses
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store ptr %i.af, ptr %i.k, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %3, align 8, !tbaa !20    ; 4 uses
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775804
  br i1 %i.ak, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.al = ashr exact i64 %i.aj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 2305843009213693951)
  %i.ap = select i1 %i.an, i64 2305843009213693951, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #16 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store i32 %i.ac, ptr %i.as, align 4, !tbaa !24
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ax) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ar, ptr %3, align 8, !tbaa !20
  store ptr %i.au, ptr %i.k, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ay, ptr %i.l, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.041
  store i32 %4, ptr %i.ba, align 4, !tbaa !24
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29

bb.i:                                             ; preds = %.lr.ph
  %i.bb = add nuw i64 %.041, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.x
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !155

.critedge:                                        ; preds = %bb.i, %.preheader
  %i.bc = add nsw i32 %.01244, 1                  ; 2 uses
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !16  ; 4 uses
  %i.be = load ptr, ptr %i.l, align 8, !tbaa !21
  %.not.i.i14 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i.i14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge
  store i32 %.01244, ptr %i.bd, align 4, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.bf, ptr %i.k, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit21

bb.k:                                             ; preds = %.critedge
  %i.bg = load ptr, ptr %3, align 8, !tbaa !20    ; 4 uses
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 5 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775804
  br i1 %i.bk, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i15

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i15: ; preds = %bb.k
  %i.bl = ashr exact i64 %i.bj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i.i16, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 2305843009213693951)
  %i.bp = select i1 %i.bn, i64 2305843009213693951, i64 %i.bo ; 3 uses
  %.not.i.i.i.i17 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i17)
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #16 ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  store i32 %.01244, ptr %i.bs, align 4, !tbaa !24
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i18

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %i.bg, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i18

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i18: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %.not.i17.i.i.i19 = icmp eq ptr %i.bg, null
  br i1 %.not.i17.i.i.i19, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i18
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bx) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i18
  store ptr %i.br, ptr %3, align 8, !tbaa !20
  store ptr %i.bu, ptr %i.k, align 8, !tbaa !16
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.by, ptr %i.l, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit21

_ZNSt6vectorIiSaIiEE9push_backEOi.exit21:         ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %i.ca = load ptr, ptr %i.m, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit21
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store ptr %i.cc, ptr %i.b, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit21
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !20  ; 4 uses
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 5 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775804
  br i1 %i.ch, label %bb.q, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.ci = ashr exact i64 %i.cg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 2305843009213693951)
  %i.cm = select i1 %i.ck, i64 2305843009213693951, i64 %i.cl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #16 ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 2 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !24
  %i.cr = icmp sgt i64 %i.cg, 0
  br i1 %i.cr, label %bb.r, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.co, ptr align 4 %i.cd, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %.not.i17.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ct = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cv) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.co, ptr %i.a, align 8, !tbaa !20
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !16
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.cw, ptr %i.m, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.cx = load ptr, ptr %i.o, align 8, !tbaa !16  ; 4 uses
  %i.cy = load ptr, ptr %i.p, align 8, !tbaa !21
  %.not.i22 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i22, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %4, ptr %i.cx, align 4, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store ptr %i.cz, ptr %i.o, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.da = load ptr, ptr %i.n, align 8, !tbaa !20  ; 4 uses
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 5 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775804
  br i1 %i.de, label %bb.v, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i23

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i23: ; preds = %bb.u
  %i.df = ashr exact i64 %i.dd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i24 = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i24, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 2305843009213693951)
  %i.dj = select i1 %i.dh, i64 2305843009213693951, i64 %i.di ; 3 uses
  %.not.i.i.i25 = icmp ne i64 %i.dj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i25)
  %i.dk = shl nuw nsw i64 %i.dj, 2
  %i.dl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #16 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.dd ; 2 uses
  store i32 %4, ptr %i.dm, align 4, !tbaa !24
  %i.dn = icmp sgt i64 %i.dd, 0
  br i1 %i.dn, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i26

bb.w:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i23
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr align 4 %i.da, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i26

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i26: ; preds = %bb.w, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i23
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %.not.i17.i.i27 = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i27, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i28, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i26
  %i.dp = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dr) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i28

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i28: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i26
  store ptr %i.dl, ptr %i.n, align 8, !tbaa !20
  store ptr %i.do, ptr %i.o, align 8, !tbaa !16
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.ds, ptr %i.p, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29

_ZNSt6vectorIiSaIiEE9push_backERKi.exit29:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i28, %bb.t, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.b
  %.1 = phi i32 [ %.01244, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.01244, %bb.b ], [ %i.bc, %bb.t ], [ %i.bc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i28 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond49.not, label %._crit_edge, label %bb.b, !llvm.loop !156
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14IndexSchurData12AddData_ListESt6vectorIiSaIiEERS3_Rii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, i32 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  store i32 %i.i, ptr %3, align 4, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit31
  %i.s = phi ptr [ %i.l, %.preheader.lr.ph ], [ %i.eh, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit31 ] ; 2 uses
  %.01440 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ef, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit31 ] ; 3 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %.not41 = icmp eq ptr %i.t, %i.u
  br i1 %.not41, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.01440
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit31
  %.pre43.a = load ptr, ptr %i.b, align 8, !tbaa !16
  %.pre44.a = load ptr, ptr %i.a, align 8, !tbaa !20
  %.pre45 = ptrtoint ptr %.pre43.a to i64
  %.pre46.a = ptrtoint ptr %.pre44.a to i64
  %.pre48.a = sub i64 %.pre45, %.pre46.a
  %.pre50.a = lshr exact i64 %.pre48.a, 2
  %.pre52 = trunc i64 %.pre50.a to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi53 = phi i32 [ %.pre52, %._crit_edge.loopexit ], [ %i.i, %bb.a ]
  %i.ab = load ptr, ptr %0, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.pre-phi53)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(20) %0)
  br i1 %i.ah, label %bb.z, label %bb.y

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.039 = phi i64 [ 0, %.lr.ph ], [ %i.bk, %bb.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.039
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !24
  %i.ak = icmp eq i32 %i.aa, %i.aj
  br i1 %i.ak, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.al = trunc i64 %.039 to i32                  ; 2 uses
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !16  ; 4 uses
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.al, ptr %i.am, align 4, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.ao, ptr %i.m, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.e:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %2, align 8, !tbaa !20    ; 4 uses
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775804
  br i1 %i.at, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.au = ashr exact i64 %i.as, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 2305843009213693951)
  %i.ay = select i1 %i.aw, i64 2305843009213693951, i64 %i.ax ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #16 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store i32 %i.al, ptr %i.bb, align 4, !tbaa !24
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.bg) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ba, ptr %2, align 8, !tbaa !20
  store ptr %i.bd, ptr %i.m, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bh, ptr %i.n, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.039
  store i32 %4, ptr %i.bj, align 4, !tbaa !24
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit31

bb.i:                                             ; preds = %bb.b
  %i.bk = add nuw i64 %.039, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %i.y
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !157

.critedge:                                        ; preds = %bb.i, %.preheader
  %i.bl = load i32, ptr %3, align 4, !tbaa !24    ; 3 uses
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %3, align 4, !tbaa !24
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !16  ; 4 uses
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !21
  %.not.i.i16 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store ptr %i.bp, ptr %i.m, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23

bb.k:                                             ; preds = %.critedge
  %i.bq = load ptr, ptr %2, align 8, !tbaa !20    ; 4 uses
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 5 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775804
  br i1 %i.bu, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i17

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i17: ; preds = %bb.k
  %i.bv = ashr exact i64 %i.bt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i18 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i18, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %.not.i.i.i.i19 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i19)
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #16 ; 4 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  store i32 %i.bl, ptr %i.cc, align 4, !tbaa !24
  %i.cd = icmp sgt i64 %i.bt, 0
  br i1 %i.cd, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i20

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr align 4 %i.bq, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i20

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i20: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i17
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.not.i17.i.i.i21 = icmp eq ptr %i.bq, null
  br i1 %.not.i17.i.i.i21, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i22, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i20
  %i.cf = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.ch) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i22: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i20
  store ptr %i.cb, ptr %2, align 8, !tbaa !20
  store ptr %i.ce, ptr %i.m, align 8, !tbaa !16
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.ci, ptr %i.n, align 8, !tbaa !21
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23

_ZNSt6vectorIiSaIiEE9push_backEOi.exit23:         ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i22
  %i.cj = phi ptr [ %i.s, %bb.j ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i22 ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.01440 ; 2 uses
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %i.cm = load ptr, ptr %i.o, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !24
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store ptr %i.co, ptr %i.b, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !20  ; 4 uses
  %i.cq = ptrtoint ptr %i.cl to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 5 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775804
  br i1 %i.ct, label %bb.q, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.cu = ashr exact i64 %i.cs, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 2305843009213693951)
  %i.cy = select i1 %i.cw, i64 2305843009213693951, i64 %i.cx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #16 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.cs ; 2 uses
  %i.dc = load i32, ptr %i.ck, align 4, !tbaa !24
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !24
  %i.dd = icmp sgt i64 %i.cs, 0
  br i1 %i.dd, label %bb.r, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.da, ptr align 4 %i.cp, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %.not.i17.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.df = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dh) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.da, ptr %i.a, align 8, !tbaa !20
  store ptr %i.de, ptr %i.b, align 8, !tbaa !16
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.di, ptr %i.o, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.dj = load ptr, ptr %i.q, align 8, !tbaa !16  ; 4 uses
  %i.dk = load ptr, ptr %i.r, align 8, !tbaa !21
  %.not.i24 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %4, ptr %i.dj, align 4, !tbaa !24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store ptr %i.dl, ptr %i.q, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit31

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !20  ; 4 uses
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.dp = sub i64 %i.dn, %i.do                    ; 5 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775804
  br i1 %i.dq, label %bb.v, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i25

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i25: ; preds = %bb.u
  %i.dr = ashr exact i64 %i.dp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i26 = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 1)
  %i.ds = add nsw i64 %.sroa.speculated.i.i.i26, %i.dr ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dr
  %i.du = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 2305843009213693951)
  %i.dv = select i1 %i.dt, i64 2305843009213693951, i64 %i.du ; 3 uses
  %.not.i.i.i27 = icmp ne i64 %i.dv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i27)
  %i.dw = shl nuw nsw i64 %i.dv, 2
  %i.dx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #16 ; 4 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %i.dp ; 2 uses
  store i32 %4, ptr %i.dy, align 4, !tbaa !24
  %i.dz = icmp sgt i64 %i.dp, 0
  br i1 %i.dz, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i28

bb.w:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i25
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr align 4 %i.dm, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i28

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i28: ; preds = %bb.w, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i25
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %.not.i17.i.i29 = icmp eq ptr %i.dm, null
  br i1 %.not.i17.i.i29, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i30, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i28
  %i.eb = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = sub i64 %i.ec, %i.do
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.ed) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i30

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i30: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i28
  store ptr %i.dx, ptr %i.p, align 8, !tbaa !20
  store ptr %i.ea, ptr %i.q, align 8, !tbaa !16
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dv
  store ptr %i.ee, ptr %i.r, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit31

_ZNSt6vectorIiSaIiEE9push_backERKi.exit31:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i30, %bb.t, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ef = add nuw i64 %.01440, 1                  ; 2 uses
  %i.eg = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.eh = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 2
  %i.em = icmp ult i64 %i.ef, %i.el
  br i1 %i.em, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !158

bb.y:                                             ; preds = %._crit_edge
  %i.en = load ptr, ptr %0, align 8, !tbaa !14
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 120
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(20) %0)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK5Ipopt14IndexSchurData13GetNRowsAddedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK5Ipopt14IndexSchurData13GetColIndicesEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5Ipopt9SchurData14Is_InitializedEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !10, !range !102, !noundef !85
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt9SchurData15Set_InitializedEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt9SchurData9Set_NRowsEi(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !13
  ret void
}

declare void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

declare void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !24     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !16
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !24
  store i32 %i.s, ptr %i.d, align 4, !tbaa !24
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !16
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !24
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
end_hunk_2
