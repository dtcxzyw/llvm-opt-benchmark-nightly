inline.NumInlined: 200
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit

bb.d:                                             ; preds = %bb.a, %_ZN11CStringBaseIwED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.q, label %bb.a, label %._crit_edge, !llvm.loop !123
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI4CArcED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI4CArcE, i64 16), ptr %0, align 8, !tbaa !12
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI4CArcED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI4CArcE, i64 16), ptr %0, align 8, !tbaa !12
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI4CArcED2Ev.exit unwind label %bb.b, !inline_history !122

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #19, !inline_history !122
  unreachable

_ZN13CObjectVectorI4CArcED2Ev.exit:               ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14, !inline_history !122
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI4CArcE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38   ; 2 uses
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

._crit_edge:                                      ; preds = %bb.h, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #17
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN11CStringBaseIwED2Ev.exit1.i, label %bb.d

bb.d:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #17
  br label %_ZN11CStringBaseIwED2Ev.exit1.i

_ZN11CStringBaseIwED2Ev.exit1.i:                  ; preds = %bb.d, %_ZN11CStringBaseIwED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN11CStringBaseIwED2Ev.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit1.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #17
  br label %_ZN11CStringBaseIwED2Ev.exit2.i

_ZN11CStringBaseIwED2Ev.exit2.i:                  ; preds = %bb.e, %_ZN11CStringBaseIwED2Ev.exit1.i
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !85   ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZN4CArcD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit2.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_ZN4CArcD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #19
  unreachable

_ZN4CArcD2Ev.exit:                                ; preds = %_ZN11CStringBaseIwED2Ev.exit2.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 80) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4CArcD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.ae, label %bb.a, label %._crit_edge, !llvm.loop !124
}

declare noundef i32 @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11CStringBaseIwE7ReplaceERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !72
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !25
  %i.f = load ptr, ptr %2, align 8, !tbaa !25
  %i.g = tail call noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.e, ptr noundef %i.f)
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !72   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread

.lr.ph:                                           ; preds = %bb.c, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit
  %i.o = phi i32 [ %i.bz, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit ], [ %i.m, %bb.c ] ; 6 uses
  %.032 = phi i32 [ %i.ca, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit ], [ 0, %bb.c ] ; 2 uses
  %.01831 = phi i32 [ %i.cb, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit ], [ 0, %bb.c ] ; 4 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !72   ; 3 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit, label %.preheader23.i

.preheader23.i:                                   ; preds = %.lr.ph
  %i.r = icmp sgt i32 %i.p, 0
  br i1 %i.r, label %.preheader.us.preheader.i, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread

.preheader.us.preheader.i:                        ; preds = %.preheader23.i
  %i.s = sext i32 %i.o to i64
  %i.t = sext i32 %.032 to i64
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.critedge.us.thread.i, %.preheader.us.preheader.i
  %indvars.iv35.i = phi i64 [ %i.t, %.preheader.us.preheader.i ], [ %indvars.iv.next36.i, %.critedge.us.thread.i ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge.us.i.a, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next36.i.a, %.critedge.us.i.a ] ; 3 uses
  %i.u = add nsw i64 %indvars.iv.i, %indvars.iv35.i ; 2 uses
  %i.v = icmp slt i64 %i.u, %i.s
  br i1 %i.v, label %bb.e, label %.critedge.us.thread.i

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !25
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.u
  %i.y = load i32, ptr %i.x, align 4, !tbaa !26
  %i.z = load ptr, ptr %1, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %.not.us.i = icmp eq i32 %i.y, %i.ab
  br i1 %.not.us.i, label %.critedge.us.i.a, label %.critedge.us.thread.i

.critedge.us.i.a:                                 ; preds = %bb.e
  %indvars.iv.next36.i.a = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond38.not.i.a = icmp eq i64 %indvars.iv.next36.i.a, %wide.trip.count.i
  br i1 %exitcond38.not.i.a, label %bb.f, label %bb.d, !llvm.loop !125

bb.f:                                             ; preds = %.critedge.us.i.a
  %3 = trunc nsw i64 %indvars.iv35.i to i32
  br label %_ZNK11CStringBaseIwE4FindERKS0_i.exit

.critedge.us.thread.i:                            ; preds = %bb.d, %bb.e
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %i.ac = trunc i64 %indvars.iv.next36.i to i32
  %exitcond38.not.i = icmp eq i32 %i.o, %i.ac
  br i1 %exitcond38.not.i, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread, label %.preheader.us.i, !llvm.loop !126

_ZNK11CStringBaseIwE4FindERKS0_i.exit:            ; preds = %.lr.ph, %bb.f
  %.2.i = phi i32 [ %.032, %.lr.ph ], [ %3, %bb.f ] ; 7 uses
  %i.ad = icmp slt i32 %.2.i, 0
  br i1 %i.ad, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK11CStringBaseIwE4FindERKS0_i.exit
  %i.ae = add nsw i32 %.2.i, %i.i
  %i.af = icmp sgt i32 %i.ae, %i.o
  %i.ag = sub nsw i32 %i.o, %.2.i
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 %i.i ; 3 uses
  %i.ah = icmp sgt i32 %spec.select.i, 0
  br i1 %i.ah, label %bb.h, label %_ZN11CStringBaseIwE6DeleteEii.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw nsw i32 %spec.select.i, %.2.i   ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ak = zext nneg i32 %.2.i to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = zext nneg i32 %i.ai to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.am
  %reass.sub.i.i = add i32 %i.o, 1
  %i.ao = sub i32 %reass.sub.i.i, %i.ai
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.al, ptr nonnull align 4 %i.an, i64 %i.aq, i1 false)
  %i.ar = load i32, ptr %i.l, align 8, !tbaa !72
  %i.as = sub nsw i32 %i.ar, %spec.select.i       ; 2 uses
  store i32 %i.as, ptr %i.l, align 8, !tbaa !72
  br label %_ZN11CStringBaseIwE6DeleteEii.exit

_ZN11CStringBaseIwE6DeleteEii.exit:               ; preds = %bb.g, %bb.h
  %i.at = phi i32 [ %i.o, %bb.g ], [ %i.as, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %spec.store.select.i = call i32 @llvm.smin.i32(i32 %.2.i, i32 %i.at)
  store i32 %spec.store.select.i, ptr %i.a, align 4
  %i.au = load i32, ptr %i.j, align 8, !tbaa !72  ; 6 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN11CStringBaseIwE6InsertEiRKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN11CStringBaseIwE6DeleteEii.exit
  call void @_ZN11CStringBaseIwE11InsertSpaceERii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.au)
  %i.aw = icmp sgt i32 %i.au, 0
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ax = load ptr, ptr %2, align 8, !tbaa !25    ; 7 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.az = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %wide.trip.count.i21 = zext nneg i32 %i.au to i64 ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ay, i64 %i.ba ; 6 uses
  %min.iters.check = icmp ult i32 %i.au, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.bb = ptrtoaddr ptr %i.ay to i64
  %i.bc = ptrtoaddr ptr %i.ax to i64
  %i.bd = shl nsw i64 %i.ba, 2
  %i.be = add i64 %i.bd, %i.bb
  %i.bf = sub i64 %i.bc, %i.be
  %diff.check = icmp ugt i64 %i.bf, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i21, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x i32>, ptr %i.bg, align 4, !tbaa !26
  %wide.load49 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !26
  %i.bi = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  store <4 x i32> %wide.load, ptr %i.bi, align 4, !tbaa !26
  store <4 x i32> %wide.load49, ptr %i.bj, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i21
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i22.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i21, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i22.prol = phi i64 [ %indvars.iv.next.i23.prol, %scalar.ph.prol ], [ %indvars.iv.i22.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.i22.prol
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !26
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i22.prol
  store i32 %i.bm, ptr %gep.i.prol, align 4, !tbaa !26
  %indvars.iv.next.i23.prol = add nuw nsw i64 %indvars.iv.i22.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !130

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i22.unr = phi i64 [ %indvars.iv.i22.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i23.prol, %scalar.ph.prol ]
  %i.bn = sub nsw i64 %indvars.iv.i22.ph, %wide.trip.count.i21
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.i
  %i.bp = load i32, ptr %i.l, align 8, !tbaa !72
  %i.bq = add nsw i32 %i.bp, %i.au                ; 2 uses
  store i32 %i.bq, ptr %i.l, align 8, !tbaa !72
  br label %_ZN11CStringBaseIwE6InsertEiRKS0_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i22 = phi i64 [ %indvars.iv.next.i23.3, %scalar.ph ], [ %indvars.iv.i22.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.i22
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i22
  store i32 %i.bs, ptr %gep.i, align 4, !tbaa !26
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next.i23
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !26
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i23
  store i32 %i.bu, ptr %gep.i.1, align 4, !tbaa !26
  %indvars.iv.next.i23.1 = add nuw nsw i64 %indvars.iv.i22, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next.i23.1
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !26
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i23.1
  store i32 %i.bw, ptr %gep.i.2, align 4, !tbaa !26
  %indvars.iv.next.i23.2 = add nuw nsw i64 %indvars.iv.i22, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next.i23.2
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !26
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i23.2
  store i32 %i.by, ptr %gep.i.3, align 4, !tbaa !26
  %indvars.iv.next.i23.3 = add nuw nsw i64 %indvars.iv.i22, 4 ; 2 uses
  %exitcond.not.i24.3 = icmp eq i64 %indvars.iv.next.i23.3, %wide.trip.count.i21
  br i1 %exitcond.not.i24.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !132

_ZN11CStringBaseIwE6InsertEiRKS0_.exit:           ; preds = %_ZN11CStringBaseIwE6DeleteEii.exit, %._crit_edge.i
  %i.bz = phi i32 [ %i.at, %_ZN11CStringBaseIwE6DeleteEii.exit ], [ %i.bq, %._crit_edge.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ca = add nsw i32 %.2.i, %i.k                 ; 2 uses
  %i.cb = add nuw nsw i32 %.01831, 1              ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.bz
  br i1 %i.cc, label %.lr.ph, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread, !llvm.loop !133

_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread:     ; preds = %_ZNK11CStringBaseIwE4FindERKS0_i.exit, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit, %.preheader23.i, %.critedge.us.thread.i, %bb.c, %bb.b, %bb.a
  %.019 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.01831, %.critedge.us.thread.i ], [ 0, %bb.c ], [ %.01831, %_ZNK11CStringBaseIwE4FindERKS0_i.exit ], [ %i.cb, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit ], [ %.01831, %.preheader23.i ]
  ret i32 %.019
}

declare void @_Z16GetCorrectFsPathRK11CStringBaseIwE(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory22CreateComplexDirectoryEPKw(ptr noundef) local_unnamed_addr #2

declare void @_ZN23CArchiveExtractCallback4InitEPKN9NWildcard11CCensorNodeEPK4CArcP29IFolderArchiveExtractCallbackbbbRK11CStringBaseIwERK13CObjectVectorISA_Ey(ptr noundef nonnull align 8 dereferenceable(332), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef i32 @_Z13SetPropertiesP8IUnknownRK13CObjectVectorI9CPropertyE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef i64 @_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIjED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11CStringBaseIwE11InsertSpaceERii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !72   ; 4 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK11CStringBaseIwE12CorrectIndexERi.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %1, align 4, !tbaa !4
  %.pr = load i32, ptr %i.b, align 8, !tbaa !72
  br label %_ZNK11CStringBaseIwE12CorrectIndexERi.exit

_ZNK11CStringBaseIwE12CorrectIndexERi.exit:       ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = phi i32 [ %i.c, %bb.a ], [ %.pr, %bb.b ] ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28   ; 7 uses
  %i.i = xor i32 %i.f, -1
  %i.j = add i32 %i.h, %i.i                       ; 3 uses
  %.not.i = icmp sgt i32 %2, %i.j
  br i1 %.not.i, label %bb.c, label %_ZN11CStringBaseIwE10GrowLengthEi.exit

bb.c:                                             ; preds = %_ZNK11CStringBaseIwE12CorrectIndexERi.exit
  %i.k = icmp sgt i32 %i.h, 64
  %i.l = lshr i32 %i.h, 1
  %i.m = icmp sgt i32 %i.h, 8
  %..i = select i1 %i.m, i32 16, i32 4
  %.0.i = select i1 %i.k, i32 %i.l, i32 %..i      ; 2 uses
  %i.n = add nsw i32 %.0.i, %i.j
  %i.o = icmp slt i32 %i.n, %2
  %i.p = sub nsw i32 %2, %i.j
  %.1.i = select i1 %i.o, i32 %i.p, i32 %.0.i
  %i.q = add nsw i32 %.1.i, %i.h                  ; 2 uses
  %i.r = add nsw i32 %i.q, 1                      ; 3 uses
  %i.s = icmp eq i32 %i.r, %i.h
  br i1 %i.s, label %_ZN11CStringBaseIwE10GrowLengthEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i32 %i.r to i64
  %i.u = icmp slt i32 %i.q, -1
  %i.v = shl nuw nsw i64 %i.t, 2
  %i.w = select i1 %i.u, i64 -1, i64 %i.v
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #15 ; 9 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = icmp sgt i32 %i.h, 0
  br i1 %i.z, label %.preheader.i.i, label %bb.e

.preheader.i.i:                                   ; preds = %bb.d
  %i.aa = icmp sgt i32 %i.f, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !25 ; 9 uses
  br i1 %i.aa, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i12 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.f to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %i.ab = sub i64 %.pre.i.i12, %i.y
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !26
  %wide.load13 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !26
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %wide.load, ptr %i.ae, align 4, !tbaa !26
  store <4 x i32> %wide.load13, ptr %i.af, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i.prol
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !26
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !135

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ak = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.am = icmp eq ptr %.pre.i.i, null
  br i1 %i.am, label %bb.e, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !26
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !26
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !26
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !26
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !26
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.1
  store i32 %i.au, ptr %i.av, align 4, !tbaa !26
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !26
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.2
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !26
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !136

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #17
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.d
  %i.az = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %i.f, %._crit_edge.i.i ], [ %i.f, %bb.d ] ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !25
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ba
  store i32 0, ptr %i.bb, align 4, !tbaa !26
  store i32 %i.r, ptr %i.g, align 4, !tbaa !28
  %.pre = load i32, ptr %1, align 4, !tbaa !4
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit

_ZN11CStringBaseIwE10GrowLengthEi.exit:           ; preds = %_ZNK11CStringBaseIwE12CorrectIndexERi.exit, %bb.c, %bb.e
  %i.bc = phi i32 [ %i.f, %_ZNK11CStringBaseIwE12CorrectIndexERi.exit ], [ %i.f, %bb.c ], [ %i.az, %bb.e ]
  %i.bd = phi i32 [ %i.e, %_ZNK11CStringBaseIwE12CorrectIndexERi.exit ], [ %i.e, %bb.c ], [ %.pre, %bb.e ] ; 3 uses
  %i.be = add nsw i32 %i.bd, %2
  %i.bf = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bi
  %reass.sub = sub i32 %i.bc, %i.bd
  %i.bk = add i32 %reass.sub, 1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 2
end_hunk_0
