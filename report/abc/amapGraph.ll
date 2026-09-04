Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/amapGraph?download=true
inline.NumInlined: 118
inline.NumDeleted: 31
begin_hunk_0_@Amap_ManCreateAnd:bb.a
  %i.k = and i32 %i.j, 1
  %i.l = lshr i32 %i.i, 2
  %i.m = and i32 %i.l, 1073741822
  %i.n = or disjoint i32 %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.n, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !33
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !33
  %i.s = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.t = and i64 %i.s, -2
  %i.u = inttoptr i64 %i.t to ptr                 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  %i.x = trunc i64 %i.s to i32
  %i.y = and i32 %i.x, 1
  %i.z = lshr i32 %i.w, 2
  %i.aa = and i32 %i.z, 1073741822
  %i.ab = or disjoint i32 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !33
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !33
  %i.ag = load i64, ptr %i.g, align 8
  %i.ah = lshr i64 %i.ag, 61
  %i.ai = xor i64 %i.ah, %i.e
  %i.aj = load i64, ptr %i.u, align 8
  %i.ak = lshr i64 %i.aj, 61
  %i.al = xor i64 %i.ak, %i.s
  %i.am = and i64 %i.ai, 1
  %i.an = and i64 %i.am, %i.al
  %i.ao = load i64, ptr %i.a, align 8
  %i.ap = shl nuw nsw i64 %i.an, 61
  %i.aq = and i64 %i.ao, -2305843009213693953
  %i.ar = or disjoint i64 %i.ap, %i.aq
  store i64 %i.ar, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !34
  %i.aw = tail call noundef i32 @llvm.smax.i32(i32 %i.at, i32 %i.av) ; 2 uses
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !35
  %.not = icmp sgt i32 %i.ba, %i.aw
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !23
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @Amap_ManCreateXor(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Amap_ManSetupObj(ptr noundef %0) ; 8 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -8
  %i.d = or disjoint i64 %i.c, 5
  store i64 %i.d, ptr %i.a, align 8
  %i.e = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.f = and i64 %i.e, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32
  %i.j = trunc i64 %i.e to i32
  %i.k = and i32 %i.j, 1
  %i.l = lshr i32 %i.i, 2
  %i.m = and i32 %i.l, 1073741822
  %i.n = or disjoint i32 %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.n, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !33
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !33
  %i.s = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.t = and i64 %i.s, -2
  %i.u = inttoptr i64 %i.t to ptr                 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  %i.x = trunc i64 %i.s to i32
  %i.y = and i32 %i.x, 1
  %i.z = lshr i32 %i.w, 2
  %i.aa = and i32 %i.z, 1073741822
  %i.ab = or disjoint i32 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !33
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !33
  %i.ag = load i64, ptr %i.g, align 8
  %i.ah = load i64, ptr %i.u, align 8
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = lshr i64 %i.ai, 61
  %i.ak = xor i64 %i.aj, %i.e
  %i.al = xor i64 %i.ak, %i.s
  %i.am = load i64, ptr %i.a, align 8
  %i.an = shl i64 %i.al, 61
  %i.ao = and i64 %i.an, 2305843009213693952
  %i.ap = and i64 %i.am, -2305843009213693953
  %i.aq = or disjoint i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !34
  %i.av = tail call noundef i32 @llvm.smax.i32(i32 %i.as, i32 %i.au)
  %i.aw = add nsw i32 %i.av, 2                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !35
  %i.ba = icmp slt i32 %i.az, %i.aw
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @Amap_ManCreateMux(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Amap_ManSetupObj(ptr noundef %0) ; 9 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -8
  %i.d = or disjoint i64 %i.c, 6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.f = and i64 %i.e, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32
  %i.j = trunc i64 %i.e to i32
  %i.k = and i32 %i.j, 1
  %i.l = lshr i32 %i.i, 2
  %i.m = and i32 %i.l, 1073741822
  %i.n = or disjoint i32 %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.n, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !33
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !33
  %i.s = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.t = and i64 %i.s, -2
  %i.u = inttoptr i64 %i.t to ptr                 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  %i.x = trunc i64 %i.s to i32
  %i.y = and i32 %i.x, 1
  %i.z = lshr i32 %i.w, 2
  %i.aa = and i32 %i.z, 1073741822
  %i.ab = or disjoint i32 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !33
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !33
  %i.ag = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.ah = and i64 %i.ag, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = trunc i64 %i.aj to i32
  %i.al = trunc i64 %i.ag to i32
  %i.am = and i32 %i.al, 1
  %i.an = lshr i32 %i.ak, 2
  %i.ao = and i32 %i.an, 1073741822
  %i.ap = or disjoint i32 %i.ao, %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !33
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !33
  %i.au = load i64, ptr %i.u, align 8
  %i.av = lshr i64 %i.au, 61
  %i.aw = xor i64 %i.av, %i.s
  %4 = trunc i64 %i.aw to i32
  %i.ax = load i64, ptr %i.ai, align 8
  %i.ay = lshr i64 %i.ax, 61
  %i.az = xor i64 %i.ay, %i.ag
  %5 = trunc i64 %i.az to i32
  %6 = and i32 %5, 1                              ; 2 uses
  %7 = and i32 %6, %4
  %i.ba = load i64, ptr %i.g, align 8
  %i.bb = lshr i64 %i.ba, 61
  %i.bc = xor i64 %i.bb, %i.e
  %8 = trunc i64 %i.bc to i32
  %9 = and i32 %8, 1
  %10 = xor i32 %6, -1
  %11 = and i32 %9, %10
  %12 = or i32 %11, %7
  %13 = zext nneg i32 %12 to i64
  %i.bd = load i64, ptr %i.a, align 8
  %i.be = shl nuw nsw i64 %13, 61
  %i.bf = and i64 %i.bd, -2305843009213693953
  %i.bg = or disjoint i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.a, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !34
  %i.bl = tail call noundef i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bk) ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !34
  %i.bp = tail call noundef i32 @llvm.smax.i32(i32 %i.bl, i32 %i.bo)
  %i.bq = add nsw i32 %i.bp, 2                    ; 3 uses
  store i32 %i.bq, ptr %i.bm, align 8, !tbaa !34
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !35
  %i.bt = icmp slt i32 %i.bs, %i.bq
  br i1 %i.bt, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !23
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Amap_ManCreateChoice(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = or i64 %i.a, 4611686018427387904
  store i64 %i.b, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load i32, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Amap_ObjChoice.exit
  %.013 = phi ptr [ %1, %bb.a ], [ %i.m, %Amap_ObjChoice.exit ] ; 2 uses
  %i.e = phi i32 [ %.promoted, %bb.a ], [ %i.h, %Amap_ObjChoice.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !34
  %i.h = tail call noundef i32 @llvm.smax.i32(i32 %i.e, i32 %i.g) ; 4 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !34
  %i.i = getelementptr i8, ptr %.013, i64 20
  %.0.val = load i32, ptr %i.i, align 4, !tbaa !36 ; 2 uses
  %.not.i = icmp eq i32 %.0.val, 0
  br i1 %.not.i, label %Amap_ObjChoice.exit.thread, label %Amap_ObjChoice.exit

Amap_ObjChoice.exit:                              ; preds = %bb.b
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.j = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.k = sext i32 %.0.val to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val.val.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %Amap_ObjChoice.exit.thread, label %bb.b, !llvm.loop !0

Amap_ObjChoice.exit.thread:                       ; preds = %bb.b, %Amap_ObjChoice.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35
  %i.p = icmp slt i32 %i.o, %i.h
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %Amap_ObjChoice.exit.thread
  store i32 %i.h, ptr %i.n, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %Amap_ObjChoice.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define void @Amap_ManCreateXorChoices(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Amap_ManSetupObj(ptr noundef %0) ; 8 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -8
  %i.d = or disjoint i64 %i.c, 5
  store i64 %i.d, ptr %i.a, align 8
  %i.e = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.f = and i64 %i.e, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32
  %i.j = trunc i64 %i.e to i32
  %i.k = and i32 %i.j, 1                          ; 2 uses
  %i.l = lshr i32 %i.i, 2
  %i.m = and i32 %i.l, 1073741822
  %i.n = or disjoint i32 %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.n, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 8 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !33
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !33
  %i.s = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.t = and i64 %i.s, -2
  %i.u = inttoptr i64 %i.t to ptr                 ; 10 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  %i.x = trunc i64 %i.s to i32
  %i.y = and i32 %i.x, 1                          ; 2 uses
  %i.z = lshr i32 %i.w, 2
  %i.aa = and i32 %i.z, 1073741822
  %i.ab = or disjoint i32 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 8 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !33
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !33
  %i.ag = load i64, ptr %i.g, align 8
  %i.ah = load i64, ptr %i.u, align 8
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = lshr i64 %i.ai, 61
  %i.ak = xor i64 %i.aj, %i.e
  %i.al = xor i64 %i.ak, %i.s
  %i.am = load i64, ptr %i.a, align 8
  %i.an = shl i64 %i.al, 61
  %i.ao = and i64 %i.an, 2305843009213693952
  %i.ap = and i64 %i.am, -2305843009213693953
  %i.aq = or disjoint i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !34
  %i.av = tail call noundef i32 @llvm.smax.i32(i32 %i.as, i32 %i.au)
  %i.aw = add nsw i32 %i.av, 2                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 8 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !35
  %i.ba = icmp slt i32 %i.az, %i.aw
  br i1 %i.ba, label %bb.b, label %Amap_ManCreateXor.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !35
  br label %Amap_ManCreateXor.exit

Amap_ManCreateXor.exit:                           ; preds = %bb.a, %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !23
  store ptr %i.a, ptr %3, align 8, !tbaa !38
  %i.be = xor i64 %i.e, 1                         ; 2 uses
  %i.bf = tail call ptr @Amap_ManSetupObj(ptr noundef nonnull %0) ; 8 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = and i64 %i.bg, -8
  %i.bi = or disjoint i64 %i.bh, 5
  store i64 %i.bi, ptr %i.bf, align 8
  %i.bj = load i64, ptr %i.g, align 8
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = trunc i64 %i.be to i32
  %i.bm = and i32 %i.bl, 1                        ; 2 uses
  %i.bn = lshr i32 %i.bk, 2
  %i.bo = and i32 %i.bn, 1073741822
  %i.bp = or disjoint i32 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !23
  %i.br = load i32, ptr %i.p, align 8, !tbaa !33
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.p, align 8, !tbaa !33
  %i.bt = load i64, ptr %i.u, align 8
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = and i32 %i.bv, 1073741822
  %i.bx = or disjoint i32 %i.bw, %i.y
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !23
  %i.bz = load i32, ptr %i.ad, align 8, !tbaa !33
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.ad, align 8, !tbaa !33
  %i.cb = load i64, ptr %i.g, align 8
  %i.cc = load i64, ptr %i.u, align 8
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = lshr i64 %i.cd, 61
  %i.cf = xor i64 %i.ce, %i.s
  %i.cg = xor i64 %i.cf, %i.be
  %i.ch = load i64, ptr %i.bf, align 8
  %i.ci = shl i64 %i.cg, 61
  %i.cj = and i64 %i.ci, 2305843009213693952
  %i.ck = and i64 %i.ch, -2305843009213693953
  %i.cl = or disjoint i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.bf, align 8
  %i.cm = load i32, ptr %i.ar, align 8, !tbaa !34
  %i.cn = load i32, ptr %i.at, align 8, !tbaa !34
  %i.co = tail call noundef i32 @llvm.smax.i32(i32 %i.cm, i32 %i.cn)
  %i.cp = add nsw i32 %i.co, 2                    ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !34
end_hunk_0
