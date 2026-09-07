Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/raster?download=true
inline.NumInlined: 19
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ft_raster1_transform:bb.a
  %.not12 = icmp eq ptr %3, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = load i64, ptr %3, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63
  tail call void @FT_Outline_Translate(ptr noundef nonnull %i.f, i64 noundef %i.g, i64 noundef %i.i) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 6, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ft_raster1_get_cbox(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 32)) %2) #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @FT_Outline_Get_CBox(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ft_raster1_set_mode(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = tail call i32 %i.f(ptr noundef %i.h, i64 noundef %1, ptr noundef %2) #10
  ret i32 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Render_Glyph(ptr noundef nonnull initializes((0, 20), (24, 61), (80, 98), (100, 120), (208, 240)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i64], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.b, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16384
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !125  ; 3 uses
  %i.g = and i32 %i.f, 256
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i32, ptr %i.h, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33
  %i.l = add nsw i32 %i.k, %i.i
  %i.m = icmp slt i32 %i.l, 256
  br i1 %i.m, label %Set_High_Precision.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %Set_High_Precision.exit

Set_High_Precision.exit:                          ; preds = %bb.b, %bb.c
  %.sink13.i = phi i32 [ 6, %bb.c ], [ 12, %bb.b ] ; 2 uses
  %.sink.i = phi i32 [ 32, %bb.c ], [ 256, %bb.b ]
  store i32 %.sink13.i, ptr %0, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink.i, ptr %i.n, align 8, !tbaa !67
  %i.o = shl nuw nsw i32 1, %.sink13.i            ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.o, ptr %i.p, align 4, !tbaa !68
  %i.q = lshr exact i32 %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !69
  %i.s = lshr i32 %i.o, 6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.v = trunc i32 %i.f to i8
  %i.w = lshr i8 %i.v, 2
  %spec.select = and i8 %i.w, 6
  %i.x = and i32 %i.f, 32
  %.not31 = icmp eq i32 %i.x, 0
  %i.y = zext i1 %.not31 to i8
  %spec.select37 = or disjoint i8 %spec.select, %i.y
  store i8 %spec.select37, ptr %i.u, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr @Vertical_Sweep_Init, ptr %i.z, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr @Vertical_Sweep_Span, ptr %i.aa, align 8, !tbaa !72
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr @Vertical_Sweep_Drop, ptr %i.ab, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr @Vertical_Sweep_Step, ptr %i.ac, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.af = call fastcc i32 @Render_Single_Pass(ptr noundef %0, i8 noundef signext 0, i32 noundef %i.ae) ; 2 uses
  %.not32 = icmp eq i32 %i.af, 0
  br i1 %.not32, label %bb.d, label %bb.g

bb.d:                                             ; preds = %Set_High_Precision.exit
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !125
  %i.ah = and i32 %i.ag, 512
  %.not33 = icmp eq i32 %i.ah, 0
  br i1 %.not33, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @Horizontal_Sweep_Init, ptr %i.z, align 8, !tbaa !71
  store ptr @Horizontal_Sweep_Span, ptr %i.aa, align 8, !tbaa !72
  store ptr @Horizontal_Sweep_Drop, ptr %i.ab, align 8, !tbaa !73
  store ptr @Horizontal_Sweep_Step, ptr %i.ac, align 8, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ak = call fastcc i32 @Render_Single_Pass(ptr noundef %0, i8 noundef signext 1, i32 noundef %i.aj) ; 2 uses
  %.not34 = icmp eq i32 %i.ak, 0
  br i1 %.not34, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %Set_High_Precision.exit, %bb.f
  %.0 = phi i32 [ %i.af, %Set_High_Precision.exit ], [ 0, %bb.f ], [ %i.ak, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @Vertical_Sweep_Init(ptr nofree noundef captures(none) initializes((200, 208)) %0, i32 noundef %1, i32 %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35
  %i.e = mul nsw i32 %i.d, %1
  %i.f = sext i32 %i.e to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.h, ptr %i.i, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Vertical_Sweep_Span(ptr nofree noundef readonly captures(none) %0, i32 %1, i64 noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = add i64 %2, -1
  %i.e = add i64 %i.d, %i.c
  %i.f = sub nsw i32 0, %i.b
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = and i64 %i.e, %i.g
  %i.i = load i32, ptr %0, align 8, !tbaa !66
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = ashr i64 %i.h, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = and i64 %3, %i.g
  %i.n = ashr i64 %i.m, %i.j
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33   ; 2 uses
  %.not = icmp slt i32 %i.r, %i.l
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0) ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.o) ; 2 uses
  %i.s = lshr i32 %spec.store.select, 3           ; 2 uses
  %i.t = ashr i32 %spec.select, 3
  %i.u = and i32 %spec.store.select, 7
  %i.v = lshr i32 255, %i.u                       ; 2 uses
  %i.w = and i32 %spec.select, 7
  %i.x = ashr exact i32 -128, %i.w                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75   ; 3 uses
  %i.aa = zext nneg i32 %i.s to i64               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 5 uses
  %i.ac = sub nsw i32 %i.t, %i.s                  ; 3 uses
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
  %i.ai = add nsw i32 %i.ac, -2
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 -1, i64 %i.ak, i1 false), !tbaa !76
  %i.al = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.am = getelementptr i8, ptr %i.al, i64 %i.aj
  %scevgep43 = getelementptr i8, ptr %i.am, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.d
  %.032.lcssa = phi ptr [ %i.ab, %bb.d ], [ %scevgep43, %.lr.ph.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.032.lcssa, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !76
  %i.ap = trunc nsw i32 %i.x to i8
  %i.aq = or i8 %i.ao, %i.ap
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !76
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ar = and i32 %i.x, %i.v
  %i.as = load i8, ptr %i.ab, align 1, !tbaa !76
  %i.at = trunc nuw i32 %i.ar to i8
  %i.au = or i8 %i.as, %i.at
  store i8 %i.au, ptr %i.ab, align 1, !tbaa !76
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
  %.096.i = phi i64 [ %i.at, %bb.aj ], [ -1, %bb.b ] ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !84
  store ptr null, ptr %i.s, align 8, !tbaa !85
  %i.ap = add nsw i64 %.096.i, 1                  ; 2 uses
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !139
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !24
  %i.at = zext i16 %i.as to i64                   ; 3 uses
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !140 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.at ; 5 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ap ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !62
  %i.ay = load i32, ptr %i.v, align 4, !tbaa !70
  %i.az = sext i32 %i.ay to i64                   ; 4 uses
  %i.ba = mul nsw i64 %i.ax, %i.az
  %i.bb = load i32, ptr %i.w, align 8, !tbaa !69
  %i.bc = sext i32 %i.bb to i64                   ; 4 uses
end_hunk_0
