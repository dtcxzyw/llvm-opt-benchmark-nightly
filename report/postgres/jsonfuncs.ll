Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/jsonfuncs?download=true
inline.NumInlined: 240
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@populate_array_report_expected_array:bb.a
bb.j:                                             ; preds = %bb.i
  br i1 %i.u, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.v = call i32 @errcode(i32 noundef 33685634) #13 ; 0 uses
  %i.w = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.69) #13 ; 0 uses
  %i.x = load ptr, ptr %2, align 8
  %i.y = load ptr, ptr %i.q, align 8
  %i.z = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.72, ptr noundef %i.x, ptr noundef %i.y) #13 ; 0 uses
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = call i32 @errcode(i32 noundef 33685634) #13 ; 0 uses
  %i.ab = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.69) #13 ; 0 uses
  %i.ac = load ptr, ptr %2, align 8
  %i.ad = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.73, ptr noundef %i.ac) #13 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.m
  %.sink = phi i32 [ 2548, %bb.m ], [ 2542, %bb.k ]
  call void @errsave_finish(ptr noundef %i.t, ptr noundef nonnull @.str.2, i32 noundef %.sink, ptr noundef nonnull @__func__.populate_array_report_expected_array) #13
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d, %bb.n
  ret void
}

declare void @appendStringInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @populate_array_check_dimension(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.c ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.e, ptr %i.h, align 4
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.i, %i.e
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = tail call zeroext i1 @errsave_start(ptr noundef %i.l, ptr noundef null) #13
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @errcode(i32 noundef 33685634) #13 ; 0 uses
  %i.o = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.74) #13 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.75) #13 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.l, ptr noundef nonnull @.str.2, i32 noundef 2601, ptr noundef nonnull @__func__.populate_array_check_dimension) #13
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.b ]
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.c
  store i32 0, ptr %i.r, align 4
  %i.s = icmp sgt i32 %1, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = zext nneg i32 %1 to i64
  %i.v = getelementptr [4 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -4       ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.g ], [ true, %bb.f ]
  ret i1 %.0
}

declare ptr @accumArrayResult(ptr noundef, i64 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @populate_record(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.HeapTupleData, align 8      ; 9 uses
  %7 = alloca %struct.JsValue, align 8            ; 8 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = load i32, ptr %0, align 8                ; 12 uses
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %4, align 8, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @hash_get_num_entries(ptr noundef %i.f) #13
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.ac, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %bb.ac, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.f, align 4
  %i.k = and i32 %i.j, 268435455
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.ac, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.m = icmp eq ptr %i.a, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %.not101 = icmp eq i32 %i.o, %i.b
  br i1 %.not101, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = sext i32 %i.b to i64
  %i.q = mul nsw i64 %i.p, 104                    ; 3 uses
  %i.r = add nsw i64 %i.q, 16                     ; 2 uses
  %i.s = tail call ptr @MemoryContextAlloc(ptr noundef %3, i64 noundef %i.r) #13 ; 7 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 3 uses
  store i32 0, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.b, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = icmp ult i64 %i.q, 1025
  br i1 %i.x, label %bb.i, label %allocate_record_info.exit.sink.split

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %allocate_record_info.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.y = add i64 %i.r, %i.t
  %i.z = add i64 %i.t, 24
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %i.z)
  %reass.sub = sub i64 %umax.i, %i.t
  %i.aa = add i64 %reass.sub, -17
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8
  br label %allocate_record_info.exit.sink.split

allocate_record_info.exit.sink.split:             ; preds = %bb.h, %.lr.ph.preheader.i
  %.sink = phi i64 [ %i.ac, %.lr.ph.preheader.i ], [ %i.q, %bb.h ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.w, i8 0, i64 %.sink, i1 false)
  br label %allocate_record_info.exit

allocate_record_info.exit:                        ; preds = %allocate_record_info.exit.sink.split, %bb.i
  store ptr %i.s, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %allocate_record_info.exit, %bb.g
  %.094 = phi ptr [ %i.s, %allocate_record_info.exit ], [ %i.a, %bb.g ] ; 9 uses
  %i.ad = load i32, ptr %.094, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %.not102 = icmp eq i32 %i.ad, %i.af
  br i1 %.not102, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.094, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %.not103 = icmp eq i32 %i.ah, %i.aj
  br i1 %.not103, label %._crit_edge118, label %bb.l

._crit_edge118:                                   ; preds = %bb.k
  %.pre = sext i32 %i.b to i64
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ak = sext i32 %i.b to i64                    ; 2 uses
  %i.al = mul nsw i64 %i.ak, 104                  ; 2 uses
  %i.am = add nsw i64 %i.al, 16                   ; 2 uses
  %i.an = icmp ult i64 %i.am, 1025
  br i1 %i.an, label %.lr.ph.preheader, label %bb.m

.lr.ph.preheader:                                 ; preds = %bb.l
  %8 = ptrtoint ptr %.094 to i64                  ; 3 uses
  %i.ao = add i64 %i.al, %8
  %i.ap = add i64 %i.ao, 16
  %i.aq = add i64 %8, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.aq)
  %i.ar = xor i64 %8, -1
  %i.as = add i64 %umax, %i.ar
  %i.at = and i64 %i.as, -8
  %i.au = add i64 %i.at, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.094, i8 0, i64 %i.au, i1 false)
  br label %.loopexit105

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.094, i8 0, i64 %i.am, i1 false)
  br label %.loopexit105

.loopexit105:                                     ; preds = %.lr.ph.preheader, %bb.m
  %i.av = load i32, ptr %i.ae, align 4
  store i32 %i.av, ptr %.094, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.094, i64 4
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.094, i64 8
  store i32 %i.b, ptr %i.az, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge118, %.loopexit105
  %.pre-phi = phi i64 [ %.pre, %._crit_edge118 ], [ %i.ak, %.loopexit105 ] ; 2 uses
  %i.ba = shl nsw i64 %.pre-phi, 3
  %i.bb = tail call ptr @palloc(i64 noundef %i.ba) #13 ; 10 uses
  %i.bc = tail call ptr @palloc(i64 noundef %.pre-phi) #13 ; 10 uses
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.n
  %i.bd = icmp sgt i32 %i.b, 0
  br i1 %i.bd, label %.lr.ph108.preheader, label %._crit_edge

.lr.ph108.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.be = icmp ult i32 %i.b, 4
  br i1 %i.be, label %.lr.ph108.epil.preheader, label %.lr.ph108.preheader.new

.lr.ph108.preheader.new:                          ; preds = %.lr.ph108.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108, %.lr.ph108.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph108.preheader.new ], [ %indvars.iv.next.3, %.lr.ph108 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph108.preheader.new ], [ %niter.next.3, %.lr.ph108 ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv
  store i8 1, ptr %i.bg, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next
  store i64 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next
  store i8 1, ptr %i.bi, align 1
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.1
  store i64 0, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.1
  store i8 1, ptr %i.bk, align 1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.2
  store i64 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.2
  store i8 1, ptr %i.bm, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph110.loopexit.unr-lcssa, label %.lr.ph108, !llvm.loop !53

.loopexit:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %.val = load i32, ptr %2, align 4
  %i.bn = lshr i32 %.val, 2
  store i32 %i.bn, ptr %6, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 -1, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 -1, ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %i.bs, align 8
  call void @heap_deform_tuple(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef %i.bb, ptr noundef %i.bc) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.bt = icmp sgt i32 %i.b, 0
  br i1 %i.bt, label %.lr.ph110, label %._crit_edge

.lr.ph110.loopexit.unr-lcssa:                     ; preds = %.lr.ph108
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph110, label %.lr.ph108.epil.preheader

.lr.ph108.epil.preheader:                         ; preds = %.lr.ph110.loopexit.unr-lcssa, %.lr.ph108.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next.3, %.lr.ph110.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph108.epil

.lr.ph108.epil:                                   ; preds = %.lr.ph108.epil, %.lr.ph108.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph108.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph108.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph108.epil.preheader ], [ %epil.iter.next, %.lr.ph108.epil ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.epil
  store i64 0, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.epil
  store i8 1, ptr %i.bv, align 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph110, label %.lr.ph108.epil, !llvm.loop !54

.lr.ph110:                                        ; preds = %.lr.ph110.loopexit.unr-lcssa, %.lr.ph108.epil, %.loopexit
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.094, i64 16
  %wide.trip.count116 = zext nneg i32 %i.b to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph110, %bb.ab
  %indvars.iv113 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next114, %bb.ab ] ; 7 uses
  %i.cb = load i32, ptr %0, align 8
  %i.cc = sext i32 %i.cb to i64
  %i.cd = shl nsw i64 %i.cc, 3
  %i.ce = getelementptr i8, ptr %0, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw [100 x i8], ptr %i.cf, i64 %indvars.iv113 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 91
  %i.cj = load i8, ptr %i.ci, align 1, !range !7, !noundef !8
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv113
  store i8 1, ptr %i.cl, align 1
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  %i.cm = load i8, ptr %4, align 8, !range !7, !noundef !8 ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  store i8 %i.cm, ptr %7, align 8
  %i.co = load ptr, ptr %i.bw, align 8            ; 3 uses
  br i1 %i.cn, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cp = call ptr @hash_search(ptr noundef %i.co, ptr noundef nonnull %i.ch, i32 noundef 0, ptr noundef null) #13 ; 3 uses
  %i.cq = icmp ne ptr %i.cp, null                 ; 2 uses
  br i1 %i.cq, label %bb.s, label %.thread.i

.thread.i:                                        ; preds = %bb.r
  store i32 11, ptr %i.by, align 4
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cs = load i32, ptr %i.cr, align 8            ; 2 uses
  store i32 %i.cs, ptr %i.by, align 4
  %i.ct = icmp eq i32 %i.cs, 11
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.thread.i
  %i.cw = phi ptr [ %i.cv, %bb.t ], [ null, %bb.s ], [ null, %.thread.i ] ; 2 uses
  store ptr %i.cw, ptr %i.bx, align 8
  %.not23.i = icmp ne ptr %i.cw, null
  %i.cx = sext i1 %.not23.i to i32
  store i32 %i.cx, ptr %i.bz, align 8
  br label %JsObjectGetField.exit

bb.v:                                             ; preds = %bb.q
  %.not.i104 = icmp eq ptr %i.co, null
  br i1 %.not.i104, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ch) #16
  %i.cz = trunc i64 %i.cy to i32
  %i.da = call ptr @getKeyJsonValueFromContainer(ptr noundef nonnull %i.co, ptr noundef nonnull %i.ch, i32 noundef %i.cz, ptr noundef null) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.db = phi ptr [ %i.da, %bb.w ], [ null, %bb.v ] ; 2 uses
  store ptr %i.db, ptr %i.bx, align 8
  %i.dc = icmp ne ptr %i.db, null
  br label %JsObjectGetField.exit

JsObjectGetField.exit:                            ; preds = %bb.u, %bb.x
  %.0.i = phi i1 [ %i.cq, %bb.u ], [ %i.dc, %bb.x ]
  %or.cond5 = select i1 %.not, i1 true, i1 %.0.i
  br i1 %or.cond5, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %JsObjectGetField.exit
  %i.dd = getelementptr inbounds nuw [104 x i8], ptr %i.ca, i64 %indvars.iv113
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 68
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 76
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv113 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !range !7, !noundef !8
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv113
end_hunk_0
