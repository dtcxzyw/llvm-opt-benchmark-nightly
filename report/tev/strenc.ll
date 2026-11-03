Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/strenc?download=true
inline.NumInlined: 36
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 49
begin_hunk_0_@ImageStrEncInit:bb.a
  store ptr @processMacroblock, ptr %i.ed, align 8, !tbaa !109
  %i.ee = getelementptr inbounds nuw i8, ptr %calloc, i64 34720
  store ptr @processMacroblock, ptr %i.ee, align 8, !tbaa !110
  %i.ef = getelementptr inbounds nuw i8, ptr %calloc, i64 34728
  store ptr @processMacroblock, ptr %i.ef, align 8, !tbaa !111
  %i.eg = getelementptr inbounds nuw i8, ptr %calloc, i64 35672
  %i.eh = getelementptr inbounds nuw i8, ptr %calloc, i64 35680
  %i.ei = ptrtoint ptr %i.dg to i64
  %i.ej = add i64 %i.ei, 127
  %i.ek = and i64 %i.ej, -128
  %i.el = inttoptr i64 %i.ek to ptr               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %calloc, i64 34864
  store ptr %i.el, ptr %i.em, align 8, !tbaa !112
  %i.en = extractelement <2 x i64> %i.du, i64 0
  %i.eo = mul i64 %i.en, %i.n
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %calloc, i64 34992
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !112
  %i.er = load ptr, ptr %i.cz, align 8, !tbaa !73
  %i.es = getelementptr inbounds nuw i8, ptr %calloc, i64 34376
  store ptr %i.er, ptr %i.es, align 8, !tbaa !73
  store ptr %calloc120, ptr %i.eg, align 8, !tbaa !38
  store i32 1, ptr %i.eh, align 8, !tbaa !53
  %i.et = tail call i32 @StrEncInit(ptr noundef nonnull %calloc) ; 0 uses
  %i.eu = tail call i32 @WriteImagePlaneHeader(ptr noundef nonnull %calloc) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.0105 = phi ptr [ %calloc, %bb.h ], [ null, %bb.f ]
  store ptr %.0105, ptr %i.bg, align 8, !tbaa !38
  store ptr %calloc120, ptr %2, align 8, !tbaa !105
  %i.ev = getelementptr inbounds nuw i8, ptr %calloc120, i64 34464
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !62
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.j, label %writeIndexTableNull.exit

bb.j:                                             ; preds = %bb.i
  %i.ey = load ptr, ptr %i.cz, align 8, !tbaa !73 ; 5 uses
  tail call void @fillToByte(ptr noundef %i.ey) #17
  tail call void @putBit16(ptr noundef %i.ey, i32 noundef 4, i32 noundef 16) #17
  tail call void @putBit16(ptr noundef %i.ey, i32 noundef 111, i32 noundef 8) #17
  tail call void @putBit16(ptr noundef %i.ey, i32 noundef 255, i32 noundef 8) #17
  tail call void @putBit16(ptr noundef %i.ey, i32 noundef 1, i32 noundef 16) #17
  br label %writeIndexTableNull.exit

writeIndexTableNull.exit:                         ; preds = %bb.j, %bb.i, %bb.a, %bb.b, %._crit_edge, %bb.g
  %.0108 = phi i32 [ -1, %bb.a ], [ -1, %bb.g ], [ -1, %._crit_edge ], [ -1, %bb.b ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.0108
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ImageStrEncEncode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 35672
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !106
  %.not = icmp eq i64 %i.c, 35944
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 33008
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !253
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 34520 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !70
  tail call void @initMRPtr(ptr noundef nonnull %0) #17
  %.not39 = icmp eq ptr %i.b, null
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 33008
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !253
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34512 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !71
  %i.i = icmp eq i64 %i.h, 0                      ; 3 uses
  %.036.in.v = select i1 %i.i, i64 34664, i64 34688
  %.036.in = getelementptr inbounds nuw i8, ptr %0, i64 %.036.in.v
  %.035.in.v = select i1 %i.i, i64 34672, i64 34696
  %.035.in = getelementptr inbounds nuw i8, ptr %0, i64 %.035.in.v
  %.0.in.v = select i1 %i.i, i64 34680, i64 34704
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !105
  %.035 = load ptr, ptr %.035.in, align 8, !tbaa !105
  %.036 = load ptr, ptr %.036.in, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34632
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.l = tail call i32 %i.k(ptr noundef nonnull %0) #17
  %.not40 = icmp eq i32 %i.l, 0
  br i1 %.not40, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 %.036(ptr noundef nonnull %0) #17
  %.not41 = icmp eq i32 %i.m, 0
  br i1 %.not41, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void @advanceMRPtr(ptr noundef nonnull %0) #17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 34528 ; 2 uses
  store i64 1, ptr %i.e, align 8, !tbaa !70
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.q = tail call i32 %.035(ptr noundef nonnull %0) #17
  %.not44 = icmp eq i32 %i.q, 0
  br i1 %.not44, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  tail call void @advanceMRPtr(ptr noundef nonnull %0) #17
  %i.r = load i64, ptr %i.e, align 8, !tbaa !70
  %i.s = add i64 %i.r, 1                          ; 2 uses
  store i64 %i.s, ptr %i.e, align 8, !tbaa !70
  %i.t = load i64, ptr %i.n, align 8, !tbaa !58
  %i.u = icmp ult i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !252

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.v = tail call i32 %.0(ptr noundef nonnull %0) #17
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %._crit_edge
  %i.w = load i64, ptr %i.g, align 8, !tbaa !71
  %.not43 = icmp eq i64 %i.w, 0
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @advanceOneMBRow(ptr noundef nonnull %0) #17
  %.pre = load i64, ptr %i.g, align 8, !tbaa !71
  %i.x = add i64 %.pre, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = phi i64 [ %i.x, %bb.i ], [ 1, %bb.h ]
  store i64 %i.y, ptr %i.g, align 8, !tbaa !71
  tail call void @swapMRPtr(ptr noundef nonnull %0) #17
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.e, %bb.d, %bb.a, %bb.j
  %.037 = phi i32 [ 0, %bb.j ], [ -1, %bb.a ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %._crit_edge ], [ -1, %.lr.ph ]
  ret i32 %.037
}

declare void @initMRPtr(ptr noundef) local_unnamed_addr #1

declare void @advanceMRPtr(ptr noundef) local_unnamed_addr #1

declare void @advanceOneMBRow(ptr noundef) local_unnamed_addr #1

declare void @swapMRPtr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ImageStrEncTerm(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !106
  %.not = icmp eq i64 %i.a, 35944
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 34520 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !70
  tail call void @initMRPtr(ptr noundef nonnull %0) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 34712
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0) #17 ; 0 uses
  tail call void @advanceMRPtr(ptr noundef nonnull %0) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34528 ; 2 uses
  store i64 1, ptr %i.b, align 8, !tbaa !70
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 34720
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0) #17 ; 0 uses
  tail call void @advanceMRPtr(ptr noundef nonnull %0) #17
  %i.l = load i64, ptr %i.b, align 8, !tbaa !70
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !70
  %i.n = load i64, ptr %i.f, align 8, !tbaa !58
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %._crit_edge, !llvm.loop !254

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 34728
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = tail call i32 %i.q(ptr noundef nonnull %0) #17 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 35672 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  %.fr18 = freeze ptr %i.t
  %.not19 = icmp eq ptr %.fr18, null
  %i.u = load i64, ptr %0, align 8, !tbaa !106
  %.not22.i.us = icmp eq i64 %i.u, 35944          ; 2 uses
  br i1 %.not19, label %.split.us, label %.split.i.preheader

.split.i.preheader:                               ; preds = %._crit_edge
  br i1 %.not22.i.us, label %.split.preheader, label %StrEncTerm.exit

.split.preheader:                                 ; preds = %.split.i.preheader
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 34364
  %2 = load i32, ptr %1, align 4, !tbaa !96
  %.not23.i = icmp eq i32 %2, 0
  br i1 %.not23.i, label %.split.1, label %bb.j

.split.us:                                        ; preds = %._crit_edge
  br i1 %.not22.i.us, label %bb.d, label %StrEncTerm.exit

bb.d:                                             ; preds = %.split.us
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 34364
  %i.w = load i32, ptr %i.v, align 4, !tbaa !96
  %.not23.i.us = icmp eq i32 %i.w, 0
  br i1 %.not23.i.us, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 35376
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !98   ; 2 uses
  %.not24.i.us = icmp eq ptr %i.y, null
  br i1 %.not24.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.y) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 35384
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99  ; 2 uses
  %.not25.i.us = icmp eq ptr %i.aa, null
  br i1 %.not25.i.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.aa) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  tail call void @freePredInfo(ptr noundef nonnull %0) #17
  %i.ab = tail call i32 @StrIOEncTerm(ptr noundef nonnull %0) ; 0 uses
  tail call void @FreeCodingContextEnc(ptr noundef nonnull %0) #17
  tail call void @freeTileInfo(ptr noundef nonnull %0) #17
  br label %StrEncTerm.exit

bb.j:                                             ; preds = %.split.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 35376
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !98 ; 2 uses
  %.not24.i = icmp eq ptr %i.ad, null
  br i1 %.not24.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ad) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 35384
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !99 ; 2 uses
  %.not25.i = icmp eq ptr %i.af, null
  br i1 %.not25.i, label %.split.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.af) #17
  br label %.split.1

.split.1:                                         ; preds = %bb.m, %bb.l, %.split.preheader
  tail call void @freePredInfo(ptr noundef nonnull %0) #17
  %i.ag = tail call i32 @StrIOEncTerm(ptr noundef nonnull %0) ; 0 uses
  tail call void @FreeCodingContextEnc(ptr noundef nonnull %0) #17
  tail call void @freeTileInfo(ptr noundef nonnull %0) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32977 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !107
  %i.aj = xor i8 %i.ai, -128
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !107
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !38  ; 8 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !106
  %.not22.i.1 = icmp eq i64 %i.al, 35944
  br i1 %.not22.i.1, label %bb.n, label %StrEncTerm.exit

bb.n:                                             ; preds = %.split.1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 34364
  %i.an = load i32, ptr %i.am, align 4, !tbaa !96
  %.not23.i.1 = icmp eq i32 %i.an, 0
  br i1 %.not23.i.1, label %StrEncTerm.exit.split.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 35376
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !98 ; 2 uses
  %.not24.i.1 = icmp eq ptr %i.ap, null
  br i1 %.not24.i.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.ap) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 35384
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !99 ; 2 uses
  %.not25.i.1 = icmp eq ptr %i.ar, null
  br i1 %.not25.i.1, label %StrEncTerm.exit.split.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.ar) #17
  br label %StrEncTerm.exit.split.critedge

StrEncTerm.exit.split.critedge:                   ; preds = %bb.n, %bb.q, %bb.r
  tail call void @freePredInfo(ptr noundef nonnull %i.ak) #17
  tail call void @FreeCodingContextEnc(ptr noundef nonnull %i.ak) #17
  tail call void @freeTileInfo(ptr noundef nonnull %i.ak) #17
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 32977 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !107
  %i.au = xor i8 %i.at, -128
  store i8 %i.au, ptr %i.as, align 1, !tbaa !107
  br label %StrEncTerm.exit

StrEncTerm.exit:                                  ; preds = %.split.1, %.split.i.preheader, %.split.us, %bb.i, %StrEncTerm.exit.split.critedge
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %StrEncTerm.exit
  %.0 = phi i32 [ 0, %StrEncTerm.exit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @downsampleUV(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !95
  %.not = icmp ne i32 %i.d, 2                     ; 3 uses
  %i.e = icmp eq i32 %i.b, 1
  %i.f = icmp eq i32 %i.b, 2                      ; 3 uses
  %i.g = zext i1 %i.f to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 35248 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 34528 ; 2 uses
  %i.j = select i1 %i.f, i64 7, i64 8             ; 2 uses
  %i.k = zext i1 %.not to i64
  %i.l = select i1 %.not, i64 8, i64 7            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 34512
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 35120
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 34536
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge223
  %.in.v = phi i64 [ 35376, %bb.a ], [ 35384, %._crit_edge223 ] ; 2 uses
  %exitcond234.not = phi i1 [ false, %bb.a ], [ true, %._crit_edge223 ]
  %.0178224 = phi i64 [ 1, %bb.a ], [ 2, %._crit_edge223 ] ; 3 uses
  br i1 %.not, label %bb.c, label %.loopexit201

bb.c:                                             ; preds = %bb.b
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.p = load ptr, ptr %.in, align 8, !tbaa !112  ; 6 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0178224
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.t = load i64, ptr %i.i, align 8, !tbaa !58
  %i.u = shl i64 %i.t, 4                          ; 2 uses
  %.not226 = icmp eq i64 %i.u, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.0176212 = phi i64 [ 0, %bb.e ], [ %i.cr, %._crit_edge ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @idxCC, i64 %.0176212 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 2, !tbaa !52
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !61  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !52
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !61 ; 4 uses
  %i.ag = load i8, ptr %i.v, align 16, !tbaa !52
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !61 ; 2 uses
  br i1 %.not226, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %i.ak = phi i64 [ %i.bx, %.lr.ph ], [ 2, %bb.f ] ; 3 uses
  %.0207 = phi i64 [ %i.ak, %.lr.ph ], [ 0, %bb.f ] ; 4 uses
  %.0179206 = phi i32 [ %i.bw, %.lr.ph ], [ %i.aa, %bb.f ] ; 3 uses
  %.0182205 = phi i32 [ %i.bm, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.0185204 = phi i32 [ %.0179206, %.lr.ph ], [ %i.aj, %bb.f ] ; 4 uses
  %.0188203 = phi i32 [ %.0182205, %.lr.ph ], [ %i.af, %bb.f ]
  %.0191202 = phi i32 [ %.0185204, %.lr.ph ], [ %i.aa, %bb.f ]
  %i.al = add nsw i32 %.0185204, %.0188203
  %i.am = add nsw i32 %i.al, %.0182205
  %i.an = shl i32 %i.am, 2
  %i.ao = shl i32 %.0185204, 1
  %i.ap = add i32 %.0191202, 8
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = add i32 %i.aq, %.0179206
  %i.as = add i32 %i.ar, %i.an
  %i.at = ashr i32 %i.as, 4
  %i.au = lshr i64 %.0207, 4
  %i.av = shl i64 %i.au, %i.j
  %i.aw = and i64 %.0207, 14
  %i.ax = lshr exact i64 %i.aw, %i.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !52
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr %i.s, i64 %i.av
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.ba
  store i32 %i.at, ptr %i.bc, align 4, !tbaa !61
  %i.bd = add nuw i64 %.0207, 3                   ; 2 uses
  %i.be = shl i64 %i.bd, 4
  %i.bf = and i64 %i.be, -256
  %i.bg = and i64 %i.bd, 15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !52
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bf
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !61 ; 2 uses
  %i.bn = add nuw i64 %.0207, 4                   ; 2 uses
  %i.bo = shl i64 %i.bn, 4
  %i.bp = and i64 %i.bo, -256
  %i.bq = and i64 %i.bn, 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !52
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bp
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !61
  %i.bx = add nuw i64 %i.ak, 2                    ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.u
  br i1 %i.by, label %.lr.ph, label %._crit_edge, !llvm.loop !255

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.0191.lcssa = phi i32 [ %i.aa, %bb.f ], [ %.0185204, %.lr.ph ]
  %.0188.lcssa = phi i32 [ %i.af, %bb.f ], [ %.0182205, %.lr.ph ]
  %.0185.lcssa = phi i32 [ %i.aj, %bb.f ], [ %.0179206, %.lr.ph ] ; 3 uses
  %.0182.lcssa = phi i32 [ %i.af, %bb.f ], [ %i.bm, %.lr.ph ]
  %.0.lcssa = phi i64 [ 0, %bb.f ], [ %i.ak, %.lr.ph ] ; 2 uses
  %i.bz = add nsw i32 %.0185.lcssa, %.0188.lcssa
  %i.ca = add nsw i32 %i.bz, %.0182.lcssa
  %i.cb = shl i32 %i.ca, 2
  %i.cc = shl i32 %.0185.lcssa, 1
  %i.cd = add i32 %.0191.lcssa, 8
  %i.ce = add i32 %i.cd, %.0185.lcssa
  %i.cf = add i32 %i.ce, %i.cc
  %i.cg = add i32 %i.cf, %i.cb
  %i.ch = ashr i32 %i.cg, 4
  %i.ci = lshr i64 %.0.lcssa, 4
  %i.cj = shl i64 %i.ci, %i.j
  %i.ck = and i64 %.0.lcssa, 14
  %i.cl = lshr exact i64 %i.ck, %i.g
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr [4 x i8], ptr %i.s, i64 %i.cj
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.co
  store i32 %i.ch, ptr %i.cq, align 4, !tbaa !61
  %i.cr = add nuw nsw i64 %.0176212, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, 16
  br i1 %exitcond.not, label %.loopexit201, label %bb.f, !llvm.loop !256

.loopexit201:                                     ; preds = %._crit_edge, %bb.b
  br i1 %i.e, label %bb.g, label %._crit_edge223

bb.g:                                             ; preds = %.loopexit201
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0178224
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !112
  %.in195 = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.cu = load ptr, ptr %.in195, align 8, !tbaa !112 ; 4 uses
  %i.cv = load i64, ptr %i.i, align 8, !tbaa !58  ; 3 uses
  %i.cw = shl i64 %i.cv, %i.l
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cw ; 3 uses
  %.idx = shl i64 %i.cv, 5                        ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx ; 2 uses
  %i.db = shl i64 %i.cv, 3                        ; 2 uses
  %.not227 = icmp eq i64 %i.db, 0
  br i1 %.not227, label %._crit_edge223, label %.lr.ph222

.lr.ph222:                                        ; preds = %bb.g
  %i.dc = load i64, ptr %i.m, align 8, !tbaa !71  ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0178224
  %i.df = add i64 %i.dc, 1
  %i.dg = load i64, ptr %i.o, align 8, !tbaa !59
  %i.dh = icmp eq i64 %i.df, %i.dg
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph222, %.loopexit
  %.1220 = phi i64 [ 0, %.lr.ph222 ], [ %i.ml, %.loopexit ] ; 11 uses
  %i.di = lshr i64 %.1220, 3                      ; 3 uses
  %i.dj = shl i64 %i.di, %i.l                     ; 3 uses
  %i.dk = and i64 %.1220, 7                       ; 5 uses
  %i.dl = shl nuw nsw i64 %i.dk, %i.k             ; 20 uses
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @idxCC, i64 32), i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !52
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr [4 x i8], ptr %i.cu, i64 %i.dj ; 3 uses
  %i.dq = getelementptr [4 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !61 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @idxCC, i64 16), i64 %i.dl
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !52
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr [4 x i8], ptr %i.dp, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !61 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr @idxCC, i64 %i.dl
end_hunk_0
