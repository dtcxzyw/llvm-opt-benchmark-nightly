Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Cint?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@H5C__autoadjust__ageout__insert_new_marker:bb.a
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 525055
  %i.x = load i8, ptr %i.w, align 1, !tbaa !41, !range !42, !noundef !43
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 525056
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 525057
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !41, !range !42, !noundef !43
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 525058
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !41, !range !42, !noundef !43
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 525059
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !41, !range !42, !noundef !43
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 525060
  %i.am = load i8, ptr %i.al, align 4, !tbaa !41, !range !42, !noundef !43
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 525061
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !41, !range !42, !noundef !43
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ar = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !39
  %i.as = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !39
  %i.at = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__autoadjust__ageout__insert_new_marker, i32 noundef 695, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.31) #5 ; 0 uses
  br label %bb.s

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.preheader
  %.04044.lcssa.wide = phi i64 [ 0, %.preheader ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ] ; 4 uses
  %i.au = trunc nuw nsw i64 %.04044.lcssa.wide to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 %.04044.lcssa.wide
  store i8 1, ptr %i.av, align 1, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 525112 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !70
  %i.ay = add nsw i32 %i.ax, 1
  %i.az = srem i32 %i.ay, 11                      ; 2 uses
  store i32 %i.az, ptr %i.aw, align 8, !tbaa !70
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 525064
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  store i32 %i.au, ptr %i.bc, align 4, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 525116 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !71 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 9
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.bg = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !39
  %i.bh = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !39
  %i.bi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__autoadjust__ageout__insert_new_marker, i32 noundef 707, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.29) #5 ; 0 uses
  br label %bb.s

bb.o:                                             ; preds = %.critedge
  %i.bj = add nsw i32 %i.be, 1
  store i32 %i.bj, ptr %i.bd, align 4, !tbaa !71
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 524824 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !72 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 525120
  %i.bo = getelementptr inbounds nuw [248 x i8], ptr %i.bn, i64 %.04044.lcssa.wide ; 4 uses
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 524832
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !73
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !78
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  store ptr %i.bl, ptr %i.br, align 8, !tbaa !79
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !72
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 524808 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !80
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !80
  %i.bv = getelementptr inbounds nuw [248 x i8], ptr %0, i64 %.04044.lcssa.wide
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 525136
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !81
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 524816 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !82
  %i.ca = add i64 %i.bz, %i.bx
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !82
  %i.cb = load i32, ptr %i.g, align 8, !tbaa !58
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.g, align 8, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.m, %bb.n, %bb.r, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.m ], [ -1, %bb.n ], [ 0, %bb.r ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5C__autoadjust__ageout(ptr noundef %0, double noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 12 uses
  %i.e = load i8, ptr @H5C_init_g, align 1, !tbaa !41, !range !42, !noundef !43
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load i8, ptr @H5_libterm_g, align 1, !range !42
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = xor i1 %i.h, true
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %bb.b, label %bb.au, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 525048
  %i.l = load i32, ptr %i.k, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 525032
  %i.n = load i32, ptr %i.m, align 8, !tbaa !59
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @H5C__autoadjust__ageout__remove_excess_markers(ptr noundef nonnull %i.d)
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !39
  %i.s = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !39
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__autoadjust__ageout, i32 noundef 355, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.25) #5 ; 0 uses
  br label %bb.au

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 524992
  %i.v = load i32, ptr %i.u, align 8, !tbaa !57
  switch i32 %i.v, label %bb.au [
    i32 2, label %bb.g
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 525000
  %i.x = load double, ptr %i.w, align 8, !tbaa !60
  %i.y = fcmp ult double %1, %i.x
  br i1 %i.y, label %bb.au, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 524912 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !61
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.at

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38 ; 8 uses
  %i.ah = load i8, ptr @H5C_init_g, align 1, !tbaa !41, !range !42, !noundef !43
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = load i8, ptr @H5_libterm_g, align 1, !range !42
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = xor i1 %i.ak, true
  %i.am = select i1 %i.ai, i1 true, i1 %i.al
  br i1 %i.am, label %bb.i, label %H5C__autoadjust__ageout__evict_aged_out_entries.exit, !prof !44

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 525016
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !62, !range !42, !noundef !43
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 525024
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 88 ; 2 uses
  %.077.in.i = select i1 %i.ap, ptr %i.aq, ptr %i.ar
  %.077.i = load i64, ptr %.077.in.i, align 8, !tbaa !39
  %.077.fr.i = freeze i64 %.077.i                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 524832 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !73 ; 3 uses
  %.not84100.i = icmp eq ptr %i.at, null          ; 2 uses
  br i1 %4, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  br i1 %.not84100.i, label %.critedge.i, label %.lr.ph105.i

.lr.ph105.i:                                      ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 524600 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 524608
  br label %bb.k

bb.k:                                             ; preds = %.thread112.i, %.lr.ph105.i
  %.064104.i = phi ptr [ %i.at, %.lr.ph105.i ], [ %.266.i, %.thread112.i ] ; 9 uses
  %.072102.i = phi i8 [ 0, %.lr.ph105.i ], [ %.173.i, %.thread112.i ]
  %.074101.i = phi i64 [ 0, %.lr.ph105.i ], [ %.175116.i, %.thread112.i ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.064104.i, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !85
  %.not85.i = icmp ne i32 %i.ay, 27
  %i.az = icmp ult i64 %.074101.i, %.077.fr.i
  %or.cond.i = select i1 %.not85.i, i1 %i.az, i1 false
  br i1 %or.cond.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %.064104.i, i64 136
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !79
  %i.bc = getelementptr inbounds nuw i8, ptr %.064104.i, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !78 ; 10 uses
  %.not86.i = icmp eq ptr %i.bd, null             ; 3 uses
  br i1 %.not86.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !86, !range !42, !noundef !43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.173.i = phi i8 [ %i.bf, %bb.m ], [ %.072102.i, %bb.l ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.064104.i, i64 48
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !86, !range !42, !noundef !43
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %.064104.i, i64 240
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !87 ; 2 uses
  %.not87.i = icmp eq ptr %i.bk, null
  br i1 %.not87.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !92, !range !42, !noundef !43
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.thread112.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.bo = tail call i32 @H5C__flush_single_entry(ptr noundef %0, ptr noundef nonnull %.064104.i, i32 noundef 0) #5
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bq = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !39
  %i.br = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !39
  %i.bs = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__autoadjust__ageout__evict_aged_out_entries, i32 noundef 565, i64 noundef %i.bq, i64 noundef %i.br, ptr noundef nonnull @.str.20) #5 ; 0 uses
  br label %bb.aj

bb.s:                                             ; preds = %bb.q
  %i.bt = load i64, ptr %i.au, align 8, !tbaa !93
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %.split.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = load ptr, ptr %i.av, align 8, !tbaa !94
  %i.bw = icmp eq ptr %i.bv, %i.bd
  br i1 %i.bw, label %.split.i, label %bb.x

.split.i:                                         ; preds = %bb.t, %bb.s
  br i1 %.not86.i, label %.critedge.i, label %.thread119.i

bb.u:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.064104.i, i64 216
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !95, !range !42, !noundef !43
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.thread112.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.064104.i, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !81
  %i.cc = add i64 %i.cb, %.074101.i
  %i.cd = tail call i32 @H5C__flush_single_entry(ptr noundef %0, ptr noundef nonnull %.064104.i, i32 noundef 8208) #5
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cf = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !39
  %i.cg = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !39
  %i.ch = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__autoadjust__ageout__evict_aged_out_entries, i32 noundef 577, i64 noundef %i.cf, i64 noundef %i.cg, ptr noundef nonnull @.str.20) #5 ; 0 uses
  br label %bb.aj

bb.x:                                             ; preds = %bb.v, %bb.t
  %.175.i = phi i64 [ %i.cc, %bb.v ], [ %.074101.i, %bb.t ] ; 5 uses
  br i1 %.not86.i, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !86, !range !42, !noundef !43
  %.not88.i = icmp eq i8 %i.cj, %.173.i
  br i1 %.not88.i, label %bb.z, label %.thread119.i

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bd, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !79
  %.not89.i = icmp eq ptr %i.cl, %i.bb
  br i1 %.not89.i, label %bb.aa, label %.thread119.i

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bd, i64 50
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !96, !range !42, !noundef !43
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.thread119.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !97, !range !42, !noundef !43
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %.thread119.i, label %.thread112.i

.thread119.i:                                     ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %.split.i
  %.175117122.i = phi i64 [ %.074101.i, %.split.i ], [ %.175.i, %bb.ab ], [ %.175.i, %bb.aa ], [ %.175.i, %bb.z ], [ %.175.i, %bb.y ]
  %i.cs = load ptr, ptr %i.as, align 8, !tbaa !73
  br label %.thread112.i

.thread112.i:                                     ; preds = %.thread119.i, %bb.ab, %bb.u, %bb.p
  %.175116.i = phi i64 [ %.175117122.i, %.thread119.i ], [ %.074101.i, %bb.u ], [ %.175.i, %bb.ab ], [ %.074101.i, %bb.p ]
  %.266.i = phi ptr [ %i.cs, %.thread119.i ], [ %i.bd, %bb.u ], [ %i.bd, %bb.ab ], [ %i.bd, %bb.p ] ; 2 uses
  %.not84.i = icmp eq ptr %.266.i, null
  br i1 %.not84.i, label %.critedge.i, label %bb.k

bb.ac:                                            ; preds = %bb.i
  %.not83.i = icmp eq i64 %.077.fr.i, 0
  %or.cond129.i = or i1 %.not84100.i, %.not83.i
  br i1 %or.cond129.i, label %.critedge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.ac, %bb.ah
  %.36798.i = phi ptr [ %i.cx, %bb.ah ], [ %i.at, %bb.ac ] ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.36798.i, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !83
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !85
  %.not82.i = icmp eq i32 %i.cv, 27
  br i1 %.not82.i, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.36798.i, i64 144
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !78 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.36798.i, i64 48
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !86, !range !42, !noundef !43
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = getelementptr inbounds nuw i8, ptr %.36798.i, i64 216
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !95, !range !42, !noundef !43
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.de = tail call i32 @H5C__flush_single_entry(ptr noundef %0, ptr noundef nonnull %.36798.i, i32 noundef 8208) #5
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dg = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !39
  %i.dh = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !39
  %i.di = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__autoadjust__ageout__evict_aged_out_entries, i32 noundef 646, i64 noundef %i.dg, i64 noundef %i.dh, ptr noundef nonnull @.str.27) #5 ; 0 uses
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.split.i, !llvm.loop !124

.critedge.i:                                      ; preds = %bb.ah, %.lr.ph.split.i, %bb.x, %.thread112.i, %.split.i, %bb.k, %bb.ac, %bb.j
  %i.dj = load i64, ptr %i.ar, align 8, !tbaa !99
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !54
  %i.dm = icmp ult i64 %i.dj, %i.dl
  br i1 %i.dm, label %bb.ai, label %H5C__autoadjust__ageout__evict_aged_out_entries.exit

bb.ai:                                            ; preds = %.critedge.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ag, i64 524858
  store i8 0, ptr %i.dn, align 2, !tbaa !56
  br label %H5C__autoadjust__ageout__evict_aged_out_entries.exit

bb.aj:                                            ; preds = %bb.ag, %bb.w, %bb.r
  %i.do = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !39
  %i.dp = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !39
  %i.dq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__autoadjust__ageout, i32 noundef 364, i64 noundef %i.do, i64 noundef %i.dp, ptr noundef nonnull @.str.26) #5 ; 0 uses
  br label %bb.au

H5C__autoadjust__ageout__evict_aged_out_entries.exit: ; preds = %bb.ai, %.critedge.i, %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !99 ; 4 uses
  %i.dt = load i64, ptr %i.z, align 8, !tbaa !54  ; 2 uses
  %i.du = icmp ult i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.ak, label %bb.au

bb.ak:                                            ; preds = %H5C__autoadjust__ageout__evict_aged_out_entries.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 525036
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !125, !range !42, !noundef !43
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dy = uitofp i64 %i.ds to double
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 525040
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !126
  %i.eb = fsub double 1.000000e+00, %i.ea
  %i.ec = fdiv double %i.dy, %i.eb
  %i.ed = fptoui double %i.ec to i64              ; 3 uses
  %i.ee = icmp ugt i64 %i.dt, %i.ed
  br i1 %i.ee, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  store i32 3, ptr %2, align 4, !tbaa !40
  store i64 %i.ed, ptr %3, align 8, !tbaa !39
  br label %.thread

bb.an:                                            ; preds = %bb.ak
  store i32 3, ptr %2, align 4, !tbaa !40
  store i64 %i.ds, ptr %3, align 8, !tbaa !39
  br label %.thread

bb.ao:                                            ; preds = %bb.al
  %.pr = load i32, ptr %2, align 4, !tbaa !40
  %i.ef = icmp eq i32 %.pr, 3
  br i1 %i.ef, label %..thread_crit_edge, label %bb.au

..thread_crit_edge:                               ; preds = %bb.ao
  %.pre = load i64, ptr %3, align 8, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.an, %bb.am
  %i.eg = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.ds, %bb.an ], [ %i.ed, %bb.am ] ; 2 uses
  %i.eh = load i64, ptr %i.ab, align 8, !tbaa !61 ; 3 uses
  %i.ei = icmp ult i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.thread
  store i64 %i.eh, ptr %3, align 8, !tbaa !39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread
  %i.ej = phi i64 [ %i.eh, %bb.ap ], [ %i.eg, %.thread ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 525016
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !62, !range !42, !noundef !43
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 525024
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !63 ; 2 uses
  %i.ep = add i64 %i.ej, %i.eo
  %i.eq = load i64, ptr %i.z, align 8, !tbaa !54  ; 2 uses
  %i.er = icmp ult i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.es = sub i64 %i.eq, %i.eo
  store i64 %i.es, ptr %3, align 8, !tbaa !39
  br label %bb.au

bb.at:                                            ; preds = %bb.g
  store i32 5, ptr %2, align 4, !tbaa !40
  br label %bb.au

bb.au:                                            ; preds = %bb.e, %bb.d, %bb.aj, %bb.at, %bb.ao, %bb.as, %bb.ar, %bb.aq, %H5C__autoadjust__ageout__evict_aged_out_entries.exit, %bb.f, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.aj ], [ 0, %bb.as ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.ao ], [ 0, %H5C__autoadjust__ageout__evict_aged_out_entries.exit ], [ 0, %bb.at ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5C__autoadjust__ageout__cycle_epoch_marker(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !41, !range !42, !noundef !43
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !42
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.v, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 525048
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !39
  %i.k = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !39
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__autoadjust__ageout__cycle_epoch_marker, i32 noundef 427, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.28) #5 ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 525064 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 525108 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !100  ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40   ; 2 uses
  %i.s = add nsw i32 %i.o, 1
  %i.t = srem i32 %i.s, 11
  store i32 %i.t, ptr %i.n, align 4, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 525116 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !71   ; 4 uses
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !39
  %i.y = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !39
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__autoadjust__ageout__cycle_epoch_marker, i32 noundef 434, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.11) #5 ; 0 uses
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.aa = add nsw i32 %i.v, -1
  store i32 %i.aa, ptr %i.u, align 4, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 525052
  %i.ac = sext i32 %i.r to i64                    ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !41, !range !42, !noundef !43
  %.not.not = icmp eq i8 %i.ae, 0
  br i1 %.not.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !39
  %i.ag = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !39
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__autoadjust__ageout__cycle_epoch_marker, i32 noundef 438, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.12) #5 ; 0 uses
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 524824 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 525120
  %i.al = getelementptr inbounds [248 x i8], ptr %i.ak, i64 %i.ac ; 10 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !79 ; 7 uses
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !72
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  store ptr null, ptr %i.ap, align 8, !tbaa !78
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !78
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !79
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %i.at = phi ptr [ null, %bb.i ], [ %i.ao, %bb.j ], [ %i.aj, %bb.k ] ; 3 uses
  %i.au = phi ptr [ null, %bb.i ], [ %i.ao, %bb.j ], [ %i.ao, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 524832 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !73
  %i.ax = icmp eq ptr %i.aw, %i.al
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78 ; 4 uses
  br i1 %i.ax, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  store ptr %i.az, ptr %i.av, align 8, !tbaa !73
  %.not78 = icmp eq ptr %i.az, null
  br i1 %.not78, label %bb.p, label %bb.n

end_hunk_0
