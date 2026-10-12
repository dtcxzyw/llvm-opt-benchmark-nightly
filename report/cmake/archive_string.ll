Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_string?download=true
inline.NumInlined: 115
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@best_effort_strncat_from_utf16be:bb.a
  %i.z = add nuw nsw i32 %i.y, %.0.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  br label %utf16_to_unicode.exit.i

utf16_to_unicode.exit.i:                          ; preds = %.thread57.i.i, %bb.c
  %.141.i.i = phi ptr [ %i.aa, %.thread57.i.i ], [ %i.o, %bb.c ]
  %.2.i.i = phi i32 [ %i.z, %.thread57.i.i ], [ %.039.i.i, %bb.c ] ; 2 uses
  %i.ab = and i32 %.2.i.i, -2048
  %or.cond5.i.i = icmp eq i32 %i.ab, 55296        ; 2 uses
  %i.ac = ptrtoint ptr %.141.i.i to i64           ; 2 uses
  %i.ad = ptrtoint ptr %.026.i to i64             ; 2 uses
  %.neg.i.i = sub i64 %i.ad, %i.ac
  %i.ae = sub i64 %i.ac, %i.ad
  %.1.i = select i1 %or.cond5.i.i, i32 65533, i32 %.2.i.i
  %.143.i.v.i = select i1 %or.cond5.i.i, i64 %.neg.i.i, i64 %i.ae
  %.143.i.i = trunc i64 %.143.i.v.i to i32        ; 2 uses
  %.not.i = icmp eq i32 %.143.i.i, 0
  br i1 %.not.i, label %utf16_to_unicode.exit.thread7.i, label %utf16_to_unicode.exit.thread.i

utf16_to_unicode.exit.thread.i:                   ; preds = %utf16_to_unicode.exit.i, %bb.e, %bb.d, %.split.i
  %.143.i6.i = phi i32 [ %.143.i.i, %utf16_to_unicode.exit.i ], [ -2, %bb.d ], [ -2, %bb.e ], [ -1, %.split.i ] ; 2 uses
  %.15.i = phi i32 [ %.1.i, %utf16_to_unicode.exit.i ], [ 65533, %bb.d ], [ 65533, %bb.e ], [ 65533, %.split.i ] ; 2 uses
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %.143.i6.i, i1 true)
  %.inv.i = icmp slt i32 %.143.i6.i, 0
  %i.af = zext nneg i32 %spec.select.i to i64     ; 2 uses
  %i.ag = sub i64 %.028.i, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.af
  %i.ai = icmp samesign ugt i32 %.15.i, 127       ; 2 uses
  %i.aj = trunc nuw nsw i32 %.15.i to i8
  %storemerge.i = select i1 %i.ai, i8 63, i8 %i.aj
  %i.ak = or i1 %.inv.i, %i.ai
  %.2.i = select i1 %i.ak, i32 -1, i32 %.0.i
  %.125.i = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  store i8 %storemerge.i, ptr %.024.i, align 1, !tbaa !20
  br label %.split.i, !llvm.loop !3

utf16_to_unicode.exit.thread7.i:                  ; preds = %utf16_to_unicode.exit.i, %.split.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.am = ptrtoint ptr %.024.i to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !20
  br label %best_effort_strncat_from_utf16.exit

best_effort_strncat_from_utf16.exit:              ; preds = %bb.a, %utf16_to_unicode.exit.thread7.i
  %.027.i = phi i32 [ %.0.i, %utf16_to_unicode.exit.thread7.i ], [ -1, %bb.a ]
  ret i32 %.027.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @best_effort_strncat_from_utf16le(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = add i64 %2, 1
  %i.d = add i64 %i.c, %i.b
  %i.e = tail call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.d)
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %best_effort_strncat_from_utf16.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
  %i.h = load i64, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %.split.us.i

.split.us.i:                                      ; preds = %utf16_to_unicode.exit.thread.us.i, %bb.b
  %.028.us.i = phi i64 [ %i.w, %utf16_to_unicode.exit.thread.us.i ], [ %2, %bb.b ] ; 3 uses
  %.026.us.i = phi ptr [ %i.x, %utf16_to_unicode.exit.thread.us.i ], [ %1, %bb.b ] ; 5 uses
  %.024.us.i = phi ptr [ %.125.us.i, %utf16_to_unicode.exit.thread.us.i ], [ %i.i, %bb.b ] ; 3 uses
  %.0.us.i = phi i32 [ %.2.us.i, %utf16_to_unicode.exit.thread.us.i ], [ 0, %bb.b ] ; 2 uses
  switch i64 %.028.us.i, label %bb.c [
    i64 0, label %utf16_to_unicode.exit.thread7.i
    i64 1, label %utf16_to_unicode.exit.thread.us.i
  ]

bb.c:                                             ; preds = %.split.us.i
  %.val51.i.us.i = load i16, ptr %.026.us.i, align 1 ; 2 uses
  %.039.i.us.i = zext i16 %.val51.i.us.i to i32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.026.us.i, i64 2 ; 2 uses
  %i.k = and i16 %.val51.i.us.i, -1024
  %or.cond.i.us.i = icmp eq i16 %i.k, -10240
  br i1 %or.cond.i.us.i, label %bb.d, label %utf16_to_unicode.exit.us.i

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %.028.us.i, 3
  br i1 %i.l, label %bb.e, label %utf16_to_unicode.exit.thread.us.i

bb.e:                                             ; preds = %bb.d
  %.val49.i.us.i = load i16, ptr %i.j, align 1    ; 2 uses
  %i.m = and i16 %.val49.i.us.i, -1024
  %or.cond3.i.us.i = icmp eq i16 %i.m, -9216
  br i1 %or.cond3.i.us.i, label %.thread57.i.us.i, label %utf16_to_unicode.exit.thread.us.i

.thread57.i.us.i:                                 ; preds = %bb.e
  %.0.i.us.i = zext i16 %.val49.i.us.i to i32
  %i.n = shl nuw nsw i32 %.039.i.us.i, 10
  %i.o = add nsw i32 %i.n, -56613888
  %i.p = add nuw nsw i32 %i.o, %.0.i.us.i
  %i.q = getelementptr inbounds nuw i8, ptr %.026.us.i, i64 4
  br label %utf16_to_unicode.exit.us.i

utf16_to_unicode.exit.us.i:                       ; preds = %.thread57.i.us.i, %bb.c
  %.141.i.us.i = phi ptr [ %i.q, %.thread57.i.us.i ], [ %i.j, %bb.c ]
  %.2.i.us.i = phi i32 [ %i.p, %.thread57.i.us.i ], [ %.039.i.us.i, %bb.c ] ; 2 uses
  %i.r = and i32 %.2.i.us.i, -2048
  %or.cond5.i.us.i = icmp eq i32 %i.r, 55296      ; 2 uses
  %i.s = ptrtoint ptr %.141.i.us.i to i64         ; 2 uses
  %i.t = ptrtoint ptr %.026.us.i to i64           ; 2 uses
  %.neg.i.us.i = sub i64 %i.t, %i.s
  %i.u = sub i64 %i.s, %i.t
  %.1.us.i = select i1 %or.cond5.i.us.i, i32 65533, i32 %.2.i.us.i
  %.143.i.v.us.i = select i1 %or.cond5.i.us.i, i64 %.neg.i.us.i, i64 %i.u
  %.143.i.us.i = trunc i64 %.143.i.v.us.i to i32  ; 2 uses
  %.not.us.i = icmp eq i32 %.143.i.us.i, 0
  br i1 %.not.us.i, label %utf16_to_unicode.exit.thread7.i, label %utf16_to_unicode.exit.thread.us.i

utf16_to_unicode.exit.thread.us.i:                ; preds = %utf16_to_unicode.exit.us.i, %bb.e, %bb.d, %.split.us.i
  %.143.i6.us.i = phi i32 [ %.143.i.us.i, %utf16_to_unicode.exit.us.i ], [ -2, %bb.d ], [ -2, %bb.e ], [ -1, %.split.us.i ] ; 2 uses
  %.15.us.i = phi i32 [ %.1.us.i, %utf16_to_unicode.exit.us.i ], [ 65533, %bb.d ], [ 65533, %bb.e ], [ 65533, %.split.us.i ] ; 2 uses
  %spec.select.us.i = tail call i32 @llvm.abs.i32(i32 %.143.i6.us.i, i1 true)
  %.inv.us.i = icmp slt i32 %.143.i6.us.i, 0
  %i.v = zext nneg i32 %spec.select.us.i to i64   ; 2 uses
  %i.w = sub i64 %.028.us.i, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.026.us.i, i64 %i.v
  %i.y = icmp samesign ugt i32 %.15.us.i, 127     ; 2 uses
  %i.z = trunc nuw nsw i32 %.15.us.i to i8
  %storemerge.us.i = select i1 %i.y, i8 63, i8 %i.z
  %i.aa = or i1 %.inv.us.i, %i.y
  %.2.us.i = select i1 %i.aa, i32 -1, i32 %.0.us.i
  %.125.us.i = getelementptr inbounds nuw i8, ptr %.024.us.i, i64 1
  store i8 %storemerge.us.i, ptr %.024.us.i, align 1, !tbaa !20
  br label %.split.us.i, !llvm.loop !3

utf16_to_unicode.exit.thread7.i:                  ; preds = %utf16_to_unicode.exit.us.i, %.split.us.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ac = ptrtoint ptr %.024.us.i to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  store i8 0, ptr %i.af, align 1, !tbaa !20
  br label %best_effort_strncat_from_utf16.exit

best_effort_strncat_from_utf16.exit:              ; preds = %bb.a, %utf16_to_unicode.exit.thread7.i
  %.027.i = phi i32 [ %.0.us.i, %utf16_to_unicode.exit.thread7.i ], [ -1, %bb.a ]
  ret i32 %.027.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @strncat_from_utf8_to_utf8(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = add i64 %2, 1
  %i.g = add i64 %i.f, %i.e
  %i.h = tail call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.g)
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread92, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %.thread92, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader, %bb.ap
  %.040197 = phi ptr [ %i.eo, %bb.ap ], [ %1, %.preheader ] ; 7 uses
  %.042196 = phi i32 [ %spec.select, %bb.ap ], [ 0, %.preheader ] ; 2 uses
  %.048195 = phi i64 [ %i.ep, %bb.ap ], [ %2, %.preheader ] ; 2 uses
  %i.p = load i8, ptr %.040197, align 1, !tbaa !20 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %utf8_to_unicode.exit.thread86, label %.lr.ph179

.lr.ph:                                           ; preds = %utf8_to_unicode.exit.thread
  %i.r = load i8, ptr %i.cy, align 1, !tbaa !20   ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %utf8_to_unicode.exit.thread86, label %.lr.ph179, !llvm.loop !137

.lr.ph179:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.t = phi i8 [ %i.r, %.lr.ph ], [ %i.p, %.lr.ph.preheader ] ; 5 uses
  %.149115178 = phi i64 [ %i.cz, %.lr.ph ], [ %.048195, %.lr.ph.preheader ] ; 8 uses
  %.0116177 = phi ptr [ %i.cy, %.lr.ph ], [ %.040197, %.lr.ph.preheader ] ; 17 uses
  %i.u = zext i8 %i.t to i32                      ; 4 uses
  %i.v = zext i8 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr @_utf8_to_unicode.utf8_count, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20    ; 2 uses
  %i.y = sext i8 %i.x to i64
  %i.z = icmp ult i64 %.149115178, %i.y
  br i1 %i.z, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph179
  %i.aa = trunc i64 %.149115178 to i32            ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph95.preheader.i, label %_utf8_to_unicode.exit

.lr.ph95.preheader.i:                             ; preds = %bb.b
  %wide.trip.count105.i = and i64 %.149115178, 2147483647
  br label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %bb.c, %.lr.ph95.preheader.i
  %indvars.iv102.i = phi i64 [ 1, %.lr.ph95.preheader.i ], [ %indvars.iv.next103.i, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0116177, i64 %indvars.iv102.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  %.not84.i = icmp slt i8 %i.ad, -64
  br i1 %.not84.i, label %bb.c, label %.loopexit.loopexit.split.loop.exit.i

bb.c:                                             ; preds = %.lr.ph95.i
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond106.not.i = icmp eq i64 %indvars.iv.next103.i, %wide.trip.count105.i
  br i1 %exitcond106.not.i, label %_utf8_to_unicode.exit, label %.lr.ph95.i, !llvm.loop !4

bb.d:                                             ; preds = %.lr.ph179
  switch i8 %i.x, label %bb.o [
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
    i8 4, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = and i32 %i.u, 127
  br label %utf8_to_unicode.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.0116177, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = and i32 %i.ah, 192
  %.not82.i = icmp eq i32 %i.ai, 128
  br i1 %.not82.i, label %bb.g, label %utf8_to_unicode.exit.thread145

bb.g:                                             ; preds = %bb.f
  %i.aj = shl nuw nsw i32 %i.u, 6
  %i.ak = and i32 %i.aj, 1984
  %i.al = and i32 %i.ah, 63
  %i.am = or disjoint i32 %i.al, %i.ak
  br label %utf8_to_unicode.exit.thread

bb.h:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.0116177, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20
  %i.ap = sext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %.not80.i = icmp eq i32 %i.aq, 128
  br i1 %.not80.i, label %bb.i, label %utf8_to_unicode.exit.thread145

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.0116177, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !20
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = and i32 %i.at, 192
  %.not81.i = icmp eq i32 %i.au, 128
  br i1 %.not81.i, label %bb.j, label %utf8_to_unicode.exit.thread145

bb.j:                                             ; preds = %bb.i
  %i.av = shl nuw nsw i32 %i.u, 12
  %i.aw = and i32 %i.av, 61440
  %i.ax = shl nsw i32 %i.ap, 6
  %i.ay = and i32 %i.ax, 4032
  %i.az = or disjoint i32 %i.ay, %i.aw            ; 3 uses
  %i.ba = icmp samesign ult i32 %i.az, 2048
  br i1 %i.ba, label %utf8_to_unicode.exit.thread145, label %bb.y

bb.k:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.0116177, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !20
  %i.bd = sext i8 %i.bc to i32                    ; 2 uses
  %i.be = and i32 %i.bd, 192
  %.not.i59 = icmp eq i32 %i.be, 128
  br i1 %.not.i59, label %bb.l, label %utf8_to_unicode.exit.thread145

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.0116177, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20
  %i.bh = sext i8 %i.bg to i32                    ; 2 uses
  %i.bi = and i32 %i.bh, 192
  %.not78.i = icmp eq i32 %i.bi, 128
  br i1 %.not78.i, label %bb.m, label %utf8_to_unicode.exit.thread145

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.0116177, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !20
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = and i32 %i.bl, 192
  %.not79.i = icmp eq i32 %i.bm, 128
  br i1 %.not79.i, label %bb.n, label %utf8_to_unicode.exit.thread145

bb.n:                                             ; preds = %bb.m
  %i.bn = shl nuw nsw i32 %i.u, 18
  %i.bo = and i32 %i.bn, 1835008
  %i.bp = shl nsw i32 %i.bd, 12
  %i.bq = and i32 %i.bp, 258048
  %i.br = or disjoint i32 %i.bq, %i.bo            ; 2 uses
  %i.bs = shl nsw i32 %i.bh, 6
  %i.bt = and i32 %i.bs, 4032
  %i.bu = and i32 %i.bl, 63
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %i.bw = or disjoint i32 %i.bv, %i.br
  %i.bx = add nsw i32 %i.br, -1114112
  %or.cond87.i = icmp ult i32 %i.bx, -1048576
  br i1 %or.cond87.i, label %utf8_to_unicode.exit.thread145, label %utf8_to_unicode.exit.thread

bb.o:                                             ; preds = %bb.d
  %i.by = and i8 %i.t, -2                         ; 2 uses
  %or.cond.i60 = icmp eq i8 %i.by, -64
  br i1 %or.cond.i60, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = add i8 %i.t, 11
  %or.cond3.i61 = icmp ult i8 %i.bz, 3
  br i1 %or.cond3.i61, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = and i8 %i.t, -4
  %or.cond5.i = icmp eq i8 %i.ca, -8
  br i1 %or.cond5.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %or.cond7.i62 = icmp eq i8 %i.by, -4
  %i.cb = select i1 %or.cond7.i62, i64 6, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.066.i = phi i64 [ 5, %bb.q ], [ 2, %bb.o ], [ 4, %bb.p ], [ %i.cb, %bb.r ]
  %spec.select88.i = call i64 @llvm.umin.i64(i64 %.149115178, i64 %.066.i) ; 7 uses
  %i.cc = icmp samesign ugt i64 %spec.select88.i, 1
  br i1 %i.cc, label %.lr.ph.i, label %utf8_to_unicode.exit.thread145

.lr.ph.i:                                         ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.0116177, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !20
  %.not83.i = icmp slt i8 %i.ce, -64
  br i1 %.not83.i, label %bb.t, label %_utf8_to_unicode.exit

bb.t:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %spec.select88.i, 2
  br i1 %exitcond.not.i, label %utf8_to_unicode.exit.thread145.loopexit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.0116177, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !20
  %.not83.i.1 = icmp slt i8 %i.cg, -64
  br i1 %.not83.i.1, label %bb.u, label %_utf8_to_unicode.exit

bb.u:                                             ; preds = %.lr.ph.i.1
  %exitcond.not.i.1 = icmp eq i64 %spec.select88.i, 3
  br i1 %exitcond.not.i.1, label %utf8_to_unicode.exit.thread145.loopexit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.0116177, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !20
  %.not83.i.2 = icmp slt i8 %i.ci, -64
  br i1 %.not83.i.2, label %bb.v, label %_utf8_to_unicode.exit

bb.v:                                             ; preds = %.lr.ph.i.2
  %exitcond.not.i.2 = icmp eq i64 %spec.select88.i, 4
  br i1 %exitcond.not.i.2, label %utf8_to_unicode.exit.thread145.loopexit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %.0116177, i64 4
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !20
  %.not83.i.3 = icmp slt i8 %i.ck, -64
  br i1 %.not83.i.3, label %bb.w, label %_utf8_to_unicode.exit

bb.w:                                             ; preds = %.lr.ph.i.3
  %exitcond.not.i.3 = icmp eq i64 %spec.select88.i, 5
  br i1 %exitcond.not.i.3, label %utf8_to_unicode.exit.thread145.loopexit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %.0116177, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !20
  %.not83.i.4 = icmp slt i8 %i.cm, -64
  br i1 %.not83.i.4, label %bb.x, label %_utf8_to_unicode.exit

bb.x:                                             ; preds = %.lr.ph.i.4
  %exitcond.not.i.4 = icmp eq i64 %spec.select88.i, 6
  br i1 %exitcond.not.i.4, label %utf8_to_unicode.exit.thread145.loopexit, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %.0116177, i64 6
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !20
  %.not83.i.5 = icmp slt i8 %i.co, -64
  br i1 %.not83.i.5, label %utf8_to_unicode.exit.thread145.loopexit, label %_utf8_to_unicode.exit

.loopexit.loopexit.split.loop.exit.i:             ; preds = %.lr.ph95.i
  %i.cp = trunc nuw nsw i64 %indvars.iv102.i to i32
  br label %_utf8_to_unicode.exit

utf8_to_unicode.exit.thread145.loopexit:          ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %.lr.ph.i.5
  %spec.select.i63.le = trunc nuw nsw i64 %spec.select88.i to i32
  br label %utf8_to_unicode.exit.thread145

utf8_to_unicode.exit.thread145:                   ; preds = %bb.s, %bb.j, %bb.h, %bb.f, %bb.l, %bb.i, %bb.m, %bb.k, %bb.n, %utf8_to_unicode.exit.thread145.loopexit
  %.2.i.ph = phi i32 [ %spec.select.i63.le, %utf8_to_unicode.exit.thread145.loopexit ], [ 1, %bb.k ], [ 3, %bb.m ], [ 2, %bb.i ], [ 2, %bb.l ], [ 1, %bb.f ], [ 1, %bb.h ], [ 3, %bb.j ], [ 1, %bb.s ], [ 4, %bb.n ]
  %i.cq = sub nsw i32 0, %.2.i.ph
  br label %utf8_to_unicode.exit.thread86

_utf8_to_unicode.exit:                            ; preds = %bb.c, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %bb.b, %.loopexit.loopexit.split.loop.exit.i
  %.2.i = phi i32 [ 6, %.lr.ph.i.5 ], [ %i.cp, %.loopexit.loopexit.split.loop.exit.i ], [ %i.aa, %bb.b ], [ 1, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ], [ 4, %.lr.ph.i.3 ], [ 5, %.lr.ph.i.4 ], [ %i.aa, %bb.c ] ; 3 uses
  %i.cr = icmp eq i32 %.2.i, -3
  br i1 %i.cr, label %utf8_to_unicode.exit.thread, label %utf8_to_unicode.exit

bb.y:                                             ; preds = %bb.j
  %i.cs = and i32 %i.at, 63
  %i.ct = or disjoint i32 %i.cs, %i.az            ; 2 uses
  %i.cu = and i32 %i.az, 63488
  %or.cond.i = icmp eq i32 %i.cu, 55296
  br i1 %or.cond.i, label %utf8_to_unicode.exit.thread86, label %utf8_to_unicode.exit.thread

utf8_to_unicode.exit:                             ; preds = %_utf8_to_unicode.exit
  %i.cv = sub nsw i32 0, %.2.i                    ; 2 uses
  %i.cw = icmp slt i32 %.2.i, 0
  br i1 %i.cw, label %utf8_to_unicode.exit.thread, label %utf8_to_unicode.exit.thread86

utf8_to_unicode.exit.thread:                      ; preds = %bb.e, %bb.g, %bb.n, %bb.y, %_utf8_to_unicode.exit, %utf8_to_unicode.exit
  %.0.i85 = phi i32 [ %i.cv, %utf8_to_unicode.exit ], [ 3, %_utf8_to_unicode.exit ], [ 3, %bb.y ], [ 1, %bb.e ], [ 2, %bb.g ], [ 4, %bb.n ]
  %.3687284 = phi i32 [ 65533, %utf8_to_unicode.exit ], [ 65533, %_utf8_to_unicode.exit ], [ %i.ct, %bb.y ], [ %i.ae, %bb.e ], [ %i.am, %bb.g ], [ %i.bw, %bb.n ] ; 2 uses
  %i.cx = zext nneg i32 %.0.i85 to i64            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0116177, i64 %i.cx ; 4 uses
  %i.cz = sub i64 %.149115178, %i.cx              ; 3 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge, label %.lr.ph, !llvm.loop !137

utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge: ; preds = %utf8_to_unicode.exit.thread
  br label %utf8_to_unicode.exit.thread86, !llvm.loop !137

utf8_to_unicode.exit.thread86:                    ; preds = %.lr.ph, %bb.y, %utf8_to_unicode.exit, %.lr.ph.preheader, %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge, %utf8_to_unicode.exit.thread145
  %.149.lcssa = phi i64 [ %.149115178, %utf8_to_unicode.exit.thread145 ], [ %.048195, %.lr.ph.preheader ], [ 0, %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge ], [ %.149115178, %utf8_to_unicode.exit ], [ %i.cz, %.lr.ph ], [ %.149115178, %bb.y ] ; 3 uses
  %.0.lcssa = phi ptr [ %.0116177, %utf8_to_unicode.exit.thread145 ], [ %.040197, %.lr.ph.preheader ], [ %i.cy, %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge ], [ %.0116177, %utf8_to_unicode.exit ], [ %i.cy, %.lr.ph ], [ %.0116177, %bb.y ] ; 3 uses
  %.0.i90 = phi i32 [ %i.cq, %utf8_to_unicode.exit.thread145 ], [ 0, %.lr.ph.preheader ], [ 0, %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge ], [ %i.cv, %utf8_to_unicode.exit ], [ 0, %.lr.ph ], [ -3, %bb.y ] ; 3 uses
  %.3687289 = phi i32 [ 65533, %utf8_to_unicode.exit.thread145 ], [ undef, %.lr.ph.preheader ], [ %.3687284, %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge ], [ 65533, %utf8_to_unicode.exit ], [ %.3687284, %.lr.ph ], [ %i.ct, %bb.y ] ; 2 uses
  %i.db = icmp ugt ptr %.0.lcssa, %.040197
  br i1 %i.db, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %utf8_to_unicode.exit.thread86
  %i.dc = ptrtoint ptr %.0.lcssa to i64
  %i.dd = ptrtoint ptr %.040197 to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = load i64, ptr %i.d, align 8, !tbaa !18
  %i.dg = add i64 %i.de, 1
  %i.dh = add i64 %i.dg, %i.df
  %i.di = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.dh)
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.thread92, label %archive_string_append.exit

archive_string_append.exit:                       ; preds = %bb.z
  %i.dk = load ptr, ptr %0, align 8, !tbaa !19
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull readonly align 1 %.040197, i64 %i.de, i1 false)
  %i.dn = load i64, ptr %i.d, align 8, !tbaa !18
  %i.do = add i64 %i.dn, %i.de                    ; 2 uses
  store i64 %i.do, ptr %i.d, align 8, !tbaa !18
  %i.dp = load ptr, ptr %0, align 8, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1, !tbaa !20
  br label %bb.aa

bb.aa:                                            ; preds = %archive_string_append.exit, %utf8_to_unicode.exit.thread86
  %.141 = phi ptr [ %.040197, %utf8_to_unicode.exit.thread86 ], [ %.0.lcssa, %archive_string_append.exit ] ; 3 uses
  %i.dr = icmp eq i32 %.0.i90, 0
  br i1 %i.dr, label %.thread92, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ds = icmp eq i32 %.0.i90, -3
  %i.dt = and i32 %.3687289, -2048
  %i.du = icmp eq i32 %i.dt, 55296
  %or.cond4 = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %or.cond4, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !25
  %i.dv = call fastcc i32 @_utf8_to_unicode(ptr noundef %i.a, ptr noundef nonnull readonly %.141, i64 noundef %.149.lcssa) ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 3                    ; 2 uses
  %i.dx = load i32, ptr %i.a, align 4             ; 3 uses
  %i.dy = and i32 %i.dx, -1024                    ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 55296
  %or.cond3.i = select i1 %i.dw, i1 %i.dz, i1 false
  br i1 %or.cond3.i, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !25
  %i.ea = add i64 %.149.lcssa, -3                 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 3
  br i1 %i.eb, label %.thread37.i, label %bb.ae

.thread37.i:                                      ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %cesu8_to_unicode.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %.141, i64 3
  %i.ed = call fastcc i32 @_utf8_to_unicode(ptr noundef %i.b, ptr noundef nonnull readonly %i.ec, i64 noundef %i.ea)
  %.fr.i = freeze i32 %i.ed                       ; 2 uses
  %i.ee = icmp eq i32 %.fr.i, 3
  %i.ef = load i32, ptr %i.b, align 4             ; 2 uses
  %i.eg = and i32 %i.ef, -1024
  %i.eh = icmp eq i32 %i.eg, 56320
  %or.cond7.i = select i1 %i.ee, i1 %i.eh, i1 false
  br i1 %or.cond7.i, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ei = shl nuw nsw i32 %i.dx, 10
  %i.ej = add nsw i32 %i.ei, -56613888
  %i.ek = add nuw nsw i32 %i.ej, %i.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %cesu8_to_unicode.exit

bb.ag:                                            ; preds = %bb.ac
  %i.el = icmp eq i32 %i.dy, 56320
  %or.cond11.i = select i1 %i.dw, i1 %i.el, i1 false ; 2 uses
  %spec.select109 = select i1 %or.cond11.i, i32 65533, i32 %i.dx
  %spec.select110 = select i1 %or.cond11.i, i32 -3, i32 %i.dv
  br label %cesu8_to_unicode.exit

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.em = call i32 @llvm.abs.i32(i32 %.fr.i, i1 false)
  %spec.select.i = sub i32 0, %i.em
  br label %cesu8_to_unicode.exit

cesu8_to_unicode.exit:                            ; preds = %bb.ag, %bb.af, %.thread37.i, %bb.ah
  %.267 = phi i32 [ 65533, %.thread37.i ], [ %spec.select109, %bb.ag ], [ 65533, %bb.ah ], [ %i.ek, %bb.af ]
  %.027.i = phi i32 [ -3, %.thread37.i ], [ %spec.select110, %bb.ag ], [ %spec.select.i, %bb.ah ], [ 6, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ai

bb.ai:                                            ; preds = %cesu8_to_unicode.exit, %bb.ab
  %.1 = phi i32 [ %.267, %cesu8_to_unicode.exit ], [ %.3687289, %bb.ab ] ; 2 uses
  %.037 = phi i32 [ %.027.i, %cesu8_to_unicode.exit ], [ %.0.i90, %bb.ab ] ; 2 uses
  %.inv = icmp sgt i32 %.037, -1
  %spec.select = select i1 %.inv, i32 %.042196, i32 -1 ; 2 uses
  %spec.select53 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %i.en = zext nneg i32 %spec.select53 to i64     ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.141, i64 %i.en
  %i.ep = sub i64 %.149.lcssa, %i.en              ; 2 uses
  %i.eq = icmp ugt i32 %.1, 1114111
  %spec.store.select.i = select i1 %i.eq, i32 65533, i32 %.1 ; 13 uses
  %i.er = icmp samesign ult i32 %spec.store.select.i, 128
  br i1 %i.er, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.es = trunc nuw nsw i32 %spec.store.select.i to i8
  store i8 %i.es, ptr %i.c, align 4, !tbaa !20
  br label %unicode_to_utf8.exit

bb.ak:                                            ; preds = %bb.ai
  %i.et = icmp samesign ult i32 %spec.store.select.i, 2048
  br i1 %i.et, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eu = lshr i32 %spec.store.select.i, 6
  %i.ev = trunc nuw nsw i32 %i.eu to i8
  %i.ew = or disjoint i8 %i.ev, -64
  store i8 %i.ew, ptr %i.c, align 4, !tbaa !20
  %i.ex = trunc i32 %spec.store.select.i to i8
  %i.ey = and i8 %i.ex, 63
  %i.ez = or disjoint i8 %i.ey, -128
  store i8 %i.ez, ptr %i.j, align 1, !tbaa !20
  br label %unicode_to_utf8.exit

bb.am:                                            ; preds = %bb.ak
  %i.fa = icmp samesign ult i32 %spec.store.select.i, 65536
  br i1 %i.fa, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fb = lshr i32 %spec.store.select.i, 12
  %i.fc = trunc nuw nsw i32 %i.fb to i8
  %i.fd = or disjoint i8 %i.fc, -32
  store i8 %i.fd, ptr %i.c, align 4, !tbaa !20
  %i.fe = lshr i32 %spec.store.select.i, 6
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = and i8 %i.ff, 63
  %i.fh = or disjoint i8 %i.fg, -128
  store i8 %i.fh, ptr %i.j, align 1, !tbaa !20
  %i.fi = trunc i32 %spec.store.select.i to i8
  %i.fj = and i8 %i.fi, 63
  %i.fk = or disjoint i8 %i.fj, -128
  store i8 %i.fk, ptr %i.k, align 2, !tbaa !20
  br label %unicode_to_utf8.exit

bb.ao:                                            ; preds = %bb.am
  %i.fl = lshr i32 %spec.store.select.i, 18
  %i.fm = trunc nsw i32 %i.fl to i8
  %i.fn = lshr i32 %spec.store.select.i, 12
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = lshr i32 %spec.store.select.i, 6
  %i.fq = trunc i32 %i.fp to i8
  %i.fr = trunc i32 %spec.store.select.i to i8
  %i.fs = insertelement <4 x i8> poison, i8 %i.fm, i64 0
  %i.ft = insertelement <4 x i8> %i.fs, i8 %i.fo, i64 1
  %i.fu = insertelement <4 x i8> %i.ft, i8 %i.fq, i64 2
  %i.fv = insertelement <4 x i8> %i.fu, i8 %i.fr, i64 3
  %i.fw = and <4 x i8> %i.fv, <i8 -1, i8 63, i8 63, i8 63>
  %i.fx = or disjoint <4 x i8> %i.fw, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.fx, ptr %i.c, align 4, !tbaa !20
  br label %unicode_to_utf8.exit

unicode_to_utf8.exit:                             ; preds = %bb.aj, %bb.al, %bb.an, %bb.ao
  %.031.i = phi ptr [ %i.j, %bb.aj ], [ %i.k, %bb.al ], [ %i.l, %bb.an ], [ %i.m, %bb.ao ]
  %i.fy = ptrtoint ptr %.031.i to i64
  %i.fz = sub i64 %i.fy, %i.n                     ; 3 uses
  %i.ga = load i64, ptr %i.d, align 8, !tbaa !18
  %i.gb = add i64 %i.ga, 1
  %i.gc = add i64 %i.gb, %i.fz
  %i.gd = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.gc)
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.thread98, label %bb.ap

end_hunk_0
