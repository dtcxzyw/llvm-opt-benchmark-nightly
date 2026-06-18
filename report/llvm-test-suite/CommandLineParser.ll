inline.NumInlined: 84
inline.NumDeleted: 39
begin_hunk_0_@_ZN18NCommandLineParser7CParser11ParseStringERK11CStringBaseIwEPKNS_11CSwitchFormE:bb.a
  %.pn132.pn = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit175 ], [ %.pn132211, %.body184.thread ], [ %eh.lpad-body, %_ZN11CStringBaseIwED2Ev.exit160 ], [ %.pn132, %.body184 ]
  resume { ptr, i32 } %.pn132.pn

.critedge140:                                     ; preds = %_ZN11CStringBaseIwED2Ev.exit156, %_ZN11CStringBaseIwED2Ev.exit156.thread, %.preheader, %.thread, %bb.b, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ true, %.thread ], [ false, %bb.b ], [ true, %.preheader ], [ true, %_ZN11CStringBaseIwED2Ev.exit156.thread ], [ true, %_ZN11CStringBaseIwED2Ev.exit156 ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind noalias writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %3, %2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27   ; 6 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %2
  %spec.select = select i1 %i.d, i32 %i.e, i32 %3 ; 8 uses
  %i.f = icmp eq i32 %2, 0
  %i.g = icmp eq i32 %spec.select, %i.c
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.h = add nsw i32 %i.c, 1                      ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = zext nneg i32 %i.h to i64
  %i.l = icmp slt i32 %i.c, -1
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #15 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !30
  store i32 0, ptr %i.o, align 4, !tbaa !31
  store i32 %i.h, ptr %i.j, align 4, !tbaa !33
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ null, %bb.b ], [ %i.o, %bb.c ]
  %i.q = load ptr, ptr %1, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.q, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.r, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.s = load i32, ptr %.04.i.i, align 4, !tbaa !31 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.s, ptr %.0.i.i, align 4, !tbaa !31
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit, label %bb.d, !llvm.loop !34

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8
  %i.w = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15 ; 5 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !30
  store i32 0, ptr %i.w, align 4, !tbaa !31
  store i32 4, ptr %i.u, align 4, !tbaa !33
  %i.x = add nsw i32 %spec.select, 1              ; 3 uses
  %i.y = icmp eq i32 %i.x, 4
  br i1 %i.y, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = icmp slt i32 %spec.select, -1
  %i.ab = shl nuw nsw i64 %i.z, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #15
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit unwind label %_ZN11CStringBaseIwED2Ev.exit ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit:          ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #18
  store ptr %i.ad, ptr %0, align 8, !tbaa !30
  store i32 0, ptr %i.ad, align 4, !tbaa !31
  store i32 %i.x, ptr %i.u, align 4, !tbaa !33
  %i.ae = icmp sgt i32 %spec.select, 0
  br i1 %i.ae, label %.lr.ph, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %.pre = sext i32 %spec.select to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %i.af = phi ptr [ %i.ad, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.w, %bb.e ] ; 5 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.ah = sext i32 %2 to i64                      ; 2 uses
  %i.ai = zext nneg i32 %spec.select to i64       ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %min.iters.check = icmp ult i32 %spec.select, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.aj = ptrtoaddr ptr %i.ag to i64
  %i.ak = ptrtoaddr ptr %i.af to i64
  %i.al = shl nsw i64 %i.ah, 2
  %i.am = add i64 %i.al, %i.aj
  %i.an = sub i64 %i.ak, %i.am
  %diff.check = icmp ult i64 %i.an, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !31
  %wide.load28 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !31
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %wide.load, ptr %i.aq, align 4, !tbaa !31
  store <4 x i32> %wide.load28, ptr %i.ar, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ai
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge
  %i.at = phi ptr [ %i.ad, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge ], [ %i.af, %middle.block ], [ %i.af, %scalar.ph ]
  %.pre-phi = phi i64 [ %.pre, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge ], [ %i.ai, %middle.block ], [ %i.ai, %scalar.ph ]
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %.pre-phi
  store i32 0, ptr %i.au, align 4, !tbaa !31
  br label %_ZN11CStringBaseIwEC2ERKS0_.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #18
  resume { ptr, i32 } %i.av

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aw = load i32, ptr %gep, align 4, !tbaa !31
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ai
  br i1 %i.ay, label %scalar.ph, label %._crit_edge, !llvm.loop !68

_ZN11CStringBaseIwEC2ERKS0_.exit:                 ; preds = %bb.d, %._crit_edge
  %spec.select.sink = phi i32 [ %spec.select, %._crit_edge ], [ %i.c, %bb.d ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %spec.select.sink, ptr %i.az, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %1
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN18NCommandLineParser12ParseCommandEiPKNS_12CCommandFormERK11CStringBaseIwERS4_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 7 uses
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.b:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !69

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.02350 = phi i32 [ undef, %.lr.ph ], [ %.124, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 2 uses
  %wcslen.i.i = call i64 @wcslen(ptr %i.g)        ; 2 uses
  %i.h = trunc i64 %wcslen.i.i to i32             ; 6 uses
  %i.i = add nsw i32 %i.h, 1                      ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = icmp slt i32 %i.h, -1
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #15 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !31
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %i.o, %bb.d ] ; 7 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.g, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.r, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.q = load i32, ptr %.04.i.i, align 4, !tbaa !31 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.q, ptr %.0.i.i, align 4, !tbaa !31
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.e, !llvm.loop !34

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !72, !range !47, !noundef !48
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.s

bb.f:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.w = icmp eq i32 %i.h, 0
  %.pre = load i32, ptr %i.c, align 8, !tbaa !27  ; 3 uses
  br i1 %i.w, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread41, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %bb.f
  %5 = icmp sgt i32 %.pre, 0
  br i1 %5, label %.preheader.lr.ph.i.i, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

.preheader.lr.ph.i.i:                             ; preds = %.preheader23.i.i
  %i.x = icmp sgt i32 %i.h, 0
  %6 = load ptr, ptr %2, align 8
  br i1 %i.x, label %.preheader.us.preheader.i.i, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.y = zext nneg i32 %.pre to i64               ; 2 uses
  %wide.trip.count.i.i = and i64 %wcslen.i.i, 2147483647
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.critedge.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv35.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %indvars.iv.next36.i.i, %.critedge.us.i.i ] ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 3 uses
  %i.z = add nuw nsw i64 %indvars.iv.i.i, %indvars.iv35.i.i ; 2 uses
  %i.aa = icmp samesign ult i64 %i.z, %i.y
  br i1 %i.aa, label %bb.h, label %.critedge.us.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.z
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !31
  %.not.us.i.i = icmp eq i32 %i.ac, %i.ae
  br i1 %.not.us.i.i, label %bb.i, label %.critedge.us.i.i

.critedge.us.i.i:                                 ; preds = %bb.h, %bb.g
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1 ; 2 uses
  %i.af = icmp eq i64 %indvars.iv.next36.i.i, %i.y
  br i1 %i.af, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread, label %.preheader.us.i.i, !llvm.loop !73

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK11CStringBaseIwE4FindERKS0_.exit, label %bb.g, !llvm.loop !74

_ZNK11CStringBaseIwE4FindERKS0_.exit:             ; preds = %bb.i
  %i.ag = icmp eq i64 %indvars.iv35.i.i, 0
  br i1 %i.ag, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread41, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

_ZNK11CStringBaseIwE4FindERKS0_.exit.thread41:    ; preds = %bb.f, %_ZNK11CStringBaseIwE4FindERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ah = sub nsw i32 %.pre, %i.h
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.h, i32 noundef %i.ah)
          to label %_ZNK11CStringBaseIwE3MidEi.exit unwind label %bb.p

_ZNK11CStringBaseIwE3MidEi.exit:                  ; preds = %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread41
  store i32 0, ptr %i.b, align 8, !tbaa !27
  %i.ai = load ptr, ptr %3, align 8, !tbaa !30    ; 3 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !31
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 3 uses
  %i.al = load i32, ptr %i.e, align 4, !tbaa !33  ; 2 uses
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27, label %bb.j

bb.j:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit
  %i.an = zext nneg i32 %i.ak to i64
  %i.ao = icmp slt i32 %i.aj, -1
  %i.ap = shl nuw nsw i64 %i.an, 2
  %i.aq = select i1 %i.ao, i64 -1, i64 %i.ap
  %i.ar = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #15
          to label %.noexc unwind label %bb.q     ; 3 uses

.noexc:                                           ; preds = %bb.j
  %i.as = icmp sgt i32 %i.al, 0
  br i1 %i.as, label %._crit_edge.thread.i.i, label %bb.k

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #18
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !27
  %i.at = sext i32 %.pre.i to i64
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.au = phi i64 [ %i.at, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.ar, ptr %3, align 8, !tbaa !30
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.au
  store i32 0, ptr %i.av, align 4, !tbaa !31
  store i32 %i.ak, ptr %i.e, align 4, !tbaa !33
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27

_ZN11CStringBaseIwE11SetCapacityEi.exit.i27:      ; preds = %bb.k, %_ZNK11CStringBaseIwE3MidEi.exit
  %i.aw = phi ptr [ %i.ai, %_ZNK11CStringBaseIwE3MidEi.exit ], [ %i.ar, %bb.k ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27
  %.04.i.i28 = phi ptr [ %i.ax, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27 ], [ %i.ay, %bb.l ] ; 2 uses
  %.0.i.i29 = phi ptr [ %i.aw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27 ], [ %i.ba, %bb.l ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.04.i.i28, i64 4
  %i.az = load i32, ptr %.04.i.i28, align 4, !tbaa !31 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 4
  store i32 %i.az, ptr %.0.i.i29, align 4, !tbaa !31
  %.not.i.i30 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i30, label %bb.m, label %bb.l, !llvm.loop !34

bb.m:                                             ; preds = %bb.l
  %i.bb = load i32, ptr %i.d, align 8, !tbaa !27
  store i32 %i.bb, ptr %i.b, align 8, !tbaa !27
  %i.bc = icmp eq ptr %i.ax, null
  br i1 %i.bc, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #18
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

bb.o:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.p:                                             ; preds = %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread41
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit31

bb.q:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN11CStringBaseIwED2Ev.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #18
  br label %_ZN11CStringBaseIwED2Ev.exit31

_ZN11CStringBaseIwED2Ev.exit31:                   ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.be, %bb.p ], [ %i.bf, %bb.q ], [ %i.bf, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.w

bb.s:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.bi = load ptr, ptr %2, align 8, !tbaa !30
  %i.bj = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.bi, ptr noundef %.sroa.0.0)
          to label %bb.t unwind label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.u, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.b, align 8, !tbaa !27
  %i.bl = load ptr, ptr %3, align 8, !tbaa !30
  store i32 0, ptr %i.bl, align 4, !tbaa !31
  br label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

_ZNK11CStringBaseIwE4FindERKS0_.exit.thread:      ; preds = %.critedge.us.i.i, %.preheader.lr.ph.i.i, %.preheader23.i.i, %_ZNK11CStringBaseIwE4FindERKS0_.exit, %bb.t, %bb.u, %_ZN11CStringBaseIwED2Ev.exit
  %.124 = phi i32 [ %i.v, %_ZN11CStringBaseIwED2Ev.exit ], [ %i.v, %bb.u ], [ %.02350, %bb.t ], [ %.02350, %_ZNK11CStringBaseIwE4FindERKS0_.exit ], [ %.02350, %.preheader23.i.i ], [ %.02350, %.preheader.lr.ph.i.i ], [ %.02350, %.critedge.us.i.i ] ; 2 uses
  %cond = phi i1 [ false, %_ZN11CStringBaseIwED2Ev.exit ], [ false, %bb.u ], [ true, %bb.t ], [ true, %_ZNK11CStringBaseIwE4FindERKS0_.exit ], [ true, %.preheader23.i.i ], [ true, %.preheader.lr.ph.i.i ], [ true, %.critedge.us.i.i ]
  %i.bm = icmp eq ptr %.sroa.0.0, null
  br i1 %i.bm, label %_ZN11CStringBaseIwED2Ev.exit33, label %bb.v

bb.v:                                             ; preds = %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #18
  br label %_ZN11CStringBaseIwED2Ev.exit33

_ZN11CStringBaseIwED2Ev.exit33:                   ; preds = %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread, %bb.v
  br i1 %cond, label %bb.b, label %._crit_edge

bb.w:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit31, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit31 ], [ %i.bd, %bb.o ]
  %i.bn = icmp eq ptr %.sroa.0.0, null
  br i1 %i.bn, label %_ZN11CStringBaseIwED2Ev.exit34, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #18
  br label %_ZN11CStringBaseIwED2Ev.exit34

_ZN11CStringBaseIwED2Ev.exit34:                   ; preds = %bb.w, %bb.x
  resume { ptr, i32 } %.pn.pn

._crit_edge:                                      ; preds = %_ZN11CStringBaseIwED2Ev.exit33, %bb.b, %bb.a
  %i.bo = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %.124, %_ZN11CStringBaseIwED2Ev.exit33 ]
  ret i32 %i.bo
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI11CStringBaseIwEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %0, align 8, !tbaa !17
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit unwind label %bb.b, !inline_history !23

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #17, !inline_history !23
  unreachable

_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit:    ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16, !inline_history !23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !24   ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.d, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #18
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN11CStringBaseIwED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.q, label %bb.a, label %._crit_edge, !llvm.loop !75
}

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #8

declare void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef, ptr noundef) local_unnamed_addr #9

declare noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN18NCommandLineParser7CParserE", !5, i64 0, !10, i64 8, !12, i64 16}
!10 = !{!"p1 _ZTSN18NCommandLineParser13CSwitchResultE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTS13CObjectVectorI11CStringBaseIwEE", !13, i64 0}
!13 = !{!"_ZTS13CRecordVectorIPvE", !14, i64 0}
!14 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !11, i64 16, !15, i64 24}
!15 = !{!"long", !6, i64 0}
!16 = !{!14, !15, i64 24}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !7, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSN18NCommandLineParser13CSwitchResultE", !21, i64 0, !21, i64 1, !12, i64 8, !5, i64 40}
!21 = !{!"bool", !6, i64 0}
!22 = !{!9, !10, i64 8}
!23 = !{ptr @_ZN13CObjectVectorI11CStringBaseIwEED2Ev}
!24 = !{!14, !5, i64 12}
!25 = !{!14, !11, i64 16}
!26 = !{!11, !11, i64 0}
!27 = !{!28, !5, i64 8}
end_hunk_0
