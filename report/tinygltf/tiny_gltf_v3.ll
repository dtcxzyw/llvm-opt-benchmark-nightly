inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3__serialize_accessor:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !485
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !486
  %i.ax = call fastcc i32 @tg3__serialize_double_array(ptr noundef %2, ptr noundef nonnull @.str.93, ptr noundef %i.au, i32 noundef %i.aw)
  %.not51 = icmp eq i32 %i.ax, 0
  br i1 %.not51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %tg3__serialize_bool.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !487
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !488
  %i.bc = call fastcc i32 @tg3__serialize_double_array(ptr noundef %2, ptr noundef nonnull @.str.94, ptr noundef %i.az, i32 noundef %i.bb)
  %.not52 = icmp eq i32 %i.bc, 0
  br i1 %.not52, label %bb.m, label %bb.n

bb.m:                                             ; preds = %tg3__serialize_bool.exit.thread106, %tg3__json_set_string.exit.thread, %tg3__json_set_int.exit75.thread, %tg3__json_set_int.exit.thread, %tg3__serialize_uint64.exit.thread95, %tg3__serialize_str.exit.thread90, %bb.l, %tg3__serialize_bool.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.ag

bb.n:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !226 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = call fastcc i32 @tg3__json_set_int(ptr noundef %2, ptr noundef nonnull @.str.88, i64 noundef %i.bg)
  %.not53 = icmp eq i32 %i.bh, 0
  br i1 %.not53, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.ag

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !386
  %.not54 = icmp eq i32 %i.bj, 0
  br i1 %.not54, label %bb.ae, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 6, ptr %9, align 8, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store i32 6, ptr %10, align 8, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store i32 6, ptr %11, align 8, !tbaa !28
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !435
  %i.bm = sext i32 %i.bl to i64
  %i.bn = call fastcc i32 @tg3__json_set_int(ptr noundef %9, ptr noundef nonnull @.str.91, i64 noundef %i.bm)
  %.not55 = icmp eq i32 %i.bn, 0
  br i1 %.not55, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !387
  %i.br = sext i32 %i.bq to i64
  %i.bs = call fastcc i32 @tg3__json_set_int(ptr noundef %10, ptr noundef nonnull @.str.88, i64 noundef %i.br)
  %.not56 = icmp eq i32 %i.bs, 0
  br i1 %.not56, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !436
  %i.bv = sext i32 %i.bu to i64
  %i.bw = call fastcc i32 @tg3__json_set_int(ptr noundef %10, ptr noundef nonnull @.str.90, i64 noundef %i.bv)
  %.not57 = icmp eq i32 %i.bw, 0
  br i1 %.not57, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load i64, ptr %i.bo, align 8, !tbaa !437
  %i.by = call fastcc i32 @tg3__serialize_uint64(ptr noundef %10, i64 noundef %i.bx, i32 noundef %1)
  %.not58 = icmp eq i32 %i.by, 0
  br i1 %.not58, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ca = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %10, ptr noundef nonnull %i.bz)
  %.not59 = icmp eq i32 %i.ca, 0
  br i1 %.not59, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %9, ptr noundef nonnull @.str.107, ptr noundef %10)
  %.not60 = icmp eq i32 %i.cb, 0
  br i1 %.not60, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !388
  %i.ce = sext i32 %i.cd to i64
  %i.cf = call fastcc i32 @tg3__json_set_int(ptr noundef %11, ptr noundef nonnull @.str.88, i64 noundef %i.ce)
  %.not61 = icmp eq i32 %i.cf, 0
  br i1 %.not61, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !438
  %i.ci = call fastcc i32 @tg3__serialize_uint64(ptr noundef %11, i64 noundef %i.ch, i32 noundef %1)
  %.not62 = icmp eq i32 %i.ci, 0
  br i1 %.not62, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ck = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %11, ptr noundef nonnull %i.cj)
  %.not63 = icmp eq i32 %i.ck, 0
  br i1 %.not63, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %9, ptr noundef nonnull @.str.109, ptr noundef %11)
  %.not64 = icmp eq i32 %i.cl, 0
  br i1 %.not64, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cn = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %9, ptr noundef nonnull %i.cm)
  %.not65 = icmp eq i32 %i.cn, 0
  br i1 %.not65, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %2, ptr noundef nonnull @.str.105, ptr noundef %9)
  %.not66 = icmp eq i32 %i.co, 0
  br i1 %.not66, label %bb.ad, label %.thread

.thread:                                          ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ae

bb.ad:                                            ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  call void @tg3json_value_free(ptr noundef nonnull %10)
  call void @tg3json_value_free(ptr noundef nonnull %11)
  call void @tg3json_value_free(ptr noundef nonnull %9)
  call void @tg3json_value_free(ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ag

bb.ae:                                            ; preds = %.thread, %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cq = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %2, ptr noundef nonnull %i.cp)
  %.not67 = icmp eq i32 %i.cq, 0
  br i1 %.not67, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af, %bb.p, %bb.m
  %.1 = phi i32 [ 0, %bb.m ], [ 0, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.p ], [ 1, %bb.ae ]
  ret i32 %.1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 81) i32 @tg3_writer_add_mesh(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !482
  %i.c = call fastcc i32 @tg3__serialize_mesh(ptr noundef nonnull %1, i32 noundef %i.b, ptr noundef %2)
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc i32 @tg3__writer_add_item(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef %2)
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 80, %bb.a ], [ 50, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_mesh(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef nonnull captures(address_is_null) initializes((0, 24)) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %6 = alloca %struct.tg3json_value, align 8      ; 10 uses
  %7 = alloca %struct.tg3json_value, align 8      ; 12 uses
  %8 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %9 = alloca %struct.tg3json_value, align 8      ; 12 uses
  %10 = alloca %struct.tg3json_value, align 8     ; 8 uses
  %11 = alloca %struct.tg3json_value, align 8     ; 8 uses
  %12 = alloca %struct.tg3json_value, align 8     ; 10 uses
  %13 = alloca %struct.tg3json_value, align 8     ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 6, ptr %2, align 8, !tbaa !28
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, null
  %i.e = icmp eq i32 %i.c, 0
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond.i, label %tg3__serialize_str.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store i64 4, ptr %11, align 8
  %i.g = add nuw nsw i64 %i.f, 1
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #30 ; 4 uses
  %.not.i13.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i13.i.i.i, label %tg3__serialize_str.exit.thread33, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.a, i64 %i.f, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.f, ptr %i.k, align 8, !tbaa !26
  %i.l = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %2, ptr noundef nonnull readonly @.str.65, i64 noundef 4, ptr noundef nonnull %11)
  %.not.i4.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i4.i.i, label %tg3json_object_set_take.exit.thread.i.i.i, label %tg3__serialize_str.exit

tg3json_object_set_take.exit.thread.i.i.i:        ; preds = %bb.c
  call void @tg3json_value_free(ptr noundef nonnull %11)
  br label %tg3__serialize_str.exit.thread33

tg3__serialize_str.exit.thread33:                 ; preds = %tg3json_object_set_take.exit.thread.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ai

tg3__serialize_str.exit:                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %tg3__serialize_str.exit.thread

tg3__serialize_str.exit.thread:                   ; preds = %bb.a, %tg3__serialize_str.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !262
  %.not21 = icmp eq ptr %i.n, null
  br i1 %.not21, label %tg3__json_set_take.exit, label %bb.d

bb.d:                                             ; preds = %tg3__serialize_str.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !265
  %.not22 = icmp eq i32 %i.p, 0
  br i1 %.not22, label %tg3__json_set_take.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  store i32 5, ptr %12, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = icmp ne i32 %1, 0
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 11 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.tg3json__init_value.exit_crit_edge.i.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.tg3json__init_value.exit_crit_edge.i.i ] ; 2 uses
  %.pre.i.i69 = phi ptr [ null, %.lr.ph ], [ %.pre.i.i93, %.tg3json__init_value.exit_crit_edge.i.i ] ; 12 uses
  %indvars.iv.a = phi i64 [ 0, %.lr.ph ], [ %i.cq, %.tg3json__init_value.exit_crit_edge.i.i ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !262
  %i.ab = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %indvars.iv ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store i32 6, ptr %13, align 8, !tbaa !28
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !252
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %tg3__json_set_take.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !253
  %.not70.i = icmp eq i32 %i.ae, 0
  br i1 %.not70.i, label %tg3__json_set_take.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i32 6, ptr %6, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !252
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv.i ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !390
  %i.aj = sext i32 %i.ai to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i32 2, ptr %8, align 8, !tbaa !28
  store i64 %i.aj, ptr %i.q, align 8, !tbaa !26
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !489 ; 2 uses
  %.not84.i = icmp eq ptr %i.ak, null             ; 2 uses
  %spec.select.i = select i1 %.not84.i, ptr @.str, ptr %i.ak
  br i1 %.not84.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !490
  %i.an = zext i32 %i.am to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi i64 [ %i.an, %bb.h ], [ 0, %bb.g ]
  %i.ap = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %6, ptr noundef nonnull %spec.select.i, i64 noundef %i.ao, ptr noundef nonnull %8)
  %.not86.i = icmp eq i32 %i.ap, 0
  br i1 %.not86.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %indvars.iv.a, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %8)
  call void @tg3json_value_free(ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %tg3__serialize_primitive.exit.thread

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = load i32, ptr %i.ad, align 8, !tbaa !253
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next.i, %i.ar
  br i1 %i.as, label %bb.g, label %._crit_edge.i, !llvm.loop !491

._crit_edge.i:                                    ; preds = %bb.k
  %i.at = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.117, i64 noundef 10, ptr noundef nonnull %6)
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %bb.l, label %tg3__json_set_take.exit.i

bb.l:                                             ; preds = %._crit_edge.i
  store i64 %indvars.iv.a, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %6)
  call void @tg3json_value_free(ptr noundef nonnull %6)
  br label %tg3__serialize_primitive.exit.thread

tg3__json_set_take.exit.i:                        ; preds = %._crit_edge.i, %bb.f, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !248 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %tg3__json_set_take.exit.i
  %i.ax = zext nneg i32 %i.av to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 2, ptr %5, align 8, !tbaa !28
  store i64 %i.ax, ptr %i.r, align 8, !tbaa !26
  %i.ay = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.107, i64 noundef 7, ptr noundef nonnull %5)
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %tg3__json_set_int.exit.thread.i, label %tg3__json_set_int.exit.i

tg3__json_set_int.exit.thread.i:                  ; preds = %bb.m
  store i64 %indvars.iv.a, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %tg3__serialize_primitive.exit.thread

tg3__json_set_int.exit.i:                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.n

bb.n:                                             ; preds = %tg3__json_set_int.exit.i, %tg3__json_set_take.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !242 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = zext nneg i32 %i.ba to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 2, ptr %4, align 8, !tbaa !28
  store i64 %i.bc, ptr %i.s, align 8, !tbaa !26
  %i.bd = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.114, i64 noundef 8, ptr noundef nonnull %4)
  %.not.i.i89.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i89.i, label %tg3__json_set_int.exit92.thread.i, label %tg3__json_set_int.exit92.i

tg3__json_set_int.exit92.thread.i:                ; preds = %bb.o
  store i64 %indvars.iv.a, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %tg3__serialize_primitive.exit.thread

tg3__json_set_int.exit92.i:                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.p

bb.p:                                             ; preds = %tg3__json_set_int.exit92.i, %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !249 ; 2 uses
  %i.bg = icmp ne i32 %i.bf, 4
  %or.cond.i.i = or i1 %i.t, %i.bg
  br i1 %or.cond.i.i, label %bb.q, label %tg3__serialize_int.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bh = sext i32 %i.bf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !28
  store i64 %i.bh, ptr %i.u, align 8, !tbaa !26
  %i.bi = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.116, i64 noundef 4, ptr noundef nonnull %3)
  %.not.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i, label %tg3__serialize_int.exit.thread111.i, label %tg3__serialize_int.exit.i

tg3__serialize_int.exit.thread111.i:              ; preds = %bb.q
  store i64 %indvars.iv.a, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %tg3__serialize_primitive.exit.thread

tg3__serialize_int.exit.i:                        ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %tg3__serialize_int.exit.thread.i

tg3__serialize_int.exit.thread.i:                 ; preds = %tg3__serialize_int.exit.i, %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !258
  %.not75.i = icmp eq ptr %i.bk, null
  br i1 %.not75.i, label %tg3__json_set_take.exit101.i, label %bb.r

bb.r:                                             ; preds = %tg3__serialize_int.exit.thread.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !260
  %.not76.i = icmp eq i32 %i.bm, 0
  br i1 %.not76.i, label %tg3__json_set_take.exit101.i, label %.lr.ph132.split.us.preheader.i

.lr.ph132.split.us.preheader.i:                   ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 5, ptr %7, align 8, !tbaa !28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  br label %.lr.ph132.split.us.i

.lr.ph132.split.us.i:                             ; preds = %.tg3json__init_value.exit_crit_edge.i.i.us.i, %.lr.ph132.split.us.preheader.i
  %indvars.iv166.i = phi i64 [ 0, %.lr.ph132.split.us.preheader.i ], [ %indvars.iv.next167.i, %.tg3json__init_value.exit_crit_edge.i.i.us.i ] ; 9 uses
  %.pre.i.i138.us.i = phi ptr [ null, %.lr.ph132.split.us.preheader.i ], [ %i.ci, %.tg3json__init_value.exit_crit_edge.i.i.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !259 ; 2 uses
  %.not78.us.i = icmp eq ptr %i.bo, null
  br i1 %.not78.us.i, label %.thread.i, label %bb.s

.thread.i:                                        ; preds = %.lr.ph132.split.us.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 6, ptr %9, align 8, !tbaa !28
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph132.split.us.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv166.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 6, ptr %9, align 8, !tbaa !28
  %.not149.i = icmp eq i32 %i.bq, 0
  br i1 %.not149.i, label %.loopexit, label %.lr.ph128.us.i

bb.t:                                             ; preds = %.lr.ph128.us.i, %bb.w
  %indvars.iv161.i = phi i64 [ 0, %.lr.ph128.us.i ], [ %indvars.iv.next162.i, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !258
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv166.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !254
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %indvars.iv161.i ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !390
  %i.bx = sext i32 %i.bw to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store i32 2, ptr %10, align 8, !tbaa !28
  store i64 %i.bx, ptr %i.v, align 8, !tbaa !26
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !489 ; 2 uses
  %.not80.us.i = icmp eq ptr %i.by, null          ; 2 uses
  %spec.select87.us.i = select i1 %.not80.us.i, ptr @.str, ptr %i.by
  br i1 %.not80.us.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !490
  %i.cb = zext i32 %i.ca to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cc = phi i64 [ %i.cb, %bb.u ], [ 0, %bb.t ]
  %i.cd = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %9, ptr noundef nonnull %spec.select87.us.i, i64 noundef %i.cc, ptr noundef nonnull %10)
  %.not82.not.us.i = icmp eq i32 %i.cd, 0
  br i1 %.not82.not.us.i, label %.thread114.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %exitcond165.not.i = icmp eq i64 %indvars.iv.next162.i, %wide.trip.count164.i
  br i1 %exitcond165.not.i, label %.loopexit, label %bb.t, !llvm.loop !492

.loopexit:                                        ; preds = %bb.w, %bb.s, %.thread.i
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 4 uses
  %.not25.i.i.i.us.i = icmp eq i64 %indvars.iv166.i, 0
  br i1 %.not25.i.i.i.us.i, label %._crit_edge.i.i.i.us.i, label %.lr.ph.i.i.i.us.i

.lr.ph.i.i.i.us.i:                                ; preds = %.loopexit, %bb.x
  %.027.i.i.i.us.i = phi i64 [ %i.cf, %bb.x ], [ %indvars.iv166.i, %.loopexit ] ; 2 uses
  %i.ce = icmp slt i64 %.027.i.i.i.us.i, 0
  br i1 %i.ce, label %._crit_edge.i.i.i.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.us.i
  %i.cf = shl nuw i64 %.027.i.i.i.us.i, 1         ; 3 uses
  %.not = icmp ugt i64 %i.cf, %indvars.iv166.i
  br i1 %.not, label %._crit_edge.i.i.i.us.i, label %.lr.ph.i.i.i.us.i, !llvm.loop !54

._crit_edge.i.i.i.us.i:                           ; preds = %bb.x, %.lr.ph.i.i.i.us.i, %.loopexit
  %.1.i.i.i.us.i = phi i64 [ 8, %.loopexit ], [ %i.cf, %bb.x ], [ %indvars.iv.next167.i, %.lr.ph.i.i.i.us.i ] ; 2 uses
  %i.cg = icmp ugt i64 %.1.i.i.i.us.i, 768614336404564650
  br i1 %i.cg, label %.split.us.i, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i.us.i
  %i.ch = mul nuw i64 %.1.i.i.i.us.i, 24
  %i.ci = call ptr @realloc(ptr noundef %.pre.i.i138.us.i, i64 noundef %i.ch) #29 ; 4 uses
  %.not26.i.i.i.us.i = icmp eq ptr %i.ci, null
  br i1 %.not26.i.i.i.us.i, label %.split.us.i, label %.tg3json__init_value.exit_crit_edge.i.i.us.i

.tg3json__init_value.exit_crit_edge.i.i.us.i:     ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %indvars.iv166.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ck = load i32, ptr %i.bl, align 8, !tbaa !260
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp samesign ult i64 %indvars.iv.next167.i, %i.cl
  br i1 %i.cm, label %.lr.ph132.split.us.i, label %bb.z, !llvm.loop !493

.lr.ph128.us.i:                                   ; preds = %bb.s
  %wide.trip.count164.i = zext i32 %i.bq to i64
  br label %bb.t

.thread114.i:                                     ; preds = %bb.v
  store i64 %indvars.iv.a, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  store i64 %indvars.iv166.i, ptr %i.x, align 8
  store ptr %.pre.i.i138.us.i, ptr %i.w, align 8
  call void @tg3json_value_free(ptr noundef nonnull %10)
  call void @tg3json_value_free(ptr noundef nonnull %9)
  call void @tg3json_value_free(ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.thread118.i

.split.us.i:                                      ; preds = %bb.y, %._crit_edge.i.i.i.us.i
  store i64 %indvars.iv.a, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  store i64 %indvars.iv166.i, ptr %i.x, align 8
  store ptr %.pre.i.i138.us.i, ptr %i.w, align 8
  call void @tg3json_value_free(ptr noundef nonnull %9)
  call void @tg3json_value_free(ptr noundef nonnull %9)
  call void @tg3json_value_free(ptr noundef nonnull %7)
  br label %.thread118.i

.thread118.i:                                     ; preds = %.split.us.i, %.thread114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %tg3__serialize_primitive.exit.thread

bb.z:                                             ; preds = %.tg3json__init_value.exit_crit_edge.i.i.us.i
  store i64 %indvars.iv.next167.i, ptr %i.x, align 8
  store ptr %i.ci, ptr %i.w, align 8
  %i.cn = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.120, i64 noundef 7, ptr noundef nonnull %7)
  %.not.i98.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i98.i, label %bb.aa, label %tg3__json_set_take.exit101.i

bb.aa:                                            ; preds = %bb.z
  store i64 %indvars.iv.a, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %7)
  call void @tg3json_value_free(ptr noundef nonnull %7)
  br label %tg3__serialize_primitive.exit.thread

tg3__json_set_take.exit101.i:                     ; preds = %bb.z, %bb.r, %tg3__serialize_int.exit.thread.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.cp = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef nonnull %13, ptr noundef nonnull readonly %i.co)
  %.not83.i = icmp eq i32 %i.cp, 0
  br i1 %.not83.i, label %tg3__serialize_primitive.exit.thread.loopexit, label %bb.ab

tg3__serialize_primitive.exit.thread.loopexit:    ; preds = %tg3__json_set_take.exit101.i
  store i64 %indvars.iv.a, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  br label %tg3__serialize_primitive.exit.thread

tg3__serialize_primitive.exit.thread:             ; preds = %tg3__serialize_primitive.exit.thread.loopexit, %bb.j, %bb.l, %tg3__json_set_int.exit.thread.i, %tg3__json_set_int.exit92.thread.i, %tg3__serialize_int.exit.thread111.i, %.thread118.i, %bb.aa
  call void @tg3json_value_free(ptr noundef nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.af

bb.ab:                                            ; preds = %tg3__json_set_take.exit101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cq = add i64 %indvars.iv.a, 1                ; 5 uses
  %.not.i.not.i.i = icmp eq i64 %indvars.iv.a, -1
  br i1 %.not.i.not.i.i, label %.tg3json__init_value.exit_crit_edge.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not25.i.i.i = icmp eq i64 %indvars.iv.a, 0
  %spec.select.i.i.i = select i1 %.not25.i.i.i, i64 8, i64 %indvars.iv.a ; 3 uses
  %i.cr = icmp ult i64 %spec.select.i.i.i, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %bb.ad
  %.027.i.i.i = phi i64 [ %i.ct, %bb.ad ], [ %spec.select.i.i.i, %bb.ac ] ; 2 uses
  %i.cs = icmp slt i64 %.027.i.i.i, 0
  br i1 %i.cs, label %._crit_edge.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.ct = shl nuw i64 %.027.i.i.i, 1              ; 3 uses
  %i.cu = icmp ult i64 %i.ct, %i.cq
  br i1 %i.cu, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !54

._crit_edge.i.i.i:                                ; preds = %bb.ad, %.lr.ph.i.i.i, %bb.ac
  %.1.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.ac ], [ %i.cq, %.lr.ph.i.i.i ], [ %i.ct, %bb.ad ] ; 2 uses
  %i.cv = icmp ugt i64 %.1.i.i.i, 768614336404564650
  br i1 %i.cv, label %tg3__json_push_take.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.cw = mul nuw i64 %.1.i.i.i, 24
  %i.cx = call ptr @realloc(ptr noundef %.pre.i.i69, i64 noundef %i.cw) #29 ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not26.i.i.i, label %tg3__json_push_take.exit.thread, label %.tg3json__init_value.exit_crit_edge.i.i

tg3__json_push_take.exit.thread:                  ; preds = %._crit_edge.i.i.i, %bb.ae
  store i64 %indvars.iv.a, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %13)
  br label %bb.af

bb.af:                                            ; preds = %tg3__serialize_primitive.exit.thread, %tg3__json_push_take.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %13)
  call void @tg3json_value_free(ptr noundef nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ai

.tg3json__init_value.exit_crit_edge.i.i:          ; preds = %bb.ae, %bb.ab
  %.pre.i.i93 = phi ptr [ %.pre.i.i69, %bb.ab ], [ %i.cx, %bb.ae ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i93, i64 %indvars.iv.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = load i32, ptr %i.o, align 8, !tbaa !265
  %i.da = zext i32 %i.cz to i64
  %i.db = icmp samesign ult i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %bb.e, label %._crit_edge, !llvm.loop !494

._crit_edge:                                      ; preds = %.tg3json__init_value.exit_crit_edge.i.i
  store i64 %i.cq, ptr %i.z, align 8
  store ptr %.pre.i.i93, ptr %i.y, align 8
  %i.dc = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %2, ptr noundef nonnull readonly @.str.111, i64 noundef 10, ptr noundef nonnull %12)
  %.not.i29 = icmp eq i32 %i.dc, 0
  br i1 %.not.i29, label %bb.ag, label %tg3__json_set_take.exit

bb.ag:                                            ; preds = %._crit_edge
  call void @tg3json_value_free(ptr noundef nonnull %12)
  call void @tg3json_value_free(ptr noundef nonnull %12)
  br label %bb.ai

tg3__json_set_take.exit:                          ; preds = %._crit_edge, %bb.d, %tg3__serialize_str.exit.thread
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !495
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !496
  %i.dh = call fastcc i32 @tg3__serialize_double_array(ptr noundef %2, ptr noundef nonnull @.str.113, ptr noundef %i.de, i32 noundef %i.dg)
  %.not24 = icmp eq i32 %i.dh, 0
  br i1 %.not24, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %tg3__json_set_take.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dj = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %2, ptr noundef nonnull %i.di)
  %.not25 = icmp eq i32 %i.dj, 0
  br i1 %.not25, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.af, %tg3__serialize_str.exit.thread33, %tg3__json_set_take.exit, %bb.ah, %bb.ag
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.020 = phi i32 [ 0, %bb.ai ], [ 1, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  ret i32 %.020
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 81) i32 @tg3_writer_add_node(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !482
  %i.c = call fastcc i32 @tg3__serialize_node(ptr noundef nonnull %1, i32 noundef %i.b, ptr noundef %2)
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc i32 @tg3__writer_add_item(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, ptr noundef %2)
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 80, %bb.a ], [ 50, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_node(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef nonnull captures(address_is_null) initializes((0, 24)) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %6 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %7 = alloca %struct.tg3json_value, align 8      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 6, ptr %2, align 8, !tbaa !28
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, null
  %i.f = icmp eq i32 %i.d, 0
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %tg3__serialize_str.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i64 4, ptr %6, align 8
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #30 ; 4 uses
  %.not.i13.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i13.i.i.i, label %tg3__serialize_str.exit.thread103, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %i.b, i64 %i.g, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.g, ptr %i.l, align 8, !tbaa !26
  %i.m = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %2, ptr noundef nonnull readonly @.str.65, i64 noundef 4, ptr noundef nonnull %6)
  %.not.i4.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i4.i.i, label %tg3json_object_set_take.exit.thread.i.i.i, label %tg3__serialize_str.exit

tg3json_object_set_take.exit.thread.i.i.i:        ; preds = %bb.c
  call void @tg3json_value_free(ptr noundef nonnull %6)
  br label %tg3__serialize_str.exit.thread103

tg3__serialize_str.exit.thread103:                ; preds = %tg3json_object_set_take.exit.thread.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.av

tg3__serialize_str.exit:                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %tg3__serialize_str.exit.thread

tg3__serialize_str.exit.thread:                   ; preds = %bb.a, %tg3__serialize_str.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !402
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !401
  %i.r = call fastcc i32 @tg3__serialize_int_array(ptr noundef %2, ptr noundef nonnull @.str.127, ptr noundef %i.o, i32 noundef %i.q)
  %.not67 = icmp eq i32 %i.r, 0
  br i1 %.not67, label %bb.av, label %bb.d

bb.d:                                             ; preds = %tg3__serialize_str.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !399  ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = zext nneg i32 %i.t to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 2, ptr %5, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !26
  %i.x = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %2, ptr noundef nonnull readonly @.str.124, i64 noundef 6, ptr noundef nonnull %5)
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %tg3__json_set_int.exit.thread, label %tg3__json_set_int.exit

tg3__json_set_int.exit.thread:                    ; preds = %bb.e
  call void @tg3json_value_free(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.av

tg3__json_set_int.exit:                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.f

bb.f:                                             ; preds = %tg3__json_set_int.exit, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !398  ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = zext nneg i32 %i.z to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 2, ptr %4, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !26
  %i.ad = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %2, ptr noundef nonnull readonly @.str.125, i64 noundef 4, ptr noundef nonnull %4)
  %.not.i.i90 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i90, label %tg3__json_set_int.exit93.thread, label %tg3__json_set_int.exit93

tg3__json_set_int.exit93.thread:                  ; preds = %bb.g
  call void @tg3json_value_free(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.av

tg3__json_set_int.exit93:                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.h

bb.h:                                             ; preds = %tg3__json_set_int.exit93, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !397 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = zext nneg i32 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !26
  %i.aj = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %2, ptr noundef nonnull readonly @.str.126, i64 noundef 4, ptr noundef nonnull %3)
  %.not.i.i94 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i94, label %tg3__json_set_int.exit97.thread, label %tg3__json_set_int.exit97
end_hunk_0
