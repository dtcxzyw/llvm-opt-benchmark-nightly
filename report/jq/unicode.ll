Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/unicode?download=true
inline.NumInlined: 17
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@onig_unicode_define_user_property:bb.a
    i8 95, label %bb.g
    i8 45, label %bb.g
    i8 32, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = sext i32 %.045 to i64
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %i.m
  store i8 %i.l, ptr %i.n, align 1, !tbaa !24
  %i.o = add nsw i32 %.045, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.f
  %.1 = phi i32 [ %i.o, %bb.f ], [ %.045, %bb.e ], [ %.045, %bb.e ], [ %.045, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !81

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.p = sext i32 %.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.p, %._crit_edge.loopexit ]
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %.0.lcssa ; 2 uses
  store i8 0, ptr %i.q, align 1, !tbaa !24
  %i.r = load ptr, ptr @UserDefinedPropertyTable, align 8, !tbaa !35 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.t = tail call ptr @onig_st_init_strend_table_with_size(i32 noundef 10) #9 ; 3 uses
  store ptr %i.t, ptr @UserDefinedPropertyTable, align 8, !tbaa !35
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %._crit_edge47

._crit_edge47:                                    ; preds = %bb.h
  %.pre = load i32, ptr @UserDefinedPropertyNum, align 4, !tbaa !22
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.h) #9
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge47, %._crit_edge
  %i.v = phi ptr [ %i.t, %._crit_edge47 ], [ %i.r, %._crit_edge ]
  %i.w = phi i32 [ %.pre, %._crit_edge47 ], [ %i.a, %._crit_edge ] ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [16 x i8], ptr @UserDefinedPropertyRanges, i64 %i.x ; 3 uses
  %i.z = add nsw i32 %i.w, 629
  store i32 %i.z, ptr %i.y, align 16, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %1, ptr %i.aa, align 8, !tbaa !32
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = tail call i32 @onig_st_insert_strend(ptr noundef nonnull %i.v, ptr noundef nonnull %i.h, ptr noundef nonnull %i.q, i64 noundef %i.ab) #9 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load i32, ptr @UserDefinedPropertyNum, align 4, !tbaa !22
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr @UserDefinedPropertyNum, align 4, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.c, %bb.b, %bb.a, %bb.k, %bb.i, %bb.d
  %.038 = phi i32 [ 0, %bb.k ], [ -404, %bb.a ], [ -405, %bb.b ], [ -223, %bb.d ], [ -5, %bb.i ], [ -5, %bb.c ], [ %i.ac, %bb.j ]
  ret i32 %.038
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare ptr @onig_st_init_strend_table_with_size(i32 noundef) local_unnamed_addr #2

declare i32 @onig_st_insert_strend(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @onig_is_in_code_range(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -6, 1) i32 @onigenc_unicode_ctype_code_range(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ugt i32 %0, 628
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %0, -629                         ; 2 uses
  %i.c = load i32, ptr @UserDefinedPropertyNum, align 4, !tbaa !22
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [16 x i8], ptr @UserDefinedPropertyRanges, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @CodeRanges, i64 %i.h
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink.in = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !33
  store ptr %.sink, ptr %1, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b
  %.1 = phi i32 [ -6, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -6, 1) i32 @onigenc_utf16_32_get_ctype_code_range(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !22
  %i.a = icmp ugt i32 %0, 628
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %0, -629                         ; 2 uses
  %i.c = load i32, ptr @UserDefinedPropertyNum, align 4, !tbaa !22
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %onigenc_unicode_ctype_code_range.exit

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [16 x i8], ptr @UserDefinedPropertyRanges, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @CodeRanges, i64 %i.h
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  %.sink.in.i = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !33
  store ptr %.sink.i, ptr %2, align 8, !tbaa !33
  br label %onigenc_unicode_ctype_code_range.exit

onigenc_unicode_ctype_code_range.exit:            ; preds = %bb.b, %.sink.split.i
  %.1.i = phi i32 [ -6, %bb.b ], [ 0, %.sink.split.i ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @onigenc_unicode_property_name_to_ctype(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [61 x i8], align 16               ; 13 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = icmp ult ptr %1, %2
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.02541 = phi ptr [ %1, %.lr.ph ], [ %i.p, %bb.e ] ; 3 uses
  %.02640 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ] ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call i32 %i.e(ptr noundef %.02541, ptr noundef nonnull %2) #9 ; 3 uses
  %i.g = icmp ugt i32 %i.f, 127
  br i1 %i.g, label %unicode_lookup_property_name.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.f, label %bb.d [
    i32 95, label %bb.e
    i32 45, label %bb.e
    i32 32, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = trunc nuw nsw i32 %i.f to i8
  %i.i = add nsw i32 %.02640, 1
  %i.j = sext i32 %.02640 to i64
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  store i8 %i.h, ptr %i.k, align 1, !tbaa !24
  %i.l = icmp sgt i32 %.02640, 59
  br i1 %i.l, label %unicode_lookup_property_name.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.d
  %.1 = phi i32 [ %i.i, %bb.d ], [ %.02640, %bb.c ], [ %.02640, %bb.c ], [ %.02640, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !17
  %i.n = tail call i32 %i.m(ptr noundef %.02541) #9
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %.02541, i64 %i.o ; 2 uses
  %i.q = icmp ult ptr %i.p, %2
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.026.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ] ; 19 uses
  %i.r = sext i32 %.026.lcssa to i64              ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 %i.r ; 3 uses
  store i8 0, ptr %i.s, align 1, !tbaa !24
  %i.t = load ptr, ptr @UserDefinedPropertyTable, align 8, !tbaa !35 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !83
  %i.u = call i32 @onig_st_lookup_strend(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %.not34 = icmp eq ptr %i.v, null
  br i1 %.not34, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %unicode_lookup_property_name.exit.thread

bb.h:                                             ; preds = %.thread, %._crit_edge
  %i.x = add nsw i64 %i.r, -1
  %or.cond.i = icmp ult i64 %i.x, 45
  br i1 %or.cond.i, label %bb.i, label %unicode_lookup_property_name.exit.thread

bb.i:                                             ; preds = %bb.h
  switch i32 %.026.lcssa, label %bb.j [
    i32 15, label %bb.k
    i32 14, label %bb.k
    i32 13, label %bb.k
    i32 12, label %bb.k
    i32 11, label %bb.l
    i32 10, label %bb.l
    i32 9, label %bb.l
    i32 8, label %bb.l
    i32 7, label %bb.l
    i32 6, label %bb.l
    i32 5, label %bb.m
    i32 4, label %bb.n
    i32 3, label %bb.n
    i32 2, label %bb.o
    i32 1, label %hash.exit.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !29
  %i.ad = zext i16 %i.ac to i32
  %i.ae = add nuw nsw i32 %.026.lcssa, %i.ad
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.i, %bb.i, %bb.i
  %.0.i.i = phi i32 [ %i.ae, %bb.j ], [ %.026.lcssa, %bb.i ], [ %.026.lcssa, %bb.i ], [ %.026.lcssa, %bb.i ], [ %.026.lcssa, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !24
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !29
  %i.ak = zext i16 %i.aj to i32
  %i.al = add nuw nsw i32 %.0.i.i, %i.ak
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %.1.i.i = phi i32 [ %i.al, %bb.k ], [ %.026.lcssa, %bb.i ], [ %.026.lcssa, %bb.i ], [ %.026.lcssa, %bb.i ], [ %.026.lcssa, %bb.i ], [ %.026.lcssa, %bb.i ], [ %.026.lcssa, %bb.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !29
  %i.ar = zext i16 %i.aq to i32
  %i.as = add nuw nsw i32 %.1.i.i, %i.ar
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.2.i.i = phi i32 [ %i.as, %bb.l ], [ %.026.lcssa, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.au = load i8, ptr %i.at, align 4, !tbaa !24
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !29
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nuw nsw i32 %.2.i.i, %i.ay
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i, %bb.i
  %.3.i.i = phi i32 [ %i.az, %bb.m ], [ %.026.lcssa, %bb.i ], [ %.026.lcssa, %bb.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !24
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !29
  %i.bf = zext i16 %i.be to i32
  %i.bg = add nuw nsw i32 %.3.i.i, %i.bf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.4.i.i = phi i32 [ %i.bg, %bb.n ], [ %.026.lcssa, %bb.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !24
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !29
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nuw nsw i32 %.4.i.i, %i.bm
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %bb.o, %bb.i
  %.5.i.i = phi i32 [ %i.bn, %bb.o ], [ %.026.lcssa, %bb.i ]
  %i.bo = load i8, ptr %i.a, align 16, !tbaa !24  ; 2 uses
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !29
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nuw nsw i32 %.5.i.i, %i.bt
  %i.bv = getelementptr i8, ptr %i.s, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !24
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !29
  %i.ca = zext i16 %i.bz to i32
  %i.cb = add nuw nsw i32 %i.bu, %i.ca            ; 2 uses
  %i.cc = icmp samesign ult i32 %i.cb, 6901
  br i1 %i.cc, label %bb.p, label %unicode_lookup_property_name.exit.thread

bb.p:                                             ; preds = %hash.exit.i
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @unicode_lookup_property_name.wordlist, i64 %i.cd ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 4, !tbaa !85 ; 2 uses
  %i.cg = icmp sgt i16 %i.cf, -1
  br i1 %i.cg, label %bb.q, label %unicode_lookup_property_name.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ch = zext nneg i16 %i.cf to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @unicode_prop_name_pool_contents, i64 %i.ch ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !24
  %i.ck = xor i8 %i.cj, %i.bo
  %i.cl = and i8 %i.ck, -33
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %.preheader.i.preheader, label %unicode_lookup_property_name.exit.thread

.preheader.i.preheader:                           ; preds = %bb.q
  %.not.i.i49 = icmp eq i32 %.026.lcssa, 0
  br i1 %.not.i.i49, label %gperf_case_strncmp.exit.thread.i, label %.lr.ph53

.preheader.i:                                     ; preds = %.lr.ph53
  %i.cn = add nsw i64 %.010.i.i52, -1             ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.011.i.i51, i64 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i50, i64 1
  %.not.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i, label %gperf_case_strncmp.exit.thread.i, label %.lr.ph53

.lr.ph53:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %.010.i.i52 = phi i64 [ %i.cn, %.preheader.i ], [ %i.r, %.preheader.i.preheader ]
  %.011.i.i51 = phi ptr [ %i.co, %.preheader.i ], [ %i.ci, %.preheader.i.preheader ] ; 2 uses
  %.012.i.i50 = phi ptr [ %i.cp, %.preheader.i ], [ %i.a, %.preheader.i.preheader ] ; 2 uses
  %i.cq = load i8, ptr %.012.i.i50, align 1, !tbaa !24 ; 2 uses
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @gperf_downcase, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !24
  %i.cu = load i8, ptr %.011.i.i51, align 1, !tbaa !24
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @gperf_downcase, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !24
  %.not16.i.i = icmp ne i8 %i.cq, 0
  %i.cy = icmp eq i8 %i.ct, %i.cx                 ; 2 uses
  %or.cond.i.i = select i1 %.not16.i.i, i1 %i.cy, i1 false
  br i1 %or.cond.i.i, label %.preheader.i, label %gperf_case_strncmp.exit.i

gperf_case_strncmp.exit.i:                        ; preds = %.lr.ph53
  br i1 %i.cy, label %gperf_case_strncmp.exit.thread.i, label %unicode_lookup_property_name.exit.thread

gperf_case_strncmp.exit.thread.i:                 ; preds = %.preheader.i, %.preheader.i.preheader, %gperf_case_strncmp.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.r
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !24
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %unicode_lookup_property_name.exit, label %unicode_lookup_property_name.exit.thread

unicode_lookup_property_name.exit:                ; preds = %gperf_case_strncmp.exit.thread.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !86
  %i.de = sext i16 %i.dd to i32
  br label %unicode_lookup_property_name.exit.thread

unicode_lookup_property_name.exit.thread:         ; preds = %bb.d, %bb.b, %hash.exit.i, %bb.p, %bb.q, %gperf_case_strncmp.exit.i, %gperf_case_strncmp.exit.thread.i, %bb.h, %bb.g, %unicode_lookup_property_name.exit
  %.128 = phi i32 [ %i.w, %bb.g ], [ -223, %bb.p ], [ %i.de, %unicode_lookup_property_name.exit ], [ -223, %hash.exit.i ], [ -223, %bb.h ], [ -223, %gperf_case_strncmp.exit.thread.i ], [ -223, %gperf_case_strncmp.exit.i ], [ -223, %bb.q ], [ -223, %bb.b ], [ -223, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.128
}

declare i32 @onig_st_lookup_strend(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !23}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"OnigEncodingTypeST", !13, i64 0, !14, i64 8, !10, i64 16, !10, i64 20, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !10, i64 144, !10, i64 148, !10, i64 152}
!16 = !{!15, !13, i64 32}
!17 = !{!15, !13, i64 0}
!18 = !{!"short", !9, i64 0}
!19 = !{!"ByUnfoldKey", !10, i64 0, !18, i64 4, !18, i64 6}
!20 = !{!19, !18, i64 6}
!21 = !{!19, !18, i64 4}
!22 = !{!10, !10, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!9, !9, i64 0}
!25 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!26 = !{!25, !10, i64 4}
!27 = !{!25, !10, i64 0}
!28 = !{!25, !10, i64 8}
!29 = !{!18, !18, i64 0}
!30 = !{!"p1 int", !13, i64 0}
!31 = !{!"", !10, i64 0, !30, i64 8}
!32 = !{!31, !30, i64 8}
!33 = !{!30, !30, i64 0}
!34 = !{!"p1 _ZTS8st_table", !13, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!31, !10, i64 0}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23, !44, !45}
!39 = distinct !{!39, !23, !44, !45}
!40 = distinct !{!40, !47}
!41 = distinct !{!41, !23, !44}
!42 = !{!14, !14, i64 0}
!43 = !{!15, !13, i64 48}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"branch_weights", i32 4, i32 28}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{null}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !23}
!54 = distinct !{!54, !23}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = distinct !{!58, !23}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23}
!61 = distinct !{!61, !23}
!62 = distinct !{!62, !23}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !23}
!65 = distinct !{!65, !23}
!66 = distinct !{!66, !23}
!67 = distinct !{!67, !23}
!68 = distinct !{!68, !23}
!69 = distinct !{!69, !23}
!70 = distinct !{!70, !23}
!71 = distinct !{!71, !23}
!72 = distinct !{!72, !23}
!73 = !{!"", !10, i64 0, !10, i64 4, !9, i64 8}
!74 = !{!73, !10, i64 0}
!75 = !{!73, !10, i64 4}
!76 = distinct !{!76, !23}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, !23}
!79 = distinct !{!79, !23}
!80 = !{!15, !10, i64 144}
!81 = distinct !{!81, !23}
!82 = distinct !{!82, !23}
!83 = !{!13, !13, i64 0}
!84 = !{!"PoolPropertyNameCtype", !18, i64 0, !18, i64 2}
!85 = !{!84, !18, i64 0}
!86 = !{!84, !18, i64 2}
end_hunk_0
