Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/raster?download=true
inline.NumInlined: 19
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FT_Module_Class_ = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr }
%struct.black_TWorker_ = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i64, i64, i64, i64, i16, i32, ptr, ptr, ptr, i32, %struct.FT_Outline_, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Outline_ = type { i16, i16, ptr, ptr, ptr, i32 }
%struct.FT_Raster_Params_ = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.FT_BBox_ }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.TPoint_ = type { i64, i64 }

@ft_standard_raster = hidden constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { i32 1869968492, [4 x i8] zeroinitializer, ptr @ft_black_new, ptr @ft_black_reset, ptr @ft_black_set_mode, ptr @ft_black_render, ptr @ft_black_done }, align 8
@.str = private unnamed_addr constant [8 x i8] c"raster1\00", align 1
@ft_raster1_renderer_class = hidden local_unnamed_addr constant { %struct.FT_Module_Class_, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { %struct.FT_Module_Class_ { i64 2, i64 128, ptr @.str, i64 65536, i64 131072, ptr null, ptr @ft_raster1_init, ptr null, ptr null }, i32 1869968492, [4 x i8] zeroinitializer, ptr @ft_raster1_render, ptr @ft_raster1_transform, ptr @ft_raster1_get_cbox, ptr @ft_raster1_set_mode, ptr @ft_standard_raster }, align 8

; Function Attrs: nounwind uwtable
define internal i32 @ft_black_new(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call ptr @ft_mem_alloc(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ft_black_reset(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ft_black_set_mode(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ft_black_render(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca [1 x %struct.black_TWorker_], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !18     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq ptr %i.b, null
  br i1 %.not28, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !105  ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i16 %i.e, 0
  br i1 %i.g, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i16, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %i.i = zext i16 %i.h to i64
  %i.j = icmp eq i16 %i.h, 0
  br i1 %i.j, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !107  ; 2 uses
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !108
  %.not30 = icmp eq ptr %i.n, null
  br i1 %.not30, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = add nuw nsw i64 %i.i, 4294967295
  %4 = and i64 %3, 4294967295
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %4
  %i.o = load i16, ptr %5, align 2, !tbaa !24
  %i.p = zext i16 %i.o to i32
  %i.q = add nuw nsw i32 %i.p, 1
  %.not31 = icmp eq i32 %i.q, %i.f
  br i1 %.not31, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !25
  %i.t = and i32 %i.s, 3
  %or.cond = icmp eq i32 %i.t, 0
  br i1 %or.cond, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !109  ; 2 uses
  %.not35 = icmp eq i32 %i.v, 0
  br i1 %.not35, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load i32, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not36 = icmp eq i32 %i.w, 0
  br i1 %.not36, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %.not37 = icmp eq ptr %i.y, null
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !tbaa.struct !113
  %i.aa = add nsw i32 %i.w, -1                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i32 %i.aa, ptr %i.ab, align 16, !tbaa !32
  %i.ac = add nsw i32 %i.v, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 180
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !34 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ai = icmp sgt i32 %i.af, 0
  %i.aj = mul nsw i32 %i.af, %i.aa
  %narrow = select i1 %i.ai, i32 %i.aj, i32 0
  %storemerge.idx = sext i32 %narrow to i64
  %storemerge = getelementptr inbounds i8, ptr %i.y, i64 %storemerge.idx
  store ptr %storemerge, ptr %i.ah, align 16, !tbaa !36
  %i.ak = call fastcc i32 @Render_Glyph(ptr noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.j, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e, %bb.f, %bb.c, %bb.d, %bb.b, %bb.a, %bb.m
  %.0 = phi i32 [ 20, %bb.b ], [ 20, %bb.e ], [ 20, %bb.g ], [ %i.ak, %bb.m ], [ 0, %bb.j ], [ 6, %bb.i ], [ 19, %bb.h ], [ 0, %bb.c ], [ 96, %bb.a ], [ 0, %bb.d ], [ 20, %bb.f ], [ 0, %bb.k ], [ 6, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ft_black_done(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ft_raster1_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  tail call void %i.f(ptr noundef %i.h, ptr noundef null, i64 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ft_raster1_render(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %4 = alloca %struct.FT_Raster_Params_, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !61
  %.not = icmp eq i32 %i.g, %i.i
  br i1 %.not, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %.not55 = icmp eq i32 %2, 2
  br i1 %.not55, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !120
  %i.n = and i32 %i.m, 1
  %.not56 = icmp eq i32 %i.n, 0
  br i1 %.not56, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  tail call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.p) #10
  store ptr null, ptr %i.o, align 8, !tbaa !28
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !116
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !120
  %i.t = and i32 %i.s, -2
  store i32 %i.t, ptr %i.r, align 8, !tbaa !120
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = tail call zeroext i8 @ft_glyphslot_preset_bitmap(ptr noundef nonnull %1, i32 noundef 2, ptr noundef %3) #10
  %.not57 = icmp eq i8 %i.u, 0
  br i1 %.not57, label %bb.f, label %.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.w = load i32, ptr %i.v, align 8, !tbaa !34
  %i.x = sext i32 %i.w to i64
  %i.y = load i32, ptr %i.c, align 8, !tbaa !27
  %i.z = zext i32 %i.y to i64
  %i.aa = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef %i.x, i64 noundef 0, i64 noundef %i.z, ptr noundef null, ptr noundef nonnull %i.a) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !28
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !9
  %.not58 = icmp eq i32 %i.ac, 0
  br i1 %.not58, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !116
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !120
  %i.ag = or i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !120
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !121
  %.neg = mul i32 %i.ai, -64
  %i.aj = sext i32 %.neg to i64                   ; 2 uses
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.am = load i32, ptr %i.al, align 4, !tbaa !122
  %i.an = sub nsw i32 %i.ak, %i.am
  %i.ao = shl nsw i32 %i.an, 6
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %.not59 = icmp eq ptr %3, null
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load i64, ptr %3, align 8, !tbaa !62
  %i.ar = add nsw i64 %i.aq, %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !63
  %i.au = add nsw i64 %i.at, %i.ap
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.050 = phi i64 [ %i.ar, %bb.h ], [ %i.aj, %bb.g ] ; 4 uses
  %.0 = phi i64 [ %i.au, %bb.h ], [ %i.ap, %bb.g ] ; 4 uses
  %i.av = icmp ne i64 %.050, 0
  %i.aw = icmp ne i64 %.0, 0
  %or.cond = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @FT_Outline_Translate(ptr noundef nonnull %i.b, i64 noundef %.050, i64 noundef %.0) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %i.c, ptr %4, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.ax, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ay, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !123
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !51
  %i.bd = call i32 %i.ba(ptr noundef %i.bc, ptr noundef nonnull %4) #10 ; 2 uses
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !9
  %.not60 = icmp eq i32 %i.bd, 0
  br i1 %.not60, label %bb.l, label %.thread
end_hunk_0
begin_hunk_1_@Vertical_Sweep_Span:bb.a
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !76
  %i.af = trunc nuw i32 %i.v to i8
  %i.ag = or i8 %i.ae, %i.af
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !76
  %.not41 = icmp eq i32 %i.ac, 1
  br i1 %.not41, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %i.z, i64 %i.aa
  %scevgep = getelementptr i8, ptr %i.ah, i64 1
  %i.ai = add nsw i32 %i.t, -2
  %i.aj = sub nsw i32 %i.ai, %i.s
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 -1, i64 %i.al, i1 false), !tbaa !76
  %i.am = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ak
  %scevgep43 = getelementptr i8, ptr %i.an, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.d
  %.032.lcssa = phi ptr [ %i.ab, %bb.d ], [ %scevgep43, %.lr.ph.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.032.lcssa, i64 1 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !76
  %i.aq = trunc nsw i32 %i.x to i8
  %i.ar = or i8 %i.ap, %i.aq
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !76
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.as = and i32 %i.x, %i.v
  %i.at = load i8, ptr %i.ab, align 1, !tbaa !76
  %i.au = trunc nuw i32 %i.as to i8
  %i.av = or i8 %i.at, %i.au
  store i8 %i.av, ptr %i.ab, align 1, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Vertical_Sweep_Drop(ptr nofree noundef readonly captures(none) %0, i32 %1, i64 noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !66
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = ashr i64 %2, %i.b
  %i.d = trunc i64 %i.c to i32                    ; 4 uses
  %i.e = ashr i64 %3, %i.b                        ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 5 uses
  %i.g = icmp slt i32 %i.d, 0
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33   ; 4 uses
  %i.j = icmp slt i32 %i.i, %i.d
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.f, 0
  %.not = icmp slt i32 %i.i, %i.f
  %or.cond = or i1 %i.k, %.not
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %i.e, 3
  %i.m = and i32 %i.f, 7
  %i.n = lshr exact i32 128, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.q = and i64 %i.l, 268435455
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !76
  %i.t = zext i8 %i.s to i32
  %i.u = and i32 %i.n, %i.t
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %.thread, label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.v = icmp sgt i32 %i.f, -1
  br i1 %i.v, label %..thread_crit_edge, label %bb.g

..thread_crit_edge:                               ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 180
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !33
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.c
  %i.w = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  %.030 = phi i32 [ %i.f, %..thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %bb.d ] ; 3 uses
  %.not28 = icmp sgt i32 %.030, %i.w
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.x = lshr i32 %.030, 3
  %i.y = and i32 %.030, 7
  %i.z = lshr exact i32 128, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !76
  %i.af = trunc nuw i32 %i.z to i8
  %i.ag = or i8 %i.ae, %i.af
  store i8 %i.ag, ptr %i.ad, align 1, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.thread, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @Vertical_Sweep_Step(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = sext i32 %i.b to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  store ptr %i.g, ptr %i.c, align 8, !tbaa !75
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Render_Single_Pass(ptr noundef nonnull initializes((40, 60), (80, 98), (100, 120)) %0, i8 noundef signext range(i8 0, 2) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca [32 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not.i.i = icmp eq i8 %1, 0                    ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %.outer

.outer:                                           ; preds = %bb.by, %bb.a
  %.026.ph = phi i32 [ %i.ok, %bb.by ], [ 0, %bb.a ]
  %.024.ph = phi i32 [ %i.oh, %bb.by ], [ %2, %bb.a ] ; 3 uses
  %.0.ph = phi i32 [ %i.og, %bb.by ], [ 0, %bb.a ]
  %i.af = sext i32 %.024.ph to i64
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.aq
  %.026 = phi i32 [ %i.io, %bb.aq ], [ %.026.ph, %.outer ] ; 5 uses
  %.0 = phi i32 [ %i.il, %bb.aq ], [ %.0.ph, %.outer ] ; 4 uses
  %i.ag = sext i32 %.026 to i64
  %i.ah = load i32, ptr %i.e, align 4, !tbaa !68
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = mul nsw i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.f, align 8, !tbaa !77
  %i.ak = mul nsw i64 %i.ai, %i.af
  store i64 %i.ak, ptr %i.g, align 8, !tbaa !78
  store i32 0, ptr %i.h, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !64
  store ptr %i.al, ptr %i.l, align 8, !tbaa !80
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  store ptr %i.an, ptr %i.n, align 8, !tbaa !81
  store i32 0, ptr %i.o, align 4, !tbaa !82
  store i16 0, ptr %i.p, align 8, !tbaa !83
  %i.ao = load i16, ptr %i.q, align 8, !tbaa !138
  %.not97.i = icmp eq i16 %i.ao, 0
  br i1 %.not97.i, label %Convert_Glyph.exit.thread45, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.aj
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aj ], [ 0, %bb.b ] ; 2 uses
  %.096.i = phi i64 [ %i.at, %bb.aj ], [ 4294967295, %bb.b ]
  store i32 0, ptr %i.r, align 8, !tbaa !84
  store ptr null, ptr %i.s, align 8, !tbaa !85
  %i.ap = add nuw nsw i64 %.096.i, 1
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !139
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !24
  %i.at = zext i16 %i.as to i64                   ; 3 uses
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !140 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.at ; 5 uses
  %3 = and i64 %i.ap, 4294967295                  ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %3 ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !62
  %i.ay = load i32, ptr %i.v, align 4, !tbaa !70
  %i.az = sext i32 %i.ay to i64                   ; 4 uses
  %i.ba = mul nsw i64 %i.ax, %i.az
  %i.bb = load i32, ptr %i.w, align 8, !tbaa !69
  %i.bc = sext i32 %i.bb to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !63
  %i.bg = mul nsw i64 %i.bf, %i.az
  %i.bh = sub nsw i64 %i.bg, %i.bc                ; 2 uses
  %i.bi = load i64, ptr %i.av, align 8, !tbaa !62
  %i.bj = mul nsw i64 %i.bi, %i.az
  %i.bk = sub nsw i64 %i.bj, %i.bc                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !63
  %i.bn = mul nsw i64 %i.bm, %i.az
  %i.bo = sub nsw i64 %i.bn, %i.bc                ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.084.0.i.i = phi i64 [ %i.bh, %bb.c ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %.sroa.13.0.i.i = phi i64 [ %i.bd, %bb.c ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %.sroa.0107.0.i.i = phi i64 [ %i.bo, %bb.c ], [ %i.bk, %.lr.ph.i ] ; 2 uses
  %.sroa.7.0.i.i = phi i64 [ %i.bk, %bb.c ], [ %i.bo, %.lr.ph.i ] ; 2 uses
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !141 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %3 ; 4 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !76  ; 3 uses
  %i.bs = and i8 %i.br, 4
  %.not197.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not197.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bt = lshr i8 %i.br, 5
  store i8 %i.bt, ptr %i.y, align 4, !tbaa !86
  %.pre.i.i = load i8, ptr %i.bq, align 1, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bu = phi i8 [ %.pre.i.i, %bb.e ], [ %i.br, %bb.d ]
  %i.bv = and i8 %i.bu, 3
  switch i8 %i.bv, label %bb.k [
    i8 2, label %.thread
    i8 0, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.at
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !76
  %i.by = and i8 %i.bx, 3
  %i.bz = icmp eq i8 %i.by, 1
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds i8, ptr %i.av, i64 -16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cb = add nsw i64 %.sroa.0107.0.i.i, %.sroa.084.0.i.i
  %i.cc = sdiv i64 %i.cb, 2
  %i.cd = add nsw i64 %.sroa.7.0.i.i, %.sroa.13.0.i.i
  %i.ce = sdiv i64 %i.cd, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0187.i.i = phi ptr [ %i.ca, %bb.h ], [ %i.av, %bb.i ]
  %.sroa.084.1.i.i = phi i64 [ %.sroa.0107.0.i.i, %bb.h ], [ %i.cc, %bb.i ]
  %.sroa.13.1.i.i = phi i64 [ %.sroa.7.0.i.i, %bb.h ], [ %i.ce, %bb.i ]
  %i.cf = getelementptr inbounds i8, ptr %i.aw, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %i.bq, i64 -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.0189.i.i = phi ptr [ %i.cf, %bb.j ], [ %i.aw, %bb.f ] ; 2 uses
  %.1188.i.i = phi ptr [ %.0187.i.i, %bb.j ], [ %i.av, %bb.f ] ; 6 uses
  %.0184.i.i = phi ptr [ %i.cg, %bb.j ], [ %i.bq, %bb.f ]
  %.sroa.084.2.i.i = phi i64 [ %.sroa.084.1.i.i, %bb.j ], [ %.sroa.084.0.i.i, %bb.f ] ; 4 uses
  %.sroa.13.2.i.i = phi i64 [ %.sroa.13.1.i.i, %bb.j ], [ %.sroa.13.0.i.i, %bb.f ] ; 4 uses
  store i64 %.sroa.084.2.i.i, ptr %i.z, align 8, !tbaa !87
  store i64 %.sroa.13.2.i.i, ptr %i.aa, align 8, !tbaa !88
  %i.ch = icmp ult ptr %.0189.i.i, %.1188.i.i
  br i1 %i.ch, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.backedge.i.i
  %.1185262.i.i = phi ptr [ %.1185.be.i.i, %.backedge.i.i ], [ %.0184.i.i, %bb.k ] ; 3 uses
  %.1190261.i.i = phi ptr [ %.1190.be.i.i, %.backedge.i.i ], [ %.0189.i.i, %bb.k ] ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1190261.i.i, i64 16 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1185262.i.i, i64 1 ; 4 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !76
  %i.cl = and i8 %i.ck, 3
  switch i8 %i.cl, label %bb.t [
    i8 1, label %bb.l
    i8 0, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.cm = load i64, ptr %i.ci, align 8, !tbaa !62
  %i.cn = load i32, ptr %i.v, align 4, !tbaa !70
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = mul nsw i64 %i.cm, %i.co
  %i.cq = load i32, ptr %i.w, align 8, !tbaa !69
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = sub nsw i64 %i.cp, %i.cr                ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.1190261.i.i, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !63
  %i.cv = mul nsw i64 %i.cu, %i.co
  %i.cw = sub nsw i64 %i.cv, %i.cr                ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.cs, i64 %i.cw
  %spec.select208.i.i = select i1 %.not.i.i, i64 %i.cw, i64 %i.cs
  %i.cx = tail call fastcc signext i8 @Line_To(ptr noundef nonnull %0, i64 noundef %spec.select.i.i, i64 noundef %spec.select208.i.i)
  %.not203.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not203.i.i, label %.backedge.i.i, label %.loopexit

.backedge.i.i:                                    ; preds = %bb.y, %bb.r, %bb.p, %bb.l
  %.1190.be.i.i = phi ptr [ %i.fi, %bb.y ], [ %i.ci, %bb.l ], [ %i.dl, %bb.p ], [ %i.eh, %bb.r ] ; 2 uses
  %.1185.be.i.i = phi ptr [ %i.fj, %bb.y ], [ %i.cj, %bb.l ], [ %i.dm, %bb.p ], [ %i.ei, %bb.r ]
  %i.cy = icmp ult ptr %.1190.be.i.i, %.1188.i.i
  br i1 %i.cy, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.cz = load i64, ptr %i.ci, align 8, !tbaa !62
  %i.da = load i32, ptr %i.v, align 4, !tbaa !70
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = mul nsw i64 %i.cz, %i.db
  %i.dd = load i32, ptr %i.w, align 8, !tbaa !69
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = sub nsw i64 %i.dc, %i.de                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1190261.i.i, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !63
  %i.di = mul nsw i64 %i.dh, %i.db
  %i.dj = sub nsw i64 %i.di, %i.de                ; 2 uses
  br i1 %.not.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.m, %bb.o
  %.2191.us.i.i = phi ptr [ %i.dl, %bb.o ], [ %i.ci, %bb.m ] ; 3 uses
  %.2186.us.i.i = phi ptr [ %i.dm, %bb.o ], [ %i.cj, %bb.m ]
  %.sroa.098.1.us.i.i = phi i64 [ %i.dv, %bb.o ], [ %i.df, %bb.m ] ; 4 uses
  %.sroa.11.1.us.i.i = phi i64 [ %i.dz, %bb.o ], [ %i.dj, %bb.m ] ; 4 uses
  %i.dk = icmp ult ptr %.2191.us.i.i, %.1188.i.i
  br i1 %i.dk, label %bb.n, label %.split257.us.i.i

bb.n:                                             ; preds = %.split.us.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.2191.us.i.i, i64 16 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.2186.us.i.i, i64 1 ; 3 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !76
  %i.do = and i8 %i.dn, 3
  %i.dp = load i64, ptr %i.dl, align 8, !tbaa !62
  %i.dq = load i32, ptr %i.v, align 4, !tbaa !70
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  %i.ds = mul nsw i64 %i.dp, %i.dr
  %i.dt = load i32, ptr %i.w, align 8, !tbaa !69
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = sub nsw i64 %i.ds, %i.du                ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.2191.us.i.i, i64 24
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !63
  %i.dy = mul nsw i64 %i.dx, %i.dr
  %i.dz = sub nsw i64 %i.dy, %i.du                ; 3 uses
  switch i8 %i.do, label %.thread [
    i8 1, label %bb.p
    i8 0, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ea = add nsw i64 %i.dv, %.sroa.098.1.us.i.i
  %i.eb = sdiv i64 %i.ea, 2
  %i.ec = add nsw i64 %i.dz, %.sroa.11.1.us.i.i
  %i.ed = sdiv i64 %i.ec, 2
  %i.ee = tail call fastcc signext i8 @Conic_To(ptr noundef nonnull %0, i64 noundef %.sroa.098.1.us.i.i, i64 noundef %.sroa.11.1.us.i.i, i64 noundef %i.eb, i64 noundef %i.ed)
  %.not201.us.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not201.us.i.i, label %.split.us.i.i, label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.ef = tail call fastcc signext i8 @Conic_To(ptr noundef nonnull %0, i64 noundef %.sroa.098.1.us.i.i, i64 noundef %.sroa.11.1.us.i.i, i64 noundef %i.dv, i64 noundef %i.dz)
  %.not202.us.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not202.us.i.i, label %.backedge.i.i, label %.loopexit, !llvm.loop !126

.split.i.i:                                       ; preds = %bb.m, %bb.s
  %.2191.i.i = phi ptr [ %i.eh, %bb.s ], [ %i.ci, %bb.m ] ; 3 uses
  %.2186.i.i = phi ptr [ %i.ei, %bb.s ], [ %i.cj, %bb.m ]
  %.sroa.098.1.i.i = phi i64 [ %i.ev, %bb.s ], [ %i.dj, %bb.m ] ; 4 uses
  %.sroa.11.1.i.i = phi i64 [ %i.er, %bb.s ], [ %i.df, %bb.m ] ; 4 uses
  %i.eg = icmp ult ptr %.2191.i.i, %.1188.i.i
  br i1 %i.eg, label %bb.q, label %.split257.us.i.i

bb.q:                                             ; preds = %.split.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.2191.i.i, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.2186.i.i, i64 1 ; 3 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !76
  %i.ek = and i8 %i.ej, 3
  %i.el = load i64, ptr %i.eh, align 8, !tbaa !62
  %i.em = load i32, ptr %i.v, align 4, !tbaa !70
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = mul nsw i64 %i.el, %i.en
  %i.ep = load i32, ptr %i.w, align 8, !tbaa !69
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = sub nsw i64 %i.eo, %i.eq                ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.2191.i.i, i64 24
  %i.et = load i64, ptr %i.es, align 8, !tbaa !63
  %i.eu = mul nsw i64 %i.et, %i.en
  %i.ev = sub nsw i64 %i.eu, %i.eq                ; 3 uses
  switch i8 %i.ek, label %.thread [
    i8 1, label %bb.r
    i8 0, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ew = tail call fastcc signext i8 @Conic_To(ptr noundef nonnull %0, i64 noundef %.sroa.098.1.i.i, i64 noundef %.sroa.11.1.i.i, i64 noundef %i.ev, i64 noundef %i.er)
  %.not202.i.i = icmp eq i8 %i.ew, 0
  br i1 %.not202.i.i, label %.backedge.i.i, label %.loopexit, !llvm.loop !126

bb.s:                                             ; preds = %bb.q
  %i.ex = add nsw i64 %i.ev, %.sroa.098.1.i.i
  %i.ey = sdiv i64 %i.ex, 2
  %i.ez = add nsw i64 %i.er, %.sroa.11.1.i.i
  %i.fa = sdiv i64 %i.ez, 2
  %i.fb = tail call fastcc signext i8 @Conic_To(ptr noundef nonnull %0, i64 noundef %.sroa.098.1.i.i, i64 noundef %.sroa.11.1.i.i, i64 noundef %i.ey, i64 noundef %i.fa)
  %.not201.i.i = icmp eq i8 %i.fb, 0
  br i1 %.not201.i.i, label %.split.i.i, label %.loopexit

.split257.us.i.i:                                 ; preds = %.split.i.i, %.split.us.i.i
  %.us-phi.i.i = phi i64 [ %.sroa.098.1.us.i.i, %.split.us.i.i ], [ %.sroa.098.1.i.i, %.split.i.i ]
  %.us-phi258.i.i = phi i64 [ %.sroa.11.1.us.i.i, %.split.us.i.i ], [ %.sroa.11.1.i.i, %.split.i.i ]
  %i.fc = tail call fastcc signext i8 @Conic_To(ptr noundef nonnull %0, i64 noundef %.us-phi.i.i, i64 noundef %.us-phi258.i.i, i64 noundef %.sroa.084.2.i.i, i64 noundef %.sroa.13.2.i.i)
  %.not199.i.i = icmp eq i8 %i.fc, 0
  br i1 %.not199.i.i, label %bb.aa, label %.loopexit

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.1190261.i.i, i64 32 ; 2 uses
  %i.fe = icmp ugt ptr %i.fd, %.1188.i.i
  br i1 %i.fe, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ff = getelementptr inbounds nuw i8, ptr %.1185262.i.i, i64 2
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !76
  %i.fh = and i8 %i.fg, 3
  %.not204.i.i = icmp eq i8 %i.fh, 2
  br i1 %.not204.i.i, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw i8, ptr %.1190261.i.i, i64 48 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.1185262.i.i, i64 3
  %i.fk = load i64, ptr %i.ci, align 8, !tbaa !62
  %i.fl = load i32, ptr %i.v, align 4, !tbaa !70
  %i.fm = sext i32 %i.fl to i64                   ; 6 uses
  %i.fn = mul nsw i64 %i.fk, %i.fm
  %i.fo = load i32, ptr %i.w, align 8, !tbaa !69
  %i.fp = sext i32 %i.fo to i64                   ; 6 uses
  %i.fq = sub nsw i64 %i.fn, %i.fp                ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.1190261.i.i, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !63
  %i.ft = mul nsw i64 %i.fs, %i.fm
  %i.fu = sub nsw i64 %i.ft, %i.fp                ; 2 uses
  %i.fv = load i64, ptr %i.fd, align 8, !tbaa !62
  %i.fw = mul nsw i64 %i.fv, %i.fm
  %i.fx = sub nsw i64 %i.fw, %i.fp                ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.1190261.i.i, i64 40
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !63
  %i.ga = mul nsw i64 %i.fz, %i.fm
  %i.gb = sub nsw i64 %i.ga, %i.fp                ; 2 uses
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0178.i.i = phi i64 [ %i.fu, %bb.w ], [ %i.fq, %bb.v ] ; 2 uses
  %.0177.i.i = phi i64 [ %i.fq, %bb.w ], [ %i.fu, %bb.v ] ; 2 uses
  %.0176.i.i = phi i64 [ %i.gb, %bb.w ], [ %i.fx, %bb.v ] ; 2 uses
  %.0175.i.i = phi i64 [ %i.fx, %bb.w ], [ %i.gb, %bb.v ] ; 2 uses
  %.not205.i.i = icmp ugt ptr %i.fi, %.1188.i.i
end_hunk_1
