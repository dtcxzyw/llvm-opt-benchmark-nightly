Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_cab?download=true
inline.NumInlined: 94
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@cab_read_ahead_cfdata:bb.a
  %i.aol = load i32, ptr %i.aok, align 1          ; 4 uses
  %.not34.i.i = icmp slt i32 %i.aol, %.neg10.i.reass.i.reass.reass.reass
  br i1 %.not34.i.i, label %bb.ie, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aom = load i32, ptr %i.aoe, align 4, !tbaa !214 ; 2 uses
  %i.aon = icmp slt i32 %i.aol, %i.aom
  br i1 %i.aon, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.aoo = icmp slt i32 %i.aol, 0
  %.0.p.i.i = select i1 %i.aoo, i32 %i.aom, i32 %.neg10.i.reass.i.reass.reass.reass
  %.0.i107.i = add i32 %.0.p.i.i, %i.aol
  store i32 %.0.i107.i, ptr %i.aok, align 1
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic, %bb.ib
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoi, i64 5 ; 2 uses
  %i.aoq = icmp ult ptr %i.aop, %i.aob
  br i1 %i.aoq, label %bb.ia, label %lzx_translation.exit.loopexit.i, !llvm.loop !185

lzx_translation.exit.loopexit.i:                  ; preds = %bb.ie, %bb.ia
  %.pre419.i = load ptr, ptr %i.fe, align 8, !tbaa !87
  br label %lzx_translation.exit.i

lzx_translation.exit.i:                           ; preds = %lzx_translation.exit.loopexit.i, %bb.hz
  %i.aor = phi ptr [ %.pre419.i, %lzx_translation.exit.loopexit.i ], [ %.pre420.i, %bb.hz ]
  %i.aos = getelementptr inbounds nuw i8, ptr %i.fd, i64 14
  %i.aot = load i16, ptr %i.aos, align 2, !tbaa !101
  %i.aou = zext i16 %i.aot to i64                 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aou
  %i.aow = and i64 %.lcssa259.i, 65535
  %i.aox = sub nsw i64 %i.aow, %i.aou
  store i64 %i.aox, ptr %1, align 8, !tbaa !11
  store i16 %i.ane, ptr %i.fl, align 4, !tbaa !100
  br label %cab_read_ahead_cfdata_none.exit

.critedge.i18:                                    ; preds = %bb.ht, %bb.hs, %bb.cx
  store i64 -30, ptr %1, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %cab_read_ahead_cfdata_none.exit

.critedge96.i:                                    ; preds = %bb.hx, %bb.hw
  store i64 -30, ptr %1, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %cab_read_ahead_cfdata_none.exit

bb.if:                                            ; preds = %bb.c
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !55
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.27, ptr noundef %i.aoz) #17
  store i64 -25, ptr %1, align 8, !tbaa !11
  br label %cab_read_ahead_cfdata_none.exit

cab_read_ahead_cfdata_none.exit:                  ; preds = %.critedge96.i, %.critedge.i18, %lzx_translation.exit.i, %bb.ct, %bb.bl, %bb.bj, %.critedge171.i, %bb.bg, %bb.bf, %bb.bb, %bb.as, %.thread177.i, %bb.s, %bb.m, %bb.k, %bb.h, %bb.e, %bb.if, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.if ], [ null, %bb.s ], [ %i.t, %bb.h ], [ null, %bb.e ], [ null, %bb.k ], [ %i.ba, %bb.m ], [ null, %bb.as ], [ null, %bb.bf ], [ %i.ex, %bb.bb ], [ null, %.critedge171.i ], [ null, %.thread177.i ], [ null, %bb.bg ], [ null, %bb.bj ], [ %i.fu, %bb.bl ], [ null, %.critedge.i18 ], [ %i.aov, %lzx_translation.exit.i ], [ null, %.critedge96.i ], [ null, %bb.ct ]
  ret ptr %.0
}

declare i32 @cm_zlib_inflateReset(ptr noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflateSetDictionary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -30, 1) i32 @lzx_huffman_init(ptr nofree noundef captures(none) %0, i64 noundef range(i64 -2147483392, 2147483648) %1, i32 noundef range(i32 8, 17) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !102
  %i.e = trunc nsw i64 %1 to i32
  %.not = icmp eq i32 %i.d, %i.e
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @free(ptr noundef %i.b) #17
  %i.f = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 1) #18 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !85
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = trunc nsw i64 %1 to i32
  store i32 %i.h, ptr %0, align 8, !tbaa !102
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 0, i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = zext nneg i32 %2 to i64
  %i.m = shl nuw nsw i64 2, %i.l
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #21 ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !86
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %2, ptr %i.p, align 4, !tbaa !103
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.c
  %.0 = phi i32 [ -30, %bb.g ], [ -30, %bb.c ], [ 0, %bb.h ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @lzx_br_fillup(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = sub i32 64, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.e = phi i32 [ %i.b, %bb.a ], [ %i.cl, %bb.j ] ; 3 uses
  %.0 = phi i32 [ %i.c, %bb.a ], [ %i.cm, %bb.j ] ; 2 uses
  %i.f = ashr i32 %.0, 4
  switch i32 %i.f, label %._crit_edge [
    i32 4, label %bb.c
    i32 3, label %bb.e
    i32 0, label %.loopexit
  ]

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %i.d, align 8, !tbaa !109
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.d, align 8, !tbaa !109  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 7
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !108    ; 8 uses
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i64
  %i.l = shl nuw i64 %i.k, 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 40
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 32
  %i.v = or disjoint i64 %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 24
  %i.aa = or disjoint i64 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 16
  %i.af = or disjoint i64 %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 8
  %i.ak = or disjoint i64 %i.af, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = zext i8 %i.am to i64
  %i.ao = or i64 %i.ak, %i.an
  store i64 %i.ao, ptr %1, align 8, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ap, ptr %0, align 8, !tbaa !108
  %i.aq = add nsw i64 %i.g, -8
  store i64 %i.aq, ptr %i.d, align 8, !tbaa !109
  %i.ar = add nsw i32 %i.e, 64
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !104
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.as = load i64, ptr %i.d, align 8, !tbaa !109 ; 3 uses
  %i.at = icmp sgt i64 %i.as, 5
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = load i64, ptr %1, align 8, !tbaa !106
  %i.av = shl i64 %i.au, 48
  %i.aw = load ptr, ptr %0, align 8, !tbaa !108   ; 7 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !9
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %4, 40
  %6 = or disjoint i64 %5, %i.av
  %7 = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ax = zext i8 %7 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 32
  %i.az = or disjoint i64 %6, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 24
  %i.be = or disjoint i64 %i.az, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 16
  %i.bj = or disjoint i64 %i.be, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 8
  %i.bo = or disjoint i64 %i.bj, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i64
  %i.bs = or i64 %i.bo, %i.br
  store i64 %i.bs, ptr %1, align 8, !tbaa !106
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  store ptr %i.bt, ptr %0, align 8, !tbaa !108
  %i.bu = add nsw i64 %i.as, -6
  store i64 %i.bu, ptr %i.d, align 8, !tbaa !109
  %i.bv = add nsw i32 %i.e, 48
  store i32 %i.bv, ptr %i.a, align 8, !tbaa !104
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.bw = phi i64 [ %.pre, %._crit_edge ], [ %i.as, %bb.e ], [ %i.g, %bb.c ] ; 3 uses
  %i.bx = icmp slt i64 %i.bw, 2
  br i1 %i.bx, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.by = icmp eq i64 %i.bw, 1
  br i1 %i.by, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.bz = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %0, align 8, !tbaa !108
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.cb, ptr %i.cc, align 4, !tbaa !107
  store i64 0, ptr %i.d, align 8, !tbaa !109
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 1, ptr %i.cd, align 1, !tbaa !105
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.ce = load i64, ptr %1, align 8, !tbaa !106
  %i.cf = shl i64 %i.ce, 16
  %i.cg = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %.val = load i16, ptr %i.cg, align 1
  %i.ch = zext i16 %.val to i64
  %i.ci = or disjoint i64 %i.cf, %i.ch
  store i64 %i.ci, ptr %1, align 8, !tbaa !106
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  store ptr %i.cj, ptr %0, align 8, !tbaa !108
  %i.ck = add nsw i64 %i.bw, -2
  store i64 %i.ck, ptr %i.d, align 8, !tbaa !109
  %i.cl = add nsw i32 %i.e, 16                    ; 2 uses
  store i32 %i.cl, ptr %i.a, align 8, !tbaa !104
  %i.cm = add nsw i32 %.0, -16
  br label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.h, %bb.i, %bb.f, %bb.d
  %.040 = phi i32 [ 0, %bb.h ], [ 1, %bb.d ], [ 1, %bb.f ], [ 0, %bb.i ], [ 1, %bb.b ]
  ret i32 %.040
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @lzx_make_huffman_table(ptr nofree noundef captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = alloca [17 x i32], align 16              ; 22 uses
  %i.b = alloca [17 x i32], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66   ; 2 uses
  %.not76 = icmp ne i32 %i.f, 0
  %i.g = shl nsw i32 %i.f, 15                     ; 2 uses
  %.165 = zext i1 %.not76 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !66   ; 2 uses
  %.not76.1 = icmp eq i32 %i.j, 0
  %i.k = shl nsw i32 %i.j, 14
  %.165.1 = select i1 %.not76.1, i32 %.165, i32 2
  %.1.1 = add nsw i32 %i.k, %i.g                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.1.1, ptr %i.l, align 4, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 4, !tbaa !66   ; 2 uses
  %.not76.2 = icmp eq i32 %i.n, 0
  %i.o = shl nsw i32 %i.n, 13
  %.165.2 = select i1 %.not76.2, i32 %.165.1, i32 3
  %.1.2 = add nsw i32 %i.o, %.1.1                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.1.2, ptr %i.p, align 16, !tbaa !66
  store <4 x i32> <i32 32768, i32 16384, i32 8192, i32 4096>, ptr %i.d, align 4, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !66   ; 2 uses
  %.not76.3 = icmp eq i32 %i.r, 0
  %i.s = shl nsw i32 %i.r, 12
  %.165.3 = select i1 %.not76.3, i32 %.165.2, i32 4
  %.1.3 = add nsw i32 %i.s, %.1.2                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %.1.3, ptr %i.t, align 4, !tbaa !66
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 4, !tbaa !66   ; 2 uses
  %.not76.4 = icmp eq i32 %i.w, 0
  %i.x = shl nsw i32 %i.w, 11
  %.165.4 = select i1 %.not76.4, i32 %.165.3, i32 5
  %.1.4 = add nsw i32 %i.x, %.1.3                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.1.4, ptr %i.y, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !66  ; 2 uses
  %.not76.5 = icmp eq i32 %i.aa, 0
  %i.ab = shl nsw i32 %i.aa, 10
  %.165.5 = select i1 %.not76.5, i32 %.165.4, i32 6
  %.1.5 = add nsw i32 %i.ab, %.1.4                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %.1.5, ptr %i.ac, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !66 ; 2 uses
  %.not76.6 = icmp eq i32 %i.ae, 0
  %i.af = shl nsw i32 %i.ae, 9
  %.165.6 = select i1 %.not76.6, i32 %.165.5, i32 7
  %.1.6 = add nsw i32 %i.af, %.1.5                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %.1.6, ptr %i.ag, align 16, !tbaa !66
  store <4 x i32> <i32 2048, i32 1024, i32 512, i32 256>, ptr %i.u, align 4, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !66 ; 2 uses
  %.not76.7 = icmp eq i32 %i.ai, 0
  %i.aj = shl nsw i32 %i.ai, 8
  %.165.7 = select i1 %.not76.7, i32 %.165.6, i32 8
  %.1.7 = add nsw i32 %i.aj, %.1.6                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %.1.7, ptr %i.ak, align 4, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load i32, ptr %i.am, align 4, !tbaa !66 ; 2 uses
  %.not76.8 = icmp eq i32 %i.an, 0
  %i.ao = shl nsw i32 %i.an, 7
  %.165.8 = select i1 %.not76.8, i32 %.165.7, i32 9
  %.1.8 = add nsw i32 %i.ao, %.1.7                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %.1.8, ptr %i.ap, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !66 ; 2 uses
  %.not76.9 = icmp eq i32 %i.ar, 0
  %i.as = shl nsw i32 %i.ar, 6
  %.165.9 = select i1 %.not76.9, i32 %.165.8, i32 10
  %.1.9 = add nsw i32 %i.as, %.1.8                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %.1.9, ptr %i.at, align 4, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load i32, ptr %i.au, align 4, !tbaa !66 ; 2 uses
  %.not76.10 = icmp eq i32 %i.av, 0
  %i.aw = shl nsw i32 %i.av, 5
  %.165.10 = select i1 %.not76.10, i32 %.165.9, i32 11
  %.1.10 = add nsw i32 %i.aw, %.1.9               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.1.10, ptr %i.ax, align 16, !tbaa !66
  store <4 x i32> <i32 128, i32 64, i32 32, i32 16>, ptr %i.al, align 4, !tbaa !66
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !66 ; 2 uses
  %.not76.11 = icmp eq i32 %i.az, 0
  %i.ba = shl nsw i32 %i.az, 4
  %.165.11 = select i1 %.not76.11, i32 %.165.10, i32 12
  %.1.11 = add nsw i32 %i.ba, %.1.10              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %.1.11, ptr %i.bb, align 4, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !66 ; 2 uses
  %.not76.12 = icmp eq i32 %i.be, 0
  %i.bf = shl nsw i32 %i.be, 3
  %.165.12 = select i1 %.not76.12, i32 %.165.11, i32 13
  %.1.12 = add nsw i32 %i.bf, %.1.11              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %.1.12, ptr %i.bg, align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !66 ; 2 uses
  %.not76.13 = icmp eq i32 %i.bi, 0
  %i.bj = shl nsw i32 %i.bi, 2
  %.165.13 = select i1 %.not76.13, i32 %.165.12, i32 14
  %.1.13 = add nsw i32 %i.bj, %.1.12              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %.1.13, ptr %i.bk, align 4, !tbaa !66
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !66 ; 2 uses
  %.not76.14 = icmp eq i32 %i.bm, 0
  %i.bn = shl nsw i32 %i.bm, 1
  %.165.14 = select i1 %.not76.14, i32 %.165.13, i32 15
  %.1.14 = add nsw i32 %i.bn, %.1.13              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %.1.14, ptr %i.bo, align 16, !tbaa !66
  store <4 x i32> <i32 8, i32 4, i32 2, i32 1>, ptr %i.bc, align 4, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !66 ; 2 uses
  %.not76.15 = icmp eq i32 %i.bq, 0
  %.165.15 = select i1 %.not76.15, i32 %.165.14, i32 16 ; 8 uses
  %.1.15 = add nsw i32 %i.bq, %.1.14
  %i.br = and i32 %.1.15, 65535
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !103 ; 4 uses
end_hunk_0
