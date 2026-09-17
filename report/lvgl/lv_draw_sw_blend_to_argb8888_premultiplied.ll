Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_argb8888_premultiplied?download=true
inline.NumInlined: 59
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_draw_sw_blend_color_to_argb8888_premultiplied:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count373
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.am, !llvm.loop !46

._crit_edge.split:                                ; preds = %bb.az
  %i.jf = getelementptr inbounds nuw i8, ptr %.0334, i64 %i.go
  %i.jg = getelementptr inbounds i8, ptr %.1332, i64 %i.gp
  %i.jh = add nuw nsw i32 %.3174331, 1            ; 2 uses
  %exitcond369.not = icmp eq i32 %i.jh, %i.d
  br i1 %exitcond369.not, label %.loopexit, label %.preheader328, !llvm.loop !47

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %._crit_edge.split340, %._crit_edge.split340.us.us, %._crit_edge.split349, %._crit_edge.split349.us.us, %._crit_edge, %.thread313, %.preheader328.lr.ph, %bb.e, %.preheader326.lr.ph, %bb.p, %.preheader324.lr.ph, %bb.c, %.preheader.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lv_color_to_32(i24, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @lv_color_to_u32(i24) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @lv_color_32_32_mix_premul(i32 %0, i32 %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #3 {
bb.a:
  %.sroa.051.0.extract.trunc = trunc i32 %0 to i8
  %.sroa.658.0.extract.shift = lshr i32 %0, 8     ; 2 uses
  %.sroa.658.0.extract.trunc = trunc i32 %.sroa.658.0.extract.shift to i8
  %.sroa.766.0.extract.shift = lshr i32 %0, 16    ; 2 uses
  %.sroa.766.0.extract.trunc = trunc i32 %.sroa.766.0.extract.shift to i8
  %.sroa.874.0.extract.shift = lshr i32 %0, 24    ; 5 uses
  %.sroa.6.0.extract.shift = lshr i32 %1, 8       ; 2 uses
  %.sroa.7.0.extract.shift = lshr i32 %1, 16      ; 2 uses
  %.sroa.8.0.extract.shift = lshr i32 %1, 24      ; 4 uses
  %i.a = icmp ugt i32 %0, -50331649
  %i.b = icmp ult i32 %1, 50331648
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0.extract.trunc = trunc i32 %.sroa.7.0.extract.shift to i8
  %.sroa.6.0.extract.trunc = trunc i32 %.sroa.6.0.extract.shift to i8
  %.sroa.0.0.extract.trunc = trunc i32 %1 to i8
  %i.c = icmp ult i32 %0, 50331648
  br i1 %i.c, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %.sroa.8.0.extract.shift, 255
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @lv_color_mix32_premultiplied(i32 %0, i32 %1) #7 ; 4 uses
  %.sroa.087.0.extract.trunc = trunc i32 %i.e to i8
  %.sroa.5.0.extract.shift = lshr i32 %i.e, 8
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8
  %.sroa.788.0.extract.shift = lshr i32 %i.e, 16
  %.sroa.788.0.extract.trunc = trunc i32 %.sroa.788.0.extract.shift to i8
  %.sroa.9.0.extract.shift = lshr i32 %i.e, 24
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = zext i8 %i.h to i32
  %.not = icmp eq i32 %.sroa.8.0.extract.shift, %i.i
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !60
  %i.l = zext i8 %i.k to i32
  %.not91 = icmp eq i32 %.sroa.874.0.extract.shift, %i.l
  br i1 %.not91, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = xor i32 %.sroa.874.0.extract.shift, 255
  %i.n = xor i32 %.sroa.8.0.extract.shift, 255
  %i.o = mul nuw nsw i32 %i.n, %i.m
  %i.p = lshr i32 %i.o, 8
  %i.q = trunc nuw i32 %i.p to i8
  %i.r = xor i8 %i.q, -1                          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %i.r, ptr %i.s, align 1, !tbaa !13
  %i.t = trunc nuw nsw i32 %.sroa.874.0.extract.shift to i16
  %.lhs.trunc = mul nuw i16 %i.t, 255
  %.rhs.trunc = zext i8 %i.r to i16
  %i.u = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.v = trunc i16 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %i.v, ptr %i.w, align 1, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.8.0.insert.shift43 = and i32 %1, -16777216
  %.sroa.7.0.insert.ext35 = and i32 %.sroa.7.0.extract.shift, 255 ; 2 uses
  %.sroa.7.0.insert.shift36 = shl nuw nsw i32 %.sroa.7.0.insert.ext35, 16
  %.sroa.7.0.insert.insert38 = or disjoint i32 %.sroa.7.0.insert.shift36, %.sroa.8.0.insert.shift43
  %.sroa.6.0.insert.ext28 = and i32 %.sroa.6.0.extract.shift, 255 ; 2 uses
  %.sroa.6.0.insert.shift29 = shl nuw nsw i32 %.sroa.6.0.insert.ext28, 8
  %.sroa.6.0.insert.insert31 = or disjoint i32 %.sroa.7.0.insert.insert38, %.sroa.6.0.insert.shift29
  %.sroa.0.0.insert.ext23 = and i32 %1, 255       ; 2 uses
  %.sroa.0.0.insert.insert25 = or disjoint i32 %.sroa.6.0.insert.insert31, %.sroa.0.0.insert.ext23
  %i.x = load i32, ptr %i.f, align 1
  %i.y = tail call zeroext i1 @lv_color32_eq(i32 %.sroa.0.0.insert.insert25, i32 %i.x) #7
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %2, align 1
  %i.aa = tail call zeroext i1 @lv_color32_eq(i32 %0, i32 %i.z) #7
  br i1 %i.aa, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.087.0.copyload.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 9
  %.sroa.5.0.copyload.pre = load i8, ptr %.sroa.5.0..sroa_idx.phi.trans.insert, align 1, !tbaa !17
  %.sroa.788.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sroa.788.0.copyload.pre = load i8, ptr %.sroa.788.0..sroa_idx.phi.trans.insert, align 1, !tbaa !17
  %.sroa.9.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 11
  %.sroa.9.0.copyload.pre = load i8, ptr %.sroa.9.0..sroa_idx.phi.trans.insert, align 1, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 %0, ptr %2, align 1
  store i32 %1, ptr %i.f, align 1
  %i.ab = xor i32 %.sroa.874.0.extract.shift, 255 ; 3 uses
  %i.ac = mul nuw nsw i32 %.sroa.7.0.insert.ext35, %i.ab
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = add nuw nsw i32 %i.ad, %.sroa.766.0.extract.shift
  %i.af = trunc i32 %i.ae to i8                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !18
  %i.ai = mul nuw nsw i32 %.sroa.6.0.insert.ext28, %i.ab
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = add nuw nsw i32 %i.aj, %.sroa.658.0.extract.shift
  %i.al = trunc i32 %i.ak to i8                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.al, ptr %i.am, align 1, !tbaa !19
  %i.an = mul nuw nsw i32 %.sroa.0.0.insert.ext23, %i.ab
  %i.ao = lshr i32 %i.an, 8
  %i.ap = add nuw i32 %i.ao, %0
  %i.aq = trunc i32 %i.ap to i8                   ; 2 uses
  store i8 %i.aq, ptr %i.ag, align 1, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %i.as, ptr %i.at, align 1, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %.sroa.9.0.copyload = phi i8 [ %.sroa.9.0.copyload.pre, %._crit_edge ], [ %i.as, %bb.j ]
  %.sroa.788.0.copyload = phi i8 [ %.sroa.788.0.copyload.pre, %._crit_edge ], [ %i.af, %bb.j ]
  %.sroa.5.0.copyload = phi i8 [ %.sroa.5.0.copyload.pre, %._crit_edge ], [ %i.al, %bb.j ]
  %.sroa.087.0.copyload = phi i8 [ %.sroa.087.0.copyload.pre, %._crit_edge ], [ %i.aq, %bb.j ]
  %i.au = zext i8 %.sroa.9.0.copyload to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k, %bb.d
  %.sroa.087.0 = phi i8 [ %.sroa.087.0.copyload, %bb.k ], [ %.sroa.051.0.extract.trunc, %bb.a ], [ %.sroa.087.0.extract.trunc, %bb.d ], [ %.sroa.0.0.extract.trunc, %bb.b ]
  %.sroa.5.0 = phi i8 [ %.sroa.5.0.copyload, %bb.k ], [ %.sroa.658.0.extract.trunc, %bb.a ], [ %.sroa.5.0.extract.trunc, %bb.d ], [ %.sroa.6.0.extract.trunc, %bb.b ]
  %.sroa.788.0 = phi i8 [ %.sroa.788.0.copyload, %bb.k ], [ %.sroa.766.0.extract.trunc, %bb.a ], [ %.sroa.788.0.extract.trunc, %bb.d ], [ %.sroa.7.0.extract.trunc, %bb.b ]
  %.sroa.9.0 = phi i32 [ %i.au, %bb.k ], [ %.sroa.874.0.extract.shift, %bb.a ], [ %.sroa.9.0.extract.shift, %bb.d ], [ %.sroa.8.0.extract.shift, %bb.b ]
  %.sroa.9.0.insert.shift = shl nuw i32 %.sroa.9.0, 24
  %.sroa.788.0.insert.ext = zext i8 %.sroa.788.0 to i32
  %.sroa.788.0.insert.shift = shl nuw nsw i32 %.sroa.788.0.insert.ext, 16
  %.sroa.788.0.insert.insert = or disjoint i32 %.sroa.9.0.insert.shift, %.sroa.788.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %.sroa.5.0 to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 8
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.788.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.087.0.insert.ext = zext i8 %.sroa.087.0 to i32
  %.sroa.087.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.087.0.insert.ext
  ret i32 %.sroa.087.0.insert.insert
}

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_blend_image_to_argb8888_premultiplied(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 30 uses
  %2 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !81
  switch i32 %i.b, label %bb.dh [
    i32 16, label %bb.b
    i32 15, label %bb.be
    i32 17, label %bb.bf
    i32 26, label %bb.bg
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !25    ; 5 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !31   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @lv_memset(ptr noundef nonnull %2, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.t, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.u, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i8 -1, ptr %i.v, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 2 uses
  store i8 -1, ptr %i.w, align 1, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %.preheader420.i

.preheader420.i:                                  ; preds = %bb.b
  %i.aa = icmp sgt i32 %i.f, 0
  br i1 %i.aa, label %.preheader419.lr.ph.i, label %argb8888_image_blend.exit

.preheader419.lr.ph.i:                            ; preds = %.preheader420.i
  %i.ab = icmp sgt i32 %i.d, 0
  %i.ac = zext i8 %i.h to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.ai = sext i32 %i.s to i64
  %i.aj = zext i32 %i.k to i64
  %i.ak = zext i32 %i.o to i64
  br i1 %i.ab, label %.preheader419.preheader.i, label %argb8888_image_blend.exit

.preheader419.preheader.i:                        ; preds = %.preheader419.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %.preheader419.i

bb.c:                                             ; preds = %bb.b
  %i.al = icmp eq ptr %i.q, null                  ; 2 uses
  %i.am = zext i8 %i.h to i32                     ; 2 uses
  %i.an = icmp ugt i8 %i.h, -4                    ; 2 uses
  %or.cond.i = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond.i, label %.preheader409.i, label %bb.m

.preheader409.i:                                  ; preds = %bb.c
  %i.ao = icmp sgt i32 %i.f, 0
  br i1 %i.ao, label %.preheader.lr.ph.i, label %argb8888_image_blend.exit

.preheader.lr.ph.i:                               ; preds = %.preheader409.i
  %i.ap = icmp sgt i32 %i.d, 0
  %i.aq = zext i32 %i.k to i64
  %i.ar = zext i32 %i.o to i64
  br i1 %i.ap, label %.preheader.preheader.i, label %argb8888_image_blend.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count477.i = zext nneg i32 %i.d to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge445.i, %.preheader.preheader.i
  %.0448.i = phi ptr [ %i.bp, %._crit_edge445.i ], [ %i.i, %.preheader.preheader.i ] ; 3 uses
  %.0360447.i = phi i32 [ %i.br, %._crit_edge445.i ], [ 0, %.preheader.preheader.i ]
  %.0374446.i = phi ptr [ %i.bq, %._crit_edge445.i ], [ %i.m, %.preheader.preheader.i ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %.preheader.i
  %indvars.iv474.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next475.i, %bb.l ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0374446.i, i64 %indvars.iv474.i ; 4 uses
  %.sroa.080.0.copyload.i = load i8, ptr %i.as, align 1, !tbaa !17 ; 3 uses
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.sroa.30.0.copyload.i = load i8, ptr %.sroa.30.0..sroa_idx.i, align 1, !tbaa !17 ; 3 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %.sroa.44.0.copyload.i = load i8, ptr %.sroa.44.0..sroa_idx.i, align 1, !tbaa !17 ; 3 uses
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %.sroa.58.0.copyload.i = load i8, ptr %.sroa.58.0..sroa_idx.i, align 1, !tbaa !17 ; 4 uses
  %i.at = zext i8 %.sroa.58.0.copyload.i to i32   ; 4 uses
  %i.au = icmp ugt i8 %.sroa.58.0.copyload.i, -4
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.0448.i, i64 %indvars.iv474.i ; 4 uses
  store i8 %.sroa.080.0.copyload.i, ptr %i.av, align 1, !tbaa !17
  %.sroa.30.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %.sroa.30.0.copyload.i, ptr %.sroa.30.0..sroa_idx114.i, align 1, !tbaa !17
  %.sroa.44.0..sroa_idx158.i = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 %.sroa.44.0.copyload.i, ptr %.sroa.44.0..sroa_idx158.i, align 1, !tbaa !17
  %.sroa.58.0..sroa_idx202.i = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  store i8 -1, ptr %.sroa.58.0..sroa_idx202.i, align 1, !tbaa !17
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.aw = icmp ugt i8 %.sroa.58.0.copyload.i, 2
  br i1 %i.aw, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.0448.i, i64 %indvars.iv474.i ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !33
  %i.ba = zext i8 %.sroa.44.0.copyload.i to i32
  %.not399.i = icmp eq i8 %i.az, %.sroa.44.0.copyload.i
  br i1 %.not399.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !34
  %.not400.i = icmp eq i8 %i.bc, %.sroa.30.0.copyload.i
  br i1 %.not400.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !35
  %.not401.i = icmp eq i8 %i.bd, %.sroa.080.0.copyload.i
  br i1 %.not401.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !36
  %.not402.i = icmp eq i8 %i.bf, %.sroa.58.0.copyload.i
  br i1 %.not402.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.bg = zext i8 %.sroa.30.0.copyload.i to i32
  %i.bh = mul nuw nsw i32 %i.at, %i.bg
  %.sroa.30.0.insert.shift.i = and i32 %i.bh, 65280
  %i.bi = zext i8 %.sroa.080.0.copyload.i to i32
  %i.bj = mul nuw nsw i32 %i.at, %i.bi
  %i.bk = lshr i32 %i.bj, 8
  %.sroa.58.0.insert.shift.i = shl nuw i32 %i.at, 24
  %i.bl = shl nuw nsw i32 %i.ba, 8
  %i.bm = mul nuw nsw i32 %i.bl, %i.at
  %.sroa.44.0.insert.shift.i = and i32 %i.bm, 16711680
  %.sroa.44.0.insert.insert.i = or disjoint i32 %.sroa.44.0.insert.shift.i, %.sroa.58.0.insert.shift.i
  %.sroa.30.0.insert.insert.i = or disjoint i32 %.sroa.44.0.insert.insert.i, %.sroa.30.0.insert.shift.i
  %.sroa.080.0.insert.insert.i = or disjoint i32 %.sroa.30.0.insert.insert.i, %i.bk
  %i.bn = load i32, ptr %i.ax, align 1
  %i.bo = call fastcc i32 @lv_color_32_32_mix_premul(i32 %.sroa.080.0.insert.insert.i, i32 %i.bn, ptr noundef %2)
  store i32 %i.bo, ptr %i.ax, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.f, %bb.e
  %indvars.iv.next475.i = add nuw nsw i64 %indvars.iv474.i, 1 ; 2 uses
  %exitcond478.not.i = icmp eq i64 %indvars.iv.next475.i, %wide.trip.count477.i
  br i1 %exitcond478.not.i, label %._crit_edge445.i, label %bb.d, !llvm.loop !61

._crit_edge445.i:                                 ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.0448.i, i64 %i.aq
  %i.bq = getelementptr inbounds nuw i8, ptr %.0374446.i, i64 %i.ar
  %i.br = add nuw nsw i32 %.0360447.i, 1          ; 2 uses
  %exitcond479.not.i = icmp eq i32 %i.br, %i.f
  br i1 %exitcond479.not.i, label %argb8888_image_blend.exit, label %.preheader.i, !llvm.loop !62

bb.m:                                             ; preds = %bb.c
  %i.bs = icmp ult i8 %i.h, -3                    ; 2 uses
  %or.cond5.i = select i1 %i.al, i1 %i.bs, i1 false
  br i1 %or.cond5.i, label %.preheader411.i, label %bb.u

.preheader411.i:                                  ; preds = %bb.m
  %i.bt = icmp sgt i32 %i.f, 0
  br i1 %i.bt, label %.preheader410.lr.ph.i, label %argb8888_image_blend.exit

.preheader410.lr.ph.i:                            ; preds = %.preheader411.i
  %i.bu = icmp sgt i32 %i.d, 0
  %i.bv = zext i32 %i.k to i64
  %i.bw = zext i32 %i.o to i64
  br i1 %i.bu, label %.preheader410.preheader.i, label %argb8888_image_blend.exit

.preheader410.preheader.i:                        ; preds = %.preheader410.lr.ph.i
  %wide.trip.count471.i = zext nneg i32 %i.d to i64
  br label %.preheader410.i

.preheader410.i:                                  ; preds = %._crit_edge440.i, %.preheader410.preheader.i
  %.1443.i = phi ptr [ %i.cu, %._crit_edge440.i ], [ %i.i, %.preheader410.preheader.i ] ; 2 uses
  %.1361442.i = phi i32 [ %i.cw, %._crit_edge440.i ], [ 0, %.preheader410.preheader.i ]
  %.1375441.i = phi ptr [ %i.cv, %._crit_edge440.i ], [ %i.m, %.preheader410.preheader.i ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %.preheader410.i
  %indvars.iv468.i = phi i64 [ 0, %.preheader410.i ], [ %indvars.iv.next469.i, %bb.t ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.1375441.i, i64 %indvars.iv468.i ; 4 uses
  %.sroa.080.0.copyload91.i = load i8, ptr %i.bx, align 1, !tbaa !17 ; 2 uses
  %.sroa.30.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %.sroa.30.0.copyload117.i = load i8, ptr %.sroa.30.0..sroa_idx116.i, align 1, !tbaa !17 ; 2 uses
  %.sroa.58.0..sroa_idx204.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 3
  %.sroa.58.0.copyload205.i = load i8, ptr %.sroa.58.0..sroa_idx204.i, align 1, !tbaa !17 ; 2 uses
  %i.by = zext i8 %.sroa.58.0.copyload205.i to i32
  %i.bz = mul nuw nsw i32 %i.by, %i.am            ; 3 uses
  %i.ca = lshr i32 %i.bz, 8                       ; 3 uses
  %i.cb = icmp samesign ugt i32 %i.bz, 767
  br i1 %i.cb, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %.sroa.44.0..sroa_idx160.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %.sroa.44.0.copyload161.i = load i8, ptr %.sroa.44.0..sroa_idx160.i, align 1, !tbaa !17 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.1443.i, i64 %indvars.iv468.i ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !33
  %i.cf = zext i8 %.sroa.44.0.copyload161.i to i32
  %.not395.i = icmp eq i8 %i.ce, %.sroa.44.0.copyload161.i
  br i1 %.not395.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !34
  %.not396.i = icmp eq i8 %i.ch, %.sroa.30.0.copyload117.i
  br i1 %.not396.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ci = load i8, ptr %i.cc, align 1, !tbaa !35
  %.not397.i = icmp eq i8 %i.ci, %.sroa.080.0.copyload91.i
  br i1 %.not397.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !36
  %.not398.i = icmp eq i8 %i.ck, %.sroa.58.0.copyload205.i
  br i1 %.not398.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.cl = zext i8 %.sroa.30.0.copyload117.i to i32
  %i.cm = mul nuw nsw i32 %i.ca, %i.cl
  %.sroa.30.0.insert.shift122.i = and i32 %i.cm, 65280
  %i.cn = zext i8 %.sroa.080.0.copyload91.i to i32
  %i.co = mul nuw nsw i32 %i.ca, %i.cn
  %i.cp = lshr i32 %i.co, 8
  %.sroa.58.0.insert.shift210.i = shl nuw i32 %i.ca, 24
end_hunk_0
begin_hunk_1_@lv_draw_sw_blend_image_to_argb8888_premultiplied:bb.a
  %.sroa.58.0.copyload214.i = load i8, ptr %.sroa.58.0..sroa_idx213.i, align 1, !tbaa !17 ; 2 uses
  %i.de = zext i8 %.sroa.58.0.copyload214.i to i32
  %i.df = getelementptr inbounds nuw i8, ptr %.0370436.i, i64 %indvars.iv462.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !17
  %i.dh = zext i8 %i.dg to i32
  %i.di = mul nuw nsw i32 %i.dh, %i.de            ; 3 uses
  %i.dj = lshr i32 %i.di, 8                       ; 4 uses
  %i.dk = icmp samesign ugt i32 %i.di, 64767
  br i1 %i.dk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.2438.i, i64 %indvars.iv462.i ; 4 uses
  store i8 %.sroa.080.0.copyload97.i, ptr %i.dl, align 1, !tbaa !17
  %.sroa.30.0..sroa_idx127.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store i8 %.sroa.30.0.copyload126.i, ptr %.sroa.30.0..sroa_idx127.i, align 1, !tbaa !17
  %.sroa.44.0..sroa_idx171.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i8 %.sroa.44.0.copyload170.i, ptr %.sroa.44.0..sroa_idx171.i, align 1, !tbaa !17
  %.sroa.58.0..sroa_idx215.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  store i8 -1, ptr %.sroa.58.0..sroa_idx215.i, align 1, !tbaa !17
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.dm = icmp samesign ugt i32 %i.di, 767
  br i1 %i.dm, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.2438.i, i64 %indvars.iv462.i ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !33
  %i.dq = zext i8 %.sroa.44.0.copyload170.i to i32
  %.not391.i = icmp eq i8 %i.dp, %.sroa.44.0.copyload170.i
  br i1 %.not391.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !34
  %.not392.i = icmp eq i8 %i.ds, %.sroa.30.0.copyload126.i
  br i1 %.not392.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i8, ptr %i.dn, align 1, !tbaa !35
  %.not393.i = icmp eq i8 %i.dt, %.sroa.080.0.copyload97.i
  br i1 %.not393.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !36
  %.not394.i = icmp eq i8 %i.dv, %.sroa.58.0.copyload214.i
  br i1 %.not394.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.dw = zext i8 %.sroa.30.0.copyload126.i to i32
  %i.dx = mul nuw nsw i32 %i.dj, %i.dw
  %.sroa.30.0.insert.shift131.i = and i32 %i.dx, 65280
  %i.dy = zext i8 %.sroa.080.0.copyload97.i to i32
  %i.dz = mul nuw nsw i32 %i.dj, %i.dy
  %i.ea = lshr i32 %i.dz, 8
  %.sroa.58.0.insert.shift219.i = shl nuw i32 %i.dj, 24
  %i.eb = shl nuw nsw i32 %i.dq, 8
  %i.ec = mul nuw nsw i32 %i.eb, %i.dj
  %.sroa.44.0.insert.shift175.i = and i32 %i.ec, 16711680
  %.sroa.44.0.insert.insert177.i = or disjoint i32 %.sroa.44.0.insert.shift175.i, %.sroa.58.0.insert.shift219.i
  %.sroa.30.0.insert.insert133.i = or disjoint i32 %.sroa.44.0.insert.insert177.i, %.sroa.30.0.insert.shift131.i
  %.sroa.080.0.insert.insert102.i = or disjoint i32 %.sroa.30.0.insert.insert133.i, %i.ea
  %i.ed = load i32, ptr %i.dn, align 1
  %i.ee = call fastcc i32 @lv_color_32_32_mix_premul(i32 %.sroa.080.0.insert.insert102.i, i32 %i.ed, ptr noundef %2)
  store i32 %i.ee, ptr %i.dn, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.x, %bb.w
  %indvars.iv.next463.i = add nuw nsw i64 %indvars.iv462.i, 1 ; 2 uses
  %exitcond466.not.i = icmp eq i64 %indvars.iv.next463.i, %wide.trip.count465.i
  br i1 %exitcond466.not.i, label %._crit_edge434.i, label %bb.v, !llvm.loop !65

._crit_edge434.i:                                 ; preds = %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %.2438.i, i64 %i.da
  %i.eg = getelementptr inbounds nuw i8, ptr %.2376435.i, i64 %i.db
  %i.eh = getelementptr inbounds i8, ptr %.0370436.i, i64 %i.dc
  %i.ei = add nuw nsw i32 %.2362437.i, 1          ; 2 uses
  %exitcond467.not.i = icmp eq i32 %i.ei, %i.f
  br i1 %exitcond467.not.i, label %argb8888_image_blend.exit, label %.preheader413.i, !llvm.loop !66

bb.ae:                                            ; preds = %bb.u
  %or.cond11.i = select i1 %i.cx, i1 %i.bs, i1 false
  %i.ej = icmp sgt i32 %i.f, 0
  %or.cond449.i = select i1 %or.cond11.i, i1 %i.ej, i1 false
  br i1 %or.cond449.i, label %.preheader416.lr.ph.i, label %argb8888_image_blend.exit

.preheader416.lr.ph.i:                            ; preds = %bb.ae
  %i.ek = icmp sgt i32 %i.d, 0
  %i.el = zext i32 %i.k to i64
  %i.em = zext i32 %i.o to i64
  %i.en = sext i32 %i.s to i64
  br i1 %i.ek, label %.preheader416.preheader.i, label %argb8888_image_blend.exit

.preheader416.preheader.i:                        ; preds = %.preheader416.lr.ph.i
  %wide.trip.count459.i = zext nneg i32 %i.d to i64
  br label %.preheader416.i

.preheader416.i:                                  ; preds = %._crit_edge428.i, %.preheader416.preheader.i
  %.3432.i = phi ptr [ %i.fp, %._crit_edge428.i ], [ %i.i, %.preheader416.preheader.i ] ; 2 uses
  %.3363431.i = phi i32 [ %i.fs, %._crit_edge428.i ], [ 0, %.preheader416.preheader.i ]
  %.1371430.i = phi ptr [ %i.fr, %._crit_edge428.i ], [ %i.q, %.preheader416.preheader.i ] ; 2 uses
  %.3377429.i = phi ptr [ %i.fq, %._crit_edge428.i ], [ %i.m, %.preheader416.preheader.i ] ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.al, %.preheader416.i
  %indvars.iv456.i = phi i64 [ 0, %.preheader416.i ], [ %indvars.iv.next457.i, %bb.al ] ; 4 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.3377429.i, i64 %indvars.iv456.i ; 4 uses
  %.sroa.080.0.copyload103.i = load i8, ptr %i.eo, align 1, !tbaa !17 ; 2 uses
  %.sroa.30.0..sroa_idx134.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %.sroa.30.0.copyload135.i = load i8, ptr %.sroa.30.0..sroa_idx134.i, align 1, !tbaa !17 ; 2 uses
  %.sroa.58.0..sroa_idx222.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  %.sroa.58.0.copyload223.i = load i8, ptr %.sroa.58.0..sroa_idx222.i, align 1, !tbaa !17 ; 2 uses
  %i.ep = zext i8 %.sroa.58.0.copyload223.i to i32
  %i.eq = mul nuw nsw i32 %i.ep, %i.am
  %i.er = getelementptr inbounds nuw i8, ptr %.1371430.i, i64 %indvars.iv456.i
  %i.es = load i8, ptr %i.er, align 1, !tbaa !17
  %i.et = zext i8 %i.es to i32
  %i.eu = mul nuw nsw i32 %i.eq, %i.et            ; 2 uses
  %i.ev = lshr i32 %i.eu, 16                      ; 4 uses
  %i.ew = icmp samesign ugt i32 %i.eu, 196607
  br i1 %i.ew, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %.sroa.44.0..sroa_idx178.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %.sroa.44.0.copyload179.i = load i8, ptr %.sroa.44.0..sroa_idx178.i, align 1, !tbaa !17 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.3432.i, i64 %indvars.iv456.i ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !33
  %i.fa = zext i8 %.sroa.44.0.copyload179.i to i32
  %.not387.i = icmp eq i8 %i.ez, %.sroa.44.0.copyload179.i
  br i1 %.not387.i, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !34
  %.not388.i = icmp eq i8 %i.fc, %.sroa.30.0.copyload135.i
  br i1 %.not388.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fd = load i8, ptr %i.ex, align 1, !tbaa !35
  %.not389.i = icmp eq i8 %i.fd, %.sroa.080.0.copyload103.i
  br i1 %.not389.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !36
  %.not390.i = icmp eq i8 %i.ff, %.sroa.58.0.copyload223.i
  br i1 %.not390.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.fg = zext i8 %.sroa.30.0.copyload135.i to i32
  %i.fh = mul nuw nsw i32 %i.ev, %i.fg
  %.sroa.30.0.insert.shift140.i = and i32 %i.fh, 65280
  %i.fi = zext i8 %.sroa.080.0.copyload103.i to i32
  %i.fj = mul nuw nsw i32 %i.ev, %i.fi
  %i.fk = lshr i32 %i.fj, 8
  %.sroa.58.0.insert.shift228.i = shl nuw i32 %i.ev, 24
  %i.fl = shl nuw nsw i32 %i.ev, 8
  %i.fm = mul nuw nsw i32 %i.fl, %i.fa
  %.sroa.44.0.insert.shift184.i = and i32 %i.fm, 2147418112
  %.sroa.44.0.insert.insert186.i = or disjoint i32 %.sroa.30.0.insert.shift140.i, %.sroa.58.0.insert.shift228.i
  %.sroa.30.0.insert.insert142.i = or disjoint i32 %.sroa.44.0.insert.insert186.i, %i.fk
  %.sroa.080.0.insert.insert108.i = or i32 %.sroa.44.0.insert.shift184.i, %.sroa.30.0.insert.insert142.i
  %i.fn = load i32, ptr %i.ex, align 1
  %i.fo = call fastcc i32 @lv_color_32_32_mix_premul(i32 %.sroa.080.0.insert.insert108.i, i32 %i.fn, ptr noundef %2)
  store i32 %i.fo, ptr %i.ex, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.af
  %indvars.iv.next457.i = add nuw nsw i64 %indvars.iv456.i, 1 ; 2 uses
  %exitcond460.not.i = icmp eq i64 %indvars.iv.next457.i, %wide.trip.count459.i
  br i1 %exitcond460.not.i, label %._crit_edge428.i, label %bb.af, !llvm.loop !67

._crit_edge428.i:                                 ; preds = %bb.al
  %i.fp = getelementptr inbounds nuw i8, ptr %.3432.i, i64 %i.el
  %i.fq = getelementptr inbounds nuw i8, ptr %.3377429.i, i64 %i.em
  %i.fr = getelementptr inbounds i8, ptr %.1371430.i, i64 %i.en
  %i.fs = add nuw nsw i32 %.3363431.i, 1          ; 2 uses
  %exitcond461.not.i = icmp eq i32 %i.fs, %i.f
  br i1 %exitcond461.not.i, label %argb8888_image_blend.exit, label %.preheader416.i, !llvm.loop !68

.preheader419.i:                                  ; preds = %._crit_edge.i, %.preheader419.preheader.i
  %.4426.i = phi ptr [ %i.ku, %._crit_edge.i ], [ %i.i, %.preheader419.preheader.i ] ; 2 uses
  %.4364425.i = phi i32 [ %i.kw, %._crit_edge.i ], [ 0, %.preheader419.preheader.i ]
  %.2372424.i = phi ptr [ %.3373.i, %._crit_edge.i ], [ %i.q, %.preheader419.preheader.i ] ; 3 uses
  %.4378423.i = phi ptr [ %i.kv, %._crit_edge.i ], [ %i.m, %.preheader419.preheader.i ] ; 2 uses
  %i.ft = icmp eq ptr %.2372424.i, null           ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %blend_non_normal_pixel_premultiplied.exit.i, %.preheader419.i
  %indvars.iv.i = phi i64 [ 0, %.preheader419.i ], [ %indvars.iv.next.i, %blend_non_normal_pixel_premultiplied.exit.i ] ; 4 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.4378423.i, i64 %indvars.iv.i ; 4 uses
  %.sroa.080.0.copyload109.i = load i8, ptr %i.fu, align 1, !tbaa !17
  %.sroa.30.0..sroa_idx143.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  %.sroa.30.0.copyload144.i = load i8, ptr %.sroa.30.0..sroa_idx143.i, align 1, !tbaa !17
  %.sroa.44.0..sroa_idx187.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  %.sroa.44.0.copyload188.i = load i8, ptr %.sroa.44.0..sroa_idx187.i, align 1, !tbaa !17
  %.sroa.58.0..sroa_idx231.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %.sroa.58.0.copyload232.i = load i8, ptr %.sroa.58.0..sroa_idx231.i, align 1, !tbaa !17 ; 2 uses
  br i1 %i.ft, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %3 = call i8 @llvm.umulh.i8(i8 %.sroa.58.0.copyload232.i, i8 %i.h)
  %4 = zext i8 %3 to i32
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %5 = zext i8 %.sroa.58.0.copyload232.i to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %.2372424.i, i64 %indvars.iv.i
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !17
  %i.fx = zext i8 %i.fw to i32
  %i.fy = mul nuw nsw i32 %5, %i.ac
  %i.fz = mul nuw nsw i32 %i.fy, %i.fx
  %i.ga = lshr i32 %i.fz, 16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.58.0.i = phi i32 [ %4, %bb.an ], [ %i.ga, %bb.ao ] ; 12 uses
  %i.gb = zext i8 %.sroa.44.0.copyload188.i to i32
  %i.gc = zext i8 %.sroa.30.0.copyload144.i to i32
  %i.gd = mul nuw nsw i32 %.sroa.58.0.i, %i.gc
  %i.ge = zext i8 %.sroa.080.0.copyload109.i to i32
  %i.gf = mul nuw nsw i32 %.sroa.58.0.i, %i.ge
  %i.gg = lshr i32 %i.gf, 8                       ; 5 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.4426.i, i64 %indvars.iv.i ; 15 uses
  %i.gi = load i32, ptr %i.x, align 4, !tbaa !32
  %.sroa.58.0.insert.shift235.i = shl nuw i32 %.sroa.58.0.i, 24 ; 2 uses
  %i.gj = shl nuw nsw i32 %i.gb, 8
  %i.gk = mul nuw nsw i32 %i.gj, %.sroa.58.0.i
  %.sroa.44.0.insert.shift191.i = and i32 %i.gk, 16711680
  %.sroa.30.0.insert.ext146.i = and i32 %i.gd, 65280
  %i.gl = or disjoint i32 %.sroa.44.0.insert.shift191.i, %.sroa.30.0.insert.ext146.i
  %i.gm = or disjoint i32 %i.gl, %.sroa.58.0.insert.shift235.i ; 2 uses
  %.sroa.080.0.insert.insert113.i = or i32 %i.gm, %i.gg
  %.sroa.9.0.extract.shift.i.i = lshr i32 %.sroa.080.0.insert.insert113.i, 8 ; 4 uses
  %.sroa.17.0.extract.shift.i.i = lshr i32 %i.gm, 16 ; 4 uses
  switch i32 %i.gi, label %blend_non_normal_pixel_premultiplied.exit.i [
    i32 1, label %bb.aq
    i32 2, label %bb.ar
    i32 3, label %bb.as
    i32 4, label %bb.at
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 3
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !36
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !33
  %i.gr = zext i8 %i.gq to i32
  %i.gs = and i32 %.sroa.17.0.extract.shift.i.i, 255
  %i.gt = add nuw nsw i32 %i.gs, %i.gr
  %i.gu = zext i8 %i.go to i32                    ; 3 uses
  %i.gv = call i32 @llvm.umin.i32(i32 %i.gt, i32 %i.gu)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !34
  %i.gy = zext i8 %i.gx to i32
  %i.gz = and i32 %.sroa.9.0.extract.shift.i.i, 255
  %i.ha = add nuw nsw i32 %i.gz, %i.gy
  %i.hb = call i32 @llvm.umin.i32(i32 %i.ha, i32 %i.gu)
  %i.hc = load i8, ptr %i.gh, align 1, !tbaa !35
  %i.hd = zext i8 %i.hc to i32
  %i.he = add nuw nsw i32 %i.gg, %i.hd
  %i.hf = call i32 @llvm.umin.i32(i32 %i.he, i32 %i.gu)
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !33
  %i.hi = zext i8 %i.hh to i32
  %i.hj = and i32 %.sroa.17.0.extract.shift.i.i, 255
  %i.hk = sub nsw i32 %i.hi, %i.hj
  %spec.select82.i.i = call i32 @llvm.smax.i32(i32 %i.hk, i32 0)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !34
  %i.hn = zext i8 %i.hm to i32
  %i.ho = and i32 %.sroa.9.0.extract.shift.i.i, 255
  %i.hp = sub nsw i32 %i.hn, %i.ho
  %i.hq = call i32 @llvm.smax.i32(i32 %i.hp, i32 0)
  %i.hr = load i8, ptr %i.gh, align 1, !tbaa !35
  %i.hs = zext i8 %i.hr to i32
  %i.ht = sub nsw i32 %i.hs, %i.gg
  %i.hu = call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  br label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !33
  %i.hx = zext i8 %i.hw to i32
  %i.hy = and i32 %.sroa.17.0.extract.shift.i.i, 255
  %i.hz = mul nuw nsw i32 %i.hy, %i.hx
  %i.ia = call i32 @llvm.umax.i32(i32 %.sroa.58.0.i, i32 1)
  %.lhs.trunc.i.i = trunc nuw i32 %i.hz to i16
  %.rhs.trunc.i.i = trunc nuw nsw i32 %i.ia to i16 ; 3 uses
  %i.ib = udiv i16 %.lhs.trunc.i.i, %.rhs.trunc.i.i
  %i.ic = zext i16 %i.ib to i32
  %i.id = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !34
  %i.if = zext i8 %i.ie to i32
  %i.ig = and i32 %.sroa.9.0.extract.shift.i.i, 255
  %i.ih = mul nuw nsw i32 %i.ig, %i.if
  %.lhs.trunc76.i.i = trunc nuw i32 %i.ih to i16
  %i.ii = udiv i16 %.lhs.trunc76.i.i, %.rhs.trunc.i.i
  %i.ij = zext i16 %i.ii to i32
  %i.ik = load i8, ptr %i.gh, align 1, !tbaa !35
  %i.il = zext i8 %i.ik to i32
  %i.im = mul nuw nsw i32 %i.gg, %i.il
  %.lhs.trunc79.i.i = trunc nuw i32 %i.im to i16
  %i.in = udiv i16 %.lhs.trunc79.i.i, %.rhs.trunc.i.i
  %i.io = zext i16 %i.in to i32
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !33
  %i.ir = zext i8 %i.iq to i32
  %i.is = and i32 %.sroa.17.0.extract.shift.i.i, 255
  %i.it = sub nsw i32 %i.ir, %i.is
  %i.iu = call i32 @llvm.abs.i32(i32 %i.it, i1 true)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !34
  %i.ix = zext i8 %i.iw to i32
  %i.iy = and i32 %.sroa.9.0.extract.shift.i.i, 255
  %i.iz = sub nsw i32 %i.ix, %i.iy
  %i.ja = call i32 @llvm.abs.i32(i32 %i.iz, i1 true)
  %i.jb = load i8, ptr %i.gh, align 1, !tbaa !35
  %i.jc = zext i8 %i.jb to i32
  %i.jd = sub nsw i32 %i.jc, %i.gg
  %i.je = call i32 @llvm.abs.i32(i32 %i.jd, i1 true)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %.sroa.11.0.i.i = phi i32 [ %i.gv, %bb.aq ], [ %spec.select82.i.i, %bb.ar ], [ %i.ic, %bb.as ], [ %i.iu, %bb.at ]
  %.sroa.7.0.i.i = phi i32 [ %i.hb, %bb.aq ], [ %i.hq, %bb.ar ], [ %i.ij, %bb.as ], [ %i.ja, %bb.at ]
  %.sroa.013.0.i.i = phi i32 [ %i.hf, %bb.aq ], [ %i.hu, %bb.ar ], [ %i.io, %bb.as ], [ %i.je, %bb.at ] ; 3 uses
  %.sroa.11.0.insert.ext.i.i = shl nuw i32 %.sroa.11.0.i.i, 16
  %.sroa.11.0.insert.shift.i.i = and i32 %.sroa.11.0.insert.ext.i.i, 16711680
  %.sroa.7.0.insert.ext.i.i = shl nuw nsw i32 %.sroa.7.0.i.i, 8
  %.sroa.7.0.insert.shift.i.i = and i32 %.sroa.7.0.insert.ext.i.i, 65280
  %.sroa.013.0.insert.ext.i.i = and i32 %.sroa.013.0.i.i, 255
  %i.jf = or disjoint i32 %.sroa.11.0.insert.shift.i.i, %.sroa.7.0.insert.shift.i.i
  %i.jg = or disjoint i32 %i.jf, %.sroa.013.0.insert.ext.i.i
  %.sroa.013.0.insert.insert.i.i = or disjoint i32 %i.jg, %.sroa.58.0.insert.shift235.i ; 5 uses
  %i.jh = load i32, ptr %i.gh, align 1            ; 9 uses
  %.sroa.051.0.extract.trunc.i.i = trunc i32 %.sroa.013.0.i.i to i8
  %.sroa.658.0.extract.shift.i.i = lshr i32 %.sroa.013.0.insert.insert.i.i, 8 ; 2 uses
  %.sroa.658.0.extract.trunc.i.i = trunc i32 %.sroa.658.0.extract.shift.i.i to i8
  %.sroa.766.0.extract.shift.i.i = lshr i32 %.sroa.013.0.insert.insert.i.i, 16 ; 2 uses
  %.sroa.766.0.extract.trunc.i.i = trunc i32 %.sroa.766.0.extract.shift.i.i to i8
  %.sroa.6.0.extract.shift.i.i = lshr i32 %i.jh, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %i.jh, 16 ; 2 uses
  %.sroa.8.0.extract.shift.i.i = lshr i32 %i.jh, 24 ; 4 uses
  %i.ji = icmp samesign ugt i32 %.sroa.58.0.i, 252
  %i.jj = icmp ult i32 %i.jh, 50331648
  %or.cond.i.i = select i1 %i.ji, i1 true, i1 %i.jj
  br i1 %or.cond.i.i, label %lv_color_32_32_mix_premul.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.6.0.extract.trunc.i.i = trunc i32 %.sroa.6.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.jh to i8
  %i.jk = icmp samesign ult i32 %.sroa.58.0.i, 3
  br i1 %i.jk, label %lv_color_32_32_mix_premul.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jl = icmp eq i32 %.sroa.8.0.extract.shift.i.i, 255
  br i1 %i.jl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jm = call i32 @lv_color_mix32_premultiplied(i32 %.sroa.013.0.insert.insert.i.i, i32 %i.jh) #7 ; 4 uses
  %.sroa.087.0.extract.trunc.i.i = trunc i32 %i.jm to i8
  %.sroa.5.0.extract.shift.i.i = lshr i32 %i.jm, 8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.788.0.extract.shift.i.i = lshr i32 %i.jm, 16
  %.sroa.788.0.extract.trunc.i.i = trunc i32 %.sroa.788.0.extract.shift.i.i to i8
  %.sroa.9.0.extract.shift.i405.i = lshr i32 %i.jm, 24
  br label %lv_color_32_32_mix_premul.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.jn = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.jo = zext i8 %i.jn to i32
  %.not.i.i = icmp eq i32 %.sroa.8.0.extract.shift.i.i, %i.jo
  %i.jp = load i8, ptr %i.ae, align 1
  %i.jq = zext i8 %i.jp to i32
  %.not91.i.i = icmp eq i32 %.sroa.58.0.i, %i.jq
  %or.cond408.i = select i1 %.not.i.i, i1 %.not91.i.i, i1 false
  br i1 %or.cond408.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jr = xor i32 %.sroa.58.0.i, 255
  %i.js = xor i32 %.sroa.8.0.extract.shift.i.i, 255
  %i.jt = mul nuw nsw i32 %i.js, %i.jr
  %i.ju = lshr i32 %i.jt, 8
  %i.jv = trunc nuw i32 %i.ju to i8
  %i.jw = xor i8 %i.jv, -1                        ; 2 uses
  store i8 %i.jw, ptr %i.v, align 4, !tbaa !13
  %i.jx = trunc nuw nsw i32 %.sroa.58.0.i to i16
  %.lhs.trunc.i403.i = mul nuw i16 %i.jx, 255
  %.rhs.trunc.i404.i = zext i8 %i.jw to i16
  %i.jy = udiv i16 %.lhs.trunc.i403.i, %.rhs.trunc.i404.i
  %i.jz = trunc i16 %i.jy to i8
  store i8 %i.jz, ptr %i.w, align 1, !tbaa !14
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.8.0.insert.shift43.i.i = and i32 %i.jh, -16777216
  %.sroa.7.0.insert.ext35.i.i = and i32 %.sroa.7.0.extract.shift.i.i, 255 ; 2 uses
  %.sroa.7.0.insert.shift36.i.i = shl nuw nsw i32 %.sroa.7.0.insert.ext35.i.i, 16
  %.sroa.7.0.insert.insert38.i.i = or disjoint i32 %.sroa.7.0.insert.shift36.i.i, %.sroa.8.0.insert.shift43.i.i
  %.sroa.6.0.insert.ext28.i.i = and i32 %.sroa.6.0.extract.shift.i.i, 255 ; 2 uses
  %.sroa.6.0.insert.shift29.i.i = shl nuw nsw i32 %.sroa.6.0.insert.ext28.i.i, 8
  %.sroa.6.0.insert.insert31.i.i = or disjoint i32 %.sroa.7.0.insert.insert38.i.i, %.sroa.6.0.insert.shift29.i.i
  %.sroa.0.0.insert.ext23.i.i = and i32 %i.jh, 255 ; 2 uses
  %.sroa.0.0.insert.insert25.i.i = or disjoint i32 %.sroa.6.0.insert.insert31.i.i, %.sroa.0.0.insert.ext23.i.i
  %i.ka = load i32, ptr %i.t, align 4
  %i.kb = call zeroext i1 @lv_color32_eq(i32 %.sroa.0.0.insert.insert25.i.i, i32 %i.ka) #7
  br i1 %i.kb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kc = load i32, ptr %2, align 4
  %i.kd = call zeroext i1 @lv_color32_eq(i32 %.sroa.013.0.insert.insert.i.i, i32 %i.kc) #7
  br i1 %i.kd, label %._crit_edge.i.i, label %bb.bc

._crit_edge.i.i:                                  ; preds = %bb.bb
  %.sroa.087.0.copyload.pre.i.i = load i8, ptr %i.u, align 4, !tbaa !17
  %.sroa.5.0.copyload.pre.i.i = load i8, ptr %i.ag, align 1, !tbaa !17
  %.sroa.788.0.copyload.pre.i.i = load i8, ptr %i.af, align 2, !tbaa !17
  %.sroa.9.0.copyload.pre.i.i = load i8, ptr %i.ah, align 1, !tbaa !17
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  store i32 %.sroa.013.0.insert.insert.i.i, ptr %2, align 4
  store i32 %i.jh, ptr %i.t, align 4
  %i.ke = xor i32 %.sroa.58.0.i, 255              ; 3 uses
  %i.kf = mul nuw nsw i32 %.sroa.7.0.insert.ext35.i.i, %i.ke
  %i.kg = lshr i32 %i.kf, 8
  %i.kh = add nuw nsw i32 %i.kg, %.sroa.766.0.extract.shift.i.i
end_hunk_1
begin_hunk_2_@lv_draw_sw_blend_image_to_argb8888_premultiplied:bb.a
  %i.yr = load i32, ptr %i.vs, align 1            ; 9 uses
  %.sroa.051.0.extract.trunc.i358.i = trunc i32 %.sroa.013.0.i.i10 to i8
  %.sroa.658.0.extract.shift.i359.i = lshr i32 %.sroa.013.0.insert.insert.i.i16, 8 ; 2 uses
  %.sroa.658.0.extract.trunc.i360.i = trunc i32 %.sroa.658.0.extract.shift.i359.i to i8
  %.sroa.766.0.extract.shift.i361.i = lshr i32 %.sroa.013.0.insert.insert.i.i16, 16 ; 2 uses
  %.sroa.766.0.extract.trunc.i362.i = trunc i32 %.sroa.766.0.extract.shift.i361.i to i8
  %.sroa.6.0.extract.shift.i364.i = lshr i32 %i.yr, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i365.i = lshr i32 %i.yr, 16 ; 2 uses
  %.sroa.8.0.extract.shift.i366.i = lshr i32 %i.yr, 24 ; 4 uses
  %i.ys = icmp samesign ugt i32 %.sroa.58.0.in.i, 252
  %i.yt = icmp ult i32 %i.yr, 50331648
  %or.cond.i367.i = select i1 %i.ys, i1 true, i1 %i.yt
  br i1 %or.cond.i367.i, label %lv_color_32_32_mix_premul.exit416.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.7.0.extract.trunc.i368.i = trunc i32 %.sroa.7.0.extract.shift.i365.i to i8
  %.sroa.6.0.extract.trunc.i369.i = trunc i32 %.sroa.6.0.extract.shift.i364.i to i8
  %.sroa.0.0.extract.trunc.i370.i = trunc i32 %i.yr to i8
  %i.yu = icmp samesign ult i32 %.sroa.58.0.in.i, 3
  br i1 %i.yu, label %lv_color_32_32_mix_premul.exit416.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.yv = icmp eq i32 %.sroa.8.0.extract.shift.i366.i, 255
  br i1 %i.yv, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.yw = call i32 @lv_color_mix32_premultiplied(i32 %.sroa.013.0.insert.insert.i.i16, i32 %i.yr) #7 ; 4 uses
  %.sroa.087.0.extract.trunc.i410.i = trunc i32 %i.yw to i8
  %.sroa.5.0.extract.shift.i411.i = lshr i32 %i.yw, 8
  %.sroa.5.0.extract.trunc.i412.i = trunc i32 %.sroa.5.0.extract.shift.i411.i to i8
  %.sroa.788.0.extract.shift.i413.i = lshr i32 %i.yw, 16
  %.sroa.788.0.extract.trunc.i414.i = trunc i32 %.sroa.788.0.extract.shift.i413.i to i8
  %.sroa.9.0.extract.shift.i415.i = lshr i32 %i.yw, 24
  br label %lv_color_32_32_mix_premul.exit416.i

bb.db:                                            ; preds = %bb.cz
  %i.yx = load i8, ptr %i.ly, align 1, !tbaa !16
  %i.yy = zext i8 %i.yx to i32
  %.not.i371.i = icmp eq i32 %.sroa.8.0.extract.shift.i366.i, %i.yy
  %i.yz = load i8, ptr %i.lz, align 1
  %i.za = zext i8 %i.yz to i32
  %.not91.i409.i = icmp eq i32 %.sroa.58.0.in.i, %i.za
  %or.cond431.i = select i1 %.not.i371.i, i1 %.not91.i409.i, i1 false
  br i1 %or.cond431.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.zb = xor i32 %.sroa.58.0.in.i, 255
  %i.zc = xor i32 %.sroa.8.0.extract.shift.i366.i, 255
  %i.zd = mul nuw nsw i32 %i.zc, %i.zb
  %i.ze = lshr i32 %i.zd, 8
  %i.zf = trunc nuw i32 %i.ze to i8
  %i.zg = xor i8 %i.zf, -1                        ; 2 uses
  store i8 %i.zg, ptr %i.lq, align 4, !tbaa !13
  %i.zh = trunc nuw nsw i32 %.sroa.58.0.in.i to i16
  %.lhs.trunc.i372.i = mul nuw i16 %i.zh, 255
  %.rhs.trunc.i373.i = zext i8 %i.zg to i16
  %i.zi = udiv i16 %.lhs.trunc.i372.i, %.rhs.trunc.i373.i
  %i.zj = trunc i16 %i.zi to i8
  store i8 %i.zj, ptr %i.lr, align 1, !tbaa !14
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.sroa.8.0.insert.shift43.i374.i = and i32 %i.yr, -16777216
  %.sroa.7.0.insert.ext35.i375.i = and i32 %.sroa.7.0.extract.shift.i365.i, 255 ; 2 uses
  %.sroa.7.0.insert.shift36.i376.i = shl nuw nsw i32 %.sroa.7.0.insert.ext35.i375.i, 16
  %.sroa.7.0.insert.insert38.i377.i = or disjoint i32 %.sroa.7.0.insert.shift36.i376.i, %.sroa.8.0.insert.shift43.i374.i
  %.sroa.6.0.insert.ext28.i378.i = and i32 %.sroa.6.0.extract.shift.i364.i, 255 ; 2 uses
  %.sroa.6.0.insert.shift29.i379.i = shl nuw nsw i32 %.sroa.6.0.insert.ext28.i378.i, 8
  %.sroa.6.0.insert.insert31.i380.i = or disjoint i32 %.sroa.7.0.insert.insert38.i377.i, %.sroa.6.0.insert.shift29.i379.i
  %.sroa.0.0.insert.ext23.i381.i = and i32 %i.yr, 255 ; 2 uses
  %.sroa.0.0.insert.insert25.i382.i = or disjoint i32 %.sroa.6.0.insert.insert31.i380.i, %.sroa.0.0.insert.ext23.i381.i
  %i.zk = load i32, ptr %i.lo, align 4
  %i.zl = call zeroext i1 @lv_color32_eq(i32 %.sroa.0.0.insert.insert25.i382.i, i32 %i.zk) #7
  br i1 %i.zl, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.zm = load i32, ptr %1, align 4
  %i.zn = call zeroext i1 @lv_color32_eq(i32 %.sroa.013.0.insert.insert.i.i16, i32 %i.zm) #7
  br i1 %i.zn, label %._crit_edge.i400.i, label %bb.df

._crit_edge.i400.i:                               ; preds = %bb.de
  %.sroa.087.0.copyload.pre.i402.i = load i8, ptr %i.lp, align 4, !tbaa !17
  %.sroa.5.0.copyload.pre.i404.i = load i8, ptr %i.mb, align 1, !tbaa !17
  %.sroa.788.0.copyload.pre.i406.i = load i8, ptr %i.ma, align 2, !tbaa !17
  %.sroa.9.0.copyload.pre.i408.i = load i8, ptr %i.mc, align 1, !tbaa !17
  br label %bb.dg

bb.df:                                            ; preds = %bb.de, %bb.dd
  store i32 %.sroa.013.0.insert.insert.i.i16, ptr %1, align 4
  store i32 %i.yr, ptr %i.lo, align 4
  %i.zo = xor i32 %.sroa.58.0.in.i, 255           ; 3 uses
  %i.zp = mul nuw nsw i32 %.sroa.7.0.insert.ext35.i375.i, %i.zo
  %i.zq = lshr i32 %i.zp, 8
  %i.zr = add nuw nsw i32 %i.zq, %.sroa.766.0.extract.shift.i361.i
  %i.zs = trunc i32 %i.zr to i8                   ; 2 uses
  store i8 %i.zs, ptr %i.ma, align 2, !tbaa !18
  %i.zt = mul nuw nsw i32 %.sroa.6.0.insert.ext28.i378.i, %i.zo
  %i.zu = lshr i32 %i.zt, 8
  %i.zv = add nuw nsw i32 %i.zu, %.sroa.658.0.extract.shift.i359.i
  %i.zw = trunc i32 %i.zv to i8                   ; 2 uses
  store i8 %i.zw, ptr %i.mb, align 1, !tbaa !19
  %i.zx = mul nuw nsw i32 %.sroa.0.0.insert.ext23.i381.i, %i.zo
  %i.zy = lshr i32 %i.zx, 8
  %i.zz = add nuw nsw i32 %i.zy, %.sroa.013.0.i.i10
  %i.aaa = trunc i32 %i.zz to i8                  ; 2 uses
  store i8 %i.aaa, ptr %i.lp, align 4, !tbaa !20
  %i.aab = load i8, ptr %i.lq, align 4, !tbaa !13 ; 2 uses
  store i8 %i.aab, ptr %i.mc, align 1, !tbaa !21
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge.i400.i
  %.sroa.9.0.copyload.i383.i = phi i8 [ %.sroa.9.0.copyload.pre.i408.i, %._crit_edge.i400.i ], [ %i.aab, %bb.df ]
  %.sroa.788.0.copyload.i384.i = phi i8 [ %.sroa.788.0.copyload.pre.i406.i, %._crit_edge.i400.i ], [ %i.zs, %bb.df ]
  %.sroa.5.0.copyload.i385.i = phi i8 [ %.sroa.5.0.copyload.pre.i404.i, %._crit_edge.i400.i ], [ %i.zw, %bb.df ]
  %.sroa.087.0.copyload.i386.i = phi i8 [ %.sroa.087.0.copyload.pre.i402.i, %._crit_edge.i400.i ], [ %i.aaa, %bb.df ]
  %i.aac = zext i8 %.sroa.9.0.copyload.i383.i to i32
  br label %lv_color_32_32_mix_premul.exit416.i

lv_color_32_32_mix_premul.exit416.i:              ; preds = %bb.dg, %bb.da, %bb.cy, %bb.cx
  %.sroa.087.0.i387.i = phi i8 [ %.sroa.087.0.copyload.i386.i, %bb.dg ], [ %.sroa.051.0.extract.trunc.i358.i, %bb.cx ], [ %.sroa.087.0.extract.trunc.i410.i, %bb.da ], [ %.sroa.0.0.extract.trunc.i370.i, %bb.cy ]
  %.sroa.5.0.i388.i = phi i8 [ %.sroa.5.0.copyload.i385.i, %bb.dg ], [ %.sroa.658.0.extract.trunc.i360.i, %bb.cx ], [ %.sroa.5.0.extract.trunc.i412.i, %bb.da ], [ %.sroa.6.0.extract.trunc.i369.i, %bb.cy ]
  %.sroa.788.0.i389.i = phi i8 [ %.sroa.788.0.copyload.i384.i, %bb.dg ], [ %.sroa.766.0.extract.trunc.i362.i, %bb.cx ], [ %.sroa.788.0.extract.trunc.i414.i, %bb.da ], [ %.sroa.7.0.extract.trunc.i368.i, %bb.cy ]
  %.sroa.9.0.i390.i = phi i32 [ %i.aac, %bb.dg ], [ %.sroa.58.0.in.i, %bb.cx ], [ %.sroa.9.0.extract.shift.i415.i, %bb.da ], [ %.sroa.8.0.extract.shift.i366.i, %bb.cy ]
  %.sroa.9.0.insert.shift.i391.i = shl nuw i32 %.sroa.9.0.i390.i, 24
  %.sroa.788.0.insert.ext.i392.i = zext i8 %.sroa.788.0.i389.i to i32
  %.sroa.788.0.insert.shift.i393.i = shl nuw nsw i32 %.sroa.788.0.insert.ext.i392.i, 16
  %.sroa.788.0.insert.insert.i394.i = or disjoint i32 %.sroa.9.0.insert.shift.i391.i, %.sroa.788.0.insert.shift.i393.i
  %.sroa.5.0.insert.ext.i395.i = zext i8 %.sroa.5.0.i388.i to i32
  %.sroa.5.0.insert.shift.i396.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i395.i, 8
  %.sroa.5.0.insert.insert.i397.i = or disjoint i32 %.sroa.788.0.insert.insert.i394.i, %.sroa.5.0.insert.shift.i396.i
  %.sroa.087.0.insert.ext.i398.i = zext i8 %.sroa.087.0.i387.i to i32
  %.sroa.087.0.insert.insert.i399.i = or disjoint i32 %.sroa.5.0.insert.insert.i397.i, %.sroa.087.0.insert.ext.i398.i
  store i32 %.sroa.087.0.insert.insert.i399.i, ptr %i.vs, align 1
  br label %blend_non_normal_pixel_premultiplied.exit.i17

blend_non_normal_pixel_premultiplied.exit.i17:    ; preds = %lv_color_32_32_mix_premul.exit416.i, %bb.cs
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i6, 1 ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %indvars.iv.next.i18, %wide.trip.count.i5
  br i1 %exitcond.not.i19, label %._crit_edge.i20, label %bb.cn, !llvm.loop !79

._crit_edge.i20:                                  ; preds = %blend_non_normal_pixel_premultiplied.exit.i17
  %i.aad = getelementptr inbounds i8, ptr %.2272447.i, i64 %i.md
  %.3273.i = select i1 %i.uo, ptr null, ptr %i.aad
  %i.aae = getelementptr inbounds nuw i8, ptr %.4449.i, i64 %i.me
  %i.aaf = getelementptr inbounds nuw i8, ptr %.4269448.i, i64 %i.mf
  %i.aag = add nuw nsw i32 %.4278446.i, 1         ; 2 uses
  %exitcond478.not.i21 = icmp eq i32 %i.aag, %i.la
  br i1 %exitcond478.not.i21, label %argb8888_premultiplied_image_blend.exit, label %.preheader442.i, !llvm.loop !80

argb8888_premultiplied_image_blend.exit:          ; preds = %._crit_edge.i20, %._crit_edge451.i, %._crit_edge457.i, %._crit_edge463.i, %._crit_edge468.i, %.preheader443.i, %.preheader442.lr.ph.i, %.preheader432.i, %.preheader.lr.ph.i32, %.preheader434.i, %.preheader433.lr.ph.i, %.preheader437.i, %.preheader436.lr.ph.i, %bb.cj, %.preheader439.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.dh

bb.dh:                                            ; preds = %bb.a, %argb8888_premultiplied_image_blend.exit, %bb.bf, %bb.be, %argb8888_image_blend.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 3, 5) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 35 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !25
  %.fr551 = freeze i8 %i.f                        ; 8 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !31   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @lv_memset(ptr noundef nonnull %2, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.r, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.s, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 9 uses
  store i8 -1, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 5 uses
  store i8 -1, ptr %i.u, align 1, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %.preheader459

.preheader459:                                    ; preds = %bb.a
  %i.y = icmp sgt i32 %i.d, 0
  br i1 %i.y, label %.preheader458.lr.ph, label %.loopexit

.preheader458.lr.ph:                              ; preds = %.preheader459
  %i.z = icmp sgt i32 %i.b, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.af = sext i32 %i.q to i64
  %i.ag = zext i32 %i.i to i64
  %i.ah = zext i32 %i.m to i64
  br i1 %i.z, label %.preheader458.preheader, label %.loopexit

.preheader458.preheader:                          ; preds = %.preheader458.lr.ph
  %i.ai = zext nneg i8 %1 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader458

bb.b:                                             ; preds = %bb.a
  %i.aj = icmp eq ptr %i.o, null                  ; 2 uses
  %i.ak = zext i8 %.fr551 to i32                  ; 9 uses
  %i.al = icmp ugt i8 %.fr551, -4                 ; 2 uses
  %or.cond = and i1 %i.aj, %i.al
  br i1 %or.cond, label %bb.c, label %.loopexit454

bb.c:                                             ; preds = %bb.b
  %i.am = icmp eq i8 %1, 4
  %i.an = icmp sgt i32 %i.d, 0                    ; 2 uses
  br i1 %i.am, label %bb.d, label %.preheader456

.preheader456:                                    ; preds = %bb.c
  br i1 %i.an, label %.preheader455.lr.ph, label %.loopexit

.preheader455.lr.ph:                              ; preds = %.preheader456
  %i.ao = icmp sgt i32 %i.b, 0
  %i.ap = zext i32 %i.i to i64
  %i.aq = zext i32 %i.m to i64
  br i1 %i.ao, label %.preheader455.us.preheader, label %.loopexit

.preheader455.us.preheader:                       ; preds = %.preheader455.lr.ph
  %wide.trip.count589 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count589, 1
  %i.ar = icmp eq i32 %i.b, 1
  %unroll_iter = and i64 %wide.trip.count589, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod705 = trunc i32 %i.b to i1
  br label %.preheader455.us

.preheader455.us:                                 ; preds = %.preheader455.us.preheader, %._crit_edge469.us
  %.1472.us = phi i32 [ %i.ca, %._crit_edge469.us ], [ 0, %.preheader455.us.preheader ]
  %.1237471.us = phi ptr [ %i.bz, %._crit_edge469.us ], [ %i.k, %.preheader455.us.preheader ] ; 4 uses
  %.1243470.us = phi ptr [ %i.by, %._crit_edge469.us ], [ %i.g, %.preheader455.us.preheader ] ; 4 uses
  br i1 %i.ar, label %.epil.preheader, label %.preheader455.us.new

.preheader455.us.new:                             ; preds = %.preheader455.us, %.preheader455.us.new
  %indvars.iv584 = phi i64 [ %indvars.iv.next585.1, %.preheader455.us.new ], [ 0, %.preheader455.us ] ; 3 uses
  %indvars.iv582 = phi i64 [ %indvars.iv.next583.1, %.preheader455.us.new ], [ 0, %.preheader455.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader455.us.new ], [ 0, %.preheader455.us ]
  %i.as = getelementptr inbounds nuw i8, ptr %.1237471.us, i64 %indvars.iv582 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.1243470.us, i64 %indvars.iv584 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !34
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !17
  store i8 %i.ba, ptr %i.av, align 1, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  store i8 -1, ptr %i.bb, align 1, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %.1237471.us, i64 %indvars.iv582 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.1243470.us, i64 %indvars.iv584 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !34
  %i.bm = load i8, ptr %i.bd, align 1, !tbaa !17
  store i8 %i.bm, ptr %i.bh, align 1, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  store i8 -1, ptr %i.bn, align 1, !tbaa !36
  %indvars.iv.next585.1 = add nuw nsw i64 %indvars.iv584, 2 ; 2 uses
  %indvars.iv.next583.1 = add nuw nsw i64 %indvars.iv582, 6 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge469.us.unr-lcssa, label %.preheader455.us.new, !llvm.loop !82

._crit_edge469.us.unr-lcssa:                      ; preds = %.preheader455.us.new
  br i1 %lcmp.mod.not, label %._crit_edge469.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge469.us.unr-lcssa, %.preheader455.us
  %indvars.iv584.epil.init = phi i64 [ 0, %.preheader455.us ], [ %indvars.iv.next585.1, %._crit_edge469.us.unr-lcssa ]
  %indvars.iv582.epil.init = phi i64 [ 0, %.preheader455.us ], [ %indvars.iv.next583.1, %._crit_edge469.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod705)
  %i.bo = getelementptr inbounds nuw i8, ptr %.1237471.us, i64 %indvars.iv582.epil.init ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.1243470.us, i64 %indvars.iv584.epil.init ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !34
  %i.bw = load i8, ptr %i.bo, align 1, !tbaa !17
  store i8 %i.bw, ptr %i.br, align 1, !tbaa !35
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  store i8 -1, ptr %i.bx, align 1, !tbaa !36
  br label %._crit_edge469.us

._crit_edge469.us:                                ; preds = %._crit_edge469.us.unr-lcssa, %.epil.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %.1243470.us, i64 %i.ap ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1237471.us, i64 %i.aq ; 2 uses
  %i.ca = add nuw nsw i32 %.1472.us, 1            ; 2 uses
  %exitcond591.not = icmp eq i32 %i.ca, %i.d
  br i1 %exitcond591.not, label %.loopexit454, label %.preheader455.us, !llvm.loop !83

bb.d:                                             ; preds = %bb.c
  br i1 %i.an, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.cb = shl nsw i32 %i.b, 2
  %i.cc = zext i32 %i.cb to i64
  %i.cd = zext i32 %i.i to i64
  %i.ce = zext i32 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0477 = phi i32 [ 0, %.lr.ph ], [ %i.ci, %bb.e ]
  %.0236476 = phi ptr [ %i.k, %.lr.ph ], [ %i.ch, %bb.e ] ; 2 uses
  %.0242475 = phi ptr [ %i.g, %.lr.ph ], [ %i.cg, %bb.e ] ; 2 uses
  %i.cf = call ptr @lv_memcpy(ptr noundef %.0242475, ptr noundef %.0236476, i64 noundef %i.cc) #7 ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0242475, i64 %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %.0236476, i64 %i.ce
  %i.ci = add nuw nsw i32 %.0477, 1               ; 2 uses
  %exitcond592.not = icmp eq i32 %i.ci, %i.d
  br i1 %exitcond592.not, label %.loopexit, label %bb.e, !llvm.loop !84

.loopexit454:                                     ; preds = %._crit_edge469.us, %bb.b
  %.2244 = phi ptr [ %i.g, %bb.b ], [ %i.by, %._crit_edge469.us ] ; 3 uses
  %.2238 = phi ptr [ %i.k, %bb.b ], [ %i.bz, %._crit_edge469.us ] ; 3 uses
  %i.cj = icmp ult i8 %.fr551, -3                 ; 2 uses
  %or.cond5 = and i1 %i.aj, %i.cj
  %i.ck = icmp sgt i32 %i.d, 0                    ; 3 uses
  %or.cond548 = select i1 %or.cond5, i1 %i.ck, i1 false
  br i1 %or.cond548, label %.preheader451.lr.ph, label %.loopexit453

.preheader451.lr.ph:                              ; preds = %.loopexit454
  %i.cl = icmp sgt i32 %i.b, 0
  %.sroa.14.0.insert.shift = shl nuw i32 %i.ak, 24 ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ak, 8                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cp = xor i32 %i.ak, 255                      ; 4 uses
  %i.cq = zext i8 %.fr551 to i16
  %.lhs.trunc.i = mul nuw i16 %i.cq, 255
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.cu = zext i32 %i.i to i64                    ; 2 uses
  %i.cv = zext i32 %i.m to i64                    ; 2 uses
  br i1 %i.cl, label %.preheader451.lr.ph.split.us, label %.loopexit

.preheader451.lr.ph.split.us:                     ; preds = %.preheader451.lr.ph
  %i.cw = icmp ult i8 %.fr551, 3
  %i.cx = zext nneg i8 %1 to i64                  ; 2 uses
  %wide.trip.count612 = zext nneg i32 %i.b to i64 ; 2 uses
  br i1 %i.cw, label %.preheader451.us.us, label %.preheader451.us

.preheader451.us.us:                              ; preds = %.preheader451.lr.ph.split.us, %._crit_edge484.split.us.us.us
  %.2489.us.us = phi i32 [ %i.dq, %._crit_edge484.split.us.us.us ], [ 0, %.preheader451.lr.ph.split.us ]
  %.3239487.us.us = phi ptr [ %i.dp, %._crit_edge484.split.us.us.us ], [ %.2238, %.preheader451.lr.ph.split.us ] ; 2 uses
  %.3245485.us.us = phi ptr [ %i.do, %._crit_edge484.split.us.us.us ], [ %.2244, %.preheader451.lr.ph.split.us ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %lv_color_32_32_mix_premul.exit.us.us.us, %.preheader451.us.us
  %indvars.iv607 = phi i64 [ %indvars.iv.next608, %lv_color_32_32_mix_premul.exit.us.us.us ], [ 0, %.preheader451.us.us ] ; 2 uses
  %indvars.iv605 = phi i64 [ %indvars.iv.next606, %lv_color_32_32_mix_premul.exit.us.us.us ], [ 0, %.preheader451.us.us ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.3239487.us.us, i64 %indvars.iv605 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !17
  %i.db = zext i8 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !17
  %i.de = zext i8 %i.dd to i32
  %i.df = mul nuw nsw i32 %i.de, %i.ak
  %i.dg = load i8, ptr %i.cy, align 1, !tbaa !17
  %i.dh = zext i8 %i.dg to i32
  %i.di = mul nuw nsw i32 %i.dh, %i.ak
  %i.dj = lshr i32 %i.di, 8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.3245485.us.us, i64 %indvars.iv607 ; 2 uses
  %i.dl = mul nuw nsw i32 %i.cm, %i.db
  %i.dm = load i32, ptr %i.dk, align 1            ; 5 uses
  %i.dn = icmp ult i32 %i.dm, 50331648
  br i1 %i.dn, label %lv_color_32_32_mix_premul.exit.us.us.us, label %bb.g

end_hunk_2
begin_hunk_3_@rgb888_image_blend:bb.a
  %.7249544 = phi ptr [ %i.lc, %._crit_edge543 ], [ %.6248, %.preheader.preheader ] ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader, %lv_color_32_32_mix_premul.exit372
  %indvars.iv630 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next631, %lv_color_32_32_mix_premul.exit372 ] ; 3 uses
  %indvars.iv628 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next629, %lv_color_32_32_mix_premul.exit372 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.2233546, i64 %indvars.iv630
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !17
  %i.ix = zext i8 %i.iw to i32
  %i.iy = mul nuw nsw i32 %i.ix, %i.ak            ; 3 uses
  %i.iz = lshr i32 %i.iy, 8                       ; 9 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.7545, i64 %indvars.iv628 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !17
  %i.jd = zext i8 %i.jc to i32
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !17
  %i.jg = zext i8 %i.jf to i32
  %i.jh = mul nuw nsw i32 %i.iz, %i.jg
  %.sroa.8.0.insert.shift87 = and i32 %i.jh, 65280
  %i.ji = load i8, ptr %i.ja, align 1, !tbaa !17
  %i.jj = zext i8 %i.ji to i32
  %i.jk = mul nuw nsw i32 %i.iz, %i.jj
  %i.jl = lshr i32 %i.jk, 8                       ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.7249544, i64 %indvars.iv630 ; 2 uses
  %.sroa.14.0.insert.shift107 = shl nuw i32 %i.iz, 24
  %i.jn = shl nuw nsw i32 %i.jd, 8
  %i.jo = mul nuw nsw i32 %i.jn, %i.iz
  %.sroa.11.0.insert.shift97 = and i32 %i.jo, 16711680
  %i.jp = or disjoint i32 %.sroa.11.0.insert.shift97, %.sroa.8.0.insert.shift87
  %.sroa.8.0.insert.insert89 = or disjoint i32 %i.jp, %.sroa.14.0.insert.shift107
  %.sroa.071.0.insert.insert79 = or disjoint i32 %.sroa.8.0.insert.insert89, %i.jl ; 5 uses
  %i.jq = load i32, ptr %i.jm, align 1            ; 9 uses
  %.sroa.051.0.extract.trunc.i314 = trunc nuw i32 %i.jl to i8
  %.sroa.658.0.extract.shift.i315 = lshr i32 %.sroa.071.0.insert.insert79, 8 ; 2 uses
  %.sroa.658.0.extract.trunc.i316 = trunc i32 %.sroa.658.0.extract.shift.i315 to i8
  %.sroa.766.0.extract.shift.i317 = lshr i32 %.sroa.071.0.insert.insert79, 16 ; 2 uses
  %.sroa.766.0.extract.trunc.i318 = trunc i32 %.sroa.766.0.extract.shift.i317 to i8
  %.sroa.6.0.extract.shift.i320 = lshr i32 %i.jq, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i321 = lshr i32 %i.jq, 16 ; 2 uses
  %.sroa.8.0.extract.shift.i322 = lshr i32 %i.jq, 24 ; 4 uses
  %i.jr = icmp samesign ugt i32 %i.iy, 64767
  %i.js = icmp ult i32 %i.jq, 50331648
  %or.cond.i323 = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %or.cond.i323, label %lv_color_32_32_mix_premul.exit372, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.7.0.extract.trunc.i324 = trunc i32 %.sroa.7.0.extract.shift.i321 to i8
  %.sroa.6.0.extract.trunc.i325 = trunc i32 %.sroa.6.0.extract.shift.i320 to i8
  %.sroa.0.0.extract.trunc.i326 = trunc i32 %i.jq to i8
  %i.jt = icmp samesign ult i32 %i.iy, 768
  br i1 %i.jt, label %lv_color_32_32_mix_premul.exit372, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ju = icmp eq i32 %.sroa.8.0.extract.shift.i322, 255
  br i1 %i.ju, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jv = call i32 @lv_color_mix32_premultiplied(i32 %.sroa.071.0.insert.insert79, i32 %i.jq) #7 ; 4 uses
  %.sroa.087.0.extract.trunc.i366 = trunc i32 %i.jv to i8
  %.sroa.5.0.extract.shift.i367 = lshr i32 %i.jv, 8
  %.sroa.5.0.extract.trunc.i368 = trunc i32 %.sroa.5.0.extract.shift.i367 to i8
  %.sroa.788.0.extract.shift.i369 = lshr i32 %i.jv, 16
  %.sroa.788.0.extract.trunc.i370 = trunc i32 %.sroa.788.0.extract.shift.i369 to i8
  %.sroa.9.0.extract.shift.i371 = lshr i32 %i.jv, 24
  br label %lv_color_32_32_mix_premul.exit372

bb.ae:                                            ; preds = %bb.ac
  %i.jw = load i8, ptr %i.im, align 1, !tbaa !16
  %i.jx = zext i8 %i.jw to i32
  %.not.i327 = icmp eq i32 %.sroa.8.0.extract.shift.i322, %i.jx
  %i.jy = load i8, ptr %i.in, align 1
  %i.jz = zext i8 %i.jy to i32
  %.not91.i365 = icmp eq i32 %i.iz, %i.jz
  %or.cond443 = select i1 %.not.i327, i1 %.not91.i365, i1 false
  br i1 %or.cond443, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ka = xor i32 %i.iz, 255
  %i.kb = xor i32 %.sroa.8.0.extract.shift.i322, 255
  %i.kc = mul nuw nsw i32 %i.kb, %i.ka
  %i.kd = lshr i32 %i.kc, 8
  %i.ke = trunc nuw i32 %i.kd to i8
  %i.kf = xor i8 %i.ke, -1                        ; 2 uses
  store i8 %i.kf, ptr %i.t, align 4, !tbaa !13
  %i.kg = trunc nuw nsw i32 %i.iz to i16
  %.lhs.trunc.i328 = mul nuw i16 %i.kg, 255
  %.rhs.trunc.i329 = zext i8 %i.kf to i16
  %i.kh = udiv i16 %.lhs.trunc.i328, %.rhs.trunc.i329
  %i.ki = trunc i16 %i.kh to i8
  store i8 %i.ki, ptr %i.u, align 1, !tbaa !14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sroa.8.0.insert.shift43.i330 = and i32 %i.jq, -16777216
  %.sroa.7.0.insert.ext35.i331 = and i32 %.sroa.7.0.extract.shift.i321, 255 ; 2 uses
  %.sroa.7.0.insert.shift36.i332 = shl nuw nsw i32 %.sroa.7.0.insert.ext35.i331, 16
  %.sroa.7.0.insert.insert38.i333 = or disjoint i32 %.sroa.7.0.insert.shift36.i332, %.sroa.8.0.insert.shift43.i330
  %.sroa.6.0.insert.ext28.i334 = and i32 %.sroa.6.0.extract.shift.i320, 255 ; 2 uses
  %.sroa.6.0.insert.shift29.i335 = shl nuw nsw i32 %.sroa.6.0.insert.ext28.i334, 8
  %.sroa.6.0.insert.insert31.i336 = or disjoint i32 %.sroa.7.0.insert.insert38.i333, %.sroa.6.0.insert.shift29.i335
  %.sroa.0.0.insert.ext23.i337 = and i32 %i.jq, 255 ; 2 uses
  %.sroa.0.0.insert.insert25.i338 = or disjoint i32 %.sroa.6.0.insert.insert31.i336, %.sroa.0.0.insert.ext23.i337
  %i.kj = load i32, ptr %i.r, align 4
  %i.kk = call zeroext i1 @lv_color32_eq(i32 %.sroa.0.0.insert.insert25.i338, i32 %i.kj) #7
  br i1 %i.kk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.kl = load i32, ptr %2, align 4
  %i.km = call zeroext i1 @lv_color32_eq(i32 %.sroa.071.0.insert.insert79, i32 %i.kl) #7
  br i1 %i.km, label %._crit_edge.i356, label %bb.ai

._crit_edge.i356:                                 ; preds = %bb.ah
  %.sroa.087.0.copyload.pre.i358 = load i8, ptr %i.s, align 4, !tbaa !17
  %.sroa.5.0.copyload.pre.i360 = load i8, ptr %i.ip, align 1, !tbaa !17
  %.sroa.788.0.copyload.pre.i362 = load i8, ptr %i.io, align 2, !tbaa !17
  %.sroa.9.0.copyload.pre.i364 = load i8, ptr %i.iq, align 1, !tbaa !17
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i32 %.sroa.071.0.insert.insert79, ptr %2, align 4
  store i32 %i.jq, ptr %i.r, align 4
  %i.kn = xor i32 %i.iz, 255                      ; 3 uses
  %i.ko = mul nuw nsw i32 %.sroa.7.0.insert.ext35.i331, %i.kn
  %i.kp = lshr i32 %i.ko, 8
  %i.kq = add nuw nsw i32 %.sroa.766.0.extract.shift.i317, %i.kp
  %i.kr = trunc i32 %i.kq to i8                   ; 2 uses
  store i8 %i.kr, ptr %i.io, align 2, !tbaa !18
  %i.ks = mul nuw nsw i32 %.sroa.6.0.insert.ext28.i334, %i.kn
  %i.kt = lshr i32 %i.ks, 8
  %i.ku = add nuw nsw i32 %.sroa.658.0.extract.shift.i315, %i.kt
  %i.kv = trunc i32 %i.ku to i8                   ; 2 uses
  store i8 %i.kv, ptr %i.ip, align 1, !tbaa !19
  %i.kw = mul nuw nsw i32 %.sroa.0.0.insert.ext23.i337, %i.kn
  %i.kx = lshr i32 %i.kw, 8
  %i.ky = add nuw nsw i32 %i.kx, %i.jl
  %i.kz = trunc i32 %i.ky to i8                   ; 2 uses
  store i8 %i.kz, ptr %i.s, align 4, !tbaa !20
  %i.la = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.la, ptr %i.iq, align 1, !tbaa !21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i356
  %.sroa.9.0.copyload.i339 = phi i8 [ %.sroa.9.0.copyload.pre.i364, %._crit_edge.i356 ], [ %i.la, %bb.ai ]
  %.sroa.788.0.copyload.i340 = phi i8 [ %.sroa.788.0.copyload.pre.i362, %._crit_edge.i356 ], [ %i.kr, %bb.ai ]
  %.sroa.5.0.copyload.i341 = phi i8 [ %.sroa.5.0.copyload.pre.i360, %._crit_edge.i356 ], [ %i.kv, %bb.ai ]
  %.sroa.087.0.copyload.i342 = phi i8 [ %.sroa.087.0.copyload.pre.i358, %._crit_edge.i356 ], [ %i.kz, %bb.ai ]
  %i.lb = zext i8 %.sroa.9.0.copyload.i339 to i32
  br label %lv_color_32_32_mix_premul.exit372

lv_color_32_32_mix_premul.exit372:                ; preds = %bb.aa, %bb.ab, %bb.ad, %bb.aj
  %.sroa.087.0.i343 = phi i8 [ %.sroa.087.0.copyload.i342, %bb.aj ], [ %.sroa.051.0.extract.trunc.i314, %bb.aa ], [ %.sroa.087.0.extract.trunc.i366, %bb.ad ], [ %.sroa.0.0.extract.trunc.i326, %bb.ab ]
  %.sroa.5.0.i344 = phi i8 [ %.sroa.5.0.copyload.i341, %bb.aj ], [ %.sroa.658.0.extract.trunc.i316, %bb.aa ], [ %.sroa.5.0.extract.trunc.i368, %bb.ad ], [ %.sroa.6.0.extract.trunc.i325, %bb.ab ]
  %.sroa.788.0.i345 = phi i8 [ %.sroa.788.0.copyload.i340, %bb.aj ], [ %.sroa.766.0.extract.trunc.i318, %bb.aa ], [ %.sroa.788.0.extract.trunc.i370, %bb.ad ], [ %.sroa.7.0.extract.trunc.i324, %bb.ab ]
  %.sroa.9.0.i346 = phi i32 [ %i.lb, %bb.aj ], [ %i.iz, %bb.aa ], [ %.sroa.9.0.extract.shift.i371, %bb.ad ], [ %.sroa.8.0.extract.shift.i322, %bb.ab ]
  %.sroa.9.0.insert.shift.i347 = shl nuw i32 %.sroa.9.0.i346, 24
  %.sroa.788.0.insert.ext.i348 = zext i8 %.sroa.788.0.i345 to i32
  %.sroa.788.0.insert.shift.i349 = shl nuw nsw i32 %.sroa.788.0.insert.ext.i348, 16
  %.sroa.788.0.insert.insert.i350 = or disjoint i32 %.sroa.9.0.insert.shift.i347, %.sroa.788.0.insert.shift.i349
  %.sroa.5.0.insert.ext.i351 = zext i8 %.sroa.5.0.i344 to i32
  %.sroa.5.0.insert.shift.i352 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i351, 8
  %.sroa.5.0.insert.insert.i353 = or disjoint i32 %.sroa.788.0.insert.insert.i350, %.sroa.5.0.insert.shift.i352
  %.sroa.087.0.insert.ext.i354 = zext i8 %.sroa.087.0.i343 to i32
  %.sroa.087.0.insert.insert.i355 = or disjoint i32 %.sroa.5.0.insert.insert.i353, %.sroa.087.0.insert.ext.i354
  store i32 %.sroa.087.0.insert.insert.i355, ptr %i.jm, align 1
  %indvars.iv.next631 = add nuw nsw i64 %indvars.iv630, 1 ; 2 uses
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, %i.iu
  %exitcond636.not = icmp eq i64 %indvars.iv.next631, %wide.trip.count635
  br i1 %exitcond636.not, label %._crit_edge543, label %bb.aa, !llvm.loop !89

._crit_edge543:                                   ; preds = %lv_color_32_32_mix_premul.exit372
  %i.lc = getelementptr inbounds nuw i8, ptr %.7249544, i64 %i.ir
  %i.ld = getelementptr inbounds nuw i8, ptr %.7545, i64 %i.is
  %i.le = getelementptr inbounds i8, ptr %.2233546, i64 %i.it
  %i.lf = add nuw nsw i32 %.4547, 1               ; 2 uses
  %exitcond637.not = icmp eq i32 %i.lf, %i.d
  br i1 %exitcond637.not, label %.loopexit, label %.preheader, !llvm.loop !90

.preheader458:                                    ; preds = %.preheader458.preheader, %._crit_edge
  %.5466 = phi i32 [ %i.pp, %._crit_edge ], [ 0, %.preheader458.preheader ]
  %.3234465 = phi ptr [ %.4235, %._crit_edge ], [ %i.o, %.preheader458.preheader ] ; 3 uses
  %.8464 = phi ptr [ %i.po, %._crit_edge ], [ %i.k, %.preheader458.preheader ] ; 2 uses
  %.8250463 = phi ptr [ %i.pn, %._crit_edge ], [ %i.g, %.preheader458.preheader ] ; 2 uses
  %i.lg = icmp eq ptr %.3234465, null             ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader458, %blend_non_normal_pixel_premultiplied.exit
  %indvars.iv575 = phi i64 [ 0, %.preheader458 ], [ %indvars.iv.next576, %blend_non_normal_pixel_premultiplied.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader458 ], [ %indvars.iv.next, %blend_non_normal_pixel_premultiplied.exit ] ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.8464, i64 %indvars.iv ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !17
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !17
  %i.lm = load i8, ptr %i.lh, align 1, !tbaa !17
  br i1 %i.lg, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ln = getelementptr inbounds nuw i8, ptr %.3234465, i64 %indvars.iv575
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !17
  %3 = call i8 @llvm.umulh.i8(i8 %i.lo, i8 %.fr551)
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.6.0 = phi i8 [ %3, %bb.al ], [ %.fr551, %bb.ak ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.8250463, i64 %indvars.iv575 ; 15 uses
  %i.lq = load i32, ptr %i.v, align 4, !tbaa !32
  %.sroa.6.0.insert.ext = zext i8 %.sroa.6.0 to i32 ; 5 uses
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.lj to i32    ; 4 uses
  %.sroa.4.0.insert.ext = zext i8 %i.ll to i32    ; 4 uses
  %.sroa.0.0.insert.ext = zext i8 %i.lm to i32    ; 4 uses
  switch i32 %i.lq, label %blend_non_normal_pixel_premultiplied.exit [
    i32 1, label %bb.an
    i32 2, label %bb.ao
    i32 3, label %bb.ap
    i32 4, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.am
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 3
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !36
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !33
  %i.lv = zext i8 %i.lu to i32
  %i.lw = add nuw nsw i32 %i.lv, %.sroa.5.0.insert.ext
  %i.lx = zext i8 %i.ls to i32                    ; 3 uses
  %i.ly = call i32 @llvm.umin.i32(i32 %i.lw, i32 %i.lx)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !34
  %i.mb = zext i8 %i.ma to i32
  %i.mc = add nuw nsw i32 %i.mb, %.sroa.4.0.insert.ext
  %i.md = call i32 @llvm.umin.i32(i32 %i.mc, i32 %i.lx)
  %i.me = load i8, ptr %i.lp, align 1, !tbaa !35
  %i.mf = zext i8 %i.me to i32
  %i.mg = add nuw nsw i32 %i.mf, %.sroa.0.0.insert.ext
  %i.mh = call i32 @llvm.umin.i32(i32 %i.mg, i32 %i.lx)
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !33
  %i.mk = zext i8 %i.mj to i32
  %i.ml = sub nsw i32 %i.mk, %.sroa.5.0.insert.ext
  %spec.select82.i = call i32 @llvm.smax.i32(i32 %i.ml, i32 0)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !34
  %i.mo = zext i8 %i.mn to i32
  %i.mp = sub nsw i32 %i.mo, %.sroa.4.0.insert.ext
  %i.mq = call i32 @llvm.smax.i32(i32 %i.mp, i32 0)
  %i.mr = load i8, ptr %i.lp, align 1, !tbaa !35
  %i.ms = zext i8 %i.mr to i32
  %i.mt = sub nsw i32 %i.ms, %.sroa.0.0.insert.ext
  %i.mu = call i32 @llvm.smax.i32(i32 %i.mt, i32 0)
  br label %bb.ar

bb.ap:                                            ; preds = %bb.am
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !33
  %i.mx = zext i8 %i.mw to i32
  %i.my = mul nuw nsw i32 %i.mx, %.sroa.5.0.insert.ext
  %i.mz = call i32 @llvm.umax.i32(i32 %.sroa.6.0.insert.ext, i32 1)
  %.lhs.trunc.i374 = trunc nuw i32 %i.my to i16
  %.rhs.trunc.i375 = trunc nuw nsw i32 %i.mz to i16 ; 3 uses
  %i.na = udiv i16 %.lhs.trunc.i374, %.rhs.trunc.i375
  %i.nb = zext i16 %i.na to i32
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !34
  %i.ne = zext i8 %i.nd to i32
  %i.nf = mul nuw nsw i32 %i.ne, %.sroa.4.0.insert.ext
  %.lhs.trunc76.i = trunc nuw i32 %i.nf to i16
  %i.ng = udiv i16 %.lhs.trunc76.i, %.rhs.trunc.i375
  %i.nh = zext i16 %i.ng to i32
  %i.ni = load i8, ptr %i.lp, align 1, !tbaa !35
  %i.nj = zext i8 %i.ni to i32
  %i.nk = mul nuw nsw i32 %i.nj, %.sroa.0.0.insert.ext
  %.lhs.trunc79.i = trunc nuw i32 %i.nk to i16
  %i.nl = udiv i16 %.lhs.trunc79.i, %.rhs.trunc.i375
  %i.nm = zext i16 %i.nl to i32
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.nn = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !33
  %i.np = zext i8 %i.no to i32
  %i.nq = sub nsw i32 %i.np, %.sroa.5.0.insert.ext
  %i.nr = call i32 @llvm.abs.i32(i32 %i.nq, i1 true)
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !34
  %i.nu = zext i8 %i.nt to i32
  %i.nv = sub nsw i32 %i.nu, %.sroa.4.0.insert.ext
  %i.nw = call i32 @llvm.abs.i32(i32 %i.nv, i1 true)
  %i.nx = load i8, ptr %i.lp, align 1, !tbaa !35
  %i.ny = zext i8 %i.nx to i32
  %i.nz = sub nsw i32 %i.ny, %.sroa.0.0.insert.ext
  %i.oa = call i32 @llvm.abs.i32(i32 %i.nz, i1 true)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.sroa.11.0.i = phi i32 [ %i.ly, %bb.an ], [ %spec.select82.i, %bb.ao ], [ %i.nb, %bb.ap ], [ %i.nr, %bb.aq ]
  %.sroa.7.0.i = phi i32 [ %i.md, %bb.an ], [ %i.mq, %bb.ao ], [ %i.nh, %bb.ap ], [ %i.nw, %bb.aq ]
  %.sroa.013.0.i = phi i32 [ %i.mh, %bb.an ], [ %i.mu, %bb.ao ], [ %i.nm, %bb.ap ], [ %i.oa, %bb.aq ] ; 3 uses
  %.sroa.11.0.insert.ext.i = shl nuw i32 %.sroa.11.0.i, 16
  %.sroa.11.0.insert.shift.i = and i32 %.sroa.11.0.insert.ext.i, 16711680
  %.sroa.11.0.insert.insert.i = or disjoint i32 %.sroa.11.0.insert.shift.i, %.sroa.6.0.insert.shift ; 2 uses
  %.sroa.7.0.insert.ext.i = shl nuw nsw i32 %.sroa.7.0.i, 8
  %.sroa.7.0.insert.shift.i = and i32 %.sroa.7.0.insert.ext.i, 65280
  %.sroa.7.0.insert.insert.i = or disjoint i32 %.sroa.11.0.insert.insert.i, %.sroa.7.0.insert.shift.i ; 2 uses
  %.sroa.013.0.insert.ext.i = and i32 %.sroa.013.0.i, 255
  %.sroa.013.0.insert.insert.i = or disjoint i32 %.sroa.7.0.insert.insert.i, %.sroa.013.0.insert.ext.i ; 3 uses
  %i.ob = load i32, ptr %i.lp, align 1            ; 9 uses
  %.sroa.051.0.extract.trunc.i376 = trunc i32 %.sroa.013.0.i to i8
  %.sroa.658.0.extract.shift.i377 = lshr exact i32 %.sroa.7.0.insert.insert.i, 8 ; 2 uses
  %.sroa.658.0.extract.trunc.i378 = trunc i32 %.sroa.658.0.extract.shift.i377 to i8
  %.sroa.766.0.extract.shift.i379 = lshr exact i32 %.sroa.11.0.insert.insert.i, 16 ; 2 uses
  %.sroa.766.0.extract.trunc.i380 = trunc i32 %.sroa.766.0.extract.shift.i379 to i8
  %.sroa.6.0.extract.shift.i382 = lshr i32 %i.ob, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i383 = lshr i32 %i.ob, 16 ; 2 uses
  %.sroa.8.0.extract.shift.i384 = lshr i32 %i.ob, 24 ; 4 uses
  %i.oc = icmp ugt i8 %.sroa.6.0, -4
  %i.od = icmp ult i32 %i.ob, 50331648
  %or.cond.i385 = select i1 %i.oc, i1 true, i1 %i.od
  br i1 %or.cond.i385, label %lv_color_32_32_mix_premul.exit434, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.7.0.extract.trunc.i386 = trunc i32 %.sroa.7.0.extract.shift.i383 to i8
  %.sroa.6.0.extract.trunc.i387 = trunc i32 %.sroa.6.0.extract.shift.i382 to i8
  %.sroa.0.0.extract.trunc.i388 = trunc i32 %i.ob to i8
  %i.oe = icmp ult i8 %.sroa.6.0, 3
  br i1 %i.oe, label %lv_color_32_32_mix_premul.exit434, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.of = icmp eq i32 %.sroa.8.0.extract.shift.i384, 255
  br i1 %i.of, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.og = call i32 @lv_color_mix32_premultiplied(i32 %.sroa.013.0.insert.insert.i, i32 %i.ob) #7 ; 4 uses
  %.sroa.087.0.extract.trunc.i428 = trunc i32 %i.og to i8
  %.sroa.5.0.extract.shift.i429 = lshr i32 %i.og, 8
  %.sroa.5.0.extract.trunc.i430 = trunc i32 %.sroa.5.0.extract.shift.i429 to i8
  %.sroa.788.0.extract.shift.i431 = lshr i32 %i.og, 16
  %.sroa.788.0.extract.trunc.i432 = trunc i32 %.sroa.788.0.extract.shift.i431 to i8
  %.sroa.9.0.extract.shift.i433 = lshr i32 %i.og, 24
  br label %lv_color_32_32_mix_premul.exit434

bb.av:                                            ; preds = %bb.at
  %i.oh = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.oi = zext i8 %i.oh to i32
  %.not.i389 = icmp eq i32 %.sroa.8.0.extract.shift.i384, %i.oi
  %i.oj = load i8, ptr %i.ab, align 1
  %.not91.i427 = icmp eq i8 %.sroa.6.0, %i.oj
  %or.cond446 = select i1 %.not.i389, i1 %.not91.i427, i1 false
  br i1 %or.cond446, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ok = xor i32 %.sroa.6.0.insert.ext, 255
  %i.ol = xor i32 %.sroa.8.0.extract.shift.i384, 255
  %i.om = mul nuw nsw i32 %i.ol, %i.ok
  %i.on = lshr i32 %i.om, 8
  %i.oo = trunc nuw i32 %i.on to i8
  %i.op = xor i8 %i.oo, -1                        ; 2 uses
  store i8 %i.op, ptr %i.t, align 4, !tbaa !13
  %i.oq = zext i8 %.sroa.6.0 to i16
  %.lhs.trunc.i390 = mul nuw i16 %i.oq, 255
  %.rhs.trunc.i391 = zext i8 %i.op to i16
  %i.or = udiv i16 %.lhs.trunc.i390, %.rhs.trunc.i391
  %i.os = trunc i16 %i.or to i8
  store i8 %i.os, ptr %i.u, align 1, !tbaa !14
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.sroa.8.0.insert.shift43.i392 = and i32 %i.ob, -16777216
  %.sroa.7.0.insert.ext35.i393 = and i32 %.sroa.7.0.extract.shift.i383, 255 ; 2 uses
  %.sroa.7.0.insert.shift36.i394 = shl nuw nsw i32 %.sroa.7.0.insert.ext35.i393, 16
  %.sroa.7.0.insert.insert38.i395 = or disjoint i32 %.sroa.7.0.insert.shift36.i394, %.sroa.8.0.insert.shift43.i392
  %.sroa.6.0.insert.ext28.i396 = and i32 %.sroa.6.0.extract.shift.i382, 255 ; 2 uses
  %.sroa.6.0.insert.shift29.i397 = shl nuw nsw i32 %.sroa.6.0.insert.ext28.i396, 8
  %.sroa.6.0.insert.insert31.i398 = or disjoint i32 %.sroa.7.0.insert.insert38.i395, %.sroa.6.0.insert.shift29.i397
  %.sroa.0.0.insert.ext23.i399 = and i32 %i.ob, 255 ; 2 uses
  %.sroa.0.0.insert.insert25.i400 = or disjoint i32 %.sroa.6.0.insert.insert31.i398, %.sroa.0.0.insert.ext23.i399
  %i.ot = load i32, ptr %i.r, align 4
  %i.ou = call zeroext i1 @lv_color32_eq(i32 %.sroa.0.0.insert.insert25.i400, i32 %i.ot) #7
  br i1 %i.ou, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ov = load i32, ptr %2, align 4
  %i.ow = call zeroext i1 @lv_color32_eq(i32 %.sroa.013.0.insert.insert.i, i32 %i.ov) #7
  br i1 %i.ow, label %._crit_edge.i418, label %bb.az

._crit_edge.i418:                                 ; preds = %bb.ay
  %.sroa.087.0.copyload.pre.i420 = load i8, ptr %i.s, align 4, !tbaa !17
  %.sroa.5.0.copyload.pre.i422 = load i8, ptr %i.ad, align 1, !tbaa !17
  %.sroa.788.0.copyload.pre.i424 = load i8, ptr %i.ac, align 2, !tbaa !17
  %.sroa.9.0.copyload.pre.i426 = load i8, ptr %i.ae, align 1, !tbaa !17
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store i32 %.sroa.013.0.insert.insert.i, ptr %2, align 4
  store i32 %i.ob, ptr %i.r, align 4
  %i.ox = xor i32 %.sroa.6.0.insert.ext, 255      ; 3 uses
  %i.oy = mul nuw nsw i32 %.sroa.7.0.insert.ext35.i393, %i.ox
  %i.oz = lshr i32 %i.oy, 8
  %i.pa = add nuw nsw i32 %i.oz, %.sroa.766.0.extract.shift.i379
  %i.pb = trunc i32 %i.pa to i8                   ; 2 uses
  store i8 %i.pb, ptr %i.ac, align 2, !tbaa !18
  %i.pc = mul nuw nsw i32 %.sroa.6.0.insert.ext28.i396, %i.ox
  %i.pd = lshr i32 %i.pc, 8
  %i.pe = add nuw nsw i32 %i.pd, %.sroa.658.0.extract.shift.i377
  %i.pf = trunc i32 %i.pe to i8                   ; 2 uses
  store i8 %i.pf, ptr %i.ad, align 1, !tbaa !19
  %i.pg = mul nuw nsw i32 %.sroa.0.0.insert.ext23.i399, %i.ox
  %i.ph = lshr i32 %i.pg, 8
  %i.pi = add nuw nsw i32 %i.ph, %.sroa.013.0.i
  %i.pj = trunc i32 %i.pi to i8                   ; 2 uses
  store i8 %i.pj, ptr %i.s, align 4, !tbaa !20
  %i.pk = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.pk, ptr %i.ae, align 1, !tbaa !21
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i418
  %.sroa.9.0.copyload.i401 = phi i8 [ %.sroa.9.0.copyload.pre.i426, %._crit_edge.i418 ], [ %i.pk, %bb.az ]
  %.sroa.788.0.copyload.i402 = phi i8 [ %.sroa.788.0.copyload.pre.i424, %._crit_edge.i418 ], [ %i.pb, %bb.az ]
  %.sroa.5.0.copyload.i403 = phi i8 [ %.sroa.5.0.copyload.pre.i422, %._crit_edge.i418 ], [ %i.pf, %bb.az ]
  %.sroa.087.0.copyload.i404 = phi i8 [ %.sroa.087.0.copyload.pre.i420, %._crit_edge.i418 ], [ %i.pj, %bb.az ]
  %i.pl = zext i8 %.sroa.9.0.copyload.i401 to i32
  br label %lv_color_32_32_mix_premul.exit434

lv_color_32_32_mix_premul.exit434:                ; preds = %bb.ar, %bb.as, %bb.au, %bb.ba
  %.sroa.087.0.i405 = phi i8 [ %.sroa.087.0.copyload.i404, %bb.ba ], [ %.sroa.051.0.extract.trunc.i376, %bb.ar ], [ %.sroa.087.0.extract.trunc.i428, %bb.au ], [ %.sroa.0.0.extract.trunc.i388, %bb.as ]
  %.sroa.5.0.i406 = phi i8 [ %.sroa.5.0.copyload.i403, %bb.ba ], [ %.sroa.658.0.extract.trunc.i378, %bb.ar ], [ %.sroa.5.0.extract.trunc.i430, %bb.au ], [ %.sroa.6.0.extract.trunc.i387, %bb.as ]
  %.sroa.788.0.i407 = phi i8 [ %.sroa.788.0.copyload.i402, %bb.ba ], [ %.sroa.766.0.extract.trunc.i380, %bb.ar ], [ %.sroa.788.0.extract.trunc.i432, %bb.au ], [ %.sroa.7.0.extract.trunc.i386, %bb.as ]
  %.sroa.9.0.i408 = phi i32 [ %i.pl, %bb.ba ], [ %.sroa.6.0.insert.ext, %bb.ar ], [ %.sroa.9.0.extract.shift.i433, %bb.au ], [ %.sroa.8.0.extract.shift.i384, %bb.as ]
  %.sroa.9.0.insert.shift.i409 = shl nuw i32 %.sroa.9.0.i408, 24
  %.sroa.788.0.insert.ext.i410 = zext i8 %.sroa.788.0.i407 to i32
  %.sroa.788.0.insert.shift.i411 = shl nuw nsw i32 %.sroa.788.0.insert.ext.i410, 16
  %.sroa.788.0.insert.insert.i412 = or disjoint i32 %.sroa.9.0.insert.shift.i409, %.sroa.788.0.insert.shift.i411
  %.sroa.5.0.insert.ext.i413 = zext i8 %.sroa.5.0.i406 to i32
  %.sroa.5.0.insert.shift.i414 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i413, 8
  %.sroa.5.0.insert.insert.i415 = or disjoint i32 %.sroa.788.0.insert.insert.i412, %.sroa.5.0.insert.shift.i414
  %.sroa.087.0.insert.ext.i416 = zext i8 %.sroa.087.0.i405 to i32
  %.sroa.087.0.insert.insert.i417 = or disjoint i32 %.sroa.5.0.insert.insert.i415, %.sroa.087.0.insert.ext.i416
  store i32 %.sroa.087.0.insert.insert.i417, ptr %i.lp, align 1
  br label %blend_non_normal_pixel_premultiplied.exit

blend_non_normal_pixel_premultiplied.exit:        ; preds = %bb.am, %lv_color_32_32_mix_premul.exit434
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ai
  %exitcond.not = icmp eq i64 %indvars.iv.next576, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ak, !llvm.loop !91

._crit_edge:                                      ; preds = %blend_non_normal_pixel_premultiplied.exit
  %i.pm = getelementptr inbounds i8, ptr %.3234465, i64 %i.af
  %.4235 = select i1 %i.lg, ptr null, ptr %i.pm
  %i.pn = getelementptr inbounds nuw i8, ptr %.8250463, i64 %i.ag
  %i.po = getelementptr inbounds nuw i8, ptr %.8464, i64 %i.ah
  %i.pp = add nuw nsw i32 %.5466, 1               ; 2 uses
  %exitcond580.not = icmp eq i32 %i.pp, %i.d
  br i1 %exitcond580.not, label %.loopexit, label %.preheader458, !llvm.loop !92

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge543, %bb.e, %.preheader456, %bb.d, %.preheader455.lr.ph, %.preheader451.lr.ph, %.preheader459, %.preheader458.lr.ph, %.preheader.lr.ph, %.loopexit450
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lv_color_mix32_premultiplied(i32, i32) local_unnamed_addr #2

declare zeroext i1 @lv_color32_eq(i32, i32) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!11 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!12 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !4, i64 12, !4, i64 13}
!13 = !{!12, !4, i64 12}
!14 = !{!12, !4, i64 13}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!12, !4, i64 7}
!17 = !{!4, !4, i64 0}
!18 = !{!12, !4, i64 10}
!19 = !{!12, !4, i64 9}
!20 = !{!12, !4, i64 8}
!21 = !{!12, !4, i64 11}
!22 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!23 = !{!22, !5, i64 8}
!24 = !{!22, !5, i64 12}
!25 = !{!22, !4, i64 56}
!26 = !{!22, !8, i64 0}
!27 = !{!22, !5, i64 16}
!28 = !{!22, !8, i64 40}
!29 = !{!22, !5, i64 48}
!30 = !{!22, !9, i64 24}
!31 = !{!22, !5, i64 32}
!32 = !{!22, !5, i64 60}
!33 = !{!11, !4, i64 2}
!34 = !{!11, !4, i64 1}
!35 = !{!11, !4, i64 0}
!36 = !{!11, !4, i64 3}
!37 = distinct !{!37, !15, !58, !59}
!38 = distinct !{!38, !15, !59, !58}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15, !58, !59}
!41 = distinct !{!41, !15, !59, !58}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!49 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !48, i64 36, !4, i64 39, !10, i64 40}
!50 = !{!49, !5, i64 8}
!51 = !{!49, !5, i64 12}
!52 = !{!49, !4, i64 39}
!53 = !{!49, !9, i64 24}
!54 = !{!49, !5, i64 32}
!55 = !{!49, !5, i64 16}
!56 = !{!49, !8, i64 0}
!57 = !{!5, !5, i64 0}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!12, !4, i64 3}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15}
!81 = !{!22, !5, i64 52}
!82 = distinct !{!82, !15}
!83 = distinct !{!83, !15}
!84 = distinct !{!84, !15}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, !15}
!87 = distinct !{!87, !15}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15}
!90 = distinct !{!90, !15}
!91 = distinct !{!91, !15}
!92 = distinct !{!92, !15}
end_hunk_3
