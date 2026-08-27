Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/libraw_datastream?download=true
inline.NumInlined: 79
inline.NumDeleted: 36
begin_hunk_0_@_ZN26LibRaw_abstract_datastream8jpeg_srcEPv:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN24LibRaw_buffer_datastreamC2EPKvm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV24LibRaw_buffer_datastream, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.c, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN24LibRaw_buffer_datastreamD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(32) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN24LibRaw_buffer_datastreamD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN24LibRaw_buffer_datastreamD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN24LibRaw_buffer_datastream4readEPvmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = mul i64 %3, %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !124  ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.f) ; 4 uses
  %i.g = icmp eq i64 %spec.select, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.j, i64 %spec.select, i1 false)
  %i.k = load i64, ptr %i.d, align 8, !tbaa !124
  %i.l = add i64 %i.k, %spec.select
  store i64 %i.l, ptr %i.d, align 8, !tbaa !124
  %i.m = add i64 %2, -1
  %i.n = add i64 %i.m, %spec.select
  %i.o = tail call i64 @llvm.umax.i64(i64 %2, i64 1)
  %i.p = udiv i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.012 = phi i32 [ %i.q, %bb.b ], [ 0, %bb.a ]
  ret i32 %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @_ZN24LibRaw_buffer_datastream4seekExi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #7 align 2 {
bb.a:
  switch i32 %2, label %bb.t [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !124
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  %i.e = icmp ugt i64 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.d, ptr %i.f, align 8, !tbaa !124
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  store i64 %1, ptr %i.f, align 8, !tbaa !124
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %1, 0
  br i1 %i.g, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.h = sub nsw i64 0, %1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %.not19 = icmp ugt i64 %i.j, %i.h
  br i1 %.not19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.i, align 8, !tbaa !124
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.k = add i64 %i.j, %1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !124
  br label %bb.t

bb.k:                                             ; preds = %bb.g
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !124
  %i.n = add i64 %i.m, %1                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.p, ptr %i.l, align 8, !tbaa !124
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  store i64 %i.n, ptr %i.l, align 8, !tbaa !124
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  %i.r = icmp sgt i64 %1, 0
  br i1 %i.r, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !125
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.u, align 8, !tbaa !124
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.v = sub nsw i64 0, %1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !125  ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.v
  br i1 %i.y, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !tbaa !124
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.aa = add i64 %i.x, %1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !124
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.p, %bb.s, %bb.r, %bb.j, %bb.i, %bb.m, %bb.n, %bb.k, %bb.c, %bb.f, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN24LibRaw_buffer_datastream4tellEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN24LibRaw_buffer_datastream4getsEPci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !125  ; 2 uses
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %.lr.ph, label %bb.i

.lr.ph:                                           ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !121  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d ; 3 uses
  %3 = ptrtoint ptr %i.h to i64                   ; 2 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = add nsw i32 %2, -1                       ; 2 uses
  %i.k = zext nneg i32 %i.j to i64                ; 3 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %.not88 = icmp eq i32 %i.j, 0
  br i1 %.not88, label %.critedge, label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.m = sub i64 %i.y, %i.i
  %i.n = icmp slt i64 %i.m, %i.k
  br i1 %i.n, label %bb.d, label %.critedge, !llvm.loop !126

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.o = phi i64 [ %i.y, %bb.c ], [ %i.l, %.lr.ph ]
  %.0232873 = phi ptr [ %i.s, %bb.c ], [ %i.h, %.lr.ph ] ; 3 uses
  %.02972 = phi ptr [ %i.t, %bb.c ], [ %1, %.lr.ph ] ; 3 uses
  %i.p = phi i64 [ %i.u, %bb.c ], [ %3, %.lr.ph ]
  %i.q = load i8, ptr %.0232873, align 1, !tbaa !128 ; 2 uses
  store i8 %i.q, ptr %.02972, align 1, !tbaa !128
  %i.r = icmp eq i8 %i.q, 10
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !121 ; 4 uses
  %.pre40.pre = load i64, ptr %i.e, align 8, !tbaa !125 ; 4 uses
  br i1 %i.r, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.0232873, i64 1 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02972, i64 1 ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 4 uses
  %i.v = ptrtoint ptr %.pre.pre to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, %.pre40.pre
  %i.y = ptrtoint ptr %i.t to i64                 ; 4 uses
  br i1 %i.x, label %bb.c, label %..critedge.loopexit_crit_edge, !llvm.loop !126

..critedge.loopexit_crit_edge:                    ; preds = %bb.e
  br label %.critedge, !llvm.loop !126

.critedge:                                        ; preds = %bb.d, %bb.c, %.lr.ph, %..critedge.loopexit_crit_edge
  %.pre54.pre-phi = phi i64 [ %i.y, %..critedge.loopexit_crit_edge ], [ %i.l, %.lr.ph ], [ %i.y, %bb.c ], [ %i.o, %bb.d ]
  %.pre40 = phi i64 [ %.pre40.pre, %..critedge.loopexit_crit_edge ], [ %i.f, %.lr.ph ], [ %.pre40.pre, %bb.c ], [ %.pre40.pre, %bb.d ]
  %.pre = phi ptr [ %.pre.pre, %..critedge.loopexit_crit_edge ], [ %i.g, %.lr.ph ], [ %.pre.pre, %bb.c ], [ %.pre.pre, %bb.d ]
  %.023.lcssa.ph = phi ptr [ %i.s, %..critedge.loopexit_crit_edge ], [ %i.h, %.lr.ph ], [ %i.s, %bb.c ], [ %.0232873, %bb.d ]
  %.0.lcssa.ph = phi ptr [ %i.t, %..critedge.loopexit_crit_edge ], [ %1, %.lr.ph ], [ %i.t, %bb.c ], [ %.02972, %bb.d ]
  %.lcssa.ph = phi i64 [ %i.u, %..critedge.loopexit_crit_edge ], [ %3, %.lr.ph ], [ %i.u, %bb.c ], [ %i.p, %bb.d ]
  %.pre45 = ptrtoint ptr %.pre to i64
  %.pre46 = sub i64 %.lcssa.ph, %.pre45
  %i.z = icmp ult i64 %.pre46, %.pre40
  %i.aa = zext i1 %i.z to i64
  %i.ab = sub i64 %.pre54.pre-phi, %i.i
  %i.ac = icmp slt i64 %i.ab, %i.k
  %spec.select = getelementptr inbounds nuw i8, ptr %.023.lcssa.ph, i64 %i.aa
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.ph, i64 1
  store i8 0, ptr %i.ad, align 1, !tbaa !128
  br label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store i8 0, ptr %i.ae, align 1, !tbaa !128
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.ag = ptrtoint ptr %spec.select to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !124
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.a
  %.125 = phi ptr [ null, %bb.a ], [ %1, %bb.h ], [ null, %bb.b ]
  ret ptr %.125
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN24LibRaw_buffer_datastream9scanf_oneEPKcPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !125
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = tail call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.h, ptr noundef %1, ptr noundef %2) #20 ; 8 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.k = load i64, ptr %i.c, align 8, !tbaa !125
  %i.l = add i64 %i.k, -1                         ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !124 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.l)
  %exitcond.not16.not = icmp ult i64 %.promoted, %i.l
  br i1 %exitcond.not16.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !121
  br label %.lr.ph

bb.c:                                             ; preds = %bb.d
  %i.n = add nuw nsw i32 %.017, 1
  %exitcond.not = icmp eq i64 %i.p, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !129

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.017 = phi i32 [ %i.n, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.o = phi i64 [ %i.p, %bb.c ], [ %.promoted, %.lr.ph.preheader ]
  %i.p = add i64 %i.o, 1                          ; 4 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !124
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !128   ; 2 uses
  switch i8 %i.r, label %bb.d [
    i8 0, label %.loopexit
    i8 32, label %.loopexit
    i8 9, label %.loopexit
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.s = icmp eq i8 %i.r, 10
  %i.t = icmp samesign ugt i32 %.017, 23
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %..loopexit.loopexit_crit_edge18, label %bb.c, !llvm.loop !129

..loopexit.loopexit_crit_edge18:                  ; preds = %bb.d
  br label %.loopexit, !llvm.loop !129

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %.lr.ph, %.lr.ph, %.preheader, %..loopexit.loopexit_crit_edge18, %bb.b, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ], [ %i.i, %..loopexit.loopexit_crit_edge18 ], [ %i.i, %.preheader ], [ %i.i, %.lr.ph ], [ %i.i, %.lr.ph ], [ %i.i, %.lr.ph ], [ %i.i, %bb.c ]
  ret i32 %.08
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_ZN24LibRaw_buffer_datastream3eofEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !125
  %i.e = icmp uge i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_ZN24LibRaw_buffer_datastream5validEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %.not = icmp ne ptr %i.b, null
  %i.c = zext i1 %.not to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN24LibRaw_buffer_datastream8jpeg_srcEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !125
  %i.h = sub i64 %i.g, %i.d
  tail call void @jpeg_mem_src(ptr noundef %1, ptr noundef %i.e, i64 noundef %i.h)
  ret i32 0
}

declare void @jpeg_mem_src(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN25LibRaw_bigfile_datastreamC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV25LibRaw_bigfile_datastream, i64 16), ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !130
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #22
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.e, ptr %i.a, align 8, !tbaa !132
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !133
  %i.h = load i64, ptr %i.a, align 8, !tbaa !132
  store i64 %i.h, ptr %i.c, align 8, !tbaa !128
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !128
  store i8 %i.j, ptr %i.i, align 1, !tbaa !128
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !135
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.o = load i64, ptr %i.l, align 8, !tbaa !135
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.q = call i32 @stat64(ptr noundef %i.p, ptr noundef nonnull %2) #20
  %.not4 = icmp eq i32 %i.q, 0
end_hunk_0
