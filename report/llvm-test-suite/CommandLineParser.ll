inline.NumInlined: 84
inline.NumDeleted: 39
begin_hunk_0_@_ZN18NCommandLineParser7CParser11ParseStringERK11CStringBaseIwEPKNS_11CSwitchFormE:bb.a
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
define dso_local noundef i32 @_ZN18NCommandLineParser12ParseCommandEiPKNS_12CCommandFormERK11CStringBaseIwERS4_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(16) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 9 uses
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = icmp eq ptr %4, %3
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.b:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !69

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.02350 = phi i32 [ undef, %.lr.ph ], [ %.124, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  %wcslen.i.i = call i64 @wcslen(ptr %i.h)        ; 2 uses
  %i.i = trunc i64 %wcslen.i.i to i32             ; 6 uses
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.j to i64
  %i.m = icmp slt i32 %i.i, -1
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #15 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !31
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %i.p, %bb.d ] ; 7 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.h, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.q, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.r = load i32, ptr %.04.i.i, align 4, !tbaa !31 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.r, ptr %.0.i.i, align 4, !tbaa !31
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.e, !llvm.loop !34

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !72, !range !47, !noundef !48
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.s

bb.f:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.x = icmp eq i32 %i.i, 0
  %.pre = load i32, ptr %i.c, align 8, !tbaa !27  ; 3 uses
  br i1 %i.x, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread41, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %bb.f
  %5 = icmp sgt i32 %.pre, 0
  br i1 %5, label %.preheader.lr.ph.i.i, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

.preheader.lr.ph.i.i:                             ; preds = %.preheader23.i.i
  %i.y = icmp sgt i32 %i.i, 0
  %6 = load ptr, ptr %2, align 8
  br i1 %i.y, label %.preheader.us.preheader.i.i, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.z = zext nneg i32 %.pre to i64               ; 2 uses
  %wide.trip.count.i.i = and i64 %wcslen.i.i, 2147483647
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.critedge.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv35.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %indvars.iv.next36.i.i, %.critedge.us.i.i ] ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 3 uses
  %i.aa = add nuw nsw i64 %indvars.iv.i.i, %indvars.iv35.i.i ; 2 uses
  %i.ab = icmp samesign ult i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.h, label %.critedge.us.i.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aa
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31
  %.not.us.i.i = icmp eq i32 %i.ad, %i.af
  br i1 %.not.us.i.i, label %bb.i, label %.critedge.us.i.i

.critedge.us.i.i:                                 ; preds = %bb.h, %bb.g
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1 ; 2 uses
  %i.ag = icmp eq i64 %indvars.iv.next36.i.i, %i.z
  br i1 %i.ag, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread, label %.preheader.us.i.i, !llvm.loop !73

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK11CStringBaseIwE4FindERKS0_.exit, label %bb.g, !llvm.loop !74

_ZNK11CStringBaseIwE4FindERKS0_.exit:             ; preds = %bb.i
  %i.ah = icmp eq i64 %indvars.iv35.i.i, 0
  br i1 %i.ah, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread41, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

_ZNK11CStringBaseIwE4FindERKS0_.exit.thread41:    ; preds = %bb.f, %_ZNK11CStringBaseIwE4FindERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ai = sub nsw i32 %.pre, %i.i
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.i, i32 noundef %i.ai)
          to label %_ZNK11CStringBaseIwE3MidEi.exit unwind label %bb.p

_ZNK11CStringBaseIwE3MidEi.exit:                  ; preds = %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread41
  br i1 %i.d, label %_ZNK11CStringBaseIwE3MidEi.exit._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, label %bb.j

_ZNK11CStringBaseIwE3MidEi.exit._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge: ; preds = %_ZNK11CStringBaseIwE3MidEi.exit
  %.pre60 = load ptr, ptr %4, align 8, !tbaa !30
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.j:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit
  store i32 0, ptr %i.b, align 8, !tbaa !27
  %i.aj = load ptr, ptr %3, align 8, !tbaa !30    ; 3 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !31
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.al = add nsw i32 %i.ak, 1                    ; 3 uses
  %i.am = load i32, ptr %i.f, align 4, !tbaa !33  ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = zext nneg i32 %i.al to i64
  %i.ap = icmp slt i32 %i.ak, -1
  %i.aq = shl nuw nsw i64 %i.ao, 2
  %i.ar = select i1 %i.ap, i64 -1, i64 %i.aq
  %i.as = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #15
          to label %.noexc unwind label %bb.q     ; 3 uses

.noexc:                                           ; preds = %bb.k
  %i.at = icmp sgt i32 %i.am, 0
  br i1 %i.at, label %._crit_edge.thread.i.i, label %bb.l

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #18
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !27
  %i.au = sext i32 %.pre.i to i64
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.av = phi i64 [ %i.au, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.as, ptr %3, align 8, !tbaa !30
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.av
  store i32 0, ptr %i.aw, align 4, !tbaa !31
  store i32 %i.al, ptr %i.f, align 4, !tbaa !33
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27

_ZN11CStringBaseIwE11SetCapacityEi.exit.i27:      ; preds = %bb.l, %bb.j
  %i.ax = phi ptr [ %i.aj, %bb.j ], [ %i.as, %bb.l ]
  %i.ay = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27
  %.04.i.i28 = phi ptr [ %i.ay, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27 ], [ %i.az, %bb.m ] ; 2 uses
  %.0.i.i29 = phi ptr [ %i.ax, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27 ], [ %i.bb, %bb.m ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.04.i.i28, i64 4
  %i.ba = load i32, ptr %.04.i.i28, align 4, !tbaa !31 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 4
  store i32 %i.ba, ptr %.0.i.i29, align 4, !tbaa !31
  %.not.i.i30 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i30, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.m, !llvm.loop !34

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.m
  %i.bc = load i32, ptr %i.e, align 8, !tbaa !27
  store i32 %i.bc, ptr %i.b, align 8, !tbaa !27
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %_ZNK11CStringBaseIwE3MidEi.exit._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %i.bd = phi ptr [ %.pre60, %_ZNK11CStringBaseIwE3MidEi.exit._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge ], [ %i.ay, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ] ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #18
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

bb.o:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.p:                                             ; preds = %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread41
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit31

bb.q:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN11CStringBaseIwED2Ev.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #18
  br label %_ZN11CStringBaseIwED2Ev.exit31

_ZN11CStringBaseIwED2Ev.exit31:                   ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %i.bh, %bb.q ], [ %i.bh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.w

bb.s:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.bk = load ptr, ptr %2, align 8, !tbaa !30
  %i.bl = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.bk, ptr noundef %.sroa.0.0)
          to label %bb.t unwind label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.u, label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.b, align 8, !tbaa !27
  %i.bn = load ptr, ptr %3, align 8, !tbaa !30
  store i32 0, ptr %i.bn, align 4, !tbaa !31
  br label %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread

_ZNK11CStringBaseIwE4FindERKS0_.exit.thread:      ; preds = %.critedge.us.i.i, %.preheader.lr.ph.i.i, %.preheader23.i.i, %_ZNK11CStringBaseIwE4FindERKS0_.exit, %bb.t, %bb.u, %_ZN11CStringBaseIwED2Ev.exit
  %.124 = phi i32 [ %i.w, %_ZN11CStringBaseIwED2Ev.exit ], [ %i.w, %bb.u ], [ %.02350, %bb.t ], [ %.02350, %_ZNK11CStringBaseIwE4FindERKS0_.exit ], [ %.02350, %.preheader23.i.i ], [ %.02350, %.preheader.lr.ph.i.i ], [ %.02350, %.critedge.us.i.i ] ; 2 uses
  %cond = phi i1 [ false, %_ZN11CStringBaseIwED2Ev.exit ], [ false, %bb.u ], [ true, %bb.t ], [ true, %_ZNK11CStringBaseIwE4FindERKS0_.exit ], [ true, %.preheader23.i.i ], [ true, %.preheader.lr.ph.i.i ], [ true, %.critedge.us.i.i ]
  %i.bo = icmp eq ptr %.sroa.0.0, null
  br i1 %i.bo, label %_ZN11CStringBaseIwED2Ev.exit33, label %bb.v

bb.v:                                             ; preds = %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #18
  br label %_ZN11CStringBaseIwED2Ev.exit33

_ZN11CStringBaseIwED2Ev.exit33:                   ; preds = %_ZNK11CStringBaseIwE4FindERKS0_.exit.thread, %bb.v
  br i1 %cond, label %bb.b, label %._crit_edge

bb.w:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit31, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit31 ], [ %i.bf, %bb.o ]
  %i.bp = icmp eq ptr %.sroa.0.0, null
  br i1 %i.bp, label %_ZN11CStringBaseIwED2Ev.exit34, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #18
  br label %_ZN11CStringBaseIwED2Ev.exit34

_ZN11CStringBaseIwED2Ev.exit34:                   ; preds = %bb.w, %bb.x
  resume { ptr, i32 } %.pn.pn

._crit_edge:                                      ; preds = %_ZN11CStringBaseIwED2Ev.exit33, %bb.b, %bb.a
  %i.bq = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %.124, %_ZN11CStringBaseIwED2Ev.exit33 ]
  ret i32 %i.bq
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
