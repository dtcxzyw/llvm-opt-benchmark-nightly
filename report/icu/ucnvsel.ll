Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvsel?download=true
inline.NumInlined: 70
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ucnvsel_close_78:bb.a
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.b = load i8, ptr %i.a, align 1, !tbaa !25
  %.not9 = icmp eq i8 %i.b, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  tail call void @uprv_free_78(ptr noundef %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  tail call void @uprv_free_78(ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i8, ptr %i.h, align 8, !tbaa !31
  %.not10 = icmp eq i8 %i.i, 0
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  tail call void @uprv_free_78(ptr noundef %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !28
  tail call void @utrie2_close_78(ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  tail call void @uprv_free_78(ptr noundef %i.n)
  tail call void @uprv_free_78(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #4

declare void @utrie2_close_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define i32 @ucnvsel_serialize_78(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !9
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not58 = icmp eq i32 %2, 0
  br i1 %.not58, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ne ptr %1, null
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, 3
  %.not59 = icmp eq i64 %i.f, 0
  %or.cond = and i1 %i.d, %.not59
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  store i32 1, ptr %3, align 4, !tbaa !9
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !28
  %i.h = tail call i32 @utrie2_serialize_78(ptr noundef %i.g, ptr noundef null, i32 noundef 0, ptr noundef nonnull %3) ; 4 uses
  %i.i = load i32, ptr %3, align 4, !tbaa !9      ; 2 uses
  %.not60 = icmp eq i32 %i.i, 15
  %i.j = icmp slt i32 %i.i, 1
  %or.cond65 = or i1 %.not60, %i.j
  br i1 %or.cond65, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %3, align 4, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !23   ; 2 uses
  %i.o = add nsw i32 %i.h, 96
  %i.p = shl nsw i32 %i.l, 2
  %i.q = add nsw i32 %i.o, %i.p
  %i.r = add nsw i32 %i.q, %i.n                   ; 4 uses
  %i.s = icmp sgt i32 %i.r, %2
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 15, ptr %3, align 4, !tbaa !9
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.r, -32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !26
  store i16 32, ptr %1, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 -38, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 39, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(20) @_ZL8dataInfo, i64 20, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.h, ptr %i.x, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.l, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.v, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.n, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %.sroa.8.0..sroa_idx63, i8 0, i64 44, i1 false)
  %.sroa.864.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %i.t, ptr %.sroa.864.0..sroa_idx, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !28
  %i.aa = tail call i32 @utrie2_serialize_78(ptr noundef %i.z, ptr noundef nonnull %i.y, i32 noundef %i.h, ptr noundef nonnull %3) ; 0 uses
  %i.ab = sext i32 %i.h to i64
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !30
  %i.ae = shl nsw i32 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.ah = sext i32 %i.ae to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 4 %i.ag, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds i8, ptr %i.ac, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.am = load i32, ptr %i.m, align 4, !tbaa !23
  %i.an = sext i32 %i.am to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.al, i64 %i.an, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.e, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.r, %bb.i ], [ %i.r, %bb.h ]
  ret i32 %.3
}

declare i32 @utrie2_serialize_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef ptr @ucnvsel_openFromSerialized_78(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !9
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  %i.d = icmp ne ptr %0, null
  %or.cond128.not132 = and i1 %i.d, %i.c
  %i.e = ptrtoint ptr %0 to i64
  %i.f = and i64 %i.e, 3
  %.not121 = icmp eq i64 %i.f, 0
  %or.cond130 = and i1 %or.cond128.not132, %.not121
  br i1 %or.cond130, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !9
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i32 %1, 32
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 8, ptr %2, align 4, !tbaa !9
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !59
  %i.j = icmp eq i8 %i.i, -38
  br i1 %i.j, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !60
  %i.m = icmp eq i8 %i.l, 39
  br i1 %i.m, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i8, ptr %i.n, align 2, !tbaa !24
  %i.p = icmp eq i8 %i.o, 67
  br i1 %i.p, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = icmp eq i8 %i.r, 83
  br i1 %i.s, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !24
  %i.v = icmp eq i8 %i.u, 101
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = icmp eq i8 %i.x, 108
  br i1 %i.y, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  store i32 3, ptr %2, align 4, !tbaa !9
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !24
  %.not122 = icmp eq i8 %i.aa, 1
  br i1 %.not122, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 16, ptr %2, align 4, !tbaa !9
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !61
  %.not123 = icmp eq i8 %i.ac, 0
  br i1 %.not123, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !62
  %.not124 = icmp eq i8 %i.ae, 0
  br i1 %.not124, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.af = tail call ptr @udata_openSwapperForInputData_78(ptr noundef nonnull %0, i32 noundef %1, i8 noundef signext 0, i8 noundef zeroext 0, ptr noundef nonnull %2) ; 6 uses
  %i.ag = tail call fastcc noundef i32 @_ZL12ucnvsel_swapPK12UDataSwapperPKviPvP10UErrorCode(ptr noundef %i.af, ptr noundef nonnull %0, i32 noundef -1, ptr noundef null, ptr noundef nonnull %2) ; 2 uses
  %i.ah = load i32, ptr %2, align 4, !tbaa !9
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @udata_closeSwapper_78(ptr noundef %i.af)
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.aj = icmp slt i32 %1, %i.ag
  br i1 %i.aj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @udata_closeSwapper_78(ptr noundef %i.af)
  store i32 8, ptr %2, align 4, !tbaa !9
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.ak = sext i32 %i.ag to i64
  %i.al = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ak) #16 ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @udata_closeSwapper_78(ptr noundef %i.af)
  store i32 7, ptr %2, align 4, !tbaa !9
  br label %.critedge

bb.w:                                             ; preds = %bb.u
  %i.an = tail call fastcc noundef i32 @_ZL12ucnvsel_swapPK12UDataSwapperPKviPvP10UErrorCode(ptr noundef %i.af, ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.al, ptr noundef nonnull %2) ; 0 uses
  tail call void @udata_closeSwapper_78(ptr noundef %i.af)
  %i.ao = load i32, ptr %2, align 4, !tbaa !9
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @uprv_free_78(ptr noundef nonnull %i.al)
  br label %.critedge

bb.y:                                             ; preds = %bb.w, %bb.p
  %.1108 = phi ptr [ %0, %bb.p ], [ %i.al, %bb.w ] ; 2 uses
  %.1 = phi ptr [ null, %bb.p ], [ %i.al, %bb.w ] ; 4 uses
  %i.aq = load i16, ptr %.1108, align 2, !tbaa !63 ; 2 uses
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = add nuw nsw i32 %i.ar, 64
  %i.at = icmp samesign ult i32 %1, %i.as
  br i1 %i.at, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @uprv_free_78(ptr noundef %.1)
  store i32 8, ptr %2, align 4, !tbaa !9
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  %i.au = zext i16 %i.aq to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.1108, i64 %i.au ; 6 uses
  %i.aw = sub nuw nsw i32 %1, %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 60
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !27
  %i.az = icmp slt i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @uprv_free_78(ptr noundef %.1)
  store i32 8, ptr %2, align 4, !tbaa !9
  br label %.critedge

bb.ac:                                            ; preds = %bb.aa
  %i.ba = tail call noalias dereferenceable_or_null(56) ptr @uprv_malloc_78(i64 noundef 56) #16 ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 3
  %i.bf = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.be) #16 ; 3 uses
  %i.bg = icmp eq ptr %i.ba, null
  %i.bh = icmp eq ptr %i.bf, null
  %or.cond = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @uprv_free_78(ptr noundef %.1)
  tail call void @uprv_free_78(ptr noundef %i.ba)
  tail call void @uprv_free_78(ptr noundef %i.bf)
  store i32 7, ptr %2, align 4, !tbaa !9
  br label %.critedge

bb.ae:                                            ; preds = %bb.ac
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i8 0, i64 56, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  store ptr %i.bf, ptr %i.bm, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bo = load <2 x i32>, ptr %i.bb, align 4, !tbaa !27
  store <2 x i32> %i.bo, ptr %i.bn, align 8, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr %.1, ptr %i.bp, align 8, !tbaa !32
  %i.bq = load i32, ptr %i.av, align 4, !tbaa !27
  %i.br = tail call ptr @utrie2_openFromSerialized_78(i32 noundef 0, ptr noundef nonnull %i.bi, i32 noundef %i.bq, ptr noundef null, ptr noundef nonnull %2)
  store ptr %i.br, ptr %i.ba, align 8, !tbaa !28
  %i.bs = load i32, ptr %2, align 4, !tbaa !9
  %i.bt = icmp slt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @ucnvsel_close_78(ptr noundef nonnull %i.ba)
  br label %.critedge

bb.ag:                                            ; preds = %bb.ae
  %i.bu = load i32, ptr %i.av, align 4, !tbaa !27
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bi, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !29
  %i.by = load i32, ptr %i.bn, align 8, !tbaa !26 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ag
  %i.ca = load i32, ptr %i.bl, align 8, !tbaa !30
  %i.cb = shl nsw i32 %i.ca, 2
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.bw, i64 %i.cc
  %i.ce = load ptr, ptr %i.bm, align 8, !tbaa !20
  %wide.trip.count = zext nneg i32 %i.by to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 2 uses
  %.0105133 = phi ptr [ %i.cd, %.lr.ph ], [ %i.ci, %bb.ah ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv
  store ptr %.0105133, ptr %i.cf, align 8, !tbaa !21
  %i.cg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0105133) #17
  %i.ch = getelementptr i8, ptr %.0105133, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.ah, !llvm.loop !55

.critedge:                                        ; preds = %bb.ah, %bb.ag, %bb.c, %bb.e, %bb.z, %bb.ad, %bb.af, %bb.ab, %bb.x, %bb.v, %bb.t, %bb.r, %bb.n, %bb.l, %bb.a
  %.6 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.n ], [ null, %bb.l ], [ null, %bb.z ], [ null, %bb.r ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %bb.af ], [ null, %bb.x ], [ null, %bb.v ], [ null, %bb.t ], [ %i.ba, %bb.ag ], [ %i.ba, %bb.ah ]
  ret ptr %.6
}

declare ptr @udata_openSwapperForInputData_78(ptr noundef, i32 noundef, i8 noundef signext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL12ucnvsel_swapPK12UDataSwapperPKviPvP10UErrorCode(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -1, -2147483648) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @udata_swapDataHeader_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) ; 3 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !9
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i8, ptr %i.d, align 2, !tbaa !24    ; 2 uses
  %i.f = icmp eq i8 %i.e, 67
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24    ; 2 uses
  %i.i = icmp eq i8 %i.h, 83
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.k = load i8, ptr %i.j, align 2, !tbaa !24
  %i.l = icmp eq i8 %i.k, 101
  br i1 %i.l, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  %i.o = icmp eq i8 %i.n, 108
  br i1 %i.o, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.d, %bb.c
  %i.p = phi i8 [ %i.h, %bb.b ], [ 83, %bb.d ], [ 83, %bb.c ]
  %i.q = zext i8 %i.e to i32
  %i.r = zext i8 %i.p to i32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.t = load i8, ptr %i.s, align 2, !tbaa !24
  %i.u = zext i8 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24
end_hunk_0
