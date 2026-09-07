Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/DFSRndNumGenerator?download=true
inline.NumInlined: 479
inline.NumDeleted: 201
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN18SequenceLineParserISt6vectorIiSaIiEEE14parse_sequenceERS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc:bb.a
  switch i64 %spec.select.i.i.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.l, align 1, !tbaa !29
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %i.l, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !28, !alias.scope !79
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %spec.select.i.i.i
  store i8 0, ptr %i.ad, align 1, !tbaa !29
  %i.ae = invoke noundef i32 @_ZN18SequenceLineParserISt6vectorIiSaIiEEE7str2intERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %.loopexit  ; 3 uses

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.s, label %bb.l

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ag = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.c
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !29
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %lpad.phi

bb.l:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !53  ; 4 uses
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !55
  %.not.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.ae, ptr %i.ak, align 4, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store ptr %i.am, ptr %i.e, align 8, !tbaa !53
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.n:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %0, align 8, !tbaa !54    ; 4 uses
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 6 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775804
  br i1 %i.ar, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.as = ashr exact i64 %i.aq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 2305843009213693951)
  %i.aw = select i1 %i.au, i64 2305843009213693951, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #22
          to label %.noexc24 unwind label %.loopexit ; 4 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store i32 %i.ae, ptr %i.az, align 4, !tbaa !19
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %.noexc24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %.noexc24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.not.i17.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ay, ptr %0, align 8, !tbaa !54
  store ptr %i.bb, ptr %i.e, align 8, !tbaa !53
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bc, ptr %i.f, align 8, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.m
  %i.bd = icmp eq i64 %.1.i.i, -1
  br i1 %i.bd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.be = add nuw i64 %.1.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.j, %bb.r
  %cond = phi i1 [ true, %bb.r ], [ false, %bb.j ], [ false, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.bf = phi i1 [ false, %bb.r ], [ false, %bb.j ], [ true, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.220 = phi i64 [ %i.be, %bb.r ], [ %.1.i.i, %bb.j ], [ -1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.bg = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.c
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.s
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !29
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %cond, label %bb.b, label %bb.t, !llvm.loop !78

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  ret i1 %i.bf
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18DFSRndNumGenerator19initialize_sequenceERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi ptr [ %i.c, %.lr.ph ], [ %i.o, %bb.b ]
  %.06 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.b ]  ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.06
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %i.i = trunc i64 %.06 to i32
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.h, i32 noundef 0, i32 noundef %i.i)
  %i.m = add nuw i64 %.06, 1                      ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.o = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = icmp ult i64 %i.m, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN18DFSRndNumGenerator16dumpCurrentStateEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN18DFSRndNumGenerator18eager_backtrackingEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN9CGOptions20max_exhaustive_depthEv() ; 3 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !40   ; 4 uses
  %i.f = sub nsw i32 %i.d, %i.e                   ; 3 uses
  %.not = icmp slt i32 %i.f, %1
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !39
  %i.i = icmp sgt i32 %i.e, %i.h
  br i1 %i.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %i.g, align 8, !tbaa !39
  %.010 = add nsw i32 %i.e, 1                     ; 2 uses
  %i.j = icmp slt i32 %.010, %i.d
  br i1 %i.j, label %.lr.ph, label %.sink.split

.lr.ph:                                           ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44   ; 9 uses
  %i.m = sext i32 %.010 to i64                    ; 2 uses
  %i.n = add i32 %i.f, 7
  %i.o = add i32 %i.f, -2
  %xtraiter = and i32 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.m, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  store i8 0, ptr %i.q, align 4, !tbaa !13
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !80

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.r = icmp ult i32 %i.o, 7
  br i1 %i.r, label %.sink.split, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 9 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  store i8 0, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49
  store i8 0, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  store i8 0, ptr %i.z, align 4, !tbaa !13
  %i.aa = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49
  store i8 0, ptr %i.ac, align 4, !tbaa !13
  %i.ad = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49
  store i8 0, ptr %i.af, align 4, !tbaa !13
  %i.ag = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ah = getelementptr i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49
  store i8 0, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ak = getelementptr i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  store i8 0, ptr %i.al, align 4, !tbaa !13
  %i.am = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.an = getelementptr i8, ptr %i.am, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49
  store i8 0, ptr %i.ao, align 4, !tbaa !13
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.d, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %.sink.split, label %.lr.ph.new, !llvm.loop !81

.sink.split:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.d, %bb.c
  store i32 -4, ptr @_ZN5Error8r_error_E, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN18DFSRndNumGenerator12revisit_nodeEPNS_11SearchStateEiiPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14   ; 5 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp slt i32 %i.b, %3
  br i1 %.not22, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 5) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.b) ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.2, i64 noundef 10) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %3) ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !90   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  tail call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !95
  %.not.i1.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 67
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.l)
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext 10), !inline_history !83
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.p, %bb.d ], [ %i.t, %bb.e ]
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext %.0.i.i.i)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.b
  %i.w = load ptr, ptr %4, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.b) ; 0 uses
  %i.aa = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !19
  %.not24 = icmp eq i32 %i.aa, 0
  br i1 %.not24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.b, i32 noundef %3, i32 noundef %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.018 = phi i32 [ %i.b, %bb.g ], [ -1, %bb.f ]
  ret i32 %.018
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN18DFSRndNumGenerator19filter_invalid_numsEPSt6vectorIiSaIiEEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !65     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr i64 %i.f, 4                         ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.i = and i64 %i.f, -16
  %scevgep.i.i.i = getelementptr i8, ptr %i.a, i64 %i.i ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ %i.v, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.u, %bb.g ] ; 9 uses
  %i.j = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !19
  %i.k = icmp eq i32 %i.j, %2
  br i1 %i.k, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = icmp eq i32 %i.m, %2
  br i1 %i.n, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19
  %i.q = icmp eq i32 %i.p, %2
  br i1 %i.q, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit26, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19
  %i.t = icmp eq i32 %i.s, %2
  br i1 %i.t, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.v = add nsw i64 %.052.i.i.i, -1
  %i.w = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.w, label %bb.c, label %._crit_edge.loopexit.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.g
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.d, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.b
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.f, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.a, %bb.b ] ; 5 uses
  %i.x = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.x, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !19
  %i.z = icmp eq i32 %i.y, %2
end_hunk_0
