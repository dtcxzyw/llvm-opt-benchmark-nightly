Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-per?download=true
inline.NumInlined: 74
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dissect_per_integer64b:bb.a
  %i.aj = lshr i32 %.058.lcssa, 3
  %i.ak = add nuw nsw i32 %i.c, 1                 ; 2 uses
  %i.al = sub nsw i32 %i.aj, %i.ak
  %i.am = getelementptr i8, ptr %i.w, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.ai, ptr noundef nonnull @ei_per_field_not_integer, ptr noundef %0, i32 noundef %i.al, i32 noundef %i.ak, ptr noundef nonnull @.str.21, ptr noundef %i.an) ; 0 uses
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.22) #12
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.ac, %bb.f ], [ %i.ag, %bb.g ]
  %i.ap = getelementptr i8, ptr %2, i64 24
  store ptr %.0, ptr %i.ap, align 8
  %.not62 = icmp eq ptr %5, null
  br i1 %.not62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.056.lcssa, ptr %5, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.058.lcssa
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_bits64(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @decode_bits_in_field(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int64_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_constrained_integer_64b(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, i1 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.nstime_t, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  br i1 %8, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load i32, ptr @hf_per_extension_present_bit, align 4
  %i.c = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %i.d = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %proto_item_set_hidden.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 28       ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = or i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.m = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.thread, label %bb.f

.thread:                                          ; preds = %proto_item_set_hidden.exit
  %i.o = call i32 @dissect_per_integer64b(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ca

bb.f:                                             ; preds = %proto_item_set_hidden.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.1259 = phi i32 [ %i.c, %bb.f ], [ %1, %bb.a ] ; 11 uses
  %i.p = call ptr @proto_registrar_get_nth(i32 noundef %4)
  %i.q = sub i64 %6, %5                           ; 3 uses
  %i.r = icmp ugt i64 %i.q, 65536
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %2, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !6, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = icmp eq i64 %6, 9223372036854775807
  %i.w = icmp eq i64 %5, -9223372036854775808
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %.thread303, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp eq i64 %6, -1
  %i.y = icmp eq i64 %5, 0
  %or.cond3 = and i1 %i.y, %i.x
  %i.z = add i64 %i.q, 1
  br i1 %or.cond3, label %.thread303, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.0254 = phi i64 [ %i.z, %bb.j ], [ %i.q, %bb.h ] ; 12 uses
  store i64 0, ptr %9, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.aa, align 8
  switch i64 %.0254, label %bb.n [
    i64 0, label %bb.l
    i64 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1569, ptr noundef nonnull @.str.26) #12
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = lshr i32 %.1259, 3
  br label %bb.bt

bb.n:                                             ; preds = %bb.k
  %i.ac = icmp ult i64 %.0254, 256
  br i1 %i.ac, label %.lr.ph.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr i8, ptr %2, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !range !6, !noundef !7
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.bl, label %bb.p

.thread303:                                       ; preds = %bb.i, %bb.j
  store i64 0, ptr %9, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %2, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !range !6, !noundef !7
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.thread312, label %._crit_edge.thread

bb.p:                                             ; preds = %bb.o
  %i.ak = icmp sgt i64 %.0254, -1
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.n, %bb.p
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0235324 = phi i64 [ %i.an, %.lr.ph ], [ 9223372036854775807, %.lr.ph.preheader ]
  %.0236323 = phi i64 [ %i.am, %.lr.ph ], [ -9223372036854775808, %.lr.ph.preheader ]
  %.0243322 = phi i32 [ %i.al, %.lr.ph ], [ 64, %.lr.ph.preheader ]
  %i.al = add i32 %.0243322, -1                   ; 2 uses
  %i.am = lshr i64 %.0236323, 1                   ; 2 uses
  %i.an = lshr i64 %.0235324, 1                   ; 2 uses
  %i.ao = and i64 %i.am, %.0254
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge.thread:                               ; preds = %bb.p, %.thread303
  %.0254298302370.ph = phi i64 [ %.0254, %bb.p ], [ -1, %.thread303 ] ; 2 uses
  %i.aq = and i64 %.0254298302370.ph, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  %spec.select377 = select i1 %i.ar, i32 63, i32 64
  br label %bb.q

._crit_edge:                                      ; preds = %.lr.ph
  %i.as = and i64 %i.an, %.0254
  %i.at = icmp eq i64 %i.as, 0
  %i.au = sext i1 %i.at to i32
  %spec.select = add i32 %i.al, %i.au
  %i.av = icmp samesign ult i64 %.0254, 3         ; 2 uses
  %spec.select382 = select i1 %i.av, i64 2, i64 %.0254
  %spec.select383 = select i1 %i.av, i32 1, i32 %spec.select
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %.0254298302370378 = phi i64 [ %.0254298302370.ph, %._crit_edge.thread ], [ %spec.select382, %._crit_edge ]
  %i.aw = phi i32 [ %spec.select377, %._crit_edge.thread ], [ %spec.select383, %._crit_edge ] ; 5 uses
  %i.ax = getelementptr i8, ptr %2, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 416
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noalias dereferenceable_or_null(641) ptr @wmem_alloc(ptr noundef %i.ba, i64 noundef 641) #14 ; 24 uses
  %i.bc = and i32 %.1259, 7                       ; 5 uses
  %.not350 = icmp eq i32 %i.bc, 0
  br i1 %.not350, label %.preheader318, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 46, ptr %i.bb, align 1
  %exitcond356.peel.not = icmp eq i32 %i.bc, 1
  br i1 %exitcond356.peel.not, label %.preheader318, label %.lr.ph329

.preheader318:                                    ; preds = %bb.v, %bb.r, %bb.q
  %.0240.lcssa = phi i32 [ 0, %bb.q ], [ 1, %bb.r ], [ %i.bc, %bb.v ] ; 2 uses
  %.0237.lcssa = phi i32 [ 0, %bb.q ], [ 1, %bb.r ], [ %.2, %bb.v ] ; 2 uses
  %i.bd = icmp sgt i32 %i.aw, 0
  br i1 %i.bd, label %.lr.ph338, label %.preheader

.lr.ph338:                                        ; preds = %.preheader318
  %i.be = getelementptr i8, ptr %2, i64 24
  br label %bb.w

.lr.ph329:                                        ; preds = %bb.r, %bb.v
  %.0237327 = phi i32 [ %.2, %bb.v ], [ 1, %bb.r ] ; 4 uses
  %.0240326 = phi i32 [ %18, %bb.v ], [ 1, %bb.r ] ; 2 uses
  %10 = and i32 %.0240326, 3
  %.not281 = icmp eq i32 %10, 0
  %11 = icmp slt i32 %.0237327, 640
  %or.cond284 = select i1 %.not281, i1 %11, i1 false
  br i1 %or.cond284, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph329
  %12 = add nsw i32 %.0237327, 1
  %13 = sext i32 %.0237327 to i64
  %14 = getelementptr i8, ptr %i.bb, i64 %13
  store i8 32, ptr %14, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph329
  %.1 = phi i32 [ %.0237327, %.lr.ph329 ], [ %12, %bb.s ] ; 4 uses
  %15 = icmp slt i32 %.1, 640
  br i1 %15, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %16 = add nsw i32 %.1, 1
  %17 = sext i32 %.1 to i64
  %i.bf = getelementptr i8, ptr %i.bb, i64 %17
  store i8 46, ptr %i.bf, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.2 = phi i32 [ %16, %bb.u ], [ %.1, %bb.t ]    ; 2 uses
  %18 = add nuw nsw i32 %.0240326, 1              ; 2 uses
  %exitcond356.not = icmp eq i32 %18, %i.bc
  br i1 %exitcond356.not, label %.preheader318, label %.lr.ph329, !llvm.loop !24

.preheader.loopexit:                              ; preds = %bb.ae
  %i.bg = add nuw i32 %i.aw, %i.bc
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader318
  %.2260.lcssa = phi i32 [ %.1259, %.preheader318 ], [ %.0.i, %.preheader.loopexit ] ; 3 uses
  %.0250.lcssa = phi i64 [ 0, %.preheader318 ], [ %.1251, %.preheader.loopexit ]
  %.1241.lcssa = phi i32 [ %.0240.lcssa, %.preheader318 ], [ %i.bg, %.preheader.loopexit ] ; 10 uses
  %.0238.lcssa = phi i32 [ 1, %.preheader318 ], [ %.1239, %.preheader.loopexit ] ; 5 uses
  %.3.lcssa = phi i32 [ %.0237.lcssa, %.preheader318 ], [ %.6, %.preheader.loopexit ] ; 5 uses
  %i.bh = and i32 %.1241.lcssa, 7
  %.not274344 = icmp eq i32 %i.bh, 0
  br i1 %.not274344, label %._crit_edge348, label %.lr.ph347

bb.w:                                             ; preds = %.lr.ph338, %bb.ae
  %.3337 = phi i32 [ %.0237.lcssa, %.lr.ph338 ], [ %.6, %bb.ae ] ; 4 uses
  %.0238336 = phi i32 [ 1, %.lr.ph338 ], [ %.1239, %bb.ae ] ; 2 uses
  %.1241335 = phi i32 [ %.0240.lcssa, %.lr.ph338 ], [ %i.bt, %bb.ae ] ; 4 uses
  %.2245334 = phi i32 [ 0, %.lr.ph338 ], [ %i.ci, %bb.ae ]
  %.0250333 = phi i64 [ 0, %.lr.ph338 ], [ %.1251, %bb.ae ]
  %.2260332 = phi i32 [ %.1259, %.lr.ph338 ], [ %.0.i, %bb.ae ] ; 3 uses
  %.not277 = icmp ne i32 %.1241335, 0             ; 2 uses
  %i.bi = and i32 %.1241335, 3
  %.not278 = icmp eq i32 %i.bi, 0
  %or.cond285 = and i1 %.not277, %.not278
  %i.bj = icmp slt i32 %.3337, 640
  %or.cond286 = select i1 %or.cond285, i1 %i.bj, i1 false
  br i1 %or.cond286, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bk = add nsw i32 %.3337, 1
  %i.bl = sext i32 %.3337 to i64
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.bl
  store i8 32, ptr %i.bm, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.4 = phi i32 [ %.3337, %bb.w ], [ %i.bk, %bb.x ] ; 5 uses
  %i.bn = and i32 %.1241335, 7
  %.not279 = icmp eq i32 %i.bn, 0
  %or.cond288 = and i1 %.not277, %.not279
  br i1 %or.cond288, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bo = add i32 %.0238336, 1                    ; 2 uses
  %i.bp = icmp slt i32 %.4, 640
  br i1 %i.bp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bq = add nsw i32 %.4, 1
  %i.br = sext i32 %.4 to i64
  %i.bs = getelementptr i8, ptr %i.bb, i64 %i.br
  store i8 32, ptr %i.bs, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %.1239 = phi i32 [ %.0238336, %bb.y ], [ %i.bo, %bb.aa ], [ %i.bo, %bb.z ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.y ], [ %i.bq, %bb.aa ], [ %.4, %bb.z ] ; 6 uses
  %i.bt = add nuw i32 %.1241335, 1
  %i.bu = lshr i32 %.2260332, 3
  %i.bv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bu)
  %i.bw = zext i8 %i.bv to i32
  %i.bx = and i32 %.2260332, 7
  %i.by = xor i32 %i.bx, 7
  %i.bz = lshr i32 %i.bw, %i.by
  %i.ca = trunc i32 %i.bz to i1
  store ptr null, ptr %i.be, align 8
  %.0.i = add i32 %.2260332, 1                    ; 2 uses
  %i.cb = shl i64 %.0250333, 1                    ; 3 uses
  br i1 %i.ca, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cc = or disjoint i64 %i.cb, 1                ; 2 uses
  %i.cd = icmp slt i32 %.5, 640
  br i1 %i.cd, label %.sink.split, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ce = icmp slt i32 %.5, 640
  br i1 %i.ce, label %.sink.split, label %bb.ae

.sink.split:                                      ; preds = %bb.ad, %bb.ac
  %.sink = phi i8 [ 49, %bb.ac ], [ 48, %bb.ad ]
  %.1251.ph = phi i64 [ %i.cc, %bb.ac ], [ %i.cb, %bb.ad ]
  %i.cf = add nsw i32 %.5, 1
  %i.cg = sext i32 %.5 to i64
  %i.ch = getelementptr i8, ptr %i.bb, i64 %i.cg
  store i8 %.sink, ptr %i.ch, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ac, %bb.ad
  %.1251 = phi i64 [ %i.cb, %bb.ad ], [ %i.cc, %bb.ac ], [ %.1251.ph, %.sink.split ] ; 2 uses
  %.6 = phi i32 [ %.5, %bb.ad ], [ %.5, %bb.ac ], [ %i.cf, %.sink.split ] ; 2 uses
  %i.ci = add nuw nsw i32 %.2245334, 1            ; 2 uses
  %exitcond358.not = icmp eq i32 %i.ci, %i.aw
  br i1 %exitcond358.not, label %.preheader.loopexit, label %bb.w, !llvm.loop !25

.lr.ph347:                                        ; preds = %.preheader
  %i.cj = and i32 %.1241.lcssa, 3
  %.not276 = icmp eq i32 %i.cj, 0
  %i.ck = icmp slt i32 %.3.lcssa, 640
  %or.cond290 = select i1 %.not276, i1 %i.ck, i1 false
  br i1 %or.cond290, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph347
  %i.cl = add nsw i32 %.3.lcssa, 1
  %i.cm = sext i32 %.3.lcssa to i64
  %i.cn = getelementptr i8, ptr %i.bb, i64 %i.cm
  store i8 32, ptr %i.cn, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph347
  %.8 = phi i32 [ %.3.lcssa, %.lr.ph347 ], [ %i.cl, %bb.af ] ; 4 uses
  %i.co = icmp slt i32 %.8, 640
  br i1 %i.co, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cp = add nsw i32 %.8, 1
  %i.cq = sext i32 %.8 to i64
  %i.cr = getelementptr i8, ptr %i.bb, i64 %i.cq
  store i8 46, ptr %i.cr, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.9 = phi i32 [ %i.cp, %bb.ah ], [ %.8, %bb.ag ] ; 5 uses
  %i.cs = add nuw i32 %.1241.lcssa, 1             ; 2 uses
  %i.ct = and i32 %i.cs, 7
  %.not274 = icmp eq i32 %i.ct, 0
  br i1 %.not274, label %._crit_edge348, label %.lr.ph347.1

.lr.ph347.1:                                      ; preds = %bb.ai
  %i.cu = and i32 %i.cs, 3
  %.not276.1 = icmp eq i32 %i.cu, 0
  %i.cv = icmp slt i32 %.9, 640
  %or.cond290.1 = select i1 %.not276.1, i1 %i.cv, i1 false
  br i1 %or.cond290.1, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph347.1
  %i.cw = add nsw i32 %.9, 1
  %i.cx = sext i32 %.9 to i64
  %i.cy = getelementptr i8, ptr %i.bb, i64 %i.cx
  store i8 32, ptr %i.cy, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph347.1
  %.8.1 = phi i32 [ %.9, %.lr.ph347.1 ], [ %i.cw, %bb.aj ] ; 4 uses
  %i.cz = icmp slt i32 %.8.1, 640
  br i1 %i.cz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.da = add nsw i32 %.8.1, 1
  %i.db = sext i32 %.8.1 to i64
  %i.dc = getelementptr i8, ptr %i.bb, i64 %i.db
  store i8 46, ptr %i.dc, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.9.1 = phi i32 [ %i.da, %bb.al ], [ %.8.1, %bb.ak ] ; 5 uses
  %i.dd = add nuw i32 %.1241.lcssa, 2             ; 2 uses
  %i.de = and i32 %i.dd, 7
  %.not274.1 = icmp eq i32 %i.de, 0
  br i1 %.not274.1, label %._crit_edge348, label %.lr.ph347.2

.lr.ph347.2:                                      ; preds = %bb.am
  %i.df = and i32 %i.dd, 3
  %.not276.2 = icmp eq i32 %i.df, 0
  %i.dg = icmp slt i32 %.9.1, 640
  %or.cond290.2 = select i1 %.not276.2, i1 %i.dg, i1 false
  br i1 %or.cond290.2, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph347.2
  %i.dh = add nsw i32 %.9.1, 1
  %i.di = sext i32 %.9.1 to i64
  %i.dj = getelementptr i8, ptr %i.bb, i64 %i.di
  store i8 32, ptr %i.dj, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph347.2
  %.8.2 = phi i32 [ %.9.1, %.lr.ph347.2 ], [ %i.dh, %bb.an ] ; 4 uses
  %i.dk = icmp slt i32 %.8.2, 640
  br i1 %i.dk, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dl = add nsw i32 %.8.2, 1
  %i.dm = sext i32 %.8.2 to i64
  %i.dn = getelementptr i8, ptr %i.bb, i64 %i.dm
  store i8 46, ptr %i.dn, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.9.2 = phi i32 [ %i.dl, %bb.ap ], [ %.8.2, %bb.ao ] ; 5 uses
  %i.do = add nuw i32 %.1241.lcssa, 3             ; 2 uses
  %i.dp = and i32 %i.do, 7
  %.not274.2 = icmp eq i32 %i.dp, 0
  br i1 %.not274.2, label %._crit_edge348, label %.lr.ph347.3

.lr.ph347.3:                                      ; preds = %bb.aq
  %i.dq = and i32 %i.do, 3
  %.not276.3 = icmp eq i32 %i.dq, 0
  %i.dr = icmp slt i32 %.9.2, 640
  %or.cond290.3 = select i1 %.not276.3, i1 %i.dr, i1 false
  br i1 %or.cond290.3, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph347.3
  %i.ds = add nsw i32 %.9.2, 1
  %i.dt = sext i32 %.9.2 to i64
  %i.du = getelementptr i8, ptr %i.bb, i64 %i.dt
  store i8 32, ptr %i.du, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph347.3
  %.8.3 = phi i32 [ %.9.2, %.lr.ph347.3 ], [ %i.ds, %bb.ar ] ; 4 uses
  %i.dv = icmp slt i32 %.8.3, 640
  br i1 %i.dv, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dw = add nsw i32 %.8.3, 1
  %i.dx = sext i32 %.8.3 to i64
  %i.dy = getelementptr i8, ptr %i.bb, i64 %i.dx
  store i8 46, ptr %i.dy, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.9.3 = phi i32 [ %i.dw, %bb.at ], [ %.8.3, %bb.as ] ; 5 uses
  %i.dz = and i32 %.1241.lcssa, 7
  %.not274.3 = icmp eq i32 %i.dz, 4
  br i1 %.not274.3, label %._crit_edge348, label %.lr.ph347.4

.lr.ph347.4:                                      ; preds = %bb.au
  %i.ea = and i32 %.1241.lcssa, 3
  %.not276.4 = icmp eq i32 %i.ea, 0
  %i.eb = icmp slt i32 %.9.3, 640
  %or.cond290.4 = select i1 %.not276.4, i1 %i.eb, i1 false
  br i1 %or.cond290.4, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph347.4
  %i.ec = add nsw i32 %.9.3, 1
  %i.ed = sext i32 %.9.3 to i64
  %i.ee = getelementptr i8, ptr %i.bb, i64 %i.ed
  store i8 32, ptr %i.ee, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph347.4
  %.8.4 = phi i32 [ %.9.3, %.lr.ph347.4 ], [ %i.ec, %bb.av ] ; 4 uses
  %i.ef = icmp slt i32 %.8.4, 640
  br i1 %i.ef, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.eg = add nsw i32 %.8.4, 1
  %i.eh = sext i32 %.8.4 to i64
  %i.ei = getelementptr i8, ptr %i.bb, i64 %i.eh
  store i8 46, ptr %i.ei, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.9.4 = phi i32 [ %i.eg, %bb.ax ], [ %.8.4, %bb.aw ] ; 5 uses
  %i.ej = add nuw i32 %.1241.lcssa, 5             ; 2 uses
  %i.ek = and i32 %i.ej, 7
  %.not274.4 = icmp eq i32 %i.ek, 0
  br i1 %.not274.4, label %._crit_edge348, label %.lr.ph347.5

.lr.ph347.5:                                      ; preds = %bb.ay
  %i.el = and i32 %i.ej, 3
  %.not276.5 = icmp eq i32 %i.el, 0
  %i.em = icmp slt i32 %.9.4, 640
  %or.cond290.5 = select i1 %.not276.5, i1 %i.em, i1 false
  br i1 %or.cond290.5, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph347.5
  %i.en = add nsw i32 %.9.4, 1
  %i.eo = sext i32 %.9.4 to i64
  %i.ep = getelementptr i8, ptr %i.bb, i64 %i.eo
  store i8 32, ptr %i.ep, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph347.5
  %.8.5 = phi i32 [ %.9.4, %.lr.ph347.5 ], [ %i.en, %bb.az ] ; 4 uses
  %i.eq = icmp slt i32 %.8.5, 640
  br i1 %i.eq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.er = add nsw i32 %.8.5, 1
  %i.es = sext i32 %.8.5 to i64
  %i.et = getelementptr i8, ptr %i.bb, i64 %i.es
  store i8 46, ptr %i.et, align 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.9.5 = phi i32 [ %i.er, %bb.bb ], [ %.8.5, %bb.ba ] ; 5 uses
  %i.eu = add nuw i32 %.1241.lcssa, 6             ; 2 uses
  %i.ev = and i32 %i.eu, 7
  %.not274.5 = icmp eq i32 %i.ev, 0
  br i1 %.not274.5, label %._crit_edge348, label %.lr.ph347.6

.lr.ph347.6:                                      ; preds = %bb.bc
  %i.ew = and i32 %i.eu, 3
  %.not276.6 = icmp eq i32 %i.ew, 0
  %i.ex = icmp slt i32 %.9.5, 640
  %or.cond290.6 = select i1 %.not276.6, i1 %i.ex, i1 false
  br i1 %or.cond290.6, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph347.6
  %i.ey = add nsw i32 %.9.5, 1
  %i.ez = sext i32 %.9.5 to i64
  %i.fa = getelementptr i8, ptr %i.bb, i64 %i.ez
  store i8 32, ptr %i.fa, align 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph347.6
  %.8.6 = phi i32 [ %.9.5, %.lr.ph347.6 ], [ %i.ey, %bb.bd ] ; 4 uses
  %i.fb = icmp slt i32 %.8.6, 640
  br i1 %i.fb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fc = add nsw i32 %.8.6, 1
  %i.fd = sext i32 %.8.6 to i64
  %i.fe = getelementptr i8, ptr %i.bb, i64 %i.fd
  store i8 46, ptr %i.fe, align 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.9.6 = phi i32 [ %i.fc, %bb.bf ], [ %.8.6, %bb.be ] ; 5 uses
  %i.ff = add nuw i32 %.1241.lcssa, 7             ; 2 uses
  %i.fg = and i32 %i.ff, 7
  %.not274.6 = icmp eq i32 %i.fg, 0
  br i1 %.not274.6, label %._crit_edge348, label %.lr.ph347.7

.lr.ph347.7:                                      ; preds = %bb.bg
  %i.fh = and i32 %i.ff, 3
  %.not276.7 = icmp eq i32 %i.fh, 0
  %i.fi = icmp slt i32 %.9.6, 640
  %or.cond290.7 = select i1 %.not276.7, i1 %i.fi, i1 false
  br i1 %or.cond290.7, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph347.7
  %i.fj = add nsw i32 %.9.6, 1
  %i.fk = sext i32 %.9.6 to i64
  %i.fl = getelementptr i8, ptr %i.bb, i64 %i.fk
  store i8 32, ptr %i.fl, align 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph347.7
  %.8.7 = phi i32 [ %.9.6, %.lr.ph347.7 ], [ %i.fj, %bb.bh ] ; 4 uses
  %i.fm = icmp slt i32 %.8.7, 640
  br i1 %i.fm, label %bb.bj, label %._crit_edge348

bb.bj:                                            ; preds = %bb.bi
  %i.fn = add nsw i32 %.8.7, 1
  %i.fo = sext i32 %.8.7 to i64
  %i.fp = getelementptr i8, ptr %i.bb, i64 %i.fo
  store i8 46, ptr %i.fp, align 1
  br label %._crit_edge348

._crit_edge348:                                   ; preds = %bb.ai, %bb.am, %bb.aq, %bb.au, %bb.ay, %bb.bc, %bb.bg, %bb.bj, %bb.bi, %.preheader
  %.7.lcssa = phi i32 [ %.3.lcssa, %.preheader ], [ %.9, %bb.ai ], [ %.9.1, %bb.am ], [ %.9.2, %bb.aq ], [ %.9.3, %bb.au ], [ %.9.4, %bb.ay ], [ %.9.5, %bb.bc ], [ %.9.6, %bb.bg ], [ %i.fn, %bb.bj ], [ %.8.7, %bb.bi ]
  %i.fq = sext i32 %.7.lcssa to i64
  %i.fr = getelementptr i8, ptr %i.bb, i64 %i.fq
  store i8 0, ptr %i.fr, align 1
  %i.fs = sub i32 %.2260.lcssa, %i.aw
  %i.ft = lshr i32 %i.fs, 3                       ; 5 uses
  %i.fu = add i64 %.0250.lcssa, %5                ; 4 uses
  %i.fv = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.bk, label %bb.bt

bb.bk:                                            ; preds = %._crit_edge348
  %i.fx = load i32, ptr @hf_per_internal_range, align 4
  %i.fy = call ptr @proto_tree_add_uint64(ptr noundef %3, i32 noundef %i.fx, ptr noundef %0, i32 noundef %i.ft, i32 noundef %.0238.lcssa, i64 noundef %.0254298302370378) ; 0 uses
  %i.fz = load i32, ptr @hf_per_internal_num_bits, align 4
  %i.ga = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.fz, ptr noundef %0, i32 noundef %i.ft, i32 noundef %.0238.lcssa, i32 noundef %i.aw) ; 0 uses
  %i.gb = load i32, ptr @hf_per_internal_value, align 4
  %i.gc = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format_value(ptr noundef %3, i32 noundef %i.gb, ptr noundef %0, i32 noundef %i.ft, i32 noundef %.0238.lcssa, i64 noundef %i.fu, ptr noundef nonnull @.str.29, ptr noundef %i.bb, i64 noundef %i.fu) ; 0 uses
  br label %bb.bt

bb.bl:                                            ; preds = %bb.o
  %i.gd = icmp eq i64 %.0254, 256
  br i1 %i.gd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %.1259.biased317 = add i32 %.1259, 7            ; 2 uses
  %.3261 = and i32 %.1259.biased317, -8
  %i.ge = lshr i32 %.1259.biased317, 3
  %i.gf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ge)
  %i.gg = zext i8 %i.gf to i64
  %i.gh = add i32 %.3261, 8                       ; 2 uses
  %i.gi = lshr exact i32 %i.gh, 3
  %i.gj = add nsw i32 %i.gi, -1
  %i.gk = add i64 %5, %i.gg
  br label %bb.bt

bb.bn:                                            ; preds = %bb.bl
  %i.gl = icmp ult i64 %.0254, 65537
  br i1 %i.gl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %.1259.biased = add i32 %.1259, 7               ; 2 uses
  %.4262 = and i32 %.1259.biased, -8
  %i.gm = lshr i32 %.1259.biased, 3
  %i.gn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gm)
  %i.go = zext i8 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.go, 8
  %i.gq = add i32 %.1259, 15
  %i.gr = lshr i32 %i.gq, 3
  %i.gs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gr)
  %i.gt = zext i8 %i.gs to i64
  %i.gu = add i32 %.4262, 16                      ; 2 uses
  %i.gv = lshr exact i32 %i.gu, 3
  %i.gw = add nsw i32 %i.gv, -2
  %i.gx = add i64 %5, %i.gt
  %i.gy = add i64 %i.gx, %i.gp
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bn
  %i.gz = icmp ugt i64 %.0254, 4294967295
  %spec.select316 = select i1 %i.gz, i32 3, i32 2
  br label %.thread312

.thread312:                                       ; preds = %bb.bp, %.thread303
  %.0254298301305308311314 = phi i64 [ %.0254, %bb.bp ], [ -1, %.thread303 ]
  %i.ha = phi i32 [ %spec.select316, %bb.bp ], [ 3, %.thread303 ] ; 3 uses
  %i.hb = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %.1259, i32 noundef %i.ha)
  %i.hc = zext i8 %i.hb to i32                    ; 3 uses
  %i.hd = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.bq, label %.thread312._crit_edge

bb.bq:                                            ; preds = %.thread312
  %i.hf = add nuw nsw i32 %i.hc, 1
  %i.hg = load i32, ptr @hf_per_const_int_len, align 4
  %i.hh = call ptr @proto_tree_add_bits_item(ptr noundef %3, i32 noundef %i.hg, ptr noundef %0, i32 noundef %.1259, i32 noundef %i.ha, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.hh, ptr noundef nonnull @.str.30, i32 noundef %i.hf, i64 noundef %.0254298301305308311314)
  br label %.thread312._crit_edge

.thread312._crit_edge:                            ; preds = %.thread312, %bb.bq
  %i.hi = add i32 %.1259, 7
  %.biased = add i32 %i.hi, %i.ha
  %.5263 = and i32 %.biased, -8
  br label %bb.br

bb.br:                                            ; preds = %.thread312._crit_edge, %bb.br
  %.0234321 = phi i32 [ 0, %.thread312._crit_edge ], [ %i.hp, %bb.br ] ; 2 uses
  %.2252320 = phi i64 [ 0, %.thread312._crit_edge ], [ %i.hn, %bb.br ]
  %.6264319 = phi i32 [ %.5263, %.thread312._crit_edge ], [ %i.ho, %bb.br ] ; 2 uses
  %i.hj = shl i64 %.2252320, 8
  %i.hk = lshr exact i32 %.6264319, 3
  %i.hl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.hk)
  %i.hm = zext i8 %i.hl to i64
  %i.hn = or disjoint i64 %i.hj, %i.hm            ; 2 uses
  %i.ho = add i32 %.6264319, 8                    ; 3 uses
  %i.hp = add nuw nsw i32 %.0234321, 1
  %exitcond.not = icmp eq i32 %.0234321, %i.hc
  br i1 %exitcond.not, label %bb.bs, label %bb.br, !llvm.loop !26

bb.bs:                                            ; preds = %bb.br
  %i.hq = lshr exact i32 %i.ho, 3
  %i.hr = add nuw nsw i32 %i.hc, 2                ; 2 uses
  %i.hs = sub nsw i32 %i.hq, %i.hr
  %i.ht = add i64 %i.hn, %5
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge348, %bb.bk, %bb.bo, %bb.bs, %bb.bm, %bb.m
  %.7265 = phi i32 [ %.1259, %bb.m ], [ %i.ho, %bb.bs ], [ %i.gh, %bb.bm ], [ %i.gu, %bb.bo ], [ %.2260.lcssa, %bb.bk ], [ %.2260.lcssa, %._crit_edge348 ] ; 2 uses
  %.3253 = phi i64 [ %5, %bb.m ], [ %i.ht, %bb.bs ], [ %i.gk, %bb.bm ], [ %i.gy, %bb.bo ], [ %i.fu, %bb.bk ], [ %i.fu, %._crit_edge348 ] ; 8 uses
  %.0249 = phi i32 [ %i.ab, %bb.m ], [ %i.hs, %bb.bs ], [ %i.gj, %bb.bm ], [ %i.gw, %bb.bo ], [ %i.ft, %bb.bk ], [ %i.ft, %._crit_edge348 ] ; 3 uses
  %.0248 = phi i32 [ 0, %bb.m ], [ %i.hr, %bb.bs ], [ 1, %bb.bm ], [ 2, %bb.bo ], [ %.0238.lcssa, %bb.bk ], [ %.0238.lcssa, %._crit_edge348 ] ; 3 uses
  %i.hu = getelementptr i8, ptr %i.p, i64 16
  %i.hv = load i32, ptr %i.hu, align 8            ; 2 uses
  switch i32 %i.hv, label %bb.bw [
    i32 3, label %bb.bu
    i32 4, label %bb.bu
    i32 5, label %bb.bu
    i32 6, label %bb.bu
    i32 7, label %bb.bu
    i32 35, label %bb.bu
    i32 8, label %bb.bu
    i32 9, label %bb.bu
    i32 10, label %bb.bu
    i32 11, label %bb.bu
    i32 12, label %bb.bv
    i32 13, label %bb.bv
    i32 14, label %bb.bv
    i32 15, label %bb.bv
    i32 16, label %bb.bv
    i32 17, label %bb.bv
    i32 18, label %bb.bv
    i32 19, label %bb.bv
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt
  %i.hw = call ptr @proto_tree_add_uint64(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %.0249, i32 noundef %.0248, i64 noundef %.3253) ; 3 uses
  %.not = icmp ugt i64 %.3253, %6
  br i1 %.not, label %.sink.split.i, label %per_check_value64.exit

.sink.split.i:                                    ; preds = %bb.bu
  %i.hx = getelementptr i8, ptr %2, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.hy, ptr noundef %i.hw, ptr noundef nonnull @ei_per_size_constraint_value, ptr noundef nonnull @.str.180, i64 noundef %.3253, i64 noundef %5, i64 noundef %6) ; 0 uses
  br label %per_check_value64.exit

bb.bv:                                            ; preds = %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt
  %i.ia = call ptr @proto_tree_add_int64(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %.0249, i32 noundef %.0248, i64 noundef %.3253) ; 3 uses
  %i.ib = icmp sgt i64 %.3253, %6
  br i1 %i.ib, label %.sink.split.i292, label %per_check_value64.exit

.sink.split.i292:                                 ; preds = %bb.bv
  %i.ic = getelementptr i8, ptr %2, i64 16
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.id, ptr noundef %i.ia, ptr noundef nonnull @ei_per_size_constraint_value, ptr noundef nonnull @.str.181, i64 noundef %.3253, i64 noundef %5, i64 noundef %6) ; 0 uses
  br label %per_check_value64.exit

bb.bw:                                            ; preds = %bb.bt
  %i.if = and i32 %i.hv, -2
  %switch = icmp eq i32 %i.if, 24
  br i1 %switch, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ig = and i64 %.3253, 4294967295
  store i64 %i.ig, ptr %9, align 8
  %i.ih = call ptr @proto_tree_add_time(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %.0249, i32 noundef %.0248, ptr noundef nonnull %9)
  br label %per_check_value64.exit

bb.by:                                            ; preds = %bb.bw
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

per_check_value64.exit:                           ; preds = %.sink.split.i292, %bb.bv, %.sink.split.i, %bb.bu, %bb.bx
  %.0255 = phi ptr [ %i.ih, %bb.bx ], [ %i.hw, %.sink.split.i ], [ %i.hw, %bb.bu ], [ %i.ia, %bb.bv ], [ %i.ia, %.sink.split.i292 ]
  %i.ii = getelementptr i8, ptr %2, i64 24
  store ptr %.0255, ptr %i.ii, align 8
  %.not282 = icmp eq ptr %7, null
  br i1 %.not282, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %per_check_value64.exit
  store i64 %.3253, ptr %7, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %.thread, %per_check_value64.exit, %bb.bz
  %.1257 = phi i32 [ %i.o, %.thread ], [ %.7265, %bb.bz ], [ %.7265, %per_check_value64.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  ret i32 %.1257
}

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_bits8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_enumerated(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i1 noundef zeroext %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i8 0, ptr %i.b, align 1
  br i1 %7, label %bb.b, label %proto_item_set_hidden.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_per_extension_present_bit, align 4
  %i.d = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, ptr noundef nonnull %i.b) ; 4 uses
  %i.e = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %proto_item_set_hidden.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.j, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.j, i64 28       ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = or i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %1, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.e ] ; 2 uses
  %i.n = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %proto_item_set_hidden.exit
  %i.p = load i32, ptr @hf_per_enum_index, align 4
  %i.q = add i32 %5, -1
  %i.r = call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %.0, ptr noundef %2, ptr noundef %3, i32 noundef %i.p, i32 noundef 0, i32 noundef %i.q, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 4 uses
  %i.s = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %proto_item_set_hidden.exit54, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %2, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i52 = icmp eq ptr %i.v, null
  br i1 %.not.i52, label %proto_item_set_hidden.exit54, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not5.i53 = icmp eq ptr %i.x, null
  br i1 %.not5.i53, label %proto_item_set_hidden.exit54, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.x, i64 28       ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = or i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  br label %proto_item_set_hidden.exit54

bb.j:                                             ; preds = %proto_item_set_hidden.exit
  %i.ab = load i32, ptr @hf_per_enum_extension_index, align 4
  %i.ac = call fastcc i32 @dissect_per_normally_small_nonnegative_whole_number(ptr noundef %0, i32 noundef %.0, ptr noundef %2, ptr noundef %3, i32 noundef %i.ab, ptr noundef nonnull %i.a)
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = add i32 %i.ad, %5
  store i32 %i.ae, ptr %i.a, align 4
  br label %proto_item_set_hidden.exit54

proto_item_set_hidden.exit54:                     ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.j
  %.1 = phi i32 [ %i.ac, %bb.j ], [ %i.r, %bb.f ], [ %i.r, %bb.g ], [ %i.r, %bb.h ], [ %i.r, %bb.i ] ; 3 uses
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %proto_item_set_hidden.exit54
  %i.af = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ag = add i32 %8, %5
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = zext i32 %i.af to i64
  %i.aj = getelementptr [4 x i8], ptr %9, i64 %i.ai
  br label %bb.m

bb.m:                                             ; preds = %proto_item_set_hidden.exit54, %bb.k, %bb.l
  %.in = phi ptr [ %i.aj, %bb.l ], [ %i.a, %bb.k ], [ %i.a, %proto_item_set_hidden.exit54 ]
  %i.ak = load i32, ptr %.in, align 4             ; 2 uses
  %i.al = call ptr @proto_registrar_get_nth(i32 noundef %4)
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8
  switch i32 %i.an, label %bb.o [
    i32 3, label %bb.n
    i32 4, label %bb.n
    i32 5, label %bb.n
    i32 6, label %bb.n
end_hunk_0
begin_hunk_1_@dissect_per_normally_small_nonnegative_whole_number:bb.a
  br i1 %.not, label %.cont94, label %..else96_crit_edge

..else96_crit_edge:                               ; preds = %bb.o
  %.else.val97.pre = load i32, ptr %5, align 4
  br label %.cont94

.cont94:                                          ; preds = %.cont98.thread, %.cont98.thread119, %..else96_crit_edge, %bb.o
  %.in = phi i32 [ %i.er, %bb.o ], [ %i.er, %..else96_crit_edge ], [ %i.dz, %.cont98.thread119 ], [ %i.dz, %.cont98.thread ]
  %.1113118 = phi i32 [ %i.em, %bb.o ], [ %i.em, %..else96_crit_edge ], [ %i.dz, %.cont98.thread119 ], [ %i.dz, %.cont98.thread ] ; 3 uses
  %i.es = phi i32 [ %.2, %bb.o ], [ %.else.val97.pre, %..else96_crit_edge ], [ 0, %.cont98.thread119 ], [ 0, %.cont98.thread ]
  %i.et = lshr i32 %.in, 3
  %i.eu = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.et, i32 noundef %i.ea, i32 noundef %i.es) ; 2 uses
  %i.ev = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.ew = trunc nuw i8 %i.ev to i1
  %.not.i67 = icmp eq ptr %i.eu, null
  %or.cond125 = select i1 %i.ew, i1 true, i1 %.not.i67
  br i1 %or.cond125, label %proto_item_set_hidden.exit66, label %bb.p

bb.p:                                             ; preds = %.cont94
  %i.ex = getelementptr i8, ptr %i.eu, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not5.i68 = icmp eq ptr %i.ey, null
  br i1 %.not5.i68, label %proto_item_set_hidden.exit66, label %proto_item_set_hidden.exit66.sink.split

proto_item_set_hidden.exit66.sink.split:          ; preds = %bb.p, %bb.g
  %.sink157 = phi ptr [ %i.dx, %bb.g ], [ %i.ey, %bb.p ]
  %.059.ph = phi i32 [ %.us-phi129147152, %bb.g ], [ %.1113118, %bb.p ]
  %i.ez = getelementptr i8, ptr %.sink157, i64 28 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = or i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4
  br label %proto_item_set_hidden.exit66

proto_item_set_hidden.exit66:                     ; preds = %proto_item_set_hidden.exit66.sink.split, %.cont72.thread.preheader, %bb.p, %.cont98.thread119, %.cont98.thread, %bb.g, %.cont98, %.cont94, %.split.us, %.cont
  %.059 = phi i32 [ %i.dz, %.cont98.thread ], [ %.us-phi129, %.split.us ], [ %.us-phi129147152, %.cont ], [ %i.em, %.cont98 ], [ %.1113118, %.cont94 ], [ %i.dz, %.cont98.thread119 ], [ %.1113118, %bb.p ], [ %.us-phi129147152, %bb.g ], [ %.us-phi129145, %.cont72.thread.preheader ], [ %.059.ph, %proto_item_set_hidden.exit66.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.059
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef i32 @dissect_per_real(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = load i32, ptr @hf_per_real_length, align 4
  %i.d = call i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, ptr noundef nonnull %i.a, ptr noundef null) ; 3 uses
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load i8, ptr %i.e, align 8, !range !6, !noundef !7
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = and i32 %i.d, 7
  %.not = icmp ne i32 %i.h, 0
  %or.cond.not = and i1 %.not, %i.g
  %i.i = and i32 %i.d, -8
  %i.j = add i32 %i.i, 8
  %.0 = select i1 %or.cond.not, i32 %i.j, i32 %i.d ; 3 uses
  %i.k = load i32, ptr %i.a, align 4              ; 5 uses
  %i.l = shl i32 %i.k, 3                          ; 2 uses
  %i.m = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.0, i32 noundef %i.l) ; 4 uses
  %i.n = and i32 %.0, 7
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call ptr @add_new_data_source(ptr noundef %i.p, ptr noundef %i.m, ptr noundef nonnull @.str.31) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.r = call ptr @tvb_get_ptr(ptr noundef %i.m, i32 noundef 0, i32 noundef %i.k)
  %i.s = call double @asn1_get_real(ptr noundef %i.r, i32 noundef %i.k, ptr noundef nonnull %i.b) ; 2 uses
  %i.t = load i32, ptr %i.b, align 4
  %i.u = icmp eq i32 %i.t, 22
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.w, ptr noundef nonnull @ei_per_encoding_error, ptr noundef %i.m, i32 noundef 0, i32 noundef %i.k, ptr noundef nonnull @.str.32) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.y = call ptr @proto_tree_add_double(ptr noundef %3, i32 noundef %4, ptr noundef %i.m, i32 noundef 0, i32 noundef %i.k, double noundef %i.s) ; 2 uses
  %i.z = getelementptr i8, ptr %2, i64 24
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = load i32, ptr %i.b, align 4
  %i.ab = icmp eq i32 %i.aa, 34
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call ptr @expert_add_info(ptr noundef %i.ad, ptr noundef %i.y, ptr noundef nonnull @ei_per_real_overflow) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.not29 = icmp eq ptr %5, null
  br i1 %.not29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store double %i.s, ptr %5, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = add i32 %.0, %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.af
}

; Function Attrs: null_pointer_is_valid
declare double @asn1_get_real(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_double(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_choice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 0, ptr %i.c, align 4
  %.not128 = icmp eq ptr %7, null                 ; 2 uses
  br i1 %.not128, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %7, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %6, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 1
  br label %proto_item_set_hidden.exit

bb.e:                                             ; preds = %bb.c
  %i.g = load i32, ptr @hf_per_extension_bit, align 4
  %i.h = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.g, ptr noundef nonnull %i.a) ; 4 uses
  %i.i = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %proto_item_set_hidden.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.n, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.n, i64 28       ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = or i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0101 = phi i32 [ %1, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.h, %bb.h ] ; 3 uses
  %i.r = getelementptr i8, ptr %6, i64 8          ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not133 = icmp eq ptr %i.s, null
  br i1 %.not133, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %proto_item_set_hidden.exit, %.lr.ph
  %i.t = phi ptr [ %i.z, %.lr.ph ], [ %6, %proto_item_set_hidden.exit ]
  %.095135 = phi i32 [ %i.x, %.lr.ph ], [ 0, %proto_item_set_hidden.exit ]
  %.099134 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %proto_item_set_hidden.exit ]
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %switch = icmp ult i32 %i.v, 2
  %i.w = zext i1 %switch to i32
  %spec.select = add i32 %.099134, %i.w           ; 3 uses
  %i.x = add i32 %.095135, 1                      ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [32 x i8], ptr %6, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph
  %i.ac = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.q, label %bb.i

._crit_edge.thread:                               ; preds = %proto_item_set_hidden.exit
  %i.ae = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.q, label %.thread156

bb.i:                                             ; preds = %._crit_edge
  %i.ag = icmp eq i32 %spec.select, 1
  br i1 %i.ag, label %bb.j, label %.thread156

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.b, align 4
  br label %proto_item_set_hidden.exit115

.thread156:                                       ; preds = %._crit_edge.thread, %bb.i
  %.099.lcssa155158 = phi i32 [ %spec.select, %bb.i ], [ 0, %._crit_edge.thread ]
  %i.ah = load i32, ptr @hf_per_choice_index, align 4
  %i.ai = add i32 %.099.lcssa155158, -1
  %i.aj = call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %.0101, ptr noundef %2, ptr noundef %3, i32 noundef %i.ah, i32 noundef 0, i32 noundef %i.ai, ptr noundef nonnull %i.b, i1 noundef zeroext false) ; 4 uses
  %i.ak = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %proto_item_set_hidden.exit115, label %bb.k

bb.k:                                             ; preds = %.thread156
  %i.am = getelementptr i8, ptr %2, i64 24
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i113 = icmp eq ptr %i.an, null
  br i1 %.not.i113, label %proto_item_set_hidden.exit115, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not5.i114 = icmp eq ptr %i.ap, null
  br i1 %.not5.i114, label %proto_item_set_hidden.exit115, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %i.ap, i64 28     ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = or i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4
  br label %proto_item_set_hidden.exit115

proto_item_set_hidden.exit115:                    ; preds = %bb.m, %bb.l, %bb.k, %.thread156, %bb.j
  %.1102 = phi i32 [ %.0101, %bb.j ], [ %i.aj, %.thread156 ], [ %i.aj, %bb.k ], [ %i.aj, %bb.l ], [ %i.aj, %bb.m ] ; 3 uses
  %i.at = load i32, ptr %i.b, align 4             ; 4 uses
  %i.au = load ptr, ptr %i.r, align 8
  %.not108136 = icmp eq ptr %i.au, null
  br i1 %.not108136, label %.thread, label %.lr.ph139

.lr.ph139:                                        ; preds = %proto_item_set_hidden.exit115, %bb.p
  %i.av = phi ptr [ %i.bb, %bb.p ], [ %6, %proto_item_set_hidden.exit115 ]
  %.1138 = phi i32 [ %i.az, %bb.p ], [ 0, %proto_item_set_hidden.exit115 ] ; 2 uses
  %.096137 = phi i32 [ %.197, %bb.p ], [ %i.at, %proto_item_set_hidden.exit115 ] ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = load i32, ptr %i.aw, align 8
  %.not109 = icmp eq i32 %i.ax, 2
  br i1 %.not109, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph139
  %.not110 = icmp eq i32 %.096137, 0
  br i1 %.not110, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = add i32 %.096137, -1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph139, %bb.o
  %.197 = phi i32 [ %i.ay, %bb.o ], [ %.096137, %.lr.ph139 ]
  %i.az = add i32 %.1138, 1                       ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [32 x i8], ptr %6, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %.not108 = icmp eq ptr %i.bd, null
  br i1 %.not108, label %.thread, label %.lr.ph139, !llvm.loop !28

bb.q:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.be = load i32, ptr @hf_per_choice_extension_index, align 4
  %i.bf = call fastcc i32 @dissect_per_normally_small_nonnegative_whole_number(ptr noundef %0, i32 noundef %.0101, ptr noundef %2, ptr noundef %3, i32 noundef %i.be, ptr noundef nonnull %i.b)
  %i.bg = load i32, ptr @hf_per_open_type_length, align 4
  %i.bh = call i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %i.bf, ptr noundef %2, ptr noundef %3, i32 noundef %i.bg, ptr noundef nonnull %i.c, ptr noundef null) ; 3 uses
  %i.bi = load i32, ptr %i.b, align 4             ; 4 uses
  %i.bj = load ptr, ptr %i.r, align 8
  %.not111140 = icmp eq ptr %i.bj, null
  br i1 %.not111140, label %.thread, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.q, %bb.t
  %i.bk = phi ptr [ %i.br, %bb.t ], [ %6, %bb.q ]
  %.2142 = phi i32 [ %i.bp, %bb.t ], [ 0, %bb.q ] ; 2 uses
  %.298141 = phi i32 [ %.3, %bb.t ], [ %i.bi, %bb.q ] ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp eq i32 %i.bm, 2
  br i1 %i.bn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.lr.ph144
  %.not112 = icmp eq i32 %.298141, 0
  br i1 %.not112, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = add i32 %.298141, -1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph144, %bb.s
  %.3 = phi i32 [ %i.bo, %bb.s ], [ %.298141, %.lr.ph144 ]
  %i.bp = add i32 %.2142, 1                       ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [32 x i8], ptr %6, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %.not111 = icmp eq ptr %i.bt, null
  br i1 %.not111, label %.thread, label %.lr.ph144, !llvm.loop !29

.loopexit:                                        ; preds = %bb.n, %bb.r
  %i.bu = phi i32 [ %i.bi, %bb.r ], [ %i.at, %bb.n ]
  %.2103 = phi i32 [ %i.bh, %bb.r ], [ %.1102, %bb.n ] ; 3 uses
  %.0 = phi i32 [ %.2142, %bb.r ], [ %.1138, %bb.n ] ; 2 uses
  %.not127 = icmp eq i32 %.0, -1
  br i1 %.not127, label %.thread, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.bv = lshr i32 %1, 3                          ; 2 uses
  %i.bw = sext i32 %.0 to i64
  %i.bx = getelementptr [32 x i8], ptr %6, i64 %i.bw ; 4 uses
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.bv, i32 noundef 0, i32 noundef %i.by) ; 2 uses
  %i.ca = call ptr @proto_item_add_subtree(ptr noundef %i.bz, i32 noundef %5)
  %i.cb = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr i8, ptr %i.bx, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr i8, ptr %i.bx, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = call i32 %i.ce(ptr noundef %0, i32 noundef %.2103, ptr noundef %2, ptr noundef %i.ca, i32 noundef %i.ch)
  %i.cj = load i32, ptr %i.c, align 4
  %i.ck = shl i32 %i.cj, 3
  %i.cl = add i32 %i.ck, %.2103
  %.3104 = select i1 %i.cc, i32 %i.cl, i32 %i.ci  ; 4 uses
  %i.cm = icmp eq i32 %.3104, %1
  %i.cn = add i32 %.3104, 7
  %i.co = lshr i32 %i.cn, 3
  %i.cp = sub nsw i32 %i.co, %i.bv
  %i.cq = select i1 %i.cm, i32 0, i32 %i.cp
  call void @proto_item_set_len(ptr noundef %i.bz, i32 noundef %i.cq)
  br i1 %.not128, label %.thread122, label %bb.x

.thread:                                          ; preds = %bb.p, %bb.t, %proto_item_set_hidden.exit115, %bb.q, %.loopexit
  %i.cr = phi i32 [ %i.bu, %.loopexit ], [ %i.bi, %bb.q ], [ %i.at, %proto_item_set_hidden.exit115 ], [ %i.bi, %bb.t ], [ %i.at, %bb.p ]
  %.2103118 = phi i32 [ %.2103, %.loopexit ], [ %i.bh, %bb.q ], [ %.1102, %proto_item_set_hidden.exit115 ], [ %i.bh, %bb.t ], [ %.1102, %bb.p ]
  %i.cs = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread
  %i.cu = getelementptr i8, ptr %2, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.cv, ptr noundef nonnull @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33) ; 0 uses
  %i.cx = getelementptr i8, ptr %i.cv, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.cy, i32 noundef 25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33)
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

bb.w:                                             ; preds = %.thread
  %i.cz = load i32, ptr %i.c, align 4
  %i.da = shl i32 %i.cz, 3
  %i.db = add i32 %i.da, %.2103118                ; 3 uses
  %i.dc = getelementptr i8, ptr %2, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = lshr i32 %1, 3                          ; 2 uses
  %i.df = icmp eq i32 %i.db, %1
  %i.dg = add i32 %i.db, 7
  %i.dh = lshr i32 %i.dg, 3
  %i.di = sub nsw i32 %i.dh, %i.de
  %i.dj = select i1 %i.df, i32 0, i32 %i.di
  %i.dk = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.dd, ptr noundef nonnull @ei_per_choice_extension_unknown, ptr noundef %0, i32 noundef %i.de, i32 noundef %i.dj, ptr noundef nonnull @.str.34, i32 noundef %i.cr) ; 0 uses
  br label %.thread122

bb.x:                                             ; preds = %bb.u
  %i.dl = load i32, ptr %i.bx, align 8
  store i32 %i.dl, ptr %7, align 4
  br label %.thread122

.thread122:                                       ; preds = %bb.w, %bb.x, %bb.u
  %.4126 = phi i32 [ %.3104, %bb.u ], [ %.3104, %bb.x ], [ %i.db, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.4126
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [4 x i32], align 16               ; 6 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1958, ptr noundef nonnull @.str.35) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i32 %1, 3                           ; 2 uses
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.g, i32 noundef 0, i32 noundef 0) ; 4 uses
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.h, i32 noundef %5) ; 15 uses
  store i8 0, ptr %i.a, align 1
  %i.j = getelementptr i8, ptr %6, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @hf_per_extension_bit, align 4
  %i.n = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %i.i, i32 noundef %i.m, ptr noundef nonnull %i.a) ; 4 uses
  %i.o = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %2, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.t, i64 28       ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = or i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0179 = phi i32 [ %1, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %bb.g ] ; 3 uses
  %i.x = load ptr, ptr %6, align 8                ; 2 uses
  %.not192238 = icmp eq ptr %i.x, null
  br i1 %.not192238, label %.preheader231.thread, label %.lr.ph

.preheader231.thread:                             ; preds = %proto_item_set_hidden.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 noundef 0, i64 noundef 16, i1 noundef false) #13
  br label %._crit_edge253

.lr.ph:                                           ; preds = %proto_item_set_hidden.exit, %bb.i
  %i.y = phi ptr [ %i.ah, %bb.i ], [ %6, %proto_item_set_hidden.exit ] ; 2 uses
  %.0166240 = phi i32 [ %.1167, %bb.i ], [ 0, %proto_item_set_hidden.exit ] ; 2 uses
  %.0173239 = phi i32 [ %i.af, %bb.i ], [ 0, %proto_item_set_hidden.exit ]
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %.not203 = icmp eq i32 %i.aa, 2
  br i1 %.not203, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr i8, ptr %i.y, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.ac, 4
  %i.ae = zext i1 %i.ad to i32
  %spec.select = add i32 %.0166240, %i.ae
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.1167 = phi i32 [ %.0166240, %.lr.ph ], [ %spec.select, %bb.h ] ; 5 uses
  %i.af = add i32 %.0173239, 1                    ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr [24 x i8], ptr %6, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not192 = icmp eq ptr %i.ai, null
  br i1 %.not192, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.i
  %i.aj = icmp ugt i32 %.1167, 128
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ak = getelementptr i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.i, ptr noundef %i.al, ptr noundef nonnull @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.36) ; 0 uses
  %i.an = getelementptr i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ao, i32 noundef 25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36)
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 noundef 0, i64 noundef 16, i1 noundef false) #13
  %.not281 = icmp eq i32 %.1167, 0
  br i1 %.not281, label %.preheader231, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.k
  %.not202 = icmp eq ptr %i.i, null
  %i.ap = getelementptr i8, ptr %2, i64 24        ; 2 uses
  br label %bb.l

.preheader231.loopexit:                           ; preds = %bb.y
  %.pre = load ptr, ptr %6, align 8
  br label %.preheader231

.preheader231:                                    ; preds = %.preheader231.loopexit, %bb.k
  %.0166.lcssa319323 = phi i32 [ 0, %bb.k ], [ %.1167, %.preheader231.loopexit ]
  %i.aq = phi ptr [ %i.x, %bb.k ], [ %.pre, %.preheader231.loopexit ] ; 2 uses
  %.1180.lcssa = phi i32 [ %.0179, %bb.k ], [ %i.as, %.preheader231.loopexit ] ; 2 uses
  %.not193247 = icmp eq ptr %i.aq, null
  br i1 %.not193247, label %._crit_edge253, label %.lr.ph252

bb.l:                                             ; preds = %.lr.ph245, %bb.y
  %.1174242 = phi i32 [ 0, %.lr.ph245 ], [ %i.cf, %bb.y ] ; 4 uses
  %.1180241 = phi i32 [ %.0179, %.lr.ph245 ], [ %i.as, %bb.y ]
  %i.ar = load i32, ptr @hf_per_optional_field_bit, align 4
  %i.as = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %.1180241, ptr noundef %2, ptr noundef %i.i, i32 noundef %i.ar, ptr noundef nonnull %i.b) ; 2 uses
  br i1 %.not202, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.ap, align 8
  %i.au = load ptr, ptr %6, align 8               ; 2 uses
  %.not20.i = icmp eq ptr %i.au, null
  br i1 %.not20.i, label %index_get_optional_name.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.s
  %i.av = phi ptr [ %i.bk, %bb.s ], [ %i.au, %bb.m ]
  %i.aw = phi ptr [ %i.bj, %bb.s ], [ %6, %bb.m ] ; 2 uses
  %.022.i = phi i32 [ %i.bh, %bb.s ], [ 0, %bb.m ]
  %.01321.i = phi i32 [ %.1.i, %bb.s ], [ %.1174242, %bb.m ] ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %.not17.i = icmp eq i32 %i.ay, 2
  br i1 %.not17.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr i8, ptr %i.aw, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = icmp eq i32 %i.ba, 4
  br i1 %i.bb, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i32 %.01321.i, 0
  br i1 %i.bc, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %i.av, align 4
  %i.be = call ptr @proto_registrar_get_nth(i32 noundef %i.bd) ; 2 uses
  %.not18.i = icmp eq ptr %i.be, null
  br i1 %.not18.i, label %index_get_optional_name.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %i.be, align 8
  br label %index_get_optional_name.exit

bb.r:                                             ; preds = %bb.o
  %i.bg = add i32 %.01321.i, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n, %.lr.ph.i
  %.1.i = phi i32 [ %i.bg, %bb.r ], [ %.01321.i, %bb.n ], [ %.01321.i, %.lr.ph.i ]
  %i.bh = add i32 %.022.i, 1                      ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [24 x i8], ptr %6, i64 %i.bi ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i205 = icmp eq ptr %i.bk, null
  br i1 %.not.i205, label %index_get_optional_name.exit, label %.lr.ph.i, !llvm.loop !31

index_get_optional_name.exit:                     ; preds = %bb.s, %bb.m, %bb.p, %bb.q
  %.014.i = phi ptr [ @.str.183, %bb.p ], [ %i.bf, %bb.q ], [ @.str.184, %bb.m ], [ @.str.184, %bb.s ]
  %i.bl = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = select i1 %i.bm, ptr @.str.38, ptr @.str.39
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.at, ptr noundef nonnull @.str.37, ptr noundef %.014.i, ptr noundef nonnull %i.bn)
  br label %bb.t

bb.t:                                             ; preds = %index_get_optional_name.exit, %bb.l
  %i.bo = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %proto_item_set_hidden.exit208, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i206 = icmp eq ptr %i.bq, null
  br i1 %.not.i206, label %proto_item_set_hidden.exit208, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not5.i207 = icmp eq ptr %i.bs, null
  br i1 %.not5.i207, label %proto_item_set_hidden.exit208, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr i8, ptr %i.bs, i64 28     ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = or i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4
  br label %proto_item_set_hidden.exit208

proto_item_set_hidden.exit208:                    ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.bw = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %proto_item_set_hidden.exit208
  %i.by = and i32 %.1174242, 31
  %i.bz = lshr exact i32 -2147483648, %i.by
  %i.ca = lshr i32 %.1174242, 5
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr %i.c, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = or i32 %i.cd, %i.bz
  store i32 %i.ce, ptr %i.cc, align 4
  br label %bb.y

bb.y:                                             ; preds = %proto_item_set_hidden.exit208, %bb.x
  %i.cf = add nuw i32 %.1174242, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cf, %.1167
  br i1 %exitcond.not, label %.preheader231.loopexit, label %bb.l, !llvm.loop !32

.lr.ph252:                                        ; preds = %.preheader231, %.thread
  %i.cg = phi ptr [ %i.dp, %.thread ], [ %i.aq, %.preheader231 ]
  %i.ch = phi ptr [ %i.do, %.thread ], [ %6, %.preheader231 ] ; 3 uses
  %.2251 = phi i32 [ %.5, %.thread ], [ %.0166.lcssa319323, %.preheader231 ] ; 4 uses
  %.0168250 = phi i32 [ %.3171, %.thread ], [ 0, %.preheader231 ] ; 6 uses
  %.2175249 = phi i32 [ %i.dm, %.thread ], [ 0, %.preheader231 ] ; 2 uses
  %.2181248 = phi i32 [ %.3182, %.thread ], [ %.1180.lcssa, %.preheader231 ] ; 4 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 8
  %switch = icmp ult i32 %i.cj, 2
  br i1 %switch, label %bb.z, label %.thread

bb.z:                                             ; preds = %.lr.ph252
  %i.ck = getelementptr i8, ptr %i.ch, i64 12
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, 4
  br i1 %i.cm, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cn = icmp eq i32 %.2251, 0
  br i1 %i.cn, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = and i32 %.0168250, 31
  %i.cp = lshr exact i32 -2147483648, %i.co
  %i.cq = lshr i32 %.0168250, 5
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.c, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = and i32 %i.ct, %i.cp
  %.not200 = icmp eq i32 %i.cu, 0
  %i.cv = add nsw i32 %.2251, -1                  ; 2 uses
  %i.cw = add i32 %.0168250, 1                    ; 2 uses
  br i1 %.not200, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.2170 = phi i32 [ %.0168250, %bb.z ], [ %i.cw, %bb.ab ]
  %.4 = phi i32 [ %.2251, %bb.z ], [ %i.cv, %bb.ab ]
  %i.cx = getelementptr i8, ptr %i.ch, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not201 = icmp eq ptr %i.cy, null
  br i1 %.not201, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load i32, ptr %i.cg, align 4
  %i.da = call i32 %i.cy(ptr noundef %0, i32 noundef %.2181248, ptr noundef %2, ptr noundef %i.i, i32 noundef %i.cz)
  br label %.thread

bb.ae:                                            ; preds = %bb.ac
  %i.db = getelementptr i8, ptr %2, i64 16
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = sext i32 %.2175249 to i64
  %i.de = getelementptr [24 x i8], ptr %6, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = call ptr @proto_registrar_get_nth(i32 noundef %i.dg) ; 2 uses
  %.not9.not.i = icmp eq ptr %i.dh, null
  br i1 %.not9.not.i, label %index_get_field_name.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = load ptr, ptr %i.dh, align 8
  br label %index_get_field_name.exit

index_get_field_name.exit:                        ; preds = %bb.ae, %bb.af
  %.1.i210 = phi ptr [ %i.di, %bb.af ], [ @.str.183, %bb.ae ] ; 2 uses
  %i.dj = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.i, ptr noundef %i.dc, ptr noundef nonnull @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %.1.i210) ; 0 uses
  %i.dk = getelementptr i8, ptr %i.dc, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.dl, i32 noundef 25, ptr noundef nonnull @.str.1, ptr noundef %.1.i210)
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

.thread:                                          ; preds = %bb.ab, %bb.aa, %.lr.ph252, %bb.ad
  %.3182 = phi i32 [ %i.da, %bb.ad ], [ %.2181248, %bb.ab ], [ %.2181248, %.lr.ph252 ], [ %.2181248, %bb.aa ] ; 2 uses
  %.3171 = phi i32 [ %.2170, %bb.ad ], [ %i.cw, %bb.ab ], [ %.0168250, %.lr.ph252 ], [ %.0168250, %bb.aa ]
  %.5 = phi i32 [ %.4, %bb.ad ], [ %i.cv, %bb.ab ], [ %.2251, %.lr.ph252 ], [ 0, %bb.aa ]
  %i.dm = add i32 %.2175249, 1                    ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr [24 x i8], ptr %6, i64 %i.dn ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not193 = icmp eq ptr %i.dp, null
  br i1 %.not193, label %._crit_edge253, label %.lr.ph252, !llvm.loop !33

._crit_edge253:                                   ; preds = %.thread, %.preheader231.thread, %.preheader231
  %.2181.lcssa = phi i32 [ %.1180.lcssa, %.preheader231 ], [ %.0179, %.preheader231.thread ], [ %.3182, %.thread ] ; 2 uses
  %i.dq = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.ag, label %bb.bh

bb.ag:                                            ; preds = %._crit_edge253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.ds = load i32, ptr @hf_per_num_sequence_extensions, align 4
  %i.dt = call fastcc i32 @dissect_per_normally_small_nonnegative_whole_number(ptr noundef %0, i32 noundef %.2181.lcssa, ptr noundef %2, ptr noundef %i.i, i32 noundef %i.ds, ptr noundef nonnull %i.e) ; 2 uses
  %i.du = load i32, ptr %i.e, align 4             ; 2 uses
  %i.dv = add i32 %i.du, 1                        ; 4 uses
  store i32 %i.dv, ptr %i.e, align 4
  %i.dw = icmp ugt i32 %i.dv, 32
  br i1 %i.dw, label %bb.ah, label %.preheader230

.preheader230:                                    ; preds = %bb.ag
  %.not282 = icmp eq i32 %i.dv, 0                 ; 2 uses
  br i1 %.not282, label %.preheader229, label %.lr.ph259

.lr.ph259:                                        ; preds = %.preheader230
  %.not199 = icmp eq ptr %i.i, null
  %i.dx = getelementptr i8, ptr %2, i64 24        ; 2 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dy = getelementptr i8, ptr %2, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  %i.ea = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.i, ptr noundef %i.dz, ptr noundef nonnull @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40) ; 0 uses
  %i.eb = getelementptr i8, ptr %i.dz, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ec, i32 noundef 25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40)
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

.preheader229:                                    ; preds = %proto_item_set_hidden.exit219, %.preheader230
  %.4183.lcssa = phi i32 [ %i.dt, %.preheader230 ], [ %i.ef, %proto_item_set_hidden.exit219 ] ; 2 uses
  %.0162.lcssa = phi i32 [ 0, %.preheader230 ], [ %i.fk, %proto_item_set_hidden.exit219 ]
  %i.ed = load ptr, ptr %6, align 8
  %.not194262 = icmp eq ptr %i.ed, null
  br i1 %.not194262, label %.preheader228, label %.lr.ph265

bb.ai:                                            ; preds = %.lr.ph259, %proto_item_set_hidden.exit219
  %.0162258 = phi i32 [ 0, %.lr.ph259 ], [ %i.fk, %proto_item_set_hidden.exit219 ]
  %.3176256 = phi i32 [ 0, %.lr.ph259 ], [ %i.fl, %proto_item_set_hidden.exit219 ] ; 3 uses
  %.4183255 = phi i32 [ %i.dt, %.lr.ph259 ], [ %i.ef, %proto_item_set_hidden.exit219 ]
  %i.ee = load i32, ptr @hf_per_extension_present_bit, align 4
  %i.ef = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %.4183255, ptr noundef %2, ptr noundef %i.i, i32 noundef %i.ee, ptr noundef nonnull %i.d) ; 2 uses
  br i1 %.not199, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eg = load ptr, ptr %i.dx, align 8
  %i.eh = load ptr, ptr %6, align 8               ; 2 uses
  %.not22.i = icmp eq ptr %i.eh, null
  br i1 %.not22.i, label %index_get_extension_name.exit, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %bb.aj, %bb.ap
  %i.ei = phi ptr [ %i.ev, %bb.ap ], [ %i.eh, %bb.aj ]
  %i.ej = phi ptr [ %i.eu, %bb.ap ], [ %6, %bb.aj ]
  %.024.i = phi i32 [ %i.es, %bb.ap ], [ 0, %bb.aj ]
  %.01523.i = phi i32 [ %.1.i214, %bb.ap ], [ %.3176256, %bb.aj ] ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = icmp eq i32 %i.el, 2
  br i1 %i.em, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.lr.ph.i213
  %i.en = icmp eq i32 %.01523.i, 0
  br i1 %i.en, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.eo = load i32, ptr %i.ei, align 4            ; 2 uses
  %.off.i = add i32 %i.eo, -1
  %switch.i = icmp ult i32 %.off.i, -2
  br i1 %switch.i, label %bb.am, label %index_get_extension_name.exit

bb.am:                                            ; preds = %bb.al
  %i.ep = call ptr @proto_registrar_get_nth(i32 noundef %i.eo) ; 2 uses
  %.not20.i216 = icmp eq ptr %i.ep, null
  br i1 %.not20.i216, label %index_get_extension_name.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eq = load ptr, ptr %i.ep, align 8
  br label %index_get_extension_name.exit

bb.ao:                                            ; preds = %bb.ak
  %i.er = add i32 %.01523.i, -1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i213
  %.1.i214 = phi i32 [ %i.er, %bb.ao ], [ %.01523.i, %.lr.ph.i213 ]
  %i.es = add i32 %.024.i, 1                      ; 2 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr [24 x i8], ptr %6, i64 %i.et ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not.i215 = icmp eq ptr %i.ev, null
  br i1 %.not.i215, label %index_get_extension_name.exit, label %.lr.ph.i213, !llvm.loop !34

index_get_extension_name.exit:                    ; preds = %bb.ap, %bb.aj, %bb.al, %bb.am, %bb.an
  %.016.i = phi ptr [ @.str.183, %bb.am ], [ %i.eq, %bb.an ], [ @.str.185, %bb.al ], [ @.str.184, %bb.aj ], [ @.str.184, %bb.ap ]
  %i.ew = load i8, ptr %i.d, align 1, !range !6, !noundef !7
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = select i1 %i.ex, ptr @.str.38, ptr @.str.39
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.eg, ptr noundef nonnull @.str.37, ptr noundef %.016.i, ptr noundef nonnull %i.ey)
  br label %bb.aq

bb.aq:                                            ; preds = %index_get_extension_name.exit, %bb.ai
  %i.ez = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %proto_item_set_hidden.exit219, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fb = load ptr, ptr %i.dx, align 8            ; 2 uses
  %.not.i217 = icmp eq ptr %i.fb, null
  br i1 %.not.i217, label %proto_item_set_hidden.exit219, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fc = getelementptr i8, ptr %i.fb, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8            ; 2 uses
  %.not5.i218 = icmp eq ptr %i.fd, null
  br i1 %.not5.i218, label %proto_item_set_hidden.exit219, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fe = getelementptr i8, ptr %i.fd, i64 28     ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = or i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fe, align 4
  br label %proto_item_set_hidden.exit219

proto_item_set_hidden.exit219:                    ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.fh = shl i32 %.0162258, 1
  %i.fi = load i8, ptr %i.d, align 1, !range !6, !noundef !7
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = or disjoint i32 %i.fh, %i.fj            ; 2 uses
  %i.fl = add nuw i32 %.3176256, 1
  %exitcond291.not = icmp eq i32 %.3176256, %i.du
  br i1 %exitcond291.not, label %.preheader229, label %bb.ai, !llvm.loop !35

.preheader228:                                    ; preds = %.lr.ph265, %.preheader229
  %.0163.lcssa = phi i32 [ 0, %.preheader229 ], [ %spec.select204, %.lr.ph265 ]
  br i1 %.not282, label %._crit_edge279, label %.lr.ph278

.lr.ph278:                                        ; preds = %.preheader228
  %i.fm = getelementptr i8, ptr %2, i64 16        ; 4 uses
  br label %bb.au

.lr.ph265:                                        ; preds = %.preheader229, %.lr.ph265
  %i.fn = phi ptr [ %i.fu, %.lr.ph265 ], [ %6, %.preheader229 ]
  %.0163264 = phi i32 [ %spec.select204, %.lr.ph265 ], [ 0, %.preheader229 ]
  %.4177263 = phi i32 [ %i.fs, %.lr.ph265 ], [ 0, %.preheader229 ]
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = icmp eq i32 %i.fp, 2
  %i.fr = zext i1 %i.fq to i32
  %spec.select204 = add i32 %.0163264, %i.fr      ; 2 uses
  %i.fs = add i32 %.4177263, 1                    ; 2 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr [24 x i8], ptr %6, i64 %i.ft ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8
  %.not194 = icmp eq ptr %i.fv, null
  br i1 %.not194, label %.preheader228, label %.lr.ph265, !llvm.loop !36

bb.au:                                            ; preds = %.lr.ph278, %bb.bg
  %i.fw = phi i32 [ %i.dv, %.lr.ph278 ], [ %i.id, %bb.bg ]
  %.5178276 = phi i32 [ 0, %.lr.ph278 ], [ %i.ic, %bb.bg ] ; 4 uses
  %.5184275 = phi i32 [ %.4183.lcssa, %.lr.ph278 ], [ %.7, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.fx = xor i32 %.5178276, -1
  %i.fy = add i32 %i.fw, %i.fx
  %i.fz = shl nuw i32 1, %i.fy
  %i.ga = and i32 %i.fz, %.0162.lcssa
  %.not195 = icmp eq i32 %i.ga, 0
  br i1 %.not195, label %bb.bg, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gb = load i32, ptr @hf_per_open_type_length, align 4
  %i.gc = call i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %.5184275, ptr noundef %2, ptr noundef %i.i, i32 noundef %i.gb, ptr noundef nonnull %i.f, ptr noundef null) ; 3 uses
  %.not196 = icmp ult i32 %.5178276, %.0163.lcssa
  br i1 %.not196, label %.preheader, label %bb.aw

.preheader:                                       ; preds = %bb.av
  %i.gd = load ptr, ptr %6, align 8
  %.not197267 = icmp eq ptr %i.gd, null
  br i1 %.not197267, label %._crit_edge271, label %.lr.ph270

bb.aw:                                            ; preds = %bb.av
  %i.ge = load i32, ptr %i.f, align 4
  %i.gf = shl i32 %i.ge, 3
  %i.gg = add i32 %i.gf, %i.gc
  %i.gh = load ptr, ptr %i.fm, align 8
  %i.gi = call ptr @expert_add_info(ptr noundef %i.gh, ptr noundef %i.h, ptr noundef nonnull @ei_per_sequence_extension_unknown) ; 0 uses
  br label %bb.bg

.lr.ph270:                                        ; preds = %.preheader, %bb.az
  %i.gj = phi ptr [ %i.gr, %bb.az ], [ %6, %.preheader ]
  %.0269 = phi i32 [ %.1, %bb.az ], [ 0, %.preheader ] ; 3 uses
  %.4172268 = phi i32 [ %i.gp, %bb.az ], [ 0, %.preheader ] ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = icmp eq i32 %i.gl, 2
  br i1 %i.gm, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.lr.ph270
  %i.gn = icmp eq i32 %.0269, %.5178276
  br i1 %i.gn, label %._crit_edge271, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.go = add i32 %.0269, 1
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph270, %bb.ay
  %.1 = phi i32 [ %i.go, %bb.ay ], [ %.0269, %.lr.ph270 ]
  %i.gp = add i32 %.4172268, 1                    ; 2 uses
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr [24 x i8], ptr %6, i64 %i.gq ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8
  %.not197 = icmp eq ptr %i.gs, null
  br i1 %.not197, label %._crit_edge271, label %.lr.ph270, !llvm.loop !37

._crit_edge271:                                   ; preds = %bb.az, %bb.ax, %.preheader
  %.0161 = phi i32 [ 0, %.preheader ], [ %.4172268, %bb.ax ], [ 0, %bb.az ] ; 2 uses
  %i.gt = zext i32 %.0161 to i64
  %i.gu = getelementptr [24 x i8], ptr %6, i64 %i.gt ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %.not198 = icmp eq ptr %i.gw, null
  br i1 %.not198, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge271
  %i.gx = load ptr, ptr %i.gu, align 8
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = call i32 %i.gw(ptr noundef %0, i32 noundef %i.gc, ptr noundef %2, ptr noundef %i.i, i32 noundef %i.gy) ; 3 uses
  %i.ha = load i32, ptr %i.f, align 4             ; 6 uses
  %i.hb = shl i32 %i.ha, 3
  %i.hc = add i32 %i.hb, %i.gc                    ; 4 uses
  %i.hd = sub i32 %i.hc, %i.gz                    ; 5 uses
  %i.he = icmp ugt i32 %i.ha, 1
  %i.hf = icmp sgt i32 %i.hd, 7
  %or.cond = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %or.cond, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hg = load ptr, ptr %i.fm, align 8
  %i.hh = lshr i32 %i.gz, 3
  %i.hi = lshr i32 %i.hd, 3                       ; 2 uses
  %i.hj = sub i32 %i.ha, %i.hi
  %i.hk = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.i, ptr noundef %i.hg, ptr noundef nonnull @ei_per_encoding_error, ptr noundef %0, i32 noundef %i.hh, i32 noundef %i.hi, ptr noundef nonnull @.str.41, i32 noundef %i.ha, i32 noundef %i.hj) ; 0 uses
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  %i.hl = icmp slt i32 %i.hd, 0
  br i1 %i.hl, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.hm = load ptr, ptr %i.fm, align 8
  %i.hn = lshr i32 %i.gz, 3
  %i.ho = lshr i32 %i.hd, 3
  %i.hp = ashr i32 %i.hd, 3
  %i.hq = sub i32 %i.ha, %i.hp
  %i.hr = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.i, ptr noundef %i.hm, ptr noundef nonnull @ei_per_encoding_error, ptr noundef %0, i32 noundef %i.hn, i32 noundef %i.ho, ptr noundef nonnull @.str.42, i32 noundef %i.ha, i32 noundef %i.hq) ; 0 uses
  br label %bb.bg

bb.be:                                            ; preds = %._crit_edge271
  %i.hs = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.ht = sext i32 %.0161 to i64
  %i.hu = getelementptr [24 x i8], ptr %6, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = call ptr @proto_registrar_get_nth(i32 noundef %i.hw) ; 2 uses
  %.not9.not.i221 = icmp eq ptr %i.hx, null
  br i1 %.not9.not.i221, label %index_get_field_name.exit223, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hy = load ptr, ptr %i.hx, align 8
  br label %index_get_field_name.exit223

index_get_field_name.exit223:                     ; preds = %bb.be, %bb.bf
  %.1.i222 = phi ptr [ %i.hy, %bb.bf ], [ @.str.183, %bb.be ] ; 2 uses
  %i.hz = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.i, ptr noundef %i.hs, ptr noundef nonnull @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %.1.i222) ; 0 uses
  %i.ia = getelementptr i8, ptr %i.hs, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ib, i32 noundef 25, ptr noundef nonnull @.str.1, ptr noundef %.1.i222)
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

bb.bg:                                            ; preds = %bb.bc, %bb.bd, %bb.bb, %bb.au, %bb.aw
  %.7 = phi i32 [ %i.gg, %bb.aw ], [ %.5184275, %bb.au ], [ %i.hc, %bb.bb ], [ %i.hc, %bb.bd ], [ %i.hc, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %i.ic = add nuw i32 %.5178276, 1                ; 2 uses
  %i.id = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ie = icmp ult i32 %i.ic, %i.id
  br i1 %i.ie, label %bb.au, label %._crit_edge279, !llvm.loop !38

._crit_edge279:                                   ; preds = %bb.bg, %.preheader228
  %.5184.lcssa = phi i32 [ %.4183.lcssa, %.preheader228 ], [ %.7, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge279, %._crit_edge253
  %.8 = phi i32 [ %.5184.lcssa, %._crit_edge279 ], [ %.2181.lcssa, %._crit_edge253 ] ; 3 uses
  %i.if = icmp eq i32 %.8, %1
  %i.ig = add i32 %.8, 7
  %i.ih = lshr i32 %i.ig, 3
  %i.ii = sub nsw i32 %i.ih, %i.g
  %i.ij = select i1 %i.if, i32 0, i32 %i.ii
  call void @proto_item_set_len(ptr noundef %i.h, i32 noundef %i.ij)
  %i.ik = getelementptr i8, ptr %2, i64 24
  store ptr %i.h, ptr %i.ik, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.8
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_sequence_eag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = load ptr, ptr %4, align 8
  %.not77 = icmp eq ptr %i.c, null
  br i1 %.not77, label %._crit_edge92, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.k, %.lr.ph ], [ %4, %bb.a ]
  %.05179 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.a ]
  %.05678 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]
  %i.e = getelementptr i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 4
  %i.h = zext i1 %i.g to i32
  %spec.select = add i32 %.05179, %i.h            ; 6 uses
  %i.i = add i32 %.05678, 1                       ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr [24 x i8], ptr %4, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = icmp ugt i32 %spec.select, 128
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.n = getelementptr i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.o, ptr noundef nonnull @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.36) ; 0 uses
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.r, i32 noundef 25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36)
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 noundef 0, i64 noundef 16, i1 noundef false) #13
  %.not94 = icmp eq i32 %spec.select, 0
  br i1 %.not94, label %.preheader, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.c
  %.not66 = icmp eq ptr %3, null
  %i.s = getelementptr i8, ptr %2, i64 24         ; 3 uses
  br i1 %.not66, label %.lr.ph84.split.us, label %.lr.ph84.split

.lr.ph84.split.us:                                ; preds = %.lr.ph84, %bb.h
  %.15781.us = phi i32 [ %i.am, %bb.h ], [ 0, %.lr.ph84 ] ; 3 uses
  %.05980.us = phi i32 [ %i.u, %bb.h ], [ %1, %.lr.ph84 ]
  %i.t = load i32, ptr @hf_per_optional_field_bit, align 4
  %i.u = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %.05980.us, ptr noundef %2, ptr noundef null, i32 noundef %i.t, ptr noundef nonnull %i.a) ; 2 uses
  %i.v = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %proto_item_set_hidden.exit.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph84.split.us
  %i.x = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i67.us = icmp eq ptr %i.x, null
  br i1 %.not.i67.us, label %proto_item_set_hidden.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not5.i.us = icmp eq ptr %i.z, null
  br i1 %.not5.i.us, label %proto_item_set_hidden.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.z, i64 28      ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = or i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4
  br label %proto_item_set_hidden.exit.us

proto_item_set_hidden.exit.us:                    ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph84.split.us
  %i.ad = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %proto_item_set_hidden.exit.us
  %i.af = and i32 %.15781.us, 31
  %i.ag = lshr exact i32 -2147483648, %i.af
  %i.ah = lshr i32 %.15781.us, 5
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr [4 x i8], ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = or i32 %i.ak, %i.ag
  store i32 %i.al, ptr %i.aj, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %proto_item_set_hidden.exit.us
  %i.am = add nuw i32 %.15781.us, 1               ; 2 uses
  %exitcond100.not = icmp eq i32 %i.am, %spec.select
  br i1 %exitcond100.not, label %.preheader, label %.lr.ph84.split.us, !llvm.loop !40

.preheader:                                       ; preds = %bb.s, %bb.h, %bb.c
  %.059.lcssa.ph = phi i32 [ %i.u, %bb.h ], [ %1, %bb.c ], [ %i.ao, %bb.s ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8                ; 2 uses
  %.not6386 = icmp eq ptr %.pr, null
  br i1 %.not6386, label %._crit_edge92, label %.lr.ph91

.lr.ph84.split:                                   ; preds = %.lr.ph84, %bb.s
  %.15781 = phi i32 [ %i.bz, %bb.s ], [ 0, %.lr.ph84 ] ; 4 uses
  %.05980 = phi i32 [ %i.ao, %bb.s ], [ %1, %.lr.ph84 ]
  %i.an = load i32, ptr @hf_per_optional_field_bit, align 4
  %i.ao = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %.05980, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %i.an, ptr noundef nonnull %i.a) ; 2 uses
  %i.ap = load ptr, ptr %i.s, align 8
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  %.not20.i = icmp eq ptr %i.aq, null
  br i1 %.not20.i, label %index_get_optional_name.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph84.split, %bb.n
  %i.ar = phi ptr [ %i.bg, %bb.n ], [ %i.aq, %.lr.ph84.split ]
  %i.as = phi ptr [ %i.bf, %bb.n ], [ %4, %.lr.ph84.split ] ; 2 uses
  %.022.i = phi i32 [ %i.bd, %bb.n ], [ 0, %.lr.ph84.split ]
  %.01321.i = phi i32 [ %.1.i, %bb.n ], [ %.15781, %.lr.ph84.split ] ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8
  %.not17.i = icmp eq i32 %i.au, 2
  br i1 %.not17.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr i8, ptr %i.as, i64 12
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %i.aw, 4
  br i1 %i.ax, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ay = icmp eq i32 %.01321.i, 0
  br i1 %i.ay, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.ar, align 4
  %i.ba = call ptr @proto_registrar_get_nth(i32 noundef %i.az) ; 2 uses
  %.not18.i = icmp eq ptr %i.ba, null
  br i1 %.not18.i, label %index_get_optional_name.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %index_get_optional_name.exit

bb.m:                                             ; preds = %bb.j
  %i.bc = add i32 %.01321.i, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i, %.lr.ph.i
  %.1.i = phi i32 [ %i.bc, %bb.m ], [ %.01321.i, %bb.i ], [ %.01321.i, %.lr.ph.i ]
  %i.bd = add i32 %.022.i, 1                      ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [24 x i8], ptr %4, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %index_get_optional_name.exit, label %.lr.ph.i, !llvm.loop !31

index_get_optional_name.exit:                     ; preds = %bb.n, %.lr.ph84.split, %bb.k, %bb.l
  %.014.i = phi ptr [ @.str.183, %bb.k ], [ %i.bb, %bb.l ], [ @.str.184, %.lr.ph84.split ], [ @.str.184, %bb.n ]
  %i.bh = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.bi = trunc nuw i8 %i.bh to i1                ; 2 uses
  %i.bj = select i1 %i.bi, ptr @.str.38, ptr @.str.39
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ap, ptr noundef nonnull @.str.37, ptr noundef %.014.i, ptr noundef nonnull %i.bj)
  %i.bk = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %proto_item_set_hidden.exit, label %bb.o

bb.o:                                             ; preds = %index_get_optional_name.exit
  %i.bm = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i67 = icmp eq ptr %i.bm, null
  br i1 %.not.i67, label %proto_item_set_hidden.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.bo, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr i8, ptr %i.bo, i64 28     ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = or i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.q, %bb.p, %bb.o, %index_get_optional_name.exit
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %proto_item_set_hidden.exit
  %i.bs = and i32 %.15781, 31
  %i.bt = lshr exact i32 -2147483648, %i.bs
  %i.bu = lshr i32 %.15781, 5
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr %i.b, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = or i32 %i.bx, %i.bt
  store i32 %i.by, ptr %i.bw, align 4
  br label %bb.s

bb.s:                                             ; preds = %proto_item_set_hidden.exit, %bb.r
  %i.bz = add nuw i32 %.15781, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bz, %spec.select
  br i1 %exitcond.not, label %.preheader, label %.lr.ph84.split, !llvm.loop !40

.lr.ph91:                                         ; preds = %.preheader, %.thread
  %i.ca = phi ptr [ %i.dh, %.thread ], [ %.pr, %.preheader ]
  %i.cb = phi ptr [ %i.dg, %.thread ], [ %4, %.preheader ] ; 2 uses
  %.290 = phi i32 [ %.5, %.thread ], [ %spec.select, %.preheader ] ; 3 uses
  %.05289 = phi i32 [ %.355, %.thread ], [ 0, %.preheader ] ; 5 uses
  %.25888 = phi i32 [ %i.de, %.thread ], [ 0, %.preheader ] ; 2 uses
  %.16087 = phi i32 [ %.261, %.thread ], [ %.059.lcssa.ph, %.preheader ] ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = icmp eq i32 %i.cd, 4
  br i1 %i.ce, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.lr.ph91
  %i.cf = icmp eq i32 %.290, 0
  br i1 %i.cf, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = and i32 %.05289, 31
  %i.ch = lshr exact i32 -2147483648, %i.cg
  %i.ci = lshr i32 %.05289, 5
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr [4 x i8], ptr %i.b, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = and i32 %i.cl, %i.ch
  %.not64 = icmp eq i32 %i.cm, 0
  %i.cn = add nsw i32 %.290, -1                   ; 2 uses
  %i.co = add i32 %.05289, 1                      ; 2 uses
  br i1 %.not64, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph91
  %.254 = phi i32 [ %.05289, %.lr.ph91 ], [ %i.co, %bb.u ]
  %.4 = phi i32 [ %.290, %.lr.ph91 ], [ %i.cn, %bb.u ]
  %i.cp = getelementptr i8, ptr %i.cb, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not65 = icmp eq ptr %i.cq, null
  br i1 %.not65, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = load i32, ptr %i.ca, align 4
  %i.cs = call i32 %i.cq(ptr noundef %0, i32 noundef %.16087, ptr noundef %2, ptr noundef %3, i32 noundef %i.cr)
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.ct = getelementptr i8, ptr %2, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not.i68 = icmp eq ptr %4, null
  br i1 %.not.i68, label %index_get_field_name.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = sext i32 %.25888 to i64
  %i.cw = getelementptr [24 x i8], ptr %4, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = call ptr @proto_registrar_get_nth(i32 noundef %i.cy) ; 2 uses
  %.not9.not.i = icmp eq ptr %i.cz, null
  br i1 %.not9.not.i, label %index_get_field_name.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = load ptr, ptr %i.cz, align 8
  br label %index_get_field_name.exit

index_get_field_name.exit:                        ; preds = %bb.x, %bb.y, %bb.z
  %.1.i69 = phi ptr [ %i.da, %bb.z ], [ @.str.183, %bb.x ], [ @.str.183, %bb.y ] ; 2 uses
  %i.db = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.cu, ptr noundef nonnull @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %.1.i69) ; 0 uses
  %i.dc = getelementptr i8, ptr %i.cu, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.dd, i32 noundef 25, ptr noundef nonnull @.str.1, ptr noundef %.1.i69)
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

.thread:                                          ; preds = %bb.u, %bb.t, %bb.w
  %.261 = phi i32 [ %i.cs, %bb.w ], [ %.16087, %bb.u ], [ %.16087, %bb.t ] ; 2 uses
  %.355 = phi i32 [ %.254, %bb.w ], [ %i.co, %bb.u ], [ %.05289, %bb.t ]
  %.5 = phi i32 [ %.4, %bb.w ], [ %i.cn, %bb.u ], [ 0, %bb.t ]
  %i.de = add i32 %.25888, 1                      ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr [24 x i8], ptr %4, i64 %i.df ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not63 = icmp eq ptr %i.dh, null
  br i1 %.not63, label %._crit_edge92, label %.lr.ph91, !llvm.loop !41

._crit_edge92:                                    ; preds = %.thread, %bb.a, %.preheader
  %.160.lcssa = phi i32 [ %.059.lcssa.ph, %.preheader ], [ %1, %bb.a ], [ %.261, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.160.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr noundef %8, i32 noundef %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %i.b = alloca i8, align 1                       ; 9 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i8 0, ptr %i.b, align 1
  %i.d = icmp slt i32 %4, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @proto_registrar_get_nth(i32 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.g = icmp eq i32 %6, 0
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.not227 = icmp eq ptr %10, null
  br i1 %.not227, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %10, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not228 = icmp eq ptr %11, null
  br i1 %.not228, label %bb.ba, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %11, align 4
  br label %bb.ba

bb.h:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %5, -1
  %spec.store.select = select i1 %i.h, i32 0, i32 %5 ; 3 uses
  br i1 %7, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.i = load i32, ptr @hf_per_extension_present_bit, align 4
  %i.j = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.i, ptr noundef nonnull %i.c) ; 2 uses
  %i.k = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %proto_item_set_hidden.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.p, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr i8, ptr %i.p, i64 28       ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = or i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.t = load i8, ptr %i.c, align 1, !range !6, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.preheader, label %.thread

.preheader:                                       ; preds = %proto_item_set_hidden.exit
  %i.v = load i32, ptr @hf_per_bit_string_length, align 4
  %i.w = call i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %i.j, ptr noundef %2, ptr noundef %3, i32 noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 4 uses
  %i.x = load i32, ptr %i.a, align 4              ; 3 uses
  %.not252 = icmp eq i32 %i.x, 0
  br i1 %.not252, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.y = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !6, !noundef !7
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = and i32 %i.w, 7
  %.not291 = icmp ne i32 %i.ab, 0
  %or.cond230.not292 = select i1 %i.aa, i1 %.not291, i1 false
  %i.ac = and i32 %i.w, -8
  %i.ad = add i32 %i.ac, 8
  %.1191293 = select i1 %or.cond230.not292, i32 %i.ad, i32 %i.w ; 2 uses
  %i.ae = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.lr.ph297, label %._crit_edge

.thread:                                          ; preds = %proto_item_set_hidden.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.x

bb.m:                                             ; preds = %bb.o
  %i.ag = load i8, ptr %i.y, align 8, !range !6, !noundef !7
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = and i32 %i.av, 7
  %.not = icmp ne i32 %i.ai, 0
  %or.cond230.not = select i1 %i.ah, i1 %.not, i1 false
  %i.aj = and i32 %i.av, -8
  %i.ak = add i32 %i.aj, 8
  %.1191 = select i1 %or.cond230.not, i32 %i.ak, i32 %i.av ; 2 uses
  %i.al = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.lr.ph297, label %._crit_edge

.lr.ph297:                                        ; preds = %.lr.ph, %bb.m
  %.1191296 = phi i32 [ %.1191, %bb.m ], [ %.1191293, %.lr.ph ] ; 2 uses
  %.0181250295 = phi i32 [ %i.at, %bb.m ], [ 0, %.lr.ph ] ; 2 uses
  %.0177251294 = phi ptr [ %.1178, %bb.m ], [ null, %.lr.ph ]
  %i.an = phi i32 [ %i.aw, %bb.m ], [ %i.x, %.lr.ph ]
  %i.ao = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.1191296, i32 noundef %i.an)
  %i.ap = icmp eq i32 %.0181250295, 0
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph297
  %i.aq = call ptr @tvb_new_composite()
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph297
  %.1178 = phi ptr [ %i.aq, %bb.n ], [ %.0177251294, %.lr.ph297 ] ; 3 uses
  call void @tvb_composite_append(ptr noundef %.1178, ptr noundef %i.ao)
  %i.ar = load i32, ptr %i.a, align 4             ; 2 uses
  %i.as = add i32 %i.ar, %.1191296
  %i.at = add i32 %i.ar, %.0181250295             ; 3 uses
  %i.au = load i32, ptr @hf_per_bit_string_length, align 4
  %i.av = call i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %i.as, ptr noundef %2, ptr noundef %3, i32 noundef %i.au, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 4 uses
  %i.aw = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = icmp ne i32 %i.at, 0                    ; 2 uses
  %or.cond = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond, label %bb.m, label %.loopexit

._crit_edge:                                      ; preds = %bb.m, %.lr.ph
  %.lcssa288 = phi i1 [ false, %.lr.ph ], [ %i.ay, %bb.m ]
  %.lcssa = phi i32 [ %i.x, %.lr.ph ], [ %i.aw, %bb.m ] ; 4 uses
  %.0177251.lcssa = phi ptr [ null, %.lr.ph ], [ %.1178, %bb.m ] ; 4 uses
  %.0181250.lcssa = phi i32 [ 0, %.lr.ph ], [ %i.at, %bb.m ] ; 2 uses
  %.1191.lcssa = phi i32 [ %.1191293, %.lr.ph ], [ %.1191, %bb.m ] ; 4 uses
  br i1 %.lcssa288, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge
  %.not213 = icmp eq i32 %.lcssa, 0
  br i1 %.not213, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.1191.lcssa, i32 noundef %.lcssa)
  call void @tvb_composite_append(ptr noundef %.0177251.lcssa, ptr noundef %i.az)
  %i.ba = load i32, ptr %i.a, align 4
  %i.bb = add i32 %i.ba, %.0181250.lcssa
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1182 = phi i32 [ %i.bb, %bb.q ], [ %.0181250.lcssa, %bb.p ] ; 2 uses
  call void @tvb_composite_finalize(ptr noundef %.0177251.lcssa)
  %i.bc = getelementptr i8, ptr %2, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call ptr @add_new_data_source(ptr noundef %i.bd, ptr noundef %.0177251.lcssa, ptr noundef nonnull @.str.43) ; 0 uses
  %i.bf = call fastcc ptr @dissect_per_bit_string_display(ptr noundef %.0177251.lcssa, i32 noundef 0, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %i.f, i32 noundef %.1182, ptr noundef %8, i32 noundef %9)
  %.pre260 = load i32, ptr %i.a, align 4
  br label %.loopexit

bb.s:                                             ; preds = %._crit_edge
  %i.bg = call fastcc ptr @dissect_per_bit_string_display(ptr noundef %0, i32 noundef %.1191.lcssa, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %i.f, i32 noundef %.lcssa, ptr noundef %8, i32 noundef %9)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.r, %bb.s
  %i.bh = phi i32 [ %.pre260, %bb.r ], [ %.lcssa, %bb.s ], [ 0, %.preheader ], [ 0, %bb.o ] ; 2 uses
  %.2192 = phi i32 [ %.1191.lcssa, %bb.r ], [ %.1191.lcssa, %bb.s ], [ %i.w, %.preheader ], [ %i.av, %bb.o ]
  %.2183 = phi i32 [ %.1182, %bb.r ], [ 0, %bb.s ], [ 0, %.preheader ], [ 0, %bb.o ] ; 2 uses
  %.0176 = phi ptr [ %i.bf, %bb.r ], [ %i.bg, %bb.s ], [ null, %.preheader ], [ null, %bb.o ]
  %i.bi = add i32 %i.bh, %.2192
  %.not214 = icmp eq ptr %10, null
  br i1 %.not214, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  store ptr %.0176, ptr %10, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit
  %.not215 = icmp eq ptr %11, null
  br i1 %.not215, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not216 = icmp eq i32 %.2183, 0
  %i.bj = select i1 %.not216, i32 %i.bh, i32 %.2183
end_hunk_1
begin_hunk_2_@dissect_per_bit_string_display
define internal fastcc ptr @dissect_per_bit_string_display(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readnone captures(address_is_null) %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x ptr], align 16               ; 5 uses
  %i.b = tail call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %1, i32 noundef %6) ; 19 uses
  %i.c = tail call ptr @tvb_get_ds_tvb(ptr noundef %0)
  %i.d = tail call ptr @tvb_get_ds_tvb(ptr noundef %i.b)
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @add_new_data_source(ptr noundef %i.f, ptr noundef %i.b, ptr noundef nonnull @.str.186) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not98 = icmp eq ptr %5, null
  br i1 %.not98, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %4, ptr noundef %i.b, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 24         ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.187, i32 noundef %6)
  %i.j = sub i32 0, %6
  %i.k = and i32 %i.j, 7                          ; 6 uses
  %.not99 = icmp eq i32 %i.k, 0
  br i1 %.not99, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.i, align 8
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef nonnull @.str.188, i32 noundef %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = icmp ult i32 %6, 65
  br i1 %i.m, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.n = icmp samesign ult i32 %6, 9
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call zeroext i8 @tvb_get_bits8(ptr noundef %i.b, i32 noundef 0, i32 noundef %6)
  %i.p = zext i8 %i.o to i64
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.q = icmp samesign ult i32 %6, 17
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = tail call zeroext i16 @tvb_get_bits16(ptr noundef %i.b, i32 noundef 0, i32 noundef %6, i32 noundef 0)
  %i.s = zext i16 %i.r to i64
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.t = icmp samesign ult i32 %6, 25
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = tail call zeroext i16 @tvb_get_bits16(ptr noundef %i.b, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.v = zext i16 %i.u to i64
  %i.w = sub nuw nsw i32 8, %i.k
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.v, %i.x
  %i.z = add nsw i32 %6, -16
  %i.aa = tail call zeroext i8 @tvb_get_bits8(ptr noundef %i.b, i32 noundef 16, i32 noundef %i.z)
  %i.ab = zext i8 %i.aa to i64
  %i.ac = or i64 %i.y, %i.ab
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.ad = icmp samesign ult i32 %6, 33
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call i32 @tvb_get_bits32(ptr noundef %i.b, i32 noundef 0, i32 noundef %6, i32 noundef 0)
  %i.af = zext i32 %i.ae to i64
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.ag = icmp samesign ult i32 %6, 41
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = tail call i32 @tvb_get_bits32(ptr noundef %i.b, i32 noundef 0, i32 noundef 32, i32 noundef 0)
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nuw nsw i32 8, %i.k
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ai, %i.ak
  %i.am = add nsw i32 %6, -32
  %i.an = tail call zeroext i8 @tvb_get_bits8(ptr noundef %i.b, i32 noundef 32, i32 noundef %i.am)
  %i.ao = zext i8 %i.an to i64
  %i.ap = or i64 %i.al, %i.ao
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.aq = icmp samesign ult i32 %6, 49
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = tail call i32 @tvb_get_bits32(ptr noundef %i.b, i32 noundef 0, i32 noundef 32, i32 noundef 0)
  %i.as = zext i32 %i.ar to i64
  %i.at = sub nuw nsw i32 16, %i.k
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.as, %i.au
  %i.aw = add nsw i32 %6, -32
  %i.ax = tail call zeroext i16 @tvb_get_bits16(ptr noundef %i.b, i32 noundef 32, i32 noundef %i.aw, i32 noundef 0)
  %i.ay = zext i16 %i.ax to i64
  %i.az = or i64 %i.av, %i.ay
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ba = icmp samesign ult i32 %6, 57
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call i32 @tvb_get_bits32(ptr noundef %i.b, i32 noundef 0, i32 noundef 32, i32 noundef 0)
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 16
  %i.be = tail call zeroext i16 @tvb_get_bits16(ptr noundef %i.b, i32 noundef 32, i32 noundef 16, i32 noundef 0)
  %i.bf = zext i16 %i.be to i64
  %i.bg = or disjoint i64 %i.bd, %i.bf
  %i.bh = sub nuw nsw i32 8, %i.k
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bg, %i.bi
  %i.bk = add nsw i32 %6, -48
  %i.bl = tail call zeroext i8 @tvb_get_bits8(ptr noundef %i.b, i32 noundef 48, i32 noundef %i.bk)
  %i.bm = zext i8 %i.bl to i64
  %i.bn = or i64 %i.bj, %i.bm
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bo = tail call i64 @tvb_get_bits64(ptr noundef %i.b, i32 noundef 0, i32 noundef %6, i32 noundef 0)
  br label %bb.v

bb.v:                                             ; preds = %bb.j, %bb.n, %bb.r, %bb.u, %bb.t, %bb.p, %bb.l, %bb.h
  %.094 = phi i64 [ %i.p, %bb.h ], [ %i.s, %bb.j ], [ %i.ac, %bb.l ], [ %i.af, %bb.n ], [ %i.ap, %bb.p ], [ %i.az, %bb.r ], [ %i.bn, %bb.t ], [ %i.bo, %bb.u ] ; 2 uses
  %i.bp = load ptr, ptr %i.i, align 8
  %i.bq = getelementptr i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 416
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call ptr @decode_bits_in_field(ptr noundef %i.bt, i32 noundef 0, i32 noundef %6, i64 noundef %.094, i32 noundef 0)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bp, ptr noundef nonnull @.str.189, ptr noundef %i.bu, i64 noundef %.094)
  %.not100 = icmp eq ptr %7, null
  br i1 %.not100, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = load ptr, ptr %i.i, align 8
  %i.bw = load i32, ptr @ett_per_named_bits, align 4
  %i.bx = tail call ptr @proto_item_add_subtree(ptr noundef %i.bv, i32 noundef %i.bw)
  %.off = add i32 %8, 14
  %.not102 = icmp ult i32 %.off, 15
  br i1 %.not102, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.by = add nuw i32 %8, 7
  %i.bz = sdiv i32 %i.by, 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cb = add nsw i32 %6, -1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bz, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.cd = shl i32 %i.cc, 3                        ; 3 uses
  %i.ce = icmp ult i32 %i.cd, %6
  br i1 %i.ce, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = call zeroext i8 @tvb_get_uint8(ptr noundef %i.b, i32 noundef %i.cc)
  %i.cg = zext i8 %i.cf to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1 = phi i64 [ %i.cg, %bb.y ], [ 0, %bb.x ]
  %i.ch = zext i32 %i.cd to i64
  %i.ci = getelementptr [8 x i8], ptr %7, i64 %i.ch ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cj = sub i32 %8, %i.cd
  %i.ck = icmp ugt i32 %i.cj, 8
  br i1 %i.ck, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef align 1 dereferenceable(64) %i.ci, i64 noundef 64, i1 noundef false) #13
  store ptr null, ptr %i.ca, align 16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0 = phi ptr [ %i.a, %bb.aa ], [ %i.ci, %bb.z ]
  %i.cl = call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.cb)
  %i.cm = add i32 %i.cl, %1
  call void @proto_tree_add_bitmask_list_value(ptr noundef %i.bx, ptr noundef %i.b, i32 noundef %i.cm, i32 noundef 1, ptr noundef %.0, i64 noundef %.1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.x, !llvm.loop !42

.loopexit:                                        ; preds = %bb.ab, %bb.w, %bb.v, %bb.f
  %i.cn = load ptr, ptr %i.i, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.cn, ptr noundef nonnull @.str.190)
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.c
  ret ptr %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_bit_string_containing_pdu_new(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %i.b = call i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null)
  %i.c = icmp ne ptr %8, null
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr @ett_per_containing, align 4
  %i.i = call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h)
  %i.j = getelementptr i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call i32 %8(ptr noundef nonnull %i.d, ptr noundef %i.k, ptr noundef %i.i, ptr noundef null) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_octet_string_containing_pdu_new(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %i.b = call i32 @dissect_per_octet_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr noundef nonnull %i.a)
  %i.c = icmp ne ptr %8, null
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @tvb_reported_length(ptr noundef nonnull %i.d)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i32, ptr @ett_per_containing, align 4
  %i.j = call ptr @proto_item_add_subtree(ptr noundef %i.h, i32 noundef %i.i)
  %i.k = getelementptr i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i32 %8(ptr noundef nonnull %i.d, ptr noundef %i.l, ptr noundef %i.j, ptr noundef null) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_size_constrained_type(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) local_unnamed_addr #0 {
bb.a:
  tail call void @asn1_stack_frame_push(ptr noundef %2, ptr noundef %6)
  tail call void @asn1_param_push_integer(ptr noundef %2, i32 noundef %7)
  tail call void @asn1_param_push_integer(ptr noundef %2, i32 noundef %8)
  tail call void @asn1_param_push_boolean(ptr noundef %2, i1 noundef zeroext %9)
  %i.a = tail call i32 %5(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  tail call void @asn1_stack_frame_pop(ptr noundef %2, ptr noundef %6)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare void @asn1_stack_frame_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @asn1_param_push_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @asn1_param_push_boolean(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @asn1_stack_frame_pop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @get_size_constraint_from_stack(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not37 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %3, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not38 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %4, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not39 = icmp eq ptr %i.b, null
  br i1 %.not39, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @strcmp(ptr noundef %i.c, ptr noundef %1) #15
  %.not40 = icmp eq i32 %i.d, 0
  br i1 %.not40, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not41 = icmp eq ptr %i.f, null
  br i1 %.not41, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %.not42 = icmp eq i32 %i.h, 2
  br i1 %.not42, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.i = getelementptr i8, ptr %i.f, i64 16
  %i.j = load i32, ptr %i.i, align 8
  store i32 %i.j, ptr %2, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.k = getelementptr i8, ptr %i.f, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %.not43 = icmp eq ptr %i.l, null
  br i1 %.not43, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %.not44 = icmp eq i32 %i.n, 2
  br i1 %.not44, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  br i1 %.not37, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i32, ptr %i.o, align 8
  store i32 %i.p, ptr %3, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.q = getelementptr i8, ptr %i.l, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not45 = icmp eq ptr %i.r, null
  br i1 %.not45, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %.not46 = icmp ne i32 %i.t, 1                   ; 2 uses
  %brmerge = or i1 %.not38, %.not46
  %not..not46 = xor i1 %.not46, true
  br i1 %brmerge, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.u = getelementptr i8, ptr %i.r, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !6, !noundef !7
  store i8 %i.v, ptr %4, align 1
  br label %bb.t
end_hunk_2
begin_hunk_3_@dissect_per_T_direct_reference:bb.a
  %i.h = getelementptr i8, ptr %i.g, i64 416
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call ptr @tvb_get_ptr(ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef %i.e)
  %i.k = call ptr @oid_encoded2string(ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.e)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i.i = phi ptr [ %i.k, %bb.f ], [ @.str.177, %bb.e ], [ @.str.177, %bb.d ]
  store ptr %.sink.i.i, ptr %i.b, align 8
  br label %dissect_per_object_identifier_str.exit

dissect_per_object_identifier_str.exit:           ; preds = %bb.c, %.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.l = getelementptr i8, ptr %2, i64 61
  store i8 1, ptr %i.l, align 1
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_per_T_indirect_reference(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 80
  %i.b = tail call i32 @dissect_per_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %i.a)
  %i.c = getelementptr i8, ptr %2, i64 62
  store i8 1, ptr %i.c, align 2
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_per_T_data_value_descriptor(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 64
  %i.b = tail call i32 @dissect_per_octet_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef -1, i32 noundef -1, i1 noundef zeroext false, ptr noundef %i.a)
  %i.c = getelementptr i8, ptr %2, i64 60
  store i8 1, ptr %i.c, align 4
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_per_External_encoding(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 2753, ptr noundef nonnull @.str.191) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load i32, ptr @ett_per_External_encoding, align 4
  %i.b = getelementptr i8, ptr %2, i64 84
  %i.c = tail call i32 @dissect_per_choice(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef nonnull @External_encoding_choice, ptr noundef %i.b)
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_per_T_single_ASN1_type(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %2, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call fastcc i32 @dissect_per_open_type_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.b, ptr noundef readonly %i.d, i32 noundef 0)
  ret i32 %i.e
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_per_T_octet_aligned(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 56
  %i.b = getelementptr i8, ptr %2, i64 96         ; 2 uses
  %i.c = tail call i32 @dissect_per_octet_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef -1, i32 noundef -1, i1 noundef zeroext false, ptr noundef %i.b)
  %i.d = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 112
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 8
  %i.h = tail call i32 %i.f(ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef %2, ptr noundef %3, i32 noundef %i.g) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %3, ptr noundef %i.j, ptr noundef nonnull @ei_per_external_type, ptr noundef nonnull %i.d, i32 noundef 0)
  %i.l = getelementptr i8, ptr %2, i64 24
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_per_T_arbitrary(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 56
  %i.b = getelementptr i8, ptr %2, i64 104        ; 2 uses
  %i.c = tail call i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef -1, i32 noundef -1, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef %i.b, ptr noundef null)
  %i.d = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 112
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 8
  %i.h = tail call i32 %i.f(ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef %2, ptr noundef %3, i32 noundef %i.g) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %3, ptr noundef %i.j, ptr noundef nonnull @ei_per_external_type, ptr noundef nonnull %i.d, i32 noundef 0)
  %i.l = getelementptr i8, ptr %2, i64 24
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn }
attributes #13 = { nounwind }
attributes #14 = { allocsize(1) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = distinct !{!12, !9, !13}
!13 = !{!"llvm.loop.peeled.count", i32 2}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9, !11}
!22 = distinct !{!22, !9, !11}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9, !11}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
end_hunk_3
