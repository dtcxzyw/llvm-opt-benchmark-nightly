Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_operators?download=true
inline.NumInlined: 54
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@zend_ulong_to_str:bb.a
  %i.a = alloca [21 x i8], align 16               ; 3 uses
  %i.b = icmp ult i64 %0, 10
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @zend_one_char_string, i64 %0
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  store i8 0, ptr %i.f, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.05.i = phi ptr [ %i.f, %bb.c ], [ %i.j, %bb.d ]
  %.0.i = phi i64 [ %0, %bb.c ], [ %i.k, %bb.d ]  ; 3 uses
  %i.g = urem i64 %.0.i, 10
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = or disjoint i8 %i.h, 48
  %i.j = getelementptr inbounds i8, ptr %.05.i, i64 -1 ; 4 uses
  store i8 %i.i, ptr %i.j, align 1, !tbaa !19
  %i.k = udiv i64 %.0.i, 10
  %.not.i = icmp ult i64 %.0.i, 10
  br i1 %.not.i, label %zend_print_ulong_to_buf.exit, label %bb.d, !llvm.loop !0

zend_print_ulong_to_buf.exit:                     ; preds = %bb.d
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = and i64 %i.n, -8
  %i.p = add i64 %i.o, 32
  %i.q = call noalias ptr @_emalloc(i64 noundef %i.p) #26 ; 6 uses
  store i32 1, ptr %i.q, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !89
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.n, ptr %i.t, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %i.j, i64 %i.n, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.n
  store i8 0, ptr %i.v, align 1, !tbaa !19
  store i32 534, ptr %i.r, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.e

bb.e:                                             ; preds = %zend_print_ulong_to_buf.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.q, %zend_print_ulong_to_buf.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_u64_to_str(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 3 uses
  %i.b = icmp ult i64 %0, 10
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @zend_one_char_string, i64 %0
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  store i8 0, ptr %i.f, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.05.i.i = phi ptr [ %i.f, %bb.c ], [ %i.j, %bb.d ]
  %.0.i.i = phi i64 [ %0, %bb.c ], [ %i.k, %bb.d ] ; 3 uses
  %i.g = urem i64 %.0.i.i, 10
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = or disjoint i8 %i.h, 48
  %i.j = getelementptr inbounds i8, ptr %.05.i.i, i64 -1 ; 4 uses
  store i8 %i.i, ptr %i.j, align 1, !tbaa !19
  %i.k = udiv i64 %.0.i.i, 10
  %.not.i.i = icmp ult i64 %.0.i.i, 10
  br i1 %.not.i.i, label %zend_print_u64_to_buf.exit, label %bb.d, !llvm.loop !0

zend_print_u64_to_buf.exit:                       ; preds = %bb.d
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = and i64 %i.n, -8
  %i.p = add i64 %i.o, 32
  %i.q = call noalias ptr @_emalloc(i64 noundef %i.p) #26 ; 6 uses
  store i32 1, ptr %i.q, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !89
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.n, ptr %i.t, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %i.j, i64 %i.n, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.n
  store i8 0, ptr %i.v, align 1, !tbaa !19
  store i32 534, ptr %i.r, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.e

bb.e:                                             ; preds = %zend_print_u64_to_buf.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.q, %zend_print_u64_to_buf.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_i64_to_str(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 3 uses
  %i.b = icmp ult i64 %0, 10
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @zend_one_char_string, i64 %0
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 5 uses
  %i.g = icmp slt i64 %0, 0
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 0, %0
  store i8 0, ptr %i.f, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.05.i.i8.i = phi ptr [ %i.f, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  %.0.i.i9.i = phi i64 [ %i.h, %bb.d ], [ %i.m, %bb.e ] ; 3 uses
  %i.i = urem i64 %.0.i.i9.i, 10
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = or disjoint i8 %i.j, 48
  %i.l = getelementptr inbounds i8, ptr %.05.i.i8.i, i64 -1 ; 2 uses
  store i8 %i.k, ptr %i.l, align 1, !tbaa !19
  %i.m = udiv i64 %.0.i.i9.i, 10
  %.not.i.i10.i = icmp ult i64 %.0.i.i9.i, 10
  br i1 %.not.i.i10.i, label %zend_print_u64_to_buf.exit11.i, label %bb.e, !llvm.loop !0

zend_print_u64_to_buf.exit11.i:                   ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %.05.i.i8.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.n, align 1, !tbaa !19
  br label %zend_print_i64_to_buf.exit

bb.f:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.05.i.i.i = phi ptr [ %i.f, %bb.f ], [ %i.r, %bb.g ]
  %.0.i.i.i = phi i64 [ %0, %bb.f ], [ %i.s, %bb.g ] ; 3 uses
  %i.o = urem i64 %.0.i.i.i, 10
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = or disjoint i8 %i.p, 48
  %i.r = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -1 ; 3 uses
  store i8 %i.q, ptr %i.r, align 1, !tbaa !19
  %i.s = udiv i64 %.0.i.i.i, 10
  %.not.i.i.i = icmp ult i64 %.0.i.i.i, 10
  br i1 %.not.i.i.i, label %zend_print_i64_to_buf.exit, label %bb.g, !llvm.loop !0

zend_print_i64_to_buf.exit:                       ; preds = %bb.g, %zend_print_u64_to_buf.exit11.i
  %.0.i = phi ptr [ %i.n, %zend_print_u64_to_buf.exit11.i ], [ %i.r, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = ptrtoint ptr %.0.i to i64
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 32
  %i.y = call noalias ptr @_emalloc(i64 noundef %i.x) #26 ; 6 uses
  store i32 1, ptr %i.y, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !89
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.v, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 1 %.0.i, i64 %i.v, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.v
  store i8 0, ptr %i.ad, align 1, !tbaa !19
  store i32 534, ptr %i.z, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.h

bb.h:                                             ; preds = %zend_print_i64_to_buf.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.y, %zend_print_i64_to_buf.exit ]
  ret ptr %.0
}

declare ptr @zend_gcvt(double noundef, i32 noundef, i8 noundef signext, i8 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext range(i8 0, 6) i8 @_is_numeric_string_ex(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.not128 = icmp eq i64 %1, 0
  br i1 %.not128, label %.critedge143, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not129 = icmp eq ptr %5, null                 ; 3 uses
  br i1 %.not129, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %5, align 4, !tbaa !112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not130 = icmp eq ptr %6, null                 ; 2 uses
  br i1 %.not130, label %.preheader162, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %6, align 1, !tbaa !53
  br label %.preheader162

.preheader162:                                    ; preds = %bb.e, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %.preheader162, %.critedge
  %.0106 = phi i64 [ %i.d, %.critedge ], [ %1, %.preheader162 ] ; 3 uses
  %.0105 = phi ptr [ %i.c, %.critedge ], [ %0, %.preheader162 ] ; 12 uses
  %i.b = load i8, ptr %.0105, align 1, !tbaa !19  ; 3 uses
  switch i8 %i.b, label %bb.g [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 10, label %.critedge
    i8 13, label %.critedge
    i8 11, label %.critedge
    i8 12, label %.critedge
  ]

.critedge:                                        ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.c = getelementptr inbounds nuw i8, ptr %.0105, i64 1
  %i.d = add i64 %.0106, -1
  br label %bb.f, !llvm.loop !178

bb.g:                                             ; preds = %bb.f
  store ptr %.0105, ptr %i.a, align 8, !tbaa !182
  %.not137 = icmp eq i8 %i.b, 45
  switch i8 %i.b, label %bb.h [
    i8 45, label %.sink.split
    i8 43, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.g, %bb.g
  %i.e = getelementptr inbounds nuw i8, ptr %.0105, i64 1 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !182
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.sink.split
  %.promoted = phi ptr [ %.0105, %bb.g ], [ %i.e, %.sink.split ] ; 5 uses
  %i.f = load i8, ptr %.promoted, align 1, !tbaa !19 ; 3 uses
  %i.g = add i8 %i.f, -48
  %or.cond138 = icmp ult i8 %i.g, 10
  br i1 %or.cond138, label %.preheader146, label %bb.u

.preheader146:                                    ; preds = %bb.h
  %i.h = icmp eq i8 %i.f, 48
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader146, %.lr.ph
  %i.i = phi ptr [ %i.j, %.lr.ph ], [ %.promoted, %.preheader146 ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 4 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !182
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %i.l = icmp eq i8 %i.k, 48
  br i1 %i.l, label %.lr.ph, label %.loopexit, !llvm.loop !179

.loopexit:                                        ; preds = %.lr.ph, %.preheader146, %bb.j
  %i.m = phi ptr [ %i.z, %bb.j ], [ %.promoted, %.preheader146 ], [ %i.j, %.lr.ph ] ; 2 uses
  %.096 = phi i32 [ %i.y, %bb.j ], [ 0, %.preheader146 ], [ 0, %.lr.ph ] ; 3 uses
  %.093 = phi i32 [ %.194, %bb.j ], [ 0, %.preheader146 ], [ 0, %.lr.ph ]
  %.088 = phi i8 [ %.189, %bb.j ], [ 4, %.preheader146 ], [ 4, %.lr.ph ] ; 2 uses
  %.085 = phi i64 [ %i.x, %bb.j ], [ 0, %.preheader146 ], [ 0, %.lr.ph ] ; 2 uses
  %i.n = icmp sgt i32 %.096, 19
  %i.o = icmp ne ptr %3, null
  %i.p = or i1 %i.o, %4
  %i.q = and i1 %i.p, %i.n
  br i1 %i.q, label %bb.r, label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.z
  %i.r = phi ptr [ %i.m, %.loopexit ], [ %i.aw, %bb.z ] ; 8 uses
  %.197 = phi i32 [ %.096, %.loopexit ], [ %.399, %bb.z ] ; 6 uses
  %.194 = phi i32 [ %.093, %.loopexit ], [ %i.az, %bb.z ] ; 4 uses
  %.189 = phi i8 [ %.088, %.loopexit ], [ 5, %bb.z ] ; 4 uses
  %.186 = phi i64 [ %.085, %.loopexit ], [ %.3, %bb.z ] ; 6 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19    ; 5 uses
  %i.t = add i8 %i.s, -48
  %or.cond139 = icmp ult i8 %i.t, 10
  br i1 %or.cond139, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = mul i64 %.186, 10
  %i.v = zext nneg i8 %i.s to i64
  %i.w = add i64 %i.u, -48
  %i.x = add i64 %i.w, %i.v
  %i.y = add nsw i32 %.197, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !182
  br label %.loopexit, !llvm.loop !180

bb.k:                                             ; preds = %bb.i
  %i.aa = icmp eq i8 %i.s, 46
  %i.ab = icmp eq i32 %.194, 0
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp eq i8 %i.s, 101
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = icmp eq i8 %i.s, 69
  %i.ae = icmp samesign ult i32 %.194, 2
  %or.cond4 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond4, label %bb.o, label %bb.r

bb.n:                                             ; preds = %bb.l
  %.old3 = icmp samesign ult i32 %.194, 2
  br i1 %.old3, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.ag, label %bb.q [
    i8 45, label %bb.p
    i8 43, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.af, ptr %i.a, align 8, !tbaa !182
  %.pre = load i8, ptr %i.ah, align 1, !tbaa !19
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ai = phi i8 [ %.pre, %bb.p ], [ %i.ag, %bb.o ]
  %i.aj = phi ptr [ %i.af, %bb.p ], [ %i.r, %bb.o ] ; 2 uses
  %i.ak = add i8 %i.ai, -48
  %or.cond140 = icmp ult i8 %i.ak, 10
  br i1 %or.cond140, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m, %bb.n, %.loopexit
  %i.al = phi ptr [ %i.aj, %bb.q ], [ %i.r, %bb.n ], [ %i.r, %bb.m ], [ %i.m, %.loopexit ] ; 3 uses
  %.298 = phi i32 [ %.197, %bb.q ], [ %.197, %bb.n ], [ %.197, %bb.m ], [ %.096, %.loopexit ] ; 4 uses
  %.290 = phi i8 [ %.189, %bb.q ], [ %.189, %bb.n ], [ %.189, %bb.m ], [ %.088, %.loopexit ]
  %.287 = phi i64 [ %.186, %bb.q ], [ %.186, %bb.n ], [ %.186, %bb.m ], [ %.085, %.loopexit ] ; 3 uses
  %i.am = icmp sgt i32 %.298, 19
  br i1 %i.am, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  br i1 %.not129, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load i8, ptr %.0105, align 1, !tbaa !19
  %i.ao = icmp eq i8 %i.an, 45
  %i.ap = select i1 %i.ao, i32 -1, i32 1
  store i32 %i.ap, ptr %5, align 4, !tbaa !112
  br label %bb.w

bb.u:                                             ; preds = %bb.h
  %i.aq = icmp eq i8 %i.f, 46
  br i1 %i.aq, label %bb.v, label %.critedge143

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %.promoted, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.at = add i8 %i.as, -48
  %or.cond141 = icmp ult i8 %i.at, 10
  br i1 %or.cond141, label %bb.w, label %.critedge143

bb.w:                                             ; preds = %bb.s, %bb.t, %bb.q, %bb.v, %bb.k
  %i.au = phi ptr [ %i.r, %bb.k ], [ %.promoted, %bb.v ], [ %i.aj, %bb.q ], [ %i.al, %bb.t ], [ %i.al, %bb.s ] ; 3 uses
  %.399 = phi i32 [ %.197, %bb.k ], [ 0, %bb.v ], [ %.197, %bb.q ], [ %.298, %bb.t ], [ %.298, %bb.s ] ; 3 uses
  %.295.not = phi i1 [ %4, %bb.k ], [ %4, %bb.v ], [ %4, %bb.q ], [ true, %bb.t ], [ true, %bb.s ]
  %.3 = phi i64 [ %.186, %bb.k ], [ 0, %bb.v ], [ %.186, %bb.q ], [ %.287, %bb.t ], [ %.287, %bb.s ] ; 3 uses
  %.not131 = icmp eq ptr %3, null
  br i1 %.not131, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = call double @zend_strtod(ptr noundef nonnull %.0105, ptr noundef nonnull %i.a) #24
  %.pre147 = load ptr, ptr %i.a, align 8, !tbaa !182
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  br i1 %.295.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !182
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !19
  %i.ay = icmp eq i8 %i.ax, 46
  %i.az = select i1 %i.ay, i32 1, i32 2
  br label %bb.i

bb.aa:                                            ; preds = %bb.y, %bb.x, %bb.r
  %i.ba = phi ptr [ %.pre147, %bb.x ], [ %i.au, %bb.y ], [ %i.al, %bb.r ] ; 4 uses
  %.4100 = phi i32 [ %.399, %bb.x ], [ %.399, %bb.y ], [ %.298, %bb.r ]
  %.092 = phi double [ %i.av, %bb.x ], [ 0.000000e+00, %bb.y ], [ 0.000000e+00, %bb.r ]
  %.391 = phi i8 [ 5, %bb.x ], [ 5, %bb.y ], [ %.290, %bb.r ]
  %.4 = phi i64 [ %.3, %bb.x ], [ %.3, %bb.y ], [ %.287, %bb.r ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0105, i64 %.0106
  %.not = icmp eq ptr %i.ba, %i.bb
  br i1 %.not, label %bb.af, label %.preheader

.preheader:                                       ; preds = %bb.aa, %.critedge9
  %.1107 = phi i64 [ %i.be, %.critedge9 ], [ %.0106, %bb.aa ] ; 2 uses
  %.0 = phi ptr [ %i.bd, %.critedge9 ], [ %i.ba, %bb.aa ] ; 2 uses
  %i.bc = load i8, ptr %.0, align 1, !tbaa !19
  switch i8 %i.bc, label %bb.ab [
    i8 32, label %.critedge9
    i8 9, label %.critedge9
    i8 10, label %.critedge9
    i8 13, label %.critedge9
    i8 11, label %.critedge9
    i8 12, label %.critedge9
  ]

.critedge9:                                       ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.be = add i64 %.1107, -1
  br label %.preheader, !llvm.loop !181

bb.ab:                                            ; preds = %.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %.0105, i64 %.1107
  %.not132 = icmp eq ptr %i.ba, %i.bf
  br i1 %.not132, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %4, label %bb.ad, label %.critedge143

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not130, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %6, align 1, !tbaa !53
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ab, %bb.aa
  %i.bg = icmp eq i8 %.391, 4
  br i1 %i.bg, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %bb.af
  %i.bh = icmp eq i32 %.4100, 19
  br i1 %i.bh, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.bi = getelementptr inbounds i8, ptr %i.ba, i64 -19
  %i.bj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bi, ptr noundef nonnull dereferenceable(20) @long_min_digits) #25 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bl = icmp eq i32 %i.bj, 0
  br i1 %i.bl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bm = load i8, ptr %.0105, align 1, !tbaa !19
  %i.bn = icmp eq i8 %i.bm, 45
  br i1 %i.bn, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.not134 = icmp eq ptr %3, null
  br i1 %.not134, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bo = call double @zend_strtod(ptr noundef nonnull %.0105, ptr noundef null) #24
  store double %i.bo, ptr %3, align 8, !tbaa !85
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %.not129, label %.critedge143, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bp = load i8, ptr %.0105, align 1, !tbaa !19
  %i.bq = icmp eq i8 %i.bp, 45
  %i.br = select i1 %i.bq, i32 -1, i32 1
  store i32 %i.br, ptr %5, align 4, !tbaa !112
  br label %.critedge143

.thread:                                          ; preds = %bb.ah, %bb.aj, %bb.ag
  %.not135 = icmp eq ptr %2, null
  br i1 %.not135, label %.critedge143, label %bb.ao

bb.ao:                                            ; preds = %.thread
  %i.bs = sub i64 0, %.4
  %spec.select = select i1 %.not137, i64 %i.bs, i64 %.4
  store i64 %spec.select, ptr %2, align 8, !tbaa !83
  br label %.critedge143

bb.ap:                                            ; preds = %bb.af
  %.not133 = icmp eq ptr %3, null
  br i1 %.not133, label %.critedge143, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store double %.092, ptr %3, align 8, !tbaa !85
  br label %.critedge143

.critedge143:                                     ; preds = %bb.an, %bb.am, %bb.ac, %bb.ap, %bb.aq, %.thread, %bb.ao, %bb.u, %bb.v, %bb.a
end_hunk_0
