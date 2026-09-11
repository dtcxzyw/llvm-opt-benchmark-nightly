Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ztype?download=true
inline.NumInlined: 5
begin_hunk_0_@zcvi:bb.a
  %i.f = and i16 %i.b, 512
  %.not.not = icmp eq i16 %i.f, 0
  br i1 %.not.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !15
  %i.j = zext i16 %i.i to i32
  call void @sread_string(ptr noundef nonnull %1, ptr noundef %i.g, i32 noundef %i.j) #8
  %i.k = call i32 (ptr, ptr, ...) @scan_number(ptr noundef nonnull %1, ptr noundef nonnull %2) #8 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %1, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = call i32 %i.q(ptr noundef nonnull %1) #8
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i16, ptr %i.t, align 8, !tbaa !13
  %i.v = and i16 %i.u, 252
  %i.w = icmp eq i16 %i.v, 20
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !26
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.e, %bb.i, %bb.g
  %.015.ph = phi i32 [ -18, %bb.g ], [ -7, %bb.d ], [ 0, %bb.i ], [ %i.k, %bb.e ], [ -18, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.x = load float, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.1 = phi float [ %i.e, %bb.b ], [ %i.x, %bb.j ] ; 3 uses
  %i.y = fpext float %.1 to double
  %i.z = fcmp ugt double %i.y, f0xC1E0000000200000
  %i.aa = fcmp ult float %.1, f0x4F000000
  %or.cond = and i1 %i.aa, %i.z
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = fptosi float %.1 to i64
  store i64 %i.ab, ptr %0, align 8, !tbaa !14
  store i16 20, ptr %i.a, align 8, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.k, %bb.a, %bb.l, %bb.c
  %.116 = phi i32 [ -20, %bb.c ], [ %.015.ph, %.thread ], [ 0, %bb.a ], [ 0, %bb.l ], [ -15, %bb.k ]
  ret i32 %.116
}

declare void @sread_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @scan_number(...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zcvn(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = and i32 %i.c, 252
  %i.e = icmp eq i32 %i.d, 52
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 512
  %.not.not = icmp eq i32 %i.f, 0
  br i1 %.not.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !15
  %i.j = zext i16 %i.i to i32
  %i.k = tail call i32 @name_ref(ptr noundef %i.g, i32 noundef %i.j, ptr noundef nonnull %0, i32 noundef 1) #8 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = and i16 %i.b, 1
  %i.m = load i16, ptr %i.a, align 8, !tbaa !13
  %i.n = or i16 %i.m, %i.l
  store i16 %i.n, ptr %i.a, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -20, %bb.a ], [ -7, %bb.b ], [ 0, %bb.d ], [ %i.k, %bb.c ]
  ret i32 %.0
}

declare i32 @name_ref(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zcvr(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %1 = alloca %struct.stream_s, align 8           ; 8 uses
  %2 = alloca %struct.ref_s, align 8              ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 63
  switch i16 %i.d, label %bb.c [
    i16 5, label %bb.b
    i16 11, label %bb.k
    i16 13, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !14
  %i.f = sitofp i64 %i.e to float
  store float %i.f, ptr %0, align 8, !tbaa !14
  store i16 44, ptr %i.a, align 8, !tbaa !13
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.g = and i16 %i.b, 512
  %.not.not = icmp eq i16 %i.g, 0
  br i1 %.not.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %0, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !15
  %i.k = zext i16 %i.j to i32
  call void @sread_string(ptr noundef nonnull %1, ptr noundef %i.h, i32 noundef %i.k) #8
  %i.l = call i32 (ptr, ptr, ...) @scan_number(ptr noundef nonnull %1, ptr noundef nonnull %2) #8 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %1, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = call i32 %i.r(ptr noundef nonnull %1) #8
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i16, ptr %i.u, align 8, !tbaa !13
  %i.w = and i16 %i.v, 252
  %i.x = icmp eq i16 %i.w, 44
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !26
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.y = load i64, ptr %2, align 8, !tbaa !14
  %i.z = sitofp i64 %i.y to float
  store float %i.z, ptr %0, align 8, !tbaa !14
  store i16 44, ptr %i.a, align 8, !tbaa !13
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.e, %bb.d, %bb.j, %bb.i
  %.0 = phi i32 [ 0, %bb.j ], [ -7, %bb.d ], [ %i.l, %bb.e ], [ 0, %bb.i ], [ -18, %bb.g ], [ -18, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %.critedge, %bb.c
  %.1 = phi i32 [ -20, %bb.c ], [ %.0, %.critedge ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zcvrs(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = alloca [31 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.c = getelementptr inbounds i8, ptr %0, i64 -8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !13
  %i.e = and i16 %i.d, 252
  %i.f = icmp eq i16 %i.e, 20
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = add i64 %i.h, -37
  %or.cond = icmp ult i64 %i.i, -35
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !13
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = and i32 %i.l, 252
  %i.n = icmp eq i32 %i.m, 52
  br i1 %i.n, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.l, 256
  %.not.not = icmp eq i32 %i.o, 0
  br i1 %.not.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 -24
  %i.r = load i16, ptr %i.q, align 8, !tbaa !13
  %i.s = and i16 %i.r, 252
  %cond = icmp eq i16 %i.s, 20
  br i1 %cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %1 = load i64, ptr %i.p, align 8, !tbaa !14     ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 30 ; 2 uses
  %3 = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  %i.t = urem i64 %3, %i.h                        ; 2 uses
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = icmp samesign ult i64 %i.t, 10
  %i.w = select i1 %i.v, i8 48, i8 55
  %i.x = add nuw nsw i8 %i.w, %i.u
  store i8 %i.x, ptr %2, align 2, !tbaa !14
  %4 = icmp slt i64 %1, 0
  br i1 %4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 29 ; 2 uses
  store i8 45, ptr %i.y, align 1, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi ptr [ %i.y, %bb.g ], [ %2, %bb.f ]    ; 2 uses
  %i.z = ptrtoint ptr %i.b to i64
  %i.aa = ptrtoint ptr %.1 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !15
  %i.ae = zext i16 %i.ad to i64
  %i.af = icmp sgt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %0, align 8, !tbaa !14
  %i.ah = and i64 %i.ab, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %.1, i64 %i.ah, i1 false)
  %i.ai = trunc i64 %i.ab to i16
  store i16 %i.ai, ptr %i.ac, align 2, !tbaa !15
  %i.aj = load i16, ptr %i.j, align 8, !tbaa !13
  %i.ak = or i16 %i.aj, -32768
  store i16 %i.ak, ptr %i.j, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !26
  %i.al = load ptr, ptr @osp, align 8, !tbaa !10
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -32
  store ptr %i.am, ptr @osp, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ -20, %bb.a ], [ -20, %bb.c ], [ -20, %bb.e ], [ 0, %bb.i ], [ -7, %bb.d ], [ -15, %bb.b ], [ -15, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zcvs(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [25 x i8], align 16               ; 6 uses
  %1 = alloca %struct.ref_s, align 8              ; 12 uses
  %2 = alloca [2 x %struct.ref_s], align 16       ; 8 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !13
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = and i32 %i.e, 252
  %i.g = icmp eq i32 %i.f, 52
  br i1 %i.g, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.e, 256
  %.not.not = icmp eq i32 %i.h, 0
  br i1 %.not.not, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %1, align 8, !tbaa !14
  %i.i = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = lshr i16 %i.j, 2
  %i.l = and i16 %i.k, 63                         ; 2 uses
  %i.m = icmp samesign ugt i16 %i.l, 15
  %narrow = select i1 %i.m, i16 9, i16 %i.l
  switch i16 %narrow, label %bb.o [
    i16 1, label %bb.d
    i16 5, label %bb.e
    i16 7, label %bb.f
    i16 9, label %bb.g
    i16 11, label %bb.l
    i16 13, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = load i16, ptr %i.b, align 8, !tbaa !14
  %.not = icmp eq i16 %i.n, 0
  %i.o = select i1 %.not, ptr @.str.1, ptr @.str
  store ptr %i.o, ptr %1, align 8, !tbaa !14
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !14
  %i.q = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %i.p) #8 ; 0 uses
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  call void @name_string_ref(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #8
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  %i.r = call i32 @dict_first(ptr noundef nonnull @dstack) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.s = call i32 @dict_next(ptr noundef nonnull @dstack, i32 noundef %i.r, ptr noundef nonnull %2) #8 ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %i.w = phi i32 [ %i.s, %.lr.ph ], [ %i.ad, %bb.j ]
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.y = load ptr, ptr %i.u, align 16, !tbaa !14
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i16, ptr %i.v, align 8, !tbaa !13
  %i.ab = and i16 %i.aa, 252
  %i.ac = icmp eq i16 %i.ab, 28
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = call i32 @dict_next(ptr noundef nonnull @dstack, i32 noundef %i.w, ptr noundef nonnull %2) #8 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.h, label %._crit_edge, !llvm.loop !27

bb.k:                                             ; preds = %bb.i
  call void @name_string_ref(ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.r

._crit_edge:                                      ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.ag) #8 ; 0 uses
  br label %bb.q

bb.l:                                             ; preds = %bb.c
  %i.ai = load float, ptr %i.b, align 8, !tbaa !14
  %i.aj = fpext float %i.ai to double
  %i.ak = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %i.aj) #8 ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.c
  %i.al = and i16 %i.j, 512
  %.not.not26 = icmp eq i16 %i.al, 0
  br i1 %.not.not26, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !26
  br label %bb.r

bb.o:                                             ; preds = %bb.c
  %i.am = load ptr, ptr @osp_nargs, align 16, !tbaa !10
  %i.an = icmp ult ptr %0, %i.am
  br i1 %i.an, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr @.str.5, ptr %1, align 8, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %._crit_edge, %bb.e, %bb.d
  %i.ao = load ptr, ptr %1, align 8, !tbaa !14
  %i.ap = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #9
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %bb.q, %bb.n, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !15 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.av = load i16, ptr %i.au, align 2, !tbaa !15
  %i.aw = icmp ugt i16 %i.at, %i.av
  br i1 %i.aw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr %0, align 8, !tbaa !14
  %i.ay = load ptr, ptr %1, align 8, !tbaa !14
  %i.az = zext i16 %i.at to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ay, i64 %i.az, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !26
  %i.ba = load i16, ptr %i.as, align 2, !tbaa !15
  %i.bb = getelementptr inbounds i8, ptr %0, i64 -6
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !15
  %i.bc = load i16, ptr %i.i, align 8, !tbaa !13
  %i.bd = or i16 %i.bc, -32768
  store i16 %i.bd, ptr %i.i, align 8, !tbaa !13
  %i.be = load ptr, ptr @osp, align 8, !tbaa !10
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -16
  store ptr %i.bf, ptr @osp, align 8, !tbaa !10
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.o, %bb.m, %bb.b, %bb.a, %bb.s
  %.023 = phi i32 [ -20, %bb.a ], [ -7, %bb.m ], [ -17, %bb.o ], [ 0, %bb.s ], [ -7, %bb.b ], [ -15, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.023
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_first(ptr noundef) local_unnamed_addr #3

declare i32 @dict_next(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @ztype_op_init() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @ztype_op_init.my_defs) #8 ; 0 uses
  ret void
}

declare i32 @z_op_init(...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTS5ref_s", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!"ref_s", !5, i64 0, !11, i64 8, !11, i64 10}
!13 = !{!12, !11, i64 8}
!14 = !{!5, !5, i64 0}
!15 = !{!12, !11, i64 10}
!16 = !{!"p1 omnipotent char", !8, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!19 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!20 = !{!"p1 _ZTS8stream_s", !8, i64 0}
!21 = !{!"stream_s", !16, i64 0, !16, i64 8, !16, i64 16, !6, i64 24, !5, i64 28, !5, i64 29, !17, i64 32, !18, i64 40, !6, i64 88, !19, i64 96, !20, i64 104, !11, i64 112, !6, i64 116}
!22 = !{!21, !16, i64 0}
!23 = !{!21, !16, i64 8}
!24 = !{!21, !8, i64 40}
!25 = !{!11, !11, i64 0}
!26 = !{i64 0, i64 8, !14, i64 8, i64 2, !25, i64 10, i64 2, !25}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
end_hunk_0
