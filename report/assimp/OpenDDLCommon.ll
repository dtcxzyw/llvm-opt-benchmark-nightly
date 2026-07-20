inline.NumInlined: 15
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN10ODDLParser9ReferenceC2EmPPNS_4NameE:bb.a
  %i.p = or disjoint i64 %.010, 2                 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  store ptr %i.r, ptr %i.t, align 8
  %i.u = or disjoint i64 %.010, 3                 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  store ptr %i.w, ptr %i.y, align 8
  %i.z = add nuw i64 %.010, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !3

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.b
  %.010.epil.init = phi i64 [ 0, %bb.b ], [ %i.z, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.010.epil = phi i64 [ %.010.epil.init, %.epil.preheader ], [ %i.ae, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.010.epil
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.010.epil
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = add nuw i64 %.010.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !5

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser9ReferenceC2ERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  store i64 %i.a, ptr %0, align 8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 2305843009213693951
  %i.c = shl i64 %i.a, 3
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.e ] ; 3 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11 ; 4 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.011
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  store i32 %i.l, ptr %i.h, align 8
  %i.m = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #11
          to label %.noexc unwind label %bb.f     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.s, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.u, ptr %i.m, align 8
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #11
          to label %.noexc.i unwind label %bb.d   ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.v, ptr %i.w, align 8
  %i.x = tail call ptr @strncpy(ptr noundef nonnull %i.v, ptr noundef readonly %i.q, i64 noundef %i.s) #12 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  store i8 0, ptr %i.y, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 24) #13
  br label %.body

bb.e:                                             ; preds = %.noexc.i, %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.m, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.011
  store ptr %i.h, ptr %i.ac, align 8
  %i.ad = add nuw i64 %.011, 1                    ; 2 uses
  %i.ae = load i64, ptr %0, align 8
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.b, label %.loopexit, !llvm.loop !7

bb.f:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.z, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 16) #13
  resume { ptr, i32 } %eh.lpad-body

.loopexit:                                        ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser9ReferenceD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.h, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.f = phi i64 [ %i.a, %.lr.ph ], [ %i.q, %bb.f ]
  %.05 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.f ]  ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.05
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN10ODDLParser4NameD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN10ODDLParser4TextD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #13
  br label %_ZN10ODDLParser4TextD2Ev.exit.i

_ZN10ODDLParser4TextD2Ev.exit.i:                  ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 24) #13
  br label %_ZN10ODDLParser4NameD2Ev.exit

_ZN10ODDLParser4NameD2Ev.exit:                    ; preds = %bb.c, %_ZN10ODDLParser4TextD2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 16) #13
  %.pre = load i64, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN10ODDLParser4NameD2Ev.exit
  %i.q = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZN10ODDLParser4NameD2Ev.exit ] ; 2 uses
  %i.r = add nuw i64 %.05, 1                      ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !8

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN10ODDLParser9Reference11sizeInBytesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %xtraiter = and i64 %i.a, 1
  %i.e = icmp eq i64 %i.a, 1
  br i1 %i.e, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader.new
  %.0812 = phi i64 [ 0, %.preheader.new ], [ %i.u, %bb.f ] ; 3 uses
  %.0911 = phi i64 [ 0, %.preheader.new ], [ %.1.1, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0812
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, %.0911
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %i.l, %bb.c ], [ %.0911, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0812
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.1 = icmp eq ptr %i.o, null
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %.1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i64 [ %i.t, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %i.u = add nuw i64 %.0812, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !9

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader
  %.0812.epil.init = phi i64 [ 0, %.preheader ], [ %i.u, %.loopexit.loopexit.unr-lcssa ]
  %.0911.epil.init = phi i64 [ 0, %.preheader ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod17 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0812.epil.init
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.epil = icmp eq ptr %i.w, null
  br i1 %.not.epil, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, %.0911.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ], [ %i.ab, %bb.g ], [ %.0911.epil.init, %.epil.preheader ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ODDLParser8PropertyC2EPNS_4TextE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1) unnamed_addr #7 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser8PropertyD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN10ODDLParser4TextD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #13
  br label %_ZN10ODDLParser4TextD2Ev.exit

_ZN10ODDLParser4TextD2Ev.exit:                    ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #13
  br label %bb.d

bb.d:                                             ; preds = %_ZN10ODDLParser4TextD2Ev.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN10ODDLParser5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 32) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 7 uses
  %.not4 = icmp eq ptr %i.i, null
  br i1 %.not4, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.l, %bb.g
  store i64 0, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN10ODDLParser9ReferenceD2Ev.exit, label %bb.m

bb.h:                                             ; preds = %bb.l, %.lr.ph.i
  %i.o = phi i64 [ %i.j, %.lr.ph.i ], [ %i.z, %bb.l ]
  %.05.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aa, %bb.l ] ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.05.i
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN10ODDLParser4NameD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN10ODDLParser4TextD2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #13
  br label %_ZN10ODDLParser4TextD2Ev.exit.i.i

_ZN10ODDLParser4TextD2Ev.exit.i.i:                ; preds = %bb.k, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 24) #13
  br label %_ZN10ODDLParser4NameD2Ev.exit.i

_ZN10ODDLParser4NameD2Ev.exit.i:                  ; preds = %_ZN10ODDLParser4TextD2Ev.exit.i.i, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 16) #13
  %.pre.i = load i64, ptr %i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN10ODDLParser4NameD2Ev.exit.i, %bb.h
  %i.z = phi i64 [ %i.o, %bb.h ], [ %.pre.i, %_ZN10ODDLParser4NameD2Ev.exit.i ] ; 2 uses
  %i.aa = add nuw i64 %.05.i, 1                   ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.h, label %._crit_edge.i, !llvm.loop !8

bb.m:                                             ; preds = %._crit_edge.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #13
  br label %_ZN10ODDLParser9ReferenceD2Ev.exit

_ZN10ODDLParser9ReferenceD2Ev.exit:               ; preds = %._crit_edge.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 16) #13
  br label %bb.n

bb.n:                                             ; preds = %_ZN10ODDLParser9ReferenceD2Ev.exit, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not5 = icmp eq ptr %i.ad, null
  br i1 %.not5, label %common.ret17, label %bb.o

common.ret17:                                     ; preds = %bb.n, %bb.o
  ret void

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN10ODDLParser8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ad) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 32) #13
  br label %common.ret17
}

; Function Attrs: nounwind
declare void @_ZN10ODDLParser5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ODDLParser13DataArrayListC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser13DataArrayListD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10ODDLParser5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10ODDLParser13DataArrayListD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.e) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 40) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 7 uses
  %.not3 = icmp eq ptr %i.g, null
  br i1 %.not3, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.g

._crit_edge.i:                                    ; preds = %bb.k, %bb.f
  store i64 0, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN10ODDLParser9ReferenceD2Ev.exit, label %bb.l

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %i.m = phi i64 [ %i.h, %.lr.ph.i ], [ %i.x, %bb.k ]
  %.05.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.k ] ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.05.i
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN10ODDLParser4NameD2Ev.exit.i, label %bb.i

end_hunk_0
