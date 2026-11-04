Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/commit?download=true
inline.NumInlined: 150
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@commit_tree_extended:bb.a
  br i1 %exitcond.not, label %._crit_edge131, label %.lr.ph130, !llvm.loop !206

.lr.ph130:                                        ; preds = %.preheader, %bb.k
  %.1129 = phi i64 [ %i.ap, %bb.k ], [ 0, %.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [36 x i8], ptr %i.q, i64 %.1129
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !211
  %i.as = getelementptr inbounds nuw [36 x i8], ptr %i.am, i64 %.1129
  %i.at = call i32 @repo_oid_to_algop(ptr noundef nonnull %i.b, ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.as) #26
  %.not97 = icmp eq i32 %i.at, 0
  br i1 %.not97, label %bb.k, label %.thread.sink.split

._crit_edge131:                                   ; preds = %bb.k, %.preheader
  %i.au = load ptr, ptr @the_repository, align 8, !tbaa !19 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 456
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !211
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 448
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.convert_commit_extra_headers.out, i64 24, i1 false)
  %.not31.i = icmp eq ptr %8, null
  br i1 %.not31.i, label %bb.p, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %._crit_edge131, %bb.o
  %.02333.i = phi ptr [ %i.az, %bb.o ], [ %i.a, %._crit_edge131 ]
  %.02632.i = phi ptr [ %i.ca, %bb.o ], [ %8, %._crit_edge131 ] ; 5 uses
  %i.az = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #26 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02632.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !125 ; 2 uses
  %i.bc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(9) @.str.33) #28
  %.not29.i = icmp eq i32 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %.02632.i, i64 24 ; 2 uses
  br i1 %.not29.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i103
  %i.be = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %.02632.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !126
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !127
  %i.bi = call i32 @convert_object_file(ptr noundef %i.be, ptr noundef nonnull %9, ptr noundef %i.ay, ptr noundef %i.aw, ptr noundef %i.bg, i64 noundef %i.bh, i32 noundef 4, i32 noundef 1) #26
  %.not30.i = icmp eq i32 %i.bi, 0
  br i1 %.not30.i, label %bb.m, label %.critedge.i

.critedge.i:                                      ; preds = %bb.l
  call void @free(ptr noundef %i.az) #26
  %.0..0..0..0..0..0..i = load ptr, ptr %i.a, align 8, !tbaa !130 ; 2 uses
  %.not6.i.i = icmp eq ptr %.0..0..0..0..0..0..i, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.0..0..0..0..0..0..i, %.critedge.i ] ; 4 uses
  %i.bj = load ptr, ptr %.07.i.i, align 8, !tbaa !131 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !125
  call void @free(ptr noundef %i.bl) #26
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !126
  call void @free(ptr noundef %i.bn) #26
  call void @free(ptr noundef nonnull %.07.i.i) #26
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !2

bb.m:                                             ; preds = %bb.l
  %i.bo = call ptr @xstrdup(ptr noundef nonnull @.str.33) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !125
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.br = call ptr @strbuf_detach(ptr noundef nonnull %9, ptr noundef nonnull %i.bq) #26
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i103
  %i.bs = call ptr @xstrdup(ptr noundef nonnull %i.bb) #26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !125
  %i.bu = load i64, ptr %i.bd, align 8, !tbaa !127 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !127
  %i.bw = getelementptr inbounds nuw i8, ptr %.02632.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !126
  %i.by = call ptr @xmemdupz(ptr noundef %i.bx, i64 noundef %i.bu) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i = phi ptr [ %i.by, %bb.n ], [ %i.br, %bb.m ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %.sink.i, ptr %i.bz, align 8, !tbaa !126
  store ptr %i.az, ptr %.02333.i, align 8, !tbaa !130
  %i.ca = load ptr, ptr %.02632.i, align 8, !tbaa !131 ; 2 uses
  %.not.i104 = icmp eq ptr %i.ca, null
  br i1 %.not.i104, label %._crit_edge.loopexit.i, label %.lr.ph.i103, !llvm.loop !207

._crit_edge.loopexit.i:                           ; preds = %bb.o
  %.0..0..0..0..0..0.28.pre.i = load ptr, ptr %i.a, align 8, !tbaa !130
  br label %bb.p

.loopexit:                                        ; preds = %.lr.ph.i.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread.sink.split

bb.p:                                             ; preds = %._crit_edge.loopexit.i, %._crit_edge131
  %.0117.ph = phi ptr [ null, %._crit_edge131 ], [ %.0..0..0..0..0..0.28.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @write_commit_tree(ptr noundef %11, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %15, ptr noundef %i.am, i64 noundef %i.r, ptr noundef %5, ptr noundef %6, ptr noundef %.0117.ph)
  call void @free_commit_extra_headers(ptr noundef %.0117.ph)
  call void @free(ptr noundef %i.am) #26
  br i1 %.not89, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = call fastcc i32 @ensure_utf8(ptr noundef %11)
  %i.cc = icmp ne i32 %i.cb, 0
  %or.cond = or i1 %.080, %i.cc
  br i1 %or.cond, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !210
  %i.ce = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i105 = icmp eq i32 %i.ce, 0
  br i1 %.not4.i105, label %_.exit107, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @commit_utf8_warn, i32 noundef 5) #26
  br label %_.exit107

_.exit107:                                        ; preds = %bb.r, %bb.s
  %.0.i106 = phi ptr [ %i.cf, %bb.s ], [ @commit_utf8_warn, %bb.r ]
  %i.cg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cd, ptr noundef %.0.i106) #29 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_.exit107, %bb.q, %bb.p
  br i1 %.not91, label %.thread167, label %bb.u

.thread167:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.ah

bb.u:                                             ; preds = %bb.t
  %i.ch = call i32 @sign_buffer(ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %7, i32 noundef 1) #26
  %.not96 = icmp eq i32 %i.ch, 0
  br i1 %.not96, label %bb.v, label %.thread

.thread.sink.split:                               ; preds = %.lr.ph130, %bb.j, %.loopexit
  call void @free(ptr noundef %i.am) #26
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.aj

.thread154:                                       ; preds = %.thread169
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !88
  br label %.thread157

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %.pre140.pre = load ptr, ptr %i.al, align 8, !tbaa !211 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !88 ; 6 uses
  %.not98 = icmp eq ptr %.pre140.pre, null
  br i1 %.not98, label %.thread157, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i108 = icmp eq ptr %.pre140.pre, @hash_algos
  br i1 %.not.i108, label %hash_algo_by_ptr.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.1.i = icmp eq ptr %.pre140.pre, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i, label %hash_algo_by_ptr.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.2.i = icmp eq ptr %.pre140.pre, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i = select i1 %.not.2.i, i32 2, i32 0
  br label %hash_algo_by_ptr.exit

hash_algo_by_ptr.exit:                            ; preds = %bb.w, %bb.x, %bb.y
  %.2.i109 = phi i32 [ %spec.select.i, %bb.y ], [ 0, %bb.w ], [ 1, %bb.x ]
  %.not.i110 = icmp eq ptr %i.cl, @hash_algos
  br i1 %.not.i110, label %hash_algo_by_ptr.exit115, label %bb.z

bb.z:                                             ; preds = %hash_algo_by_ptr.exit
  %.not.1.i111 = icmp eq ptr %i.cl, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i111, label %hash_algo_by_ptr.exit115, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.2.i112 = icmp eq ptr %i.cl, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i113 = select i1 %.not.2.i112, i32 2, i32 0
  br label %hash_algo_by_ptr.exit115

hash_algo_by_ptr.exit115:                         ; preds = %hash_algo_by_ptr.exit, %bb.z, %bb.aa
  %.2.i114 = phi i32 [ %spec.select.i113, %bb.aa ], [ 0, %hash_algo_by_ptr.exit ], [ 1, %bb.z ]
  %i.cm = icmp samesign ugt i32 %.2.i109, %.2.i114
  br i1 %i.cm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %hash_algo_by_ptr.exit115
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %hash_algo_by_ptr.exit115
  %.sroa.0.sroa.6.0 = phi ptr [ %.pre140.pre, %hash_algo_by_ptr.exit115 ], [ %i.cl, %bb.ab ] ; 3 uses
  %.sroa.0.sroa.0.0 = phi ptr [ %13, %hash_algo_by_ptr.exit115 ], [ %12, %bb.ab ] ; 2 uses
  %.sroa.8.sroa.6.0 = phi ptr [ %i.cl, %hash_algo_by_ptr.exit115 ], [ %.pre140.pre, %bb.ab ] ; 3 uses
  %.sroa.8.sroa.0.0 = phi ptr [ %12, %hash_algo_by_ptr.exit115 ], [ %13, %bb.ab ] ; 3 uses
  %.not100 = icmp eq ptr %.sroa.0.sroa.6.0, null
  br i1 %.not100, label %.thread157, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = call i32 @add_header_signature(ptr noundef nonnull %10, ptr noundef nonnull %.sroa.0.sroa.0.0, ptr noundef nonnull %.sroa.0.sroa.6.0) ; 0 uses
  %i.co = load ptr, ptr %i.al, align 8, !tbaa !211
  %.not101 = icmp eq ptr %i.co, null
  br i1 %.not101, label %.thread157, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = call i32 @add_header_signature(ptr noundef nonnull %11, ptr noundef nonnull %.sroa.0.sroa.0.0, ptr noundef nonnull %.sroa.0.sroa.6.0) ; 0 uses
  br label %.thread157

.thread157:                                       ; preds = %.thread154, %bb.v, %bb.ad, %bb.ae, %bb.ac
  %i.cq = phi ptr [ %i.al, %bb.ac ], [ %i.al, %bb.ad ], [ %i.al, %bb.ae ], [ %i.aj, %.thread154 ], [ %i.al, %bb.v ] ; 4 uses
  %.sroa.8.sroa.0.0164 = phi ptr [ %.sroa.8.sroa.0.0, %bb.ac ], [ %.sroa.8.sroa.0.0, %bb.ad ], [ %.sroa.8.sroa.0.0, %bb.ae ], [ %12, %.thread154 ], [ %12, %bb.v ] ; 2 uses
  %.sroa.8.sroa.6.0163 = phi ptr [ %.sroa.8.sroa.6.0, %bb.ac ], [ %.sroa.8.sroa.6.0, %bb.ad ], [ %.sroa.8.sroa.6.0, %bb.ae ], [ %i.cj, %.thread154 ], [ %i.cl, %bb.v ] ; 3 uses
  %.not100.1 = icmp eq ptr %.sroa.8.sroa.6.0163, null
  br i1 %.not100.1, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.thread157
  %i.cr = call i32 @add_header_signature(ptr noundef nonnull %10, ptr noundef nonnull %.sroa.8.sroa.0.0164, ptr noundef nonnull %.sroa.8.sroa.6.0163) ; 0 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !211
  %.not101.1 = icmp eq ptr %i.cs, null
  br i1 %.not101.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = call i32 @add_header_signature(ptr noundef nonnull %11, ptr noundef nonnull %.sroa.8.sroa.0.0164, ptr noundef nonnull %.sroa.8.sroa.6.0163) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.thread157, %bb.af, %bb.ag, %.thread167
  %.sink = phi ptr [ %i.al, %.thread167 ], [ %i.cq, %bb.ag ], [ %i.cq, %bb.af ], [ %i.cq, %.thread157 ]
  %.pre140.pre168 = load ptr, ptr %.sink, align 8, !tbaa !211 ; 2 uses
  %.not99 = icmp eq ptr %.pre140.pre168, null
  br i1 %.not99, label %.thread165, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !69
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !68
  call void @hash_object_file(ptr noundef nonnull %.pre140.pre168, ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef 1, ptr noundef nonnull %14) #26
  br label %.thread165

.thread165:                                       ; preds = %bb.i, %bb.ai, %bb.ah
  %.079 = phi ptr [ %14, %bb.ai ], [ null, %bb.ah ], [ null, %bb.i ]
  %i.cy = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !86
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !69
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !68
  %i.df = call i32 @odb_write_object_ext(ptr noundef %i.da, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef 1, ptr noundef %4, ptr noundef %.079, i32 noundef 0) #26
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.h, %.thread165
  %.182 = phi i32 [ -1, %.thread ], [ %i.df, %.thread165 ], [ -1, %bb.h ]
  call void @free(ptr noundef %i.q) #26
  call void @strbuf_release(ptr noundef nonnull %10) #26
  call void @strbuf_release(ptr noundef nonnull %11) #26
  call void @strbuf_release(ptr noundef nonnull %12) #26
  call void @strbuf_release(ptr noundef nonnull %13) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.b
  %.075 = phi i32 [ -1, %bb.b ], [ %.182, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  ret i32 %.075
}

declare i32 @is_encoding_utf8(ptr noundef) local_unnamed_addr #2

declare void @odb_assert_oid_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_commit_tree(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef range(i64 0, 4294967296) %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(address_is_null) %8) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @git_commit_encoding, align 8, !tbaa !66
  %i.b = tail call i32 @is_encoding_utf8(ptr noundef %i.a) #26
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 8192) #26
  %i.c = tail call ptr @oid_to_hex(ptr noundef %3) #26
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str.53, ptr noundef %i.c) #26
  %.not40 = icmp eq i64 %5, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.034 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %.034
  %i.e = tail call ptr @oid_to_hex(ptr noundef %i.d) #26
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str.54, ptr noundef %i.e) #26
  %i.f = add nuw nsw i64 %.034, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !212

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.g = tail call ptr @git_author_info(i32 noundef 1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.026 = phi ptr [ %6, %._crit_edge ], [ %i.g, %bb.b ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str.55, ptr noundef %.026) #26
  %.not29 = icmp eq ptr %7, null
  br i1 %.not29, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @git_committer_info(i32 noundef 1) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.025 = phi ptr [ %7, %bb.c ], [ %i.h, %bb.d ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str.56, ptr noundef %.025) #26
  %.not30 = icmp eq i32 %i.b, 0
  br i1 %.not30, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @git_commit_encoding, align 8, !tbaa !66
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str.57, ptr noundef %i.i) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not3135 = icmp eq ptr %8, null
  br i1 %.not3135, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph38, %add_extra_header.exit
  %.02436 = phi ptr [ %8, %.lr.ph38 ], [ %i.aa, %add_extra_header.exit ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02436, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125  ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #28
  tail call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i64 noundef %i.n) #26
  %i.o = getelementptr inbounds nuw i8, ptr %.02436, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !127  ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.02436, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126
  tail call void @strbuf_add_lines(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef %i.r, i64 noundef %i.p) #26
  br label %add_extra_header.exit

bb.j:                                             ; preds = %bb.h
  %i.s = load i64, ptr %0, align 8, !tbaa !214    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_avail.exit.i.i

strbuf_avail.exit.i.i:                            ; preds = %bb.j
  %i.t = load i64, ptr %i.j, align 8, !tbaa !68   ; 2 uses
  %.neg.i.i = add i64 %i.t, 1                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.s, %.neg.i.i
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_addch.exit.i

strbuf_avail.exit.thread.i.i:                     ; preds = %strbuf_avail.exit.i.i, %bb.j
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #26
  %.pre.i.i = load i64, ptr %i.j, align 8, !tbaa !68 ; 2 uses
  %.pre7.i.i = add i64 %.pre.i.i, 1
  br label %strbuf_addch.exit.i

strbuf_addch.exit.i:                              ; preds = %strbuf_avail.exit.thread.i.i, %strbuf_avail.exit.i.i
  %.pre-phi.i.i = phi i64 [ %.pre7.i.i, %strbuf_avail.exit.thread.i.i ], [ %.neg.i.i, %strbuf_avail.exit.i.i ]
  %i.u = phi i64 [ %.pre.i.i, %strbuf_avail.exit.thread.i.i ], [ %i.t, %strbuf_avail.exit.i.i ]
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !69
  store i64 %.pre-phi.i.i, ptr %i.j, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 10, ptr %i.w, align 1, !tbaa !16
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.y = load i64, ptr %i.j, align 8, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  store i8 0, ptr %i.z, align 1, !tbaa !16
  br label %add_extra_header.exit

add_extra_header.exit:                            ; preds = %bb.i, %strbuf_addch.exit.i
  %i.aa = load ptr, ptr %.02436, align 8, !tbaa !131 ; 2 uses
  %.not31 = icmp eq ptr %i.aa, null
  br i1 %.not31, label %._crit_edge39, label %bb.h, !llvm.loop !213

._crit_edge39:                                    ; preds = %add_extra_header.exit, %bb.g
  %i.ab = load i64, ptr %0, align 8, !tbaa !214   ; 2 uses
  %.not.i.i32 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i32, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %._crit_edge39
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !68 ; 2 uses
  %.neg.i = add i64 %i.ad, 1                      ; 2 uses
  %.not.i33 = icmp eq i64 %i.ab, %.neg.i
  br i1 %.not.i33, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %._crit_edge39
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #26
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !68 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.ae = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.ad, %strbuf_avail.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.pre-phi.i, ptr %i.ah, align 8, !tbaa !68
end_hunk_0
