Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-cops?download=true
inline.NumInlined: 104
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_cops_pr_objects:bb.a
  %8 = alloca %struct._asn1_ctx_t, align 8        ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 3 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i8, align 1                       ; 3 uses
  %i.o = load i32, ptr @ett_cops_pr_obj, align 4
  %i.p = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.o) ; 2 uses
  %i.q = icmp samesign ugt i32 %4, 3
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = getelementptr i8, ptr %1, i64 416        ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %dissect_cops_pr_object_data.exit
  %.06472 = phi i32 [ %2, %.lr.ph ], [ %i.gr, %dissect_cops_pr_object_data.exit ] ; 13 uses
  %.06571 = phi i32 [ %4, %.lr.ph ], [ %i.gq, %dissect_cops_pr_object_data.exit ]
  %i.t = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.06472) ; 3 uses
  %i.u = zext i16 %i.t to i32                     ; 8 uses
  %i.v = icmp ult i16 %i.t, 4
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load i32, ptr @hf_cops_obj_len, align 4
  %i.x = call ptr @proto_tree_add_uint(ptr noundef %i.p, i32 noundef %i.w, ptr noundef %0, i32 noundef %.06472, i32 noundef 2, i32 noundef %i.u)
  %i.y = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.x, ptr noundef nonnull @ei_cops_bad_cops_pr_object_length, ptr noundef nonnull @.str.804, i32 noundef %i.u, i32 noundef 4) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.z = add i32 %.06472, 2                       ; 2 uses
  %i.aa = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.z) ; 2 uses
  %i.ab = load i32, ptr @hf_cops_obj_s_num, align 4
  %i.ac = zext i8 %i.aa to i32                    ; 3 uses
  %i.ad = call ptr @val_to_str_const(i32 noundef %i.ac, ptr noundef nonnull @cops_s_num_vals, ptr noundef nonnull @.str.763)
  %i.ae = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.p, i32 noundef %i.ab, ptr noundef %0, i32 noundef %.06472, i32 noundef %i.u, i32 noundef %i.ac, ptr noundef nonnull @.str.805, ptr noundef %i.ad)
  %i.af = load i32, ptr @ett_cops_pr_obj, align 4
  %i.ag = call ptr @proto_item_add_subtree(ptr noundef %i.ae, i32 noundef %i.af) ; 10 uses
  %i.ah = load i32, ptr @hf_cops_obj_len, align 4
  %i.ai = call ptr @proto_tree_add_uint(ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef %0, i32 noundef %.06472, i32 noundef 2, i32 noundef %i.u) ; 0 uses
  %i.aj = load i32, ptr @hf_cops_obj_s_num, align 4
  %i.ak = call ptr @proto_tree_add_uint(ptr noundef %i.ag, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef %i.ac) ; 0 uses
  %i.al = add i32 %.06472, 3                      ; 2 uses
  %i.am = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.al) ; 7 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %i.ao = call ptr @val_to_str_const(i32 noundef %i.an, ptr noundef nonnull @cops_s_type_vals, ptr noundef nonnull @.str.763) ; 2 uses
  %i.ap = load i32, ptr @hf_cops_obj_s_type, align 4
  %char0 = load i8, ptr %i.ao, align 1
  %.not = icmp eq i8 %char0, 0                    ; 2 uses
  %i.aq = select i1 %.not, ptr @.str.765, ptr @.str.772
  %i.ar = select i1 %.not, ptr @.str.765, ptr @.str.773
  %i.as = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ag, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.al, i32 noundef 1, i32 noundef %i.an, ptr noundef nonnull @.str.771, ptr noundef %i.ao, ptr noundef nonnull %i.aq, i32 noundef %i.an, ptr noundef nonnull %i.ar) ; 0 uses
  %i.at = add i32 %.06472, 4                      ; 16 uses
  %i.au = add nsw i32 %i.u, -4                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, i8 noundef 0, i64 noundef 208, i1 noundef false) #8
  store ptr %1, ptr %i.r, align 8
  switch i8 %i.aa, label %bb.ax [
    i8 2, label %bb.e
    i8 1, label %bb.j
    i8 3, label %bb.w
    i8 6, label %bb.an
    i8 4, label %bb.ap
    i8 5, label %bb.at
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8
  %.not162.i = icmp eq i8 %i.am, 1
  br i1 %.not162.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.av = load i32, ptr @ett_cops_asn1, align 4
  %i.aw = call ptr @proto_tree_add_subtree(ptr noundef %i.ag, ptr noundef %0, i32 noundef %i.at, i32 noundef range(i32 0, 65532) %i.au, i32 noundef %i.av, ptr noundef null, ptr noundef nonnull @.str.808)
  %i.ax = load i32, ptr @hf_cops_pprid_oid, align 4
  %i.ay = call i32 @dissect_ber_object_identifier(i1 noundef zeroext false, ptr noundef nonnull %8, ptr noundef %i.aw, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.ax, ptr noundef nonnull %i.a) ; 0 uses
  %i.az = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not163.i = icmp eq ptr %i.az, null
  br i1 %.not163.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %i.az, i32 noundef 0) ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.s, align 8
  %i.bd = load ptr, ptr %i.a, align 8
  %i.be = zext nneg i32 %i.ba to i64
  %i.bf = call ptr @tvb_memdup(ptr noundef %i.bc, ptr noundef %i.bd, i32 noundef 0, i64 noundef %i.be)
  %i.bg = load ptr, ptr %i.s, align 8
  %i.bh = call i32 @oid_encoded2subid(ptr noundef %i.bg, ptr noundef %i.bf, i32 noundef %i.ba, ptr noundef %6)
  store i32 %i.bh, ptr %7, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %dissect_cops_pr_object_data.exit

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  %.not160.i = icmp eq i8 %i.am, 1
  br i1 %.not160.i, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr @ett_cops_asn1, align 4
  %i.bj = call ptr @proto_tree_add_subtree(ptr noundef %i.ag, ptr noundef %0, i32 noundef %i.at, i32 noundef range(i32 0, 65532) %i.au, i32 noundef %i.bi, ptr noundef null, ptr noundef nonnull @.str.808)
  %i.bk = call i32 @get_ber_identifier(ptr noundef %0, i32 noundef %i.at, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  %i.bl = call i32 @get_ber_length(ptr noundef %0, i32 noundef %i.bk, ptr noundef nonnull %i.h, ptr noundef null) ; 2 uses
  %i.bm = load ptr, ptr %i.s, align 8
  %i.bn = load i32, ptr %i.h, align 4
  %i.bo = zext i32 %i.bn to i64
  %i.bp = call ptr @tvb_memdup(ptr noundef %i.bm, ptr noundef %0, i32 noundef %i.bl, i64 noundef %i.bo) ; 6 uses
  store ptr %i.bp, ptr %i.i, align 8
  %i.bq = load ptr, ptr %6, align 8               ; 2 uses
  %.not161.i = icmp eq ptr %i.bq, null
  %i.br = load ptr, ptr %i.s, align 8             ; 2 uses
  br i1 %.not161.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = load i32, ptr %7, align 4               ; 3 uses
  %i.bt = load i32, ptr %i.h, align 4             ; 4 uses
  %.not57.i.i = icmp eq i32 %i.bt, 0              ; 2 uses
  br i1 %.not57.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %wide.trip.count.i.i = zext i32 %i.bt to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.bt, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ca, %vector.body ]
  %vec.phi96 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %i.bu = getelementptr i8, ptr %i.bp, i64 %index ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %wide.load = load <4 x i8>, ptr %i.bu, align 1
  %wide.load97 = load <4 x i8>, ptr %i.bv, align 1
  %i.bw = icmp sgt <4 x i8> %wide.load, splat (i8 -1)
  %i.bx = icmp sgt <4 x i8> %wide.load97, splat (i8 -1)
  %i.by = zext <4 x i1> %i.bw to <4 x i32>
  %i.bz = zext <4 x i1> %i.bx to <4 x i32>
  %i.ca = add <4 x i32> %vec.phi, %i.by           ; 2 uses
  %i.cb = add <4 x i32> %vec.phi96, %i.bz         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cb, %i.ca
  %i.cd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.03846.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.03846.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.03846.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ce = getelementptr i8, ptr %i.bp, i64 %indvars.iv.i.i
  %i.cf = load i8, ptr %i.ce, align 1
  %.not4344.i.i = icmp sgt i8 %i.cf, -1
  %i.cg = zext i1 %.not4344.i.i to i32
  %spec.select.i.i = add i32 %.03846.i.i, %i.cg   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %bb.l
  %.038.lcssa.i.i = phi i32 [ 0, %bb.l ], [ %i.cd, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ch = add i32 %.038.lcssa.i.i, %i.bs          ; 3 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 2
  %i.ck = call noalias ptr @wmem_alloc(ptr noundef %i.br, i64 noundef %i.cj) #9 ; 5 uses
  store ptr %i.ck, ptr %i.b, align 8
  %.not58.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not58.i.i, label %._crit_edge50.i.i, label %.lr.ph49.preheader.i.i

.lr.ph49.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %9 = zext i32 %i.bs to i64                      ; 2 uses
  %i.cl = shl nuw nsw i64 %9, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ck, ptr nonnull readonly align 4 %i.bq, i64 %i.cl, i1 false)
  br label %._crit_edge50.i.i

._crit_edge50.i.i:                                ; preds = %.lr.ph49.preheader.i.i, %._crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %9, %.lr.ph49.preheader.i.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %10 = zext i32 %.038.lcssa.i.i to i64
  %11 = getelementptr [4 x i8], ptr %i.ck, i64 %10
  %12 = getelementptr [4 x i8], ptr %11, i64 %.pre-phi.i.i
  br i1 %.not57.i.i, label %redecode_oid.exit.i, label %.lr.ph55.preheader.i.i

.lr.ph55.preheader.i.i:                           ; preds = %._crit_edge50.i.i
  %i.cm = getelementptr [4 x i8], ptr %i.ck, i64 %.pre-phi.i.i
  %wide.trip.count67.i.i = zext i32 %i.bt to i64
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %bb.p, %.lr.ph55.preheader.i.i
  %indvars.iv64.i.i = phi i64 [ 0, %.lr.ph55.preheader.i.i ], [ %indvars.iv.next65.i.i, %bb.p ] ; 2 uses
  %.053.i.i = phi ptr [ %i.cm, %.lr.ph55.preheader.i.i ], [ %.1.i.i, %bb.p ] ; 4 uses
  %.03652.i.i = phi i32 [ 0, %.lr.ph55.preheader.i.i ], [ %.137.i.i, %bb.p ]
  %i.cn = getelementptr i8, ptr %i.bp, i64 %indvars.iv64.i.i
  %i.co = load i8, ptr %i.cn, align 1             ; 2 uses
  %i.cp = shl i32 %.03652.i.i, 7
  %i.cq = and i8 %i.co, 127
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr            ; 2 uses
  %.not.i.i = icmp sgt i8 %i.co, -1
  br i1 %.not.i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.lr.ph55.i.i
  %i.ct = icmp ult ptr %.053.i.i, %12
  br i1 %i.ct, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.811, ptr noundef nonnull @.str.812, i32 noundef 1580, ptr noundef nonnull @.str.813) #10
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cu = getelementptr i8, ptr %.053.i.i, i64 4
  store i32 %i.cs, ptr %.053.i.i, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph55.i.i
  %.137.i.i = phi i32 [ 0, %bb.o ], [ %i.cs, %.lr.ph55.i.i ]
  %.1.i.i = phi ptr [ %i.cu, %bb.o ], [ %.053.i.i, %.lr.ph55.i.i ]
  %indvars.iv.next65.i.i = add nuw nsw i64 %indvars.iv64.i.i, 1 ; 2 uses
  %exitcond68.not.i.i = icmp eq i64 %indvars.iv.next65.i.i, %wide.trip.count67.i.i
  br i1 %exitcond68.not.i.i, label %redecode_oid.exit.loopexit.i, label %.lr.ph55.i.i, !llvm.loop !15

redecode_oid.exit.loopexit.i:                     ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %redecode_oid.exit.i

redecode_oid.exit.i:                              ; preds = %redecode_oid.exit.loopexit.i, %._crit_edge50.i.i
  %i.cv = phi ptr [ %.pre.i, %redecode_oid.exit.loopexit.i ], [ %i.ck, %._crit_edge50.i.i ]
  %i.cw = load ptr, ptr %i.s, align 8
  %i.cx = call i32 @oid_subid2encoded(ptr noundef %i.cw, i32 noundef %i.ch, ptr noundef %i.cv, ptr noundef nonnull %i.i) ; 2 uses
  store i32 %i.cx, ptr %i.h, align 4
  %.pre167.i = load ptr, ptr %i.i, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.cy = load i32, ptr %i.h, align 4
  %i.cz = call i32 @oid_encoded2subid(ptr noundef %i.br, ptr noundef %i.bp, i32 noundef %i.cy, ptr noundef nonnull %i.b)
  %.pre166.i = load i32, ptr %i.h, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %redecode_oid.exit.i
  %i.da = phi ptr [ %.pre167.i, %redecode_oid.exit.i ], [ %i.bp, %bb.q ]
  %i.db = phi i32 [ %i.cx, %redecode_oid.exit.i ], [ %.pre166.i, %bb.q ]
  %.0149.i = phi i32 [ %i.ch, %redecode_oid.exit.i ], [ %i.cz, %bb.q ]
  %i.dc = load i32, ptr @hf_cops_prid_oid, align 4
  %i.dd = call ptr @proto_tree_add_oid(ptr noundef %i.bj, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.bl, i32 noundef %i.db, ptr noundef %i.da) ; 0 uses
  %i.de = load ptr, ptr %i.b, align 8
  %i.df = call ptr @oid_get(i32 noundef %.0149.i, ptr noundef %i.de, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 2 uses
  %i.dg = load i32, ptr %i.d, align 4
  %i.dh = icmp ult i32 %i.dg, 2
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr i8, ptr %i.df, i64 16
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = icmp eq i32 %i.dj, 4
  br i1 %i.dk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %storemerge.i = phi ptr [ null, %bb.t ], [ %i.df, %bb.s ]
  store ptr %storemerge.i, ptr %5, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %dissect_cops_pr_object_data.exit

bb.w:                                             ; preds = %bb.d
  %i.dl = add i32 %.06472, %i.u                   ; 2 uses
  %.not157.i = icmp eq i8 %i.am, 1
  br i1 %.not157.i, label %bb.x, label %dissect_cops_pr_object_data.exit

bb.x:                                             ; preds = %bb.w
  %i.dm = load i32, ptr @ett_cops_asn1, align 4
  %i.dn = call ptr @proto_tree_add_subtree(ptr noundef %i.ag, ptr noundef %0, i32 noundef %i.at, i32 noundef range(i32 0, 65532) %i.au, i32 noundef %i.dm, ptr noundef null, ptr noundef nonnull @.str.808)
  %i.do = load ptr, ptr %5, align 8               ; 3 uses
  %.not158.i = icmp eq ptr %i.do, null
  br i1 %.not158.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = icmp eq i32 %i.dq, 4
  br i1 %i.dr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ds = getelementptr i8, ptr %i.do, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = call ptr @wmem_tree_lookup32(ptr noundef %i.dt, i32 noundef 1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.0148.i = phi ptr [ %i.du, %bb.z ], [ null, %bb.y ], [ null, %bb.x ]
  %i.dv = icmp ult i32 %i.at, %i.dl
  br i1 %i.dv, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aa, %bb.am
  %.1165.i = phi ptr [ %.2.i, %bb.am ], [ %.0148.i, %bb.aa ] ; 3 uses
  %.0150164.i = phi i32 [ %i.eu, %bb.am ], [ %i.at, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #8
  %i.dw = call i32 @get_ber_identifier(ptr noundef %0, i32 noundef %.0150164.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  %i.dx = call i32 @get_ber_length(ptr noundef %0, i32 noundef %i.dw, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) ; 2 uses
  %.not159.i = icmp eq ptr %.1165.i, null
  br i1 %.not159.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i
  %i.dy = getelementptr i8, ptr %.1165.i, i64 40
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = load ptr, ptr %5, align 8
  %i.eb = getelementptr i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = load i32, ptr %.1165.i, align 8
  %i.ee = add i32 %i.ed, 1
  %i.ef = call ptr @wmem_tree_lookup32(ptr noundef %i.ec, i32 noundef %i.ee)
  br label %bb.am

bb.ac:                                            ; preds = %.lr.ph.i
  %i.eg = load i32, ptr %i.l, align 4
  %i.eh = load i8, ptr %i.j, align 1              ; 8 uses
  switch i32 %i.eg, label %cops_tag_cls2syntax.exit.i [
    i32 5, label %bb.ad
    i32 2, label %bb.af
    i32 4, label %bb.ag
    i32 6, label %bb.ah
    i32 0, label %bb.ai
    i32 3, label %bb.aj
    i32 10, label %bb.ak
    i32 11, label %bb.al
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ei = icmp eq i8 %i.eh, 0
  br i1 %i.ei, label %bb.ae, label %cops_tag_cls2syntax.exit.i

.fold.split.i.i:                                  ; preds = %bb.af
  br label %bb.ae

.fold.split45.i.i:                                ; preds = %bb.ag
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.fold.split45.i.i, %.fold.split.i.i, %bb.ad
  %.09.lcssa.i.i = phi ptr [ @CopsCnv, %bb.ad ], [ getelementptr inbounds nuw (i8, ptr @CopsCnv, i64 32), %bb.af ], [ getelementptr inbounds nuw (i8, ptr @CopsCnv, i64 64), %bb.ag ], [ getelementptr inbounds nuw (i8, ptr @CopsCnv, i64 96), %bb.ah ], [ getelementptr inbounds nuw (i8, ptr @CopsCnv, i64 128), %bb.ai ], [ getelementptr inbounds nuw (i8, ptr @CopsCnv, i64 288), %bb.al ], [ getelementptr inbounds nuw (i8, ptr @CopsCnv, i64 192), %bb.aj ], [ getelementptr inbounds nuw (i8, ptr @CopsCnv, i64 160), %.fold.split.i.i ], [ getelementptr inbounds nuw (i8, ptr @CopsCnv, i64 256), %bb.ak ], [ getelementptr inbounds nuw (i8, ptr @CopsCnv, i64 224), %.fold.split45.i.i ]
  %i.ej = getelementptr i8, ptr %.09.lcssa.i.i, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  br label %cops_tag_cls2syntax.exit.i

bb.af:                                            ; preds = %bb.ac
  switch i8 %i.eh, label %cops_tag_cls2syntax.exit.i [
    i8 0, label %bb.ae
    i8 1, label %.fold.split.i.i
  ]

bb.ag:                                            ; preds = %bb.ac
  switch i8 %i.eh, label %cops_tag_cls2syntax.exit.i [
    i8 0, label %bb.ae
    i8 1, label %.fold.split45.i.i
  ]

bb.ah:                                            ; preds = %bb.ac
  %i.el = icmp eq i8 %i.eh, 0
  br i1 %i.el, label %bb.ae, label %cops_tag_cls2syntax.exit.i

bb.ai:                                            ; preds = %bb.ac
  %i.em = icmp eq i8 %i.eh, 1
  br i1 %i.em, label %bb.ae, label %cops_tag_cls2syntax.exit.i

bb.aj:                                            ; preds = %bb.ac
  %i.en = icmp eq i8 %i.eh, 1
  br i1 %i.en, label %bb.ae, label %cops_tag_cls2syntax.exit.i

bb.ak:                                            ; preds = %bb.ac
  %i.eo = icmp eq i8 %i.eh, 1
end_hunk_0
