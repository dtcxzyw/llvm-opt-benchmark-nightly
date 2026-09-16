Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadUTF8:bb.a
  %i.g = zext nneg i32 %i.f to i64
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 1) #40 ; 2 uses
  %i.i = zext nneg i32 %i.aw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.e, i64 %i.i, i1 false)
  tail call void @free(ptr noundef %i.e) #39
  br label %bb.l

bb.d:                                             ; preds = %bb.b, %CodepointToUTF8.exit
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %CodepointToUTF8.exit ] ; 2 uses
  %.02023 = phi i32 [ 0, %bb.b ], [ %i.aw, %CodepointToUTF8.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4              ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) @CodepointToUTF8.utf8, i8 0, i64 6, i1 false)
  %i.l = icmp slt i32 %i.k, 128
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = trunc i32 %i.k to i8
  store i8 %i.m, ptr @CodepointToUTF8.utf8, align 4
  br label %CodepointToUTF8.exit

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i32 %i.k, 2048
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = lshr i32 %i.k, 6
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -64
  store i8 %i.q, ptr @CodepointToUTF8.utf8, align 4
  %i.r = trunc i32 %i.k to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  store i8 %i.t, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 1), align 1
  br label %CodepointToUTF8.exit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp samesign ult i32 %i.k, 65536
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = lshr i32 %i.k, 12
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = or disjoint i8 %i.w, -32
  store i8 %i.x, ptr @CodepointToUTF8.utf8, align 4
  %i.y = lshr i32 %i.k, 6
  %i.z = trunc i32 %i.y to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  store i8 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 1), align 1
  %i.ac = trunc i32 %i.k to i8
  %i.ad = and i8 %i.ac, 63
  %i.ae = or disjoint i8 %i.ad, -128
  store i8 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 2), align 2
  br label %CodepointToUTF8.exit

bb.j:                                             ; preds = %bb.h
  %i.af = icmp samesign ult i32 %i.k, 1114112
  br i1 %i.af, label %bb.k, label %CodepointToUTF8.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = lshr i32 %i.k, 6
  %i.ah = lshr i32 %i.k, 12
  %i.ai = lshr i32 %i.k, 18
  %i.aj = trunc i32 %i.k to i8
  %i.ak = trunc i32 %i.ag to i8
  %i.al = trunc i32 %i.ah to i8
  %i.am = trunc nuw nsw i32 %i.ai to i8
  %i.an = insertelement <4 x i8> poison, i8 %i.am, i64 0
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.al, i64 1
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.ak, i64 2
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.aj, i64 3
  %i.ar = and <4 x i8> %i.aq, <i8 -1, i8 63, i8 63, i8 63>
  %i.as = or disjoint <4 x i8> %i.ar, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.as, ptr @CodepointToUTF8.utf8, align 4
  br label %CodepointToUTF8.exit

CodepointToUTF8.exit:                             ; preds = %bb.e, %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i = phi i32 [ 1, %bb.e ], [ 2, %bb.g ], [ 3, %bb.i ], [ 4, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.at = zext nneg i32 %.02023 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.at
  %i.av = zext nneg i32 %.0.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 4 @CodepointToUTF8.utf8, i64 %i.av, i1 false)
  %i.aw = add nuw nsw i32 %.0.i, %.02023          ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.l:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @CodepointToUTF8(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #31 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) @CodepointToUTF8.utf8, i8 0, i64 6, i1 false)
  %i.a = icmp slt i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i32 %0 to i8
  store i8 %i.b, ptr @CodepointToUTF8.utf8, align 4
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %0, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %0, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  store i8 %i.f, ptr @CodepointToUTF8.utf8, align 4
  %i.g = trunc i32 %0 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128
  store i8 %i.i, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 1), align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i32 %0, 65536
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = lshr i32 %0, 12
  %i.l = trunc nuw nsw i32 %i.k to i8
  %i.m = or disjoint i8 %i.l, -32
  store i8 %i.m, ptr @CodepointToUTF8.utf8, align 4
  %i.n = lshr i32 %0, 6
  %i.o = trunc i32 %i.n to i8
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128
  store i8 %i.q, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 1), align 1
  %i.r = trunc i32 %0 to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  store i8 %i.t, ptr getelementptr inbounds nuw (i8, ptr @CodepointToUTF8.utf8, i64 2), align 2
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.u = icmp samesign ult i32 %0, 1114112
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = lshr i32 %0, 6
  %i.w = lshr i32 %0, 12
  %i.x = lshr i32 %0, 18
  %i.y = trunc i32 %0 to i8
  %i.z = trunc i32 %i.v to i8
  %i.aa = trunc i32 %i.w to i8
  %i.ab = trunc nuw nsw i32 %i.x to i8
  %i.ac = insertelement <4 x i8> poison, i8 %i.ab, i64 0
  %i.ad = insertelement <4 x i8> %i.ac, i8 %i.aa, i64 1
  %i.ae = insertelement <4 x i8> %i.ad, i8 %i.z, i64 2
  %i.af = insertelement <4 x i8> %i.ae, i8 %i.y, i64 3
  %i.ag = and <4 x i8> %i.af, <i8 -1, i8 63, i8 63, i8 63>
  %i.ah = or disjoint <4 x i8> %i.ag, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ah, ptr @CodepointToUTF8.utf8, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.h ], [ 0, %bb.g ]
  store i32 %.0, ptr %1, align 4
  ret ptr @CodepointToUTF8.utf8
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @UnloadUTF8(ptr noundef captures(none) %0) local_unnamed_addr #32 {
bb.a:
  tail call void @free(ptr noundef %0) #39
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @LoadCodepoints(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #25 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.d, %.preheader.i ], [ 0, %bb.a ] ; 5 uses
  %i.a = zext i32 %.0.i to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %.not4.i = icmp eq i8 %i.c, 0
  %i.d = add i32 %.0.i, 1
  br i1 %.not4.i, label %TextLength.exit, label %.preheader.i

TextLength.exit:                                  ; preds = %.preheader.i
  %i.e = sext i32 %.0.i to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #40 ; 3 uses
  %i.g = icmp sgt i32 %.0.i, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %TextLength.exit
  %i.h = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #40
  br label %._crit_edge34

._crit_edge:                                      ; preds = %GetCodepointNext.exit
  %i.i = trunc nuw i64 %indvars.iv.next to i32
  %i.j = tail call noalias ptr @calloc(i64 noundef %indvars.iv.next, i64 noundef 4) #40 ; 2 uses
  %i.k = shl nuw nsw i64 %indvars.iv.next, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.j, ptr noundef nonnull align 4 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %._crit_edge34

.lr.ph:                                           ; preds = %TextLength.exit, %GetCodepointNext.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %GetCodepointNext.exit ], [ 0, %TextLength.exit ] ; 2 uses
  %.02330 = phi i32 [ %i.bq, %GetCodepointNext.exit ], [ 0, %TextLength.exit ] ; 2 uses
  %i.l = zext nneg i32 %.02330 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 7 uses
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = sext i8 %i.n to i32                      ; 7 uses
  %i.p = and i32 %i.o, 248
  %i.q = icmp eq i32 %i.p, 240
  br i1 %i.q, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = sext i8 %i.s to i32                      ; 2 uses
  %i.u = and i32 %i.t, 192
  %.not36.i = icmp eq i32 %i.u, 128
  br i1 %.not36.i, label %bb.c, label %GetCodepointNext.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = sext i8 %i.w to i32                      ; 2 uses
  %i.y = and i32 %i.x, 192
  %.not37.i = icmp eq i32 %i.y, 128
  br i1 %.not37.i, label %bb.d, label %GetCodepointNext.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = and i32 %i.ab, 192
  %.not38.i = icmp eq i32 %i.ac, 128
  br i1 %.not38.i, label %bb.e, label %GetCodepointNext.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = shl nsw i32 %i.o, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nsw i32 %i.t, 12
  %i.ag = and i32 %i.af, 258048
  %i.ah = or disjoint i32 %i.ag, %i.ae
  %i.ai = shl nsw i32 %i.x, 6
  %i.aj = and i32 %i.ai, 4032
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = and i32 %i.ab, 63
  %i.am = or disjoint i32 %i.ak, %i.al
  br label %GetCodepointNext.exit

bb.f:                                             ; preds = %.lr.ph
  %i.an = and i32 %i.o, 240
  %i.ao = icmp eq i32 %i.an, 224
  br i1 %i.ao, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = sext i8 %i.aq to i32                    ; 2 uses
  %i.as = and i32 %i.ar, 192
  %.not34.i = icmp eq i32 %i.as, 128
  br i1 %.not34.i, label %bb.h, label %GetCodepointNext.exit

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = and i32 %i.av, 192
  %.not35.i = icmp eq i32 %i.aw, 128
  br i1 %.not35.i, label %bb.i, label %GetCodepointNext.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = shl nsw i32 %i.o, 12
  %i.ay = and i32 %i.ax, 61440
  %i.az = shl nsw i32 %i.ar, 6
  %i.ba = and i32 %i.az, 4032
  %i.bb = or disjoint i32 %i.ba, %i.ay
  %i.bc = and i32 %i.av, 63
  %i.bd = or disjoint i32 %i.bb, %i.bc
  br label %GetCodepointNext.exit

bb.j:                                             ; preds = %bb.f
  %i.be = and i32 %i.o, 224
  %i.bf = icmp eq i32 %i.be, 192
  br i1 %i.bf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = and i32 %i.bi, 192
  %.not.i27 = icmp eq i32 %i.bj, 128
  br i1 %.not.i27, label %bb.l, label %GetCodepointNext.exit

bb.l:                                             ; preds = %bb.k
  %i.bk = shl nsw i32 %i.o, 6
  %i.bl = and i32 %i.bk, 1984
  %i.bm = and i32 %i.bi, 63
  %i.bn = or disjoint i32 %i.bm, %i.bl
  br label %GetCodepointNext.exit

bb.m:                                             ; preds = %bb.j
  %i.bo = icmp sgt i8 %i.n, -1
  %spec.select.i = select i1 %i.bo, i32 %i.o, i32 63
  br label %GetCodepointNext.exit

GetCodepointNext.exit:                            ; preds = %bb.e, %bb.i, %bb.l, %bb.b, %bb.c, %bb.d, %bb.g, %bb.h, %bb.k, %bb.m
  %.028 = phi i32 [ 1, %bb.m ], [ 1, %bb.k ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.h ], [ 1, %bb.g ], [ 4, %bb.e ], [ 2, %bb.l ], [ 3, %bb.i ]
  %.032.i = phi i32 [ %spec.select.i, %bb.m ], [ 63, %bb.k ], [ 63, %bb.d ], [ 63, %bb.c ], [ 63, %bb.b ], [ 63, %bb.h ], [ 63, %bb.g ], [ %i.am, %bb.e ], [ %i.bn, %bb.l ], [ %i.bd, %bb.i ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %.032.i, ptr %i.bp, align 4
  %i.bq = add nuw nsw i32 %.028, %.02330          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.br = icmp slt i32 %i.bq, %.0.i
  br i1 %i.br, label %.lr.ph, label %._crit_edge

._crit_edge34:                                    ; preds = %._crit_edge.thread, %._crit_edge
  %i.bs = phi ptr [ %i.h, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %.024.lcssa43 = phi i32 [ 0, %._crit_edge.thread ], [ %i.i, %._crit_edge ]
  tail call void @free(ptr noundef %i.f) #39
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge34, %bb.a
  %.025 = phi ptr [ %i.bs, %._crit_edge34 ], [ null, %bb.a ]
  %.1 = phi i32 [ %.024.lcssa43, %._crit_edge34 ], [ 0, %bb.a ]
  store i32 %.1, ptr %1, align 4
  ret ptr %.025
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @UnloadCodepoints(ptr noundef captures(none) %0) local_unnamed_addr #32 {
bb.a:
  tail call void @free(ptr noundef %0) #39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @GetCodepointCount(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not812 = icmp eq i8 %i.a, 0
  br i1 %.not812, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %GetCodepointNext.exit
  %i.b = phi i8 [ %i.t, %GetCodepointNext.exit ], [ %i.a, %.preheader ]
  %.014 = phi ptr [ %i.r, %GetCodepointNext.exit ], [ %0, %.preheader ] ; 5 uses
  %.0613 = phi i32 [ %i.s, %GetCodepointNext.exit ], [ 0, %.preheader ]
  %i.c = zext i8 %i.b to i32                      ; 3 uses
  %i.d = and i32 %i.c, 248
  %i.e = icmp eq i32 %i.d, 240
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %.not36.i = icmp slt i8 %i.g, -64
  br i1 %.not36.i, label %bb.c, label %GetCodepointNext.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %.not37.i = icmp slt i8 %i.i, -64
  br i1 %.not37.i, label %GetCodepointNext.exit.sink.split, label %GetCodepointNext.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = and i32 %i.c, 240
  %i.k = icmp eq i32 %i.j, 224
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %.not34.i = icmp slt i8 %i.m, -64
  br i1 %.not34.i, label %GetCodepointNext.exit.sink.split, label %GetCodepointNext.exit

bb.f:                                             ; preds = %bb.d
  %i.n = and i32 %i.c, 224
  %i.o = icmp eq i32 %i.n, 192
  br i1 %i.o, label %GetCodepointNext.exit.sink.split, label %GetCodepointNext.exit

GetCodepointNext.exit.sink.split:                 ; preds = %bb.f, %bb.e, %bb.c
  %.sink19 = phi i64 [ 2, %bb.e ], [ 3, %bb.c ], [ 1, %bb.f ]
  %.sink = phi i64 [ 3, %bb.e ], [ 4, %bb.c ], [ 2, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 %.sink19
  %i.q = load i8, ptr %i.p, align 1
  %.not.i = icmp slt i8 %i.q, -64
  %spec.select11 = select i1 %.not.i, i64 %.sink, i64 1
  br label %GetCodepointNext.exit

GetCodepointNext.exit:                            ; preds = %GetCodepointNext.exit.sink.split, %bb.f, %bb.b, %bb.c, %bb.e
  %.09 = phi i64 [ 1, %bb.e ], [ 1, %bb.b ], [ 1, %bb.f ], [ 1, %bb.c ], [ %spec.select11, %GetCodepointNext.exit.sink.split ]
  %i.r = getelementptr inbounds nuw i8, ptr %.014, i64 %.09 ; 2 uses
  %i.s = add i32 %.0613, 1                        ; 2 uses
  %i.t = load i8, ptr %i.r, align 1               ; 2 uses
  %.not8 = icmp eq i8 %i.t, 0
  br i1 %.not8, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %GetCodepointNext.exit, %.preheader, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ %i.s, %GetCodepointNext.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2097152) i32 @GetCodepoint(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  store i32 1, ptr %1, align 4
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1                 ; 10 uses
  %i.c = zext i8 %i.b to i32                      ; 7 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 224
  %i.f = icmp eq i32 %i.e, 192
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %.mask121 = and i32 %i.i, 192
  %.not120 = icmp eq i32 %.mask121, 128
  br i1 %.not120, label %bb.e, label %.critedge.critedge

.critedge.critedge:                               ; preds = %bb.d
  store i32 2, ptr %1, align 4
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i8 %i.b, 62
  %or.cond = icmp ult i8 %i.j, 30
  br i1 %or.cond, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.k = shl nuw nsw i32 %i.c, 6
  %i.l = and i32 %i.k, 1984
  %i.m = and i32 %i.i, 63
  %i.n = or disjoint i32 %i.m, %i.l
  store i32 2, ptr %1, align 4
  br label %.critedge

bb.g:                                             ; preds = %bb.c
  %i.o = and i32 %i.c, 240
  %i.p = icmp eq i32 %i.o, 224
  br i1 %i.p, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1               ; 3 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %.mask117 = and i32 %i.s, 192
  %.not116 = icmp eq i32 %.mask117, 128
  br i1 %.not116, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %1, align 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %.mask119 = and i32 %i.v, 192
  %.not118 = icmp eq i32 %.mask119, 128
  br i1 %.not118, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %1, align 4
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.w = icmp ne i8 %i.b, -32
  %i.x = and i8 %i.r, -32
  %or.cond6 = icmp eq i8 %i.x, -96
  %or.cond125 = or i1 %i.w, %or.cond6
  br i1 %or.cond125, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = icmp ne i8 %i.b, -19
  %or.cond9 = icmp slt i8 %i.r, -96
  %or.cond126 = or i1 %i.y, %or.cond9
  br i1 %or.cond126, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 2, ptr %1, align 4
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.z = and i8 %i.b, -16
  %or.cond11 = icmp eq i8 %i.z, -32
  br i1 %or.cond11, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.aa = shl nuw nsw i32 %i.c, 12
  %i.ab = and i32 %i.aa, 61440
  %i.ac = shl nuw nsw i32 %i.s, 6
  %i.ad = and i32 %i.ac, 4032
  %i.ae = or disjoint i32 %i.ad, %i.ab
  %i.af = and i32 %i.v, 63
  %i.ag = or disjoint i32 %i.ae, %i.af
  store i32 3, ptr %1, align 4
  br label %.critedge

bb.q:                                             ; preds = %bb.g
  %i.ah = and i32 %i.c, 248
end_hunk_0
