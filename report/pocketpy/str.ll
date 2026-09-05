Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/str?download=true
begin_hunk_0_@c11__u8_value:bb.a
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.bg = load i8, ptr %1, align 1, !tbaa !13
  %i.bh = sext i8 %i.bg to i32
  br label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %scalar.ph ], [ %indvars.iv53.ph, %scalar.ph.preheader ] ; 3 uses
  %.01922 = phi i32 [ %i.br, %scalar.ph ], [ %.01922.ph, %scalar.ph.preheader ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = trunc nuw nsw i64 %indvars.iv53 to i32
  %i.bn = xor i32 %i.bm, -1
  %i.bo = add nsw i32 %0, %i.bn
  %i.bp = mul nsw i32 %i.bo, 6
  %i.bq = shl i32 %i.bl, %i.bp
  %i.br = or i32 %i.bq, %.01922                   ; 2 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %.loopexit, label %scalar.ph, !llvm.loop !52

.loopexit.loopexit36:                             ; preds = %.lr.ph
  %i.bs = load i8, ptr %1, align 1, !tbaa !13
  %i.bt = and i8 %i.bs, 31
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 6
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.by = and i8 %i.bx, 63
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bv, %i.bz
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %.loopexit.loopexit73, %.loopexit.loopexit71, %middle.block, %.loopexit.loopexit36, %.preheader, %bb.b
  %.020 = phi i32 [ %i.bh, %bb.b ], [ 0, %.preheader ], [ %i.bf, %.loopexit.loopexit73 ], [ %i.ca, %.loopexit.loopexit36 ], [ %i.ak, %.loopexit.loopexit71 ], [ %i.v, %middle.block ], [ %i.br, %scalar.ph ]
  ret i32 %.020
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -1, 5) i32 @c11__u32_to_u8(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %0 to i8
  store i8 %i.b, ptr %1, align 1, !tbaa !13
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %0, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  store i8 %i.f, ptr %1, align 1, !tbaa !13
  %i.g = trunc i32 %0 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !13
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ult i32 %0, 65536
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = lshr i32 %0, 12
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = or disjoint i8 %i.m, -32
  store i8 %i.n, ptr %1, align 1, !tbaa !13
  %i.o = lshr i32 %0, 6
  %i.p = trunc i32 %i.o to i8
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !13
  %i.t = trunc i32 %0 to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !13
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.x = icmp ult i32 %0, 1114112
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = lshr i32 %0, 6
  %i.z = lshr i32 %0, 12
  %i.aa = lshr i32 %0, 18
  %i.ab = trunc i32 %0 to i8
  %i.ac = trunc i32 %i.y to i8
  %i.ad = trunc i32 %i.z to i8
  %i.ae = trunc nuw nsw i32 %i.aa to i8
  %i.af = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  %i.ag = insertelement <4 x i8> %i.af, i8 %i.ad, i64 1
  %i.ah = insertelement <4 x i8> %i.ag, i8 %i.ac, i64 2
  %i.ai = insertelement <4 x i8> %i.ah, i8 %i.ab, i64 3
  %i.aj = and <4 x i8> %i.ai, <i8 -1, i8 63, i8 63, i8 63>
  %i.ak = or disjoint <4 x i8> %i.aj, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ak, ptr %1, align 1, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.f, %bb.h, %bb.d, %bb.g
  %.025 = phi i32 [ -1, %bb.g ], [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.h ]
  ret i32 %.025
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @c11_strdup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.b = shl i64 %i.a, 32                         ; 2 uses
  %sext = add i64 %i.b, 4294967296
  %i.c = ashr exact i64 %sext, 32
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #25 ; 3 uses
  %i.e = ashr exact i64 %i.b, 32                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %0, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !13
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @c11_memdup(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = tail call noalias ptr @malloc(i64 noundef %i.a) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %0, i64 %i.a, i1 false)
  ret ptr %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 3) i32 @c11__parse_uint(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, i32 noundef %3) local_unnamed_addr #18 {
bb.a:
  store i64 0, ptr %2, align 8, !tbaa !59
  switch i32 %3, label %.critedge [
    i32 -1, label %bb.b
    i32 10, label %.thread
    i32 2, label %.thread188
    i32 8, label %.thread190
    i32 16, label %.thread192
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp sgt i32 %1, 1
  br i1 %.not.i, label %c11__sveq2.exit, label %.thread

c11__sveq2.exit:                                  ; preds = %bb.b
  %i.a = load i16, ptr %0, align 1
  %i.b = icmp ne i16 %i.a, 25136
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %c11__sveq2.exit172, label %c11__sveq2.exit162

c11__sveq2.exit162:                               ; preds = %c11__sveq2.exit
  %i.e = load i16, ptr %0, align 1
  %i.f = icmp ne i16 %i.e, 28464
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %c11__sveq2.exit177, label %c11__sveq2.exit167

c11__sveq2.exit167:                               ; preds = %c11__sveq2.exit162
  %i.i = load i16, ptr %0, align 1
  %i.j = icmp ne i16 %i.i, 30768
  %i.k = zext i1 %i.j to i32
  %bcmp.i166.fr = freeze i32 %i.k
  %i.l = icmp eq i32 %bcmp.i166.fr, 0
  br i1 %i.l, label %c11__sveq2.exit182, label %.lr.ph.preheader

.thread:                                          ; preds = %bb.b, %bb.a
  %i.m = icmp eq i32 %1, 0
  br i1 %i.m, label %.critedge, label %.preheader237

.preheader237:                                    ; preds = %.thread
  %.not143239 = icmp sgt i32 %1, 0
  br i1 %.not143239, label %.lr.ph.preheader, label %.critedge144

.lr.ph.preheader:                                 ; preds = %c11__sveq2.exit167, %.preheader237
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.n = phi i64 [ 0, %.lr.ph.preheader ], [ %i.r, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13    ; 2 uses
  %i.q = add i8 %i.p, -48
  %or.cond = icmp ult i8 %i.q, 10
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %4 = mul nsw i64 %i.n, 10
  %5 = and i8 %i.p, 15
  %6 = zext nneg i8 %5 to i64
  %i.r = add nsw i64 %4, %6                       ; 2 uses
  store i64 %i.r, ptr %2, align 8, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge144, label %.lr.ph, !llvm.loop !54

.critedge144:                                     ; preds = %bb.c, %.preheader237
  %i.s = icmp sgt i32 %1, 19
  %.145 = select i1 %i.s, i32 2, i32 0
  br label %.critedge

.thread188:                                       ; preds = %bb.a
  %.not.i168 = icmp sgt i32 %1, 1
  br i1 %.not.i168, label %c11__sveq2.exit172, label %.thread199

c11__sveq2.exit172:                               ; preds = %c11__sveq2.exit, %.thread188
  %i.t = load i16, ptr %0, align 1
  %i.u = icmp ne i16 %i.t, 25136
  %i.v = zext i1 %i.u to i32
  %bcmp.i171.fr = freeze i32 %i.v
  %i.w = icmp eq i32 %bcmp.i171.fr, 0             ; 2 uses
  %i.x = add nsw i32 %1, -2
  %spec.select.idx = select i1 %i.w, i64 2, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 2 uses
  br i1 %i.w, label %.thread199, label %.lr.ph249.preheader

.thread199:                                       ; preds = %c11__sveq2.exit172, %.thread188
  %i.y = phi ptr [ %0, %.thread188 ], [ %spec.select, %c11__sveq2.exit172 ]
  %i.z = phi i32 [ %1, %.thread188 ], [ %i.x, %c11__sveq2.exit172 ] ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.critedge, label %.preheader

.preheader:                                       ; preds = %.thread199
  %.not142247 = icmp sgt i32 %i.z, 0
  br i1 %.not142247, label %.lr.ph249.preheader, label %.critedge

.lr.ph249.preheader:                              ; preds = %c11__sveq2.exit172, %.preheader
  %i.ab = phi ptr [ %i.y, %.preheader ], [ %spec.select, %c11__sveq2.exit172 ]
  %i.ac = phi i32 [ %i.z, %.preheader ], [ %1, %c11__sveq2.exit172 ] ; 2 uses
  %wide.trip.count267 = zext nneg i32 %i.ac to i64
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %bb.d
  %i.ad = phi i64 [ 0, %.lr.ph249.preheader ], [ %i.ah, %bb.d ]
  %indvars.iv264 = phi i64 [ 0, %.lr.ph249.preheader ], [ %indvars.iv.next265, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv264
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13  ; 2 uses
  %i.ag = and i8 %i.af, -2
  %or.cond12 = icmp eq i8 %i.ag, 48
  br i1 %or.cond12, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph249
  %7 = shl i64 %i.ad, 1
  %8 = and i8 %i.af, 1
  %9 = zext nneg i8 %8 to i64
  %i.ah = or disjoint i64 %7, %9                  ; 2 uses
  store i64 %i.ah, ptr %2, align 8, !tbaa !59
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %.critedge148.loopexit, label %.lr.ph249, !llvm.loop !55

.critedge148.loopexit:                            ; preds = %bb.d
  %i.ai = icmp sgt i32 %i.ac, 63
  %i.aj = select i1 %i.ai, i32 2, i32 0
  br label %.critedge

.thread190:                                       ; preds = %bb.a
  %.not.i173 = icmp sgt i32 %1, 1
  br i1 %.not.i173, label %c11__sveq2.exit177, label %.thread209

c11__sveq2.exit177:                               ; preds = %c11__sveq2.exit162, %.thread190
  %i.ak = load i16, ptr %0, align 1
  %i.al = icmp ne i16 %i.ak, 28464
  %i.am = zext i1 %i.al to i32
  %bcmp.i176.fr = freeze i32 %i.am
  %i.an = icmp eq i32 %bcmp.i176.fr, 0            ; 2 uses
  %i.ao = add nsw i32 %1, -2
  %spec.select229.idx = select i1 %i.an, i64 2, i64 0
  %spec.select229 = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select229.idx ; 2 uses
  br i1 %i.an, label %.thread209, label %.lr.ph246.preheader

.thread209:                                       ; preds = %c11__sveq2.exit177, %.thread190
  %i.ap = phi ptr [ %0, %.thread190 ], [ %spec.select229, %c11__sveq2.exit177 ]
  %i.aq = phi i32 [ %1, %.thread190 ], [ %i.ao, %c11__sveq2.exit177 ] ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.critedge, label %.preheader233

.preheader233:                                    ; preds = %.thread209
  %.not141244 = icmp sgt i32 %i.aq, 0
  br i1 %.not141244, label %.lr.ph246.preheader, label %.critedge

.lr.ph246.preheader:                              ; preds = %c11__sveq2.exit177, %.preheader233
  %i.as = phi ptr [ %i.ap, %.preheader233 ], [ %spec.select229, %c11__sveq2.exit177 ]
  %i.at = phi i32 [ %i.aq, %.preheader233 ], [ %1, %c11__sveq2.exit177 ] ; 2 uses
  %wide.trip.count262 = zext nneg i32 %i.at to i64
  br label %.lr.ph246

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %bb.e
  %i.au = phi i64 [ 0, %.lr.ph246.preheader ], [ %i.ay, %bb.e ]
  %indvars.iv259 = phi i64 [ 0, %.lr.ph246.preheader ], [ %indvars.iv.next260, %bb.e ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv259
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13  ; 2 uses
  %i.ax = and i8 %i.aw, -8
  %or.cond15 = icmp eq i8 %i.ax, 48
  br i1 %or.cond15, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph246
  %10 = shl i64 %i.au, 3
  %11 = and i8 %i.aw, 7
  %12 = zext nneg i8 %11 to i64
  %i.ay = or disjoint i64 %10, %12                ; 2 uses
  store i64 %i.ay, ptr %2, align 8, !tbaa !59
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %.critedge152.loopexit, label %.lr.ph246, !llvm.loop !56

.critedge152.loopexit:                            ; preds = %bb.e
  %i.az = icmp sgt i32 %i.at, 21
  %i.ba = select i1 %i.az, i32 2, i32 0
  br label %.critedge

.thread192:                                       ; preds = %bb.a
  %.not.i178 = icmp sgt i32 %1, 1
  br i1 %.not.i178, label %c11__sveq2.exit182, label %.thread220

c11__sveq2.exit182:                               ; preds = %c11__sveq2.exit167, %.thread192
  %i.bb = load i16, ptr %0, align 1
  %i.bc = icmp ne i16 %i.bb, 30768
  %i.bd = zext i1 %i.bc to i32
  %bcmp.i181.fr = freeze i32 %i.bd
  %i.be = icmp eq i32 %bcmp.i181.fr, 0            ; 2 uses
  %i.bf = add nsw i32 %1, -2
  %spec.select231.idx = select i1 %i.be, i64 2, i64 0
  %spec.select231 = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select231.idx ; 2 uses
  br i1 %i.be, label %.thread220, label %.lr.ph243.preheader

.thread220:                                       ; preds = %c11__sveq2.exit182, %.thread192
  %i.bg = phi ptr [ %0, %.thread192 ], [ %spec.select231, %c11__sveq2.exit182 ]
  %i.bh = phi i32 [ %1, %.thread192 ], [ %i.bf, %c11__sveq2.exit182 ] ; 3 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.critedge, label %.preheader235

.preheader235:                                    ; preds = %.thread220
  %.not241 = icmp sgt i32 %i.bh, 0
  br i1 %.not241, label %.lr.ph243.preheader, label %.critedge

.lr.ph243.preheader:                              ; preds = %c11__sveq2.exit182, %.preheader235
  %i.bj = phi ptr [ %i.bg, %.preheader235 ], [ %spec.select231, %c11__sveq2.exit182 ]
  %i.bk = phi i32 [ %i.bh, %.preheader235 ], [ %1, %c11__sveq2.exit182 ] ; 2 uses
  %wide.trip.count257 = zext nneg i32 %i.bk to i64
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.h
  %i.bl = phi i64 [ 0, %.lr.ph243.preheader ], [ %i.bu, %bb.h ]
  %indvars.iv254 = phi i64 [ 0, %.lr.ph243.preheader ], [ %indvars.iv.next255, %bb.h ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv254
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13  ; 4 uses
  %i.bo = sext i8 %i.bn to i64
  %i.bp = add i8 %i.bn, -48
  %or.cond18 = icmp ult i8 %i.bp, 10
  br i1 %or.cond18, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph243
  %i.bq = add i8 %i.bn, -97
  %or.cond21 = icmp ult i8 %i.bq, 6
  br i1 %or.cond21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = add i8 %i.bn, -65
  %or.cond24 = icmp ult i8 %i.br, 6
  br i1 %or.cond24, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph243
  %.sink286 = phi i64 [ 4294967248, %.lr.ph243 ], [ 4294967209, %bb.f ], [ 4294967241, %bb.g ]
  %i.bs = shl i64 %i.bl, 4
  %i.bt = add nsw i64 %.sink286, %i.bo
  %13 = and i64 %i.bt, 4294967295
  %i.bu = or i64 %i.bs, %13                       ; 2 uses
  store i64 %i.bu, ptr %2, align 8, !tbaa !59
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %.critedge156.loopexit, label %.lr.ph243, !llvm.loop !57

.critedge156.loopexit:                            ; preds = %bb.h
  %i.bv = icmp sgt i32 %i.bk, 16
  %i.bw = select i1 %i.bv, i32 2, i32 0
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.g, %.lr.ph246, %.lr.ph249, %.preheader235, %.critedge156.loopexit, %.preheader233, %.critedge152.loopexit, %.preheader, %.critedge148.loopexit, %bb.a, %.thread220, %.thread209, %.thread199, %.critedge144, %.thread
  %.12 = phi i32 [ %i.ba, %.critedge152.loopexit ], [ %.145, %.critedge144 ], [ 1, %.thread ], [ 1, %bb.a ], [ %i.bw, %.critedge156.loopexit ], [ 1, %.lr.ph249 ], [ 1, %.thread199 ], [ 1, %bb.g ], [ 1, %.thread220 ], [ %i.aj, %.critedge148.loopexit ], [ 1, %.thread209 ], [ 1, %.lr.ph246 ], [ 0, %.preheader ], [ 0, %.preheader233 ], [ 0, %.preheader235 ], [ 1, %.lr.ph ]
  ret i32 %.12
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @c11__search_u32_ranges(i32 noundef %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !27
  %i.b = icmp slt i32 %0, %i.a
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, -1                       ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [12 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %i.h = icmp sgt i32 %0, %i.g
  %.not33 = icmp slt i32 %2, 1
  %or.cond = or i1 %i.h, %.not33
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.02135 = phi i32 [ %.2, %bb.f ], [ %i.c, %bb.b ] ; 2 uses
  %.02234 = phi i32 [ %.224, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %i.i = add nuw nsw i32 %.02135, %.02234
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %i.o = icmp sgt i32 %0, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.p = add nuw nsw i32 %i.j, 1
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.q = load i32, ptr %i.l, align 4, !tbaa !27
  %i.r = icmp slt i32 %0, %i.q
  br i1 %i.r, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  br label %bb.f

.thread:                                          ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %.loopexit

bb.f:                                             ; preds = %bb.c, %bb.e
  %.224 = phi i32 [ %.02234, %bb.e ], [ %i.p, %bb.c ] ; 2 uses
  %.2 = phi i32 [ %i.s, %bb.e ], [ %.02135, %bb.c ] ; 2 uses
  %.not = icmp slt i32 %.2, %.224
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !3

.loopexit:                                        ; preds = %bb.f, %.thread, %bb.a, %bb.b
  %.227 = phi ptr [ null, %bb.a ], [ %i.t, %.thread ], [ null, %bb.b ], [ null, %bb.f ]
  ret ptr %.227
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define noundef zeroext i1 @c11__is_unicode_Lo_char(i32 noundef %0) local_unnamed_addr #19 {
bb.a:
  %i.a = add i32 %0, -201547
  %or.cond = icmp ult i32 %i.a, -201377
  br i1 %or.cond, label %c11__search_u32_ranges.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.02135.i = phi i32 [ %.2.i, %bb.e ], [ 500, %bb.a ] ; 2 uses
  %.02234.i = phi i32 [ %.224.i, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.b = add nuw nsw i32 %.02234.i, %.02135.i
  %i.c = lshr i32 %i.b, 1                         ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [12 x i8], ptr @kLoRanges, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %i.h = icmp sgt i32 %0, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = add nuw nsw i32 %i.c, 1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = load i32, ptr %i.e, align 4, !tbaa !27
  %i.k = icmp slt i32 %0, %i.j
  br i1 %i.k, label %bb.d, label %c11__search_u32_ranges.exit

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.c, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.224.i = phi i32 [ %.02234.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.2.i = phi i32 [ %i.l, %bb.d ], [ %.02135.i, %bb.b ] ; 2 uses
  %.not.i = icmp slt i32 %.2.i, %.224.i
  br i1 %.not.i, label %c11__search_u32_ranges.exit, label %.lr.ph.i, !llvm.loop !3

c11__search_u32_ranges.exit:                      ; preds = %bb.c, %bb.e, %bb.a
  %.227.i = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.e ]
  ret i1 %.227.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #21

attributes #0 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { cold }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = distinct !{!3, !14}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"any pointer", !8, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"c11_vector", !17, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!21 = !{!20, !9, i64 8}
!22 = !{!20, !9, i64 12}
!23 = !{!20, !17, i64 0}
!24 = !{!"p1 omnipotent char", !17, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"", !9, i64 0, !9, i64 4, !8, i64 8}
!27 = !{!26, !9, i64 0}
end_hunk_0
