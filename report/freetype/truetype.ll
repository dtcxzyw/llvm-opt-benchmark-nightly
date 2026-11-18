Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 48
begin_hunk_0_@Direct_Move:bb.a
  %i.l = add i64 %i.j, 32768
  %i.m = add i64 %i.l, %i.k
  %i.n = ashr i64 %i.m, 16
  %i.o = add i64 %i.i, %i.n
  store i64 %i.o, ptr %i.h, align 8, !tbaa !230
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi27 = phi i64 [ %.pre26, %._crit_edge ], [ %i.g, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.pre-phi27 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !186
  %i.t = or i8 %i.s, 8
  store i8 %i.t, ptr %i.r, align 1, !tbaa !186
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.v = load i64, ptr %i.u, align 8, !tbaa !249  ; 2 uses
  %.not23 = icmp eq i64 %i.v, 0
  br i1 %.not23, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.x = load i32, ptr %i.w, align 4, !tbaa !215
  %.not24 = icmp eq i32 %i.x, 7
  br i1 %.not24, label %._crit_edge25, label %bb.g

._crit_edge25:                                    ; preds = %bb.f
  %.pre = zext i16 %2 to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !180
  %i.aa = zext i16 %2 to i64                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !257
  %i.ae = mul i64 %i.v, %3                        ; 2 uses
  %i.af = ashr i64 %i.ae, 63
  %i.ag = add i64 %i.ae, 32768
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = ashr i64 %i.ah, 16
  %i.aj = add i64 %i.ad, %i.ai
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !257
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge25, %bb.g
  %.pre-phi = phi i64 [ %.pre, %._crit_edge25 ], [ %i.aa, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.pre-phi ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !186
  %i.ao = or i8 %i.an, 16
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !186
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Direct_Move_Orig(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i64 noundef %3) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = load i64, ptr %i.a, align 8, !tbaa !248  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177
  %i.e = zext i16 %2 to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !230
  %i.h = mul i64 %i.b, %3                         ; 2 uses
  %i.i = ashr i64 %i.h, 63
  %i.j = add i64 %i.h, 32768
  %i.k = add i64 %i.j, %i.i
  %i.l = ashr i64 %i.k, 16
  %i.m = add i64 %i.g, %i.l
  store i64 %i.m, ptr %i.f, align 8, !tbaa !230
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.o = load i64, ptr %i.n, align 8, !tbaa !249  ; 2 uses
  %.not16 = icmp eq i64 %i.o, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !177
  %i.r = zext i16 %2 to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !257
  %i.v = mul i64 %i.o, %3                         ; 2 uses
  %i.w = ashr i64 %i.v, 63
  %i.x = add i64 %i.v, 32768
  %i.y = add i64 %i.x, %i.w
  %i.z = ashr i64 %i.y, 16
  %i.aa = add i64 %i.u, %i.z
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !257
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @Project_x(ptr nofree readnone captures(none) %0, i64 noundef returned %1, i64 %2) #1 {
bb.a:
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @Project_y(ptr nofree readnone captures(none) %0, i64 %1, i64 noundef returned %2) #1 {
bb.a:
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i64 -562949953421312, 562949953421312) i64 @Project(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.b = load i16, ptr %i.a, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 482
  %i.d = load i16, ptr %i.c, align 2, !tbaa !243
  %i.e = sext i16 %i.b to i64
  %i.f = mul i64 %1, %i.e
  %i.g = sext i16 %i.d to i64
  %i.h = mul i64 %2, %i.g
  %i.i = add i64 %i.h, %i.f                       ; 2 uses
  %i.j = ashr i64 %i.i, 63
  %i.k = add i64 %i.i, 8192
  %i.l = add i64 %i.k, %i.j
  %i.m = ashr i64 %i.l, 14
  ret i64 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i64 -562949953421312, 562949953421312) i64 @Dual_Project(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.b = load i16, ptr %i.a, align 4, !tbaa !244
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 478
  %i.d = load i16, ptr %i.c, align 2, !tbaa !245
  %i.e = sext i16 %i.b to i64
  %i.f = mul i64 %1, %i.e
  %i.g = sext i16 %i.d to i64
  %i.h = mul i64 %2, %i.g
  %i.i = add i64 %i.h, %i.f                       ; 2 uses
  %i.j = ashr i64 %i.i, 63
  %i.k = add i64 %i.i, 8192
  %i.l = add i64 %i.k, %i.j
  %i.m = ashr i64 %i.l, 14
  ret i64 %i.m
}

declare hidden void @FT_Stream_OpenMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TT_Vary_Apply_Glyph_Deltas(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !152
  %i.d = load ptr, ptr %0, align 8, !tbaa !140    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !416  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !440  ; 11 uses
  %i.m = zext i16 %i.l to i32                     ; 8 uses
  %i.n = add nuw nsw i32 %i.m, 4                  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 1208
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 0, ptr %i.c, align 4, !tbaa !152
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !442  ; 9 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 16 uses
  %min.iters.check = icmp ult i16 %i.l, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.s = zext i16 %i.l to i64
  %i.t = shl nuw nsw i64 %i.s, 4                  ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 56                 ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 %i.u
  %i.w = getelementptr i8, ptr %i.r, i64 %i.u
  %bound0 = icmp ult ptr %2, %i.w
  %bound1 = icmp ult ptr %i.r, %i.v
  %found.conflict = and i1 %bound0, %bound1
  %i.x = getelementptr nuw i8, ptr %2, i64 8
  %3 = add nuw nsw i64 %i.t, 64                   ; 2 uses
  %4 = getelementptr i8, ptr %2, i64 %3
  %5 = getelementptr nuw i8, ptr %i.r, i64 8
  %6 = getelementptr i8, ptr %i.r, i64 %3
  %bound0570 = icmp ult ptr %i.x, %6
  %bound1571 = icmp ult ptr %5, %4
  %found.conflict572 = and i1 %bound0570, %bound1571
  %conflict.rdx = or i1 %found.conflict, %found.conflict572
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 131070       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.y = or disjoint i64 %index, 1                ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %index
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.y
  %wide.load = load <2 x i64>, ptr %i.z, align 8
  %wide.load573 = load <2 x i64>, ptr %i.aa, align 8
  %i.ab = shl nsw <2 x i64> %wide.load, splat (i64 6)
  %i.ac = shl nsw <2 x i64> %wide.load573, splat (i64 6)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.y
  store <2 x i64> %i.ab, ptr %i.ad, align 8
  store <2 x i64> %i.ac, ptr %i.ae, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !827

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit668, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %i.ag = zext i16 %i.l to i64                    ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 3
  %xtraiter = and i64 %i.ag, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.ph
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.ph
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !185
  %i.al = shl nsw <2 x i64> %i.ak, splat (i64 6)
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !185
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.am = icmp eq i64 %i.ah, %indvars.iv.ph
  br i1 %i.am, label %.loopexit668, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !tbaa !185
  %i.aq = shl nsw <2 x i64> %i.ap, splat (i64 6)
  store <2 x i64> %i.aq, ptr %i.ao, align 8, !tbaa !185
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !tbaa !185
  %i.au = shl nsw <2 x i64> %i.at, splat (i64 6)
  store <2 x i64> %i.au, ptr %i.as, align 8, !tbaa !185
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit668, label %scalar.ph, !llvm.loop !828

.loopexit668:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 1201
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !321
  %.not = icmp eq i8 %i.aw, 0
  br i1 %.not, label %.thread439, label %bb.b

bb.b:                                             ; preds = %.loopexit668
  %.not410 = icmp eq ptr %i.p, null
  br i1 %.not410, label %bb.av, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !385
  %.not411 = icmp ult i32 %i.j, %i.ay
  br i1 %.not411, label %bb.d, label %bb.av

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !383 ; 2 uses
  %i.bb = zext i32 %i.j to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !185 ; 3 uses
  %i.be = add nuw i32 %i.j, 1
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !185 ; 2 uses
  %i.bi = icmp eq i64 %i.bd, %i.bh
  br i1 %i.bi, label %bb.av, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = sub i64 %i.bh, %i.bd                    ; 3 uses
  %i.bk = tail call i32 @FT_Stream_Seek(ptr noundef nonnull %i.f, i64 noundef %i.bd) #21 ; 2 uses
  %.not412 = icmp eq i32 %i.bk, 0
  br i1 %.not412, label %bb.f, label %bb.av

bb.f:                                             ; preds = %bb.e
  %i.bl = tail call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.f, i64 noundef %i.bj) #21 ; 3 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !152
  %.not413 = icmp eq i32 %i.bl, 0
  br i1 %.not413, label %bb.g, label %bb.av

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 9 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !345
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !391
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = tail call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %i.f) #21 ; 2 uses
  %i.bt = tail call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %i.f) #21
  %i.bu = zext i16 %i.bt to i64                   ; 2 uses
  %i.bv = icmp ult i64 %i.bj, %i.bu
  br i1 %i.bv, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = and i16 %i.bs, 4095                     ; 2 uses
  %i.bx = zext nneg i16 %i.bw to i32              ; 2 uses
  %i.by = shl nuw nsw i32 %i.bx, 2
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = icmp ult i64 %i.bj, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %bb.au

bb.j:                                             ; preds = %bb.h
  %i.cb = add i64 %i.br, %i.bu                    ; 3 uses
  %.not414 = icmp sgt i16 %i.bs, -1
  br i1 %.not414, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = load ptr, ptr %i.bm, align 8, !tbaa !345
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !391 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !384 ; 2 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.cf
  %i.cl = icmp ult i64 %i.cb, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  %i.cn = select i1 %i.cl, ptr %i.cm, ptr %i.ci
  store ptr %i.cn, ptr %i.bm, align 8, !tbaa !345
  %i.co = call fastcc ptr @ft_var_readpackedpoints(ptr noundef nonnull %i.f, ptr noundef %i.c)
  %i.cp = load ptr, ptr %i.bm, align 8, !tbaa !345
  %i.cq = load ptr, ptr %i.f, align 8, !tbaa !391 ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !384 ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.cv, %i.cs
  %i.cx = icmp ult i64 %i.cg, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cg
  %i.cz = select i1 %i.cx, ptr %i.cy, ptr %i.cu
  store ptr %i.cz, ptr %i.bm, align 8, !tbaa !345
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0394 = phi i64 [ %i.ct, %bb.k ], [ %i.cb, %bb.j ]
  %.0371 = phi ptr [ %i.co, %bb.k ], [ null, %bb.j ] ; 3 uses
  %i.da = load i32, ptr %i.p, align 8, !tbaa !317
  %i.db = mul i32 %i.da, 24                       ; 2 uses
  %i.dc = add nuw nsw i32 %i.m, 11
  %i.dd = and i32 %i.dc, 131064
  %i.de = mul nuw nsw i32 %i.n, 48
  %i.df = add nuw nsw i32 %i.de, %i.dd
  %i.dg = add i32 %i.df, %i.db
  %i.dh = zext i32 %i.dg to i64
  %i.di = call ptr @ft_mem_alloc(ptr noundef %i.h, i64 noundef %i.dh, ptr noundef nonnull %i.a) #21 ; 13 uses
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !152
  %.not415 = icmp eq i32 %i.dj, 0
  br i1 %.not415, label %bb.m, label %.thread433

bb.m:                                             ; preds = %bb.l
  %i.dk = shl nuw nsw i32 %i.n, 4
  %i.dl = zext nneg i32 %i.dk to i64              ; 5 uses
  %i.dm = zext i32 %i.db to i64                   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dm ; 14 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.dl  ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, i8 0, i64 %i.dl, i1 false)
  %i.dp = load i32, ptr %i.p, align 8, !tbaa !317
  %i.dq = load ptr, ptr %i.q, align 8, !tbaa !442 ; 9 uses
  %min.iters.check588 = icmp ult i16 %i.l, 16
  br i1 %min.iters.check588, label %scalar.ph587.preheader, label %vector.memcheck589

vector.memcheck589:                               ; preds = %bb.m
  %i.dr = zext i16 %i.l to i64                    ; 2 uses
  %i.ds = shl nuw nsw i64 %i.dr, 5
  %i.dt = add nuw nsw i64 %i.ds, %i.dm            ; 2 uses
  %i.du = getelementptr i8, ptr %i.di, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 120
  %i.dw = shl nuw nsw i64 %i.dr, 4                ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dq, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 56
  %bound0590 = icmp ult ptr %i.do, %i.dy
  %bound1591 = icmp ult ptr %i.dq, %i.dv
  %found.conflict592 = and i1 %bound0590, %bound1591
  %i.dz = getelementptr i8, ptr %i.di, i64 %i.dw
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dm
  %i.eb = getelementptr i8, ptr %i.ea, i64 72
  %i.ec = getelementptr i8, ptr %i.di, i64 %i.dt
  %7 = getelementptr i8, ptr %i.ec, i64 128
  %8 = getelementptr nuw i8, ptr %i.dq, i64 8
  %9 = getelementptr i8, ptr %i.dq, i64 %i.dl
  %bound0593 = icmp ult ptr %i.eb, %9
  %bound1594 = icmp ult ptr %8, %7
  %found.conflict595 = and i1 %bound0593, %bound1594
  %conflict.rdx596 = or i1 %found.conflict592, %found.conflict595
  br i1 %conflict.rdx596, label %scalar.ph587.preheader, label %vector.ph597

vector.ph597:                                     ; preds = %vector.memcheck589
  %n.vec598 = and i64 %wide.trip.count, 131070    ; 3 uses
  br label %vector.body599

vector.body599:                                   ; preds = %vector.body599, %vector.ph597
  %index600 = phi i64 [ 0, %vector.ph597 ], [ %index.next603, %vector.body599 ] ; 4 uses
  %i.ed = or disjoint i64 %index600, 1            ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %index600
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.ed
  %wide.load601 = load <2 x i64>, ptr %i.ee, align 8
  %wide.load602 = load <2 x i64>, ptr %i.ef, align 8
  %i.eg = shl <2 x i64> %wide.load601, splat (i64 16)
  %i.eh = shl <2 x i64> %wide.load602, splat (i64 16)
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %index600
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.ed
  store <2 x i64> %i.eg, ptr %i.ei, align 8
  store <2 x i64> %i.eh, ptr %i.ej, align 8
  %index.next603 = add nuw i64 %index600, 2       ; 2 uses
  %i.ek = icmp eq i64 %index.next603, %n.vec598
  br i1 %i.ek, label %middle.block604, label %vector.body599, !llvm.loop !829

middle.block604:                                  ; preds = %vector.body599
  %cmp.n605 = icmp eq i64 %n.vec598, %wide.trip.count
  br i1 %cmp.n605, label %.loopexit667, label %scalar.ph587.preheader

scalar.ph587.preheader:                           ; preds = %vector.memcheck589, %bb.m, %middle.block604
  %indvars.iv491.ph = phi i64 [ 0, %vector.memcheck589 ], [ 0, %bb.m ], [ %n.vec598, %middle.block604 ] ; 5 uses
  %i.el = zext i16 %i.l to i64                    ; 2 uses
  %i.em = add nuw nsw i64 %i.el, 3
  %xtraiter672 = and i64 %i.el, 1
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  br i1 %lcmp.mod673.not, label %scalar.ph587.prol.loopexit, label %scalar.ph587.prol

scalar.ph587.prol:                                ; preds = %scalar.ph587.preheader
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %indvars.iv491.ph
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv491.ph
  %i.ep = load <2 x i64>, ptr %i.en, align 8, !tbaa !185
  %i.eq = shl <2 x i64> %i.ep, splat (i64 16)
  store <2 x i64> %i.eq, ptr %i.eo, align 8, !tbaa !185
  %indvars.iv.next492.prol = or disjoint i64 %indvars.iv491.ph, 1
  br label %scalar.ph587.prol.loopexit

scalar.ph587.prol.loopexit:                       ; preds = %scalar.ph587.prol, %scalar.ph587.preheader
  %indvars.iv491.unr = phi i64 [ %indvars.iv491.ph, %scalar.ph587.preheader ], [ %indvars.iv.next492.prol, %scalar.ph587.prol ]
  %i.er = icmp eq i64 %i.em, %indvars.iv491.ph
  br i1 %i.er, label %.loopexit667, label %scalar.ph587

scalar.ph587:                                     ; preds = %scalar.ph587.prol.loopexit, %scalar.ph587
  %indvars.iv491 = phi i64 [ %indvars.iv.next492.1, %scalar.ph587 ], [ %indvars.iv491.unr, %scalar.ph587.prol.loopexit ] ; 4 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %indvars.iv491
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv491
  %i.eu = load <2 x i64>, ptr %i.es, align 8, !tbaa !185
  %i.ev = shl <2 x i64> %i.eu, splat (i64 16)
  store <2 x i64> %i.ev, ptr %i.et, align 8, !tbaa !185
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %indvars.iv.next492
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv.next492
  %i.ey = load <2 x i64>, ptr %i.ew, align 8, !tbaa !185
  %i.ez = shl <2 x i64> %i.ey, splat (i64 16)
  store <2 x i64> %i.ez, ptr %i.ex, align 8, !tbaa !185
  %indvars.iv.next492.1 = add nuw nsw i64 %indvars.iv491, 2 ; 2 uses
  %exitcond495.not.1 = icmp eq i64 %indvars.iv.next492.1, %wide.trip.count
  br i1 %exitcond495.not.1, label %.loopexit667, label %scalar.ph587, !llvm.loop !830

.loopexit667:                                     ; preds = %scalar.ph587.prol.loopexit, %scalar.ph587, %middle.block604
  %i.fa = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dl ; 8 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.dl ; 5 uses
  %i.fc = zext i32 %i.dp to i64                   ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.fc ; 5 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fc ; 4 uses
  %i.ff = getelementptr [8 x i8], ptr %i.dn, i64 %wide.trip.count ; 13 uses
  %.not482 = icmp eq i16 %i.bw, 0
  br i1 %.not482, label %._crit_edge480, label %.lr.ph479

.lr.ph479:                                        ; preds = %.loopexit667
  %i.fg = load ptr, ptr %i.bm, align 8, !tbaa !345
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.fj = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.fk = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.fl = zext i16 %i.l to i64
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = add nuw nsw i64 %i.fm, 32               ; 2 uses
  %xtraiter690 = and i64 %wide.trip.count, 1
  %unroll_iter693 = and i64 %wide.trip.count, 131070
  %lcmp.mod691.not = icmp eq i64 %xtraiter690, 0
  %lcmp.mod692 = trunc i16 %i.l to i1
  %n.vec655 = and i64 %wide.trip.count, 131070    ; 3 uses
  %cmp.n666 = icmp eq i64 %n.vec655, %wide.trip.count
  %n.vec642 = and i64 %wide.trip.count, 131070    ; 3 uses
  %cmp.n651 = icmp eq i64 %n.vec642, %wide.trip.count
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph479, %bb.aj
  %.0369477 = phi ptr [ null, %.lr.ph479 ], [ %.3, %bb.aj ] ; 2 uses
  %.0377476 = phi ptr [ %i.fg, %.lr.ph479 ], [ %.6, %bb.aj ] ; 6 uses
  %.1392475 = phi i32 [ 0, %.lr.ph479 ], [ %i.qn, %bb.aj ]
  %.1395474 = phi i64 [ %.0394, %.lr.ph479 ], [ %.2396, %bb.aj ] ; 3 uses
  %i.fo = load ptr, ptr %i.fh, align 8, !tbaa !384
  %i.fp = ptrtoint ptr %i.fo to i64               ; 3 uses
  %i.fq = ptrtoint ptr %.0377476 to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = icmp slt i64 %i.fr, 4
  br i1 %i.fs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %.thread433

bb.p:                                             ; preds = %bb.n
  %i.ft = load ptr, ptr %i.fi, align 8, !tbaa !381 ; 2 uses
  %i.fu = load i8, ptr %.0377476, align 1, !tbaa !186
  %i.fv = zext i8 %i.fu to i64
  %i.fw = shl nuw nsw i64 %i.fv, 8
  %i.fx = getelementptr inbounds nuw i8, ptr %.0377476, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !186
  %i.fz = zext i8 %i.fy to i64
  %.pn = or disjoint i64 %i.fw, %i.fz
  %i.ga = getelementptr inbounds nuw i8, ptr %.0377476, i64 4 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0377476, i64 2
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !186
  %i.gd = zext i8 %i.gc to i16
  %i.ge = shl nuw i16 %i.gd, 8                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0377476, i64 3
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !186
  %i.gh = zext i8 %i.gg to i16
  %i.gi = or disjoint i16 %i.ge, %i.gh            ; 2 uses
  %i.gj = zext i16 %i.gi to i32                   ; 4 uses
  %i.gk = and i32 %i.gj, 16384
  %.not420 = icmp eq i32 %i.gk, 0                 ; 2 uses
  %spec.select = select i1 %.not420, ptr %i.ft, ptr null ; 2 uses
  %.not421 = icmp sgt i16 %i.ge, -1
  br i1 %.not421, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gl = load i32, ptr %i.p, align 8, !tbaa !317 ; 7 uses
  %i.gm = shl i32 %i.gl, 1
  %i.gn = ptrtoint ptr %i.ga to i64
  %i.go = sub i64 %i.fp, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = icmp ugt i32 %i.gm, %i.gp
  br i1 %i.gq, label %bb.r, label %.preheader455

.preheader455:                                    ; preds = %bb.q
  %.not483 = icmp eq i32 %i.gl, 0
  br i1 %.not483, label %.loopexit456, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader455
  %wide.trip.count499 = zext i32 %i.gl to i64     ; 2 uses
  %xtraiter674 = and i64 %wide.trip.count499, 1
  %i.gr = icmp eq i32 %i.gl, 1
  br i1 %i.gr, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count499, 4294967294
  br label %.lr.ph

bb.r:                                             ; preds = %bb.q
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %.thread433

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv496 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next497.1, %.lr.ph ] ; 3 uses
  %.1378460 = phi ptr [ %i.ga, %.lr.ph.preheader.new ], [ %i.hd, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.1378460, i64 2
  %i.gt = load i8, ptr %.1378460, align 1, !tbaa !186
  %i.gu = zext i8 %i.gt to i16
  %i.gv = shl nuw i16 %i.gu, 8
  %i.gw = getelementptr inbounds nuw i8, ptr %.1378460, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !186
  %i.gy = zext i8 %i.gx to i16
  %i.gz = or disjoint i16 %i.gv, %i.gy
  %i.ha = sext i16 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 2
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv496
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !185
  %i.hd = getelementptr inbounds nuw i8, ptr %.1378460, i64 4 ; 3 uses
  %i.he = load i8, ptr %i.gs, align 1, !tbaa !186
  %i.hf = zext i8 %i.he to i16
  %i.hg = shl nuw i16 %i.hf, 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.1378460, i64 3
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !186
  %i.hj = zext i8 %i.hi to i16
  %i.hk = or disjoint i16 %i.hg, %i.hj
  %i.hl = sext i16 %i.hk to i64
  %i.hm = shl nsw i64 %i.hl, 2
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv496
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i64 %i.hm, ptr %i.ho, align 8, !tbaa !185
  %indvars.iv.next497.1 = add nuw nsw i64 %indvars.iv496, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit456.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !831

bb.s:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@TT_Vary_Apply_Glyph_Deltas:bb.a

.lr.ph463.preheader.new:                          ; preds = %.lr.ph463.preheader
  %unroll_iter682 = and i64 %wide.trip.count504, 4294967294
  br label %.lr.ph463

bb.x:                                             ; preds = %bb.w
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %.thread433

.lr.ph467.preheader.unr-lcssa:                    ; preds = %.lr.ph463
  %lcmp.mod679.not = icmp eq i64 %xtraiter678, 0
  br i1 %lcmp.mod679.not, label %.lr.ph467.preheader, label %.lr.ph463.epil.preheader

.lr.ph463.epil.preheader:                         ; preds = %.lr.ph467.preheader.unr-lcssa, %.lr.ph463.preheader
  %indvars.iv501.epil.init = phi i64 [ 0, %.lr.ph463.preheader ], [ %indvars.iv.next502.1, %.lr.ph467.preheader.unr-lcssa ]
  %.3380462.epil.init = phi ptr [ %.2379, %.lr.ph463.preheader ], [ %i.jq, %.lr.ph467.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod681 = trunc i32 %i.il to i1
  call void @llvm.assume(i1 %lcmp.mod681)
  %i.it = getelementptr inbounds nuw i8, ptr %.3380462.epil.init, i64 2
  %i.iu = load i8, ptr %.3380462.epil.init, align 1, !tbaa !186
  %i.iv = zext i8 %i.iu to i16
  %i.iw = shl nuw i16 %i.iv, 8
  %i.ix = getelementptr inbounds nuw i8, ptr %.3380462.epil.init, i64 1
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !186
  %i.iz = zext i8 %i.iy to i16
  %i.ja = or disjoint i16 %i.iw, %i.iz
  %i.jb = sext i16 %i.ja to i64
  %i.jc = shl nsw i64 %i.jb, 2
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv501.epil.init
  store i64 %i.jc, ptr %i.jd, align 8, !tbaa !185
  br label %.lr.ph467.preheader

.lr.ph467.preheader:                              ; preds = %.lr.ph467.preheader.unr-lcssa, %.lr.ph463.epil.preheader
  %.lcssa670 = phi ptr [ %i.jq, %.lr.ph467.preheader.unr-lcssa ], [ %i.it, %.lr.ph463.epil.preheader ] ; 2 uses
  %xtraiter684 = and i64 %wide.trip.count504, 1
  %i.je = icmp eq i64 %i.ir, 0
  br i1 %i.je, label %.lr.ph467.epil.preheader, label %.lr.ph467.preheader.new

.lr.ph467.preheader.new:                          ; preds = %.lr.ph467.preheader
  %unroll_iter688 = and i64 %wide.trip.count504, 4294967294
  br label %.lr.ph467

.lr.ph463:                                        ; preds = %.lr.ph463, %.lr.ph463.preheader.new
  %indvars.iv501 = phi i64 [ 0, %.lr.ph463.preheader.new ], [ %indvars.iv.next502.1, %.lr.ph463 ] ; 3 uses
  %.3380462 = phi ptr [ %.2379, %.lr.ph463.preheader.new ], [ %i.jq, %.lr.ph463 ] ; 5 uses
  %niter683 = phi i64 [ 0, %.lr.ph463.preheader.new ], [ %niter683.next.1, %.lr.ph463 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.3380462, i64 2
  %i.jg = load i8, ptr %.3380462, align 1, !tbaa !186
  %i.jh = zext i8 %i.jg to i16
  %i.ji = shl nuw i16 %i.jh, 8
  %i.jj = getelementptr inbounds nuw i8, ptr %.3380462, i64 1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !186
  %i.jl = zext i8 %i.jk to i16
  %i.jm = or disjoint i16 %i.ji, %i.jl
  %i.jn = sext i16 %i.jm to i64
  %i.jo = shl nsw i64 %i.jn, 2
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv501
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !185
  %i.jq = getelementptr inbounds nuw i8, ptr %.3380462, i64 4 ; 3 uses
  %i.jr = load i8, ptr %i.jf, align 1, !tbaa !186
  %i.js = zext i8 %i.jr to i16
  %i.jt = shl nuw i16 %i.js, 8
  %i.ju = getelementptr inbounds nuw i8, ptr %.3380462, i64 3
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !186
  %i.jw = zext i8 %i.jv to i16
  %i.jx = or disjoint i16 %i.jt, %i.jw
  %i.jy = sext i16 %i.jx to i64
  %i.jz = shl nsw i64 %i.jy, 2
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv501
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i64 %i.jz, ptr %i.kb, align 8, !tbaa !185
  %indvars.iv.next502.1 = add nuw nsw i64 %indvars.iv501, 2 ; 2 uses
  %niter683.next.1 = add i64 %niter683, 2         ; 2 uses
  %niter683.ncmp.1 = icmp eq i64 %niter683.next.1, %unroll_iter682
  br i1 %niter683.ncmp.1, label %.lr.ph467.preheader.unr-lcssa, label %.lr.ph463, !llvm.loop !832

.lr.ph467:                                        ; preds = %.lr.ph467, %.lr.ph467.preheader.new
  %indvars.iv506 = phi i64 [ 0, %.lr.ph467.preheader.new ], [ %indvars.iv.next507.1, %.lr.ph467 ] ; 3 uses
  %.4381466 = phi ptr [ %.lcssa670, %.lr.ph467.preheader.new ], [ %i.kn, %.lr.ph467 ] ; 5 uses
  %niter689 = phi i64 [ 0, %.lr.ph467.preheader.new ], [ %niter689.next.1, %.lr.ph467 ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.4381466, i64 2
  %i.kd = load i8, ptr %.4381466, align 1, !tbaa !186
  %i.ke = zext i8 %i.kd to i16
  %i.kf = shl nuw i16 %i.ke, 8
  %i.kg = getelementptr inbounds nuw i8, ptr %.4381466, i64 1
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !186
  %i.ki = zext i8 %i.kh to i16
  %i.kj = or disjoint i16 %i.kf, %i.ki
  %i.kk = sext i16 %i.kj to i64
  %i.kl = shl nsw i64 %i.kk, 2
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv506
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !185
  %i.kn = getelementptr inbounds nuw i8, ptr %.4381466, i64 4 ; 3 uses
  %i.ko = load i8, ptr %i.kc, align 1, !tbaa !186
  %i.kp = zext i8 %i.ko to i16
  %i.kq = shl nuw i16 %i.kp, 8
  %i.kr = getelementptr inbounds nuw i8, ptr %.4381466, i64 3
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !186
  %i.kt = zext i8 %i.ks to i16
  %i.ku = or disjoint i16 %i.kq, %i.kt
  %i.kv = sext i16 %i.ku to i64
  %i.kw = shl nsw i64 %i.kv, 2
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv506
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i64 %i.kw, ptr %i.ky, align 8, !tbaa !185
  %indvars.iv.next507.1 = add nuw nsw i64 %indvars.iv506, 2 ; 2 uses
  %niter689.next.1 = add i64 %niter689, 2         ; 2 uses
  %niter689.ncmp.1 = icmp eq i64 %niter689.next.1, %unroll_iter688
  br i1 %niter689.ncmp.1, label %.loopexit453.loopexit.unr-lcssa, label %.lr.ph467, !llvm.loop !833

.loopexit453.loopexit.unr-lcssa:                  ; preds = %.lr.ph467
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.loopexit453, label %.lr.ph467.epil.preheader

.lr.ph467.epil.preheader:                         ; preds = %.loopexit453.loopexit.unr-lcssa, %.lr.ph467.preheader
  %indvars.iv506.epil.init = phi i64 [ 0, %.lr.ph467.preheader ], [ %indvars.iv.next507.1, %.loopexit453.loopexit.unr-lcssa ]
  %.4381466.epil.init = phi ptr [ %.lcssa670, %.lr.ph467.preheader ], [ %i.kn, %.loopexit453.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod687 = trunc i32 %i.il to i1
  call void @llvm.assume(i1 %lcmp.mod687)
  %i.kz = getelementptr inbounds nuw i8, ptr %.4381466.epil.init, i64 2
  %i.la = load i8, ptr %.4381466.epil.init, align 1, !tbaa !186
  %i.lb = zext i8 %i.la to i16
  %i.lc = shl nuw i16 %i.lb, 8
  %i.ld = getelementptr inbounds nuw i8, ptr %.4381466.epil.init, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !186
  %i.lf = zext i8 %i.le to i16
  %i.lg = or disjoint i16 %i.lc, %i.lf
  %i.lh = sext i16 %i.lg to i64
  %i.li = shl nsw i64 %i.lh, 2
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv506.epil.init
  store i64 %i.li, ptr %i.lj, align 8, !tbaa !185
  br label %.loopexit453

.loopexit453:                                     ; preds = %.lr.ph467.epil.preheader, %.loopexit453.loopexit.unr-lcssa, %.preheader454, %.loopexit456
  %.5 = phi ptr [ %.2379, %.loopexit456 ], [ %.2379, %.preheader454 ], [ %i.kn, %.loopexit453.loopexit.unr-lcssa ], [ %i.kz, %.lr.ph467.epil.preheader ] ; 2 uses
  %i.lk = call fastcc i64 @ft_var_apply_tuple(ptr noundef %i.p, i16 noundef zeroext %i.gi, ptr noundef %.2375, ptr noundef %i.fd, ptr noundef %i.fe) ; 3 uses
  %.not424 = icmp eq ptr %.1, null
  br i1 %.not424, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit453
  %i.ll = and i32 %i.gj, 4095
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.lm
  store i64 %i.lk, ptr %i.ln, align 8, !tbaa !185
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %.loopexit453, %bb.y
  %.6 = phi ptr [ %.5, %bb.y ], [ %.5, %.loopexit453 ], [ %i.ga, %bb.u ]
  %.1365 = phi i64 [ %i.lk, %bb.y ], [ %i.lk, %.loopexit453 ], [ %i.hu, %bb.u ] ; 6 uses
  %i.lo = icmp eq i64 %.1365, 0
  br i1 %i.lo, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lp = load ptr, ptr %i.bm, align 8, !tbaa !345
  %i.lq = load ptr, ptr %i.f, align 8, !tbaa !391 ; 2 uses
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = ptrtoint ptr %i.lq to i64               ; 2 uses
  %i.lt = sub i64 %i.lr, %i.ls                    ; 2 uses
  %i.lu = load ptr, ptr %i.fh, align 8, !tbaa !384 ; 2 uses
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = sub i64 %i.lv, %i.ls
  %i.lx = icmp ult i64 %.1395474, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 %.1395474
  %i.lz = select i1 %i.lx, ptr %i.ly, ptr %i.lu
  store ptr %i.lz, ptr %i.bm, align 8, !tbaa !345
  %i.ma = and i32 %i.gj, 8192
  %.not425 = icmp eq i32 %i.ma, 0
  br i1 %.not425, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mb = call fastcc ptr @ft_var_readpackedpoints(ptr noundef nonnull %i.f, ptr noundef %i.b) ; 2 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !152
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.mc = load i32, ptr %i.c, align 4, !tbaa !152 ; 2 uses
  store i32 %i.mc, ptr %i.b, align 4, !tbaa !152
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.md = phi i32 [ %.pre, %bb.ab ], [ %i.mc, %bb.ac ] ; 3 uses
  %.1370 = phi ptr [ %i.mb, %bb.ab ], [ %.0369477, %bb.ac ] ; 2 uses
  %.0368 = phi ptr [ %i.mb, %bb.ab ], [ %.0371, %bb.ac ] ; 3 uses
  %i.me = icmp eq i32 %i.md, 0                    ; 2 uses
  %i.mf = select i1 %i.me, i32 %i.n, i32 %i.md    ; 2 uses
  %i.mg = call fastcc ptr @ft_var_readpackeddeltas(ptr noundef nonnull %i.f, i32 noundef %i.mf) ; 8 uses
  %i.mh = call fastcc ptr @ft_var_readpackeddeltas(ptr noundef nonnull %i.f, i32 noundef %i.mf) ; 8 uses
  %i.mi = icmp ne ptr %.0368, null
  %i.mj = icmp ne ptr %i.mh, null
  %or.cond = select i1 %i.mi, i1 %i.mj, i1 false
  %i.mk = icmp ne ptr %i.mg, null
  %or.cond3 = select i1 %or.cond, i1 %i.mk, i1 false
  br i1 %or.cond3, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.ml = icmp eq ptr %.0368, inttoptr (i64 -1 to ptr)
  br i1 %i.ml, label %vector.memcheck625, label %.preheader451

vector.memcheck625:                               ; preds = %bb.ae
  %i.mm = getelementptr i8, ptr %i.mg, i64 %i.fn  ; 2 uses
  %bound0626 = icmp ult ptr %i.ff, %i.mm
  %bound1627 = icmp ult ptr %i.mg, %i.do
  %found.conflict628 = and i1 %bound0626, %bound1627
  %10 = getelementptr i8, ptr %i.mh, i64 %i.fn    ; 2 uses
  %bound0629 = icmp ult ptr %i.ff, %10
  %bound1630 = icmp ult ptr %i.mh, %i.do
  %found.conflict631 = and i1 %bound0629, %bound1630
  %conflict.rdx632 = or i1 %found.conflict628, %found.conflict631
  %bound0633 = icmp ult ptr %i.dn, %i.mm
  %bound1634 = icmp ult ptr %i.mg, %i.ff
  %found.conflict635 = and i1 %bound0633, %bound1634
  %conflict.rdx636 = or i1 %conflict.rdx632, %found.conflict635
  %bound0637 = icmp ult ptr %i.dn, %10
  %bound1638 = icmp ult ptr %i.mh, %i.ff
  %found.conflict639 = and i1 %bound0637, %bound1638
  %conflict.rdx640 = or i1 %conflict.rdx636, %found.conflict639
  br i1 %conflict.rdx640, label %.preheader.preheader, label %vector.ph641

vector.ph641:                                     ; preds = %vector.memcheck625
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.1365, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph641
  %index644 = phi i64 [ 0, %vector.ph641 ], [ %index.next649, %vector.body643 ] ; 5 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index644 ; 2 uses
  %wide.load645 = load <2 x i64>, ptr %i.mn, align 8, !tbaa !185, !alias.scope !847, !noalias !848
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %index644 ; 2 uses
  %wide.load646 = load <2 x i64>, ptr %i.mo, align 8, !tbaa !185, !alias.scope !849, !noalias !848
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %index644
  %wide.load647 = load <2 x i64>, ptr %i.mp, align 8, !tbaa !185, !alias.scope !850
  %i.mq = mul <2 x i64> %wide.load647, %broadcast.splat ; 2 uses
  %i.mr = ashr <2 x i64> %i.mq, splat (i64 63)
  %i.ms = add <2 x i64> %i.mq, splat (i64 32768)
  %i.mt = add <2 x i64> %i.ms, %i.mr
  %i.mu = ashr <2 x i64> %i.mt, splat (i64 16)
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %index644
  %wide.load648 = load <2 x i64>, ptr %i.mv, align 8, !tbaa !185, !alias.scope !851
  %i.mw = mul <2 x i64> %wide.load648, %broadcast.splat ; 2 uses
  %i.mx = ashr <2 x i64> %i.mw, splat (i64 63)
  %i.my = add <2 x i64> %i.mw, splat (i64 32768)
  %i.mz = add <2 x i64> %i.my, %i.mx
  %i.na = ashr <2 x i64> %i.mz, splat (i64 16)
  %i.nb = add nsw <2 x i64> %i.mu, %wide.load645
  store <2 x i64> %i.nb, ptr %i.mn, align 8, !tbaa !185, !alias.scope !847, !noalias !848
  %i.nc = add nsw <2 x i64> %i.na, %wide.load646
  store <2 x i64> %i.nc, ptr %i.mo, align 8, !tbaa !185, !alias.scope !849, !noalias !848
  %index.next649 = add nuw i64 %index644, 2       ; 2 uses
  %i.nd = icmp eq i64 %index.next649, %n.vec642
  br i1 %i.nd, label %middle.block650, label %vector.body643, !llvm.loop !839

middle.block650:                                  ; preds = %vector.body643
  br i1 %cmp.n651, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck625, %middle.block650
  %indvars.iv526.ph = phi i64 [ 0, %vector.memcheck625 ], [ %n.vec642, %middle.block650 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv526 = phi i64 [ %indvars.iv.next527, %.preheader ], [ %indvars.iv526.ph, %.preheader.preheader ] ; 5 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv526 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !185
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv526 ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !185
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv526
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !185
  %i.nk = mul i64 %i.nj, %.1365                   ; 2 uses
  %i.nl = ashr i64 %i.nk, 63
  %i.nm = add i64 %i.nk, 32768
  %i.nn = add i64 %i.nm, %i.nl
  %i.no = ashr i64 %i.nn, 16
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv526
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !185
  %i.nr = mul i64 %i.nq, %.1365                   ; 2 uses
  %i.ns = ashr i64 %i.nr, 63
  %i.nt = add i64 %i.nr, 32768
  %i.nu = add i64 %i.nt, %i.ns
  %i.nv = ashr i64 %i.nu, 16
  %i.nw = add nsw i64 %i.no, %i.nf
  store i64 %i.nw, ptr %i.ne, align 8, !tbaa !185
  %i.nx = add nsw i64 %i.nv, %i.nh
  store i64 %i.nx, ptr %i.ng, align 8, !tbaa !185
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, 1 ; 2 uses
  %exitcond530.not = icmp eq i64 %indvars.iv.next527, %wide.trip.count
  br i1 %exitcond530.not, label %.loopexit, label %.preheader, !llvm.loop !840

.preheader450.unr-lcssa:                          ; preds = %.preheader451
  br i1 %lcmp.mod691.not, label %.preheader450, label %.preheader451.epil.preheader

.preheader451.epil.preheader:                     ; preds = %.preheader450.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod692)
  %i.ny = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.next512.1
  store i8 0, ptr %i.ny, align 1, !tbaa !186
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %indvars.iv.next512.1
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv.next512.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, ptr noundef nonnull align 8 dereferenceable(16) %i.oa, i64 16, i1 false), !tbaa.struct !299
  br label %.preheader450

.preheader450:                                    ; preds = %.preheader450.unr-lcssa, %.preheader451.epil.preheader
  br i1 %i.me, label %._crit_edge, label %.lr.ph471.preheader

.lr.ph471.preheader:                              ; preds = %.preheader450
  %wide.trip.count519 = zext i32 %i.md to i64
  br label %.lr.ph471

.preheader451:                                    ; preds = %bb.ae, %.preheader451
  %indvars.iv511 = phi i64 [ %indvars.iv.next512.1, %.preheader451 ], [ 0, %bb.ae ] ; 5 uses
  %niter694 = phi i64 [ %niter694.next.1, %.preheader451 ], [ 0, %bb.ae ]
  %i.ob = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv511
  store i8 0, ptr %i.ob, align 1, !tbaa !186
  %i.oc = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %indvars.iv511
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oc, ptr noundef nonnull align 8 dereferenceable(16) %i.od, i64 16, i1 false), !tbaa.struct !299
  %indvars.iv.next512 = or disjoint i64 %indvars.iv511, 1 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.next512
  store i8 0, ptr %i.oe, align 1, !tbaa !186
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %indvars.iv.next512
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv.next512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.of, ptr noundef nonnull align 8 dereferenceable(16) %i.og, i64 16, i1 false), !tbaa.struct !299
  %indvars.iv.next512.1 = add nuw nsw i64 %indvars.iv511, 2 ; 4 uses
  %niter694.next.1 = add nuw nsw i64 %niter694, 2 ; 2 uses
  %niter694.ncmp.1 = icmp eq i64 %niter694.next.1, %unroll_iter693
  br i1 %niter694.ncmp.1, label %.preheader450.unr-lcssa, label %.preheader451, !llvm.loop !841

.lr.ph471:                                        ; preds = %.lr.ph471.preheader, %bb.ag
  %indvars.iv516 = phi i64 [ 0, %.lr.ph471.preheader ], [ %indvars.iv.next517, %bb.ag ] ; 4 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.0368, i64 %indvars.iv516
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !128 ; 2 uses
  %i.oj = zext i16 %i.oi to i32
  %.not426 = icmp samesign ugt i32 %i.n, %i.oj
  br i1 %.not426, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph471
  %i.ok = zext i16 %i.oi to i64                   ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ok
  store i8 1, ptr %i.ol, align 1, !tbaa !186
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv516
  %i.on = load i64, ptr %i.om, align 8, !tbaa !185
  %i.oo = mul i64 %i.on, %.1365                   ; 2 uses
  %i.op = ashr i64 %i.oo, 63
  %i.oq = add i64 %i.oo, 32768
  %i.or = add i64 %i.oq, %i.op
  %i.os = ashr i64 %i.or, 16
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.ok ; 3 uses
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !230
  %i.ov = add nsw i64 %i.os, %i.ou
  store i64 %i.ov, ptr %i.ot, align 8, !tbaa !230
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv516
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !185
  %i.oy = mul i64 %i.ox, %.1365                   ; 2 uses
  %i.oz = ashr i64 %i.oy, 63
  %i.pa = add i64 %i.oy, 32768
  %i.pb = add i64 %i.pa, %i.oz
  %i.pc = ashr i64 %i.pb, 16
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !257
  %i.pf = add nsw i64 %i.pc, %i.pe
  store i64 %i.pf, ptr %i.pd, align 8, !tbaa !257
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph471, %bb.af
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %exitcond520.not = icmp eq i64 %indvars.iv.next517, %wide.trip.count519
  br i1 %exitcond520.not, label %._crit_edge, label %.lr.ph471, !llvm.loop !842

._crit_edge:                                      ; preds = %bb.ag, %.preheader450
  call fastcc void @tt_interpolate_deltas(ptr noundef %1, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.do, ptr noundef nonnull %i.fb)
  br label %vector.body656

vector.body656:                                   ; preds = %vector.body656, %._crit_edge
  %index657 = phi i64 [ 0, %._crit_edge ], [ %index.next664, %vector.body656 ] ; 5 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index657 ; 2 uses
  %wide.load658 = load <2 x i64>, ptr %i.pg, align 8, !tbaa !185
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %index657 ; 2 uses
  %wide.load659 = load <2 x i64>, ptr %i.ph, align 8, !tbaa !185
  %i.pi = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %index657
  %wide.vec = load <4 x i64>, ptr %i.pi, align 8, !tbaa !185 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec660 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %index657
  %wide.vec661 = load <4 x i64>, ptr %i.pj, align 8, !tbaa !185 ; 2 uses
  %strided.vec662 = shufflevector <4 x i64> %wide.vec661, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec663 = shufflevector <4 x i64> %wide.vec661, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.pk = add <2 x i64> %strided.vec, %wide.load658
  %i.pl = sub <2 x i64> %i.pk, %strided.vec662
  store <2 x i64> %i.pl, ptr %i.pg, align 8, !tbaa !185
  %i.pm = add <2 x i64> %strided.vec660, %wide.load659
  %i.pn = sub <2 x i64> %i.pm, %strided.vec663
  store <2 x i64> %i.pn, ptr %i.ph, align 8, !tbaa !185
  %index.next664 = add nuw i64 %index657, 2       ; 2 uses
  %i.po = icmp eq i64 %index.next664, %n.vec655
  br i1 %i.po, label %middle.block665, label %vector.body656, !llvm.loop !843

middle.block665:                                  ; preds = %vector.body656
  br i1 %cmp.n666, label %.loopexit, label %scalar.ph653

scalar.ph653:                                     ; preds = %middle.block665, %scalar.ph653
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %scalar.ph653 ], [ %n.vec655, %middle.block665 ] ; 5 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv521 ; 2 uses
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !185
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv521 ; 2 uses
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !185
  %i.pt = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %indvars.iv521 ; 2 uses
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !230
end_hunk_1
begin_hunk_2_@TT_Vary_Apply_Glyph_Deltas:bb.a
  %.0 = phi i32 [ 6, %bb.b ], [ 0, %bb.c ], [ %i.ty, %bb.au ], [ 0, %bb.d ], [ %i.bl, %bb.f ], [ %i.bk, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TT_Process_Simple_Glyph(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 98 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !440  ; 4 uses
  %i.g = zext i16 %i.f to i32
  %i.h = load ptr, ptr %0, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !144  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 10 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.m = zext i16 %i.f to i64                     ; 8 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !299
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !299
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !299
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !299
  %i.ab = add nuw nsw i32 %i.g, 4                 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !140   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !118
  %i.af = and i64 %i.ae, 2147418112
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !70
  %i.ai = and i64 %i.ah, 32768
  %.not102 = icmp eq i64 %i.ai, 0
  br i1 %.not102, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aj = zext nneg i32 %i.ab to i64
  %i.ak = call ptr @ft_mem_qrealloc(ptr noundef %i.j, i64 noundef 16, i64 noundef 0, i64 noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 4 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !152
  %.not103 = icmp eq i32 %i.al, 0
  br i1 %.not103, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.am = call fastcc i32 @TT_Vary_Apply_Glyph_Deltas(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.ak) ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !152
  %.not104 = icmp eq i32 %i.am, 0
  br i1 %.not104, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0100 = phi ptr [ %i.ak, %bb.d ], [ null, %bb.b ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !139 ; 2 uses
  %i.ap = and i64 %i.ao, 2
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.as = load i16, ptr %i.e, align 2, !tbaa !461
  %i.at = add i16 %i.as, 4                        ; 2 uses
  store i16 %i.at, ptr %i.ar, align 8, !tbaa !178
  %i.au = load i16, ptr %i.d, align 8, !tbaa !462
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i16 %i.au, ptr %i.av, align 2, !tbaa !179
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.az = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !197
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !463
  %i.bb = load <2 x ptr>, ptr %i.k, align 8, !tbaa !154
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !464
  %i.bd = shufflevector <2 x ptr> %i.az, <2 x ptr> %i.bb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x ptr> %i.bd, ptr %i.ax, align 8, !tbaa !154
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !465
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !182
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i16 0, ptr %i.bh, align 8, !tbaa !184
  %i.bi = zext i16 %i.at to i64
  %i.bj = shl nuw nsw i64 %i.bi, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ba, ptr align 8 %i.bc, i64 %i.bj, i1 false)
  %.pre = load i64, ptr %i.an, align 8, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bk = phi i64 [ %.pre, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !442 ; 11 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64              ; 8 uses
  %i.bn = shl nuw nsw i32 %i.ab, 4
  %.idx = zext nneg i32 %i.bn to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx ; 2 uses
  %i.bp = and i64 %i.bk, 1
  %.not106 = icmp eq i64 %i.bp, 0
  %.pre127 = load ptr, ptr %0, align 8, !tbaa !140 ; 3 uses
  br i1 %.not106, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !141
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !117
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load <2 x i64>, ptr %i.bu, align 8, !tbaa !185 ; 12 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre127, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !118
  %i.by = and i64 %i.bx, 2147418112
  %.not107 = icmp eq i64 %i.by, 0
  br i1 %.not107, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre127, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !70
  %i.cb = and i64 %i.ca, 32768
  %.not108 = icmp eq i64 %i.cb, 0
  br i1 %.not108, label %.lr.ph125.preheader, label %.lr.ph.preheader

.lr.ph125.preheader:                              ; preds = %bb.i
  %i.cc = zext i16 %i.f to i64
  %i.cd = shl nuw nsw i64 %i.cc, 4
  %i.ce = add i64 %i.cd, %i.bm
  %i.cf = add i64 %i.ce, 64
  %i.cg = add i64 %i.bm, 16
  %i.ch = call i64 @llvm.umax.i64(i64 %i.cf, i64 %i.cg)
  %i.ci = xor i64 %i.bm, -1
  %i.cj = add i64 %i.ch, %i.ci
  %i.ck = lshr i64 %i.cj, 4                       ; 2 uses
  %min.iters.check145 = icmp eq i64 %i.ck, 0
  br i1 %min.iters.check145, label %.lr.ph125, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph125.preheader
  %i.cl = extractelement <2 x i64> %i.bv, i64 0
  %i.cm = extractelement <2 x i64> %i.bv, i64 1
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next152, %vector.body148 ] ; 3 uses
  %i.cn = shl i64 %index149, 4
  %next.gep150 = getelementptr i8, ptr %i.bl, i64 %i.cn ; 2 uses
  %wide.load151 = load <2 x i64>, ptr %next.gep150, align 8
  %i.co = mul <2 x i64> %wide.load151, %i.bv      ; 2 uses
  %i.cp = ashr <2 x i64> %i.co, splat (i64 63)
  %i.cq = add <2 x i64> %i.co, splat (i64 32768)
  %i.cr = add <2 x i64> %i.cq, %i.cp
  %i.cs = ashr <2 x i64> %i.cr, splat (i64 16)
  store <2 x i64> %i.cs, ptr %next.gep150, align 8
  %index.next152 = add nuw i64 %index149, 1
  %i.ct = icmp eq i64 %index149, %i.ck
  br i1 %i.ct, label %.loopexit, label %vector.body148, !llvm.loop !852

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.i
  %i.cu = zext i16 %i.f to i64                    ; 2 uses
  %i.cv = shl nuw nsw i64 %i.cu, 4
  %i.cw = add i64 %i.cv, %i.bm
  %i.cx = add i64 %i.cw, 64
  %i.cy = add i64 %i.bm, 16                       ; 2 uses
  %i.cz = call i64 @llvm.umax.i64(i64 %i.cx, i64 %i.cy)
  %i.da = xor i64 %i.bm, -1
  %i.db = add i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = lshr i64 %i.db, 4
  %min.iters.check = icmp ult i64 %i.db, 144
  br i1 %min.iters.check, label %.lr.ph.preheader159, label %vector.memcheck

.lr.ph.preheader159:                              ; preds = %vector.memcheck, %.lr.ph.preheader
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dd = shl nuw nsw i64 %i.cu, 4
  %i.de = add i64 %i.dd, %i.bm
  %i.df = add i64 %i.de, 64
  %i.dg = call i64 @llvm.umax.i64(i64 %i.df, i64 %i.cy)
  %i.dh = xor i64 %i.bm, -1
  %i.di = add i64 %i.dg, %i.dh
  %i.dj = and i64 %i.di, -16                      ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 8                ; 2 uses
  %i.dl = getelementptr i8, ptr %i.bl, i64 %i.dk
  %i.dm = getelementptr i8, ptr %.0100, i64 %i.dk
  %bound0 = icmp ult ptr %i.bl, %i.dm
  %bound1 = icmp ult ptr %.0100, %i.dl
  %found.conflict = and i1 %bound0, %bound1
  %i.dn = getelementptr i8, ptr %i.bl, i64 8
  %1 = add i64 %i.dj, 16                          ; 2 uses
  %2 = getelementptr i8, ptr %i.bl, i64 %1
  %3 = getelementptr i8, ptr %.0100, i64 8
  %4 = getelementptr i8, ptr %.0100, i64 %1
  %bound0139 = icmp ult ptr %i.dn, %4
  %bound1140 = icmp ult ptr %3, %2
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx = or i1 %found.conflict, %found.conflict141
  br i1 %conflict.rdx, label %.lr.ph.preheader159, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.do = extractelement <2 x i64> %i.bv, i64 0
  %i.dp = extractelement <2 x i64> %i.bv, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dq = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0100, i64 %i.dq
  %next.gep142 = getelementptr i8, ptr %i.bl, i64 %i.dq
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %i.dr = mul <2 x i64> %wide.load, %i.bv         ; 2 uses
  %i.ds = ashr <2 x i64> %i.dr, splat (i64 63)
  %i.dt = add <2 x i64> %i.dr, splat (i64 32768)
  %i.du = add <2 x i64> %i.dt, %i.ds
  %i.dv = ashr <2 x i64> %i.du, splat (i64 16)
  %i.dw = add nsw <2 x i64> %i.dv, splat (i64 32)
  %i.dx = ashr <2 x i64> %i.dw, splat (i64 6)
  store <2 x i64> %i.dx, ptr %next.gep142, align 8
  %index.next = add nuw i64 %index, 1
  %i.dy = icmp eq i64 %index, %i.dc
  br i1 %i.dy, label %.loopexit, label %vector.body, !llvm.loop !853

.lr.ph:                                           ; preds = %.lr.ph.preheader159, %.lr.ph
  %.0123 = phi ptr [ %i.ei, %.lr.ph ], [ %.0100, %.lr.ph.preheader159 ] ; 2 uses
  %.099122 = phi ptr [ %i.eh, %.lr.ph ], [ %i.bl, %.lr.ph.preheader159 ] ; 2 uses
  %i.dz = load <2 x i64>, ptr %.0123, align 8, !tbaa !185
  %i.ea = mul <2 x i64> %i.dz, %i.bv              ; 2 uses
  %i.eb = ashr <2 x i64> %i.ea, splat (i64 63)
  %i.ec = add <2 x i64> %i.ea, splat (i64 32768)
  %i.ed = add <2 x i64> %i.ec, %i.eb
  %i.ee = ashr <2 x i64> %i.ed, splat (i64 16)
  %i.ef = add nsw <2 x i64> %i.ee, splat (i64 32)
  %i.eg = ashr <2 x i64> %i.ef, splat (i64 6)
  store <2 x i64> %i.eg, ptr %.099122, align 8, !tbaa !185
  %i.eh = getelementptr inbounds nuw i8, ptr %.099122, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0123, i64 16
  %i.ej = icmp ult ptr %i.eh, %i.bo
  br i1 %i.ej, label %.lr.ph, label %.loopexit.loopexit160, !llvm.loop !854

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.lr.ph125
  %.1124 = phi ptr [ %i.eq, %.lr.ph125 ], [ %i.bl, %.lr.ph125.preheader ] ; 3 uses
  %i.ek = load <2 x i64>, ptr %.1124, align 8, !tbaa !185
  %i.el = mul <2 x i64> %i.ek, %i.bv              ; 2 uses
  %i.em = ashr <2 x i64> %i.el, splat (i64 63)
  %i.en = add <2 x i64> %i.el, splat (i64 32768)
  %i.eo = add <2 x i64> %i.en, %i.em
  %i.ep = ashr <2 x i64> %i.eo, splat (i64 16)
  store <2 x i64> %i.ep, ptr %.1124, align 8, !tbaa !185
  %i.eq = getelementptr inbounds nuw i8, ptr %.1124, i64 16 ; 2 uses
  %i.er = icmp ult ptr %i.eq, %i.bo
  br i1 %i.er, label %.lr.ph125, label %.loopexit.loopexit, !llvm.loop !855

.loopexit.loopexit:                               ; preds = %.lr.ph125
  %i.es = extractelement <2 x i64> %i.bv, i64 1
  %i.et = extractelement <2 x i64> %i.bv, i64 0
  br label %.loopexit

.loopexit.loopexit160:                            ; preds = %.lr.ph
  %i.eu = extractelement <2 x i64> %i.bv, i64 1
  %i.ev = extractelement <2 x i64> %i.bv, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %vector.body148, %.loopexit.loopexit160, %.loopexit.loopexit, %bb.g
  %.097117 = phi i64 [ %i.es, %.loopexit.loopexit ], [ 0, %bb.g ], [ %i.eu, %.loopexit.loopexit160 ], [ %i.cm, %vector.body148 ], [ %i.dp, %vector.body ] ; 2 uses
  %.098114 = phi i64 [ %i.et, %.loopexit.loopexit ], [ 0, %bb.g ], [ %i.ev, %.loopexit.loopexit160 ], [ %i.cl, %vector.body148 ], [ %i.do, %vector.body ] ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.pre127, i64 1216 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !231 ; 2 uses
  %i.ey = and i32 %i.ex, 2
  %.not109 = icmp ne i32 %i.ey, 0
  %i.ez = and i64 %i.bk, 2
  %i.fa = icmp eq i64 %i.ez, 0                    ; 3 uses
  %or.cond = and i1 %i.fa, %.not109
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.fb = load i64, ptr %i.o, align 8, !tbaa !229
  %i.fc = mul i64 %i.fb, %.098114                 ; 2 uses
  %i.fd = ashr i64 %i.fc, 63
  %i.fe = add i64 %i.fc, 32768
  %i.ff = add i64 %i.fe, %i.fd
  %i.fg = ashr i64 %i.ff, 16
  store i64 %i.fg, ptr %i.o, align 8, !tbaa !229
  %i.fh = load i64, ptr %i.s, align 8, !tbaa !435
  %i.fi = mul i64 %i.fh, %.098114                 ; 2 uses
  %i.fj = ashr i64 %i.fi, 63
  %i.fk = add i64 %i.fi, 32768
  %i.fl = add i64 %i.fk, %i.fj
  %i.fm = ashr i64 %i.fl, 16
  store i64 %i.fm, ptr %i.s, align 8, !tbaa !435
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i64 16, i1 false), !tbaa.struct !299
  %i.fo = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.m
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false), !tbaa.struct !299
  %.pre128 = load i32, ptr %i.ew, align 8, !tbaa !231
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fr = phi i32 [ %.pre128, %bb.k ], [ %i.ex, %bb.j ]
  %i.fs = and i32 %i.fr, 16
  %.not110 = icmp ne i32 %i.fs, 0
  %or.cond120 = and i1 %i.fa, %.not110
  br i1 %or.cond120, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.ft = load i64, ptr %i.w, align 8, !tbaa !436
  %i.fu = mul i64 %i.ft, %.098114                 ; 2 uses
  %i.fv = ashr i64 %i.fu, 63
  %i.fw = add i64 %i.fu, 32768
  %i.fx = add i64 %i.fw, %i.fv
  %i.fy = ashr i64 %i.fx, 16
  store i64 %i.fy, ptr %i.w, align 8, !tbaa !436
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !437
  %i.gb = mul i64 %i.ga, %.097117                 ; 2 uses
  %i.gc = ashr i64 %i.gb, 63
  %i.gd = add i64 %i.gb, 32768
  %i.ge = add i64 %i.gd, %i.gc
  %i.gf = ashr i64 %i.ge, 16
  store i64 %i.gf, ptr %i.fz, align 8, !tbaa !437
  %i.gg = load i64, ptr %i.aa, align 8, !tbaa !438
  %i.gh = mul i64 %i.gg, %.098114                 ; 2 uses
  %i.gi = ashr i64 %i.gh, 63
  %i.gj = add i64 %i.gh, 32768
  %i.gk = add i64 %i.gj, %i.gi
  %i.gl = ashr i64 %i.gk, 16
  store i64 %i.gl, ptr %i.aa, align 8, !tbaa !438
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !439
  %i.go = mul i64 %i.gn, %.097117                 ; 2 uses
  %i.gp = ashr i64 %i.go, 63
  %i.gq = add i64 %i.go, 32768
  %i.gr = add i64 %i.gq, %i.gp
  %i.gs = ashr i64 %i.gr, 16
  store i64 %i.gs, ptr %i.gm, align 8, !tbaa !439
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gt = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %i.m
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i64 16, i1 false), !tbaa.struct !299
  %i.gw = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %i.m
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !tbaa.struct !299
  br i1 %i.fa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread, %bb.m
  %i.gz = call fastcc i32 @TT_Hint_Glyph(ptr noundef %0, i8 noundef zeroext 0)
  store i32 %i.gz, ptr %i.a, align 4, !tbaa !152
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.d, %bb.n, %bb.m
  %.1101 = phi ptr [ %i.ak, %bb.c ], [ %i.ak, %bb.d ], [ %.0100, %bb.n ], [ %.0100, %bb.m ]
  call void @ft_mem_free(ptr noundef %i.j, ptr noundef %.1101) #21
  %i.ha = load i32, ptr %i.a, align 4, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.ha
}

declare hidden void @FT_GlyphLoader_Add(ptr noundef) local_unnamed_addr #4

declare ptr @FT_List_Find(ptr noundef, ptr noundef) local_unnamed_addr #4

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @FT_List_Add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 22) i32 @TT_Process_Composite_Component(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 65536) %2, i32 noundef range(i32 0, 65536) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.FT_Outline_, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !856
  %i.e = zext nneg i32 %3 to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !442
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !443
  %i.j = trunc nuw i32 %3 to i16
  %i.k = sub i16 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.k, ptr %i.l, align 2, !tbaa !440
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.n = load i16, ptr %i.m, align 4, !tbaa !453  ; 2 uses
  %i.o = and i16 %i.n, 200
end_hunk_2
