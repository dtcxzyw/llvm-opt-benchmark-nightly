inline.NumInlined: 9031
inline.NumDeleted: 2243
begin_hunk_0_@_ZN6Assimp3FBX4Node17WritePropertyNodeISt6vectorIhSaIhEEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RNS_12StreamWriterILb0ELb0EEEbi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i7, label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit8

_ZN6Assimp3FBX17FBXExportPropertyD2Ev.exit8:      ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i2 = icmp eq ptr %i.b, %i.d
  br i1 %.not.i2, label %_ZSt8_DestroyIPN6Assimp3FBX4NodeEEvT_S4_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i3 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.0.i3) #31, !inline_history !344
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i3, i64 112 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i, label %_ZSt8_DestroyIPN6Assimp3FBX4NodeEEvT_S4_.exit.i.loopexit, label %.lr.ph, !llvm.loop !6

_ZSt8_DestroyIPN6Assimp3FBX4NodeEEvT_S4_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPN6Assimp3FBX4NodeEEvT_S4_.exit.i

_ZSt8_DestroyIPN6Assimp3FBX4NodeEEvT_S4_.exit.i:  ; preds = %_ZSt8_DestroyIPN6Assimp3FBX4NodeEEvT_S4_.exit.i.loopexit, %bb.a
  %i.f = phi ptr [ %.pre, %_ZSt8_DestroyIPN6Assimp3FBX4NodeEEvT_S4_.exit.i.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3FBX4NodeEEvT_S4_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #32, !inline_history !8
  br label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3FBX4NodeEEvT_S4_.exit.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3FBX17FBXExportPropertyES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6Assimp3FBX17FBXExportPropertyEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN6Assimp3FBX17FBXExportPropertyEEvPT_.exit.i.i.i ], [ %i.m, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3FBX17FBXExportPropertyEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #32
  br label %_ZSt8_DestroyIN6Assimp3FBX17FBXExportPropertyEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3FBX17FBXExportPropertyEEvPT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, %i.o
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN6Assimp3FBX17FBXExportPropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !345

_ZSt8_DestroyIPN6Assimp3FBX17FBXExportPropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp3FBX17FBXExportPropertyEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.l, align 8
  br label %_ZSt8_DestroyIPN6Assimp3FBX17FBXExportPropertyES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3FBX17FBXExportPropertyES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3FBX17FBXExportPropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp3FBX17FBXExportPropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.m, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3FBX17FBXExportPropertyES2_EvT_S4_RSaIT0_E.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #32
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3FBX17FBXExportPropertyES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.ad = load ptr, ptr %0, align 8               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z12WritePropIntPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.aiString, align 4           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  %i.g = and i64 %i.d, 4294966272
  %.not.i.i = icmp eq i64 %i.g, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.e, i32 1023 ; 2 uses
  %i.h = load ptr, ptr %2, align 8
  %i.i = zext i32 %spec.select.i.i to i64         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 1 %i.h, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  store i8 0, ptr %i.j, align 1
  %i.k = load i32, ptr %i.b, align 8              ; 2 uses
  %.not.i3.i = icmp eq i32 %i.k, 0
  br i1 %.not.i3.i, label %.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %wide.trip.count.i.i = zext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK8aiStringeqERKS_.exit.thread.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [1028 x i8], ptr %i.m, i64 %indvars.iv.i.i ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, %spec.select.i.i
  br i1 %i.p, label %_ZNK8aiStringeqERKS_.exit.i.i, label %_ZNK8aiStringeqERKS_.exit.thread.i.i

_ZNK8aiStringeqERKS_.exit.i.i:                    ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.q, ptr nonnull %i.f, i64 %i.i)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %bb.d, label %_ZNK8aiStringeqERKS_.exit.thread.i.i

bb.d:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.i.i ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %.not7.i.i.i = icmp eq i32 %i.v, 1
  br i1 %.not7.i.i.i, label %bb.e, label %.sink.split

_ZNK8aiStringeqERKS_.exit.thread.i.i:             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i, %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.sink.split, label %bb.c, !llvm.loop !51

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i32, ptr %i.x, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i, %bb.b, %bb.d, %bb.e
  %.sink.ph = phi i32 [ %i.y, %bb.e ], [ %3, %bb.b ], [ %3, %bb.d ], [ %3, %_ZNK8aiStringeqERKS_.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i32 [ %3, %bb.a ], [ %.sink.ph, %.sink.split ]
  tail call void @_ZN6Assimp3FBX4Node9AddP70intERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.sink)
  ret void
}

declare void @_ZN6Assimp3FBX4Node9AddP70intERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_Z15WritePropDoublePK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.aiString, align 4           ; 6 uses
  %5 = alloca %struct.aiString, align 4           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  %i.g = and i64 %i.d, 4294966272
  %.not.i.i = icmp eq i64 %i.g, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.e, i32 1023 ; 3 uses
  %i.h = load ptr, ptr %2, align 8                ; 3 uses
  %i.i = zext i32 %spec.select.i.i to i64         ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 1 %i.h, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  store i8 0, ptr %i.j, align 1
  %i.k = load i32, ptr %i.b, align 8              ; 3 uses
  %.not.i3.i = icmp eq i32 %i.k, 0
  br i1 %.not.i3.i, label %_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %wide.trip.count.i.i = zext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK8aiStringeqERKS_.exit.thread.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [1028 x i8], ptr %i.m, i64 %indvars.iv.i.i ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, %spec.select.i.i
  br i1 %i.p, label %_ZNK8aiStringeqERKS_.exit.i.i, label %_ZNK8aiStringeqERKS_.exit.thread.i.i

_ZNK8aiStringeqERKS_.exit.i.i:                    ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.q, ptr nonnull %i.f, i64 %i.i)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %bb.d, label %_ZNK8aiStringeqERKS_.exit.thread.i.i

bb.d:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.i.i ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %.not7.i.i.i = icmp eq i32 %i.v, 4
  br i1 %.not7.i.i.i, label %bb.e, label %.thread30

_ZNK8aiStringeqERKS_.exit.thread.i.i:             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i, %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.thread30, label %bb.c, !llvm.loop !346

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load double, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.thread

.thread30:                                        ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.z, i8 0, i64 1024, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 1 %i.h, i64 %i.i, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.i
  store i8 0, ptr %i.aa, align 1
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %7 = load ptr, ptr %6, align 8
  %wide.trip.count.i.i19 = zext i32 %i.k to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i21, %.thread30
  %indvars.iv.i.i20 = phi i64 [ 0, %.thread30 ], [ %indvars.iv.next.i.i22, %_ZNK8aiStringeqERKS_.exit.thread.i.i21 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [1028 x i8], ptr %7, i64 %indvars.iv.i.i20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.ac, %spec.select.i.i
  br i1 %i.ad, label %_ZNK8aiStringeqERKS_.exit.i.i24, label %_ZNK8aiStringeqERKS_.exit.thread.i.i21

_ZNK8aiStringeqERKS_.exit.i.i24:                  ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %bcmp.i.i.i25 = call i32 @bcmp(ptr nonnull %i.ae, ptr nonnull %i.z, i64 %i.i)
  %i.af = icmp eq i32 %bcmp.i.i.i25, 0
  br i1 %i.af, label %bb.g, label %_ZNK8aiStringeqERKS_.exit.thread.i.i21

bb.g:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.i.i20 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %.not7.i.i.i26 = icmp eq i32 %i.aj, 3
  br i1 %.not7.i.i.i26, label %bb.h, label %_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread

_ZNK8aiStringeqERKS_.exit.thread.i.i21:           ; preds = %_ZNK8aiStringeqERKS_.exit.i.i24, %bb.f
  %indvars.iv.next.i.i22 = add nuw nsw i64 %indvars.iv.i.i20, 1 ; 2 uses
  %exitcond.not.i.i23 = icmp eq i64 %indvars.iv.next.i.i22, %wide.trip.count.i.i19
  br i1 %exitcond.not.i.i23, label %_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread, label %bb.f, !llvm.loop !347

_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread.critedge: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %8, ptr align 1 %i.h, i64 %i.i, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %i.i
  store i8 0, ptr %9, align 1
  br label %_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread

_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread: ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i21, %_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load float, ptr %i.al, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.an = fpext float %i.am to double
  br label %.thread

.thread:                                          ; preds = %_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread, %bb.a, %bb.h, %bb.e
  %.sink = phi double [ %i.an, %bb.h ], [ %i.y, %bb.e ], [ %3, %bb.a ], [ %3, %_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread ]
  tail call void @_ZN6Assimp3FBX4Node12AddP70doubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %.sink)
  ret void
}

declare void @_ZN6Assimp3FBX4Node12AddP70doubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_Z13WritePropEnumPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.aiString, align 4           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  %i.g = and i64 %i.d, 4294966272
  %.not.i.i = icmp eq i64 %i.g, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.e, i32 1023 ; 2 uses
  %i.h = load ptr, ptr %2, align 8
  %i.i = zext i32 %spec.select.i.i to i64         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 1 %i.h, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  store i8 0, ptr %i.j, align 1
  %i.k = load i32, ptr %i.b, align 8              ; 2 uses
  %.not.i3.i = icmp eq i32 %i.k, 0
  br i1 %.not.i3.i, label %.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %wide.trip.count.i.i = zext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK8aiStringeqERKS_.exit.thread.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [1028 x i8], ptr %i.m, i64 %indvars.iv.i.i ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, %spec.select.i.i
  br i1 %i.p, label %_ZNK8aiStringeqERKS_.exit.i.i, label %_ZNK8aiStringeqERKS_.exit.thread.i.i

_ZNK8aiStringeqERKS_.exit.i.i:                    ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.q, ptr nonnull %i.f, i64 %i.i)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %bb.d, label %_ZNK8aiStringeqERKS_.exit.thread.i.i

bb.d:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.i.i ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %.not7.i.i.i = icmp eq i32 %i.v, 1
  br i1 %.not7.i.i.i, label %bb.e, label %.sink.split

_ZNK8aiStringeqERKS_.exit.thread.i.i:             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i, %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.sink.split, label %bb.c, !llvm.loop !51

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i32, ptr %i.x, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i, %bb.b, %bb.d, %bb.e
  %.sink.ph = phi i32 [ %i.y, %bb.e ], [ %3, %bb.b ], [ %3, %bb.d ], [ %3, %_ZNK8aiStringeqERKS_.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i32 [ %3, %bb.a ], [ %.sink.ph, %.sink.split ]
  tail call void @_ZN6Assimp3FBX4Node10AddP70enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.sink)
  ret void
}

declare void @_ZN6Assimp3FBX4Node10AddP70enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_Z14WritePropColorPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfE(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.aiString, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  %i.g = and i64 %i.d, 4294966272
  %.not.i.i = icmp eq i64 %i.g, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.e, i32 1023 ; 2 uses
  %i.h = load ptr, ptr %2, align 8
  %i.i = zext i32 %spec.select.i.i to i64         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 1 %i.h, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  store i8 0, ptr %i.j, align 1
  %i.k = load i32, ptr %i.b, align 8              ; 2 uses
  %.not.i3.i = icmp eq i32 %i.k, 0
  br i1 %.not.i3.i, label %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %wide.trip.count.i.i = zext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK8aiStringeqERKS_.exit.thread.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [1028 x i8], ptr %i.m, i64 %indvars.iv.i.i ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, %spec.select.i.i
  br i1 %i.p, label %_ZNK8aiStringeqERKS_.exit.i.i, label %_ZNK8aiStringeqERKS_.exit.thread.i.i

_ZNK8aiStringeqERKS_.exit.i.i:                    ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.q, ptr nonnull %i.f, i64 %i.i)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %bb.d, label %_ZNK8aiStringeqERKS_.exit.thread.i.i

bb.d:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.i.i ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %.not7.i.i.i = icmp eq i32 %i.v, 6
  br i1 %.not7.i.i.i, label %bb.e, label %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread

_ZNK8aiStringeqERKS_.exit.thread.i.i:             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i, %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread, label %bb.c, !llvm.loop !348

_ZNK10aiMetadata3GetI10aiVector3tIfEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread: ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %.sroa.0.0.copyload = load float, ptr %i.x, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.y = fpext float %.sroa.0.0.copyload to double
  %i.z = fpext float %.sroa.5.0.copyload to double
  %i.aa = fpext float %.sroa.7.0.copyload to double
  tail call void @_ZN6Assimp3FBX4Node11AddP70colorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddd(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.y, double noundef %i.z, double noundef %i.aa)
  br label %bb.g

bb.f:                                             ; preds = %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread, %bb.a
  %i.ab = load float, ptr %3, align 4
  %i.ac = fpext float %i.ab to double
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = fpext float %i.ae to double
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load float, ptr %i.ag, align 4
  %i.ai = fpext float %i.ah to double
  tail call void @_ZN6Assimp3FBX4Node11AddP70colorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddd(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.ac, double noundef %i.af, double noundef %i.ai)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN6Assimp3FBX4Node11AddP70colorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddd(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), double noundef, double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_Z15WritePropStringPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.aiString, align 4           ; 4 uses
end_hunk_0
