Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3__serialize_mesh:bb.a
  br i1 %.not22, label %tg3__json_set_take.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  store i32 5, ptr %12, align 8, !tbaa !37
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
  %.pre.i.i69 = phi ptr [ null, %.lr.ph ], [ %.pre.i.i68, %.tg3json__init_value.exit_crit_edge.i.i ] ; 12 uses
  %i.aa = phi i64 [ 0, %.lr.ph ], [ %i.cr, %.tg3json__init_value.exit_crit_edge.i.i ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !198
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %indvars.iv ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store i32 6, ptr %13, align 8, !tbaa !37
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !190
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %tg3__json_set_take.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !191
  %.not70.i = icmp eq i32 %i.af, 0
  br i1 %.not70.i, label %tg3__json_set_take.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i32 6, ptr %6, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !190
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv.i ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ak = sext i32 %i.aj to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i32 2, ptr %8, align 8, !tbaa !37
  store i64 %i.ak, ptr %i.q, align 8, !tbaa !34
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !509 ; 2 uses
  %.not84.i = icmp eq ptr %i.al, null             ; 2 uses
  %spec.select.i = select i1 %.not84.i, ptr @.str, ptr %i.al
  br i1 %.not84.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !510
  %i.ao = zext i32 %i.an to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = phi i64 [ %i.ao, %bb.h ], [ 0, %bb.g ]
  %i.aq = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %6, ptr noundef nonnull %spec.select.i, i64 noundef %i.ap, ptr noundef nonnull %8)
  %.not86.i = icmp eq i32 %i.aq, 0
  br i1 %.not86.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.aa, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %8)
  call void @tg3json_value_free(ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %tg3__serialize_primitive.exit.thread

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = load i32, ptr %i.ae, align 8, !tbaa !191
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp samesign ult i64 %indvars.iv.next.i, %i.as
  br i1 %i.at, label %bb.g, label %._crit_edge.i, !llvm.loop !505

._crit_edge.i:                                    ; preds = %bb.k
  %i.au = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.117, i64 noundef 10, ptr noundef nonnull %6)
  %.not.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i, label %bb.l, label %tg3__json_set_take.exit.i

bb.l:                                             ; preds = %._crit_edge.i
  store i64 %i.aa, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %6)
  call void @tg3json_value_free(ptr noundef nonnull %6)
  br label %tg3__serialize_primitive.exit.thread

tg3__json_set_take.exit.i:                        ; preds = %._crit_edge.i, %bb.f, %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !188 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %tg3__json_set_take.exit.i
  %i.ay = zext nneg i32 %i.aw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 2, ptr %5, align 8, !tbaa !37
  store i64 %i.ay, ptr %i.r, align 8, !tbaa !34
  %i.az = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.107, i64 noundef 7, ptr noundef nonnull %5)
  %.not.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i, label %tg3__json_set_int.exit.thread.i, label %tg3__json_set_int.exit.i

tg3__json_set_int.exit.thread.i:                  ; preds = %bb.m
  store i64 %i.aa, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %tg3__serialize_primitive.exit.thread

tg3__json_set_int.exit.i:                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.n

bb.n:                                             ; preds = %tg3__json_set_int.exit.i, %tg3__json_set_take.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !187 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, -1
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = zext nneg i32 %i.bb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 2, ptr %4, align 8, !tbaa !37
  store i64 %i.bd, ptr %i.s, align 8, !tbaa !34
  %i.be = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.114, i64 noundef 8, ptr noundef nonnull %4)
  %.not.i.i89.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i89.i, label %tg3__json_set_int.exit92.thread.i, label %tg3__json_set_int.exit92.i

tg3__json_set_int.exit92.thread.i:                ; preds = %bb.o
  store i64 %i.aa, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %tg3__serialize_primitive.exit.thread

tg3__json_set_int.exit92.i:                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.p

bb.p:                                             ; preds = %tg3__json_set_int.exit92.i, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !189 ; 2 uses
  %i.bh = icmp ne i32 %i.bg, 4
  %or.cond.i.i = or i1 %i.t, %i.bh
  br i1 %or.cond.i.i, label %bb.q, label %tg3__serialize_int.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bi = sext i32 %i.bg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !37
  store i64 %i.bi, ptr %i.u, align 8, !tbaa !34
  %i.bj = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.116, i64 noundef 4, ptr noundef nonnull %3)
  %.not.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i, label %tg3__serialize_int.exit.thread111.i, label %tg3__serialize_int.exit.i

tg3__serialize_int.exit.thread111.i:              ; preds = %bb.q
  store i64 %i.aa, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %tg3__serialize_primitive.exit.thread

tg3__serialize_int.exit.i:                        ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %tg3__serialize_int.exit.thread.i

tg3__serialize_int.exit.thread.i:                 ; preds = %tg3__serialize_int.exit.i, %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !193
  %.not75.i = icmp eq ptr %i.bl, null
  br i1 %.not75.i, label %tg3__json_set_take.exit101.i, label %bb.r

bb.r:                                             ; preds = %tg3__serialize_int.exit.thread.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !195
  %.not76.i = icmp eq i32 %i.bn, 0
  br i1 %.not76.i, label %tg3__json_set_take.exit101.i, label %.lr.ph132.split.us.preheader.i

.lr.ph132.split.us.preheader.i:                   ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 5, ptr %7, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  br label %.lr.ph132.split.us.i

.lr.ph132.split.us.i:                             ; preds = %.tg3json__init_value.exit_crit_edge.i.i.us.i, %.lr.ph132.split.us.preheader.i
  %indvars.iv166.i = phi i64 [ 0, %.lr.ph132.split.us.preheader.i ], [ %indvars.iv.next167.i, %.tg3json__init_value.exit_crit_edge.i.i.us.i ] ; 9 uses
  %.pre.i.i138.us.i = phi ptr [ null, %.lr.ph132.split.us.preheader.i ], [ %i.cj, %.tg3json__init_value.exit_crit_edge.i.i.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !194 ; 2 uses
  %.not78.us.i = icmp eq ptr %i.bp, null
  br i1 %.not78.us.i, label %.thread.i, label %bb.s

.thread.i:                                        ; preds = %.lr.ph132.split.us.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 6, ptr %9, align 8, !tbaa !37
  br label %._crit_edge129.us.i

bb.s:                                             ; preds = %.lr.ph132.split.us.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv166.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !41 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 6, ptr %9, align 8, !tbaa !37
  %.not149.i = icmp eq i32 %i.br, 0
  br i1 %.not149.i, label %._crit_edge129.us.i, label %.lr.ph128.us.i

bb.t:                                             ; preds = %.lr.ph128.us.i, %bb.w
  %indvars.iv161.i = phi i64 [ 0, %.lr.ph128.us.i ], [ %indvars.iv.next162.i, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !193
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv166.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !192
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %indvars.iv161.i ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !268
  %i.by = sext i32 %i.bx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store i32 2, ptr %10, align 8, !tbaa !37
  store i64 %i.by, ptr %i.v, align 8, !tbaa !34
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !509 ; 2 uses
  %.not80.us.i = icmp eq ptr %i.bz, null          ; 2 uses
  %spec.select87.us.i = select i1 %.not80.us.i, ptr @.str, ptr %i.bz
  br i1 %.not80.us.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !510
  %i.cc = zext i32 %i.cb to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cd = phi i64 [ %i.cc, %bb.u ], [ 0, %bb.t ]
  %i.ce = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %9, ptr noundef nonnull %spec.select87.us.i, i64 noundef %i.cd, ptr noundef nonnull %10)
  %.not82.not.us.i = icmp eq i32 %i.ce, 0
  br i1 %.not82.not.us.i, label %.thread114.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %exitcond165.not.i = icmp eq i64 %indvars.iv.next162.i, %wide.trip.count164.i
  br i1 %exitcond165.not.i, label %._crit_edge129.us.i, label %bb.t, !llvm.loop !506

._crit_edge129.us.i:                              ; preds = %bb.w, %bb.s, %.thread.i
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 4 uses
  %.not25.i.i.i.us.i = icmp eq i64 %indvars.iv166.i, 0
  br i1 %.not25.i.i.i.us.i, label %._crit_edge.i.i.i.us.i, label %.lr.ph.i.i.i.us.i

.lr.ph.i.i.i.us.i:                                ; preds = %._crit_edge129.us.i, %bb.x
  %.027.i.i.i.us.i = phi i64 [ %i.cg, %bb.x ], [ %indvars.iv166.i, %._crit_edge129.us.i ] ; 2 uses
  %i.cf = icmp slt i64 %.027.i.i.i.us.i, 0
  br i1 %i.cf, label %._crit_edge.i.i.i.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.us.i
  %i.cg = shl nuw i64 %.027.i.i.i.us.i, 1         ; 3 uses
  %.not = icmp ugt i64 %i.cg, %indvars.iv166.i
  br i1 %.not, label %._crit_edge.i.i.i.us.i, label %.lr.ph.i.i.i.us.i, !llvm.loop !1

._crit_edge.i.i.i.us.i:                           ; preds = %bb.x, %.lr.ph.i.i.i.us.i, %._crit_edge129.us.i
  %.1.i.i.i.us.i = phi i64 [ 8, %._crit_edge129.us.i ], [ %i.cg, %bb.x ], [ %indvars.iv.next167.i, %.lr.ph.i.i.i.us.i ] ; 2 uses
  %i.ch = icmp ugt i64 %.1.i.i.i.us.i, 768614336404564650
  br i1 %i.ch, label %.split.us.i, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i.us.i
  %i.ci = mul nuw i64 %.1.i.i.i.us.i, 24
  %i.cj = call ptr @realloc(ptr noundef %.pre.i.i138.us.i, i64 noundef %i.ci) #29 ; 4 uses
  %.not26.i.i.i.us.i = icmp eq ptr %i.cj, null
  br i1 %.not26.i.i.i.us.i, label %.split.us.i, label %.tg3json__init_value.exit_crit_edge.i.i.us.i

.tg3json__init_value.exit_crit_edge.i.i.us.i:     ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %indvars.iv166.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.cl = load i32, ptr %i.bm, align 8, !tbaa !195
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp samesign ult i64 %indvars.iv.next167.i, %i.cm
  br i1 %i.cn, label %.lr.ph132.split.us.i, label %bb.z, !llvm.loop !507

.lr.ph128.us.i:                                   ; preds = %bb.s
  %wide.trip.count164.i = zext i32 %i.br to i64
  br label %bb.t

.thread114.i:                                     ; preds = %bb.v
  store i64 %i.aa, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  store i64 %indvars.iv166.i, ptr %i.x, align 8
  store ptr %.pre.i.i138.us.i, ptr %i.w, align 8
  call void @tg3json_value_free(ptr noundef nonnull %10)
  call void @tg3json_value_free(ptr noundef nonnull %9)
  call void @tg3json_value_free(ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.thread118.i

.split.us.i:                                      ; preds = %bb.y, %._crit_edge.i.i.i.us.i
  store i64 %i.aa, ptr %i.z, align 8
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
  store ptr %i.cj, ptr %i.w, align 8
  %i.co = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.120, i64 noundef 7, ptr noundef nonnull %7)
  %.not.i98.i = icmp eq i32 %i.co, 0
  br i1 %.not.i98.i, label %bb.aa, label %tg3__json_set_take.exit101.i

bb.aa:                                            ; preds = %bb.z
  store i64 %i.aa, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %7)
  call void @tg3json_value_free(ptr noundef nonnull %7)
  br label %tg3__serialize_primitive.exit.thread

tg3__json_set_take.exit101.i:                     ; preds = %bb.z, %bb.r, %tg3__serialize_int.exit.thread.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.cq = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef nonnull %13, ptr noundef nonnull readonly %i.cp)
  %.not83.i = icmp eq i32 %i.cq, 0
  br i1 %.not83.i, label %tg3__serialize_primitive.exit.thread.loopexit, label %bb.ab

tg3__serialize_primitive.exit.thread.loopexit:    ; preds = %tg3__json_set_take.exit101.i
  store i64 %i.aa, ptr %i.z, align 8
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
  %i.cr = add i64 %i.aa, 1                        ; 5 uses
  %.not.i.not.i.i = icmp eq i64 %i.aa, -1
  br i1 %.not.i.not.i.i, label %.tg3json__init_value.exit_crit_edge.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not25.i.i.i = icmp eq i64 %i.aa, 0
  %spec.select.i.i.i = select i1 %.not25.i.i.i, i64 8, i64 %i.aa ; 3 uses
  %i.cs = icmp ult i64 %spec.select.i.i.i, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %bb.ad
  %.027.i.i.i = phi i64 [ %i.cu, %bb.ad ], [ %spec.select.i.i.i, %bb.ac ] ; 2 uses
  %i.ct = icmp slt i64 %.027.i.i.i, 0
  br i1 %i.ct, label %._crit_edge.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.cu = shl nuw i64 %.027.i.i.i, 1              ; 3 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  br i1 %i.cv, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1

._crit_edge.i.i.i:                                ; preds = %bb.ad, %.lr.ph.i.i.i, %bb.ac
  %.1.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.ac ], [ %i.cr, %.lr.ph.i.i.i ], [ %i.cu, %bb.ad ] ; 2 uses
  %i.cw = icmp ugt i64 %.1.i.i.i, 768614336404564650
  br i1 %i.cw, label %tg3__json_push_take.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.cx = mul nuw i64 %.1.i.i.i, 24
  %i.cy = call ptr @realloc(ptr noundef %.pre.i.i69, i64 noundef %i.cx) #29 ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not26.i.i.i, label %tg3__json_push_take.exit.thread, label %.tg3json__init_value.exit_crit_edge.i.i

tg3__json_push_take.exit.thread:                  ; preds = %._crit_edge.i.i.i, %bb.ae
  store i64 %i.aa, ptr %i.z, align 8
  store ptr %.pre.i.i69, ptr %i.y, align 8
  call void @tg3json_value_free(ptr noundef nonnull %13)
  br label %bb.af

bb.af:                                            ; preds = %tg3__serialize_primitive.exit.thread, %tg3__json_push_take.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %13)
  call void @tg3json_value_free(ptr noundef nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.aj

.tg3json__init_value.exit_crit_edge.i.i:          ; preds = %bb.ae, %bb.ab
  %.pre.i.i68 = phi ptr [ %.pre.i.i69, %bb.ab ], [ %i.cy, %bb.ae ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i68, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i32, ptr %i.o, align 8, !tbaa !199
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %bb.e, label %bb.ag, !llvm.loop !508

bb.ag:                                            ; preds = %.tg3json__init_value.exit_crit_edge.i.i
  store i64 %i.cr, ptr %i.z, align 8
  store ptr %.pre.i.i68, ptr %i.y, align 8
  %i.dd = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %2, ptr noundef nonnull readonly @.str.111, i64 noundef 10, ptr noundef nonnull %12)
  %.not.i29 = icmp eq i32 %i.dd, 0
  br i1 %.not.i29, label %bb.ah, label %tg3__json_set_take.exit

bb.ah:                                            ; preds = %bb.ag
  call void @tg3json_value_free(ptr noundef nonnull %12)
  call void @tg3json_value_free(ptr noundef nonnull %12)
  br label %bb.aj

tg3__json_set_take.exit:                          ; preds = %bb.ag, %bb.d, %tg3__serialize_str.exit.thread
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !511
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !512
  %i.di = call fastcc i32 @tg3__serialize_double_array(ptr noundef %2, ptr noundef nonnull @.str.113, ptr noundef %i.df, i32 noundef %i.dh)
  %.not24 = icmp eq i32 %i.di, 0
  br i1 %.not24, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %tg3__json_set_take.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dk = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %2, ptr noundef nonnull %i.dj)
  %.not25 = icmp eq i32 %i.dk, 0
  br i1 %.not25, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.af, %tg3__serialize_str.exit.thread33, %tg3__json_set_take.exit, %bb.ai, %bb.ah
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.020 = phi i32 [ 0, %bb.aj ], [ 1, %bb.ai ]
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !294
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
end_hunk_0
begin_hunk_1_@tg3__value_to_json:bb.a
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !308
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = call fastcc i32 @tg3__value_to_json(ptr noundef nonnull %i.bd, ptr noundef %3)
  %.not50 = icmp eq i32 %i.be, 0
  br i1 %.not50, label %.critedge60, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !308
  %i.bg = getelementptr inbounds nuw [96 x i8], ptr %i.bf, i64 %indvars.iv ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !601 ; 2 uses
  %.not51 = icmp eq ptr %i.bh, null               ; 2 uses
  %spec.select58 = select i1 %.not51, ptr @.str, ptr %i.bh
  br i1 %.not51, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !602
  %i.bk = zext i32 %i.bj to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bl = phi i64 [ %i.bk, %bb.y ], [ 0, %bb.x ]
  %i.bm = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %1, ptr noundef nonnull %spec.select58, i64 noundef %i.bl, ptr noundef nonnull %3)
  %.not53 = icmp eq i32 %i.bm, 0
  br i1 %.not53, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @tg3json_value_free(ptr noundef nonnull %3)
  br label %.critedge60

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = load i32, ptr %i.ay, align 8, !tbaa !309
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp samesign ult i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.w, label %tg3json_value_init_string_n.exit, !llvm.loop !597

bb.ac:                                            ; preds = %bb.b
  br label %tg3json_value_init_string_n.exit

.critedge:                                        ; preds = %bb.m, %bb.t
  call void @tg3json_value_free(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %tg3json_value_init_string_n.exit

.critedge60:                                      ; preds = %bb.w, %bb.aa
  call void @tg3json_value_free(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %tg3json_value_init_string_n.exit

tg3json_value_init_string_n.exit:                 ; preds = %bb.ab, %bb.u, %bb.v, %bb.l, %bb.k, %tg3json__init_value.exit15.i, %.critedge60, %.critedge, %bb.b, %bb.b, %bb.a, %bb.ac, %bb.e, %bb.d, %bb.c
  %.4 = phi i32 [ 0, %bb.ac ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.b ], [ 0, %.critedge ], [ 1, %bb.b ], [ 0, %.critedge60 ], [ 0, %tg3json__init_value.exit15.i ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.v ], [ 1, %bb.u ], [ 1, %bb.ab ]
  ret i32 %.4
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_str(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree readonly captures(address_is_null) %2, i32 %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 7 uses
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq i32 %3, 0
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %3 to i64                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 4, ptr %4, align 8
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #30 ; 4 uses
  %.not.i13.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i13.i.i, label %tg3__json_set_string_n.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull readonly align 1 %2, i64 %i.c, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.f, align 1, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.c, ptr %i.h, align 8, !tbaa !34
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.thread.i.i, label %tg3json_object_set_take.exit.i.i

tg3json_object_set_take.exit.i.i:                 ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.j = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i64 noundef %i.i, ptr noundef nonnull %4)
  %.not.i4.i = icmp eq i32 %i.j, 0
  br i1 %.not.i4.i, label %tg3json_object_set_take.exit.thread.i.i, label %tg3__json_set_string_n.exit

tg3json_object_set_take.exit.thread.i.i:          ; preds = %tg3json_object_set_take.exit.i.i, %bb.c
  call void @tg3json_value_free(ptr noundef nonnull %4)
  br label %tg3__json_set_string_n.exit

tg3__json_set_string_n.exit:                      ; preds = %bb.b, %tg3json_object_set_take.exit.i.i, %tg3json_object_set_take.exit.thread.i.i
  %.0.i = phi i32 [ 1, %tg3json_object_set_take.exit.i.i ], [ 0, %tg3json_object_set_take.exit.thread.i.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %tg3__json_set_string_n.exit
  %.0 = phi i32 [ %.0.i, %tg3__json_set_string_n.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_uint64(ptr nofree noundef nonnull captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json_value, align 8      ; 7 uses
  %i.a = icmp ne i64 %1, 0
  %i.b = icmp ne i32 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.c, align 8, !tbaa !34
  %i.d = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull readonly @.str.83, i64 noundef 10, ptr noundef nonnull %3)
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i.i, label %tg3__json_set_int.exit

tg3json_object_set_take.exit.thread.i.i:          ; preds = %bb.b
  call void @tg3json_value_free(ptr noundef nonnull %3)
  br label %tg3__json_set_int.exit

tg3__json_set_int.exit:                           ; preds = %bb.b, %tg3json_object_set_take.exit.thread.i.i
  %.0.i.i = phi i32 [ 0, %tg3json_object_set_take.exit.thread.i.i ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %tg3__json_set_int.exit
  %.0 = phi i32 [ %.0.i.i, %tg3__json_set_int.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_bool(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 7 uses
  %i.a = or i32 %3, %2
  %or.cond.not = icmp eq i32 %i.a, 0
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %2, 0
  %i.c = zext i1 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 1, ptr %4, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.c, ptr %i.d, align 8, !tbaa !34
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.thread.i.i, label %tg3json_object_set_take.exit.i.i

tg3json_object_set_take.exit.i.i:                 ; preds = %bb.b
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.f = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i64 noundef %i.e, ptr noundef nonnull %4)
  %.not.i2.i = icmp eq i32 %i.f, 0
  br i1 %.not.i2.i, label %tg3json_object_set_take.exit.thread.i.i, label %tg3__json_set_bool.exit

tg3json_object_set_take.exit.thread.i.i:          ; preds = %tg3json_object_set_take.exit.i.i, %bb.b
  call void @tg3json_value_free(ptr noundef nonnull %4)
  br label %tg3__json_set_bool.exit

tg3__json_set_bool.exit:                          ; preds = %tg3json_object_set_take.exit.i.i, %tg3json_object_set_take.exit.thread.i.i
  %.0.i.i = phi i32 [ 0, %tg3json_object_set_take.exit.thread.i.i ], [ 1, %tg3json_object_set_take.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %tg3__json_set_bool.exit
  %.0 = phi i32 [ %.0.i.i, %tg3__json_set_bool.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_double_array(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %tg3__json_set_take.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 5, ptr %5, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count.i = zext i32 %3 to i64         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.tg3json__init_value.exit_crit_edge.i.i.i.i, %bb.b
  %.pre.i.i.i.i14 = phi ptr [ null, %bb.b ], [ %i.n, %.tg3json__init_value.exit_crit_edge.i.i.i.i ] ; 2 uses
  %i.f = phi i64 [ 0, %bb.b ], [ %i.i, %.tg3json__init_value.exit_crit_edge.i.i.i.i ] ; 7 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.f
  %i.h = load double, ptr %i.g, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 3, ptr %4, align 8, !tbaa !37
  store double %i.h, ptr %i.c, align 8, !tbaa !34
  %i.i = add nuw nsw i64 %i.f, 1                  ; 3 uses
  %.not25.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not25.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.027.i.i.i.i.i = phi i64 [ %i.k, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.j = icmp slt i64 %.027.i.i.i.i.i, 0
  br i1 %i.j, label %._crit_edge.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = shl nuw i64 %.027.i.i.i.i.i, 1           ; 3 uses
  %.not = icmp ugt i64 %i.k, %i.f
  br i1 %.not, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i, %bb.c
  %.1.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp ugt i64 %.1.i.i.i.i.i, 768614336404564650
  br i1 %i.l, label %tg3__json_from_double_array.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.m = mul nuw i64 %.1.i.i.i.i.i, 24
  %i.n = tail call ptr @realloc(ptr noundef %.pre.i.i.i.i14, i64 noundef %i.m) #29 ; 4 uses
  %.not26.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not26.i.i.i.i.i, label %tg3__json_from_double_array.exit.thread, label %.tg3json__init_value.exit_crit_edge.i.i.i.i

tg3__json_from_double_array.exit.thread:          ; preds = %._crit_edge.i.i.i.i.i, %bb.e
  store i64 %i.f, ptr %i.e, align 8
  store ptr %.pre.i.i.i.i14, ptr %i.d, align 8
  call void @tg3json_value_free(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %tg3__json_set_take.exit.sink.split

.tg3json__init_value.exit_crit_edge.i.i.i.i:      ; preds = %bb.e
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %exitcond.not.i = icmp eq i64 %i.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tg3__json_from_double_array.exit, label %bb.c, !llvm.loop !603

tg3__json_from_double_array.exit:                 ; preds = %.tg3json__init_value.exit_crit_edge.i.i.i.i
  store i64 %wide.trip.count.i, ptr %i.e, align 8
  store ptr %i.n, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3__json_set_take.exit.sink.split, label %tg3json_object_set_take.exit.i

tg3json_object_set_take.exit.i:                   ; preds = %tg3__json_from_double_array.exit
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.q = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i64 noundef %i.p, ptr noundef nonnull %5)
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.sink.split, label %tg3__json_set_take.exit

tg3__json_set_take.exit.sink.split:               ; preds = %tg3__json_from_double_array.exit, %tg3json_object_set_take.exit.i, %tg3__json_from_double_array.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %5)
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3__json_set_take.exit.sink.split, %tg3json_object_set_take.exit.i, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %tg3json_object_set_take.exit.i ], [ 0, %tg3__json_set_take.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_int_array(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %tg3__json_set_take.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 5, ptr %5, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count.i = zext i32 %3 to i64         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.tg3json__init_value.exit_crit_edge.i.i.i.i, %bb.b
  %.pre.i.i.i.i14 = phi ptr [ null, %bb.b ], [ %i.o, %.tg3json__init_value.exit_crit_edge.i.i.i.i ] ; 2 uses
  %i.f = phi i64 [ 0, %bb.b ], [ %i.j, %.tg3json__init_value.exit_crit_edge.i.i.i.i ] ; 7 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !41
  %i.i = sext i32 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 2, ptr %4, align 8, !tbaa !37
  store i64 %i.i, ptr %i.c, align 8, !tbaa !34
  %i.j = add nuw nsw i64 %i.f, 1                  ; 3 uses
  %.not25.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not25.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.027.i.i.i.i.i = phi i64 [ %i.l, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp slt i64 %.027.i.i.i.i.i, 0
  br i1 %i.k, label %._crit_edge.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = shl nuw i64 %.027.i.i.i.i.i, 1           ; 3 uses
  %.not = icmp ugt i64 %i.l, %i.f
  br i1 %.not, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i, %bb.c
  %.1.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.m = icmp ugt i64 %.1.i.i.i.i.i, 768614336404564650
  br i1 %i.m, label %tg3__json_from_int_array.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = mul nuw i64 %.1.i.i.i.i.i, 24
  %i.o = tail call ptr @realloc(ptr noundef %.pre.i.i.i.i14, i64 noundef %i.n) #29 ; 4 uses
  %.not26.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not26.i.i.i.i.i, label %tg3__json_from_int_array.exit.thread, label %.tg3json__init_value.exit_crit_edge.i.i.i.i

tg3__json_from_int_array.exit.thread:             ; preds = %._crit_edge.i.i.i.i.i, %bb.e
  store i64 %i.f, ptr %i.e, align 8
  store ptr %.pre.i.i.i.i14, ptr %i.d, align 8
  call void @tg3json_value_free(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %tg3__json_set_take.exit.sink.split

.tg3json__init_value.exit_crit_edge.i.i.i.i:      ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %exitcond.not.i = icmp eq i64 %i.j, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tg3__json_from_int_array.exit, label %bb.c, !llvm.loop !604

tg3__json_from_int_array.exit:                    ; preds = %.tg3json__init_value.exit_crit_edge.i.i.i.i
  store i64 %wide.trip.count.i, ptr %i.e, align 8
  store ptr %i.o, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3__json_set_take.exit.sink.split, label %tg3json_object_set_take.exit.i

tg3json_object_set_take.exit.i:                   ; preds = %tg3__json_from_int_array.exit
  %i.q = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.r = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i64 noundef %i.q, ptr noundef nonnull %5)
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.sink.split, label %tg3__json_set_take.exit

tg3__json_set_take.exit.sink.split:               ; preds = %tg3__json_from_int_array.exit, %tg3json_object_set_take.exit.i, %tg3__json_from_int_array.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %5)
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3__json_set_take.exit.sink.split, %tg3json_object_set_take.exit.i, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %tg3json_object_set_take.exit.i ], [ 0, %tg3__json_set_take.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_double(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2, double noundef nofpclass(nan inf zero sub nnorm) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.tg3json_value, align 8      ; 7 uses
  %i.a = fsub double %2, %3
  %i.b = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.c = fcmp ugt double %i.b, f0x3D719799812DEA11
  %i.d = icmp ne i32 %4, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 3, ptr %5, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %2, ptr %i.e, align 8, !tbaa !34
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.thread.i.i, label %tg3json_object_set_take.exit.i.i

tg3json_object_set_take.exit.i.i:                 ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.g = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i64 noundef %i.f, ptr noundef nonnull %5)
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i.i, label %tg3__json_set_real.exit

tg3json_object_set_take.exit.thread.i.i:          ; preds = %tg3json_object_set_take.exit.i.i, %bb.b
  call void @tg3json_value_free(ptr noundef nonnull %5)
  br label %tg3__json_set_real.exit

tg3__json_set_real.exit:                          ; preds = %tg3json_object_set_take.exit.i.i, %tg3json_object_set_take.exit.thread.i.i
  %.0.i.i = phi i32 [ 0, %tg3json_object_set_take.exit.thread.i.i ], [ 1, %tg3json_object_set_take.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %tg3__json_set_real.exit
  %.0 = phi i32 [ %.0.i.i, %tg3__json_set_real.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_texture_info(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %6 = alloca %struct.tg3json_value, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.a = load i32, ptr %2, align 8, !tbaa !207    ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %tg3__json_set_take.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i32 6, ptr %6, align 8, !tbaa !37
  %i.c = zext nneg i32 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 2, ptr %5, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !34
  %i.e = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %6, ptr noundef nonnull readonly @.str.158, i64 noundef 5, ptr noundef nonnull %5)
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %tg3__json_set_int.exit.thread, label %bb.c

tg3__json_set_int.exit.thread:                    ; preds = %bb.b
  call void @tg3json_value_free(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !605  ; 2 uses
  %i.h = or i32 %i.g, %3
  %or.cond.i.not = icmp eq i32 %i.h, 0
  br i1 %or.cond.i.not, label %tg3__serialize_int.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 2, ptr %4, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !34
  %i.k = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %6, ptr noundef nonnull readonly @.str.159, i64 noundef 8, ptr noundef nonnull %4)
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %tg3__serialize_int.exit.thread16, label %tg3__serialize_int.exit

tg3__serialize_int.exit.thread16:                 ; preds = %bb.d
  call void @tg3json_value_free(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.f

tg3__serialize_int.exit:                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %tg3__serialize_int.exit.thread

tg3__serialize_int.exit.thread:                   ; preds = %bb.c, %tg3__serialize_int.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %6, ptr noundef nonnull %i.l)
  %.not8 = icmp eq i32 %i.m, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %tg3__serialize_int.exit.thread
  %.not.i.i10 = icmp eq ptr %1, null
  br i1 %.not.i.i10, label %tg3__json_set_take.exit.thread, label %tg3json_object_set_take.exit.i

tg3json_object_set_take.exit.i:                   ; preds = %bb.e
  %i.n = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.o = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i64 noundef %i.n, ptr noundef nonnull %6)
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.thread, label %tg3__json_set_take.exit

tg3__json_set_take.exit.thread:                   ; preds = %bb.e, %tg3json_object_set_take.exit.i
  call void @tg3json_value_free(ptr noundef nonnull %6)
  br label %bb.f

bb.f:                                             ; preds = %tg3__json_set_take.exit.thread, %tg3__serialize_int.exit.thread16, %tg3__json_set_int.exit.thread, %tg3__serialize_int.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %6)
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3json_object_set_take.exit.i, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 1, %bb.a ], [ 1, %tg3json_object_set_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
end_hunk_1
