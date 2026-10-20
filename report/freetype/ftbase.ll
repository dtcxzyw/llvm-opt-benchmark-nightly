Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@FT_Get_Color_Glyph_Paint:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !561  ; 2 uses
  %.not15 = icmp eq ptr %i.i, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call zeroext i8 %i.i(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i8 [ %i.j, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i8 @FT_Get_Color_Glyph_ClipBox(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %i.e = and i64 %i.d, 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !562  ; 2 uses
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call zeroext i8 %i.i(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i8 [ %i.j, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i8 @FT_Get_Paint_Layers(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74
  %i.f = and i64 %i.e, 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !563  ; 2 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call zeroext i8 %i.j(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i8 [ %i.k, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i8 @FT_Get_Paint(ptr noundef %0, ptr %1, i8 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %i.e = and i64 %i.d, 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !564  ; 2 uses
  %.not13 = icmp eq ptr %i.i, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call zeroext i8 %i.i(ptr noundef nonnull %0, ptr %1, i8 %2, ptr noundef nonnull %3) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i8 [ %i.j, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i8 @FT_Get_Colorline_Stops(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74
  %i.f = and i64 %i.e, 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !565  ; 2 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call zeroext i8 %i.j(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i8 [ %i.k, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define i32 @FT_Outline_Decompose(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Vector_, align 16        ; 9 uses
  %4 = alloca %struct.FT_Vector_, align 16        ; 11 uses
  %5 = alloca %struct.FT_Vector_, align 16        ; 4 uses
  %6 = alloca %struct.FT_Vector_, align 16        ; 8 uses
  %7 = alloca %struct.FT_Vector_, align 16        ; 7 uses
  %8 = alloca %struct.FT_Vector_, align 16        ; 7 uses
  %9 = alloca %struct.FT_Vector_, align 16        ; 7 uses
  %10 = alloca %struct.FT_Vector_, align 16       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not156 = icmp eq ptr %1, null
  br i1 %.not156, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load i16, ptr %0, align 8, !tbaa !146
  %.not222 = icmp eq i16 %i.a, 0
  br i1 %.not222, label %.loopexit, label %.lr.ph213

.lr.ph213:                                        ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !569
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !570
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = zext nneg i32 %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.n = shufflevector <2 x i64> %i.m, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.o = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.p = shufflevector <2 x i64> %i.o, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i16, ptr %0, align 8, !tbaa !146
  %i.r = zext i16 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.e, label %.loopexit, !llvm.loop !566

bb.e:                                             ; preds = %.lr.ph213, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph213 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.0125211 = phi i32 [ -1, %.lr.ph213 ], [ %i.w, %bb.d ] ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !145
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !75   ; 2 uses
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %.not157 = icmp slt i32 %.0125211, %i.w
  br i1 %.not157, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %11 = add nsw i32 %.0125211, 1
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %i.y = zext i16 %i.v to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y ; 4 uses
  %i.aa = zext nneg i32 %11 to i64                ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aa ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !244
  %i.ac = load <2 x i64>, ptr %4, align 16, !tbaa !69
  %i.ad = shl <2 x i64> %i.ac, %i.n
  %i.ae = sub nsw <2 x i64> %i.ad, %i.p           ; 2 uses
  store <2 x i64> %i.ae, ptr %4, align 16, !tbaa !69
  %i.af = load <2 x i64>, ptr %i.z, align 8, !tbaa !69
  %i.ag = shl <2 x i64> %i.af, %i.n
  %i.ah = sub nsw <2 x i64> %i.ag, %i.p           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !244
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !144 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !105
  %i.al = and i8 %i.ak, 3
  switch i8 %i.al, label %bb.k [
    i8 2, label %.loopexit
    i8 0, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.y
  %i.an = load i8, ptr %i.am, align 1, !tbaa !105
  %i.ao = and i8 %i.an, 3
  %i.ap = icmp eq i8 %i.ao, 1
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds i8, ptr %i.z, i64 -16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ar = add nsw <2 x i64> %i.ah, %i.ae
  %i.as = sdiv <2 x i64> %i.ar, splat (i64 2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0135 = phi ptr [ %i.aq, %bb.h ], [ %i.z, %bb.i ]
  %i.at = phi <2 x i64> [ %i.ah, %bb.h ], [ %i.as, %bb.i ]
  store <2 x i64> %i.at, ptr %4, align 16, !tbaa !69
  %i.au = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %i.av = getelementptr inbounds i8, ptr %i.aj, i64 -1
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j
  %.0137 = phi ptr [ %i.au, %bb.j ], [ %i.ab, %bb.f ] ; 2 uses
  %.1136 = phi ptr [ %.0135, %bb.j ], [ %i.z, %bb.f ] ; 6 uses
  %.0131 = phi ptr [ %i.av, %bb.j ], [ %i.aj, %bb.f ]
  %i.aw = load ptr, ptr %1, align 8, !tbaa !571
  %i.ax = call i32 %i.aw(ptr noundef nonnull %4, ptr noundef %2) #30 ; 2 uses
  %.not158 = icmp eq i32 %i.ax, 0
  br i1 %.not158, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.k
  %i.ay = icmp ult ptr %.0137, %.1136
  br i1 %i.ay, label %.lr.ph208, label %._crit_edge209

.lr.ph208:                                        ; preds = %.preheader, %.backedge
  %.1132207 = phi ptr [ %.1132.be, %.backedge ], [ %.0131, %.preheader ] ; 3 uses
  %.1138206 = phi ptr [ %.1138.be, %.backedge ], [ %.0137, %.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1138206, i64 16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.1132207, i64 1 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !105
  %i.bc = and i8 %i.bb, 3
  switch i8 %i.bc, label %bb.p [
    i8 1, label %bb.l
    i8 0, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph208
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bd = load <2 x i64>, ptr %i.az, align 8, !tbaa !69
  %i.be = shl <2 x i64> %i.bd, %i.n
  %i.bf = sub nsw <2 x i64> %i.be, %i.p
  store <2 x i64> %i.bf, ptr %5, align 16, !tbaa !69
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !572
  %i.bh = call i32 %i.bg(ptr noundef nonnull %5, ptr noundef %2) #30 ; 2 uses
  %.not162.a = icmp eq i32 %i.bh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.not162.a, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.s, %bb.l, %select.unfold
  %.1138.be = phi ptr [ %i.bn, %select.unfold ], [ %i.az, %bb.l ], [ %i.cj, %bb.s ] ; 2 uses
  %.1132.be = phi ptr [ %i.bo, %select.unfold ], [ %i.ba, %bb.l ], [ %i.cq, %bb.s ]
  %i.bi = icmp ult ptr %.1138.be, %.1136
  br i1 %i.bi, label %.lr.ph208, label %._crit_edge209

bb.m:                                             ; preds = %.lr.ph208
  %i.bj = load <2 x i64>, ptr %i.az, align 8, !tbaa !69
  %i.bk = shl <2 x i64> %i.bj, %i.n
  %i.bl = sub nsw <2 x i64> %i.bk, %i.p
  store <2 x i64> %i.bl, ptr %3, align 16, !tbaa !69
  %i.bm = icmp ult ptr %i.az, %.1136
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m, %.critedge
  %.2133204 = phi ptr [ %i.bo, %.critedge ], [ %i.ba, %bb.m ]
  %.2139203 = phi ptr [ %i.bn, %.critedge ], [ %i.az, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bn = getelementptr inbounds nuw i8, ptr %.2139203, i64 16 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.2133204, i64 1 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !105
  %i.bq = and i8 %i.bp, 3
  %i.br = load <2 x i64>, ptr %i.bn, align 8, !tbaa !69
  %i.bs = shl <2 x i64> %i.br, %i.n
  %i.bt = sub nsw <2 x i64> %i.bs, %i.p           ; 2 uses
  store <2 x i64> %i.bt, ptr %6, align 16, !tbaa !69
  switch i8 %i.bq, label %.thread173 [
    i8 1, label %bb.n
    i8 0, label %bb.o
  ]

.thread173:                                       ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !573
  %i.bv = call i32 %i.bu(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef %2) #30 ; 2 uses
  %.not161 = icmp eq i32 %i.bv, 0
  br i1 %.not161, label %select.unfold, label %.thread, !llvm.loop !567

bb.o:                                             ; preds = %.lr.ph
  %i.bw = load <2 x i64>, ptr %3, align 16, !tbaa !69
  %i.bx = add nsw <2 x i64> %i.bw, %i.bt
  %i.by = sdiv <2 x i64> %i.bx, splat (i64 2)
  store <2 x i64> %i.by, ptr %7, align 16, !tbaa !69
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !573
  %i.ca = call i32 %i.bz(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %2) #30 ; 2 uses
  %.not160 = icmp eq i32 %i.ca, 0
  br i1 %.not160, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !244
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cb = icmp ult ptr %i.bn, %.1136
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

.thread:                                          ; preds = %bb.n, %bb.o
  %.2129.ph = phi i32 [ %i.ca, %bb.o ], [ %i.bv, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.loopexit

select.unfold:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.backedge

._crit_edge:                                      ; preds = %bb.m, %.critedge
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !573
  %i.cd = call i32 %i.cc(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %2) #30
  br label %bb.t

bb.p:                                             ; preds = %.lr.ph208
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.ce = getelementptr inbounds nuw i8, ptr %.1138206, i64 32 ; 2 uses
  %i.cf = icmp ugt ptr %i.ce, %.1136
  br i1 %i.cf, label %.thread178, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %.1132207, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !105
  %i.ci = and i8 %i.ch, 3
  %.not163.a = icmp eq i8 %i.ci, 2
  br i1 %.not163.a, label %bb.r, label %.thread178

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %.1138206, i64 48 ; 3 uses
  %i.ck = load <2 x i64>, ptr %i.az, align 8, !tbaa !69
  %i.cl = shl <2 x i64> %i.ck, %i.n
  %i.cm = sub nsw <2 x i64> %i.cl, %i.p
  store <2 x i64> %i.cm, ptr %8, align 16, !tbaa !69
  %i.cn = load <2 x i64>, ptr %i.ce, align 8, !tbaa !69
  %i.co = shl <2 x i64> %i.cn, %i.n
  %i.cp = sub nsw <2 x i64> %i.co, %i.p
  store <2 x i64> %i.cp, ptr %9, align 16, !tbaa !69
  %.not164.a = icmp ugt ptr %i.cj, %.1136
  br i1 %.not164.a, label %.thread183, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %.1132207, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.cr = load <2 x i64>, ptr %i.cj, align 8, !tbaa !69
  %i.cs = shl <2 x i64> %i.cr, %i.n
  %i.ct = sub nsw <2 x i64> %i.cs, %i.p
  store <2 x i64> %i.ct, ptr %10, align 16, !tbaa !69
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !574
  %i.cv = call i32 %i.cu(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %2) #30 ; 2 uses
  %.not165.a = icmp eq i32 %i.cv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
end_hunk_0
begin_hunk_1_@FT_Outline_EmboldenXY:bb.a
  %i.es = mul i64 %.021.i128, %.022.i129
  %i.et = lshr i64 %.0.i127, 1
  %i.eu = add i64 %i.et, %i.es
  %i.ev = udiv i64 %i.eu, %.0.i127
  br label %FT_MulDiv.exit133

FT_MulDiv.exit133:                                ; preds = %bb.w, %bb.x
  %i.ew = phi i64 [ %i.ev, %bb.x ], [ 2147483647, %bb.w ] ; 2 uses
  %i.ex = xor i64 %.sroa.0.0, %.0102
  %i.ey = icmp slt i64 %i.ex, 0
  %i.ez = sub i64 0, %i.ew
  %i.fa = select i1 %i.ey, i64 %i.ez, i64 %i.ew
  br label %bb.y

bb.y:                                             ; preds = %FT_MulDiv.exit133, %FT_MulDiv.exit
  %.sroa.0.1 = phi i64 [ %i.er, %FT_MulDiv.exit ], [ %i.fa, %FT_MulDiv.exit133 ] ; 2 uses
  %i.fb = mul i64 %.0102, %i.q                    ; 2 uses
  %i.fc = ashr i64 %i.fb, 63
  %i.fd = add i64 %i.fb, 32768
  %i.fe = add i64 %i.fd, %i.fc
  %i.ff = ashr i64 %i.fe, 16
  %.not121 = icmp sgt i64 %i.ff, %i.ej
  br i1 %.not121, label %bb.z, label %FT_MulDiv.exit141

FT_MulDiv.exit141:                                ; preds = %bb.y
  %.022.i137 = tail call i64 @llvm.abs.i64(i64 %i.dk, i1 false)
  %i.fg = mul i64 %.022.i137, %.021.i136
  %i.fh = lshr i64 %i.di, 1
  %i.fi = add i64 %i.fh, %i.fg
  %i.fj = udiv i64 %i.fi, %i.di                   ; 2 uses
  %i.fk = icmp slt i64 %.sroa.11.0, 0
  %i.fl = xor i1 %i.r, %i.fk
  %i.fm = sub nsw i64 0, %i.fj
  %i.fn = select i1 %i.fl, i64 %i.fm, i64 %i.fj
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not.i142 = icmp eq i64 %.0102, 0
  br i1 %.not.i142, label %FT_MulDiv.exit149, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.0.i143 = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 true) ; 2 uses
  %.021.i144 = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.022.i145 = tail call i64 @llvm.abs.i64(i64 %i.dk, i1 false)
  %i.fo = mul i64 %.021.i144, %.022.i145
  %i.fp = lshr i64 %.0.i143, 1
  %i.fq = add i64 %i.fp, %i.fo
  %i.fr = udiv i64 %i.fq, %.0.i143
  br label %FT_MulDiv.exit149

FT_MulDiv.exit149:                                ; preds = %bb.z, %bb.aa
  %i.fs = phi i64 [ %i.fr, %bb.aa ], [ 2147483647, %bb.z ] ; 2 uses
  %i.ft = xor i64 %.sroa.11.0, %.0102
  %i.fu = icmp slt i64 %i.ft, 0
  %i.fv = sub i64 0, %i.fs
  %i.fw = select i1 %i.fu, i64 %i.fv, i64 %i.fs
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %FT_MulDiv.exit141, %FT_MulDiv.exit149
  %.sroa.11.1 = phi i64 [ %i.fn, %FT_MulDiv.exit141 ], [ %i.fw, %FT_MulDiv.exit149 ], [ 0, %bb.u ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %FT_MulDiv.exit141 ], [ %.sroa.0.1, %FT_MulDiv.exit149 ], [ 0, %bb.u ]
  %.not122166 = icmp eq i32 %.098177, %.097178
  br i1 %.not122166, label %FT_Vector_NormLen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.fx = insertelement <2 x i64> poison, i64 %.sroa.0.2, i64 0
  %i.fy = insertelement <2 x i64> %i.fx, i64 %.sroa.11.1, i64 1
  %i.fz = add nsw <2 x i64> %i.fy, %i.c
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ac
  %.199167 = phi i32 [ %.098177, %.lr.ph ], [ %i.gg, %bb.ac ] ; 3 uses
  %i.ga = sext i32 %.199167 to i64
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ga ; 2 uses
  %i.gc = load <2 x i64>, ptr %i.gb, align 8, !tbaa !69
  %i.gd = add nsw <2 x i64> %i.fz, %i.gc
  store <2 x i64> %i.gd, ptr %i.gb, align 8, !tbaa !69
  %i.ge = icmp slt i32 %.199167, %i.v
  %i.gf = add nsw i32 %.199167, 1
  %i.gg = select i1 %i.ge, i32 %i.gf, i32 %i.s    ; 2 uses
  %.not122 = icmp eq i32 %i.gg, %.097178
  br i1 %.not122, label %FT_Vector_NormLen.exit.thread, label %bb.ac, !llvm.loop !586

FT_Vector_NormLen.exit.thread:                    ; preds = %bb.ac, %bb.ab, %bb.h, %bb.r, %FT_Vector_NormLen.exit
  %.sroa.8.1 = phi i64 [ %.sroa.8.0168, %FT_Vector_NormLen.exit ], [ %.sroa.8.0168, %bb.h ], [ %.sroa.11.0160, %bb.r ], [ %.sroa.11.0160, %bb.ab ], [ %.sroa.11.0160, %bb.ac ]
  %.sroa.056.1 = phi i64 [ %.sroa.056.0169, %FT_Vector_NormLen.exit ], [ %.sroa.056.0169, %bb.h ], [ %.sroa.0.0158, %bb.r ], [ %.sroa.0.0158, %bb.ab ], [ %.sroa.0.0158, %bb.ac ]
  %.sroa.5.3 = phi i64 [ %.sroa.5.0170, %FT_Vector_NormLen.exit ], [ %.sroa.5.0170, %bb.h ], [ %.sroa.5.0170, %bb.r ], [ %.sroa.5.1, %bb.ab ], [ %.sroa.5.1, %bb.ac ]
  %.sroa.052.3 = phi i64 [ %.sroa.052.0172, %FT_Vector_NormLen.exit ], [ %.sroa.052.0172, %bb.h ], [ %.sroa.052.0172, %bb.r ], [ %.sroa.052.1, %bb.ab ], [ %.sroa.052.1, %bb.ac ]
  %.1109 = phi i64 [ %.0108174, %FT_Vector_NormLen.exit ], [ %.0108174, %bb.h ], [ %.0107, %bb.r ], [ %.0107, %bb.ab ], [ %.0107, %bb.ac ]
  %.3106 = phi i64 [ %.0103175, %FT_Vector_NormLen.exit ], [ %.0103175, %bb.h ], [ %.0103175, %bb.r ], [ %.1104, %bb.ab ], [ %.1104, %bb.ac ]
  %.3101 = phi i32 [ %.098177, %FT_Vector_NormLen.exit ], [ %.098177, %bb.h ], [ %.097178, %bb.r ], [ %.097178, %bb.ab ], [ %.097178, %bb.ac ] ; 3 uses
  %.3 = phi i32 [ %.0179, %FT_Vector_NormLen.exit ], [ %.0179, %bb.h ], [ %.0179, %bb.r ], [ %.1, %bb.ab ], [ %.1, %bb.ac ] ; 2 uses
  %i.gh = icmp slt i32 %.097178, %i.v
  %i.gi = add nsw i32 %.097178, 1
  %i.gj = select i1 %i.gh, i32 %i.gi, i32 %i.s    ; 2 uses
  %i.gk = icmp ne i32 %i.gj, %.3101
  %i.gl = icmp ne i32 %.3101, %.3
  %i.gm = and i1 %i.gk, %i.gl
  br i1 %i.gm, label %.lr.ph181, label %._crit_edge, !llvm.loop !587

._crit_edge:                                      ; preds = %FT_Vector_NormLen.exit.thread, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !588

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.d, %bb.b, %bb.a
  %.0112 = phi i32 [ 20, %bb.a ], [ %., %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %._crit_edge ]
  ret i32 %.0112
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 3) i32 @FT_Outline_Get_Orientation(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %FT_Outline_Get_CBox.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !143  ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %FT_Outline_Get_CBox.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142  ; 9 uses
  %i.f = zext i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not.i = icmp eq i16 %i.b, 1
  br i1 %.not.i, label %FT_Outline_Get_CBox.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !176  ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !173  ; 2 uses
  %.051.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.057.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.051.i, %.lr.ph.preheader.i ] ; 3 uses
  %.pn56.i = phi ptr [ %.057.i, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %.03455.i = phi i64 [ %.1.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.03554.i = phi i64 [ %.136.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.03853.i = phi i64 [ %.139.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.04152.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %i.k = load i64, ptr %.057.i, align 8, !tbaa !173 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %.04152.i) ; 4 uses
  %.136.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 %.03554.i) ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn56.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !176  ; 2 uses
  %.139.i = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.03853.i) ; 4 uses
  %.1.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %.03455.i) ; 4 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.057.i, i64 16 ; 2 uses
  %i.n = icmp ult ptr %.0.i, %i.g
  br i1 %i.n, label %.lr.ph.i, label %FT_Outline_Get_CBox.exit, !llvm.loop !4

FT_Outline_Get_CBox.exit:                         ; preds = %.lr.ph.i
  %i.o = icmp eq i64 %spec.select.i, %.136.i
  %i.p = icmp eq i64 %.139.i, %.1.i
  %or.cond58 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond58, label %FT_Outline_Get_CBox.exit.thread, label %bb.d

bb.d:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.q = icmp slt i64 %spec.select.i, -16777216
  %i.r = icmp slt i64 %.139.i, -16777216
  %or.cond = or i1 %i.q, %i.r
  %i.s = icmp sgt i64 %.136.i, 16777216
  %or.cond5 = or i1 %i.s, %or.cond
  %i.t = icmp sgt i64 %.1.i, 16777216
  %or.cond8 = or i1 %i.t, %or.cond5
  br i1 %or.cond8, label %FT_Outline_Get_CBox.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i16, ptr %0, align 8, !tbaa !146    ; 2 uses
  %.not72 = icmp eq i16 %i.u, 0
  br i1 %.not72, label %.thread, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.e
  %i.v = sub nsw i64 %.1.i, %.139.i
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = sub nsw i32 17, %i.x
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %i.aa = tail call i64 @llvm.abs.i64(i64 %.136.i, i1 true)
  %i.ab = tail call i64 @llvm.abs.i64(i64 %spec.select.i, i1 true)
  %i.ac = or i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 true)
  %i.af = sub nsw i32 17, %i.ae
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !145
  %i.aj = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ak = zext nneg i32 %i.z to i64               ; 4 uses
  %wide.trip.count77 = zext i16 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph69, %._crit_edge
  %indvars.iv74 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next75, %._crit_edge ] ; 2 uses
  %.067 = phi i64 [ 0, %.lr.ph69 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.04366 = phi i32 [ -1, %.lr.ph69 ], [ %i.an, %._crit_edge ] ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv74
  %i.am = load i16, ptr %i.al, align 2, !tbaa !75 ; 3 uses
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %.not53.not60 = icmp slt i32 %.04366, %i.an
  br i1 %.not53.not60, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ao = zext i16 %i.am to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !176
  %i.as = ashr i64 %i.ar, %i.ak                   ; 2 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !173
  %i.au = ashr i64 %i.at, %i.aj                   ; 2 uses
  %i.av = sext i32 %.04366 to i64                 ; 4 uses
  %wide.trip.count.a = zext i16 %i.am to i64      ; 3 uses
  %i.aw = sub nsw i64 %wide.trip.count.a, %i.av
  %xtraiter = and i64 %i.aw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next.prol = add nsw i64 %i.av, 1    ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.e, i64 %indvars.iv.next.prol ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !173
  %i.az = ashr i64 %i.ay, %i.aj                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !176
  %i.bc = ashr i64 %i.bb, %i.ak                   ; 2 uses
  %i.bd = sub nsw i64 %i.bc, %i.as
  %i.be = add nsw i64 %i.az, %i.au
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = add i64 %i.bf, %.067
  %i.bh = freeze i64 %i.bg                        ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.bh, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %i.av, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.164.unr = phi i64 [ %.067, %.lr.ph.preheader ], [ %i.bh, %.lr.ph.prol ]
  %.sroa.023.062.unr = phi i64 [ %i.au, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %.sroa.524.061.unr = phi i64 [ %i.as, %.lr.ph.preheader ], [ %i.bc, %.lr.ph.prol ]
  %i.bi = add nsw i64 %wide.trip.count.a, -1
  %i.bj = icmp eq i64 %i.bi, %i.av
  br i1 %i.bj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.164 = phi i64 [ %i.cd, %.lr.ph ], [ %.164.unr, %.lr.ph.prol.loopexit ]
  %.sroa.023.062 = phi i64 [ %i.bw, %.lr.ph ], [ %.sroa.023.062.unr, %.lr.ph.prol.loopexit ]
  %.sroa.524.061 = phi i64 [ %i.bz, %.lr.ph ], [ %.sroa.524.061.unr, %.lr.ph.prol.loopexit ]
  %i.bk = getelementptr [16 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %1 = getelementptr i8, ptr %i.bk, i64 16
  %i.bl = load i64, ptr %1, align 8, !tbaa !173
  %i.bm = ashr i64 %i.bl, %i.aj                   ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bk, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !176
  %i.bp = ashr i64 %i.bo, %i.ak                   ; 2 uses
  %i.bq = sub nsw i64 %i.bp, %.sroa.524.061
  %i.br = add nsw i64 %i.bm, %.sroa.023.062
  %i.bs = mul i64 %i.bq, %i.br
  %i.bt = add i64 %i.bs, %.164
  %i.bu = freeze i64 %i.bt
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %2 = getelementptr inbounds [16 x i8], ptr %i.e, i64 %indvars.iv.next.1 ; 2 uses
  %i.bv = load i64, ptr %2, align 8, !tbaa !173
  %i.bw = ashr i64 %i.bv, %i.aj                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !176
  %i.bz = ashr i64 %i.by, %i.ak                   ; 2 uses
  %i.ca = sub nsw i64 %i.bz, %i.bp
  %i.cb = add nsw i64 %i.bw, %i.bm
  %i.cc = mul i64 %i.ca, %i.cb
  %.fr = freeze i64 %i.cc
  %i.cd = add i64 %.fr, %i.bu                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.a
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !589

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.1.lcssa = phi i64 [ %.067, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cd, %.lr.ph ] ; 3 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge70, label %bb.f, !llvm.loop !590

._crit_edge70:                                    ; preds = %._crit_edge
  %i.ce = icmp sgt i64 %.1.lcssa, 0
  br i1 %i.ce, label %FT_Outline_Get_CBox.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge70
  %.not59 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not59, label %.thread, label %FT_Outline_Get_CBox.exit.thread

.thread:                                          ; preds = %bb.e, %bb.g
  br label %FT_Outline_Get_CBox.exit.thread

FT_Outline_Get_CBox.exit.thread:                  ; preds = %.thread, %bb.g, %bb.c, %._crit_edge70, %bb.d, %FT_Outline_Get_CBox.exit, %bb.a, %bb.b
  %.046 = phi i32 [ 1, %._crit_edge70 ], [ 0, %bb.a ], [ 2, %FT_Outline_Get_CBox.exit ], [ 2, %bb.d ], [ 2, %bb.c ], [ 0, %bb.b ], [ 2, %.thread ], [ 0, %bb.g ]
  ret i32 %.046
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @FT_Vector_NormLen(ptr nofree noundef captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !173
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !176
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = icmp slt i32 %i.b, 0                     ; 2 uses
  %.088 = tail call i32 @llvm.abs.i32(i32 %i.b, i1 false) ; 6 uses
  %.084 = select i1 %i.f, i64 -65536, i64 65536
  %i.g = icmp slt i32 %i.e, 0                     ; 2 uses
  %.086 = tail call i32 @llvm.abs.i32(i32 %i.e, i1 false) ; 6 uses
  %.0 = select i1 %i.g, i64 -65536, i64 65536
  %i.h = icmp eq i32 %i.b, 0
  %.not102 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not102, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %.0, ptr %i.c, align 8, !tbaa !176
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  br i1 %.not102, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %.084, ptr %0, align 8, !tbaa !173
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.i = icmp ugt i32 %.088, %.086
  %i.j = lshr i32 %.086, 1
  %i.k = add nuw i32 %i.j, %.088
  %i.l = lshr i32 %.088, 1
  %i.m = add nuw i32 %.086, %i.l
  %i.n = select i1 %i.i, i32 %i.k, i32 %i.m       ; 3 uses
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.n, i1 true) ; 2 uses
  %i.p = zext i32 %i.n to i64
  %i.q = zext nneg i32 %i.o to i64
  %i.r = lshr i64 2863311530, %i.q
  %.not = icmp samesign ugt i64 %i.r, %i.p
  %.neg = select i1 %.not, i32 -15, i32 -16
  %i.s = add nsw i32 %.neg, %i.o                  ; 7 uses
  %i.t = icmp sgt i32 %i.s, 0                     ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = shl i32 %.088, %i.s                      ; 4 uses
  %i.v = shl i32 %.086, %i.s                      ; 4 uses
  %i.w = icmp ugt i32 %i.u, %i.v
  %i.x = lshr i32 %i.v, 1
  %i.y = add i32 %i.x, %i.u
  %i.z = lshr i32 %i.u, 1
  %i.aa = add i32 %i.z, %i.v
  %i.ab = select i1 %i.w, i32 %i.y, i32 %i.aa
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = sub nsw i32 0, %i.s                     ; 3 uses
  %i.ad = lshr i32 %.088, %i.ac
  %i.ae = lshr i32 %.086, %i.ac
  %i.af = lshr i32 %i.n, %i.ac
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.189 = phi i32 [ %i.u, %bb.g ], [ %i.ad, %bb.h ] ; 3 uses
  %.187 = phi i32 [ %i.v, %bb.g ], [ %i.ae, %bb.h ] ; 3 uses
  %.085 = phi i32 [ %i.ab, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = sub nsw i32 65536, %.085
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.090 = phi i32 [ %i.ag, %bb.i ], [ %i.av, %bb.j ] ; 4 uses
  %i.ah = mul nsw i32 %.090, %.189
  %i.ai = ashr i32 %i.ah, 16
  %i.aj = add nsw i32 %i.ai, %.189                ; 4 uses
  %i.ak = mul nsw i32 %.090, %.187
  %i.al = ashr i32 %i.ak, 16
  %i.am = add nsw i32 %i.al, %.187                ; 4 uses
  %i.an = mul i32 %i.aj, %i.aj
  %i.ao = mul i32 %i.am, %i.am
  %i.ap = add i32 %i.an, %i.ao
  %i.aq = sdiv i32 %i.ap, -512
  %i.ar = add nsw i32 %.090, 65536
  %i.as = ashr i32 %i.ar, 8
  %i.at = mul nsw i32 %i.aq, %i.as                ; 2 uses
  %i.au = lshr i32 %i.at, 16
  %i.av = add nsw i32 %i.au, %.090
  %i.aw = icmp sgt i32 %i.at, 65535
  br i1 %i.aw, label %bb.j, label %bb.k, !llvm.loop !21

bb.k:                                             ; preds = %bb.j
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = select i1 %i.f, i64 %i.ay, i64 %i.ax
  store i64 %i.az, ptr %0, align 8, !tbaa !173
  %i.ba = zext i32 %i.am to i64                   ; 2 uses
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = select i1 %i.g, i64 %i.bb, i64 %i.ba
  store i64 %i.bc, ptr %i.c, align 8, !tbaa !176
  %i.bd = mul i32 %i.aj, %.189
  %i.be = mul i32 %i.am, %.187
  %i.bf = add i32 %i.bd, %i.be
  %i.bg = sdiv i32 %i.bf, 65536
  %i.bh = add nsw i32 %i.bg, 65536                ; 2 uses
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = add nsw i32 %i.s, -1
  %i.bj = shl nuw nsw i32 1, %i.bi
  %i.bk = add nuw nsw i32 %i.bh, %i.bj
  %i.bl = lshr i32 %i.bk, %i.s
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bm = sub nsw i32 0, %i.s
  %i.bn = shl i32 %i.bh, %i.bm
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.b, %bb.c, %bb.e
  %.091 = phi i32 [ 0, %bb.b ], [ %.088, %bb.e ], [ %.086, %bb.c ], [ %i.bl, %bb.l ], [ %i.bn, %bb.m ]
  ret i32 %.091
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define hidden range(i32 0, 13) i32 @ps_property_set(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 19 uses
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(21) @.str.11) #31
  %.not = icmp eq i32 %i.b, 0
  %.1117.sroa.gep166 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.1117.sroa.gep168 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.1117.sroa.gep171 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.1117.sroa.gep174 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.1117.sroa.gep177 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.1117.sroa.gep180 = getelementptr inbounds nuw i8, ptr %2, i64 24
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %.not127 = icmp eq i8 %3, 0
  br i1 %.not127, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.1117.sroa.gep160 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.pre = load i32, ptr %2, align 4, !tbaa !119
  %.pre181 = load i32, ptr %.1117.sroa.gep166, align 4, !tbaa !119
  %.pre182 = load i32, ptr %.1117.sroa.gep168, align 4, !tbaa !119
  %.pre183 = load i32, ptr %.1117.sroa.gep171, align 4, !tbaa !119
  %.pre184 = load i32, ptr %.1117.sroa.gep174, align 4, !tbaa !119
  %.pre185 = load i32, ptr %.1117.sroa.gep177, align 4, !tbaa !119
  %.pre186 = load i32, ptr %.1117.sroa.gep180, align 4, !tbaa !119
  %.pre187 = load i32, ptr %.1117.sroa.gep160, align 4, !tbaa !119
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = call i64 @strtol(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.d = trunc i64 %i.c to i32
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !125  ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !105
  %.not128 = icmp ne i8 %i.f, 44
  %i.g = icmp eq ptr %2, %i.e
  %or.cond137 = or i1 %.not128, %i.g
  br i1 %or.cond137, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.i = call i64 @strtol(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.j = trunc i64 %i.i to i32
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !125  ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !105
  %.not128.1 = icmp ne i8 %i.l, 44
  %i.m = icmp eq ptr %i.h, %i.k
  %or.cond137.1 = or i1 %.not128.1, %i.m
end_hunk_1
