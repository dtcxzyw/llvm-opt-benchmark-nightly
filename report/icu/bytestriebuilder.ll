Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/bytestriebuilder?download=true
inline.NumInlined: 76
inline.NumDeleted: 32
begin_hunk_0_@_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi:bb.a
  %.012 = phi i32 [ %i.g, %.preheader ], [ %i.e, %bb.b ]
  %i.g = shl nsw i32 %.012, 1                     ; 5 uses
  %.not = icmp sgt i32 %i.g, %1
  br i1 %.not, label %bb.c, label %.preheader, !llvm.loop !0

bb.c:                                             ; preds = %.preheader
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.h) #20 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33   ; 3 uses
  %i.m = sub nsw i32 %i.g, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 %i.n
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.q = load i32, ptr %i.d, align 8, !tbaa !35
  %i.r = sub nsw i32 %i.q, %i.l
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = sext i32 %i.l to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %.thread
  %.sink24 = phi ptr [ %i.p, %.thread ], [ %i.v, %bb.d ]
  %.sink = phi ptr [ %i.i, %.thread ], [ null, %bb.d ]
  %.lcssa.sink = phi i32 [ %i.g, %.thread ], [ 0, %bb.d ]
  %.1.ph = phi i8 [ 1, %.thread ], [ 0, %bb.d ]
  tail call void @uprv_free_78(ptr noundef %.sink24)
  store ptr %.sink, ptr %i.a, align 8, !tbaa !32
  store i32 %.lcssa.sink, ptr %i.d, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.1 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i8 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7816BytesTrieBuilder5writeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35   ; 3 uses
  %.not8 = icmp slt i32 %i.b, %i.h
  br i1 %.not8, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread5, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.012.i = phi i32 [ %i.i, %.preheader.i ], [ %i.h, %bb.b ]
  %i.i = shl nsw i32 %.012.i, 1                   ; 6 uses
  %.not.i = icmp sgt i32 %i.i, %i.c
  br i1 %.not.i, label %bb.c, label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %.preheader.i
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.j) #20 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread13, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread13: ; preds = %bb.c
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !32
  tail call void @uprv_free_78(ptr noundef %i.m)
  store ptr %i.k, ptr %i.d, align 8, !tbaa !32
  store i32 0, ptr %i.g, align 8, !tbaa !35
  br label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit: ; preds = %bb.c
  %i.n = load i32, ptr %i.a, align 4, !tbaa !33   ; 3 uses
  %i.o = sub nsw i32 %i.i, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %i.p
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.s = load i32, ptr %i.g, align 8, !tbaa !35
  %i.t = sub nsw i32 %i.s, %i.n
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  %i.w = sext i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.v, i64 %i.w, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.r)
  store ptr %i.k, ptr %i.d, align 8, !tbaa !32
  store i32 %i.i, ptr %i.g, align 8, !tbaa !35
  br label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread5

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread5: ; preds = %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit, %bb.b
  %i.x = phi i32 [ %i.h, %bb.b ], [ %i.i, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit ]
  %i.y = phi ptr [ %i.e, %bb.b ], [ %i.k, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit ]
  store i32 %i.c, ptr %i.a, align 4, !tbaa !33
  %i.z = trunc i32 %1 to i8
  %i.aa = sub nsw i32 %i.x, %i.c
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  store i8 %i.z, ptr %i.ac, align 1, !tbaa !20
  br label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread: ; preds = %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread13, %bb.a, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread5
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !33
  ret i32 %i.ad
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7816BytesTrieBuilder17writeElementUnitsEiii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = load i32, ptr %i.d, align 4, !tbaa !17
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !19
  %.012.i.p = tail call i32 @llvm.abs.i32(i32 %i.g, i1 false)
  %.012.i = add nuw i32 %.012.i.p, 1
  %i.i = zext nneg i32 %.012.i to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %i.o = add nsw i32 %i.n, %3                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit, label %bb.a

bb.a:                                             ; preds = %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !35   ; 3 uses
  %i.u = icmp sgt i32 %i.o, %i.t
  br i1 %i.u, label %.preheader.i.i, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.012.i.i = phi i32 [ %i.v, %.preheader.i.i ], [ %i.t, %bb.a ]
  %i.v = shl nsw i32 %.012.i.i, 1                 ; 6 uses
  %.not.i.i = icmp sgt i32 %i.v, %i.o
  br i1 %.not.i.i, label %bb.b, label %.preheader.i.i, !llvm.loop !0

bb.b:                                             ; preds = %.preheader.i.i
  %i.w = sext i32 %i.v to i64
  %i.x = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.w) #20 ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread15.i, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread15.i: ; preds = %bb.b
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !32
  tail call void @uprv_free_78(ptr noundef %i.z)
  store ptr null, ptr %i.p, align 8, !tbaa !32
  store i32 0, ptr %i.s, align 8, !tbaa !35
  br label %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i: ; preds = %bb.b
  %i.aa = load i32, ptr %i.m, align 4, !tbaa !33  ; 3 uses
  %i.ab = sub nsw i32 %i.v, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %i.ac
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !32  ; 2 uses
  %i.af = load i32, ptr %i.s, align 8, !tbaa !35
  %i.ag = sub nsw i32 %i.af, %i.aa
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = sext i32 %i.aa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.ai, i64 %i.aj, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.ae)
  store ptr %i.x, ptr %i.p, align 8, !tbaa !32
  store i32 %i.v, ptr %i.s, align 8, !tbaa !35
  br label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i: ; preds = %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i, %bb.a
  %i.ak = phi i32 [ %i.t, %bb.a ], [ %i.v, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i ]
  %i.al = phi ptr [ %i.q, %bb.a ], [ %i.x, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i ]
  store i32 %i.o, ptr %i.m, align 4, !tbaa !33
  %i.am = sub nsw i32 %i.ak, %i.o
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  %i.ap = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull readonly align 1 %i.l, i64 %i.ap, i1 false)
  br label %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit

_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit:     ; preds = %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread15.i, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i
  %i.aq = load i32, ptr %i.m, align 4, !tbaa !33
  ret i32 %i.aq
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7816BytesTrieBuilder18writeValueAndFinalEia(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i8 noundef signext %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 8 uses
  %or.cond = icmp ult i32 %1, 65
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 %1, 1
  %i.c = add nuw nsw i32 %i.b, 32
  %i.d = sext i8 %2 to i32
  %i.e = or i32 %i.c, %i.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.e)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %or.cond3 = icmp ugt i32 %1, 16777215
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %i.j, align 1, !tbaa !20
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i32 %1, 6912
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = lshr i32 %1, 8
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = add nuw nsw i8 %i.m, 81
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.o = icmp samesign ult i32 %1, 1179648
  %i.p = lshr i32 %1, 16
  %i.q = trunc nuw i32 %i.p to i8                 ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = add nuw nsw i8 %i.q, 108
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.q, ptr %i.s, align 1, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi i8 [ %i.r, %bb.h ], [ 126, %bb.i ]
  %.0 = phi i32 [ 1, %bb.h ], [ 2, %bb.i ]        ; 2 uses
  %i.t = lshr i32 %1, 8
  %i.u = trunc i32 %i.t to i8
  %i.v = add nuw nsw i32 %.0, 1
  %i.w = zext nneg i32 %.0 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  store i8 %i.u, ptr %i.x, align 1, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.y = phi i8 [ %i.n, %bb.f ], [ %.sink, %bb.j ]
  %.1 = phi i32 [ 1, %bb.f ], [ %i.v, %bb.j ]     ; 2 uses
  %i.z = trunc i32 %1 to i8
  %i.aa = add nuw nsw i32 %.1, 1
  %i.ab = zext nneg i32 %.1 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  store i8 %i.z, ptr %i.ac, align 1, !tbaa !20
  %i.ad = shl nuw i8 %i.y, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %i.ae = phi i8 [ -2, %bb.d ], [ %i.ad, %bb.k ]
  %.2 = phi i32 [ 5, %bb.d ], [ %i.aa, %bb.k ]    ; 2 uses
  %i.af = or i8 %i.ae, %2
  store i8 %i.af, ptr %i.a, align 1, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.ai = add nsw i32 %i.ah, %.2                  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !35 ; 3 uses
  %i.ao = icmp sgt i32 %i.ai, %i.an
  br i1 %i.ao, label %.preheader.i.i, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.012.i.i = phi i32 [ %i.ap, %.preheader.i.i ], [ %i.an, %bb.m ]
  %i.ap = shl nsw i32 %.012.i.i, 1                ; 6 uses
  %.not.i.i = icmp sgt i32 %i.ap, %i.ai
  br i1 %.not.i.i, label %bb.n, label %.preheader.i.i, !llvm.loop !0

bb.n:                                             ; preds = %.preheader.i.i
  %i.aq = sext i32 %i.ap to i64
  %i.ar = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.aq) #20 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread15.i, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread15.i: ; preds = %bb.n
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !32
  tail call void @uprv_free_78(ptr noundef %i.at)
  store ptr null, ptr %i.aj, align 8, !tbaa !32
  store i32 0, ptr %i.am, align 8, !tbaa !35
  br label %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i: ; preds = %bb.n
  %i.au = load i32, ptr %i.ag, align 4, !tbaa !33 ; 3 uses
  %i.av = sub nsw i32 %i.ap, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.ar, i64 %i.aw
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !32 ; 2 uses
  %i.az = load i32, ptr %i.am, align 8, !tbaa !35
  %i.ba = sub nsw i32 %i.az, %i.au
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  %i.bd = sext i32 %i.au to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %i.bc, i64 %i.bd, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.ay)
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !32
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !35
  br label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i: ; preds = %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i, %bb.m
  %i.be = phi i32 [ %i.an, %bb.m ], [ %i.ap, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i ]
  %i.bf = phi ptr [ %i.ak, %bb.m ], [ %i.ar, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i ]
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !33
  %i.bg = sub nsw i32 %i.be, %i.ai
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh
  %i.bj = zext nneg i32 %.2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.a, i64 %i.bj, i1 false)
  br label %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit

_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit:     ; preds = %bb.l, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread15.i, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i
  %i.bk = load i32, ptr %i.ag, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit, %bb.b
  %.025 = phi i32 [ %i.i, %bb.b ], [ %i.bk, %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit ]
  ret i32 %.025
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7816BytesTrieBuilder17writeValueAndTypeEaii(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %3)
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %2, i8 noundef signext 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7816BytesTrieBuilder12writeDeltaToEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %i.d = sub nsw i32 %i.c, %1                     ; 11 uses
  %i.e = icmp slt i32 %i.d, 192
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.d)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.j = icmp samesign ult i32 %i.d, 12288
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i32 %i.d, 8
  %i.l = trunc nuw nsw i32 %i.k to i8
  %i.m = or disjoint i8 %i.l, -64
  store i8 %i.m, ptr %i.a, align 1, !tbaa !20
  br label %_ZN6icu_7816BytesTrieBuilder19internalEncodeDeltaEiPc.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i32 %i.d, 917504
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = lshr i32 %i.d, 16
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  store i8 %i.q, ptr %i.a, align 1, !tbaa !20
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.r = icmp samesign ult i32 %i.d, 16777216
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = lshr i32 %i.d, 24
  %i.t = trunc nuw nsw i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.i = phi i8 [ -1, %bb.h ], [ -2, %bb.g ]
end_hunk_0
begin_hunk_1_@_ZN6icu_7816BytesTrieBuilder12writeDeltaToEi:bb.a
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6icu_7816BytesTrieBuilder19internalEncodeDeltaEiPc.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !35 ; 3 uses
  %i.ap = icmp sgt i32 %i.aj, %i.ao
  br i1 %i.ap, label %.preheader.i.i, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i

.preheader.i.i:                                   ; preds = %bb.k, %.preheader.i.i
  %.012.i.i = phi i32 [ %i.aq, %.preheader.i.i ], [ %i.ao, %bb.k ]
  %i.aq = shl nsw i32 %.012.i.i, 1                ; 6 uses
  %.not.i.i = icmp sgt i32 %i.aq, %i.aj
  br i1 %.not.i.i, label %bb.l, label %.preheader.i.i, !llvm.loop !0

bb.l:                                             ; preds = %.preheader.i.i
  %i.ar = sext i32 %i.aq to i64
  %i.as = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ar) #20 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread15.i, label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread15.i: ; preds = %bb.l
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !32
  tail call void @uprv_free_78(ptr noundef %i.au)
  store ptr null, ptr %i.ak, align 8, !tbaa !32
  store i32 0, ptr %i.an, align 8, !tbaa !35
  br label %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i: ; preds = %bb.l
  %i.av = load i32, ptr %i.b, align 4, !tbaa !33  ; 3 uses
  %i.aw = sub nsw i32 %i.aq, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 %i.ax
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %i.ba = load i32, ptr %i.an, align 8, !tbaa !35
  %i.bb = sub nsw i32 %i.ba, %i.av
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc
  %i.be = sext i32 %i.av to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.bd, i64 %i.be, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.az)
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !32
  store i32 %i.aq, ptr %i.an, align 8, !tbaa !35
  br label %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i

_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i: ; preds = %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i, %bb.k
  %i.bf = phi i32 [ %i.ao, %bb.k ], [ %i.aq, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i ]
  %i.bg = phi ptr [ %i.al, %bb.k ], [ %i.as, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.i ]
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !33
  %i.bh = sub nsw i32 %i.bf, %i.aj
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi
  %i.bk = zext nneg i32 %i.ag to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.a, i64 %i.bk, i1 false)
  br label %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit

_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit:     ; preds = %_ZN6icu_7816BytesTrieBuilder19internalEncodeDeltaEiPc.exit, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread15.i, %_ZN6icu_7816BytesTrieBuilder14ensureCapacityEi.exit.thread7.i
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.bl, %_ZN6icu_7816BytesTrieBuilder5writeEPKci.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef range(i32 1, 6) i32 @_ZN6icu_7816BytesTrieBuilder19internalEncodeDeltaEiPc(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 192
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i32 %0 to i8
  store i8 %i.b, ptr %1, align 1, !tbaa !20
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %0, 12288
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %0, 8
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  store i8 %i.f, ptr %1, align 1, !tbaa !20
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = icmp samesign ult i32 %0, 917504
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = lshr i32 %0, 16
  %i.i = trunc nuw nsw i32 %i.h to i8
  %i.j = or disjoint i8 %i.i, -16
  store i8 %i.j, ptr %1, align 1, !tbaa !20
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.k = icmp samesign ult i32 %0, 16777216
  br i1 %i.k, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = lshr i32 %0, 24
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi i8 [ -1, %bb.h ], [ -2, %bb.g ]
  %.0 = phi i32 [ 2, %bb.h ], [ 1, %bb.g ]        ; 2 uses
  store i8 %.sink, ptr %1, align 1, !tbaa !20
  %i.o = lshr i32 %0, 16
  %i.p = trunc i32 %i.o to i8
  %i.q = add nuw nsw i32 %.0, 1
  %i.r = zext nneg i32 %.0 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  store i8 %i.p, ptr %i.s, align 1, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.1 = phi i32 [ 1, %bb.f ], [ %i.q, %bb.i ]     ; 2 uses
  %i.t = lshr i32 %0, 8
  %i.u = trunc i32 %i.t to i8
  %i.v = add nuw nsw i32 %.1, 1
  %i.w = zext nneg i32 %.1 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  store i8 %i.u, ptr %i.x, align 1, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %.2 = phi i32 [ 1, %bb.d ], [ %i.v, %bb.j ]     ; 2 uses
  %i.y = trunc i32 %0 to i8
  %i.z = add nuw nsw i32 %.2, 1
  %i.aa = zext nneg i32 %.2 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.024 = phi i32 [ 1, %bb.b ], [ %i.z, %bb.k ]
  ret i32 %.024
}

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef signext i8 @_ZNK6icu_7816BytesTrieBuilder23matchNodesCanHaveValuesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK6icu_7816BytesTrieBuilder31getMaxBranchLinearSubNodeLengthEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK6icu_7816BytesTrieBuilder17getMinLinearMatchEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 16
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK6icu_7816BytesTrieBuilder23getMaxLinearMatchLengthEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 16
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7816BytesTrieBuilder17BTLinearMatchNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

declare noundef i32 @_ZN6icu_7817StringTrieBuilder15LinearMatchNode19markRightEdgesFirstEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !36}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTS10UErrorCode", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSN6icu_7815MaybeStackArrayIcLi40EEE", !12, i64 0, !6, i64 8, !5, i64 12, !5, i64 13}
!14 = !{!"_ZTSN6icu_7810CharStringE", !13, i64 0, !6, i64 56}
!15 = !{!14, !6, i64 56}
!16 = !{!"_ZTSN6icu_7816BytesTrieElementE", !6, i64 0, !6, i64 4}
!17 = !{!16, !6, i64 0}
!18 = !{!16, !6, i64 4}
!19 = !{!13, !12, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!"vtable pointer", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!13, !5, i64 12}
!24 = !{!"_ZTSN6icu_787UObjectE"}
!25 = !{!"p1 _ZTS10UHashtable", !11, i64 0}
!26 = !{!"_ZTSN6icu_7817StringTrieBuilderE", !24, i64 0, !25, i64 8}
!27 = !{!"p1 _ZTSN6icu_7810CharStringE", !11, i64 0}
!28 = !{!"p1 _ZTSN6icu_7816BytesTrieElementE", !11, i64 0}
!29 = !{!"_ZTSN6icu_7816BytesTrieBuilderE", !26, i64 0, !27, i64 16, !28, i64 24, !6, i64 32, !6, i64 36, !12, i64 40, !6, i64 48, !6, i64 52}
!30 = !{!29, !27, i64 16}
!31 = !{!29, !28, i64 24}
!32 = !{!29, !12, i64 40}
!33 = !{!29, !6, i64 52}
!34 = !{!29, !6, i64 36}
!35 = !{!29, !6, i64 48}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"_ZTSN6icu_7817StringTrieBuilder4NodeE", !24, i64 0, !6, i64 8, !6, i64 12}
!38 = !{!37, !6, i64 12}
!39 = !{!"_ZTSN6icu_7817StringTrieBuilder9ValueNodeE", !37, i64 0, !5, i64 16, !6, i64 20}
!40 = !{!"p1 _ZTSN6icu_7817StringTrieBuilder4NodeE", !11, i64 0}
!41 = !{!"_ZTSN6icu_7817StringTrieBuilder15LinearMatchNodeE", !39, i64 0, !6, i64 24, !40, i64 32}
!42 = !{!41, !6, i64 24}
!43 = !{!41, !40, i64 32}
!44 = !{!"_ZTSN6icu_7816BytesTrieBuilder17BTLinearMatchNodeE", !41, i64 0, !12, i64 40}
!45 = !{!44, !12, i64 40}
!46 = !{!13, !6, i64 8}
!47 = !{!29, !6, i64 32}
!48 = !{!"_ZTSN6icu_789BytesTrieE", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24}
!49 = !{!48, !12, i64 0}
!50 = !{!48, !12, i64 8}
!51 = !{!48, !12, i64 16}
!52 = !{!48, !6, i64 24}
!53 = distinct !{!53, !36}
!54 = distinct !{!54, !36}
!55 = distinct !{!55, !36}
!56 = distinct !{!56, !36}
!57 = distinct !{!57, !36}
!58 = distinct !{!58, !36}
!59 = !{!37, !6, i64 8}
!60 = !{!39, !5, i64 16}
!61 = !{!39, !6, i64 20}
end_hunk_1
