Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/mutable-page-metadata?download=true
inline.NumInlined: 282
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal19MutablePageMetadata44ReleaseAllocatedMemoryNeededForWritableChunkEv:bb.a
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i48

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i48: ; preds = %bb.i, %.lr.ph.i.i46
  %i.cd = add nuw i64 %.07.i.i47, 1               ; 2 uses
  %i.ce = load i64, ptr %i.bx, align 8
  %i.cf = icmp ult i64 %i.cd, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i46, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i49, !llvm.loop !0

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i49: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i48, %.preheader.i.i44
  tail call void @free(ptr noundef nonnull %i.bx) #16
  br label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit50

_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit50: ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit42, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i49
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %.not.i51 = icmp eq ptr %i.ch, null
  br i1 %.not.i51, label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit58, label %.preheader.i.i52

.preheader.i.i52:                                 ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit50
  store ptr null, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -8 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8
  %.not.i.i53 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i53, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i57, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %.preheader.i.i52, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56
  %.07.i.i55 = phi i64 [ %i.co, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56 ], [ 0, %.preheader.i.i52 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.07.i.i55 ; 2 uses
  %i.cl = load atomic volatile i64, ptr %i.ck acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.ck release, align 8
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i54
  %i.cn = inttoptr i64 %i.cl to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56: ; preds = %bb.j, %.lr.ph.i.i54
  %i.co = add nuw i64 %.07.i.i55, 1               ; 2 uses
  %i.cp = load i64, ptr %i.ci, align 8
  %i.cq = icmp ult i64 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph.i.i54, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i57, !llvm.loop !0

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i57: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56, %.preheader.i.i52
  tail call void @free(ptr noundef nonnull %i.ci) #16
  br label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit58

_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit58: ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit50, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i57
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %.not.i59 = icmp eq ptr %i.cs, null
  br i1 %.not.i59, label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit58
  store ptr null, ptr %i.cr, align 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %i.cs) #16, !inline_history !12
  br label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit

_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit: ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit58, %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 3 uses
  %.not.i60 = icmp eq ptr %i.cx, null
  br i1 %.not.i60, label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit61, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit
  store ptr null, ptr %i.cw, align 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(32) %i.cx) #16, !inline_history !12
  br label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit61

_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit61: ; preds = %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit, %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 3 uses
  %.not.i62 = icmp eq ptr %i.dc, null
  br i1 %.not.i62, label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit63, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit61
  store ptr null, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(32) %i.dc) #16, !inline_history !12
  br label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit63

_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit63: ; preds = %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit61, %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = and i32 %i.dh, 8
  %.not = icmp eq i32 %i.di, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit63
  tail call void @_ZN2v88internal12PageMetadata25ReleaseFreeListCategoriesEv(ptr noundef nonnull align 8 dereferenceable(4448) %0) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  store ptr null, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i
  %.07.i = phi i64 [ %i.k, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.07.i ; 2 uses
  %i.h = load atomic volatile i64, ptr %i.g acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.g release, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = inttoptr i64 %i.h to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.l = load i64, ptr %i.e, align 8
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, !llvm.loop !0

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.e) #16
  br label %bb.c

bb.c:                                             ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN2v88internal12PageMetadata25ReleaseFreeListCategoriesEv(ptr noundef nonnull align 8 dereferenceable(4448)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata25ReleaseAllAllocatedMemoryEv(ptr noundef nonnull align 8 dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal19MutablePageMetadata44ReleaseAllocatedMemoryNeededForWritableChunkEv(ptr noundef nonnull align 8 dereferenceable(4448) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal19MutablePageMetadata15AllocateSlotSetENS0_17RememberedSetTypeE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 8191
  %i.e = lshr i64 %i.d, 13                        ; 3 uses
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.h = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef %i.g) #16
  %.not.i.i.i = icmp ne i32 %i.h, 0
  %.pre.i.i.i = load ptr, ptr %i.a, align 8       ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.not12.i.i = icmp eq ptr %.pre.i.i.i, null
  %.not.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not12.i.i
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.pre.i.i.i, i64 8 ; 5 uses
  store i64 %i.e, ptr %.pre.i.i.i, align 8
  %.not14.i.i = icmp eq i64 %i.e, 0
  br i1 %.not14.i.i, label %_ZN2v88internal7SlotSet8AllocateEm.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.f, i1 false)
  br label %_ZN2v88internal7SlotSet8AllocateEm.exit

_ZN2v88internal7SlotSet8AllocateEm.exit:          ; preds = %bb.c, %.lr.ph.preheader.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = zext i32 %1 to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = cmpxchg volatile ptr %i.l, i64 0, i64 %i.m acq_rel acquire, align 8 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %.not = extractvalue { i64, i1 } %i.n, 1
  br i1 %.not, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7SlotSet8AllocateEm.exit
  %i.q = icmp eq ptr %i.i, null
  br i1 %i.q, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.r = load i64, ptr %.pre.i.i.i, align 8
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %.pre.i.i.i) #16
  br label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i
  %.07.i = phi i64 [ %i.w, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i ; 2 uses
  %i.t = load atomic volatile i64, ptr %i.s acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.s release, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = inttoptr i64 %i.t to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.w = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.x = load i64, ptr %.pre.i.i.i, align 8
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit: ; preds = %._crit_edge.i, %bb.d, %_ZN2v88internal7SlotSet8AllocateEm.exit
  %.0 = phi ptr [ %i.i, %_ZN2v88internal7SlotSet8AllocateEm.exit ], [ %i.p, %bb.d ], [ %i.p, %._crit_edge.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal19MutablePageMetadata20AllocateTypedSlotSetENS0_17RememberedSetTypeE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -262144
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal12TypedSlotSetE, i64 16), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = cmpxchg volatile ptr %i.i, i64 0, i64 %i.j release monotonic, align 8 ; 2 uses
  %.not = extractvalue { i64, i1 } %i.k, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = extractvalue { i64, i1 } %i.k, 0
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.m, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal19MutablePageMetadata16ContainsAnySlotsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %.thread

bb.b:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8
  %.not8.7 = icmp ne ptr %i.d, null
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load <2 x ptr>, ptr %i.e, align 8
  %i.h = load <2 x ptr>, ptr %i.f, align 8
  %i.i = shufflevector <2 x ptr> %i.g, <2 x ptr> %i.h, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %.fr = freeze <4 x ptr> %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load <2 x ptr>, ptr %i.j, align 8
  %i.m = load <2 x ptr>, ptr %i.k, align 8
  %i.n = shufflevector <2 x ptr> %i.l, <2 x ptr> %i.m, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %.fr39 = freeze <4 x ptr> %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load <2 x ptr>, ptr %i.o, align 8
  %i.r = load <2 x ptr>, ptr %i.p, align 8
  %i.s = shufflevector <2 x ptr> %i.q, <2 x ptr> %i.r, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %.fr40 = freeze <4 x ptr> %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.u = load ptr, ptr %i.t, align 8
  %.fr41 = freeze ptr %i.u
  %.not8.6 = icmp eq ptr %.fr41, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = load ptr, ptr %i.v, align 8
  %.not.7 = icmp eq ptr %i.w, null
  %i.x = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.y = icmp ne <4 x ptr> %.fr39, splat (ptr null)
  %i.z = or <4 x i1> %i.x, %i.y
  %i.aa = icmp ne <4 x ptr> %.fr40, splat (ptr null)
  %i.ab = or <4 x i1> %i.z, %i.aa
  %i.ac = bitcast <4 x i1> %i.ab to i4
  %i.ad = icmp eq i4 %i.ac, 0
  %op.rdx = and i1 %i.ad, %.not8.6
  %op.rdx38 = select i1 %op.rdx, i1 %.not.7, i1 false
  br i1 %op.rdx38, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %bb.c
  %.lcssa = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ %.not8.7, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal19MutablePageMetadata22ComputeFreeListsLengthEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %.not9 = icmp slt i32 %i.f, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.06.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.d ]
  ret i32 %.06.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.0610 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.j, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef i32 @_ZN2v88internal16FreeListCategory14FreeListLengthEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #16
  %i.l = add nsw i32 %i.k, %.0610
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.l, %bb.c ], [ %.0610, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.m = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = sext i32 %i.q to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.r
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !14
}

declare noundef i32 @_ZN2v88internal16FreeListCategory14FreeListLengthEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal19MutablePageMetadata15IsLivenessClearEv(ptr noundef nonnull align 8 dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_ZNK2v88internal13MarkingBitmap7IsCleanEv(ptr noundef nonnull align 8 dereferenceable(4096) %i.a) #16
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = tail call noundef zeroext i1 @_ZNK2v88internal13MarkingBitmap7IsCleanEv(ptr noundef nonnull align 8 dereferenceable(4096) %i.a) #16
  ret i1 %i.e
}

declare noundef zeroext i1 @_ZNK2v88internal13MarkingBitmap7IsCleanEv(ptr noundef nonnull align 8 dereferenceable(4096)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata22SetFlagMaybeExecutableENS0_11MemoryChunk4FlagE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 16
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  %.not = xor i1 %i.e, true
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !7
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not7 = icmp eq i32 %i.h, -1
  br i1 %.not7, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.h, i32 noundef 0) #16
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit:  ; preds = %bb.b, %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, %1                          ; 2 uses
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, -262144
  %i.o = inttoptr i64 %i.n to ptr
  store i64 %i.k, ptr %i.o, align 262144
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !7, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  %.not3 = xor i1 %i.q, true
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !7
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond5 = select i1 %.not3, i1 true, i1 %i.s
  br i1 %or.cond5, label %bb.e, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.e:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not8 = icmp eq i32 %i.t, -1
  br i1 %.not8, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.t, i32 noundef 2) #16
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = or i64 %i.v, %1                          ; 2 uses
  store i64 %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, -262144
  %i.aa = inttoptr i64 %i.z to ptr
  store i64 %i.w, ptr %i.aa, align 262144
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit:    ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata24ClearFlagMaybeExecutableENS0_11MemoryChunk4FlagE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 16
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  %.not = xor i1 %i.e, true
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !7
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not7 = icmp eq i32 %i.h, -1
  br i1 %.not7, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.h, i32 noundef 0) #16
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit:  ; preds = %bb.b, %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.j = xor i64 %1, -1
  %i.k = load i64, ptr %i.i, align 8
  %i.l = and i64 %i.k, %i.j                       ; 2 uses
  store i64 %i.l, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, -262144
  %i.p = inttoptr i64 %i.o to ptr
  store i64 %i.l, ptr %i.p, align 262144
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !7, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  %.not3 = xor i1 %i.r, true
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !7
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond5 = select i1 %.not3, i1 true, i1 %i.t
  br i1 %or.cond5, label %bb.e, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.e:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not8 = icmp eq i32 %i.u, -1
  br i1 %.not8, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.u, i32 noundef 2) #16
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.w = xor i64 %1, -1
  %i.x = load i64, ptr %i.v, align 8
  %i.y = and i64 %i.x, %i.w                       ; 2 uses
  store i64 %i.y, ptr %i.v, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, -262144
  %i.ac = inttoptr i64 %i.ab to ptr
  store i64 %i.y, ptr %i.ac, align 262144
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit:    ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata17MarkNeverEvacuateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = or i32 %i.b, 512
  store i32 %i.c, ptr %i.a, align 8
  ret void
}

declare void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN2v88internal11AlignedFreeEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN2v88internal10TypedSlotsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12TypedSlotSetD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal10TypedSlotsD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

declare void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !"_ZSt11make_uniqueIN4heap4base17ActiveSystemPagesEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!10 = distinct !{!10, !9, !"_ZSt11make_uniqueIN4heap4base17ActiveSystemPagesEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!11 = !{!10}
!12 = !{ptr @_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = distinct !{!14, !6}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
