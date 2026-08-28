Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/dotsplines?download=true
inline.NumInlined: 149
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@agxbmore:bb.a
  unreachable

gv_calloc.exit:                                   ; preds = %bb.g
  %i.u = zext i8 %.val.i to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %0, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !104
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.f, %bb.e, %bb.b, %gv_calloc.exit
  %spec.select3742 = phi i64 [ %spec.select, %gv_calloc.exit ], [ 0, %bb.b ], [ %spec.select34, %bb.e ], [ %spec.select34, %bb.f ]
  %.0 = phi ptr [ %i.q, %gv_calloc.exit ], [ null, %bb.b ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  store ptr %.0, ptr %0, align 8, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select3742, ptr %i.w, align 8, !tbaa !104
  store i8 -1, ptr %i.a, align 1, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #19

declare void @dot_cleanup(ptr noundef) local_unnamed_addr #4

declare i32 @agclose(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @maximal_bbox(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly byval(%struct.spline_info_t) align 8 captures(none) %2, ptr nofree readonly captures(none) %.16.val, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.16.val, i64 32
  %i.b = load double, ptr %i.a, align 8, !tbaa !82 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val, i64 104
  %i.d = load double, ptr %i.c, align 8, !tbaa !97
  %i.e = fsub double %i.b, %i.d
  %i.f = fadd double %i.e, -4.000000e+00          ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val68 = load ptr, ptr %i.g, align 8, !tbaa !19 ; 3 uses
  %i.h = getelementptr i8, ptr %.val68, i64 264
  %.val68.val = load ptr, ptr %i.h, align 8, !tbaa !92 ; 3 uses
  %i.i = tail call fastcc ptr @neighbor(ptr %.val68.val, ptr %.16.val, ptr noundef %3, ptr noundef %4, i32 noundef -1) ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call fastcc ptr @cl_bound(ptr noundef nonnull %1, ptr nonnull %.16.val, ptr noundef %i.i) ; 2 uses
  %.not62 = icmp eq ptr %i.j, null
  br i1 %.not62, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load double, ptr %i.m, align 8, !tbaa !319
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !320
  %i.q = fadd double %i.n, %i.p
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load double, ptr %i.t, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 368
  %i.w = load double, ptr %i.v, align 8, !tbaa !54
  %i.x = fadd double %i.u, %i.w                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %i.z = load i8, ptr %i.y, align 8, !tbaa !66
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.val68, i64 352
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !89
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = fmul nnan double %i.ad, 5.000000e-01
  %i.af = fadd double %i.x, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !320
  %i.ai = fadd double %i.x, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0 = phi double [ %i.q, %bb.c ], [ %i.af, %bb.e ], [ %i.ai, %bb.f ] ; 2 uses
  %i.aj = fcmp olt double %.0, %i.f
  %.055 = select i1 %i.aj, double %.0, double %i.f
  %i.ak = tail call double @llvm.round.f64(double %.055)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.al = tail call nsz double @llvm.round.f64(double %i.f)
  %i.am = load double, ptr %2, align 8, !tbaa !321
  %i.an = tail call nsz double @llvm.minnum.f64(double %i.al, double %i.am)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi double [ %i.an, %bb.h ], [ %i.ak, %bb.g ] ; 2 uses
  store double %storemerge, ptr %0, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %.16.val, i64 216
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !66
  %i.aq = icmp eq i8 %i.ap, 1                     ; 2 uses
  br i1 %i.aq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.16.val, i64 136
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75
  %.not63 = icmp eq ptr %i.as, null
  br i1 %.not63, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = fadd double %i.b, 1.000000e+01
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.16.val, i64 112
  %i.av = load double, ptr %i.au, align 8, !tbaa !55
  %i.aw = fadd double %i.b, %i.av
  %i.ax = fadd double %i.aw, 4.000000e+00
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.156 = phi double [ %i.at, %bb.k ], [ %i.ax, %bb.l ] ; 3 uses
  %i.ay = tail call fastcc ptr @neighbor(ptr %.val68.val, ptr nonnull %.16.val, ptr noundef %3, ptr noundef %4, i32 noundef 1) ; 3 uses
  %.not64 = icmp eq ptr %i.ay, null
  br i1 %.not64, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = tail call fastcc ptr @cl_bound(ptr noundef nonnull %1, ptr nonnull %.16.val, ptr noundef %i.ay) ; 2 uses
  %.not65 = icmp eq ptr %i.az, null
  br i1 %.not65, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !322
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !320
  %i.bg = fsub double %i.bd, %i.bf
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !82
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !97
  %i.bn = fsub double %i.bk, %i.bm                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 216
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !66
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.val68, i64 352
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !89
  %i.bt = sitofp i32 %i.bs to double
  %i.bu = fmul nnan double %i.bt, 5.000000e-01
  %i.bv = fsub double %i.bn, %i.bu
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !320
  %i.by = fsub double %i.bn, %i.bx
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %.1 = phi double [ %i.bg, %bb.o ], [ %i.bv, %bb.q ], [ %i.by, %bb.r ] ; 2 uses
  %i.bz = fcmp ogt double %.1, %.156
  %.2 = select i1 %i.bz, double %.1, double %.156
  %i.ca = tail call double @llvm.round.f64(double %.2)
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %i.cb = tail call nsz double @llvm.round.f64(double %.156)
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !323
  %i.ce = tail call nsz double @llvm.maxnum.f64(double %i.cb, double %i.cd)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink = phi double [ %i.ce, %bb.t ], [ %i.ca, %bb.s ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink, ptr %i.cf, align 8, !tbaa !234
  br i1 %i.aq, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %.16.val, i64 136
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !75
  %.not66 = icmp eq ptr %i.ch, null
  br i1 %.not66, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.16.val, i64 112
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cl = fsub double %.sink, %i.cj               ; 2 uses
  store double %i.cl, ptr %i.ck, align 8, !tbaa !234
  %5 = fcmp olt double %i.cl, %storemerge
  br i1 %5, label %6, label %bb.x

6:                                                ; preds = %bb.w
  store double %i.b, ptr %i.ck, align 8, !tbaa !234
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %6, %bb.v, %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %.16.val, i64 40
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !85 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.16.val, i64 360
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !111
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [88 x i8], ptr %.val68.val, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !225
  %i.cu = fsub double %i.cn, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.cu, ptr %i.cv, align 8, !tbaa !241
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !226
  %i.cy = fadd double %i.cn, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.cy, ptr %i.cz, align 8, !tbaa !230
  ret void
}

declare void @beginpath(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @endpath(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @neighbor(ptr nofree readonly captures(none) %.16.val.264.val, ptr nofree readonly captures(none) %.16.val1, ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 -1, 2) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.16.val1, i64 364
  %i.b = load i32, ptr %i.a, align 4, !tbaa !107  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val1, i64 280
  %.0212 = add nsw i32 %i.b, %2                   ; 2 uses
  %i.d = icmp sgt i32 %.0212, -1
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.16.val1, i64 360
  %i.f = load i32, ptr %i.e, align 8, !tbaa !111
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [88 x i8], ptr %.16.val.264.val, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not5.i = icmp eq ptr %1, null
  %i.k = icmp ne ptr %0, null
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.0213 = phi i32 [ %.0212, %.lr.ph ], [ %.021, %.backedge ] ; 3 uses
  %i.l = icmp slt i32 %.0213, %i.i
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !96
  %i.n = zext nneg i32 %.0213 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65   ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %i.t = load i8, ptr %i.s, align 8, !tbaa !66
  switch i8 %i.t, label %.thread [
    i8 1, label %bb.d
    i8 0, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 364
  %i.x = load i32, ptr %i.w, align 4, !tbaa !107
  %i.y = icmp sgt i32 %i.x, %i.b                  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 280
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !251
  %.not.i = icmp eq i64 %i.aa, 1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !251
  %.not60.i = icmp eq i64 %i.ab, 1
  br i1 %.not60.i, label %.thread.i, label %.critedge

bb.f:                                             ; preds = %.thread
  br i1 %.not5.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 272
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = and i32 %i.af, 3
  %i.ah = icmp eq i32 %i.ag, 2
  %i.ai = select i1 %i.ah, i64 56, i64 -8
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !106 ; 2 uses
  %i.al = load i32, ptr %1, align 8
  %i.am = and i32 %i.al, 3
  %i.an = icmp eq i32 %i.am, 2
  %i.ao = select i1 %i.an, i64 56, i64 -8
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !106 ; 2 uses
  %i.ar = icmp eq ptr %i.ak, %i.aq
  br i1 %i.ar, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 364
  %i.av = load i32, ptr %i.au, align 4, !tbaa !107
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 364
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !107
  %i.ba = icmp sle i32 %i.av, %i.az
  %.not61.i = xor i1 %i.y, %i.ba
  br i1 %.not61.i, label %bb.i, label %.backedge

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 272
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 280
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !251
  %.not62.i = icmp eq i64 %i.bd, 1
  br i1 %.not62.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 216
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !66
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !77
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !78 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 280
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !251
  %.not63.i = icmp eq i64 %i.bl, 1
  br i1 %.not63.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !66
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !77
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !78 ; 2 uses
  %i.br = load i32, ptr %i.bi, align 8
  %i.bs = and i32 %i.br, 3
  %i.bt = icmp eq i32 %i.bs, 2
  %i.bu = select i1 %i.bt, i64 56, i64 -8
  %i.bv = getelementptr inbounds i8, ptr %i.bi, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !106 ; 2 uses
  %i.bx = load i32, ptr %i.bq, align 8
  %i.by = and i32 %i.bx, 3
  %i.bz = icmp eq i32 %i.by, 2
  %i.ca = select i1 %i.bz, i64 56, i64 -8
  %i.cb = getelementptr inbounds i8, ptr %i.bq, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !106 ; 2 uses
  %i.cd = icmp eq ptr %i.bw, %i.cc
  br i1 %i.cd, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 364
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !107
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 364
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !107
  %i.cm = icmp sle i32 %i.ch, %i.cl
  %.not61.1.i = xor i1 %i.y, %i.cm
  br i1 %.not61.1.i, label %.thread.i, label %.backedge

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 264
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !76
  %i.cp = icmp eq i64 %i.co, 1
  %or.cond3.i = and i1 %i.k, %i.cp
  br i1 %or.cond3.i, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.thread.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !271
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !78 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = and i32 %i.ct, 3
  %i.cv = icmp eq i32 %i.cu, 3
  %i.cw = select i1 %i.cv, i64 56, i64 120
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !106 ; 2 uses
  %i.cz = load i32, ptr %0, align 8
  %i.da = and i32 %i.cz, 3
  %i.db = icmp eq i32 %i.da, 3
  %i.dc = select i1 %i.db, i64 56, i64 120
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !106 ; 2 uses
end_hunk_0
