inline.NumInlined: 741
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3sat4dratD2Ev:bb.a
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.aj)
          to label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #24
  unreachable

_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i, i64 8
  %i.an = add i32 %.08.i.i.i.i.i.i, -1            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !69

_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !66
  br label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i

_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i.i, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i
  %i.ao = phi ptr [ %.pre.i.i, %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.af, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ap)
          to label %_ZN6vectorI7svectorIjjELb1EjED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #24
  unreachable

_ZN6vectorI7svectorIjjELb1EjED2Ev.exit:           ; preds = %_ZN6vectorI5lboolLb0EjED2Ev.exit, %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.at, null
  br i1 %.not.i.i17, label %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6vectorI7svectorIjjELb1EjED2Ev.exit
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.au)
          to label %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #24
  unreachable

_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjED2Ev.exit: ; preds = %_ZN6vectorI7svectorIjjELb1EjED2Ev.exit, %bb.m
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !72  ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i18, label %_ZN6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjED2Ev.exit
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ay)
          to label %_ZN6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #24
  unreachable

_ZN6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjED2Ev.exit: ; preds = %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjED2Ev.exit, %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN3sat16clause_allocatorD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjED2Ev.exit
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.be)
          to label %_ZN3sat16clause_allocatorD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #24
  unreachable

_ZN3sat16clause_allocatorD2Ev.exit:               ; preds = %_ZN6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjED2Ev.exit, %bb.q
  tail call void @_ZN13sat_allocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(552) dereferenceable(568) %i.bb) #22
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !73 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i19, label %_ZN6vectorIN3sat4drat14watched_clauseELb0EjED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3sat16clause_allocatorD2Ev.exit
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bj)
          to label %_ZN6vectorIN3sat4drat14watched_clauseELb0EjED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #24
  unreachable

_ZN6vectorIN3sat4drat14watched_clauseELb0EjED2Ev.exit: ; preds = %_ZN3sat16clause_allocatorD2Ev.exit, %bb.s
  ret void

bb.u:                                             ; preds = %.lr.ph, %bb.v
  %.021 = phi ptr [ %i.p, %.lr.ph ], [ %i.bn, %bb.v ] ; 2 uses
  %i.bm = load ptr, ptr %.021, align 8, !tbaa !78, !nonnull !28, !align !84
  invoke void @_ZN3sat16clause_allocator10del_clauseEPNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(568) %i.w, ptr noundef nonnull %i.bm)
          to label %bb.v unwind label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %.not13 = icmp eq ptr %i.bn, %i.v
  br i1 %.not13, label %._crit_edge, label %bb.u

.loopexit:                                        ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bo = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #24
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

declare void @_ZN3sat16clause_allocator10del_clauseEPNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3sat4drat11updt_configEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(664) initializes((641, 645)) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85, !nonnull !28, !align !86 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 361
  %i.d = load i8, ptr %i.c, align 1, !tbaa !87, !range !27, !noundef !28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 641
  store i8 %i.d, ptr %i.e, align 1, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 362
  %i.g = load i8, ptr %i.f, align 2, !tbaa !89, !range !27, !noundef !28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 642
  store i8 %i.g, ptr %i.h, align 2, !tbaa !90
  %spec.select = or i8 %i.g, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 643
  store i8 %spec.select, ptr %i.i, align 1, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 363
  %i.k = load i8, ptr %i.j, align 1, !tbaa !92, !range !27, !noundef !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i8 %i.k, ptr %i.l, align 4, !tbaa !93
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3sat4drat2ppERSoNS_6statusE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(664) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !94
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat4drat4dumpEjPKNS_7literalENS_6statusE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(664) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [10000 x i8], align 16            ; 11 uses
  %i.b = alloca [20 x i8], align 16               ; 3 uses
  %i.c = load i32, ptr %3, align 8, !tbaa !94     ; 3 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85, !nonnull !28, !align !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 520
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95
  %.not37 = icmp eq ptr %i.h, null
  br i1 %.not37, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.j = load i8, ptr %i.i, align 4, !tbaa !93, !range !27, !noundef !28
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.m = load i32, ptr %i.l, align 8, !tbaa !98
  %i.n = urem i32 %i.m, 1000
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.1, i64 noundef 11) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !85, !nonnull !28, !align !86 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3280
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN3sat4drat13dump_activityEv.exit, label %_ZNK3sat6solver8num_varsEv.exit.i

_ZNK3sat6solver8num_varsEv.exit.i:                ; preds = %bb.e, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.x = phi ptr [ %i.an, %bb.f ], [ %i.v, %bb.e ]
  %i.y = phi ptr [ %i.al, %bb.f ], [ %i.t, %bb.e ]
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !67
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv.i, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZN3sat4drat13dump_activityEv.exit

bb.f:                                             ; preds = %_ZNK3sat6solver8num_varsEv.exit.i
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 3360
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !67
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef %i.ai)
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !85, !nonnull !28, !align !86 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 3280
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN3sat4drat13dump_activityEv.exit, label %_ZNK3sat6solver8num_varsEv.exit.i, !llvm.loop !102

_ZN3sat4drat13dump_activityEv.exit:               ; preds = %_ZNK3sat6solver8num_varsEv.exit.i, %bb.f, %bb.e
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %.pre = load i32, ptr %3, align 8, !tbaa !94
  br label %bb.g

bb.g:                                             ; preds = %_ZN3sat4drat13dump_activityEv.exit, %bb.d, %bb.c
  %i.ar = phi i32 [ %.pre, %_ZN3sat4drat13dump_activityEv.exit ], [ %i.c, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  switch i32 %i.ar, label %bb.i [
    i32 3, label %.sink.split
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !103
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %i.ar, label %bb.l [
    i32 2, label %.sink.split
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.g, %bb.k, %bb.h
  %.sink = phi i8 [ 105, %bb.h ], [ 100, %bb.g ], [ 97, %bb.k ], [ 114, %bb.j ]
  store i8 %.sink, ptr %i.a, align 16, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 32, ptr %i.aw, align 1, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j, %bb.i
  %.035 = phi i32 [ 0, %bb.i ], [ 0, %bb.j ], [ 2, %.sink.split ] ; 2 uses
  %.not47 = icmp eq i32 %1, 0
  br i1 %.not47, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.l
  %i.ax = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 592
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.m

._crit_edge45:                                    ; preds = %bb.q, %bb.l
  %.1.lcssa = phi i32 [ %.035, %bb.l ], [ %.3, %bb.q ] ; 3 uses
  %i.az = zext nneg i32 %.1.lcssa to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  store i8 48, ptr %i.ba, align 1, !tbaa !30
  %i.bb = add nuw nsw i32 %.1.lcssa, 2
  %4 = zext nneg i32 %.1.lcssa to i64
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 %4
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 10, ptr %i.bc, align 1, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bf = zext nneg i32 %i.bb to i64
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull %i.a, i64 noundef %i.bf) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph44, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.141 = phi i32 [ %.035, %.lr.ph44 ], [ %.3, %bb.q ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !67 ; 2 uses
  %i.bj = lshr i32 %i.bi, 1                       ; 2 uses
  %i.bk = trunc i32 %i.bi to i1
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = add nuw nsw i32 %.141, 1
  %i.bm = zext nneg i32 %.141 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  store i8 45, ptr %i.bn, align 1, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2 = phi i32 [ %i.bl, %bb.n ], [ %.141, %bb.m ] ; 2 uses
  %.not38 = icmp eq i32 %i.bj, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.040 = phi ptr [ %i.bo, %.lr.ph ], [ %i.as, %bb.o ]
  %.03339 = phi i32 [ %i.bs, %.lr.ph ], [ %i.bj, %bb.o ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.040, i64 -1 ; 4 uses
  %i.bp = urem i32 %.03339, 10
  %i.bq = trunc nuw nsw i32 %i.bp to i8
  %i.br = or disjoint i8 %i.bq, 48
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !30
  %i.bs = udiv i32 %.03339, 10
  %.not = icmp samesign ult i32 %.03339, 10
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !104

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre49 = ptrtoint ptr %i.bo to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %.pre-phi = phi i64 [ %.pre49, %._crit_edge.loopexit ], [ %i.ax, %bb.o ]
  %.0.lcssa = phi ptr [ %i.bo, %._crit_edge.loopexit ], [ %i.as, %bb.o ]
  %i.bt = zext i32 %.2 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  %i.bv = sub i64 %i.ax, %.pre-phi                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull align 1 %.0.lcssa, i64 %i.bv, i1 false)
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = add i32 %.2, %i.bw                      ; 2 uses
  %i.by = add i32 %i.bx, 1                        ; 3 uses
  %i.bz = zext i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  store i8 32, ptr %i.ca, align 1, !tbaa !30
  %i.cb = icmp ugt i32 %i.by, 9950
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.cc = zext i32 %i.by to i64
  %i.cd = load ptr, ptr %i.ay, align 8, !tbaa !32
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull %i.a, i64 noundef %i.cc) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %.3 = phi i32 [ 0, %bb.p ], [ %i.by, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge45, label %bb.m, !llvm.loop !105

bb.r:                                             ; preds = %bb.b, %._crit_edge45
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat4drat13dump_activityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(664) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.1, i64 noundef 11) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85, !nonnull !28, !align !86 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3280
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %_ZNK3sat6solver8num_varsEv.exit

_ZNK3sat6solver8num_varsEv.exit:                  ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.i = phi ptr [ %i.aa, %bb.b ], [ %i.g, %bb.a ]
  %i.j = phi ptr [ %i.y, %bb.b ], [ %i.e, %bb.a ]
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !67
  %i.m = zext i32 %i.l to i64
  %i.n = icmp samesign ult i64 %indvars.iv, %i.m
  br i1 %i.n, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZNK3sat6solver8num_varsEv.exit, %bb.b, %bb.a
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  ret void

bb.b:                                             ; preds = %_ZNK3sat6solver8num_varsEv.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 3360
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !67
  %i.v = zext i32 %i.u to i64
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !85, !nonnull !28, !align !86 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3280
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge, label %_ZNK3sat6solver8num_varsEv.exit, !llvm.loop !102
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat4drat5bdumpEjPKNS_7literalENS_6statusE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(664) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [10000 x i8], align 16            ; 7 uses
  %i.b = load i32, ptr %3, align 8, !tbaa !94
  switch i32 %i.b, label %bb.h [
    i32 2, label %bb.b
    i32 3, label %.fold.split
  ]

.fold.split:                                      ; preds = %bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.fold.split
  %.020 = phi i8 [ 97, %bb.a ], [ 100, %.fold.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 %.020, ptr %i.a, align 16, !tbaa !30
  %.not27 = icmp eq i32 %1, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.b
  %.019.lcssa = phi i32 [ 1, %bb.b ], [ %.2, %bb.g ] ; 2 uses
  %i.d = add nsw i32 %.019.lcssa, 1
  %i.e = sext i32 %.019.lcssa to i64
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = sext i32 %i.d to i64
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.01925 = phi i32 [ 1, %.lr.ph ], [ %.2, %bb.g ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i32 [ %.01925, %bb.c ], [ %.2, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %i.l, %bb.c ], [ %i.n, %bb.f ]  ; 2 uses
  %i.m = trunc i32 %.0 to i8                      ; 2 uses
  %i.n = lshr i32 %.0, 7                          ; 2 uses
  %.not = icmp eq i32 %i.n, 0                     ; 2 uses
  %i.o = or i8 %i.m, -128
  %.121 = select i1 %.not, i8 %i.m, i8 %i.o
  %i.p = add nsw i32 %.1, 1                       ; 2 uses
  %i.q = sext i32 %.1 to i64
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 %i.q
  store i8 %.121, ptr %i.r, align 1, !tbaa !30
  %i.s = icmp eq i32 %i.p, 10000
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.a, i64 noundef 10000) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ %i.p, %bb.d ]     ; 3 uses
  br i1 %.not, label %bb.g, label %bb.d, !llvm.loop !106

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_0
