Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@FT_Outline_New:bb.a
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !142 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.aq, null
  br i1 %.not.i21.i, label %ft_mem_free.exit22.i, label %bb.m

bb.m:                                             ; preds = %ft_mem_free.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !127
  tail call void %i.as(ptr noundef nonnull %i.al, ptr noundef nonnull %i.aq) #30, !inline_history !576
  br label %ft_mem_free.exit22.i

ft_mem_free.exit22.i:                             ; preds = %bb.m, %ft_mem_free.exit.i
  store ptr null, ptr %i.ap, align 8, !tbaa !142
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !143 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.au, null
  br i1 %.not.i23.i, label %ft_mem_free.exit24.i, label %bb.n

bb.n:                                             ; preds = %ft_mem_free.exit22.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !127
  tail call void %i.aw(ptr noundef nonnull %i.al, ptr noundef nonnull %i.au) #30, !inline_history !576
  br label %ft_mem_free.exit24.i

ft_mem_free.exit24.i:                             ; preds = %bb.n, %ft_mem_free.exit22.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  br label %FT_Outline_Done.exit

FT_Outline_Done.exit:                             ; preds = %ft_mem_free.exit24.i, %bb.j, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ 6, %bb.b ], [ 6, %bb.c ], [ 10, %bb.d ], [ 0, %bb.i ], [ 33, %bb.a ], [ %i.ag, %bb.j ], [ %i.ag, %ft_mem_free.exit24.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 34) i32 @FT_Outline_Done(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not18 = icmp eq ptr %1, null
  br i1 %.not18, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %0, align 8, !tbaa !184    ; 7 uses
  %.not19 = icmp eq ptr %i.a, null
  br i1 %.not19, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !359
  %i.d = and i32 %i.c, 1
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %ft_mem_free.exit24, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !140  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %ft_mem_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127
  tail call void %i.h(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f) #30, !inline_history !128
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %bb.e, %bb.f
  store ptr null, ptr %i.e, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !142  ; 2 uses
  %.not.i21 = icmp eq ptr %i.j, null
  br i1 %.not.i21, label %ft_mem_free.exit22, label %bb.g

bb.g:                                             ; preds = %ft_mem_free.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127
  tail call void %i.l(ptr noundef nonnull %i.a, ptr noundef nonnull %i.j) #30, !inline_history !128
  br label %ft_mem_free.exit22

ft_mem_free.exit22:                               ; preds = %ft_mem_free.exit, %bb.g
  store ptr null, ptr %i.i, align 8, !tbaa !142
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !143  ; 2 uses
  %.not.i23 = icmp eq ptr %i.n, null
  br i1 %.not.i23, label %ft_mem_free.exit24, label %bb.h

bb.h:                                             ; preds = %ft_mem_free.exit22
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !127
  tail call void %i.p(ptr noundef nonnull %i.a, ptr noundef nonnull %i.n) #30, !inline_history !128
  br label %ft_mem_free.exit24

ft_mem_free.exit24:                               ; preds = %bb.h, %ft_mem_free.exit22, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %ft_mem_free.exit24
  %.0 = phi i32 [ 0, %ft_mem_free.exit24 ], [ 20, %bb.b ], [ 33, %bb.a ], [ 6, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 21) i32 @FT_Outline_Copy(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !141  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !141
  %.not = icmp eq i16 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %0, align 8, !tbaa !144    ; 2 uses
  %i.h = load i16, ptr %1, align 8, !tbaa !144
  %.not30 = icmp eq i16 %i.g, %i.h
  br i1 %.not30, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %0, %1
  br i1 %i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not31 = icmp eq i16 %i.d, 0
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !140
  %i.n = zext i16 %i.d to i64
  %i.o = shl nuw nsw i64 %i.n, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.m, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !142
  %i.t = load i16, ptr %i.c, align 2, !tbaa !141
  %i.u = zext i16 %i.t to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.s, i64 %i.u, i1 false)
  %.pre = load i16, ptr %0, align 8, !tbaa !144
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i16 [ %.pre, %bb.f ], [ %i.g, %bb.e ] ; 2 uses
  %.not32 = icmp eq i16 %i.v, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !143
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !143
  %i.aa = zext i16 %i.v to i64
  %i.ab = shl nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.x, ptr align 2 %i.z, i64 %i.ab, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !359
  %i.ae = and i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !359
  %i.ah = and i32 %i.ag, -2
  %i.ai = or disjoint i32 %i.ah, %i.ae
  store i32 %i.ai, ptr %i.ac, align 8, !tbaa !359
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.i
  %.0 = phi i32 [ 20, %bb.a ], [ 6, %bb.b ], [ 0, %bb.i ], [ 6, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @FT_Outline_Reverse(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !144
  %.not49 = icmp eq i16 %i.a, 0
  br i1 %.not49, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph47, %._crit_edge44
  %indvars.iv = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next, %._crit_edge44 ] ; 2 uses
  %.03645 = phi i64 [ 4294967295, %.lr.ph47 ], [ %i.i, %._crit_edge44 ]
  %i.e = add nuw nsw i64 %.03645, 2
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i16, ptr %i.g, align 2, !tbaa !74
  %i.i = zext i16 %i.h to i64                     ; 4 uses
  %1 = and i64 %i.e, 4294967295                   ; 3 uses
  %i.j = icmp samesign ult i64 %1, %i.i
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge44

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !140  ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.i
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03439 = phi ptr [ %i.o, %.lr.ph ], [ %i.l, %.lr.ph.preheader ] ; 3 uses
  %.03538 = phi ptr [ %i.n, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.03538, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03538, ptr noundef nonnull align 8 dereferenceable(16) %.03439, i64 16, i1 false), !tbaa.struct !243
  store <2 x i64> %.sroa.0.0.copyload, ptr %.03439, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.03538, i64 16 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.03439, i64 -16 ; 2 uses
  %i.p = icmp ult ptr %i.n, %i.o
  br i1 %i.p, label %.lr.ph, label %.lr.ph43.preheader, !llvm.loop !577

.lr.ph43.preheader:                               ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !142  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %.lr.ph43
  %.03241 = phi ptr [ %i.w, %.lr.ph43 ], [ %i.r, %.lr.ph43.preheader ] ; 3 uses
  %.03340 = phi ptr [ %i.v, %.lr.ph43 ], [ %i.s, %.lr.ph43.preheader ] ; 3 uses
  %i.t = load i8, ptr %.03340, align 1, !tbaa !162
  %i.u = load i8, ptr %.03241, align 1, !tbaa !162
  store i8 %i.u, ptr %.03340, align 1, !tbaa !162
  store i8 %i.t, ptr %.03241, align 1, !tbaa !162
  %i.v = getelementptr inbounds nuw i8, ptr %.03340, i64 1 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.03241, i64 -1 ; 2 uses
  %i.x = icmp ult ptr %i.v, %i.w
  br i1 %i.x, label %.lr.ph43, label %._crit_edge44, !llvm.loop !578

._crit_edge44:                                    ; preds = %.lr.ph43, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i16, ptr %0, align 8, !tbaa !144
  %i.z = zext i16 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.b, label %._crit_edge48, !llvm.loop !579

._crit_edge48:                                    ; preds = %._crit_edge44, %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !359
  %i.ad = xor i32 %i.ac, 4
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !359
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge48
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FT_Outline_Render(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not37 = icmp eq ptr %1, null
  br i1 %.not37, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not38 = icmp eq ptr %2, null
  br i1 %.not38, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !141  ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %FT_Outline_Get_CBox.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !140  ; 5 uses
  %i.f = zext i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %i.h = load i64, ptr %i.e, align 8, !tbaa !172  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !175  ; 4 uses
  %.not.i = icmp eq i16 %i.b, 1
  br i1 %.not.i, label %FT_Outline_Get_CBox.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.051.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.057.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.051.i, %.lr.ph.preheader.i ] ; 3 uses
  %.pn56.i = phi ptr [ %.057.i, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %.03455.i = phi i64 [ %.1.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.03554.i = phi i64 [ %.136.i, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ]
  %.03853.i = phi i64 [ %.139.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.04152.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ]
  %i.k = load i64, ptr %.057.i, align 8, !tbaa !172 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %.04152.i) ; 2 uses
  %.136.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 %.03554.i) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn56.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !175  ; 2 uses
  %.139.i = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.03853.i) ; 2 uses
  %.1.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %.03455.i) ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.057.i, i64 16 ; 2 uses
  %i.n = icmp ult ptr %.0.i, %i.g
  br i1 %i.n, label %.lr.ph.i, label %FT_Outline_Get_CBox.exit, !llvm.loop !3

FT_Outline_Get_CBox.exit:                         ; preds = %.lr.ph.i, %bb.d, %bb.e
  %.243.i = phi i64 [ 0, %bb.d ], [ %i.h, %bb.e ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %.240.i = phi i64 [ 0, %bb.d ], [ %i.j, %bb.e ], [ %.139.i, %.lr.ph.i ] ; 2 uses
  %.237.i = phi i64 [ 0, %bb.d ], [ %i.h, %bb.e ], [ %.136.i, %.lr.ph.i ] ; 2 uses
  %.2.i = phi i64 [ 0, %bb.d ], [ %i.j, %bb.e ], [ %.1.i, %.lr.ph.i ] ; 2 uses
  %i.o = icmp slt i64 %.243.i, -16777216
  %i.p = icmp slt i64 %.240.i, -16777216
  %or.cond = select i1 %i.o, i1 true, i1 %i.p
  %i.q = icmp sgt i64 %.237.i, 16777216
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.q
  %i.r = icmp sgt i64 %.2.i, 16777216
  %or.cond8 = select i1 %or.cond5, i1 true, i1 %i.r
  br i1 %or.cond8, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !250  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !256
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.w, align 8, !tbaa !581
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !362
  %i.z = and i32 %i.y, 6
  %or.cond44 = icmp eq i32 %i.z, 2
  br i1 %or.cond44, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = ashr i64 %.243.i, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !582
  %i.ac = ashr i64 %.240.i, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !583
  %i.ae = add nsw i64 %.237.i, 63
  %i.af = ashr i64 %i.ae, 6
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !584
  %i.ah = add nsw i64 %.2.i, 63
  %i.ai = ashr i64 %i.ah, 6
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !585
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not4153 = icmp eq ptr %i.t, null
  br i1 %.not4153, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !353
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !349
  %i.ao = tail call i32 %i.al(ptr noundef %i.an, ptr noundef nonnull %2) #30 ; 2 uses
  %.not4279 = icmp eq i32 %i.ao, 0
  br i1 %.not4279, label %.loopexit, label %.lr.ph81

.lr.ph.loopexit:                                  ; preds = %.lr.ph.i46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !353
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !349
  %i.at = tail call i32 %i.aq(ptr noundef %i.as, ptr noundef nonnull %2) #30 ; 2 uses
  %.not42 = icmp eq i32 %i.at, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph81, !llvm.loop !580

.lr.ph81:                                         ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %i.au = phi i32 [ %i.at, %.lr.ph.loopexit ], [ %i.ao, %.lr.ph.preheader ] ; 4 uses
  %.0525480 = phi ptr [ %.21932.i, %.lr.ph.loopexit ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %i.av = and i32 %i.au, 255
  %.not43 = icmp eq i32 %i.av, 19
  br i1 %.not43, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph81
  %.not25.i = icmp eq ptr %.0525480, null
  %i.aw = getelementptr inbounds nuw i8, ptr %.0525480, i64 8
  %spec.select = select i1 %.not25.i, ptr %i.u, ptr %i.aw
  %.017.i = load ptr, ptr %spec.select, align 8, !tbaa !308 ; 2 uses
  %.not2631.i = icmp eq ptr %.017.i, null
  br i1 %.not2631.i, label %.loopexit, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.i, %bb.j
  %.21932.i = phi ptr [ %i.bd, %bb.j ], [ %.017.i, %bb.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.21932.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !258 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !255
  %i.bb = icmp eq i32 %i.ba, 1869968492
  br i1 %i.bb, label %.lr.ph.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i46
  %i.bc = getelementptr inbounds nuw i8, ptr %.21932.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !259 ; 2 uses
  %.not26.i = icmp eq ptr %i.bd, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph.i46

.loopexit:                                        ; preds = %.lr.ph81, %.lr.ph.loopexit, %bb.i, %bb.j, %.lr.ph.preheader, %bb.h, %FT_Outline_Get_CBox.exit, %bb.c, %bb.b, %bb.a
  %.031 = phi i32 [ 6, %bb.c ], [ 20, %FT_Outline_Get_CBox.exit ], [ 20, %bb.b ], [ 33, %bb.a ], [ 19, %bb.h ], [ %i.au, %bb.j ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.loopexit ], [ %i.au, %.lr.ph81 ], [ %i.au, %bb.i ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define i32 @FT_Outline_Get_Bitmap(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Raster_Params_, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %3, align 8, !tbaa !586
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !362
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 26
end_hunk_0
