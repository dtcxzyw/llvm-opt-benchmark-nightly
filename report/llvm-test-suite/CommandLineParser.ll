Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/CommandLineParser?download=true
inline.NumInlined: 80
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN18NCommandLineParser7CParser12ParseStringsEPKNS_11CSwitchFormERK13CObjectVectorI11CStringBaseIwEE:bb.a
  %i.l = tail call noundef zeroext i1 @_ZN18NCommandLineParser7CParser11ParseStringERK11CStringBaseIwEPKNS_11CSwitchFormE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %1)
  br i1 %i.l, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.b
  %i.m = tail call noundef i32 @_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ %.01213, %.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !53
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !57 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #14 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = icmp slt i32 %i.e, -1
  %i.j = shl nuw nsw i64 %i.h, 2
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #14
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %bb.b
  %i.m = load i32, ptr %i.c, align 4, !tbaa !41
  %i.n = icmp sgt i32 %i.m, 0
  %.pre4.i = load i32, ptr %i.b, align 8, !tbaa !40 ; 5 uses
  br i1 %i.n, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %.noexc
  %i.o = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !38 ; 4 uses
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre4.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !43
  %wide.load3 = load <4 x i32>, ptr %i.q, align 4, !tbaa !43
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !tbaa !43
  store <4 x i32> %wide.load3, ptr %i.s, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.u = icmp eq ptr %.pre.i.i, null
  br i1 %i.u, label %bb.c, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !43
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !56

._crit_edge.thread.i.i:                           ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #17
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc
  %i.y = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %.noexc ]
  store ptr %i.l, ptr %i.a, align 8, !tbaa !38
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !43
  store i32 %i.f, ptr %i.c, align 4, !tbaa !41
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.a
  %i.ab = phi ptr [ null, %bb.a ], [ %i.l, %bb.c ]
  %i.ac = load ptr, ptr %1, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ab, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.af, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ac, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ae = load i32, ptr %.0.i.i, align 4, !tbaa !43 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.ae, ptr %.04.i.i, align 4, !tbaa !43
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d, !llvm.loop !0

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !40
  store i32 %i.ag, ptr %i.b, align 8, !tbaa !40
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !33 ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.al
  store ptr %i.a, ptr %i.am, align 8, !tbaa !35
  %i.an = add nsw i32 %i.ak, 1
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !33
  ret i32 %i.ak

bb.f:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #17
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN18NCommandLineParser7CParser11ParseStringERK11CStringBaseIwEPKNS_11CSwitchFormE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !69 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 7 uses
  %4 = alloca %class.CStringBase, align 8         ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40   ; 10 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.critedge140, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !38
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43
  %i.f = icmp eq i32 %i.e, 45
  br i1 %i.f, label %.preheader, label %.critedge140

.preheader:                                       ; preds = %bb.b
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %.lr.ph270, label %.critedge140

.lr.ph270:                                        ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.k = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph270, %_ZN11CStringBaseIwED2Ev.exit179
  %.0104269 = phi i32 [ 0, %.lr.ph270 ], [ %.7, %_ZN11CStringBaseIwED2Ev.exit179 ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !38
  %i.m = sext i32 %.0104269 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !43
  %i.p = icmp eq i32 %i.o, 45
  %i.q = zext i1 %i.p to i32
  %spec.select = add nsw i32 %.0104269, %i.q      ; 3 uses
  %i.r = load i32, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.t = sext i32 %spec.select to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.q
  %i.u = icmp eq i32 %.2100, -1
  br i1 %i.u, label %._crit_edge.thread, label %bb.r

bb.d:                                             ; preds = %.lr.ph, %bb.q
  %i.v = phi i32 [ %i.r, %.lr.ph ], [ %i.cb, %bb.q ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %.098259 = phi i32 [ -1, %.lr.ph ], [ %.2100, %bb.q ] ; 3 uses
  %.0101258 = phi i32 [ 0, %.lr.ph ], [ %.2103, %bb.q ] ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %wcslen.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.x)
  %i.y = trunc i64 %wcslen.i to i32               ; 6 uses
  %.not129 = icmp sge i32 %.098259, %i.y
  %i.z = add nsw i32 %spec.select, %i.y
  %i.aa = icmp sgt i32 %i.z, %i.b
  %or.cond = select i1 %.not129, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %1, align 8, !tbaa !38
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.t ; 2 uses
  %wcslen.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ac)
  %i.ad = trunc i64 %wcslen.i.i to i32            ; 7 uses
  %i.ae = add nsw i32 %i.ad, 1                    ; 3 uses
  %i.af = icmp eq i32 %i.ae, 0                    ; 2 uses
  br i1 %i.af, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = icmp slt i32 %i.ad, -1
  %i.ai = shl nuw nsw i64 %i.ag, 2
  %i.aj = select i1 %i.ah, i64 -1, i64 %i.ai
  %i.ak = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #14 ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !43
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.f, %bb.e
  %.sroa.0209.1 = phi ptr [ null, %bb.e ], [ %i.ak, %bb.f ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.sroa.0209.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.an, %bb.g ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ac, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.al, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.am = load i32, ptr %.0.i.i, align 4, !tbaa !43 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.am, ptr %.04.i.i, align 4, !tbaa !43
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.g, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.g
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.ad) ; 7 uses
  %.not230 = icmp sgt i32 %i.ad, %i.y
  br i1 %.not230, label %_ZN11CStringBaseIwEC2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  br i1 %i.af, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %._crit_edge.i.i.i190

._crit_edge.i.i.i190:                             ; preds = %bb.h
  %i.ao = zext i32 %i.ae to i64
  %i.ap = icmp slt i32 %i.ad, -1
  %i.aq = shl nuw nsw i64 %i.ao, 2
  %i.ar = select i1 %i.ap, i64 -1, i64 %i.aq
  %i.as = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #14
          to label %.noexc191 unwind label %bb.n  ; 2 uses

.noexc191:                                        ; preds = %._crit_edge.i.i.i190
  store i32 0, ptr %i.as, align 4, !tbaa !43, !noalias !73
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc191, %bb.h
  %.sroa.0196.2 = phi ptr [ null, %bb.h ], [ %i.as, %.noexc191 ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %.sroa.0196.2, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.av, %bb.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %.sroa.0209.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.at, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.au = load i32, ptr %.0.i.i.i, align 4, !tbaa !43, !noalias !73 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.au, ptr %.04.i.i.i, align 4, !tbaa !43, !noalias !73
  %.not.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.sink.split, label %bb.i, !llvm.loop !0

_ZN11CStringBaseIwEC2Ev.exit.i:                   ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.aw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #14
          to label %.noexc192 unwind label %bb.n  ; 4 uses

.noexc192:                                        ; preds = %_ZN11CStringBaseIwEC2Ev.exit.i
  store i32 0, ptr %i.aw, align 4, !tbaa !43, !noalias !73
  %i.ax = add nsw i32 %spec.select.i, 1           ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 4
  br i1 %i.ay, label %.lr.ph.i, label %bb.j

bb.j:                                             ; preds = %.noexc192
  %i.az = zext i32 %i.ax to i64
  %i.ba = icmp slt i32 %spec.select.i, -1
  %i.bb = shl nuw nsw i64 %i.az, 2
  %i.bc = select i1 %i.ba, i64 -1, i64 %i.bb
  %i.bd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bc) #14
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i188 unwind label %_ZN11CStringBaseIwED2Ev.exit.i, !noalias !73 ; 3 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i188:     ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #17, !noalias !73
  store i32 0, ptr %i.bd, align 4, !tbaa !43, !noalias !73
  %i.be = icmp sgt i32 %spec.select.i, 0
  br i1 %i.be, label %.lr.ph.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i188
  %.pre.i189 = sext i32 %spec.select.i to i64
  br label %.loopexit

.lr.ph.i:                                         ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i188, %.noexc192
  %.sroa.0196.1 = phi ptr [ %i.aw, %.noexc192 ], [ %i.bd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i188 ] ; 2 uses
  %i.bf = zext nneg i32 %spec.select.i to i64     ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0196.1, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0209.1, i64 %i.bg, i1 false), !tbaa !43, !noalias !73
  br label %.loopexit

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #17, !noalias !73
  br label %.body

.loopexit:                                        ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i, %.lr.ph.i
  %.sroa.0196.0 = phi ptr [ %i.bd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i ], [ %.sroa.0196.1, %.lr.ph.i ] ; 5 uses
  %.pre-phi.i = phi i64 [ %.pre.i189, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i ], [ %i.bf, %.lr.ph.i ]
  %i.bi = getelementptr inbounds [4 x i8], ptr %.sroa.0196.0, i64 %.pre-phi.i
  store i32 0, ptr %i.bi, align 4, !tbaa !43, !noalias !73
  store i32 0, ptr %.sroa.0209.1, align 4, !tbaa !43
  %.not346 = icmp sgt i32 %i.ad, %i.y
  br i1 %.not346, label %bb.k, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141

bb.k:                                             ; preds = %.loopexit
  %i.bj = add nsw i32 %spec.select.i, 1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = icmp slt i32 %spec.select.i, -1
  %i.bm = shl nuw nsw i64 %i.bk, 2
  %i.bn = select i1 %i.bl, i64 -1, i64 %i.bm
  %i.bo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bn) #14
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.bp = icmp sgt i32 %i.ad, -1
  br i1 %i.bp, label %._crit_edge.thread.i.i148, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.sink.split

._crit_edge.thread.i.i148:                        ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0209.1) #17
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.sink.split

_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.sink.split: ; preds = %bb.i, %.noexc, %._crit_edge.thread.i.i148
  %.sroa.0209.1.sink = phi ptr [ %i.bo, %.noexc ], [ %i.bo, %._crit_edge.thread.i.i148 ], [ %.sroa.0209.1, %bb.i ] ; 2 uses
  %.sroa.0196.3323.ph = phi ptr [ %.sroa.0196.0, %.noexc ], [ %.sroa.0196.0, %._crit_edge.thread.i.i148 ], [ %.sroa.0196.2, %bb.i ]
  store i32 0, ptr %.sroa.0209.1.sink, align 4, !tbaa !43
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141

_ZN11CStringBaseIwE11SetCapacityEi.exit.i141:     ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.sink.split, %.loopexit
  %.sroa.0196.3323 = phi ptr [ %.sroa.0196.0, %.loopexit ], [ %.sroa.0196.3323.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.sink.split ] ; 3 uses
  %.sroa.0209.2 = phi ptr [ %.sroa.0209.1, %.loopexit ], [ %.sroa.0209.1.sink, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.sink.split ] ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141
  %.04.i.i142 = phi ptr [ %.sroa.0209.2, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141 ], [ %i.bs, %bb.l ] ; 2 uses
  %.0.i.i143 = phi ptr [ %.sroa.0196.3323, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141 ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i143, i64 4
  %i.br = load i32, ptr %.0.i.i143, align 4, !tbaa !43 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.04.i.i142, i64 4
  store i32 %i.br, ptr %.04.i.i142, align 4, !tbaa !43
  %.not.i.i144 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i144, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.l, !llvm.loop !0

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.l
  %i.bt = icmp eq ptr %.sroa.0196.3323, null
  br i1 %i.bt, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0196.3323) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.m
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.bv = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef nonnull %.sroa.0209.2, ptr noundef %i.bu)
          to label %_ZN11CStringBaseIwED2Ev.exit156 unwind label %bb.p

_ZN11CStringBaseIwED2Ev.exit156:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.bw = icmp eq i32 %i.bv, 0                    ; 2 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select136 = select i1 %i.bw, i32 %i.bx, i32 %.0101258
  %spec.select137 = select i1 %i.bw, i32 %i.y, i32 %.098259
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0209.2) #17
  %.pre = load i32, ptr %0, align 8, !tbaa !25
  br label %bb.q

bb.n:                                             ; preds = %_ZN11CStringBaseIwEC2Ev.exit.i, %._crit_edge.i.i.i190
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0196.0) #17
  br label %.body.thread

bb.p:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.q:                                             ; preds = %bb.d, %_ZN11CStringBaseIwED2Ev.exit156
  %i.cb = phi i32 [ %.pre, %_ZN11CStringBaseIwED2Ev.exit156 ], [ %i.v, %bb.d ] ; 2 uses
  %.2103 = phi i32 [ %spec.select136, %_ZN11CStringBaseIwED2Ev.exit156 ], [ %.0101258, %bb.d ] ; 2 uses
  %.2100 = phi i32 [ %spec.select137, %_ZN11CStringBaseIwED2Ev.exit156 ], [ %.098259, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %bb.d, label %._crit_edge, !llvm.loop !60

.body:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i, %bb.n
  %.pn132 = phi { ptr, i32 } [ %i.by, %bb.n ], [ %i.bh, %_ZN11CStringBaseIwED2Ev.exit.i ] ; 2 uses
  %i.ce = icmp eq ptr %.sroa.0209.1, null
  br i1 %i.ce, label %_ZN11CStringBaseIwED2Ev.exit158, label %.body.thread

.body.thread:                                     ; preds = %bb.o, %bb.p, %.body
  %.pn132226 = phi { ptr, i32 } [ %.pn132, %.body ], [ %i.bz, %bb.o ], [ %i.ca, %bb.p ]
  %.sroa.0209.0225 = phi ptr [ %.sroa.0209.1, %.body ], [ %.sroa.0209.1, %bb.o ], [ %.sroa.0209.2, %bb.p ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0209.0225) #17
  br label %_ZN11CStringBaseIwED2Ev.exit158

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.cf = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr @.str, ptr %i.cf, align 16, !tbaa !75
  call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIPKc, ptr null) #18
  unreachable

bb.r:                                             ; preds = %._crit_edge
  %i.cg = sext i32 %.2103 to i64                  ; 2 uses
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.ci = getelementptr inbounds [48 x i8], ptr %i.ch, i64 %i.cg ; 9 uses
  %i.cj = getelementptr inbounds [32 x i8], ptr %2, i64 %i.cg ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !76, !range !46, !noundef !47
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = load i8, ptr %i.ci, align 8, !tbaa !30, !range !46, !noundef !47
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cp = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr @.str.1, ptr %i.cp, align 16, !tbaa !75
  call void @__cxa_throw(ptr nonnull %i.cp, ptr nonnull @_ZTIPKc, ptr null) #18
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r
  store i8 1, ptr %i.ci, align 8, !tbaa !30
  %i.cq = add i32 %.2100, %spec.select            ; 13 uses
  %i.cr = sub nsw i32 %i.b, %i.cq                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !77 ; 2 uses
  switch i32 %i.ct, label %_ZN11CStringBaseIwED2Ev.exit179 [
    i32 1, label %bb.v
    i32 4, label %bb.x
    i32 2, label %bb.ai
    i32 3, label %bb.ai
  ]

bb.v:                                             ; preds = %bb.u
  %i.cu = icmp eq i32 %i.b, %i.cq
  br i1 %i.cu, label %_ZN11CStringBaseIwED2Ev.exit179.thread, label %bb.w

_ZN11CStringBaseIwED2Ev.exit179.thread:           ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 0, ptr %i.cv, align 1, !tbaa !78
  br label %.critedge140

bb.w:                                             ; preds = %bb.v
  %i.cw = load ptr, ptr %1, align 8, !tbaa !38
  %i.cx = sext i32 %i.cq to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !43
  %i.da = icmp eq i32 %i.cz, 45                   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.dc = zext i1 %i.da to i8
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !78
  %i.dd = zext i1 %i.da to i32
  %spec.select138 = add nsw i32 %i.cq, %i.dd
  br label %_ZN11CStringBaseIwED2Ev.exit179

bb.x:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !79
  %i.dg = icmp slt i32 %i.cr, %i.df
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dh = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr @.str.2, ptr %i.dh, align 16, !tbaa !75
  call void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTIPKc, ptr null) #18
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !80 ; 2 uses
  %wcslen.i.i159 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.dj)
  %i.dk = trunc i64 %wcslen.i.i159 to i32         ; 2 uses
  %i.dl = add nsw i32 %i.dk, 1                    ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i161, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = zext nneg i32 %i.dl to i64
  %i.do = icmp slt i32 %i.dk, -1
  %i.dp = shl nuw nsw i64 %i.dn, 2
  %i.dq = select i1 %i.do, i64 -1, i64 %i.dp
  %i.dr = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dq) #14 ; 2 uses
  store i32 0, ptr %i.dr, align 4, !tbaa !43
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i161

_ZN11CStringBaseIwE11SetCapacityEi.exit.i161:     ; preds = %bb.aa, %bb.z
  %.sroa.0.0 = phi ptr [ null, %bb.z ], [ %i.dr, %bb.aa ] ; 7 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i161
  %.04.i.i162 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i161 ], [ %i.du, %bb.ab ] ; 2 uses
  %.0.i.i163 = phi ptr [ %i.dj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i161 ], [ %i.ds, %bb.ab ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i163, i64 4
  %i.dt = load i32, ptr %.0.i.i163, align 4, !tbaa !43 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.04.i.i162, i64 4
  store i32 %i.dt, ptr %.04.i.i162, align 4, !tbaa !43
  %.not.i.i164 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i164, label %_ZN11CStringBaseIwEC2EPKw.exit175, label %bb.ab, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit175:                ; preds = %bb.ab
  %i.dv = icmp eq i32 %i.b, %i.cq
  br i1 %i.dv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN11CStringBaseIwEC2EPKw.exit175
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i32 -1, ptr %i.dw, align 8, !tbaa !81
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN11CStringBaseIwEC2EPKw.exit175
  %i.dx = load ptr, ptr %1, align 8, !tbaa !38
  %i.dy = sext i32 %i.cq to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !43 ; 2 uses
  %i.eb = load i32, ptr %.sroa.0.0, align 4, !tbaa !43 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, %i.ea
  br i1 %i.ec, label %_ZNK11CStringBaseIwE4FindEw.exit, label %.lr.ph.i.i176

.lr.ph.i.i176:                                    ; preds = %bb.ad, %bb.ae
  %i.ed = phi i32 [ %i.eg, %bb.ae ], [ %i.eb, %bb.ad ]
  %.010.i.i = phi ptr [ %i.ef, %bb.ae ], [ %.sroa.0.0, %bb.ad ]
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %_ZNK11CStringBaseIwE4FindEw.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i176
  %i.ef = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !43 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, %i.ea
  br i1 %i.eh, label %_ZNK11CStringBaseIwE4FindEw.exit, label %.lr.ph.i.i176, !llvm.loop !61

_ZNK11CStringBaseIwE4FindEw.exit:                 ; preds = %bb.ae, %bb.ad
  %.0.lcssa.i.i = phi ptr [ %.sroa.0.0, %bb.ad ], [ %i.ef, %bb.ae ]
  %i.ei = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.ej = ptrtoint ptr %.sroa.0.0 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = lshr exact i64 %i.ek, 2
  %i.em = trunc i64 %i.el to i32                  ; 2 uses
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %_ZNK11CStringBaseIwE4FindEw.exit.thread, label %bb.af

_ZNK11CStringBaseIwE4FindEw.exit.thread:          ; preds = %.lr.ph.i.i176, %_ZNK11CStringBaseIwE4FindEw.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i32 -1, ptr %i.eo, align 8, !tbaa !81
  br label %bb.ag

bb.af:                                            ; preds = %_ZNK11CStringBaseIwE4FindEw.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i32 %i.em, ptr %i.ep, align 8, !tbaa !81
  %i.eq = add nsw i32 %i.cq, 1
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK11CStringBaseIwE4FindEw.exit.thread, %bb.af, %bb.ac
  %.3107 = phi i32 [ %i.b, %bb.ac ], [ %i.cq, %_ZNK11CStringBaseIwE4FindEw.exit.thread ], [ %i.eq, %bb.af ] ; 2 uses
  %i.er = icmp eq ptr %.sroa.0.0, null
  br i1 %i.er, label %_ZN11CStringBaseIwED2Ev.exit179, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #17
  br label %_ZN11CStringBaseIwED2Ev.exit179

bb.ai:                                            ; preds = %bb.u, %bb.u
  %i.es = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.et = load i32, ptr %i.es, align 8, !tbaa !79 ; 5 uses
  %i.eu = icmp slt i32 %i.cr, %i.et
  br i1 %i.eu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ev = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr @.str.2, ptr %i.ev, align 16, !tbaa !75
  call void @__cxa_throw(ptr nonnull %i.ev, ptr nonnull @_ZTIPKc, ptr null) #18
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %.not = icmp eq i32 %i.ct, 3
  br i1 %.not, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ex = load i32, ptr %i.a, align 8, !tbaa !40, !noalias !82
  %i.ey = sub nsw i32 %i.ex, %i.cq
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.cq, i32 noundef %i.ey)
  %i.ez = invoke noundef i32 @_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.am unwind label %bb.ao     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.fa = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.fa) #17
  br label %.thread

.thread:                                          ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.critedge140

bb.ao:                                            ; preds = %bb.al
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_ZN11CStringBaseIwED2Ev.exit181, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %i.fd) #17
  br label %_ZN11CStringBaseIwED2Ev.exit181

_ZN11CStringBaseIwED2Ev.exit181:                  ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN11CStringBaseIwED2Ev.exit158

bb.aq:                                            ; preds = %bb.ak
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !83 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.cq, i32 noundef %i.et)
  %i.fh = add i32 %i.et, %i.cq                    ; 3 uses
  %i.fi = icmp slt i32 %i.et, %i.fg
  %i.fj = icmp slt i32 %i.fh, %i.b
  %i.fk = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %i.fk, label %.lr.ph265.preheader, label %.critedge

.lr.ph265.preheader:                              ; preds = %bb.aq
  %i.fl = sext i32 %i.fh to i64
  br label %.lr.ph265

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %bb.av
  %indvars.iv292 = phi i64 [ %i.fl, %.lr.ph265.preheader ], [ %indvars.iv.next293, %bb.av ] ; 3 uses
  %.0263 = phi i32 [ %i.et, %.lr.ph265.preheader ], [ %i.hu, %bb.av ]
  %i.fm = load ptr, ptr %1, align 8, !tbaa !38
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %indvars.iv292
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !43 ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 45
  br i1 %i.fp, label %.critedge.loopexit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph265
  %i.fq = load i32, ptr %i.i, align 4, !tbaa !41  ; 6 uses
  %i.fr = load i32, ptr %i.j, align 8, !tbaa !40  ; 3 uses
  %i.fs = xor i32 %i.fr, -1
  %i.ft = add i32 %i.fq, %i.fs                    ; 3 uses
  %.not.i.i182 = icmp slt i32 %i.ft, 1
  br i1 %.not.i.i182, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.fu = icmp sgt i32 %i.fq, 64
  %i.fv = lshr i32 %i.fq, 1
  %i.fw = icmp sgt i32 %i.fq, 8
  %..i.i = select i1 %i.fw, i32 16, i32 4
  %.0.i.i183 = select i1 %i.fu, i32 %i.fv, i32 %..i.i ; 2 uses
  %i.fx = add nsw i32 %.0.i.i183, %i.ft
  %i.fy = icmp slt i32 %i.fx, 1
  %i.fz = sub nsw i32 1, %i.ft
  %.1.i.i = select i1 %i.fy, i32 %i.fz, i32 %.0.i.i183
  %i.ga = add nsw i32 %.1.i.i, %i.fq              ; 2 uses
  %i.gb = add nsw i32 %i.ga, 1                    ; 3 uses
  %i.gc = icmp eq i32 %i.gb, %i.fq
  br i1 %i.gc, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gd = zext nneg i32 %i.gb to i64
  %i.ge = icmp slt i32 %i.ga, -1
  %i.gf = shl nuw nsw i64 %i.gd, 2
  %i.gg = select i1 %i.ge, i64 -1, i64 %i.gf
  %i.gh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gg) #14
          to label %.noexc185 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc185:                                        ; preds = %bb.at
  %i.gi = ptrtoaddr ptr %i.gh to i64
  %i.gj = load i32, ptr %i.i, align 4, !tbaa !41
  %i.gk = icmp sgt i32 %i.gj, 0
end_hunk_0
begin_hunk_1_@_ZN18NCommandLineParser7CParser11ParseStringERK11CStringBaseIwEPKNS_11CSwitchFormE:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind noalias writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !86 {
bb.a:
  %i.a = add nsw i32 %3, %2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40   ; 5 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %2
  %spec.select = select i1 %i.d, i32 %i.e, i32 %3 ; 8 uses
  %i.f = icmp eq i32 %2, 0
  %i.g = icmp eq i32 %spec.select, %i.c
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN11CStringBaseIwEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.h = add nsw i32 %i.c, 1                      ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = zext nneg i32 %i.h to i64
  %i.l = icmp slt i32 %i.c, -1
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #14 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !38
  store i32 0, ptr %i.o, align 4, !tbaa !43
  store i32 %i.h, ptr %i.j, align 4, !tbaa !41
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %._crit_edge.i.i, %bb.b
  %i.p = phi ptr [ null, %bb.b ], [ %i.o, %._crit_edge.i.i ]
  %i.q = load ptr, ptr %1, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.t, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.q, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.s = load i32, ptr %.0.i.i, align 4, !tbaa !43 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.s, ptr %.04.i.i, align 4, !tbaa !43
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit, label %bb.c, !llvm.loop !0

_ZN11CStringBaseIwEC2ERKS0_.exit:                 ; preds = %bb.c
  %i.u = load i32, ptr %i.b, align 8, !tbaa !40
  br label %bb.e

_ZN11CStringBaseIwEC2Ev.exit:                     ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %i.x = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #14 ; 5 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !38
  store i32 0, ptr %i.x, align 4, !tbaa !43
  store i32 4, ptr %i.v, align 4, !tbaa !41
  %i.y = add nsw i32 %spec.select, 1              ; 3 uses
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %_ZN11CStringBaseIwEC2Ev.exit
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = icmp slt i32 %spec.select, -1
  %i.ac = shl nuw nsw i64 %i.aa, 2
  %i.ad = select i1 %i.ab, i64 -1, i64 %i.ac
  %i.ae = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #14
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit unwind label %_ZN11CStringBaseIwED2Ev.exit ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit:          ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #17
  store ptr %i.ae, ptr %0, align 8, !tbaa !38
  store i32 0, ptr %i.ae, align 4, !tbaa !43
  store i32 %i.y, ptr %i.v, align 4, !tbaa !41
  %i.af = icmp sgt i32 %spec.select, 0
  br i1 %i.af, label %.lr.ph, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %.pre = sext i32 %spec.select to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN11CStringBaseIwEC2Ev.exit, %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %i.ag = phi ptr [ %i.ae, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.x, %_ZN11CStringBaseIwEC2Ev.exit ] ; 5 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !38    ; 2 uses
  %i.ai = sext i32 %2 to i64                      ; 2 uses
  %i.aj = zext nneg i32 %spec.select to i64       ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %min.iters.check = icmp ult i32 %spec.select, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %i.al = ptrtoaddr ptr %i.ag to i64
  %i.am = shl nsw i64 %i.ai, 2
  %i.an = add i64 %i.am, %i.ak
  %i.ao = sub i64 %i.an, %i.al
  %diff.check = icmp ugt i64 %i.ao, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !43
  %wide.load42 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !43
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %wide.load, ptr %i.ar, align 4, !tbaa !43
  store <4 x i32> %wide.load42, ptr %i.as, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aj
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge
  %i.au = phi ptr [ %i.ae, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge ], [ %i.ag, %middle.block ], [ %i.ag, %scalar.ph ]
  %.pre-phi = phi i64 [ %.pre, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge ], [ %i.aj, %middle.block ], [ %i.aj, %scalar.ph ]
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %.pre-phi
  store i32 0, ptr %i.av, align 4, !tbaa !43
  br label %bb.e

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #17
  resume { ptr, i32 } %i.aw

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ax = load i32, ptr %gep, align 4, !tbaa !43
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.az, label %scalar.ph, label %._crit_edge, !llvm.loop !85

bb.e:                                             ; preds = %._crit_edge, %_ZN11CStringBaseIwEC2ERKS0_.exit
  %spec.select.sink = phi i32 [ %spec.select, %._crit_edge ], [ %i.u, %_ZN11CStringBaseIwEC2ERKS0_.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %spec.select.sink, ptr %i.ba, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #7 align 2 !guid !87 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %1
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN18NCommandLineParser12ParseCommandEiPKNS_12CCommandFormERK11CStringBaseIwERS4_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !94 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 7 uses
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.b:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !88

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.02366 = phi i32 [ undef, %.lr.ph ], [ %.124, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96   ; 2 uses
  %wcslen.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.g) ; 2 uses
  %i.h = trunc i64 %wcslen.i.i to i32             ; 6 uses
  %i.i = add nsw i32 %i.h, 1                      ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = icmp slt i32 %i.h, -1
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #14 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !43
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %i.o, %bb.d ] ; 7 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.r, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.g, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.q = load i32, ptr %.0.i.i, align 4, !tbaa !43 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.q, ptr %.04.i.i, align 4, !tbaa !43
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.e, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !97, !range !46, !noundef !47
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.s

bb.f:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.w = icmp eq i32 %i.h, 0
  %.pre = load i32, ptr %i.c, align 8, !tbaa !40  ; 3 uses
  br i1 %i.w, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread57, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %bb.f
  %i.x = icmp sgt i32 %.pre, 0
  %i.y = icmp sgt i32 %i.h, 0
  %or.cond.i.i = and i1 %i.y, %i.x
  br i1 %or.cond.i.i, label %.preheader.us.preheader.i.i, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

.preheader.us.preheader.i.i:                      ; preds = %.preheader23.i.i
  %i.z = zext nneg i32 %.pre to i64               ; 2 uses
  %wide.trip.count.i.i27 = and i64 %wcslen.i.i, 2147483647
  %i.aa = load ptr, ptr %2, align 8
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.critedge.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv35.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %indvars.iv.next36.i.i, %.critedge.us.i.i ] ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.preheader.us.i.i
  %indvars.iv.i.i28 = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i29, %bb.i ] ; 3 uses
  %i.ab = add nuw nsw i64 %indvars.iv.i.i28, %indvars.iv35.i.i ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.z
  br i1 %i.ac, label %bb.h, label %.critedge.us.i.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !43
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.i.i28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43
  %.not.us.i.i = icmp eq i32 %i.ae, %i.ag
  br i1 %.not.us.i.i, label %bb.i, label %.critedge.us.i.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i29 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %exitcond.not.i.i30 = icmp eq i64 %indvars.iv.next.i.i29, %wide.trip.count.i.i27
  br i1 %exitcond.not.i.i30, label %_ZNK11CStringBaseIwE4FindERKS0_.exit, label %bb.g, !llvm.loop !89

.critedge.us.i.i:                                 ; preds = %bb.h, %bb.g
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1 ; 2 uses
  %i.ah = icmp eq i64 %indvars.iv.next36.i.i, %i.z
  br i1 %i.ah, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread, label %.preheader.us.i.i, !llvm.loop !90

_ZNK11CStringBaseIwE4FindERKS0_.exit:             ; preds = %bb.i
  %i.ai = icmp eq i64 %indvars.iv35.i.i, 0
  br i1 %i.ai, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread57, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

_ZNK11CStringBaseIwE4FindERKS0_.exit.thread57:    ; preds = %bb.f, %_ZNK11CStringBaseIwE4FindERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.aj = sub nsw i32 %.pre, %i.h
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.h, i32 noundef %i.aj)
          to label %_ZNK11CStringBaseIwE3MidEi.exit unwind label %bb.p

_ZNK11CStringBaseIwE3MidEi.exit:                  ; preds = %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread57
  store i32 0, ptr %i.b, align 8, !tbaa !40
  %i.ak = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !43
  %i.al = load i32, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  %i.am = add nsw i32 %i.al, 1                    ; 3 uses
  %i.an = load i32, ptr %i.e, align 4, !tbaa !41
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i31, label %bb.j

bb.j:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = icmp slt i32 %i.al, -1
  %i.ar = shl nuw nsw i64 %i.ap, 2
  %i.as = select i1 %i.aq, i64 -1, i64 %i.ar
  %i.at = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #14
          to label %.noexc unwind label %bb.q     ; 10 uses

.noexc:                                           ; preds = %bb.j
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = load i32, ptr %i.e, align 4, !tbaa !41
  %i.aw = icmp sgt i32 %i.av, 0
  %.pre7.i = load i32, ptr %i.b, align 8, !tbaa !40 ; 5 uses
  br i1 %i.aw, label %.preheader.i.i35, label %bb.k

.preheader.i.i35:                                 ; preds = %.noexc
  %i.ax = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i36 = load ptr, ptr %3, align 8, !tbaa !38 ; 9 uses
  br i1 %i.ax, label %.lr.ph.i.i40, label %._crit_edge.i.i37

.lr.ph.i.i40:                                     ; preds = %.preheader.i.i35
  %.pre.i.i3695 = ptrtoaddr ptr %.pre.i.i36 to i64
  %wide.trip.count.i.i41 = zext nneg i32 %.pre7.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre7.i, 8
  %i.ay = sub i64 %.pre.i.i3695, %i.au
  %diff.check = icmp ugt i64 %i.ay, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i40
  %n.vec = and i64 %wide.trip.count.i.i41, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i36, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !43
  %wide.load96 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !43
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x i32> %wide.load, ptr %i.bb, align 4, !tbaa !43
  store <4 x i32> %wide.load96, ptr %i.bc, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i41
  br i1 %cmp.n, label %._crit_edge.thread.i.i38, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i40, %middle.block
  %indvars.iv.i.i42.ph = phi i64 [ 0, %.lr.ph.i.i40 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i41, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i42.prol = phi i64 [ %indvars.iv.next.i.i43.prol, %scalar.ph.prol ], [ %indvars.iv.i.i42.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i36, i64 %indvars.iv.i.i42.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !43
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i42.prol
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !43
  %indvars.iv.next.i.i43.prol = add nuw nsw i64 %indvars.iv.i.i42.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !92

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i42.unr = phi i64 [ %indvars.iv.i.i42.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i43.prol, %scalar.ph.prol ]
  %i.bh = sub nsw i64 %indvars.iv.i.i42.ph, %wide.trip.count.i.i41
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge.thread.i.i38, label %scalar.ph

._crit_edge.i.i37:                                ; preds = %.preheader.i.i35
  %i.bj = icmp eq ptr %.pre.i.i36, null
  br i1 %i.bj, label %bb.k, label %._crit_edge.thread.i.i38

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i42 = phi i64 [ %indvars.iv.next.i.i43.3, %scalar.ph ], [ %indvars.iv.i.i42.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i36, i64 %indvars.iv.i.i42
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !43
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i42
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !43
  %indvars.iv.next.i.i43 = add nuw nsw i64 %indvars.iv.i.i42, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i36, i64 %indvars.iv.next.i.i43
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !43
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i43
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !43
  %indvars.iv.next.i.i43.1 = add nuw nsw i64 %indvars.iv.i.i42, 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i36, i64 %indvars.iv.next.i.i43.1
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !43
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i43.1
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !43
  %indvars.iv.next.i.i43.2 = add nuw nsw i64 %indvars.iv.i.i42, 3 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i36, i64 %indvars.iv.next.i.i43.2
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !43
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i43.2
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !43
end_hunk_1
