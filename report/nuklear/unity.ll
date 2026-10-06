Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_draw_vertex_element:bb.a

.preheader.split.us132.preheader:                 ; preds = %.preheader
  %i.q = tail call fastcc ptr @nk_memcopy(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 4) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, i64 noundef 4) ; 0 uses
  br label %.loopexit

.preheader.split.us128.preheader:                 ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #50
  %i.u = load float, ptr %1, align 4, !tbaa !54   ; 2 uses
  %.inv.us = fcmp ole float %i.u, 0.000000e+00
  %spec.select101102.us = select i1 %.inv.us, float 0.000000e+00, float %i.u
  %spec.select101.us = fptoui float %spec.select101102.us to i32
  store i32 %spec.select101.us, ptr %i.f, align 4, !tbaa !55
  %i.v = call fastcc ptr @nk_memcopy(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef 4) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #50
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !54 ; 2 uses
  %.inv.us.1 = fcmp ole float %i.y, 0.000000e+00
  %spec.select101102.us.1 = select i1 %.inv.us.1, float 0.000000e+00, float %i.y
  %spec.select101.us.1 = fptoui float %spec.select101102.us.1 to i32
  store i32 %spec.select101.us.1, ptr %i.f, align 4, !tbaa !55
  %i.z = call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.w, ptr noundef nonnull %i.f, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  br label %.loopexit

.preheader.split.us124.preheader:                 ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  %i.aa = load float, ptr %1, align 4, !tbaa !54  ; 3 uses
  %i.ab = fcmp olt float %i.aa, 0.000000e+00
  %i.ac = fcmp olt float %i.aa, 6.553500e+04
  %spec.select96103.us = select i1 %i.ac, float %i.aa, float 6.553500e+04
  %spec.select96.us = fptoui float %spec.select96103.us to i16
  %i.ad = select i1 %i.ab, i16 0, i16 %spec.select96.us
  store i16 %i.ad, ptr %i.e, align 2, !tbaa !106
  %i.ae = call fastcc ptr @nk_memcopy(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef 2) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !54 ; 3 uses
  %i.ai = fcmp olt float %i.ah, 0.000000e+00
  %i.aj = fcmp olt float %i.ah, 6.553500e+04
  %spec.select96103.us.1 = select i1 %i.aj, float %i.ah, float 6.553500e+04
  %spec.select96.us.1 = fptoui float %spec.select96103.us.1 to i16
  %i.ak = select i1 %i.ai, i16 0, i16 %spec.select96.us.1
  store i16 %i.ak, ptr %i.e, align 2, !tbaa !106
  %i.al = call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.af, ptr noundef nonnull %i.e, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  br label %.loopexit

.preheader.split.us120.preheader:                 ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.am = load float, ptr %1, align 4, !tbaa !54  ; 2 uses
  %.inv105.us = fcmp ole float %i.am, 0.000000e+00
  %spec.select100104.us = select i1 %.inv105.us, float 0.000000e+00, float %i.am
  %spec.select100.us = fptoui float %spec.select100104.us to i8
  store i8 %spec.select100.us, ptr %i.d, align 1, !tbaa !56
  %i.an = call fastcc ptr @nk_memcopy(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !54 ; 2 uses
  %.inv105.us.1 = fcmp ole float %i.aq, 0.000000e+00
  %spec.select100104.us.1 = select i1 %.inv105.us.1, float 0.000000e+00, float %i.aq
  %spec.select100.us.1 = fptoui float %spec.select100104.us.1 to i8
  store i8 %spec.select100.us.1, ptr %i.d, align 1, !tbaa !56
  %i.ar = call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  br label %.loopexit

.preheader.split.us116.preheader:                 ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  %i.as = load float, ptr %1, align 4, !tbaa !54  ; 2 uses
  %.inv107.us = fcmp ole float %i.as, f0xCF000000
  %spec.select99106.us = select i1 %.inv107.us, float f0xCF000000, float %i.as
  %spec.select99.us = fptosi float %spec.select99106.us to i32
  store i32 %spec.select99.us, ptr %i.c, align 4, !tbaa !55
  %i.at = call fastcc ptr @nk_memcopy(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 4) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !54 ; 2 uses
  %.inv107.us.1 = fcmp ole float %i.aw, f0xCF000000
  %spec.select99106.us.1 = select i1 %.inv107.us.1, float f0xCF000000, float %i.aw
  %spec.select99.us.1 = fptosi float %spec.select99106.us.1 to i32
  store i32 %spec.select99.us.1, ptr %i.c, align 4, !tbaa !55
  %i.ax = call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.au, ptr noundef nonnull %i.c, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br label %.loopexit

.preheader.split.us112.preheader:                 ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.ay = load float, ptr %1, align 4, !tbaa !54  ; 3 uses
  %i.az = fcmp olt float %i.ay, -3.276700e+04
  %i.ba = fcmp olt float %i.ay, 3.276700e+04
  %spec.select90108.us = select i1 %i.ba, float %i.ay, float 3.276700e+04
  %spec.select90.us = fptosi float %spec.select90108.us to i16
  %i.bb = select i1 %i.az, i16 -32767, i16 %spec.select90.us
  store i16 %i.bb, ptr %i.b, align 2, !tbaa !106
  %i.bc = call fastcc ptr @nk_memcopy(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !54 ; 3 uses
  %i.bg = fcmp olt float %i.bf, -3.276700e+04
  %i.bh = fcmp olt float %i.bf, 3.276700e+04
  %spec.select90108.us.1 = select i1 %i.bh, float %i.bf, float 3.276700e+04
  %spec.select90.us.1 = fptosi float %spec.select90108.us.1 to i16
  %i.bi = select i1 %i.bg, i16 -32767, i16 %spec.select90.us.1
  store i16 %i.bi, ptr %i.b, align 2, !tbaa !106
  %i.bj = call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.b, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  br label %.loopexit

.preheader.split.us.preheader:                    ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.bk = load float, ptr %1, align 4, !tbaa !54  ; 3 uses
  %i.bl = fcmp olt float %i.bk, -1.270000e+02
  %i.bm = fcmp olt float %i.bk, 1.270000e+02
  %spec.select88109.us = select i1 %i.bm, float %i.bk, float 1.270000e+02
  %spec.select88.us = fptosi float %spec.select88109.us to i8
  %i.bn = select i1 %i.bl, i8 -127, i8 %spec.select88.us
  store i8 %i.bn, ptr %i.a, align 1, !tbaa !56
  %i.bo = call fastcc ptr @nk_memcopy(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !54 ; 3 uses
  %i.bs = fcmp olt float %i.br, -1.270000e+02
  %i.bt = fcmp olt float %i.br, 1.270000e+02
  %spec.select88109.us.1 = select i1 %i.bt, float %i.br, float 1.270000e+02
  %spec.select88.us.1 = fptosi float %spec.select88109.us.1 to i8
  %i.bu = select i1 %i.bs, i8 -127, i8 %spec.select88.us.1
  store i8 %i.bu, ptr %i.a, align 1, !tbaa !56
  %i.bv = call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.split.us136.preheader, %.preheader.split.us132.preheader, %.preheader.split.us128.preheader, %.preheader.split.us124.preheader, %.preheader.split.us120.preheader, %.preheader.split.us116.preheader, %.preheader.split.us112.preheader, %.preheader.split.us.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbtt__run_charstring(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull %2) unnamed_addr #19 {
bb.a:
  %i.a = alloca [48 x float], align 16            ; 47 uses
  %3 = alloca [10 x %struct.stbtt__buf], align 16 ; 4 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.073.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !60
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %i.d, i64 %i.f, i32 noundef %1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 3 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !60
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.i, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  %i.l = lshr i64 %i.i, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %stbtt__buf_get8.exit.lr.ph, label %.critedge

stbtt__buf_get8.exit.lr.ph:                       ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.3.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 12 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 30 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 12 uses
  %.phi.trans.insert.i309 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 18 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %.sroa.gep.sroa.gep433 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.gep436.sroa.gep439 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep436.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %stbtt__buf_get8.exit

stbtt__buf_get8.exit:                             ; preds = %stbtt__buf_get8.exit.lr.ph, %.thread
  %i.ao = phi i32 [ %i.m, %stbtt__buf_get8.exit.lr.ph ], [ %i.wb, %.thread ] ; 9 uses
  %i.ap = phi i32 [ %i.k, %stbtt__buf_get8.exit.lr.ph ], [ %i.wa, %.thread ] ; 6 uses
  %.0234374 = phi i32 [ 1, %stbtt__buf_get8.exit.lr.ph ], [ %.1235348, %.thread ] ; 22 uses
  %.0237373 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2239347, %.thread ] ; 26 uses
  %.0240372 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.1241346, %.thread ] ; 28 uses
  %.sroa.073.0371 = phi ptr [ %.sroa.073.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.073.3345, %.thread ] ; 27 uses
  %.sroa.5.0370 = phi i64 [ %.sroa.5.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.5.3344, %.thread ] ; 27 uses
  %.0246369 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2248343, %.thread ] ; 26 uses
  %.0253366 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %i.vz, %.thread ] ; 45 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !325   ; 6 uses
  %i.ar = add nsw i32 %i.ap, 1                    ; 7 uses
  store i32 %i.ar, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !323
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !56  ; 6 uses
  switch i8 %i.au, label %bb.eq [
    i8 19, label %bb.b
    i8 20, label %bb.b
    i8 1, label %bb.e
    i8 3, label %bb.e
    i8 18, label %bb.e
    i8 23, label %bb.e
    i8 21, label %bb.f
    i8 4, label %bb.h
    i8 22, label %bb.j
    i8 5, label %bb.l
    i8 7, label %bb.z
    i8 6, label %bb.aa
    i8 31, label %bb.bf
    i8 30, label %bb.bg
    i8 8, label %bb.bp
    i8 24, label %bb.bq
    i8 25, label %bb.cf
    i8 26, label %bb.cu
    i8 27, label %bb.cu
    i8 10, label %bb.cw
    i8 29, label %bb.dh
    i8 11, label %bb.dq
    i8 14, label %bb.ds
    i8 12, label %bb.eh
  ]

bb.b:                                             ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %.not274 = icmp eq i32 %.0234374, 0
  br i1 %.not274, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = sdiv i32 %.0253366, 2
  %i.aw = add nsw i32 %.0237373, %i.av
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1238 = phi i32 [ %i.aw, %bb.c ], [ %.0237373, %bb.b ] ; 2 uses
  %i.ax = add nsw i32 %.1238, 7
  %i.ay = sdiv i32 %i.ax, 8
  %i.az = add nsw i32 %i.ay, %i.ar                ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  %i.bb = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %i.ao)
  %..i.i = select i1 %i.ba, i32 %i.ao, i32 %i.bb
  store i32 %..i.i, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !323
  br label %.thread

bb.e:                                             ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.bc = sdiv i32 %.0253366, 2
  %i.bd = add nsw i32 %.0237373, %i.bc
  br label %.thread

bb.f:                                             ; preds = %stbtt__buf_get8.exit
  %i.be = icmp slt i32 %.0253366, 2
  br i1 %i.be, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = zext nneg i32 %.0253366 to i64
  %i.bg = getelementptr [4 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !54
  %i.bj = getelementptr i8, ptr %i.bg, i64 -4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %i.bi, float noundef %i.bk)
  br label %.thread

bb.h:                                             ; preds = %stbtt__buf_get8.exit
  %i.bl = icmp slt i32 %.0253366, 1
  br i1 %i.bl, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = zext nneg i32 %.0253366 to i64
  %i.bn = getelementptr [4 x i8], ptr %i.a, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.bp)
  br label %.thread

bb.j:                                             ; preds = %stbtt__buf_get8.exit
  %i.bq = icmp slt i32 %.0253366, 1
  br i1 %i.bq, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = zext nneg i32 %.0253366 to i64
  %i.bs = getelementptr [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %i.bu, float noundef 0.000000e+00)
  br label %.thread

bb.l:                                             ; preds = %stbtt__buf_get8.exit
  %i.bv = icmp slt i32 %.0253366, 2
  br i1 %i.bv, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.l
  %i.bw = zext nneg i32 %.0253366 to i64
  %5 = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %.pre452 = load i32, ptr %2, align 8, !tbaa !659
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %stbtt__csctx_rline_to.exit
  %6 = phi i32 [ %.pre452, %.preheader.preheader ], [ %10, %stbtt__csctx_rline_to.exit ] ; 2 uses
  %indvars.iv429 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next430, %stbtt__csctx_rline_to.exit ] ; 2 uses
  %7 = phi <2 x float> [ %5, %.preheader.preheader ], [ %11, %stbtt__csctx_rline_to.exit ]
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv429
  %i.bx = load <2 x float>, ptr %8, align 8, !tbaa !54
  %i.by = fadd <2 x float> %i.bx, %7              ; 3 uses
  store <2 x float> %i.by, ptr %i.ag, align 8, !tbaa !54
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>   ; 3 uses
  %.not.i.i = icmp eq i32 %6, 0
  br i1 %.not.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.ca = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.cb = extractelement <2 x i32> %i.bz, i64 0   ; 4 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %i.cb, ptr %i.ai, align 4, !tbaa !660
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ce = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.cf = extractelement <2 x i32> %i.bz, i64 1   ; 4 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not20.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.cf, ptr %i.ak, align 4, !tbaa !662
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ci = load i32, ptr %i.al, align 8, !tbaa !663
  %i.cj = icmp sgt i32 %i.ci, %i.cb
  br i1 %i.cj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not21.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.cb, ptr %i.al, align 8, !tbaa !663
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cl = load i32, ptr %i.am, align 8, !tbaa !664
  %i.cm = icmp sgt i32 %i.cl, %i.cf
  br i1 %i.cm, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not22.i.i.i, label %bb.x, label %stbtt__track_vertex.exit.i.i

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.cf, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i

stbtt__track_vertex.exit.i.i:                     ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit

bb.y:                                             ; preds = %.preheader
  %i.co = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.cp = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [14 x i8], ptr %i.co, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i8 2, ptr %i.cs, align 2, !tbaa !273
  %i.ct = trunc <2 x i32> %i.bz to <2 x i16>
  store <2 x i16> %i.ct, ptr %i.cr, align 2, !tbaa !106
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i64 0, ptr %i.cu, align 2
  %9 = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %.pre451 = load i32, ptr %2, align 8, !tbaa !659
  br label %stbtt__csctx_rline_to.exit

stbtt__csctx_rline_to.exit:                       ; preds = %stbtt__track_vertex.exit.i.i, %bb.y
  %10 = phi i32 [ %6, %stbtt__track_vertex.exit.i.i ], [ %.pre451, %bb.y ]
  %i.cv = phi i32 [ %.pre.i, %stbtt__track_vertex.exit.i.i ], [ %i.cp, %bb.y ]
  %11 = phi <2 x float> [ %i.by, %stbtt__track_vertex.exit.i.i ], [ %9, %bb.y ]
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 2 ; 2 uses
  %i.cx = or disjoint i64 %indvars.iv.next430, 1
  %i.cy = icmp samesign ult i64 %i.cx, %i.bw
  br i1 %i.cy, label %.preheader, label %.thread, !llvm.loop !1228

bb.z:                                             ; preds = %stbtt__buf_get8.exit
  %i.cz = icmp slt i32 %.0253366, 1
  br i1 %i.cz, label %.critedge, label %bb.aq

bb.aa:                                            ; preds = %stbtt__buf_get8.exit
  %i.da = icmp slt i32 %.0253366, 1
  br i1 %i.da, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %stbtt__csctx_rline_to.exit293
  %.1250 = phi i32 [ %i.fm, %stbtt__csctx_rline_to.exit293 ], [ 0, %bb.aa ] ; 3 uses
  %.not273 = icmp slt i32 %.1250, %.0253366
  br i1 %.not273, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.db = sext i32 %.1250 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !54
  %i.de = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %i.df = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dd, i64 0
  %i.dg = fadd <2 x float> %i.de, %i.df           ; 2 uses
  store <2 x float> %i.dg, ptr %i.ag, align 8, !tbaa !54
  %i.dh = fptosi <2 x float> %i.dg to <2 x i32>   ; 3 uses
  %i.di = load i32, ptr %2, align 8, !tbaa !659
  %.not.i.i276 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i276, label %bb.ap, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.dk = extractelement <2 x i32> %i.dh, i64 0   ; 4 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i277 = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i277, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i32 %i.dk, ptr %i.ai, align 4, !tbaa !660
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dn = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.do = extractelement <2 x i32> %i.dh, i64 1   ; 4 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i278 = icmp eq i32 %i.dq, 0
  br i1 %.not20.i.i.i278, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i32 %i.do, ptr %i.ak, align 4, !tbaa !662
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dr = load i32, ptr %i.al, align 8, !tbaa !663
  %i.ds = icmp sgt i32 %i.dr, %i.dk
  br i1 %i.ds, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i279 = icmp eq i32 %i.dt, 0
  br i1 %.not21.i.i.i279, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i32 %i.dk, ptr %i.al, align 8, !tbaa !663
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.du = load i32, ptr %i.am, align 8, !tbaa !664
  %i.dv = icmp sgt i32 %i.du, %i.do
  br i1 %i.dv, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dw = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i280 = icmp eq i32 %i.dw, 0
  br i1 %.not22.i.i.i280, label %bb.ao, label %stbtt__track_vertex.exit.i.i281

bb.ao:                                            ; preds = %bb.an, %bb.am
  store i32 %i.do, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i281

stbtt__track_vertex.exit.i.i281:                  ; preds = %bb.ao, %bb.an
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i283 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit284

bb.ap:                                            ; preds = %bb.ac
  %i.dx = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.dy = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [14 x i8], ptr %i.dx, i64 %i.dz ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i8 2, ptr %i.eb, align 2, !tbaa !273
  %i.ec = trunc <2 x i32> %i.dh to <2 x i16>
  store <2 x i16> %i.ec, ptr %i.ea, align 2, !tbaa !106
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i64 0, ptr %i.ed, align 2
  br label %stbtt__csctx_rline_to.exit284

stbtt__csctx_rline_to.exit284:                    ; preds = %stbtt__track_vertex.exit.i.i281, %bb.ap
  %i.ee = phi i32 [ %.pre.i283, %stbtt__track_vertex.exit.i.i281 ], [ %i.dy, %bb.ap ]
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  %i.eg = add nsw i32 %.1250, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.z, %stbtt__csctx_rline_to.exit284
  %.2251 = phi i32 [ 0, %bb.z ], [ %i.eg, %stbtt__csctx_rline_to.exit284 ] ; 3 uses
  %.not272 = icmp slt i32 %.2251, %.0253366
  br i1 %.not272, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.eh = sext i32 %.2251 to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !54
  %i.ek = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %i.el = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ej, i64 1
  %i.em = fadd <2 x float> %i.ek, %i.el           ; 2 uses
  store <2 x float> %i.em, ptr %i.ag, align 8, !tbaa !54
  %i.en = fptosi <2 x float> %i.em to <2 x i32>   ; 3 uses
  %i.eo = load i32, ptr %2, align 8, !tbaa !659
  %.not.i.i285 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i285, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ep = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.eq = extractelement <2 x i32> %i.en, i64 0   ; 4 uses
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.es = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i286 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.i286, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  store i32 %i.eq, ptr %i.ai, align 4, !tbaa !660
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.et = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.eu = extractelement <2 x i32> %i.en, i64 1   ; 4 uses
  %i.ev = icmp slt i32 %i.et, %i.eu
  br i1 %i.ev, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ew = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i287 = icmp eq i32 %i.ew, 0
  br i1 %.not20.i.i.i287, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 %i.eu, ptr %i.ak, align 4, !tbaa !662
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ex = load i32, ptr %i.al, align 8, !tbaa !663
  %i.ey = icmp sgt i32 %i.ex, %i.eq
  br i1 %i.ey, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ez = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i288 = icmp eq i32 %i.ez, 0
  br i1 %.not21.i.i.i288, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i32 %i.eq, ptr %i.al, align 8, !tbaa !663
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fa = load i32, ptr %i.am, align 8, !tbaa !664
  %i.fb = icmp sgt i32 %i.fa, %i.eu
  br i1 %i.fb, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fc = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i289 = icmp eq i32 %i.fc, 0
  br i1 %.not22.i.i.i289, label %bb.bd, label %stbtt__track_vertex.exit.i.i290

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  store i32 %i.eu, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i290

stbtt__track_vertex.exit.i.i290:                  ; preds = %bb.bd, %bb.bc
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i292 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit293

bb.be:                                            ; preds = %bb.ar
  %i.fd = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.fe = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
end_hunk_0
begin_hunk_1_@stbtt__run_charstring:bb.a
  %i.ge = phi float [ %i.gd, %bb.bj ], [ 0.000000e+00, %bb.bi ]
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.fs, float noundef %i.fu, float noundef %i.fw, float noundef %i.fz, float noundef %i.ge)
  %i.gf = add nsw i32 %.3252, 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bf, %bb.bk
  %.4 = phi i32 [ 0, %bb.bf ], [ %i.gf, %bb.bk ]  ; 4 uses
  %i.gg = add nsw i32 %.4, 3                      ; 2 uses
  %.not270 = icmp slt i32 %i.gg, %.0253366
  br i1 %.not270, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.gh = sext i32 %.4 to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gh ; 4 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !54
  %i.gk = getelementptr i8, ptr %i.gi, i64 4
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !54
  %i.gm = getelementptr i8, ptr %i.gi, i64 8
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !54
  %i.go = sub nsw i32 %.0253366, %.4
  %i.gp = icmp eq i32 %i.go, 5
  br i1 %i.gp, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gq = getelementptr i8, ptr %i.gi, i64 16
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !54
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.gs = phi float [ %i.gr, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  %i.gt = sext i32 %i.gg to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.gj, float noundef 0.000000e+00, float noundef %i.gl, float noundef %i.gn, float noundef %i.gs, float noundef %i.gv)
  %i.gw = add nsw i32 %.4, 4
  br label %bb.bh

bb.bp:                                            ; preds = %stbtt__buf_get8.exit
  %i.gx = icmp slt i32 %.0253366, 6
  br i1 %i.gx, label %.critedge, label %.preheader349.preheader

.preheader349.preheader:                          ; preds = %bb.bp
  %i.gy = zext nneg i32 %.0253366 to i64
  br label %.preheader349

.preheader349:                                    ; preds = %.preheader349.preheader, %.preheader349
  %indvars.iv426 = phi i64 [ 0, %.preheader349.preheader ], [ %indvars.iv.next427, %.preheader349 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv426 ; 6 uses
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !54
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !54
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.he = load float, ptr %i.hd, align 8, !tbaa !54
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !54
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !54
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 20
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.ha, float noundef %i.hc, float noundef %i.he, float noundef %i.hg, float noundef %i.hi, float noundef %i.hk)
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 6
  %i.hl = add nuw nsw i64 %indvars.iv426, 11
  %i.hm = icmp samesign ult i64 %i.hl, %i.gy
  br i1 %i.hm, label %.preheader349, label %.thread, !llvm.loop !1229

bb.bq:                                            ; preds = %stbtt__buf_get8.exit
  %i.hn = icmp slt i32 %.0253366, 8
  br i1 %i.hn, label %.critedge, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %bb.bq
  %i.ho = add nsw i32 %.0253366, -2
  %i.hp = zext nneg i32 %i.ho to i64
  br label %.lr.ph360

.lr.ph360:                                        ; preds = %.lr.ph360.preheader, %.lr.ph360
  %indvars.iv423 = phi i64 [ 0, %.lr.ph360.preheader ], [ %indvars.iv.next424, %.lr.ph360 ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv423 ; 6 uses
  %i.hr = load float, ptr %i.hq, align 8, !tbaa !54
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !54
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hv = load float, ptr %i.hu, align 8, !tbaa !54
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !54
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hz = load float, ptr %i.hy, align 8, !tbaa !54
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.hr, float noundef %i.ht, float noundef %i.hv, float noundef %i.hx, float noundef %i.hz, float noundef %i.ib)
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 6 ; 3 uses
  %i.ic = add nuw nsw i64 %indvars.iv423, 11
  %i.id = icmp samesign ult i64 %i.ic, %i.hp
  br i1 %i.id, label %.lr.ph360, label %._crit_edge361, !llvm.loop !1230

._crit_edge361:                                   ; preds = %.lr.ph360
  %i.ie = trunc nuw nsw i64 %indvars.iv.next424 to i32
  %i.if = or disjoint i32 %i.ie, 1
  %.not269 = icmp slt i32 %i.if, %.0253366
  br i1 %.not269, label %bb.br, label %.critedge

bb.br:                                            ; preds = %._crit_edge361
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next424
  %i.ih = load <2 x float>, ptr %i.ig, align 4, !tbaa !54
  %i.ii = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %i.ij = fadd <2 x float> %i.ih, %i.ii           ; 2 uses
  store <2 x float> %i.ij, ptr %i.ag, align 8, !tbaa !54
  %i.ik = fptosi <2 x float> %i.ij to <2 x i32>   ; 3 uses
  %i.il = load i32, ptr %2, align 8, !tbaa !659
  %.not.i.i294 = icmp eq i32 %i.il, 0
  br i1 %.not.i.i294, label %bb.ce, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.im = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.in = extractelement <2 x i32> %i.ik, i64 0   ; 4 uses
  %i.io = icmp slt i32 %i.im, %i.in
  br i1 %i.io, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ip = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i295 = icmp eq i32 %i.ip, 0
  br i1 %.not.i.i.i295, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i32 %i.in, ptr %i.ai, align 4, !tbaa !660
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.iq = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.ir = extractelement <2 x i32> %i.ik, i64 1   ; 4 uses
  %i.is = icmp slt i32 %i.iq, %i.ir
  br i1 %i.is, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.it = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i296 = icmp eq i32 %i.it, 0
  br i1 %.not20.i.i.i296, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  store i32 %i.ir, ptr %i.ak, align 4, !tbaa !662
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.iu = load i32, ptr %i.al, align 8, !tbaa !663
  %i.iv = icmp sgt i32 %i.iu, %i.in
  br i1 %i.iv, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iw = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i297 = icmp eq i32 %i.iw, 0
  br i1 %.not21.i.i.i297, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store i32 %i.in, ptr %i.al, align 8, !tbaa !663
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ix = load i32, ptr %i.am, align 8, !tbaa !664
  %i.iy = icmp sgt i32 %i.ix, %i.ir
  br i1 %i.iy, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.iz = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i298 = icmp eq i32 %i.iz, 0
  br i1 %.not22.i.i.i298, label %bb.cd, label %stbtt__track_vertex.exit.i.i299

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store i32 %i.ir, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i299

stbtt__track_vertex.exit.i.i299:                  ; preds = %bb.cd, %bb.cc
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i301 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit302

bb.ce:                                            ; preds = %bb.br
  %i.ja = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.jb = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [14 x i8], ptr %i.ja, i64 %i.jc ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  store i8 2, ptr %i.je, align 2, !tbaa !273
  %i.jf = trunc <2 x i32> %i.ik to <2 x i16>
  store <2 x i16> %i.jf, ptr %i.jd, align 2, !tbaa !106
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  store i64 0, ptr %i.jg, align 2
  br label %stbtt__csctx_rline_to.exit302

stbtt__csctx_rline_to.exit302:                    ; preds = %stbtt__track_vertex.exit.i.i299, %bb.ce
  %i.jh = phi i32 [ %.pre.i301, %stbtt__track_vertex.exit.i.i299 ], [ %i.jb, %bb.ce ]
  %i.ji = add nsw i32 %i.jh, 1
  store i32 %i.ji, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %.thread

bb.cf:                                            ; preds = %stbtt__buf_get8.exit
  %i.jj = icmp slt i32 %.0253366, 8
  br i1 %i.jj, label %.critedge, label %.lr.ph357.preheader

.lr.ph357.preheader:                              ; preds = %bb.cf
  %i.jk = add nsw i32 %.0253366, -6
  %i.jl = zext nneg i32 %i.jk to i64
  %12 = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %.pre446 = load i32, ptr %2, align 8, !tbaa !659
  br label %.lr.ph357

.lr.ph357:                                        ; preds = %.lr.ph357.preheader, %stbtt__csctx_rline_to.exit311
  %13 = phi i32 [ %.pre446, %.lr.ph357.preheader ], [ %17, %stbtt__csctx_rline_to.exit311 ] ; 2 uses
  %indvars.iv420 = phi i64 [ 0, %.lr.ph357.preheader ], [ %indvars.iv.next421, %stbtt__csctx_rline_to.exit311 ] ; 2 uses
  %14 = phi <2 x float> [ %12, %.lr.ph357.preheader ], [ %18, %stbtt__csctx_rline_to.exit311 ]
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv420
  %i.jm = load <2 x float>, ptr %15, align 8, !tbaa !54
  %i.jn = fadd <2 x float> %i.jm, %14             ; 3 uses
  store <2 x float> %i.jn, ptr %i.ag, align 8, !tbaa !54
  %i.jo = fptosi <2 x float> %i.jn to <2 x i32>   ; 3 uses
  %.not.i.i303 = icmp eq i32 %13, 0
  br i1 %.not.i.i303, label %bb.cs, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph357
  %i.jp = load i32, ptr %i.ai, align 4, !tbaa !660
  %i.jq = extractelement <2 x i32> %i.jo, i64 0   ; 4 uses
  %i.jr = icmp slt i32 %i.jp, %i.jq
  br i1 %i.jr, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.js = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not.i.i.i304 = icmp eq i32 %i.js, 0
  br i1 %.not.i.i.i304, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store i32 %i.jq, ptr %i.ai, align 4, !tbaa !660
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.jt = load i32, ptr %i.ak, align 4, !tbaa !662
  %i.ju = extractelement <2 x i32> %i.jo, i64 1   ; 4 uses
  %i.jv = icmp slt i32 %i.jt, %i.ju
  br i1 %i.jv, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jw = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not20.i.i.i305 = icmp eq i32 %i.jw, 0
  br i1 %.not20.i.i.i305, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store i32 %i.ju, ptr %i.ak, align 4, !tbaa !662
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.jx = load i32, ptr %i.al, align 8, !tbaa !663
  %i.jy = icmp sgt i32 %i.jx, %i.jq
  br i1 %i.jy, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jz = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not21.i.i.i306 = icmp eq i32 %i.jz, 0
  br i1 %.not21.i.i.i306, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  store i32 %i.jq, ptr %i.al, align 8, !tbaa !663
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ka = load i32, ptr %i.am, align 8, !tbaa !664
  %i.kb = icmp sgt i32 %i.ka, %i.ju
  br i1 %i.kb, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kc = load i32, ptr %i.aj, align 4, !tbaa !661
  %.not22.i.i.i307 = icmp eq i32 %i.kc, 0
  br i1 %.not22.i.i.i307, label %bb.cr, label %stbtt__track_vertex.exit.i.i308

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  store i32 %i.ju, ptr %i.am, align 8, !tbaa !664
  br label %stbtt__track_vertex.exit.i.i308

stbtt__track_vertex.exit.i.i308:                  ; preds = %bb.cr, %bb.cq
  store i32 1, ptr %i.aj, align 4, !tbaa !661
  %.pre.i310 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  br label %stbtt__csctx_rline_to.exit311

bb.cs:                                            ; preds = %.lr.ph357
  %i.kd = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.ke = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !280 ; 2 uses
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [14 x i8], ptr %i.kd, i64 %i.kf ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  store i8 2, ptr %i.kh, align 2, !tbaa !273
  %i.ki = trunc <2 x i32> %i.jo to <2 x i16>
  store <2 x i16> %i.ki, ptr %i.kg, align 2, !tbaa !106
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store i64 0, ptr %i.kj, align 2
  %16 = load <2 x float>, ptr %i.ag, align 8, !tbaa !54
  %.pre445 = load i32, ptr %2, align 8, !tbaa !659
  br label %stbtt__csctx_rline_to.exit311

stbtt__csctx_rline_to.exit311:                    ; preds = %stbtt__track_vertex.exit.i.i308, %bb.cs
  %17 = phi i32 [ %13, %stbtt__track_vertex.exit.i.i308 ], [ %.pre445, %bb.cs ]
  %i.kk = phi i32 [ %.pre.i310, %stbtt__track_vertex.exit.i.i308 ], [ %i.ke, %bb.cs ]
  %18 = phi <2 x float> [ %i.jn, %stbtt__track_vertex.exit.i.i308 ], [ %16, %bb.cs ]
  %i.kl = add nsw i32 %i.kk, 1
  store i32 %i.kl, ptr %.phi.trans.insert.i309, align 8, !tbaa !280
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 2 ; 4 uses
  %i.km = or disjoint i64 %indvars.iv.next421, 1
  %i.kn = icmp samesign ult i64 %i.km, %i.jl
  br i1 %i.kn, label %.lr.ph357, label %._crit_edge, !llvm.loop !1231

._crit_edge:                                      ; preds = %stbtt__csctx_rline_to.exit311
  %i.ko = trunc nuw nsw i64 %indvars.iv.next421 to i32
  %i.kp = add nuw nsw i32 %i.ko, 5                ; 2 uses
  %.not268 = icmp slt i32 %i.kp, %.0253366
  br i1 %.not268, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %._crit_edge
  %i.kq = add nuw i32 %.0253366, 2147483640
  %i.kr = and i32 %i.kq, 2147483646
  %narrow = add nuw i32 %i.kr, 3
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next421 ; 4 uses
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !54
  %i.ku = zext nneg i32 %narrow to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ku
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !54
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !54
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 12
  %i.la = load float, ptr %i.kz, align 4, !tbaa !54
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !54
  %i.ld = zext nneg i32 %i.kp to i64
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.kt, float noundef %i.kw, float noundef %i.ky, float noundef %i.la, float noundef %i.lc, float noundef %i.lf)
  br label %.thread

bb.cu:                                            ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.lg = icmp slt i32 %.0253366, 4
  br i1 %i.lg, label %.critedge, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.8 = and i32 %.0253366, 1
  %i.lh = add nuw nsw i32 %.8, 3
  %i.li = icmp samesign ult i32 %i.lh, %.0253366
  br i1 %i.li, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.cv
  %.not267 = trunc i32 %.0253366 to i1            ; 6 uses
  %i.lj = load float, ptr %i.a, align 16
  %.0242 = select i1 %.not267, float %i.lj, float 0.000000e+00 ; 2 uses
  %i.lk = icmp eq i8 %i.au, 27
  %.not267.mask465 = and i32 %.0253366, 1
  %i.ll = zext nneg i32 %.not267.mask465 to i64   ; 6 uses
  %i.lm = zext nneg i32 %.0253366 to i64          ; 3 uses
  %.val466 = load float, ptr %i.o, align 4        ; 3 uses
  %.val467 = load float, ptr %i.a, align 16
  %i.ln = select i1 %.not267, float %.val466, float %.val467 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ll
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !54 ; 2 uses
  %i.lr = add nuw nsw i64 %i.ll, 7
  %i.ls = icmp samesign ult i64 %i.lr, %i.lm      ; 2 uses
  br i1 %i.lk, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.sroa.gep.sroa.gep433.val = load float, ptr %.sroa.gep.sroa.gep433, align 8 ; 2 uses
  %i.lt = select i1 %.not267, float %.sroa.gep.sroa.gep433.val, float %.val466
  %.sroa.gep.sroa.gep.val = load float, ptr %.sroa.gep.sroa.gep, align 4
  %i.lu = select i1 %.not267, float %.sroa.gep.sroa.gep.val, float %.sroa.gep.sroa.gep433.val
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %.0242, float noundef %i.ln, float noundef %i.lt, float noundef %i.lu, float noundef 0.000000e+00, float noundef %i.lq)
  br i1 %i.ls, label %.lr.ph.split.peel.next, label %.thread

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.preheader
  %indvars.iv.next.peel = add nuw nsw i64 %i.ll, 7
  %indvars.iv.next407.peel = or disjoint i64 %i.ll, 4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.sroa.gep436.sroa.gep439.val = load float, ptr %.sroa.gep436.sroa.gep439, align 8 ; 2 uses
  %i.lv = select i1 %.not267, float %.sroa.gep436.sroa.gep439.val, float %.val466
  %.sroa.gep436.sroa.gep.val = load float, ptr %.sroa.gep436.sroa.gep, align 4
  %i.lw = select i1 %.not267, float %.sroa.gep436.sroa.gep.val, float %.sroa.gep436.sroa.gep439.val
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.ln, float noundef %.0242, float noundef %i.lv, float noundef %i.lw, float noundef %i.lq, float noundef 0.000000e+00)
  br i1 %i.ls, label %.lr.ph.split.us.peel.next, label %.thread

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %indvars.iv.next413.peel = add nuw nsw i64 %i.ll, 7
  %indvars.iv.next415.peel = or disjoint i64 %i.ll, 4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us
  %indvars.iv414 = phi i64 [ %indvars.iv.next415.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next415, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv412 = phi i64 [ %indvars.iv.next413.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next413, %.lr.ph.split.us ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv414 ; 3 uses
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !54
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !54
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !54
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv412
  %i.me = load float, ptr %i.md, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %i.ly, float noundef 0.000000e+00, float noundef %i.ma, float noundef %i.mc, float noundef %i.me, float noundef 0.000000e+00)
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 4
  %i.mf = add nuw nsw i64 %indvars.iv414, 7
  %i.mg = icmp samesign ult i64 %i.mf, %i.lm
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 4
  br i1 %i.mg, label %.lr.ph.split.us, label %.thread, !llvm.loop !1232

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next407, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv406 ; 3 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !54
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !54
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !54
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !54
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.mi, float noundef %i.mk, float noundef %i.mm, float noundef 0.000000e+00, float noundef %i.mo)
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 4
  %i.mp = add nuw nsw i64 %indvars.iv406, 7
  %i.mq = icmp samesign ult i64 %i.mp, %i.lm
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.mq, label %.lr.ph.split, label %.thread, !llvm.loop !1233

bb.cw:                                            ; preds = %stbtt__buf_get8.exit
  %.not = icmp eq i32 %.0246369, 0
  br i1 %.not, label %bb.cx, label %bb.dh

bb.cx:                                            ; preds = %bb.cw
  %i.mr = load i32, ptr %i.z, align 4, !tbaa !1237 ; 13 uses
  %.not266 = icmp eq i32 %i.mr, 0
  br i1 %.not266, label %bb.dh, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8, !tbaa !60 ; 9 uses
  %i.ms = tail call i32 @llvm.smin.i32(i32 %i.mr, i32 0) ; 2 uses
  %.not.i.i312 = icmp sgt i32 %i.mr, 0
  br i1 %.not.i.i312, label %stbtt__buf_get8.exit.i, label %stbtt__buf_get8.exit.thread.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.cy
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !56
  switch i8 %i.mv, label %stbtt__cid_get_glyph_subrs.exit [
    i8 0, label %stbtt__buf_get8.exit.thread.i
    i8 3, label %.preheader.preheader.i
  ]

.preheader.preheader.i:                           ; preds = %stbtt__buf_get8.exit.i
  %.not.i.i.not.i = icmp eq i32 %i.mr, 1
  br i1 %.not.i.i.not.i, label %stbtt__buf_get8.exit.i.i, label %bb.da

stbtt__buf_get8.exit.thread.i:                    ; preds = %stbtt__buf_get8.exit.i, %bb.cy
  %.sroa.9.164.i = phi i32 [ 1, %stbtt__buf_get8.exit.i ], [ %i.ms, %bb.cy ]
  %i.mw = add nsw i32 %.sroa.9.164.i, %1          ; 2 uses
  %i.mx = icmp slt i32 %i.mw, 0
  %i.my = tail call i32 @llvm.smin.i32(i32 %i.mw, i32 %i.mr)
  %..i.i.i = select i1 %i.mx, i32 %i.mr, i32 %i.my ; 2 uses
  %.not.i25.i = icmp slt i32 %..i.i.i, %i.mr
  br i1 %.not.i25.i, label %bb.cz, label %stbtt__cid_get_glyph_subrs.exit

bb.cz:                                            ; preds = %stbtt__buf_get8.exit.thread.i
  %i.mz = sext i32 %..i.i.i to i64
  %i.na = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !56
  %i.nc = zext i8 %i.nb to i32
  br label %stbtt__cid_get_glyph_subrs.exit

bb.da:                                            ; preds = %.preheader.preheader.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 1
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !56
  %i.nf = zext i8 %i.ne to i32
  %i.ng = shl nuw nsw i32 %i.nf, 8
  br label %stbtt__buf_get8.exit.i.i

stbtt__buf_get8.exit.i.i:                         ; preds = %bb.da, %.preheader.preheader.i
  %.sroa.9.3.i = phi i32 [ 2, %bb.da ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.ng, %bb.da ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.not.i.i.1.i = icmp samesign ult i32 %.sroa.9.3.i, %i.mr
  br i1 %.not.i.i.1.i, label %bb.db, label %stbtt__buf_get8.exit.i.1.i

bb.db:                                            ; preds = %stbtt__buf_get8.exit.i.i
  %i.nh = add nuw nsw i32 %.sroa.9.3.i, 1
  %i.ni = zext nneg i32 %.sroa.9.3.i to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !56
  %i.nl = zext i8 %i.nk to i32
  %i.nm = or disjoint i32 %.0.i.i.i, %i.nl
  br label %stbtt__buf_get8.exit.i.1.i

stbtt__buf_get8.exit.i.1.i:                       ; preds = %bb.db, %stbtt__buf_get8.exit.i.i
  %.sroa.9.3.1.i = phi i32 [ %i.nh, %bb.db ], [ %.sroa.9.3.i, %stbtt__buf_get8.exit.i.i ] ; 4 uses
  %.0.i.i.1.i = phi i32 [ %i.nm, %bb.db ], [ %.0.i.i.i, %stbtt__buf_get8.exit.i.i ] ; 2 uses
  %.not.i.i31.i = icmp samesign ult i32 %.sroa.9.3.1.i, %i.mr
  br i1 %.not.i.i31.i, label %bb.dc, label %stbtt__buf_get8.exit.i32.i

bb.dc:                                            ; preds = %stbtt__buf_get8.exit.i.1.i
  %i.nn = add nuw nsw i32 %.sroa.9.3.1.i, 1
  %i.no = zext nneg i32 %.sroa.9.3.1.i to i64
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.no
end_hunk_1
