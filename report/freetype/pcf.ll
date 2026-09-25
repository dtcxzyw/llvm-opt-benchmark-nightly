Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pcf?download=true
inline.NumInlined: 21
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@PCF_Face_Init:bb.a
.thread100:                                       ; preds = %bb.n, %.tail
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %1, ptr %5, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i64 0, ptr %i.ai, align 8
  br label %bb.q

bb.p:                                             ; preds = %.tail.thread
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(4) @.str.9) #13
  %.not87.not = icmp eq i32 %i.al, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %1, ptr %5, align 8, !tbaa !105
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i64 0, ptr %i.am, align 8
  br i1 %.not87.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread100, %bb.p
  %i.ap = phi ptr [ %i.ak, %.thread100 ], [ %i.ao, %bb.p ]
  %i.aq = phi ptr [ %i.aj, %.thread100 ], [ %i.an, %bb.p ]
  %i.ar = phi ptr [ %i.ai, %.thread100 ], [ %i.am, %bb.p ]
  store i32 1970170211, ptr %i.ar, align 8, !tbaa !106
  store i16 3, ptr %i.aq, align 4, !tbaa !107
  store i16 1, ptr %i.ap, align 2, !tbaa !108
  br label %bb.r

.critedge:                                        ; preds = %bb.l, %bb.m, %bb.k, %.tail.thread, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %1, ptr %5, align 8, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.as, align 8
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.q, %bb.p
  %i.at = call i32 @FT_CMap_New(ptr noundef nonnull @pcf_cmap_class, ptr noundef null, ptr noundef nonnull %5, ptr noundef null) #12 ; 2 uses
  %.not89 = icmp eq i32 %i.at, 0
  br i1 %.not89, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @PCF_Face_Done(ptr noundef nonnull %1)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.v

bb.u:                                             ; preds = %bb.f, %bb.d, %bb.b, %.thread96
  tail call void @PCF_Face_Done(ptr noundef nonnull %1)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.g, %bb.i
  %.068 = phi i32 [ %i.at, %bb.t ], [ 0, %bb.g ], [ 2, %bb.u ], [ 6, %bb.i ]
  ret i32 %.068
}

; Function Attrs: nounwind uwtable
define internal void @PCF_Face_Done(ptr noundef %0) #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.d) #12
  store ptr null, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.f) #12
  store ptr null, ptr %i.e, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %.not51 = icmp eq ptr %i.h, null
  br i1 %.not51, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 4 uses
  %.not52 = icmp eq ptr %i.l, null
  br i1 %.not52, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.n) #12
  store ptr null, ptr %i.m, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !52
  %.not53 = icmp eq i8 %i.p, 0
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.r) #12
  store ptr null, ptr %i.q, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.i, align 8, !tbaa !49
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph.split, label %._crit_edge.loopexit55, !llvm.loop !109

._crit_edge.loopexit55:                           ; preds = %bb.e
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit55, %.preheader
  %i.v = phi ptr [ %.pre, %._crit_edge.loopexit55 ], [ %i.h, %.preheader ]
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.v) #12
  store ptr null, ptr %i.g, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.x) #12
  store ptr null, ptr %i.w, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.z) #12
  store ptr null, ptr %i.y, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.ab) #12
  store ptr null, ptr %i.aa, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.ad) #12
  store ptr null, ptr %i.ac, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.af) #12
  store ptr null, ptr %i.ae, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.ah) #12
  store ptr null, ptr %i.ag, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @FT_Stream_Close(ptr noundef nonnull %i.ak) #12
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PCF_Glyph_Load(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %TwoByteSwap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !119
  %i.e = trunc i64 %i.d to i32
  %.not71 = icmp ult i32 %2, %i.e
  br i1 %.not71, label %.split, label %TwoByteSwap.exit

.split:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = zext i32 %2 to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.m = load i16, ptr %i.l, align 2, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i16, ptr %i.n, align 8, !tbaa !64
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !65
  %i.s = sext i16 %i.r to i32
  %i.t = load i16, ptr %i.k, align 8, !tbaa !66
  %i.u = sext i16 %i.m to i32                     ; 3 uses
  %4 = add nsw i32 %i.p, %i.u                     ; 2 uses
  store i32 %4, ptr %i.b, align 8, !tbaa !122
  %5 = sext i16 %i.t to i32                       ; 3 uses
  %i.v = sub nsw i32 %i.s, %5                     ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.v, ptr %i.w, align 4, !tbaa !123
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i16 1, ptr %i.x, align 8, !tbaa !124
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 1, ptr %i.y, align 2, !tbaa !125
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !67
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 3
  switch i32 %i.ac, label %default.unreachable93 [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %.split
  %i.ad = add nsw i32 %i.v, 7
  %i.ae = lshr i32 %i.ad, 3
  br label %bb.g

bb.d:                                             ; preds = %.split
  %i.af = add nsw i32 %i.v, 15
  %i.ag = lshr i32 %i.af, 3
  %i.ah = and i32 %i.ag, 536870910
  br label %bb.g

bb.e:                                             ; preds = %.split
  %i.ai = add nsw i32 %i.v, 31
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = and i32 %i.aj, 536870908
  br label %bb.g

bb.f:                                             ; preds = %.split
  %i.al = add nsw i32 %i.v, 63
  %i.am = lshr i32 %i.al, 3
  %i.an = and i32 %i.am, 536870904
  br label %bb.g

default.unreachable93:                            ; preds = %.split
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i32 [ %i.an, %bb.f ], [ %i.ak, %bb.e ], [ %i.ah, %bb.d ], [ %i.ae, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.sink, ptr %i.ao, align 8, !tbaa !126
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1651078259, ptr %i.ap, align 8, !tbaa !135
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %5, ptr %i.aq, align 8, !tbaa !136
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.u, ptr %i.ar, align 4, !tbaa !137
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.at = load i16, ptr %i.as, align 4, !tbaa !138
  %i.au = sext i16 %i.at to i32
  %i.av = shl nsw i32 %i.au, 6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !139
  %i.az = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.ba = insertelement <2 x i32> %i.az, i32 %i.u, i64 1
  %i.bb = shl nsw <2 x i32> %i.ba, splat (i32 6)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = sext <2 x i32> %i.bb to <2 x i64>
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !tbaa !68
  %i.be = shl nsw i32 %i.v, 6
  %i.bf = sext i32 %i.be to i64
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !140
  %i.bg = shl nsw i32 %4, 6
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !141
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !70
  %i.bn = add nsw i64 %i.bm, %i.bk
  %i.bo = shl nsw i64 %i.bn, 6
  tail call void @ft_synthesize_vertical_metrics(ptr noundef nonnull %i.ax, i64 noundef %i.bo) #12
  %i.bp = and i32 %3, 4194304
  %.not72 = icmp eq i32 %i.bp, 0
  br i1 %.not72, label %bb.h, label %TwoByteSwap.exit

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !126
  %i.bs = sext i32 %i.br to i64
  %i.bt = load i32, ptr %i.b, align 8, !tbaa !122
  %i.bu = zext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.bu, %i.bs                ; 21 uses
  %i.bw = tail call i32 @ft_glyphslot_alloc_bitmap(ptr noundef nonnull %0) #12 ; 2 uses
  %.not73 = icmp eq i32 %i.bw, 0
  br i1 %.not73, label %bb.i, label %TwoByteSwap.exit

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !71
  %i.bz = tail call i32 @FT_Stream_Seek(ptr noundef %i.g, i64 noundef %i.by) #12 ; 2 uses
  %.not74 = icmp eq i32 %i.bz, 0
  br i1 %.not74, label %bb.j, label %TwoByteSwap.exit

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !142
  %i.cc = tail call i32 @FT_Stream_Read(ptr noundef %i.g, ptr noundef %i.cb, i64 noundef %i.bv) #12 ; 2 uses
  %.not75 = icmp eq i32 %i.cc, 0
  br i1 %.not75, label %bb.k, label %TwoByteSwap.exit

bb.k:                                             ; preds = %bb.j
  %i.cd = load i64, ptr %i.z, align 8, !tbaa !67  ; 2 uses
  %i.ce = and i64 %i.cd, 8
  %.not77.not = icmp ne i64 %i.ce, 0
  %.not12.i = icmp eq i64 %i.bv, 0
  %or.cond = select i1 %.not77.not, i1 true, i1 %.not12.i
  br i1 %or.cond, label %BitOrderInvert.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !142 ; 5 uses
  %min.iters.check = icmp ult i64 %i.bv, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check97 = icmp ult i64 %i.bv, 32
  br i1 %min.iters.check97, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %i.bv, 24
  %n.vec = and i64 %i.bv, -32                     ; 4 uses
  %i.ch = getelementptr i8, ptr %i.cf, i64 %n.vec
  %i.ci = and i64 %i.bv, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cf, i64 %index ; 3 uses
  %i.cj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !43
  %wide.load98 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !43
  %i.ck = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load)
  %i.cl = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load98)
  store <16 x i8> %i.ck, ptr %next.gep, align 1, !tbaa !43
  store <16 x i8> %i.cl, ptr %i.cj, align 1, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %BitOrderInvert.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.bv, -8                   ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cf, i64 %n.vec100
  %i.co = and i64 %i.bv, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.cf, i64 %index101 ; 2 uses
  %wide.load103 = load <8 x i8>, ptr %next.gep102, align 1, !tbaa !43
  %i.cp = tail call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load103)
  store <8 x i8> %i.cp, ptr %next.gep102, align 1, !tbaa !43
  %index.next104 = add nuw i64 %index101, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next104, %n.vec100
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !112

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %i.bv, %n.vec100
  br i1 %cmp.n105, label %BitOrderInvert.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.i.ph = phi ptr [ %i.cf, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  %.01113.i.ph = phi i64 [ %i.bv, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.014.i = phi ptr [ %i.ct, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01113.i = phi i64 [ %i.cs, %.lr.ph.i ], [ %.01113.i.ph, %.lr.ph.i.preheader ]
  %i.cr = load i8, ptr %.014.i, align 1, !tbaa !43
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %i.cr)
  store i8 %rev.i, ptr %.014.i, align 1, !tbaa !43
  %i.cs = add i64 %.01113.i, -1                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i, i64 1
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %BitOrderInvert.exit.loopexit, label %.lr.ph.i, !llvm.loop !113

BitOrderInvert.exit.loopexit:                     ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre = load i64, ptr %i.z, align 8, !tbaa !67
  br label %BitOrderInvert.exit

BitOrderInvert.exit:                              ; preds = %BitOrderInvert.exit.loopexit, %bb.k
  %i.cu = phi i64 [ %.pre, %BitOrderInvert.exit.loopexit ], [ %i.cd, %bb.k ]
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %i.cw = lshr i32 %i.cv, 2
  %i.cx = lshr i32 %i.cv, 3
  %i.cy = xor i32 %i.cw, %i.cx
  %i.cz = and i32 %i.cy, 1
  %.not80 = icmp eq i32 %i.cz, 0
  br i1 %.not80, label %TwoByteSwap.exit, label %bb.l

bb.l:                                             ; preds = %BitOrderInvert.exit
  %i.da = lshr i32 %i.cv, 4
  %i.db = and i32 %i.da, 3
  %i.dc = shl nuw nsw i32 1, %i.db
  switch i32 %i.dc, label %TwoByteSwap.exit [
    i32 4, label %bb.n
    i32 2, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.dd = icmp ugt i64 %i.bv, 1
  br i1 %i.dd, label %iter.check123, label %TwoByteSwap.exit

iter.check123:                                    ; preds = %bb.m
  %i.de = load ptr, ptr %i.ca, align 8, !tbaa !142 ; 5 uses
  %i.df = add nsw i64 %i.bv, -2                   ; 3 uses
  %i.dg = lshr i64 %i.df, 1
  %i.dh = add nuw i64 %i.dg, 1                    ; 5 uses
  %min.iters.check108 = icmp ult i64 %i.df, 6
  br i1 %min.iters.check108, label %.lr.ph.i81.preheader, label %vector.main.loop.iter.check109

vector.main.loop.iter.check109:                   ; preds = %iter.check123
  %min.iters.check110 = icmp ult i64 %i.df, 30
  br i1 %min.iters.check110, label %vec.epilog.ph127, label %vector.ph111

vector.ph111:                                     ; preds = %vector.main.loop.iter.check109
  %i.di = and i64 %i.dh, 12
  %n.vec112 = and i64 %i.dh, -16                  ; 5 uses
  %i.dj = shl i64 %n.vec112, 1
  %i.dk = getelementptr i8, ptr %i.de, i64 %i.dj
  %i.dl = shl i64 %n.vec112, 1
  %i.dm = sub i64 %i.bv, %i.dl
  br label %vector.body113

vector.body113:                                   ; preds = %vector.ph111, %vector.body113
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next118, %vector.body113 ] ; 2 uses
  %i.dn = shl i64 %index114, 1
  %next.gep115 = getelementptr i8, ptr %i.de, i64 %i.dn ; 3 uses
  %i.do = getelementptr i8, ptr %next.gep115, i64 16 ; 2 uses
  %wide.load116 = load <8 x i16>, ptr %next.gep115, align 2, !tbaa !75
  %wide.load117 = load <8 x i16>, ptr %i.do, align 2, !tbaa !75
  %i.dp = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load116)
  %i.dq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load117)
  store <8 x i16> %i.dp, ptr %next.gep115, align 2, !tbaa !75
  store <8 x i16> %i.dq, ptr %i.do, align 2, !tbaa !75
  %index.next118 = add nuw i64 %index114, 16      ; 2 uses
  %i.dr = icmp eq i64 %index.next118, %n.vec112
  br i1 %i.dr, label %middle.block119, label %vector.body113, !llvm.loop !114

middle.block119:                                  ; preds = %vector.body113
  %cmp.n120 = icmp eq i64 %i.dh, %n.vec112
  br i1 %cmp.n120, label %TwoByteSwap.exit, label %vec.epilog.iter.check125

vec.epilog.iter.check125:                         ; preds = %middle.block119
  %min.epilog.iters.check126 = icmp eq i64 %i.di, 0
  br i1 %min.epilog.iters.check126, label %.lr.ph.i81.preheader, label %vec.epilog.ph127, !prof !143

vec.epilog.ph127:                                 ; preds = %vector.main.loop.iter.check109, %vec.epilog.iter.check125
  %vec.epilog.resume.val121 = phi i64 [ %n.vec112, %vec.epilog.iter.check125 ], [ 0, %vector.main.loop.iter.check109 ]
  %n.vec128 = and i64 %i.dh, -4                   ; 4 uses
  %i.ds = shl i64 %n.vec128, 1
  %i.dt = getelementptr i8, ptr %i.de, i64 %i.ds
  %i.du = shl i64 %n.vec128, 1
  %i.dv = sub i64 %i.bv, %i.du
end_hunk_0
