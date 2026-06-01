inline.NumInlined: 362
inline.NumDeleted: 35
begin_hunk_0_@FT_Outline_New:bb.a
  br i1 %.not19.i, label %FT_Outline_Done.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %ft_mem_free.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66
  tail call void %i.am(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak) #30, !inline_history !558
  br label %ft_mem_free.exit.i

ft_mem_free.exit.i:                               ; preds = %bb.l, %bb.k
  store ptr null, ptr %i.af, align 8, !tbaa !162
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !214 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.ao, null
  br i1 %.not.i21.i, label %ft_mem_free.exit22.i, label %bb.m

bb.m:                                             ; preds = %ft_mem_free.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !66
  tail call void %i.aq(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ao) #30, !inline_history !558
  br label %ft_mem_free.exit22.i

ft_mem_free.exit22.i:                             ; preds = %bb.m, %ft_mem_free.exit.i
  store ptr null, ptr %i.an, align 8, !tbaa !214
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !139 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i, label %ft_mem_free.exit24.i, label %bb.n

bb.n:                                             ; preds = %ft_mem_free.exit22.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !66
  tail call void %i.au(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.as) #30, !inline_history !558
  br label %ft_mem_free.exit24.i

ft_mem_free.exit24.i:                             ; preds = %bb.n, %ft_mem_free.exit22.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  br label %FT_Outline_Done.exit

FT_Outline_Done.exit:                             ; preds = %ft_mem_free.exit24.i, %bb.j, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ 6, %bb.b ], [ 6, %bb.c ], [ 10, %bb.d ], [ 0, %bb.i ], [ 33, %bb.a ], [ %i.ae, %bb.j ], [ %i.ae, %ft_mem_free.exit24.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 34) i32 @FT_Outline_Done(ptr noundef readonly captures(address_is_null) %0, ptr noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not18 = icmp eq ptr %1, null
  br i1 %.not18, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %0, align 8, !tbaa !265    ; 7 uses
  %.not19 = icmp eq ptr %i.a, null
  br i1 %.not19, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !557
  %i.d = and i32 %i.c, 1
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %ft_mem_free.exit24, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %ft_mem_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  tail call void %i.h(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f) #30, !inline_history !202
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %bb.e, %bb.f
  store ptr null, ptr %i.e, align 8, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !214  ; 2 uses
  %.not.i21 = icmp eq ptr %i.j, null
  br i1 %.not.i21, label %ft_mem_free.exit22, label %bb.g

bb.g:                                             ; preds = %ft_mem_free.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66
  tail call void %i.l(ptr noundef nonnull %i.a, ptr noundef nonnull %i.j) #30, !inline_history !202
  br label %ft_mem_free.exit22

ft_mem_free.exit22:                               ; preds = %ft_mem_free.exit, %bb.g
  store ptr null, ptr %i.i, align 8, !tbaa !214
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139  ; 2 uses
  %.not.i23 = icmp eq ptr %i.n, null
  br i1 %.not.i23, label %ft_mem_free.exit24, label %bb.h

bb.h:                                             ; preds = %ft_mem_free.exit22
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  tail call void %i.p(ptr noundef nonnull %i.a, ptr noundef nonnull %i.n) #30, !inline_history !202
  br label %ft_mem_free.exit24

ft_mem_free.exit24:                               ; preds = %bb.h, %ft_mem_free.exit22, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %ft_mem_free.exit24
  %.0 = phi i32 [ 0, %ft_mem_free.exit24 ], [ 20, %bb.b ], [ 33, %bb.a ], [ 6, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 21) i32 @FT_Outline_Copy(ptr noundef readonly captures(address) %0, ptr noundef captures(address) %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !137  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !137
  %.not = icmp eq i16 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %0, align 8, !tbaa !138    ; 2 uses
  %i.h = load i16, ptr %1, align 8, !tbaa !138
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162
  %i.n = sext i16 %i.d to i64
  %i.o = shl nsw i64 %i.n, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.m, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !214
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !214
  %i.t = load i16, ptr %i.c, align 2, !tbaa !137
  %i.u = sext i16 %i.t to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.s, i64 %i.u, i1 false)
  %.pre = load i16, ptr %0, align 8, !tbaa !138
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i16 [ %.pre, %bb.f ], [ %i.g, %bb.e ] ; 2 uses
  %.not32 = icmp eq i16 %i.v, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !139
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !139
  %i.aa = sext i16 %i.v to i64
  %i.ab = shl nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.x, ptr align 2 %i.z, i64 %i.ab, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !557
  %i.ae = and i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !557
  %i.ah = and i32 %i.ag, -2
  %i.ai = or disjoint i32 %i.ah, %i.ae
  store i32 %i.ai, ptr %i.ac, align 8, !tbaa !557
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.i
  %.0 = phi i32 [ 20, %bb.a ], [ 6, %bb.b ], [ 0, %bb.i ], [ 6, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @FT_Outline_Reverse(ptr noundef captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %1 = alloca %struct.FT_Vector_, align 8         ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !138
  %i.b = icmp sgt i16 %i.a, 0
  br i1 %i.b, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph47, %._crit_edge44
  %.046 = phi i16 [ 0, %.lr.ph47 ], [ %i.z, %._crit_edge44 ] ; 2 uses
  %.03645 = phi i64 [ -1, %.lr.ph47 ], [ %i.k, %._crit_edge44 ]
  %i.f = add nsw i64 %.03645, 2                   ; 3 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.h = zext nneg i16 %.046 to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !141
  %i.k = sext i16 %i.j to i64                     ; 4 uses
  %2 = load ptr, ptr %i.d, align 8, !tbaa !162    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.l = icmp slt i64 %i.f, %i.k
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds [16 x i8], ptr %2, i64 %i.k
  %i.n = getelementptr inbounds [16 x i8], ptr %2, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03439 = phi ptr [ %i.p, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %.03538 = phi ptr [ %i.o, %.lr.ph ], [ %i.n, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.03538, i64 16, i1 false), !tbaa.struct !312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03538, ptr noundef nonnull align 8 dereferenceable(16) %.03439, i64 16, i1 false), !tbaa.struct !312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03439, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !312
  %i.o = getelementptr inbounds nuw i8, ptr %.03538, i64 16 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.03439, i64 -16 ; 2 uses
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %.lr.ph43.preheader, !llvm.loop !559

._crit_edge:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %._crit_edge44

.lr.ph43.preheader:                               ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !214  ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.k
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.f
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %.lr.ph43
  %.03241 = phi ptr [ %i.x, %.lr.ph43 ], [ %i.s, %.lr.ph43.preheader ] ; 3 uses
  %.03340 = phi ptr [ %i.w, %.lr.ph43 ], [ %i.t, %.lr.ph43.preheader ] ; 3 uses
  %i.u = load i8, ptr %.03340, align 1, !tbaa !242
  %i.v = load i8, ptr %.03241, align 1, !tbaa !242
  store i8 %i.v, ptr %.03340, align 1, !tbaa !242
  store i8 %i.u, ptr %.03241, align 1, !tbaa !242
  %i.w = getelementptr inbounds nuw i8, ptr %.03340, i64 1 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.03241, i64 -1 ; 2 uses
  %i.y = icmp ult ptr %i.w, %i.x
  br i1 %i.y, label %.lr.ph43, label %._crit_edge44, !llvm.loop !560

._crit_edge44:                                    ; preds = %.lr.ph43, %._crit_edge
  %i.z = add nuw nsw i16 %.046, 1                 ; 2 uses
  %i.aa = load i16, ptr %0, align 8, !tbaa !138
  %i.ab = icmp slt i16 %i.z, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge48, !llvm.loop !561

._crit_edge48:                                    ; preds = %._crit_edge44, %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !557
  %i.ae = xor i32 %i.ad, 4
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !557
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge48
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FT_Outline_Render(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
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
  %i.b = load i16, ptr %i.a, align 2, !tbaa !137  ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %FT_Outline_Get_CBox.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 5 uses
  %i.f = sext i16 %i.b to i64
  %.idx.i = shl nsw i64 %i.f, 4
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %.idx.i
  %i.h = load i64, ptr %i.e, align 8, !tbaa !166  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !168  ; 4 uses
  %i.k = icmp sgt i16 %i.b, 1
  br i1 %i.k, label %.lr.ph.preheader.i, label %FT_Outline_Get_CBox.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.04051.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.04057.i = phi ptr [ %.040.i, %.lr.ph.i ], [ %.04051.i, %.lr.ph.preheader.i ] ; 3 uses
  %.056.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ]
  %.03455.i = phi i64 [ %.135.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.03754.i = phi i64 [ %.138.i, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ]
  %.pn53.i = phi ptr [ %.04057.i, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %.04152.i = phi i64 [ %.142.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %i.l = load i64, ptr %.04057.i, align 8, !tbaa !166 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.056.i) ; 2 uses
  %.138.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 %.03754.i) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn53.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !168  ; 2 uses
  %.135.i = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.03455.i) ; 2 uses
  %.142.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 %.04152.i) ; 2 uses
  %.040.i = getelementptr inbounds nuw i8, ptr %.04057.i, i64 16 ; 2 uses
  %i.o = icmp ult ptr %.040.i, %i.g
  br i1 %i.o, label %.lr.ph.i, label %FT_Outline_Get_CBox.exit, !llvm.loop !286

FT_Outline_Get_CBox.exit:                         ; preds = %.lr.ph.i, %bb.d, %bb.e
  %.243.i = phi i64 [ 0, %bb.d ], [ %i.j, %bb.e ], [ %.142.i, %.lr.ph.i ] ; 2 uses
  %.239.i = phi i64 [ 0, %bb.d ], [ %i.h, %bb.e ], [ %.138.i, %.lr.ph.i ] ; 2 uses
  %.236.i = phi i64 [ 0, %bb.d ], [ %i.j, %bb.e ], [ %.135.i, %.lr.ph.i ] ; 2 uses
  %.2.i = phi i64 [ 0, %bb.d ], [ %i.h, %bb.e ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.p = icmp slt i64 %.2.i, -16777216
  %i.q = icmp slt i64 %.236.i, -16777216
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  %i.r = icmp sgt i64 %.239.i, 16777216
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.r
  %i.s = icmp sgt i64 %.243.i, 16777216
  %or.cond8 = select i1 %or.cond5, i1 true, i1 %i.s
  br i1 %or.cond8, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !148  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.x, align 8, !tbaa !562
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !565
  %i.aa = and i32 %i.z, 6
  %or.cond44 = icmp eq i32 %i.aa, 2
  br i1 %or.cond44, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = ashr i64 %.2.i, 6
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !566
  %i.ad = ashr i64 %.236.i, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !567
  %i.af = add nsw i64 %.239.i, 63
  %i.ag = ashr i64 %i.af, 6
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !568
  %i.ai = add nsw i64 %.243.i, 63
  %i.aj = ashr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !569
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not4151 = icmp eq ptr %i.u, null
  br i1 %.not4151, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !519
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !503
  %i.ap = tail call i32 %i.am(ptr noundef %i.ao, ptr noundef nonnull %2) #30 ; 2 uses
  %.not4277 = icmp eq i32 %i.ap, 0
  br i1 %.not4277, label %.loopexit, label %.lr.ph79

.lr.ph.loopexit:                                  ; preds = %.lr.ph.i45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !519
  %i.as = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !503
  %i.au = tail call i32 %i.ar(ptr noundef %i.at, ptr noundef nonnull %2) #30 ; 2 uses
  %.not42 = icmp eq i32 %i.au, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph79, !llvm.loop !570

.lr.ph79:                                         ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %i.av = phi i32 [ %i.au, %.lr.ph.loopexit ], [ %i.ap, %.lr.ph.preheader ] ; 4 uses
  %.0505278 = phi ptr [ %.232.i, %.lr.ph.loopexit ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %i.aw = and i32 %i.av, 255
  %.not43 = icmp eq i32 %i.aw, 19
  br i1 %.not43, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph79
  %.not25.i = icmp eq ptr %.0505278, null
  %i.ax = getelementptr inbounds nuw i8, ptr %.0505278, i64 8
  %spec.select = select i1 %.not25.i, ptr %i.v, ptr %i.ax
  %.016.i = load ptr, ptr %spec.select, align 8, !tbaa !367 ; 2 uses
  %.not2631.i = icmp eq ptr %.016.i, null
  br i1 %.not2631.i, label %.loopexit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.i, %bb.j
  %.232.i = phi ptr [ %i.be, %bb.j ], [ %.016.i, %bb.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.232.i, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !155 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !149
  %i.bc = icmp eq i32 %i.bb, 1869968492
  br i1 %i.bc, label %.lr.ph.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i45
  %i.bd = getelementptr inbounds nuw i8, ptr %.232.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !157 ; 2 uses
  %.not26.i = icmp eq ptr %i.be, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph.i45

.loopexit:                                        ; preds = %.lr.ph79, %.lr.ph.loopexit, %bb.i, %bb.j, %.lr.ph.preheader, %bb.h, %FT_Outline_Get_CBox.exit, %bb.c, %bb.b, %bb.a
  %.031 = phi i32 [ 6, %bb.c ], [ 20, %FT_Outline_Get_CBox.exit ], [ 20, %bb.b ], [ 33, %bb.a ], [ 19, %bb.h ], [ %i.av, %bb.j ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.loopexit ], [ %i.av, %.lr.ph79 ], [ %i.av, %bb.i ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define i32 @FT_Outline_Get_Bitmap(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Raster_Params_, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %3, align 8, !tbaa !571
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !565
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.c = load i8, ptr %i.b, align 2, !tbaa !289
  switch i8 %i.c, label %bb.d [
    i8 2, label %bb.c
    i8 5, label %bb.c
    i8 6, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  store i32 1, ptr %i.a, align 8, !tbaa !565
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = call i32 @FT_Outline_Render(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
end_hunk_0
