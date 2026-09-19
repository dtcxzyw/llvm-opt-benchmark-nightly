Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/frm_driver?download=true
inline.NumInlined: 101
inline.NumDeleted: 20
begin_hunk_0_@FE_Delete_Word:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i39, i64 1 ; 3 uses
  %i.ca = icmp ult ptr %i.bz, %i.bv
  br i1 %i.ca, label %.lr.ph.i38, label %Get_Start_Of_Data.exit, !llvm.loop !0

Get_Start_Of_Data.exit:                           ; preds = %.lr.ph.i38, %bb.g, %Get_First_Whitespace_Character.exit
  %.0.lcssa.i37 = phi ptr [ %i.bq, %Get_First_Whitespace_Character.exit ], [ %.010.i39, %.lr.ph.i38 ], [ %i.bz, %bb.g ] ; 2 uses
  %i.cb = icmp eq ptr %.0.lcssa.i37, %i.bv
  %i.cc = select i1 %i.cb, ptr %i.bq, ptr %.0.lcssa.i37 ; 6 uses
  %.not = icmp eq ptr %i.cc, %i.o
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %Get_Start_Of_Data.exit
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !59
  %i.ce = icmp eq i8 %i.cd, 32
  br i1 %i.ce, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = load ptr, ptr %i.bd, align 8, !tbaa !27
  %i.cg = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ch = sub i64 %i.bi, %i.cg
  %sext41 = shl i64 %i.ch, 32
  %i.ci = ashr exact i64 %sext41, 32              ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cc, i64 %i.ci ; 2 uses
  %i.ck = icmp sgt i64 %i.ci, 0
  br i1 %i.ck, label %.lr.ph51, label %After_End_Of_Data.exit

bb.j:                                             ; preds = %.lr.ph51
  %i.cl = icmp ugt ptr %i.cm, %i.cc
  br i1 %i.cl, label %.lr.ph51, label %After_End_Of_Data.exit, !llvm.loop !1

.lr.ph51:                                         ; preds = %bb.i, %bb.j
  %.0.i4050 = phi ptr [ %i.cm, %bb.j ], [ %i.cj, %bb.i ] ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.0.i4050, i64 -1 ; 4 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !59
  %i.co = icmp eq i8 %i.cn, 32
  br i1 %i.co, label %bb.j, label %.After_End_Of_Data.exit_crit_edge53, !llvm.loop !1

.After_End_Of_Data.exit_crit_edge53:              ; preds = %.lr.ph51
  br label %After_End_Of_Data.exit, !llvm.loop !1

After_End_Of_Data.exit:                           ; preds = %bb.j, %.After_End_Of_Data.exit_crit_edge53, %bb.i
  %.0.i40.lcssa = phi ptr [ %i.cj, %bb.i ], [ %.0.i4050, %.After_End_Of_Data.exit_crit_edge53 ], [ %i.cm, %bb.j ]
  %i.cp = ptrtoint ptr %.0.i40.lcssa to i64
  %i.cq = sub i64 %i.cg, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = tail call i32 @waddnstr(ptr noundef %i.cf, ptr noundef nonnull %i.cc, i32 noundef %i.cr) #14 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %Get_Start_Of_Data.exit, %bb.h, %After_End_Of_Data.exit, %Synchronize_Buffer.exit
  %.0 = phi i32 [ -12, %Synchronize_Buffer.exit ], [ 0, %After_End_Of_Data.exit ], [ 0, %bb.h ], [ 0, %Get_Start_Of_Data.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @FE_Clear_To_End_Of_Line(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = tail call i32 @wclrtoeol(ptr noundef %i.b) #14 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @FE_Clear_To_End_Of_Form(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = tail call i32 @wclrtobot(ptr noundef %i.b) #14 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @FE_Clear_Field(ptr nofree noundef captures(none) initializes((8, 16)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = tail call i32 @werase(ptr noundef %i.d) #14 ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @EM_Overlay_Mode(ptr nofree noundef captures(none) %0) #8 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !51
  %i.b = or i16 %i.a, 4
  store i16 %i.b, ptr %0, align 8, !tbaa !51
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @EM_Insert_Mode(ptr nofree noundef captures(none) %0) #8 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !51
  %i.b = and i16 %i.a, -5
  store i16 %i.b, ptr %0, align 8, !tbaa !51
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -12, 1) i32 @VSC_Scroll_Line_Forward(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !39
  %i.i = sext i16 %i.h to i32
  %i.j = sub nsw i32 %i.f, %i.i                   ; 2 uses
  %.not = icmp slt i32 %i.d, %i.j
  %i.k = sub nsw i32 %i.j, %i.d
  %spec.select.i = select i1 %.not, i32 1, i32 %i.k ; 3 uses
  %i.l = icmp sgt i32 %spec.select.i, 0
  br i1 %i.l, label %bb.b, label %VSC_Generic.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !31
  %i.o = add nsw i32 %i.n, %spec.select.i
  store i32 %i.o, ptr %i.m, align 8, !tbaa !31
  %i.p = add nsw i32 %spec.select.i, %i.d
  store i32 %i.p, ptr %i.c, align 8, !tbaa !43
  br label %VSC_Generic.exit

VSC_Generic.exit:                                 ; preds = %bb.a, %bb.b
  %.025.i = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.025.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -12, 1) i32 @VSC_Scroll_Line_Backward(ptr nofree noundef captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %VSC_Generic.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !31
  %i.g = add nsw i32 %i.b, -1
  store i32 %i.g, ptr %i.a, align 8, !tbaa !43
  br label %VSC_Generic.exit

VSC_Generic.exit:                                 ; preds = %bb.a, %bb.b
  %.025.i = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.025.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -12, 1) i32 @VSC_Scroll_Page_Forward(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !39   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = icmp sgt i16 %i.d, 0
  %i.g = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32769) %i.e, i1 true) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43   ; 5 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !38
  %i.m = sub nsw i32 %i.l, %i.e                   ; 2 uses
  %i.n = icmp sgt i32 %i.j, %i.m
  %i.o = sub nsw i32 %i.m, %i.i
  %spec.select.i = select i1 %i.n, i32 %i.o, i32 %i.g ; 3 uses
  %i.p = icmp sgt i32 %spec.select.i, 0
  br i1 %i.p, label %bb.c, label %VSC_Generic.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !31
  %i.s = add nsw i32 %i.r, %spec.select.i
  store i32 %i.s, ptr %i.q, align 8, !tbaa !31
  %i.t = add nsw i32 %spec.select.i, %i.i
  br label %VSC_Generic.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %spec.select29.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.i) ; 3 uses
  %i.u = icmp sgt i32 %spec.select29.i, 0
  br i1 %i.u, label %bb.e, label %VSC_Generic.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !31
  %i.x = sub nsw i32 %i.w, %spec.select29.i
  store i32 %i.x, ptr %i.v, align 8, !tbaa !31
  %i.y = sub nuw nsw i32 %i.i, %spec.select29.i
  br label %VSC_Generic.exit.sink.split

VSC_Generic.exit.sink.split:                      ; preds = %bb.e, %bb.c
  %.sink = phi i32 [ %i.t, %bb.c ], [ %i.y, %bb.e ]
  store i32 %.sink, ptr %i.h, align 8, !tbaa !43
  br label %VSC_Generic.exit

VSC_Generic.exit:                                 ; preds = %VSC_Generic.exit.sink.split, %bb.b, %bb.d
  %.025.i = phi i32 [ -12, %bb.d ], [ -12, %bb.b ], [ 0, %VSC_Generic.exit.sink.split ]
  ret i32 %.025.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -12, 1) i32 @VSC_Scroll_Page_Backward(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !39   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = icmp slt i16 %i.d, 0
  %i.g = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43   ; 5 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !38
  %i.m = sub nsw i32 %i.l, %i.e                   ; 2 uses
  %i.n = icmp sgt i32 %i.j, %i.m
  %i.o = sub nsw i32 %i.m, %i.i
  %spec.select.i = select i1 %i.n, i32 %i.o, i32 %i.g ; 3 uses
  %i.p = icmp sgt i32 %spec.select.i, 0
  br i1 %i.p, label %bb.c, label %VSC_Generic.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !31
  %i.s = add nsw i32 %i.r, %spec.select.i
  store i32 %i.s, ptr %i.q, align 8, !tbaa !31
  %i.t = add nsw i32 %spec.select.i, %i.i
  br label %VSC_Generic.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %spec.select29.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.i) ; 3 uses
  %i.u = icmp sgt i32 %spec.select29.i, 0
  br i1 %i.u, label %bb.e, label %VSC_Generic.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !31
  %i.x = sub nsw i32 %i.w, %spec.select29.i
  store i32 %i.x, ptr %i.v, align 8, !tbaa !31
  %i.y = sub nuw nsw i32 %i.i, %spec.select29.i
  br label %VSC_Generic.exit.sink.split

VSC_Generic.exit.sink.split:                      ; preds = %bb.e, %bb.c
  %.sink = phi i32 [ %i.t, %bb.c ], [ %i.y, %bb.e ]
  store i32 %.sink, ptr %i.h, align 8, !tbaa !43
  br label %VSC_Generic.exit

VSC_Generic.exit:                                 ; preds = %VSC_Generic.exit.sink.split, %bb.b, %bb.d
  %.025.i = phi i32 [ -12, %bb.d ], [ -12, %bb.b ], [ 0, %VSC_Generic.exit.sink.split ]
  ret i32 %.025.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -12, 1) i32 @VSC_Scroll_Half_Page_Forward(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !39   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  %i.g = sdiv i32 %i.f, 2
  %i.h = icmp sgt i16 %i.d, 0
  %i.i = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32769) %i.g, i1 true) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !43   ; 5 uses
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38
  %i.o = sub nsw i32 %i.n, %i.e                   ; 2 uses
  %i.p = icmp sgt i32 %i.l, %i.o
  %i.q = sub nsw i32 %i.o, %i.k
  %spec.select.i = select i1 %i.p, i32 %i.q, i32 %i.i ; 3 uses
  %i.r = icmp sgt i32 %spec.select.i, 0
  br i1 %i.r, label %bb.c, label %VSC_Generic.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !31
  %i.u = add nsw i32 %i.t, %spec.select.i
  store i32 %i.u, ptr %i.s, align 8, !tbaa !31
  %i.v = add nsw i32 %spec.select.i, %i.k
  br label %VSC_Generic.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %spec.select29.i = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.k) ; 3 uses
  %i.w = icmp sgt i32 %spec.select29.i, 0
  br i1 %i.w, label %bb.e, label %VSC_Generic.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !31
  %i.z = sub nsw i32 %i.y, %spec.select29.i
  store i32 %i.z, ptr %i.x, align 8, !tbaa !31
  %i.aa = sub nuw nsw i32 %i.k, %spec.select29.i
  br label %VSC_Generic.exit.sink.split

VSC_Generic.exit.sink.split:                      ; preds = %bb.e, %bb.c
  %.sink = phi i32 [ %i.v, %bb.c ], [ %i.aa, %bb.e ]
  store i32 %.sink, ptr %i.j, align 8, !tbaa !43
  br label %VSC_Generic.exit

VSC_Generic.exit:                                 ; preds = %VSC_Generic.exit.sink.split, %bb.b, %bb.d
  %.025.i = phi i32 [ -12, %bb.d ], [ -12, %bb.b ], [ 0, %VSC_Generic.exit.sink.split ]
  ret i32 %.025.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -12, 1) i32 @VSC_Scroll_Half_Page_Backward(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !39   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  %.neg = sdiv i32 %i.f, -2
  %i.g = icmp slt i16 %i.d, -2
  %i.h = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32769) %.neg, i1 true) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43   ; 5 uses
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !38
  %i.n = sub nsw i32 %i.m, %i.e                   ; 2 uses
  %i.o = icmp sgt i32 %i.k, %i.n
  %i.p = sub nsw i32 %i.n, %i.j
  %spec.select.i = select i1 %i.o, i32 %i.p, i32 %i.h ; 3 uses
  %i.q = icmp sgt i32 %spec.select.i, 0
  br i1 %i.q, label %bb.c, label %VSC_Generic.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !31
  %i.t = add nsw i32 %i.s, %spec.select.i
  store i32 %i.t, ptr %i.r, align 8, !tbaa !31
  %i.u = add nsw i32 %spec.select.i, %i.j
  br label %VSC_Generic.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %spec.select29.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.j) ; 3 uses
  %i.v = icmp sgt i32 %spec.select29.i, 0
  br i1 %i.v, label %bb.e, label %VSC_Generic.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  %i.y = sub nsw i32 %i.x, %spec.select29.i
  store i32 %i.y, ptr %i.w, align 8, !tbaa !31
  %i.z = sub nuw nsw i32 %i.j, %spec.select29.i
  br label %VSC_Generic.exit.sink.split

VSC_Generic.exit.sink.split:                      ; preds = %bb.e, %bb.c
  %.sink = phi i32 [ %i.u, %bb.c ], [ %i.z, %bb.e ]
  store i32 %.sink, ptr %i.i, align 8, !tbaa !43
  br label %VSC_Generic.exit

VSC_Generic.exit:                                 ; preds = %VSC_Generic.exit.sink.split, %bb.b, %bb.d
  %.025.i = phi i32 [ -12, %bb.d ], [ -12, %bb.b ], [ 0, %VSC_Generic.exit.sink.split ]
  ret i32 %.025.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -12, 1) i32 @HSC_Scroll_Char_Forward(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !41
  %i.i = sext i16 %i.h to i32
  %i.j = sub nsw i32 %i.f, %i.i                   ; 2 uses
  %.not = icmp slt i32 %i.d, %i.j
  %i.k = sub nsw i32 %i.j, %i.d
  %spec.select.i = select i1 %.not, i32 1, i32 %i.k ; 3 uses
  %i.l = icmp sgt i32 %spec.select.i, 0
  br i1 %i.l, label %bb.b, label %HSC_Generic.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32
  %i.o = add nsw i32 %i.n, %spec.select.i
  store i32 %i.o, ptr %i.m, align 4, !tbaa !32
  %i.p = add nsw i32 %spec.select.i, %i.d
  store i32 %i.p, ptr %i.c, align 4, !tbaa !45
  br label %HSC_Generic.exit

HSC_Generic.exit:                                 ; preds = %bb.a, %bb.b
  %.025.i = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.025.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -12, 1) i32 @HSC_Scroll_Char_Backward(ptr nofree noundef captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %HSC_Generic.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !32
  %i.g = add nsw i32 %i.b, -1
  store i32 %i.g, ptr %i.a, align 4, !tbaa !45
  br label %HSC_Generic.exit

HSC_Generic.exit:                                 ; preds = %bb.a, %bb.b
  %.025.i = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.025.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -12, 1) i32 @HSC_Horizontal_Line_Forward(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !41   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = icmp sgt i16 %i.d, 0
  %i.g = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32769) %i.e, i1 true) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !45   ; 5 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = sub nsw i32 %i.l, %i.e                   ; 2 uses
  %i.n = icmp sgt i32 %i.j, %i.m
  %i.o = sub nsw i32 %i.m, %i.i
  %spec.select.i = select i1 %i.n, i32 %i.o, i32 %i.g ; 3 uses
  %i.p = icmp sgt i32 %spec.select.i, 0
  br i1 %i.p, label %bb.c, label %HSC_Generic.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !32
  %i.s = add nsw i32 %i.r, %spec.select.i
  store i32 %i.s, ptr %i.q, align 4, !tbaa !32
  %i.t = add nsw i32 %spec.select.i, %i.i
  br label %HSC_Generic.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %spec.select29.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.i) ; 3 uses
  %i.u = icmp sgt i32 %spec.select29.i, 0
  br i1 %i.u, label %bb.e, label %HSC_Generic.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %i.x = sub nsw i32 %i.w, %spec.select29.i
  store i32 %i.x, ptr %i.v, align 4, !tbaa !32
  %i.y = sub nuw nsw i32 %i.i, %spec.select29.i
  br label %HSC_Generic.exit.sink.split

HSC_Generic.exit.sink.split:                      ; preds = %bb.e, %bb.c
  %.sink = phi i32 [ %i.t, %bb.c ], [ %i.y, %bb.e ]
  store i32 %.sink, ptr %i.h, align 4, !tbaa !45
  br label %HSC_Generic.exit

HSC_Generic.exit:                                 ; preds = %HSC_Generic.exit.sink.split, %bb.b, %bb.d
  %.025.i = phi i32 [ -12, %bb.d ], [ -12, %bb.b ], [ 0, %HSC_Generic.exit.sink.split ]
  ret i32 %.025.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -12, 1) i32 @HSC_Horizontal_Line_Backward(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !41   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = icmp slt i16 %i.d, 0
  %i.g = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !45   ; 5 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = sub nsw i32 %i.l, %i.e                   ; 2 uses
  %i.n = icmp sgt i32 %i.j, %i.m
  %i.o = sub nsw i32 %i.m, %i.i
  %spec.select.i = select i1 %i.n, i32 %i.o, i32 %i.g ; 3 uses
  %i.p = icmp sgt i32 %spec.select.i, 0
  br i1 %i.p, label %bb.c, label %HSC_Generic.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !32
  %i.s = add nsw i32 %i.r, %spec.select.i
  store i32 %i.s, ptr %i.q, align 4, !tbaa !32
  %i.t = add nsw i32 %spec.select.i, %i.i
  br label %HSC_Generic.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %spec.select29.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.i) ; 3 uses
  %i.u = icmp sgt i32 %spec.select29.i, 0
  br i1 %i.u, label %bb.e, label %HSC_Generic.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %i.x = sub nsw i32 %i.w, %spec.select29.i
  store i32 %i.x, ptr %i.v, align 4, !tbaa !32
  %i.y = sub nuw nsw i32 %i.i, %spec.select29.i
  br label %HSC_Generic.exit.sink.split

HSC_Generic.exit.sink.split:                      ; preds = %bb.e, %bb.c
  %.sink = phi i32 [ %i.t, %bb.c ], [ %i.y, %bb.e ]
  store i32 %.sink, ptr %i.h, align 4, !tbaa !45
  br label %HSC_Generic.exit

HSC_Generic.exit:                                 ; preds = %HSC_Generic.exit.sink.split, %bb.b, %bb.d
  %.025.i = phi i32 [ -12, %bb.d ], [ -12, %bb.b ], [ 0, %HSC_Generic.exit.sink.split ]
  ret i32 %.025.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -12, 1) i32 @HSC_Horizontal_Half_Line_Forward(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !41   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  %i.g = sdiv i32 %i.f, 2
  %i.h = icmp sgt i16 %i.d, 0
  %i.i = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32769) %i.g, i1 true) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45   ; 5 uses
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40
  %i.o = sub nsw i32 %i.n, %i.e                   ; 2 uses
  %i.p = icmp sgt i32 %i.l, %i.o
  %i.q = sub nsw i32 %i.o, %i.k
  %spec.select.i = select i1 %i.p, i32 %i.q, i32 %i.i ; 3 uses
  %i.r = icmp sgt i32 %spec.select.i, 0
  br i1 %i.r, label %bb.c, label %HSC_Generic.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32
  %i.u = add nsw i32 %i.t, %spec.select.i
  store i32 %i.u, ptr %i.s, align 4, !tbaa !32
  %i.v = add nsw i32 %spec.select.i, %i.k
  br label %HSC_Generic.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %spec.select29.i = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.k) ; 3 uses
  %i.w = icmp sgt i32 %spec.select29.i, 0
  br i1 %i.w, label %bb.e, label %HSC_Generic.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32
  %i.z = sub nsw i32 %i.y, %spec.select29.i
  store i32 %i.z, ptr %i.x, align 4, !tbaa !32
  %i.aa = sub nuw nsw i32 %i.k, %spec.select29.i
  br label %HSC_Generic.exit.sink.split

HSC_Generic.exit.sink.split:                      ; preds = %bb.e, %bb.c
  %.sink = phi i32 [ %i.v, %bb.c ], [ %i.aa, %bb.e ]
  store i32 %.sink, ptr %i.j, align 4, !tbaa !45
  br label %HSC_Generic.exit

HSC_Generic.exit:                                 ; preds = %HSC_Generic.exit.sink.split, %bb.b, %bb.d
  %.025.i = phi i32 [ -12, %bb.d ], [ -12, %bb.b ], [ 0, %HSC_Generic.exit.sink.split ]
  ret i32 %.025.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -12, 1) i32 @HSC_Horizontal_Half_Line_Backward(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !41   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  %.neg = sdiv i32 %i.f, -2
  %i.g = icmp slt i16 %i.d, -2
  %i.h = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32769) %.neg, i1 true) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45   ; 5 uses
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40
  %i.n = sub nsw i32 %i.m, %i.e                   ; 2 uses
  %i.o = icmp sgt i32 %i.k, %i.n
  %i.p = sub nsw i32 %i.n, %i.j
  %spec.select.i = select i1 %i.o, i32 %i.p, i32 %i.h ; 3 uses
  %i.q = icmp sgt i32 %spec.select.i, 0
  br i1 %i.q, label %bb.c, label %HSC_Generic.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %i.t = add nsw i32 %i.s, %spec.select.i
  store i32 %i.t, ptr %i.r, align 4, !tbaa !32
  %i.u = add nsw i32 %spec.select.i, %i.j
  br label %HSC_Generic.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %spec.select29.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.j) ; 3 uses
  %i.v = icmp sgt i32 %spec.select29.i, 0
  br i1 %i.v, label %bb.e, label %HSC_Generic.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32
  %i.y = sub nsw i32 %i.x, %spec.select29.i
  store i32 %i.y, ptr %i.w, align 4, !tbaa !32
  %i.z = sub nuw nsw i32 %i.j, %spec.select29.i
  br label %HSC_Generic.exit.sink.split

HSC_Generic.exit.sink.split:                      ; preds = %bb.e, %bb.c
  %.sink = phi i32 [ %i.u, %bb.c ], [ %i.z, %bb.e ]
  store i32 %.sink, ptr %i.i, align 4, !tbaa !45
  br label %HSC_Generic.exit

HSC_Generic.exit:                                 ; preds = %HSC_Generic.exit.sink.split, %bb.b, %bb.d
  %.025.i = phi i32 [ -12, %bb.d ], [ -12, %bb.b ], [ 0, %HSC_Generic.exit.sink.split ]
  ret i32 %.025.i
}

; Function Attrs: nounwind uwtable
define internal noundef range(i32 -13, 1) i32 @FV_Validation(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = tail call zeroext i1 @_nc_Internal_Validation(ptr noundef %0)
  %. = select i1 %i.a, i32 0, i32 -13
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @CR_Next_Choice(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = load i16, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.d = and i16 %i.c, 16
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %Synchronize_Buffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i16 %i.c, -49
  %i.f = or disjoint i16 %i.e, 32
  store i16 %i.f, ptr %0, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  tail call fastcc void @Window_To_Buffer(ptr noundef %i.h, ptr noundef %i.b)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = tail call i32 @wmove(ptr noundef %i.i, i32 noundef %i.k, i32 noundef %i.m) #14 ; 0 uses
  br label %Synchronize_Buffer.exit

Synchronize_Buffer.exit:                          ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = tail call fastcc zeroext i1 @Next_Choice(ptr noundef %i.p, ptr noundef %i.b, ptr noundef %i.r)
  %i.t = select i1 %i.s, i32 0, i32 -12
  ret i32 %i.t
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @CR_Previous_Choice(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = load i16, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.d = and i16 %i.c, 16
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %Synchronize_Buffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i16 %i.c, -49
  %i.f = or disjoint i16 %i.e, 32
  store i16 %i.f, ptr %0, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  tail call fastcc void @Window_To_Buffer(ptr noundef %i.h, ptr noundef %i.b)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = tail call i32 @wmove(ptr noundef %i.i, i32 noundef %i.k, i32 noundef %i.m) #14 ; 0 uses
  br label %Synchronize_Buffer.exit

Synchronize_Buffer.exit:                          ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = tail call fastcc zeroext i1 @Previous_Choice(ptr noundef %i.p, ptr noundef %i.b, ptr noundef %i.r)
  %i.t = select i1 %i.s, i32 0, i32 -12
  ret i32 %i.t
}

declare i32 @wclrtoeol(ptr noundef) local_unnamed_addr #1

declare i32 @winsdelln(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @winsch(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @Wrapping_Not_Necessary_Or_Wrapping_Ok(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %i.e = add nsw i32 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %i.h = icmp eq i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37
  %i.k = and i32 %i.j, 16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !39
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47
  %i.q = add nsw i32 %i.p, %i.n
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !40
  %i.w = add nsw i32 %i.v, -1
  %i.x = tail call i32 @wmove(ptr noundef %i.t, i32 noundef %i.g, i32 noundef %i.w) #14 ; 0 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.z = tail call i32 @winch(ptr noundef %i.y) #14
  %i.aa = and i32 %i.z, 255                       ; 2 uses
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.ac = load i32, ptr %i.f, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.af = tail call i32 @wmove(ptr noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.ae) #14 ; 0 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !54
  %i.aj = icmp eq i32 %i.aa, %i.ai
  %i.ak = icmp eq i32 %i.aa, 32
  %i.al = or i1 %i.ak, %i.aj
  br i1 %i.al, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.am = load i16, ptr %i.b, align 8, !tbaa !48
  %i.an = and i16 %i.am, 8
  %.not53 = icmp eq i16 %i.an, 0
  br i1 %.not53, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = tail call fastcc zeroext i1 @Field_Grown(ptr noundef nonnull %i.b, i32 noundef 1)
  br i1 %i.ao, label %..critedge_crit_edge, label %.thread

..critedge_crit_edge:                             ; preds = %bb.f
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.d
  %i.ap = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.ag, %bb.d ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !40
  %i.au = load i32, ptr %i.f, align 8, !tbaa !31
  %i.av = mul nsw i32 %i.au, %i.at
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.ar, i64 %i.aw ; 3 uses
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !27
  tail call fastcc void @Window_To_Buffer(ptr noundef %i.ay, ptr noundef nonnull %i.b)
  %i.az = load i32, ptr %i.u, align 8, !tbaa !40  ; 3 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba ; 2 uses
  %i.bc = icmp sgt i32 %i.az, 0
  br i1 %i.bc, label %.lr.ph, label %After_Last_Whitespace_Character.exit

bb.g:                                             ; preds = %.lr.ph
  %i.bd = icmp ugt ptr %i.be, %i.ax
  br i1 %i.bd, label %.lr.ph, label %After_Last_Whitespace_Character.exit, !llvm.loop !10

.lr.ph:                                           ; preds = %.critedge, %bb.g
  %.0.i59 = phi ptr [ %i.be, %bb.g ], [ %i.bb, %.critedge ] ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.0.i59, i64 -1 ; 4 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !59
  %.not.i = icmp eq i8 %i.bf, 32
  br i1 %.not.i, label %.After_Last_Whitespace_Character.exit_crit_edge60, label %bb.g, !llvm.loop !10

.After_Last_Whitespace_Character.exit_crit_edge60: ; preds = %.lr.ph
  br label %After_Last_Whitespace_Character.exit, !llvm.loop !10

After_Last_Whitespace_Character.exit:             ; preds = %bb.g, %.After_Last_Whitespace_Character.exit_crit_edge60, %.critedge
  %.0.i.lcssa = phi ptr [ %i.bb, %.critedge ], [ %.0.i59, %.After_Last_Whitespace_Character.exit_crit_edge60 ], [ %i.be, %bb.g ] ; 2 uses
  %i.bg = ptrtoint ptr %.0.i.lcssa to i64
  %i.bh = ptrtoint ptr %i.ax to i64
  %i.bi = sub i64 %i.bg, %i.bh
end_hunk_0
