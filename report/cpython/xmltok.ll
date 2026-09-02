Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/xmltok?download=true
inline.NumInlined: 156
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@normal_scanAtts:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @utf8_toUtf8(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 5 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp sgt i64 %i.d, %i.h                  ; 2 uses
  %i.j = getelementptr i8, ptr %i.a, i64 %i.h
  %spec.select = select i1 %i.i, ptr %i.j, ptr %2 ; 6 uses
  %i.k = icmp ugt ptr %spec.select, %i.a
  br i1 %i.k, label %.lr.ph.preheader.i, label %_INTERNAL_trim_to_complete_utf8_characters.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.l = ptrtoaddr ptr %spec.select to i64
  %i.m = sub i64 %i.c, %i.l
  %scevgep.i = getelementptr i8, ptr %spec.select, i64 %i.m
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.01831.i = phi i64 [ %i.ag, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.01930.i = phi ptr [ %i.n, %bb.k ], [ %spec.select, %.lr.ph.preheader.i ] ; 5 uses
  %i.n = getelementptr i8, ptr %.01930.i, i64 -1  ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16    ; 2 uses
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = and i32 %i.p, 248
  %i.r = icmp eq i32 %i.q, 240
  br i1 %i.r, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = add i64 %.01831.i, -3
  %i.t = icmp ult i64 %i.s, -4
  br i1 %i.t, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %.01930.i, i64 3
  br label %_INTERNAL_trim_to_complete_utf8_characters.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.v = and i32 %i.p, 240
  %i.w = icmp eq i32 %i.v, 224
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = add i64 %.01831.i, -2
  %i.y = icmp ult i64 %i.x, -3
  br i1 %i.y, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %.01930.i, i64 2
  br label %_INTERNAL_trim_to_complete_utf8_characters.exit

bb.g:                                             ; preds = %bb.d
  %i.aa = and i32 %i.p, 224
  %i.ab = icmp eq i32 %i.aa, 192
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = add i64 %.01831.i, -1
  %i.ad = icmp ult i64 %i.ac, -2
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %.01930.i, i64 1
  br label %_INTERNAL_trim_to_complete_utf8_characters.exit

bb.j:                                             ; preds = %bb.g
  %i.af = icmp sgt i8 %i.o, -1
  br i1 %i.af, label %_INTERNAL_trim_to_complete_utf8_characters.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e, %bb.b
  %.2.ph.i = phi i64 [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.b ], [ %.01831.i, %bb.j ]
  %i.ag = add i64 %.2.ph.i, 1
  %i.ah = icmp ugt ptr %i.n, %i.a
  br i1 %i.ah, label %.lr.ph.i, label %_INTERNAL_trim_to_complete_utf8_characters.exit, !llvm.loop !0

_INTERNAL_trim_to_complete_utf8_characters.exit:  ; preds = %bb.j, %bb.k, %bb.a, %bb.c, %bb.f, %bb.i
  %.221.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %bb.c ], [ %i.ae, %bb.i ], [ %spec.select, %bb.a ], [ %.01930.i, %bb.j ], [ %scevgep.i, %bb.k ] ; 2 uses
  %i.ai = icmp ult ptr %.221.i, %spec.select
  %i.aj = ptrtoint ptr %.221.i to i64
  %i.ak = sub i64 %i.aj, %i.c                     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %i.a, i64 %i.ak, i1 false)
  %i.al = load ptr, ptr %1, align 8, !tbaa !15
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  store ptr %i.am, ptr %1, align 8, !tbaa !15
  %i.an = load ptr, ptr %3, align 8, !tbaa !15
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ak
  store ptr %i.ao, ptr %3, align 8, !tbaa !15
  %. = zext i1 %i.ai to i32
  %.0 = select i1 %i.i, i32 2, i32 %.
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @utf8_toUtf16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #9 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !26     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.c = icmp ult ptr %i.b, %2                    ; 2 uses
  %i.d = icmp ult ptr %i.a, %4
  %i.e = select i1 %i.c, i1 %i.d, i1 false
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 136
  %i.g = ptrtoint ptr %4 to i64
  %i.h = ptrtoint ptr %2 to i64                   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.04668 = phi ptr [ %i.b, %.lr.ph ], [ %.2, %bb.k ] ; 18 uses
  %.04767 = phi ptr [ %i.a, %.lr.ph ], [ %.249, %bb.k ] ; 14 uses
  %i.i = load i8, ptr %.04668, align 1, !tbaa !16 ; 5 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  switch i8 %i.l, label %bb.j [
    i8 5, label %bb.c
    i8 6, label %bb.e
    i8 7, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %.04668 to i64
  %i.n = sub i64 %i.h, %i.m
  %i.o = icmp slt i64 %i.n, 2
  br i1 %i.o, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = and i8 %i.i, 31
  %i.q = zext nneg i8 %i.p to i16
  %i.r = shl nuw nsw i16 %i.q, 6
  %i.s = getelementptr i8, ptr %.04668, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16
  %i.u = and i8 %i.t, 63
  %i.v = zext nneg i8 %i.u to i16
  %i.w = or disjoint i16 %i.r, %i.v
  %i.x = getelementptr i8, ptr %.04767, i64 2
  store i16 %i.w, ptr %.04767, align 2, !tbaa !19
  %i.y = getelementptr i8, ptr %.04668, i64 2
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.z = ptrtoint ptr %.04668 to i64
  %i.aa = sub i64 %i.h, %i.z
  %i.ab = icmp slt i64 %i.aa, 3
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = zext i8 %i.i to i16
  %i.ad = shl i16 %i.ac, 12
  %i.ae = getelementptr i8, ptr %.04668, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = and i8 %i.af, 63
  %i.ah = zext nneg i8 %i.ag to i16
  %i.ai = shl nuw nsw i16 %i.ah, 6
  %i.aj = or disjoint i16 %i.ai, %i.ad
  %i.ak = getelementptr i8, ptr %.04668, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = and i8 %i.al, 63
  %i.an = zext nneg i8 %i.am to i16
  %i.ao = or disjoint i16 %i.aj, %i.an
  %i.ap = getelementptr i8, ptr %.04767, i64 2
  store i16 %i.ao, ptr %.04767, align 2, !tbaa !19
  %i.aq = getelementptr i8, ptr %.04668, i64 3
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.ar = ptrtoint ptr %.04767 to i64
  %i.as = sub i64 %i.g, %i.ar
  %i.at = icmp slt i64 %i.as, 3
  br i1 %i.at, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = ptrtoint ptr %.04668 to i64
  %i.av = sub i64 %i.h, %i.au
  %i.aw = icmp slt i64 %i.av, 4
  br i1 %i.aw, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = and i8 %i.i, 7
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 18
  %i.ba = getelementptr i8, ptr %.04668, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 12
  %i.bf = getelementptr i8, ptr %.04668, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = and i8 %i.bg, 63
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 6                ; 2 uses
  %i.bk = getelementptr i8, ptr %.04668, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.bm = and i8 %i.bl, 63
  %5 = zext nneg i8 %i.bm to i64
  %i.bn = add nuw nsw i64 %i.az, 16711680
  %i.bo = add nuw nsw i64 %i.bn, %i.be
  %i.bp = or disjoint i64 %i.bo, %i.bj
  %i.bq = lshr i64 %i.bp, 10
  %i.br = trunc nuw nsw i64 %i.bq to i16
  %i.bs = or i16 %i.br, -10240
  store i16 %i.bs, ptr %.04767, align 2, !tbaa !19
  %6 = or disjoint i64 %i.bj, %5
  %7 = trunc nuw nsw i64 %6 to i16
  %i.bt = or i16 %7, -9216
  %i.bu = getelementptr i8, ptr %.04767, i64 2
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !19
  %i.bv = getelementptr i8, ptr %.04767, i64 4
  %i.bw = getelementptr i8, ptr %.04668, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.bx = getelementptr i8, ptr %.04668, i64 1
  %i.by = sext i8 %i.i to i16
  %i.bz = getelementptr i8, ptr %.04767, i64 2
  store i16 %i.by, ptr %.04767, align 2, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f, %bb.d
  %.249 = phi ptr [ %i.bz, %bb.j ], [ %i.x, %bb.d ], [ %i.ap, %bb.f ], [ %i.bv, %bb.i ] ; 3 uses
  %.2 = phi ptr [ %i.bx, %bb.j ], [ %i.y, %bb.d ], [ %i.aq, %bb.f ], [ %i.bw, %bb.i ] ; 3 uses
  %i.ca = icmp ult ptr %.2, %2                    ; 2 uses
  %i.cb = icmp ult ptr %.249, %4
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.b, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.047.lcssa = phi ptr [ %i.a, %bb.a ], [ %.249, %bb.k ]
  %.046.lcssa = phi ptr [ %i.b, %bb.a ], [ %.2, %bb.k ]
  %.lcssa = phi i1 [ %i.c, %bb.a ], [ %i.ca, %bb.k ]
  %spec.select = select i1 %.lcssa, i32 2, i32 0
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %._crit_edge
  %.04766 = phi ptr [ %.047.lcssa, %._crit_edge ], [ %.04767, %bb.c ], [ %.04767, %bb.e ], [ %.04767, %bb.g ], [ %.04767, %bb.h ]
  %.04664 = phi ptr [ %.046.lcssa, %._crit_edge ], [ %.04668, %bb.c ], [ %.04668, %bb.e ], [ %.04668, %bb.g ], [ %.04668, %bb.h ]
  %.354 = phi i32 [ %spec.select, %._crit_edge ], [ 1, %bb.h ], [ 2, %bb.g ], [ 1, %bb.e ], [ 1, %bb.c ]
  store ptr %.04664, ptr %1, align 8, !tbaa !15
  store ptr %.04766, ptr %3, align 8, !tbaa !26
  ret i32 %.354
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, -2147483647) i32 @utf8_isName2(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !16
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr i8, ptr @namePages, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 3
  %i.j = shl nuw nsw i32 %i.b, 1
  %i.k = and i32 %i.j, 6
  %i.l = or disjoint i32 %i.i, %i.k
  %i.m = getelementptr i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = lshr i32 %i.o, 5
  %i.q = and i32 %i.p, 1
  %i.r = or disjoint i32 %i.q, %i.l
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr @namingBitmap, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12
  %i.v = and i32 %i.o, 31
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, %i.u
  ret i32 %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, -2147483647) i32 @utf8_isName3(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !16
  %i.b = shl i8 %i.a, 4
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = lshr i32 %i.f, 2
  %i.h = and i32 %i.g, 15
  %i.i = or disjoint i32 %i.h, %i.c
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr i8, ptr @namePages, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 3
  %i.o = shl nuw nsw i32 %i.f, 1
  %i.p = and i32 %i.o, 6
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = getelementptr i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = lshr i32 %i.t, 5
  %i.v = and i32 %i.u, 1
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr [4 x i8], ptr @namingBitmap, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12
  %i.aa = and i32 %i.t, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.z
  ret i32 %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @isNever(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, -2147483647) i32 @utf8_isNmstrt2(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !16
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr i8, ptr @nmstrtPages, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 3
  %i.j = shl nuw nsw i32 %i.b, 1
  %i.k = and i32 %i.j, 6
  %i.l = or disjoint i32 %i.i, %i.k
  %i.m = getelementptr i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = lshr i32 %i.o, 5
  %i.q = and i32 %i.p, 1
  %i.r = or disjoint i32 %i.q, %i.l
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr @namingBitmap, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12
  %i.v = and i32 %i.o, 31
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, %i.u
  ret i32 %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, -2147483647) i32 @utf8_isNmstrt3(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !16
  %i.b = shl i8 %i.a, 4
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = lshr i32 %i.f, 2
  %i.h = and i32 %i.g, 15
  %i.i = or disjoint i32 %i.h, %i.c
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr i8, ptr @nmstrtPages, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 3
  %i.o = shl nuw nsw i32 %i.f, 1
  %i.p = and i32 %i.o, 6
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = getelementptr i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = lshr i32 %i.t, 5
  %i.v = and i32 %i.u, 1
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr [4 x i8], ptr @namingBitmap, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12
  %i.aa = and i32 %i.t, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.z
  ret i32 %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @utf8_isInvalid2(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !16
  %i.b = icmp ult i8 %i.a, -62
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16    ; 2 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i8 %i.d, -65
  %i.g = zext i1 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %i.g, %bb.c ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @utf8_isInvalid3(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
end_hunk_0
begin_hunk_1_@little2_updatePosition:bb.a
unicode_byte_type.exit:                           ; preds = %bb.b
  %i.i = load i8, ptr %.033, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr i8, ptr %i.e, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  switch i8 %i.l, label %unicode_byte_type.exit.thread [
    i8 5, label %bb.c
    i8 6, label %bb.d
    i8 7, label %unicode_byte_type.exit.thread36
    i8 10, label %bb.e
    i8 9, label %bb.f
  ]

bb.c:                                             ; preds = %unicode_byte_type.exit
  %i.m = getelementptr i8, ptr %.033, i64 2
  %i.n = load i64, ptr %i.f, align 8, !tbaa !38
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.f, align 8, !tbaa !38
  br label %bb.h

bb.d:                                             ; preds = %unicode_byte_type.exit
  %i.p = getelementptr i8, ptr %.033, i64 3
  %i.q = load i64, ptr %i.f, align 8, !tbaa !38
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.f, align 8, !tbaa !38
  br label %bb.h

unicode_byte_type.exit.thread36:                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %unicode_byte_type.exit
  %i.s = getelementptr i8, ptr %.033, i64 4
  %i.t = load i64, ptr %i.f, align 8, !tbaa !38
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.f, align 8, !tbaa !38
  br label %bb.h

bb.e:                                             ; preds = %unicode_byte_type.exit
  store i64 0, ptr %i.f, align 8, !tbaa !38
  %i.v = load i64, ptr %3, align 8, !tbaa !39
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %3, align 8, !tbaa !39
  %i.x = getelementptr i8, ptr %.033, i64 2
  br label %bb.h

bb.f:                                             ; preds = %unicode_byte_type.exit
  %i.y = load i64, ptr %3, align 8, !tbaa !39
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %3, align 8, !tbaa !39
  %i.aa = getelementptr i8, ptr %.033, i64 2      ; 5 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.a, %i.ab
  %i.ad = icmp sgt i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %unicode_byte_type.exit31.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %.033, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %cond = icmp eq i8 %i.af, 0
  br i1 %cond, label %unicode_byte_type.exit31, label %unicode_byte_type.exit31.thread

unicode_byte_type.exit31:                         ; preds = %bb.g
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr i8, ptr %i.e, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %.fr = freeze i8 %i.aj
  %i.ak = icmp eq i8 %.fr, 10
  %i.al = getelementptr i8, ptr %.033, i64 4
  %spec.select = select i1 %i.ak, ptr %i.al, ptr %i.aa
  br label %unicode_byte_type.exit31.thread

unicode_byte_type.exit31.thread:                  ; preds = %unicode_byte_type.exit31, %bb.g, %bb.f
  %.1 = phi ptr [ %i.aa, %bb.f ], [ %i.aa, %bb.g ], [ %spec.select, %unicode_byte_type.exit31 ]
  store i64 0, ptr %i.f, align 8, !tbaa !38
  br label %bb.h

unicode_byte_type.exit.thread:                    ; preds = %bb.b, %unicode_byte_type.exit
  %i.am = getelementptr i8, ptr %.033, i64 2
  %i.an = load i64, ptr %i.f, align 8, !tbaa !38
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.f, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %unicode_byte_type.exit.thread, %unicode_byte_type.exit31.thread, %bb.e, %unicode_byte_type.exit.thread36, %bb.d, %bb.c
  %.2 = phi ptr [ %i.am, %unicode_byte_type.exit.thread ], [ %i.m, %bb.c ], [ %i.p, %bb.d ], [ %i.s, %unicode_byte_type.exit.thread36 ], [ %i.x, %bb.e ], [ %.1, %unicode_byte_type.exit31.thread ] ; 2 uses
  %i.ap = ptrtoint ptr %.2 to i64
  %i.aq = sub i64 %i.a, %i.ap
  %i.ar = icmp sgt i64 %i.aq, 1
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @little2_isPublicId(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 -2
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %.02024 = getelementptr i8, ptr %1, i64 2       ; 2 uses
  %i.c = ptrtoint ptr %.02024 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.02026 = phi ptr [ %.02024, %.lr.ph ], [ %.020, %bb.e ] ; 6 uses
  %.pn25 = phi ptr [ %1, %.lr.ph ], [ %.02026, %bb.e ]
  %i.g = getelementptr i8, ptr %.pn25, i64 3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %unicode_byte_type.exit, label %.loopexit.sink.split

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.j = load i8, ptr %.02026, align 1, !tbaa !16 ; 3 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr i8, ptr %i.f, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  switch i8 %i.m, label %.critedge..critedge.thread_crit_edge [
    i8 25, label %bb.e
    i8 24, label %bb.e
    i8 27, label %bb.e
    i8 13, label %bb.e
    i8 31, label %bb.e
    i8 32, label %bb.e
    i8 34, label %bb.e
    i8 35, label %bb.e
    i8 17, label %bb.e
    i8 14, label %bb.e
    i8 15, label %bb.e
    i8 9, label %bb.e
    i8 10, label %bb.e
    i8 18, label %bb.e
    i8 16, label %bb.e
    i8 33, label %bb.e
    i8 30, label %bb.e
    i8 19, label %bb.e
    i8 23, label %bb.e
    i8 21, label %bb.c
    i8 26, label %bb.d
    i8 22, label %bb.d
  ]

bb.c:                                             ; preds = %unicode_byte_type.exit
  %i.n = load i8, ptr %.02026, align 1, !tbaa !16
  %i.o = icmp eq i8 %i.n, 9
  br i1 %i.o, label %.loopexit.sink.split, label %bb.e

bb.d:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit
  %i.p = icmp slt i8 %i.j, 0
  br i1 %i.p, label %.critedge.thread, label %bb.e

.critedge..critedge.thread_crit_edge:             ; preds = %unicode_byte_type.exit
  %.pre = load i8, ptr %.02026, align 1, !tbaa !16
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge..critedge.thread_crit_edge, %bb.d
  %i.q = phi i8 [ %.pre, %.critedge..critedge.thread_crit_edge ], [ %i.j, %bb.d ]
  switch i8 %i.q, label %.loopexit.sink.split [
    i8 36, label %bb.e
    i8 64, label %bb.e
  ]

bb.e:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %bb.c, %bb.d, %.critedge.thread, %.critedge.thread
  %.020 = getelementptr i8, ptr %.02026, i64 2    ; 2 uses
  %i.r = ptrtoint ptr %.020 to i64
  %i.s = sub i64 %i.b, %i.r
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !111

.loopexit.sink.split:                             ; preds = %bb.b, %.critedge.thread, %bb.c
  store ptr %.02026, ptr %3, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.loopexit.sink.split ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @little2_toUtf8(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 5 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = and i64 %i.d, -2
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %i.g = icmp ult ptr %i.a, %i.f
  br i1 %i.g, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.h = ptrtoint ptr %4 to i64                   ; 3 uses
  %i.i = ptrtoint ptr %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.06579 = phi ptr [ %i.a, %.lr.ph ], [ %i.by, %bb.m ] ; 13 uses
  %i.j = load i8, ptr %.06579, align 1, !tbaa !16 ; 8 uses
  %i.k = getelementptr i8, ptr %.06579, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16    ; 5 uses
  %5 = zext i8 %i.l to i32
  switch i8 %i.l, label %bb.h [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.f
    i8 3, label %bb.f
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 6, label %bb.f
    i8 7, label %bb.f
    i8 -40, label %bb.j
    i8 -39, label %bb.j
    i8 -38, label %bb.j
    i8 -37, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = icmp sgt i8 %i.j, -1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8, !tbaa !15     ; 3 uses
  %i.o = icmp eq ptr %i.n, %4
  br i1 %i.o, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.n, i64 1
  store ptr %i.p, ptr %3, align 8, !tbaa !15
  store i8 %i.j, ptr %i.n, align 1, !tbaa !16
  br label %bb.m

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = load ptr, ptr %3, align 8, !tbaa !15     ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.h, %i.r
  %i.t = icmp slt i64 %i.s, 2
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i8 @llvm.fshl.i8(i8 %i.l, i8 %i.j, i8 2)
  %i.v = or i8 %i.u, -64
  %i.w = getelementptr i8, ptr %i.q, i64 1
  store ptr %i.w, ptr %3, align 8, !tbaa !15
  store i8 %i.v, ptr %i.q, align 1, !tbaa !16
  %i.x = and i8 %i.j, 63
  %i.y = or disjoint i8 %i.x, -128
  %i.z = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %3, align 8, !tbaa !15
  store i8 %i.y, ptr %i.z, align 1, !tbaa !16
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %3, align 8, !tbaa !15    ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.h, %i.ac
  %i.ae = icmp slt i64 %i.ad, 3
  br i1 %i.ae, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = lshr i8 %i.l, 4
  %i.ag = or disjoint i8 %i.af, -32
  %i.ah = getelementptr i8, ptr %i.ab, i64 1
  store ptr %i.ah, ptr %3, align 8, !tbaa !15
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !16
  %i.ai = shl i8 %i.l, 2
  %i.aj = and i8 %i.ai, 60
  %i.ak = lshr i8 %i.j, 6
  %i.al = or disjoint i8 %i.ak, %i.aj
  %i.am = or disjoint i8 %i.al, -128
  %i.an = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %3, align 8, !tbaa !15
  store i8 %i.am, ptr %i.an, align 1, !tbaa !16
  %i.ap = and i8 %i.j, 63
  %i.aq = or disjoint i8 %i.ap, -128
  %i.ar = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %3, align 8, !tbaa !15
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !16
  br label %bb.m

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.at = load ptr, ptr %3, align 8, !tbaa !15    ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.h, %i.au
  %i.aw = icmp slt i64 %i.av, 4
  br i1 %i.aw, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = ptrtoint ptr %.06579 to i64
  %i.ay = sub i64 %i.i, %i.ax
  %i.az = icmp slt i64 %i.ay, 4
  br i1 %i.az, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %6 = shl nuw nsw i32 %5, 2
  %7 = and i32 %6, 12
  %8 = zext i8 %i.j to i32                        ; 2 uses
  %9 = lshr i32 %8, 6
  %10 = or disjoint i32 %7, %9
  %11 = add nuw nsw i32 %10, 1                    ; 2 uses
  %12 = trunc nuw nsw i32 %11 to i8
  %i.ba = lshr i8 %12, 2
  %i.bb = or i8 %i.ba, -16
  %i.bc = getelementptr i8, ptr %i.at, i64 1
  store ptr %i.bc, ptr %3, align 8, !tbaa !15
  store i8 %i.bb, ptr %i.at, align 1, !tbaa !16
  %13 = lshr i32 %8, 2
  %14 = and i32 %13, 15
  %15 = shl nuw nsw i32 %11, 4
  %16 = and i32 %15, 48
  %17 = or disjoint i32 %16, %14
  %18 = trunc nuw nsw i32 %17 to i8
  %i.bd = or disjoint i8 %18, -128
  %i.be = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 1
  store ptr %i.bf, ptr %3, align 8, !tbaa !15
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !16
  %i.bg = getelementptr i8, ptr %.06579, i64 2    ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16  ; 2 uses
  %i.bi = shl i8 %i.j, 4
  %i.bj = and i8 %i.bi, 48
  %i.bk = getelementptr i8, ptr %.06579, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.bm = shl i8 %i.bl, 2
  %i.bn = and i8 %i.bm, 12
  %i.bo = lshr i8 %i.bh, 6
  %i.bp = or disjoint i8 %i.bj, %i.bo
  %i.bq = or disjoint i8 %i.bp, %i.bn
  %i.br = or disjoint i8 %i.bq, -128
  %i.bs = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 1
  store ptr %i.bt, ptr %3, align 8, !tbaa !15
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !16
  %i.bu = and i8 %i.bh, 63
  %i.bv = or disjoint i8 %i.bu, -128
  %i.bw = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 1
  store ptr %i.bx, ptr %3, align 8, !tbaa !15
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.g, %bb.e
  %.2 = phi ptr [ %i.bg, %bb.l ], [ %.06579, %bb.i ], [ %.06579, %bb.e ], [ %.06579, %bb.g ]
  %i.by = getelementptr i8, ptr %.2, i64 2        ; 3 uses
  %i.bz = icmp ult ptr %i.by, %i.f
  br i1 %i.bz, label %bb.b, label %.thread, !llvm.loop !112

.thread:                                          ; preds = %bb.m, %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.a
  %.06579.lcssa.sink = phi ptr [ %i.a, %bb.a ], [ %.06579, %bb.h ], [ %.06579, %bb.d ], [ %.06579, %bb.k ], [ %.06579, %bb.j ], [ %.06579, %bb.f ], [ %i.by, %bb.m ]
  %.268 = phi i32 [ 0, %bb.a ], [ 2, %bb.h ], [ 2, %bb.d ], [ 1, %bb.k ], [ 2, %bb.j ], [ 2, %bb.f ], [ 0, %bb.m ]
  store ptr %.06579.lcssa.sink, ptr %1, align 8, !tbaa !15
  ret i32 %.268
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @little2_toUtf16(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 4 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = and i64 %i.d, -2                         ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.h = ptrtoint ptr %4 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp sgt i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.f, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = and i8 %i.m, -8
  %i.o = icmp eq i8 %i.n, -40                     ; 2 uses
  %spec.select.idx = select i1 %i.o, i64 -2, i64 0
  %spec.select = getelementptr i8, ptr %i.f, i64 %spec.select.idx
  %spec.select26 = zext i1 %i.o to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi ptr [ %i.f, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select26, %bb.b ]
  %i.p = icmp ult ptr %i.a, %.023
  br i1 %i.p, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.u, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.r = phi ptr [ %i.v, %bb.d ], [ %i.a, %bb.c ] ; 2 uses
  %i.s = icmp ult ptr %i.q, %4
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.t = load i16, ptr %i.r, align 1
  %i.u = getelementptr i8, ptr %i.q, i64 2        ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !26
  store i16 %i.t, ptr %i.q, align 2, !tbaa !19
  %i.v = getelementptr i8, ptr %i.r, i64 2        ; 3 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !15
  %i.w = icmp ult ptr %i.v, %.023
  br i1 %i.w, label %.lr.ph, label %.thread, !llvm.loop !113

.critedge:                                        ; preds = %.lr.ph
  %i.x = icmp eq ptr %i.q, %4
  br i1 %i.x, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %.critedge
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %.thread
  %.022 = phi i32 [ %.0, %.thread ], [ 2, %.critedge ]
  ret i32 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -27, 28) i32 @little2_scanLit(i32 noundef range(i32 12, 14) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 136        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.ag, %bb.k ] ; 2 uses
  %.03457 = phi ptr [ %2, %.lr.ph ], [ %.236, %bb.k ] ; 10 uses
  %i.g = getelementptr i8, ptr %.03457, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  switch i8 %i.h, label %unicode_byte_type.exit.thread44 [
    i8 0, label %unicode_byte_type.exit
    i8 -40, label %unicode_byte_type.exit.thread47
    i8 -39, label %unicode_byte_type.exit.thread47
    i8 -38, label %unicode_byte_type.exit.thread47
    i8 -37, label %unicode_byte_type.exit.thread47
    i8 -36, label %unicode_byte_type.exit.thread
    i8 -35, label %unicode_byte_type.exit.thread
    i8 -34, label %unicode_byte_type.exit.thread
    i8 -33, label %unicode_byte_type.exit.thread
    i8 -1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %.03457, align 1, !tbaa !16
  %switch.i = icmp ugt i8 %i.i, -3
  br i1 %switch.i, label %unicode_byte_type.exit.thread, label %unicode_byte_type.exit.thread44

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.j = load i8, ptr %.03457, align 1, !tbaa !16
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr i8, ptr %i.e, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16    ; 2 uses
  switch i8 %i.m, label %unicode_byte_type.exit.thread44 [
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %unicode_byte_type.exit.thread47
    i8 0, label %unicode_byte_type.exit.thread
    i8 1, label %unicode_byte_type.exit.thread
    i8 8, label %unicode_byte_type.exit.thread
    i8 12, label %bb.h
    i8 13, label %bb.h
  ]

bb.d:                                             ; preds = %unicode_byte_type.exit
  %i.n = getelementptr i8, ptr %.03457, i64 2
  br label %bb.k

bb.e:                                             ; preds = %unicode_byte_type.exit
  %i.o = icmp eq i64 %i.f, 2
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %.03457, i64 3
  br label %bb.k

unicode_byte_type.exit.thread47:                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %unicode_byte_type.exit
  %i.q = icmp samesign ult i64 %i.f, 4
  br i1 %i.q, label %.thread, label %bb.g

bb.g:                                             ; preds = %unicode_byte_type.exit.thread47
  %i.r = getelementptr i8, ptr %.03457, i64 4
  br label %bb.k

unicode_byte_type.exit.thread:                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit
  store ptr %.03457, ptr %4, align 8, !tbaa !15
  br label %.thread

bb.h:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit
  %i.s = zext nneg i8 %i.m to i32
  %i.t = getelementptr i8, ptr %.03457, i64 2     ; 4 uses
  %.not = icmp eq i32 %0, %i.s
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.a, %i.u
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  store ptr %i.t, ptr %4, align 8, !tbaa !15
  %i.x = getelementptr i8, ptr %.03457, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %cond = icmp eq i8 %i.y, 0
  br i1 %cond, label %unicode_byte_type.exit42, label %.thread

unicode_byte_type.exit42:                         ; preds = %bb.j
  %i.z = load i8, ptr %i.t, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr i8, ptr %i.e, i64 %i.aa
end_hunk_1
begin_hunk_2_@big2_updatePosition:bb.a
  switch i8 %i.l, label %unicode_byte_type.exit.thread [
    i8 5, label %bb.c
    i8 6, label %bb.d
    i8 7, label %unicode_byte_type.exit.thread36
    i8 10, label %bb.e
    i8 9, label %bb.f
  ]

bb.c:                                             ; preds = %unicode_byte_type.exit
  %i.m = getelementptr i8, ptr %.033, i64 2
  %i.n = load i64, ptr %i.f, align 8, !tbaa !38
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.f, align 8, !tbaa !38
  br label %bb.h

bb.d:                                             ; preds = %unicode_byte_type.exit
  %i.p = getelementptr i8, ptr %.033, i64 3
  %i.q = load i64, ptr %i.f, align 8, !tbaa !38
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.f, align 8, !tbaa !38
  br label %bb.h

unicode_byte_type.exit.thread36:                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %unicode_byte_type.exit
  %i.s = getelementptr i8, ptr %.033, i64 4
  %i.t = load i64, ptr %i.f, align 8, !tbaa !38
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.f, align 8, !tbaa !38
  br label %bb.h

bb.e:                                             ; preds = %unicode_byte_type.exit
  store i64 0, ptr %i.f, align 8, !tbaa !38
  %i.v = load i64, ptr %3, align 8, !tbaa !39
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %3, align 8, !tbaa !39
  %i.x = getelementptr i8, ptr %.033, i64 2
  br label %bb.h

bb.f:                                             ; preds = %unicode_byte_type.exit
  %i.y = load i64, ptr %3, align 8, !tbaa !39
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %3, align 8, !tbaa !39
  %i.aa = getelementptr i8, ptr %.033, i64 2      ; 5 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.a, %i.ab
  %i.ad = icmp sgt i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %unicode_byte_type.exit31.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !16
  %cond = icmp eq i8 %i.ae, 0
  br i1 %cond, label %unicode_byte_type.exit31, label %unicode_byte_type.exit31.thread

unicode_byte_type.exit31:                         ; preds = %bb.g
  %i.af = getelementptr i8, ptr %.033, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr i8, ptr %i.e, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %.fr = freeze i8 %i.aj
  %i.ak = icmp eq i8 %.fr, 10
  %i.al = getelementptr i8, ptr %.033, i64 4
  %spec.select = select i1 %i.ak, ptr %i.al, ptr %i.aa
  br label %unicode_byte_type.exit31.thread

unicode_byte_type.exit31.thread:                  ; preds = %unicode_byte_type.exit31, %bb.g, %bb.f
  %.1 = phi ptr [ %i.aa, %bb.f ], [ %i.aa, %bb.g ], [ %spec.select, %unicode_byte_type.exit31 ]
  store i64 0, ptr %i.f, align 8, !tbaa !38
  br label %bb.h

unicode_byte_type.exit.thread:                    ; preds = %bb.b, %unicode_byte_type.exit
  %i.am = getelementptr i8, ptr %.033, i64 2
  %i.an = load i64, ptr %i.f, align 8, !tbaa !38
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.f, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %unicode_byte_type.exit.thread, %unicode_byte_type.exit31.thread, %bb.e, %unicode_byte_type.exit.thread36, %bb.d, %bb.c
  %.2 = phi ptr [ %i.am, %unicode_byte_type.exit.thread ], [ %i.m, %bb.c ], [ %i.p, %bb.d ], [ %i.s, %unicode_byte_type.exit.thread36 ], [ %i.x, %bb.e ], [ %.1, %unicode_byte_type.exit31.thread ] ; 2 uses
  %i.ap = ptrtoint ptr %.2 to i64
  %i.aq = sub i64 %i.a, %i.ap
  %i.ar = icmp sgt i64 %i.aq, 1
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !138

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @big2_isPublicId(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 -2
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %.02024 = getelementptr i8, ptr %1, i64 2       ; 2 uses
  %i.c = ptrtoint ptr %.02024 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.02026 = phi ptr [ %.02024, %.lr.ph ], [ %.020, %bb.e ] ; 4 uses
  %.pn25 = phi ptr [ %1, %.lr.ph ], [ %.02026, %bb.e ] ; 4 uses
  %i.g = load i8, ptr %.02026, align 1, !tbaa !16
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %unicode_byte_type.exit, label %.loopexit.sink.split

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.pn25, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr i8, ptr %i.f, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  switch i8 %i.m, label %.critedge..critedge.thread_crit_edge [
    i8 25, label %bb.e
    i8 24, label %bb.e
    i8 27, label %bb.e
    i8 13, label %bb.e
    i8 31, label %bb.e
    i8 32, label %bb.e
    i8 34, label %bb.e
    i8 35, label %bb.e
    i8 17, label %bb.e
    i8 14, label %bb.e
    i8 15, label %bb.e
    i8 9, label %bb.e
    i8 10, label %bb.e
    i8 18, label %bb.e
    i8 16, label %bb.e
    i8 33, label %bb.e
    i8 30, label %bb.e
    i8 19, label %bb.e
    i8 23, label %bb.e
    i8 21, label %bb.c
    i8 26, label %bb.d
    i8 22, label %bb.d
  ]

bb.c:                                             ; preds = %unicode_byte_type.exit
  %i.n = getelementptr i8, ptr %.pn25, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = icmp eq i8 %i.o, 9
  br i1 %i.p, label %.loopexit.sink.split, label %bb.e

bb.d:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit
  %i.q = getelementptr i8, ptr %.pn25, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16    ; 2 uses
  %i.s = icmp slt i8 %i.r, 0
  br i1 %i.s, label %.critedge.thread, label %bb.e

.critedge..critedge.thread_crit_edge:             ; preds = %unicode_byte_type.exit
  %.phi.trans.insert = getelementptr i8, ptr %.pn25, i64 3
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !16
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge..critedge.thread_crit_edge, %bb.d
  %i.t = phi i8 [ %.pre, %.critedge..critedge.thread_crit_edge ], [ %i.r, %bb.d ]
  switch i8 %i.t, label %.loopexit.sink.split [
    i8 36, label %bb.e
    i8 64, label %bb.e
  ]

bb.e:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit, %bb.c, %bb.d, %.critedge.thread, %.critedge.thread
  %.020 = getelementptr i8, ptr %.02026, i64 2    ; 2 uses
  %i.u = ptrtoint ptr %.020 to i64
  %i.v = sub i64 %i.b, %i.u
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.b, label %.loopexit, !llvm.loop !139

.loopexit.sink.split:                             ; preds = %bb.b, %.critedge.thread, %bb.c
  store ptr %.02026, ptr %3, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.loopexit.sink.split ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @big2_toUtf8(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 5 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = and i64 %i.d, -2
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %i.g = icmp ult ptr %i.a, %i.f
  br i1 %i.g, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.h = ptrtoint ptr %4 to i64                   ; 3 uses
  %i.i = ptrtoint ptr %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.06579 = phi ptr [ %i.a, %.lr.ph ], [ %i.by, %bb.m ] ; 13 uses
  %i.j = getelementptr i8, ptr %.06579, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 8 uses
  %i.l = load i8, ptr %.06579, align 1, !tbaa !16 ; 5 uses
  %5 = zext i8 %i.l to i32
  switch i8 %i.l, label %bb.h [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.f
    i8 3, label %bb.f
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 6, label %bb.f
    i8 7, label %bb.f
    i8 -40, label %bb.j
    i8 -39, label %bb.j
    i8 -38, label %bb.j
    i8 -37, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = icmp sgt i8 %i.k, -1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8, !tbaa !15     ; 3 uses
  %i.o = icmp eq ptr %i.n, %4
  br i1 %i.o, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.n, i64 1
  store ptr %i.p, ptr %3, align 8, !tbaa !15
  store i8 %i.k, ptr %i.n, align 1, !tbaa !16
  br label %bb.m

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = load ptr, ptr %3, align 8, !tbaa !15     ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.h, %i.r
  %i.t = icmp slt i64 %i.s, 2
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i8 @llvm.fshl.i8(i8 %i.l, i8 %i.k, i8 2)
  %i.v = or i8 %i.u, -64
  %i.w = getelementptr i8, ptr %i.q, i64 1
  store ptr %i.w, ptr %3, align 8, !tbaa !15
  store i8 %i.v, ptr %i.q, align 1, !tbaa !16
  %i.x = and i8 %i.k, 63
  %i.y = or disjoint i8 %i.x, -128
  %i.z = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %3, align 8, !tbaa !15
  store i8 %i.y, ptr %i.z, align 1, !tbaa !16
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %3, align 8, !tbaa !15    ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.h, %i.ac
  %i.ae = icmp slt i64 %i.ad, 3
  br i1 %i.ae, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = lshr i8 %i.l, 4
  %i.ag = or disjoint i8 %i.af, -32
  %i.ah = getelementptr i8, ptr %i.ab, i64 1
  store ptr %i.ah, ptr %3, align 8, !tbaa !15
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !16
  %i.ai = shl i8 %i.l, 2
  %i.aj = and i8 %i.ai, 60
  %i.ak = lshr i8 %i.k, 6
  %i.al = or disjoint i8 %i.ak, %i.aj
  %i.am = or disjoint i8 %i.al, -128
  %i.an = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %3, align 8, !tbaa !15
  store i8 %i.am, ptr %i.an, align 1, !tbaa !16
  %i.ap = and i8 %i.k, 63
  %i.aq = or disjoint i8 %i.ap, -128
  %i.ar = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %3, align 8, !tbaa !15
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !16
  br label %bb.m

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.at = load ptr, ptr %3, align 8, !tbaa !15    ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.h, %i.au
  %i.aw = icmp slt i64 %i.av, 4
  br i1 %i.aw, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = ptrtoint ptr %.06579 to i64
  %i.ay = sub i64 %i.i, %i.ax
  %i.az = icmp slt i64 %i.ay, 4
  br i1 %i.az, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %6 = shl nuw nsw i32 %5, 2
  %7 = and i32 %6, 12
  %8 = zext i8 %i.k to i32                        ; 2 uses
  %9 = lshr i32 %8, 6
  %10 = or disjoint i32 %7, %9
  %11 = add nuw nsw i32 %10, 1                    ; 2 uses
  %12 = trunc nuw nsw i32 %11 to i8
  %i.ba = lshr i8 %12, 2
  %i.bb = or i8 %i.ba, -16
  %i.bc = getelementptr i8, ptr %i.at, i64 1
  store ptr %i.bc, ptr %3, align 8, !tbaa !15
  store i8 %i.bb, ptr %i.at, align 1, !tbaa !16
  %13 = lshr i32 %8, 2
  %14 = and i32 %13, 15
  %15 = shl nuw nsw i32 %11, 4
  %16 = and i32 %15, 48
  %17 = or disjoint i32 %16, %14
  %18 = trunc nuw nsw i32 %17 to i8
  %i.bd = or disjoint i8 %18, -128
  %i.be = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 1
  store ptr %i.bf, ptr %3, align 8, !tbaa !15
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !16
  %i.bg = getelementptr i8, ptr %.06579, i64 2    ; 2 uses
  %i.bh = getelementptr i8, ptr %.06579, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16  ; 2 uses
  %i.bj = shl i8 %i.k, 4
  %i.bk = and i8 %i.bj, 48
  %i.bl = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bm = shl i8 %i.bl, 2
  %i.bn = and i8 %i.bm, 12
  %i.bo = lshr i8 %i.bi, 6
  %i.bp = or disjoint i8 %i.bk, %i.bo
  %i.bq = or disjoint i8 %i.bp, %i.bn
  %i.br = or disjoint i8 %i.bq, -128
  %i.bs = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 1
  store ptr %i.bt, ptr %3, align 8, !tbaa !15
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !16
  %i.bu = and i8 %i.bi, 63
  %i.bv = or disjoint i8 %i.bu, -128
  %i.bw = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 1
  store ptr %i.bx, ptr %3, align 8, !tbaa !15
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.g, %bb.e
  %.2 = phi ptr [ %i.bg, %bb.l ], [ %.06579, %bb.i ], [ %.06579, %bb.e ], [ %.06579, %bb.g ]
  %i.by = getelementptr i8, ptr %.2, i64 2        ; 3 uses
  %i.bz = icmp ult ptr %i.by, %i.f
  br i1 %i.bz, label %bb.b, label %.thread, !llvm.loop !140

.thread:                                          ; preds = %bb.m, %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.a
  %.06579.lcssa.sink = phi ptr [ %i.a, %bb.a ], [ %.06579, %bb.h ], [ %.06579, %bb.d ], [ %.06579, %bb.k ], [ %.06579, %bb.j ], [ %.06579, %bb.f ], [ %i.by, %bb.m ]
  %.268 = phi i32 [ 0, %bb.a ], [ 2, %bb.h ], [ 2, %bb.d ], [ 1, %bb.k ], [ 2, %bb.j ], [ 2, %bb.f ], [ 0, %bb.m ]
  store ptr %.06579.lcssa.sink, ptr %1, align 8, !tbaa !15
  ret i32 %.268
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @big2_toUtf16(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 4 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = and i64 %i.d, -2                         ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.h = ptrtoint ptr %4 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp sgt i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.f, i64 -2       ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = and i8 %i.m, -8
  %i.o = icmp eq i8 %i.n, -40                     ; 2 uses
  %spec.select = select i1 %i.o, ptr %i.l, ptr %i.f
  %spec.select26 = zext i1 %i.o to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi ptr [ %i.f, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select26, %bb.b ]
  %i.p = icmp ult ptr %i.a, %.023
  br i1 %i.p, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.r = phi ptr [ %i.ab, %bb.d ], [ %i.a, %bb.c ] ; 3 uses
  %i.s = icmp ult ptr %i.q, %4
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.t = load i8, ptr %i.r, align 1, !tbaa !16
  %i.u = zext i8 %i.t to i16
  %i.v = shl nuw i16 %i.u, 8
  %i.w = getelementptr i8, ptr %i.r, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i16
  %i.z = or disjoint i16 %i.v, %i.y
  %i.aa = getelementptr i8, ptr %i.q, i64 2       ; 2 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !26
  store i16 %i.z, ptr %i.q, align 2, !tbaa !19
  %i.ab = getelementptr i8, ptr %i.r, i64 2       ; 3 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !15
  %i.ac = icmp ult ptr %i.ab, %.023
  br i1 %i.ac, label %.lr.ph, label %.thread, !llvm.loop !141

.critedge:                                        ; preds = %.lr.ph
  %i.ad = icmp eq ptr %i.q, %4
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %.critedge
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %.thread
  %.022 = phi i32 [ %.0, %.thread ], [ 2, %.critedge ]
  ret i32 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -27, 28) i32 @big2_scanLit(i32 noundef range(i32 12, 14) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 136        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.ah, %bb.k ] ; 2 uses
  %.03457 = phi ptr [ %2, %.lr.ph ], [ %.236, %bb.k ] ; 10 uses
  %i.g = load i8, ptr %.03457, align 1, !tbaa !16
  switch i8 %i.g, label %unicode_byte_type.exit.thread44 [
    i8 0, label %unicode_byte_type.exit
    i8 -40, label %unicode_byte_type.exit.thread47
    i8 -39, label %unicode_byte_type.exit.thread47
    i8 -38, label %unicode_byte_type.exit.thread47
    i8 -37, label %unicode_byte_type.exit.thread47
    i8 -36, label %unicode_byte_type.exit.thread
    i8 -35, label %unicode_byte_type.exit.thread
    i8 -34, label %unicode_byte_type.exit.thread
    i8 -33, label %unicode_byte_type.exit.thread
    i8 -1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.03457, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %switch.i = icmp ugt i8 %i.i, -3
  br i1 %switch.i, label %unicode_byte_type.exit.thread, label %unicode_byte_type.exit.thread44

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.03457, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16    ; 2 uses
  switch i8 %i.n, label %unicode_byte_type.exit.thread44 [
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %unicode_byte_type.exit.thread47
    i8 0, label %unicode_byte_type.exit.thread
    i8 1, label %unicode_byte_type.exit.thread
    i8 8, label %unicode_byte_type.exit.thread
    i8 12, label %bb.h
    i8 13, label %bb.h
  ]

bb.d:                                             ; preds = %unicode_byte_type.exit
  %i.o = getelementptr i8, ptr %.03457, i64 2
  br label %bb.k

bb.e:                                             ; preds = %unicode_byte_type.exit
  %i.p = icmp eq i64 %i.f, 2
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %.03457, i64 3
  br label %bb.k

unicode_byte_type.exit.thread47:                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %unicode_byte_type.exit
  %i.r = icmp samesign ult i64 %i.f, 4
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %unicode_byte_type.exit.thread47
  %i.s = getelementptr i8, ptr %.03457, i64 4
  br label %bb.k

unicode_byte_type.exit.thread:                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit
  store ptr %.03457, ptr %4, align 8, !tbaa !15
  br label %.thread

bb.h:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit
  %i.t = zext nneg i8 %i.n to i32
  %i.u = getelementptr i8, ptr %.03457, i64 2     ; 4 uses
  %.not = icmp eq i32 %0, %i.t
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.a, %i.v
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  store ptr %i.u, ptr %4, align 8, !tbaa !15
  %i.y = load i8, ptr %i.u, align 1, !tbaa !16
  %cond = icmp eq i8 %i.y, 0
  br i1 %cond, label %unicode_byte_type.exit42, label %.thread
end_hunk_2
