Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_strfmt?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lj_strfmt_wint:bb.a
  %i.k = icmp samesign ult i32 %.060, 100000
  br i1 %i.k, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = icmp samesign ult i32 %.060, 1000000
  br i1 %i.l, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = icmp samesign ult i32 %.060, 10000000
  br i1 %i.m, label %bb.o, label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.n = udiv i32 %.060, 100000000                ; 4 uses
  %.neg76 = mul nsw i32 %i.n, -10000
  %i.o = add nsw i32 %.neg76, %i.h
  %i.p = icmp ugt i32 %.060, 999999999
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.q = mul nuw nsw i32 %i.n, 103
  %i.r = lshr i32 %i.q, 10                        ; 2 uses
  %.neg77 = mul nsw i32 %i.r, -10
  %i.s = add nsw i32 %.neg77, %i.n
  %i.t = trunc nuw nsw i32 %i.r to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.u, ptr %.0, align 1, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.069 = phi i32 [ %i.s, %bb.l ], [ %i.n, %bb.k ]
  %.1 = phi ptr [ %i.v, %bb.l ], [ %.0, %bb.k ]   ; 2 uses
  %i.w = trunc nsw i32 %.069 to i8
  %i.x = add nsw i8 %i.w, 48
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.x, ptr %.1, align 1, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m
  %.065 = phi i32 [ %i.h, %bb.j ], [ %i.o, %bb.m ] ; 2 uses
  %.2 = phi ptr [ %.0, %bb.j ], [ %i.y, %bb.m ]   ; 2 uses
  %i.z = mul nsw i32 %.065, 8389
  %i.aa = lshr i32 %i.z, 23                       ; 2 uses
  %.neg78 = mul nsw i32 %i.aa, -1000
  %i.ab = add nsw i32 %.neg78, %.065
  %i.ac = trunc i32 %i.aa to i8
  %i.ad = add i8 %i.ac, 48
  %i.ae = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %i.ad, ptr %.2, align 1, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.n
  %.166 = phi i32 [ %i.h, %bb.j ], [ %i.ab, %bb.n ] ; 2 uses
  %.3 = phi ptr [ %.0, %bb.j ], [ %i.ae, %bb.n ]  ; 2 uses
  %i.af = mul nsw i32 %.166, 41
  %i.ag = lshr i32 %i.af, 12                      ; 2 uses
  %.neg79 = mul nsw i32 %i.ag, -100
  %i.ah = add nsw i32 %.neg79, %.166
  %i.ai = trunc i32 %i.ag to i8
  %i.aj = add i8 %i.ai, 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 %i.aj, ptr %.3, align 1, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o
  %.267 = phi i32 [ %i.h, %bb.i ], [ %i.ah, %bb.o ] ; 2 uses
  %.4 = phi ptr [ %.0, %bb.i ], [ %i.ak, %bb.o ]  ; 2 uses
  %i.al = mul i32 %.267, 103
  %i.am = lshr i32 %i.al, 10                      ; 2 uses
  %.neg80 = mul nsw i32 %i.am, -10
  %i.an = add nsw i32 %.neg80, %.267
  %i.ao = trunc i32 %i.am to i8
  %i.ap = add i8 %i.ao, 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.4, i64 1
  store i8 %i.ap, ptr %.4, align 1, !tbaa !18
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.p
  %.368 = phi i32 [ %i.h, %bb.h ], [ %i.an, %bb.p ]
  %.5 = phi ptr [ %.0, %bb.h ], [ %i.aq, %bb.p ]  ; 2 uses
  %i.ar = trunc i32 %.368 to i8
  %i.as = add i8 %i.ar, 48
  %i.at = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 %i.as, ptr %.5, align 1, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %bb.q
  %.161 = phi i32 [ %.060, %bb.f ], [ %i.i, %bb.q ] ; 2 uses
  %.6 = phi ptr [ %.0, %bb.f ], [ %i.at, %bb.q ]  ; 2 uses
  %i.au = mul i32 %.161, 8389
  %i.av = lshr i32 %i.au, 23                      ; 2 uses
  %.neg81 = mul nsw i32 %i.av, -1000
  %i.aw = add i32 %.neg81, %.161
  %i.ax = trunc i32 %i.av to i8
  %i.ay = add i8 %i.ax, 48
  %i.az = getelementptr inbounds nuw i8, ptr %.6, i64 1
  store i8 %i.ay, ptr %.6, align 1, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %bb.r
  %.262 = phi i32 [ %.060, %bb.f ], [ %i.aw, %bb.r ] ; 2 uses
  %.7 = phi ptr [ %.0, %bb.f ], [ %i.az, %bb.r ]  ; 2 uses
  %i.ba = mul i32 %.262, 41
  %i.bb = lshr i32 %i.ba, 12                      ; 2 uses
  %.neg82 = mul nsw i32 %i.bb, -100
  %i.bc = add i32 %.neg82, %.262
  %i.bd = trunc i32 %i.bb to i8
  %i.be = add i8 %i.bd, 48
  %i.bf = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.be, ptr %.7, align 1, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.e, %bb.s
  %.363 = phi i32 [ %.060, %bb.e ], [ %i.bc, %bb.s ] ; 2 uses
  %.8 = phi ptr [ %.0, %bb.e ], [ %i.bf, %bb.s ]  ; 2 uses
  %i.bg = mul i32 %.363, 103
  %i.bh = lshr i32 %i.bg, 10                      ; 2 uses
  %.neg83 = mul nsw i32 %i.bh, -10
  %i.bi = add i32 %.neg83, %.363
  %i.bj = trunc i32 %i.bh to i8
  %i.bk = add i8 %i.bj, 48
  %i.bl = getelementptr inbounds nuw i8, ptr %.8, i64 1
  store i8 %i.bk, ptr %.8, align 1, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %bb.t
  %.464 = phi i32 [ %.060, %bb.d ], [ %i.bi, %bb.t ]
  %.9 = phi ptr [ %.0, %bb.d ], [ %i.bl, %bb.t ]  ; 2 uses
  %i.bm = trunc i32 %.464 to i8
  %i.bn = add i8 %i.bm, 48
  %i.bo = getelementptr inbounds nuw i8, ptr %.9, i64 1
  store i8 %i.bn, ptr %.9, align 1, !tbaa !18
  ret ptr %i.bo
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden ptr @lj_strfmt_wptr(ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 2)) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <4 x i8> <i8 78, i8 85, i8 76, i8 76>, ptr %0, align 1, !tbaa !18
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = ashr i64 %i.a, 32                        ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = trunc nsw i64 %i.d to i32
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
  %i.g = lshr i32 %i.f, 2
  %i.h = and i32 %i.g, 6
  %i.i = sub nuw nsw i32 18, %i.h
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %i.i, %bb.d ], [ 10, %bb.c ]   ; 2 uses
  store i8 48, ptr %0, align 1, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 120, ptr %i.k, align 1, !tbaa !18
  %.024 = add nsw i32 %i.j, -1
  %i.l = zext nneg i32 %.024 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02025 = phi i64 [ %i.a, %.lr.ph.preheader ], [ %i.q, %.lr.ph ] ; 2 uses
  %i.m = and i64 %.02025, 15
  %i.n = getelementptr inbounds nuw i8, ptr @.str, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.o, ptr %i.p, align 1, !tbaa !18
  %i.q = ashr i64 %.02025, 4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.r = and i64 %indvars.iv.next, 4294967294
  %.not28 = icmp eq i64 %i.r, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph
  %i.s = zext nneg i32 %i.j to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.021 = phi ptr [ %i.c, %bb.b ], [ %i.t, %._crit_edge ]
  ret ptr %.021
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden nonnull ptr @lj_strfmt_wuleb128(ptr nofree noundef writeonly captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i32 %1, 127
  br i1 %i.a, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.a, %.lr.ph.a
  %.08 = phi i32 [ %i.e, %.lr.ph.a ], [ %1, %bb.a ] ; 3 uses
  %.067 = phi ptr [ %i.d, %.lr.ph.a ], [ %0, %bb.a ] ; 2 uses
  %i.b = trunc i32 %.08 to i8
  %i.c = or i8 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %.067, i64 1 ; 2 uses
  store i8 %i.c, ptr %.067, align 1, !tbaa !18
  %i.e = lshr i32 %.08, 7                         ; 2 uses
  %i.f = icmp ugt i32 %.08, 16383
  br i1 %i.f, label %.lr.ph.a, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph.a, %bb.a
  %.06.lcssa = phi ptr [ %0, %bb.a ], [ %i.d, %.lr.ph.a ] ; 2 uses
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.e, %.lr.ph.a ]
  %i.g = trunc nuw nsw i32 %.0.lcssa to i8
  %i.h = getelementptr inbounds nuw i8, ptr %.06.lcssa, i64 1
  store i8 %i.g, ptr %.06.lcssa, align 1, !tbaa !18
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_strfmt_wstrnum(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !18     ; 4 uses
  %i.b = ashr i64 %i.a, 47
  switch i64 %i.b, label %bb.e [
    i64 -5, label %bb.b
    i64 -13, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 140737488355327
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  store i32 %i.f, ptr %2, align 4, !tbaa !22
  %i.g = load i64, ptr %1, align 8, !tbaa !18
  %i.h = and i64 %i.g, 140737488355327
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = and i64 %i.a, 140737488355327
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.n = load i8, ptr %i.m, align 2, !tbaa !18
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 3 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  store i32 %i.w, ptr %2, align 4, !tbaa !22
  %.not = icmp eq ptr %i.s, null
  %spec.select = select i1 %.not, ptr @.str.1, ptr %i.s
  br label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.x = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31
  %i.aa = inttoptr i64 %i.z to ptr                ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 200 ; 2 uses
  %i.ac = ptrtoint ptr %0 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !34
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !35
  %i.ag = load double, ptr %1, align 8, !tbaa !18
  %i.ah = tail call ptr @lj_strfmt_putfnum(ptr noundef nonnull %i.ab, i32 noundef 251658293, double noundef %i.ag) #13 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %2, align 4, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ %spec.select, %bb.d ], [ %i.ak, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

declare hidden ptr @lj_strfmt_putfnum(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putint(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ult i32 %i.g, 11
  br i1 %i.h, label %bb.b, label %lj_buf_more.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef 11) #13
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %i.c, %bb.a ]
  %i.j = tail call ptr @lj_strfmt_wint(ptr noundef %.0.i, i32 noundef %1)
  store ptr %i.j, ptr %0, align 8, !tbaa !35
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_strfmt_putnum(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !18
  %i.b = tail call ptr @lj_strfmt_putfnum(ptr noundef %0, i32 noundef 251658293, double noundef %i.a) #13
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putptr(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ult i32 %i.g, 18
  br i1 %i.h, label %bb.b, label %lj_buf_more.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef 18) #13
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %i.c, %bb.a ] ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %lj_buf_more.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store <4 x i8> <i8 78, i8 85, i8 76, i8 76>, ptr %.0.i, align 1, !tbaa !18
  br label %lj_strfmt_wptr.exit

bb.d:                                             ; preds = %lj_buf_more.exit
  %i.m = ashr i64 %i.j, 32                        ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.lr.ph.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = trunc nsw i64 %i.m to i32
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.n, i1 true)
  %i.p = lshr i32 %i.o, 2
  %i.q = and i32 %i.p, 6
  %i.r = sub nuw nsw i32 18, %i.q
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  %i.s = phi i32 [ %i.r, %bb.e ], [ 10, %bb.d ]   ; 2 uses
  store i8 48, ptr %.0.i, align 1, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 120, ptr %i.t, align 1, !tbaa !18
  %.024.i = add nsw i32 %i.s, -1
  %i.u = zext nneg i32 %.024.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.u, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.02025.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %i.v = and i64 %.02025.i, 15
  %i.w = getelementptr inbounds nuw i8, ptr @.str, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !18
  %i.z = ashr i64 %.02025.i, 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.aa = and i64 %indvars.iv.next.i, 4294967294
  %.not28.i = icmp eq i64 %i.aa, 0
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ab = zext nneg i32 %i.s to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ab
  br label %lj_strfmt_wptr.exit

lj_strfmt_wptr.exit:                              ; preds = %bb.c, %._crit_edge.i
  %.021.i = phi ptr [ %i.l, %bb.c ], [ %i.ac, %._crit_edge.i ]
  store ptr %.021.i, ptr %0, align 8, !tbaa !35
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putquoted(ptr noundef returned %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %i.d = tail call fastcc ptr @strfmt_putquotedlen(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.c) ; 0 uses
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @strfmt_putquotedlen(ptr noundef returned %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %lj_buf_putb.exit40, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef 1) #13
  br label %lj_buf_putb.exit40

lj_buf_putb.exit40:                               ; preds = %bb.a, %bb.b
  %.0.i.i39 = phi ptr [ %i.i, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  store i8 34, ptr %.0.i.i39, align 1, !tbaa !18
  %storemerge41 = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 1 ; 3 uses
  store ptr %storemerge41, ptr %0, align 8, !tbaa !35
  %.not42 = icmp eq i32 %2, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %lj_buf_putb.exit40, %bb.l
  %i.j = phi ptr [ %storemerge, %bb.l ], [ %storemerge41, %lj_buf_putb.exit40 ] ; 2 uses
  %.in = phi i32 [ %i.k, %bb.l ], [ %2, %lj_buf_putb.exit40 ]
  %.03543 = phi ptr [ %i.l, %bb.l ], [ %1, %lj_buf_putb.exit40 ] ; 2 uses
  %i.k = add i32 %.in, -1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.03543, i64 1 ; 2 uses
  %i.m = load i8, ptr %.03543, align 1, !tbaa !18 ; 8 uses
  %i.n = zext i8 %i.m to i32                      ; 3 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = and i64 %i.r, 4294967292
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %lj_buf_more.exit, !prof !37

bb.c:                                             ; preds = %.lr.ph
  %i.u = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef 4) #13
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %.lr.ph, %bb.c
  %.0.i = phi ptr [ %i.u, %bb.c ], [ %i.j, %.lr.ph ] ; 6 uses
  switch i8 %i.m, label %bb.e [
    i8 92, label %bb.d
    i8 34, label %bb.d
    i8 10, label %bb.d
  ]

bb.d:                                             ; preds = %lj_buf_more.exit, %lj_buf_more.exit, %lj_buf_more.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 92, ptr %.0.i, align 1, !tbaa !18
  br label %bb.l

bb.e:                                             ; preds = %lj_buf_more.exit
  %i.w = zext i8 %i.m to i64
  %i.x = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @lj_char_bits, i64 1), i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18
  %i.z = and i8 %i.y, 1
  %.not37 = icmp eq i8 %i.z, 0
  br i1 %.not37, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 3 uses
  store i8 92, ptr %.0.i, align 1, !tbaa !18
  %i.ab = icmp ugt i8 %i.m, 99                    ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.l, align 1, !tbaa !18
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @lj_char_bits, i64 1), i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ag = and i8 %i.af, 8
  %.not38 = icmp eq i8 %i.ag, 0
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = phi i8 [ 48, %bb.g ], [ 49, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.ah, ptr %i.aa, align 1, !tbaa !18
  %i.aj = add nsw i32 %i.n, -100
  %spec.select = select i1 %i.ab, i32 %i.aj, i32 %i.n
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp samesign ugt i8 %i.m, 9
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  %.031 = phi i32 [ %i.n, %bb.i ], [ %spec.select, %bb.h ] ; 2 uses
  %.0 = phi ptr [ %i.aa, %bb.i ], [ %i.ai, %bb.h ] ; 2 uses
  %i.al = mul nuw nsw i32 %.031, 205
  %i.am = lshr i32 %i.al, 11                      ; 2 uses
  %.neg = mul nuw nsw i32 %i.am, 246
  %i.an = add nsw i32 %.neg, %.031
  %i.ao = trunc nuw nsw i32 %i.am to i8
  %i.ap = add nuw nsw i8 %i.ao, 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.ap, ptr %.0, align 1, !tbaa !18
  %i.ar = trunc i32 %i.an to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.132 = phi i8 [ %i.ar, %bb.j ], [ %i.m, %bb.i ]
  %.1 = phi ptr [ %i.aq, %bb.j ], [ %i.aa, %bb.i ]
  %i.as = add i8 %.132, 48
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k, %bb.d
  %.233 = phi i8 [ %i.m, %bb.d ], [ %i.as, %bb.k ], [ %i.m, %bb.e ]
  %.2 = phi ptr [ %i.v, %bb.d ], [ %.1, %bb.k ], [ %.0.i, %bb.e ] ; 2 uses
  store i8 %.233, ptr %.2, align 1, !tbaa !18
  %storemerge = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 3 uses
  store ptr %storemerge, ptr %0, align 8, !tbaa !35
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.l, %lj_buf_putb.exit40
  %i.at = phi ptr [ %storemerge41, %lj_buf_putb.exit40 ], [ %storemerge, %bb.l ] ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.m, label %lj_buf_putb.exit, !prof !37

bb.m:                                             ; preds = %._crit_edge
  %i.ba = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef 1) #13
  br label %lj_buf_putb.exit

lj_buf_putb.exit:                                 ; preds = %._crit_edge, %bb.m
  %.0.i.i = phi ptr [ %i.ba, %bb.m ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 34, ptr %.0.i.i, align 1, !tbaa !18
  store ptr %i.bb, ptr %0, align 8, !tbaa !35
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putfchar(ptr noundef returned %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = and i32 %i.a, 255                        ; 4 uses
  %i.c = tail call i32 @llvm.umax.i32(i32 %i.b, i32 1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp ugt i32 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %lj_buf_more.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.c) #13
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.m = and i32 %1, 256
  %.not = icmp eq i32 %i.m, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %lj_buf_more.exit
  %i.n = trunc i32 %2 to i8
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.n, ptr %.0.i, align 1, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %lj_buf_more.exit
  %.0 = phi ptr [ %i.o, %bb.c ], [ %.0.i, %lj_buf_more.exit ] ; 3 uses
  %i.p = icmp samesign ugt i32 %i.b, 1
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.q = add nsw i32 %i.b, -1
  %i.r = zext nneg i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0, i8 32, i64 %i.r, i1 false), !tbaa !18
  %i.s = zext nneg i32 %i.b to i64
  %i.t = getelementptr i8, ptr %.0, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.t, i64 -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.d
  %.1.lcssa = phi ptr [ %.0, %bb.d ], [ %scevgep, %.lr.ph.preheader ] ; 3 uses
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.u = trunc i32 %2 to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1
  store i8 %i.u, ptr %.1.lcssa, align 1, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.2 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.v, %bb.e ]
  store ptr %.2, ptr %0, align 8, !tbaa !35
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putfstr(ptr noundef returned %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %i.d = lshr i32 %1, 16
  %i.e = and i32 %i.d, 255                        ; 3 uses
  %i.f = lshr i32 %1, 24
  %i.g = add nsw i32 %i.f, -1
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %i.g) ; 5 uses
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.e, i32 %spec.select.i) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp ugt i32 %i.h, %i.o
  br i1 %i.p, label %bb.b, label %lj_buf_more.exit.i, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.h) #13
  br label %lj_buf_more.exit.i

lj_buf_more.exit.i:                               ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.q, %bb.b ], [ %i.k, %bb.a ] ; 3 uses
  %i.r = and i32 %1, 256
  %.not.i = icmp eq i32 %i.r, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %lj_buf_more.exit.i
  %i.s = zext i32 %spec.select.i to i64           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr nonnull readonly align 4 %i.a, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %lj_buf_more.exit.i
  %.0.i = phi ptr [ %i.t, %bb.c ], [ %.0.i.i, %lj_buf_more.exit.i ] ; 3 uses
  %i.u = icmp ugt i32 %i.e, %spec.select.i
  br i1 %i.u, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.v = xor i32 %spec.select.i, -1
  %i.w = add nsw i32 %i.e, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i8 32, i64 %i.y, i1 false), !tbaa !18
  %scevgep.i = getelementptr i8, ptr %.0.i, i64 %i.y
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.d
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.d ], [ %scevgep.i, %.lr.ph.preheader.i ] ; 3 uses
  br i1 %.not.i, label %bb.e, label %strfmt_putfstrlen.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.z = zext i32 %spec.select.i to i64           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1.lcssa.i, ptr nonnull readonly align 4 %i.a, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.z
  br label %strfmt_putfstrlen.exit

strfmt_putfstrlen.exit:                           ; preds = %._crit_edge.i, %bb.e
  %.2.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %i.aa, %bb.e ]
  store ptr %.2.i, ptr %0, align 8, !tbaa !35
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putfxint(ptr noundef returned %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [23 x i8], align 16               ; 20 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = and i32 %1, 15
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %2, 0
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = sub i64 0, %2
  %i.g = lshr i32 %1, 24                          ; 2 uses
  %i.h = add nsw i32 %i.g, -1
  %.not102130 = icmp eq i32 %i.g, 0
  %i.i = and i32 %1, -1037
  %spec.select124131 = select i1 %.not102130, i32 %1, i32 %i.i
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %1, 512
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %1, 2048
  %.not101 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not101, i32 0, i32 288
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.078 = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.a ], [ 299, %bb.c ] ; 3 uses
  %i.l = lshr i32 %1, 24                          ; 2 uses
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  %.not102 = icmp eq i32 %i.l, 0
  %i.n = and i32 %1, -1025
  %spec.select124 = select i1 %.not102, i32 %1, i32 %i.n ; 4 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not112 = icmp ne i32 %i.m, 0
  %i.p = and i32 %spec.select124, 4128
  %i.q = icmp eq i32 %i.p, 4128
  %or.cond = or i1 %.not112, %i.q
  br i1 %or.cond, label %bb.g, label %.loopexit141

bb.g:                                             ; preds = %bb.f
  %.ptr121 = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 48, ptr %.ptr121, align 2, !tbaa !18
  br label %.loopexit141

bb.h:                                             ; preds = %.thread, %bb.e
  %spec.select124134 = phi i32 [ %spec.select124131, %.thread ], [ %spec.select124, %bb.e ] ; 9 uses
  %i.r = phi i32 [ %i.h, %.thread ], [ %i.m, %bb.e ] ; 4 uses
  %.078133 = phi i32 [ 301, %.thread ], [ %.078, %bb.e ] ; 4 uses
  %.092132 = phi i64 [ %i.f, %.thread ], [ %2, %bb.e ] ; 5 uses
  %i.s = and i32 %spec.select124134, 48
  %.not103 = icmp eq i32 %i.s, 0
  br i1 %.not103, label %.preheader142, label %bb.j

.preheader142:                                    ; preds = %bb.h
  %.not104145 = icmp ult i64 %.092132, 4294967296
  br i1 %.not104145, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader142, %.lr.ph
  %.086.idx147 = phi i64 [ %.086.add, %.lr.ph ], [ 23, %.preheader142 ]
  %.193146 = phi i64 [ %i.w, %.lr.ph ], [ %.092132, %.preheader142 ] ; 3 uses
  %i.t = urem i64 %.193146, 10
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = or disjoint i8 %i.u, 48
  %.086.add = add nsw i64 %.086.idx147, -1        ; 3 uses
  %.ptr122 = getelementptr inbounds i8, ptr %i.a, i64 %.086.add
  store i8 %i.v, ptr %.ptr122, align 1, !tbaa !18
  %i.w = udiv i64 %.193146, 10                    ; 2 uses
  %.not104 = icmp ult i64 %.193146, 42949672960
  br i1 %.not104, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %.preheader142
  %.193.lcssa = phi i64 [ %.092132, %.preheader142 ], [ %i.w, %.lr.ph ]
  %.086.idx.lcssa = phi i64 [ 23, %.preheader142 ], [ %.086.add, %.lr.ph ]
  %i.x = trunc nuw i64 %.193.lcssa to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge
  %.187.idx = phi i64 [ %.086.idx.lcssa, %._crit_edge ], [ %.187.add, %bb.i ]
  %.0 = phi i32 [ %i.x, %._crit_edge ], [ %i.ab, %bb.i ] ; 3 uses
  %i.y = urem i32 %.0, 10
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, 48
  %.187.add = add nsw i64 %.187.idx, -1           ; 3 uses
  %.ptr116 = getelementptr inbounds i8, ptr %i.a, i64 %.187.add
  store i8 %i.aa, ptr %.ptr116, align 1, !tbaa !18
  %i.ab = udiv i32 %.0, 10
  %.not105 = icmp ult i32 %.0, 10
  br i1 %.not105, label %.loopexit141, label %bb.i, !llvm.loop !45

bb.j:                                             ; preds = %bb.h
  %i.ac = and i32 %spec.select124134, 16
  %.not106 = icmp eq i32 %i.ac, 0
  br i1 %.not106, label %.preheader143, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = and i32 %spec.select124134, 8192
  %.not109 = icmp eq i32 %i.ad, 0                 ; 2 uses
  %i.ae = select i1 %.not109, ptr @.str, ptr @.str.2
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.294 = phi i64 [ %.092132, %bb.k ], [ %i.ai, %bb.l ] ; 2 uses
  %.288.idx = phi i64 [ 23, %bb.k ], [ %.288.add, %bb.l ]
  %i.af = and i64 %.294, 15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  %.288.add = add nsw i64 %.288.idx, -1           ; 3 uses
  %.ptr119 = getelementptr inbounds i8, ptr %i.a, i64 %.288.add
  store i8 %i.ah, ptr %.ptr119, align 1, !tbaa !18
  %i.ai = lshr i64 %.294, 4                       ; 2 uses
  %.not110 = icmp eq i64 %i.ai, 0
  br i1 %.not110, label %bb.m, label %bb.l, !llvm.loop !46

bb.m:                                             ; preds = %bb.l
  %i.aj = and i32 %spec.select124134, 4096
  %.not111 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not109, i32 632, i32 600
  %spec.select126 = select i1 %.not111, i32 %.078133, i32 %i.ak
  br label %.loopexit141

.preheader143:                                    ; preds = %bb.j, %.preheader143
  %.395 = phi i64 [ %i.ao, %.preheader143 ], [ %.092132, %bb.j ] ; 2 uses
  %.389.idx = phi i64 [ %.389.add, %.preheader143 ], [ 23, %bb.j ] ; 2 uses
  %i.al = trunc i64 %.395 to i8
  %i.am = and i8 %i.al, 7
  %i.an = or disjoint i8 %i.am, 48
  %.389.add = add nsw i64 %.389.idx, -1           ; 3 uses
  %.ptr117 = getelementptr inbounds i8, ptr %i.a, i64 %.389.add
  store i8 %i.an, ptr %.ptr117, align 1, !tbaa !18
  %i.ao = lshr i64 %.395, 3                       ; 2 uses
  %.not107 = icmp eq i64 %i.ao, 0
  br i1 %.not107, label %bb.n, label %.preheader143, !llvm.loop !47

bb.n:                                             ; preds = %.preheader143
  %i.ap = and i32 %spec.select124134, 4096
  %.not108 = icmp eq i32 %i.ap, 0
  br i1 %.not108, label %.loopexit141, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.389.add115 = add nsw i64 %.389.idx, -2        ; 2 uses
  %.ptr118 = getelementptr inbounds i8, ptr %i.a, i64 %.389.add115
  store i8 48, ptr %.ptr118, align 1, !tbaa !18
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.i, %bb.f, %bb.n, %bb.o, %bb.m, %bb.g
  %spec.select124135 = phi i32 [ %spec.select124, %bb.g ], [ %spec.select124, %bb.f ], [ %spec.select124134, %bb.m ], [ %spec.select124134, %bb.o ], [ %spec.select124134, %bb.n ], [ %spec.select124134, %bb.i ] ; 3 uses
  %i.aq = phi i32 [ %i.m, %bb.g ], [ 0, %bb.f ], [ %i.r, %bb.m ], [ %i.r, %bb.o ], [ %i.r, %bb.n ], [ %i.r, %bb.i ]
  %.490.idx = phi i64 [ 22, %bb.g ], [ 23, %bb.f ], [ %.288.add, %bb.m ], [ %.389.add115, %bb.o ], [ %.389.add, %bb.n ], [ %.187.add, %bb.i ] ; 10 uses
  %.280 = phi i32 [ %.078, %bb.g ], [ %.078, %bb.f ], [ %spec.select126, %bb.m ], [ %.078133, %bb.o ], [ %.078133, %bb.n ], [ %.078133, %bb.i ] ; 3 uses
  %i.ar = trunc i64 %.490.idx to i32              ; 2 uses
  %i.as = sub i32 23, %i.ar                       ; 2 uses
  %spec.select127 = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.as) ; 3 uses
  %i.at = lshr i32 %spec.select124135, 16
  %i.au = and i32 %i.at, 255                      ; 4 uses
  %i.av = lshr i32 %.280, 8
  %i.aw = add i32 %spec.select127, %i.av          ; 9 uses
  %i.ax = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %i.aw) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !36
  %i.ba = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = icmp ugt i32 %i.ax, %i.be
  br i1 %i.bf, label %bb.p, label %lj_buf_more.exit, !prof !37

bb.p:                                             ; preds = %.loopexit141
  %i.bg = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.ax) #13
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %.loopexit141, %bb.p
  %.0.i = phi ptr [ %i.bg, %bb.p ], [ %i.ba, %.loopexit141 ] ; 4 uses
  %i.bh = and i32 %spec.select124135, 1280        ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.preheader139, label %.loopexit140

.preheader139:                                    ; preds = %lj_buf_more.exit
  %i.bj = add nsw i32 %i.au, -1                   ; 2 uses
  %i.bk = icmp ugt i32 %i.au, %i.aw
  br i1 %i.bk, label %.lr.ph150.preheader, label %.loopexit140

.lr.ph150.preheader:                              ; preds = %.preheader139
  %i.bl = sub nsw i32 %i.bj, %i.aw
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i8 32, i64 %i.bn, i1 false), !tbaa !18
  %scevgep = getelementptr i8, ptr %.0.i, i64 %i.bn
  %i.bo = add nsw i32 %i.aw, -1
  br label %.loopexit140

.loopexit140:                                     ; preds = %.lr.ph150.preheader, %.preheader139, %lj_buf_more.exit
  %.182 = phi ptr [ %.0.i, %lj_buf_more.exit ], [ %.0.i, %.preheader139 ], [ %scevgep, %.lr.ph150.preheader ] ; 4 uses
  %.1 = phi i32 [ %i.au, %lj_buf_more.exit ], [ %i.bj, %.preheader139 ], [ %i.bo, %.lr.ph150.preheader ] ; 3 uses
  %.not114 = icmp eq i32 %.280, 0
  br i1 %.not114, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.loopexit140
  %i.bp = trunc i32 %.280 to i8                   ; 2 uses
  %i.bq = icmp sgt i8 %i.bp, 87
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %.182, i64 1
  store i8 48, ptr %.182, align 1, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.283 = phi ptr [ %i.br, %bb.r ], [ %.182, %bb.q ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.283, i64 1
  store i8 %i.bp, ptr %.283, align 1, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit140
  %.384 = phi ptr [ %i.bs, %bb.s ], [ %.182, %.loopexit140 ] ; 4 uses
  %i.bt = icmp eq i32 %i.bh, 1024
  br i1 %i.bt, label %.preheader137, label %.loopexit138

.preheader137:                                    ; preds = %bb.t
  %i.bu = add nsw i32 %.1, -1                     ; 2 uses
  %i.bv = icmp ugt i32 %.1, %i.aw
  br i1 %i.bv, label %.lr.ph154.preheader, label %.loopexit138

.lr.ph154.preheader:                              ; preds = %.preheader137
  %i.bw = sub i32 %i.bu, %i.aw
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.384, i8 48, i64 %i.by, i1 false), !tbaa !18
  %scevgep179 = getelementptr i8, ptr %.384, i64 %i.by
  %i.bz = add i32 %i.aw, -1
  br label %.loopexit138

.loopexit138:                                     ; preds = %.lr.ph154.preheader, %.preheader137, %bb.t
  %.5 = phi ptr [ %.384, %bb.t ], [ %.384, %.preheader137 ], [ %scevgep179, %.lr.ph154.preheader ] ; 3 uses
  %.3 = phi i32 [ %.1, %bb.t ], [ %i.bu, %.preheader137 ], [ %i.bz, %.lr.ph154.preheader ] ; 2 uses
  %i.ca = icmp ugt i32 %spec.select127, %i.as
  br i1 %i.ca, label %.lr.ph160.preheader, label %.preheader136

.lr.ph160.preheader:                              ; preds = %.loopexit138
  %i.cb = add i32 %spec.select127, %i.ar
  %i.cc = add i32 %i.cb, -24
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.5, i8 48, i64 %i.ce, i1 false), !tbaa !18
  %scevgep180 = getelementptr i8, ptr %.5, i64 %i.ce
  br label %.preheader136

.preheader136:                                    ; preds = %.lr.ph160.preheader, %.loopexit138
  %.6.lcssa = phi ptr [ %.5, %.loopexit138 ], [ %scevgep180, %.lr.ph160.preheader ] ; 8 uses
  %.6.lcssa191 = ptrtoaddr ptr %.6.lcssa to i64
  %i.cf = icmp slt i64 %.490.idx, 23
  br i1 %i.cf, label %iter.check, label %._crit_edge165

iter.check:                                       ; preds = %.preheader136
  %i.cg = sub i64 23, %.490.idx                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check, label %.lr.ph164.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ch = add i64 %.490.idx, %i.b
  %i.ci = sub i64 %i.ch, %.6.lcssa191
  %diff.check = icmp ugt i64 %i.ci, -32
  br i1 %diff.check, label %.lr.ph164.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check192 = icmp ult i64 %i.cg, 32
  br i1 %min.iters.check192, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cj = and i64 %i.cg, 24
  %n.vec = and i64 %i.cg, -32                     ; 5 uses
  %i.ck = getelementptr i8, ptr %.6.lcssa, i64 %n.vec ; 2 uses
  %i.cl = add i64 %.490.idx, %n.vec
  %i.cm = getelementptr i8, ptr %i.a, i64 %.490.idx
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.6.lcssa, i64 %index ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <16 x i8>, ptr %i.cn, align 1, !tbaa !18
  %wide.load193 = load <16 x i8>, ptr %i.co, align 1, !tbaa !18
  %i.cp = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !18
  store <16 x i8> %wide.load193, ptr %i.cp, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %._crit_edge165, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph164.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec194 = and i64 %i.cg, -8                   ; 4 uses
  %i.cr = getelementptr i8, ptr %.6.lcssa, i64 %n.vec194 ; 2 uses
  %i.cs = add i64 %.490.idx, %n.vec194
  %i.ct = getelementptr i8, ptr %i.a, i64 %.490.idx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index195 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next198, %vec.epilog.vector.body ] ; 3 uses
  %next.gep196 = getelementptr i8, ptr %.6.lcssa, i64 %index195
  %i.cu = getelementptr i8, ptr %i.ct, i64 %index195
  %wide.load197 = load <8 x i8>, ptr %i.cu, align 1, !tbaa !18
  store <8 x i8> %wide.load197, ptr %next.gep196, align 1, !tbaa !18
  %index.next198 = add nuw i64 %index195, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next198, %n.vec194
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n199 = icmp eq i64 %i.cg, %n.vec194
  br i1 %cmp.n199, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.7163.ph = phi ptr [ %.6.lcssa, %iter.check ], [ %.6.lcssa, %vector.memcheck ], [ %i.ck, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ] ; 2 uses
  %.591.idx162.ph = phi i64 [ %.490.idx, %iter.check ], [ %.490.idx, %vector.memcheck ], [ %i.cl, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ] ; 4 uses
  %i.cw = and i64 %.591.idx162.ph, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %i.cw, 7
  br i1 %lcmp.mod.not, label %.lr.ph164.prol.loopexit, label %.lr.ph164.prol

.lr.ph164.prol:                                   ; preds = %.lr.ph164.preheader, %.lr.ph164.prol
  %.7163.prol = phi ptr [ %i.cy, %.lr.ph164.prol ], [ %.7163.ph, %.lr.ph164.preheader ] ; 2 uses
  %.591.idx162.prol = phi i64 [ %.591.add.prol, %.lr.ph164.prol ], [ %.591.idx162.ph, %.lr.ph164.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph164.prol ], [ 0, %.lr.ph164.preheader ]
  %.591.ptr.prol = getelementptr inbounds i8, ptr %i.a, i64 %.591.idx162.prol
  %.591.add.prol = add i64 %.591.idx162.prol, 1   ; 2 uses
  %i.cx = load i8, ptr %.591.ptr.prol, align 1, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.7163.prol, i64 1 ; 3 uses
  store i8 %i.cx, ptr %.7163.prol, align 1, !tbaa !18
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %i.cz = xor i64 %i.cw, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i64 %i.cz, 7
  br i1 %prol.iter.cmp.not, label %.lr.ph164.prol.loopexit, label %.lr.ph164.prol, !llvm.loop !50

.lr.ph164.prol.loopexit:                          ; preds = %.lr.ph164.prol, %.lr.ph164.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph164.preheader ], [ %i.cy, %.lr.ph164.prol ]
  %.7163.unr = phi ptr [ %.7163.ph, %.lr.ph164.preheader ], [ %i.cy, %.lr.ph164.prol ]
  %.591.idx162.unr = phi i64 [ %.591.idx162.ph, %.lr.ph164.preheader ], [ %.591.add.prol, %.lr.ph164.prol ]
  %i.da = add i64 %.591.idx162.ph, -16
  %i.db = icmp ult i64 %i.da, 7
  br i1 %i.db, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.prol.loopexit, %.lr.ph164
  %.7163 = phi ptr [ %i.dy, %.lr.ph164 ], [ %.7163.unr, %.lr.ph164.prol.loopexit ] ; 9 uses
  %.591.idx162 = phi i64 [ %.591.add.7, %.lr.ph164 ], [ %.591.idx162.unr, %.lr.ph164.prol.loopexit ] ; 9 uses
  %.591.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.591.idx162
  %i.dc = load i8, ptr %.591.ptr, align 1, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.7163, i64 1
  store i8 %i.dc, ptr %.7163, align 1, !tbaa !18
  %i.de = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.1 = getelementptr i8, ptr %i.de, i64 1
  %i.df = load i8, ptr %.591.ptr.1, align 1, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.7163, i64 2
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !18
  %i.dh = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.2 = getelementptr i8, ptr %i.dh, i64 2
  %i.di = load i8, ptr %.591.ptr.2, align 1, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.7163, i64 3
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !18
  %i.dk = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.3 = getelementptr i8, ptr %i.dk, i64 3
  %i.dl = load i8, ptr %.591.ptr.3, align 1, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.7163, i64 4
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !18
  %i.dn = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.4 = getelementptr i8, ptr %i.dn, i64 4
  %i.do = load i8, ptr %.591.ptr.4, align 1, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.7163, i64 5
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !18
  %i.dq = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.5 = getelementptr i8, ptr %i.dq, i64 5
  %i.dr = load i8, ptr %.591.ptr.5, align 1, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.7163, i64 6
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !18
  %i.dt = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.6 = getelementptr i8, ptr %i.dt, i64 6
  %i.du = load i8, ptr %.591.ptr.6, align 1, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.7163, i64 7
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !18
  %i.dw = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.7 = getelementptr i8, ptr %i.dw, i64 7
  %.591.add.7 = add i64 %.591.idx162, 8           ; 2 uses
  %i.dx = load i8, ptr %.591.ptr.7, align 1, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.7163, i64 8 ; 2 uses
  store i8 %i.dx, ptr %i.dv, align 1, !tbaa !18
  %exitcond.not.7 = icmp eq i64 %.591.add.7, 23
  br i1 %exitcond.not.7, label %._crit_edge165, label %.lr.ph164, !llvm.loop !51

._crit_edge165:                                   ; preds = %.lr.ph164.prol.loopexit, %.lr.ph164, %middle.block, %vec.epilog.middle.block, %.preheader136
  %.7.lcssa = phi ptr [ %.6.lcssa, %.preheader136 ], [ %i.cr, %vec.epilog.middle.block ], [ %i.ck, %middle.block ], [ %.lcssa.unr, %.lr.ph164.prol.loopexit ], [ %i.dy, %.lr.ph164 ] ; 3 uses
  %i.dz = and i32 %spec.select124135, 256
  %.not123 = icmp ne i32 %i.dz, 0
  %i.ea = icmp ugt i32 %.3, %i.aw
  %or.cond171 = and i1 %.not123, %i.ea
  br i1 %or.cond171, label %.lr.ph169.preheader, label %.loopexit

.lr.ph169.preheader:                              ; preds = %._crit_edge165
  %i.eb = xor i32 %i.aw, -1
  %i.ec = add i32 %.3, %i.eb
  %i.ed = zext i32 %i.ec to i64
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.7.lcssa, i8 32, i64 %i.ee, i1 false), !tbaa !18
  %scevgep182 = getelementptr i8, ptr %.7.lcssa, i64 %i.ee
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph169.preheader, %._crit_edge165
  %.9 = phi ptr [ %.7.lcssa, %._crit_edge165 ], [ %scevgep182, %.lr.ph169.preheader ]
  store ptr %.9, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putfnum_int(ptr noundef returned %0, i32 noundef %1, double noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @lj_vm_num2i64(double noundef %2) #14 ; 3 uses
  %i.b = add i64 %i.a, 2147483648
  %i.c = icmp ult i64 %i.b, 4294967296
  %i.d = icmp eq i32 %1, 3
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nsw i64 %i.a to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp ult i32 %i.l, 11
  br i1 %i.m, label %bb.c, label %lj_strfmt_putint.exit, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef 11) #13
  br label %lj_strfmt_putint.exit

lj_strfmt_putint.exit:                            ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.h, %bb.b ]
  %i.o = tail call ptr @lj_strfmt_wint(ptr noundef %.0.i.i, i32 noundef %i.e)
  store ptr %i.o, ptr %0, align 8, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = tail call ptr @lj_strfmt_putfxint(ptr noundef %0, i32 noundef %1, i64 noundef %i.a) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %lj_strfmt_putint.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare hidden i64 @lj_vm_num2i64(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putfnum_uint(ptr noundef returned %0, i32 noundef %1, double noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @lj_vm_num2u64(double noundef %2) #14
  %i.b = tail call ptr @lj_strfmt_putfxint(ptr noundef %0, i32 noundef %1, i64 noundef %i.a) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare hidden i64 @lj_vm_num2u64(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden i32 @lj_strfmt_putarg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call ptr @lj_lib_checkstr(ptr noundef %0, i32 noundef %2) #13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !39
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 3 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %lj_strfmt_putfnum_int.exit

lj_strfmt_putfnum_int.exit:                       ; preds = %lj_strfmt_putfnum_int.exit.backedge, %bb.a
  %.sroa.12.0 = phi i32 [ undef, %bb.a ], [ %.sroa.12.0.be, %lj_strfmt_putfnum_int.exit.backedge ] ; 14 uses
  %.sroa.0.0 = phi ptr [ %i.k, %bb.a ], [ %.sroa.0.0.be, %lj_strfmt_putfnum_int.exit.backedge ] ; 11 uses
  %.0102 = phi i32 [ %3, %bb.a ], [ %.0102.be, %lj_strfmt_putfnum_int.exit.backedge ] ; 15 uses
  %.0 = phi i32 [ %2, %bb.a ], [ %.0.be, %lj_strfmt_putfnum_int.exit.backedge ] ; 5 uses
  %i.s = icmp ult ptr %.sroa.0.0, %i.o
  br i1 %i.s, label %.lr.ph.preheader.i, label %.thread88.i

.lr.ph.preheader.i:                               ; preds = %lj_strfmt_putfnum_int.exit
  %i.t = ptrtoaddr ptr %.sroa.0.0 to i64
  %i.u = sub i64 %i.p, %i.t
  %scevgep.i = getelementptr i8, ptr %.sroa.0.0, i64 %i.u ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %.07192.i = phi ptr [ %i.x, %bb.m ], [ %.sroa.0.0, %.lr.ph.preheader.i ] ; 6 uses
  %i.v = load i8, ptr %.07192.i, align 1, !tbaa !18
  %i.w = icmp eq i8 %i.v, 37
  %i.x = getelementptr inbounds nuw i8, ptr %.07192.i, i64 1 ; 6 uses
  br i1 %i.w, label %bb.b, label %bb.m

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18    ; 4 uses
  %i.z = icmp eq i8 %i.y, 37
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.07192.i, i64 2
  br label %.thread88.i

bb.d:                                             ; preds = %bb.b
  %.not.not.i = icmp eq ptr %.07192.i, %.sroa.0.0
  br i1 %.not.not.i, label %.preheader.i, label %.thread88.i

.preheader.i:                                     ; preds = %bb.d
  %i.ab = add i8 %i.y, -32
  %i.ac = icmp ult i8 %i.ab, 17
  br i1 %i.ac, label %.lr.ph95.i, label %._crit_edge.i

.lr.ph95.i:                                       ; preds = %.preheader.i, %switch.lookup
  %.06994.i = phi i32 [ %i.ag, %switch.lookup ], [ 0, %.preheader.i ] ; 3 uses
  %.17293.i = phi ptr [ %i.ah, %switch.lookup ], [ %i.x, %.preheader.i ] ; 3 uses
  %i.ad = phi i8 [ %.pr.i, %switch.lookup ], [ %i.y, %.preheader.i ] ; 3 uses
  %switch.tableidx = add i8 %i.ad, -32            ; 3 uses
  %i.ae = icmp ult i8 %switch.tableidx, 17
  br i1 %i.ae, label %switch.hole_check, label %._crit_edge.i

switch.hole_check:                                ; preds = %.lr.ph95.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 75785, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %._crit_edge.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.af = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.lj_strfmt_putarg, i64 %i.af
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  %i.ag = or i32 %.06994.i, %switch.ext           ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.17293.i, i64 1 ; 3 uses
  %.pr.i = load i8, ptr %i.ah, align 1, !tbaa !18 ; 3 uses
  %i.ai = add i8 %.pr.i, -32
  %i.aj = icmp ult i8 %i.ai, 17
  br i1 %i.aj, label %.lr.ph95.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %switch.lookup, %.lr.ph95.i, %switch.hole_check, %.preheader.i
  %.lcssa.i = phi i8 [ %i.y, %.preheader.i ], [ %i.ad, %switch.hole_check ], [ %.pr.i, %switch.lookup ], [ %i.ad, %.lr.ph95.i ] ; 2 uses
  %.172.lcssa.i = phi ptr [ %i.x, %.preheader.i ], [ %.17293.i, %switch.hole_check ], [ %i.ah, %switch.lookup ], [ %.17293.i, %.lr.ph95.i ] ; 3 uses
  %.069.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.06994.i, %switch.hole_check ], [ %i.ag, %switch.lookup ], [ %.06994.i, %.lr.ph95.i ] ; 2 uses
  %i.ak = zext i8 %.lcssa.i to i32
  %i.al = add nsw i32 %i.ak, -48                  ; 3 uses
  %i.am = icmp ult i32 %i.al, 10
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %.172.lcssa.i, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 10                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.172.lcssa.i, i64 2
  %i.at = mul nuw nsw i32 %i.al, 10
  %i.au = add nuw nsw i32 %i.aq, %i.at
  %.273.i = select i1 %i.ar, ptr %i.as, ptr %i.an ; 2 uses
  %.067.i = select i1 %i.ar, i32 %i.au, i32 %i.al
  %i.av = shl nuw nsw i32 %.067.i, 16
  %i.aw = or i32 %i.av, %.069.lcssa.i
  %.pre.i = load i8, ptr %.273.i, align 1, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.ax = phi i8 [ %.pre.i, %bb.e ], [ %.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.374.i = phi ptr [ %.273.i, %bb.e ], [ %.172.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.2.i = phi i32 [ %i.aw, %bb.e ], [ %.069.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 46
  br i1 %i.ay, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.374.i, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18  ; 2 uses
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 3 uses
  %i.bd = icmp ult i32 %i.bc, 10
  br i1 %i.bd, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.374.i, i64 2 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !18  ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 10
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.374.i, i64 3 ; 2 uses
  %i.bk = mul nuw nsw i32 %i.bc, 10
  %i.bl = add nuw nsw i32 %i.bh, %i.bk
  %.pre105.pre.i = load i8, ptr %i.bj, align 1, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.pre105.i = phi i8 [ %.pre105.pre.i, %bb.i ], [ %i.bf, %bb.h ], [ %i.ba, %bb.g ]
  %.4.i = phi ptr [ %i.bj, %bb.i ], [ %i.be, %bb.h ], [ %i.az, %bb.g ]
  %.0.i = phi i32 [ %i.bl, %bb.i ], [ %i.bc, %bb.h ], [ 0, %bb.g ]
  %i.bm = shl nuw nsw i32 %.0.i, 24
  %i.bn = add nuw nsw i32 %i.bm, 16777216
  %i.bo = or i32 %i.bn, %.2.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.bp = phi i8 [ %.pre105.i, %bb.j ], [ %i.ax, %bb.f ] ; 3 uses
  %.5.i = phi ptr [ %.4.i, %bb.j ], [ %.374.i, %bb.f ] ; 2 uses
  %.3.i = phi i32 [ %i.bo, %bb.j ], [ %.2.i, %bb.f ] ; 6 uses
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nsw i32 %i.bq, -65                  ; 2 uses
  %i.bs = icmp ult i32 %i.br, 56
  br i1 %i.bs, label %bb.l, label %lj_strfmt_parse.exit.thread152, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bt = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bu = shl nuw nsw i64 1, %i.bt
  %i.bv = and i64 %i.bu, 29905079884578702
  %.not85.not.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not85.not.not.i, label %lj_strfmt_parse.exit, label %lj_strfmt_parse.exit.thread152

lj_strfmt_parse.exit.thread152:                   ; preds = %bb.k, %bb.l
  %i.bw = icmp ugt i8 %i.bp, 31
  %spec.select.idx.i = zext i1 %i.bw to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.5.i, i64 %spec.select.idx.i
  %i.bx = ptrtoint ptr %spec.select.i to i64
  %i.by = ptrtoint ptr %.sroa.0.0 to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32
  br label %.loopexit

bb.m:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq ptr %i.x, %i.o
  br i1 %exitcond.not.i, label %.thread88.i, label %.lr.ph.i, !llvm.loop !1

.thread88.i:                                      ; preds = %bb.m, %bb.d, %bb.c, %lj_strfmt_putfnum_int.exit
  %storemerge.i = phi ptr [ %i.aa, %bb.c ], [ %.07192.i, %bb.d ], [ %.sroa.0.0, %lj_strfmt_putfnum_int.exit ], [ %scevgep.i, %bb.m ]
  %.9.i = phi ptr [ %i.x, %bb.c ], [ %.07192.i, %bb.d ], [ %.sroa.0.0, %lj_strfmt_putfnum_int.exit ], [ %scevgep.i, %bb.m ]
  %i.cb = ptrtoint ptr %.9.i to i64
  %i.cc = ptrtoint ptr %.sroa.0.0 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %.not.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i, label %lj_strfmt_parse.exit.thread, label %lj_strfmt_parse.exit.thread144

lj_strfmt_parse.exit:                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr @strfmt_map, i64 %i.bt
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !18
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 13 uses
  %.not86.i = icmp ult i8 %i.bp, 97
  %i.cj = select i1 %.not86.i, i32 8192, i32 0
  %i.ck = or disjoint i32 %i.cj, %i.ch
  %i.cl = or i32 %i.ck, %.3.i                     ; 9 uses
  switch i32 %i.cl, label %bb.n [
    i32 0, label %lj_strfmt_parse.exit.thread
    i32 2, label %lj_strfmt_parse.exit.thread144
    i32 1, label %.loopexit
  ]

lj_strfmt_parse.exit.thread144:                   ; preds = %.thread88.i, %lj_strfmt_parse.exit
  %.sroa.0.1151 = phi ptr [ %i.ci, %lj_strfmt_parse.exit ], [ %storemerge.i, %.thread88.i ]
  %.sroa.12.1149 = phi i32 [ %.sroa.12.0, %lj_strfmt_parse.exit ], [ %i.ce, %.thread88.i ] ; 2 uses
  %i.cm = tail call ptr @lj_buf_putmem(ptr noundef %1, ptr noundef %.sroa.0.0, i32 noundef %.sroa.12.1149) #13 ; 0 uses
  br label %lj_strfmt_putfnum_int.exit.backedge

.loopexit:                                        ; preds = %lj_strfmt_parse.exit, %lj_strfmt_parse.exit.thread152
  %.sroa.12.1156 = phi i32 [ %i.ca, %lj_strfmt_parse.exit.thread152 ], [ %.sroa.12.0, %lj_strfmt_parse.exit ]
  %i.cn = zext i32 %.sroa.12.1156 to i64
  %i.co = tail call ptr @lj_str_new(ptr noundef %0, ptr noundef %.sroa.0.0, i64 noundef %i.cn) #13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  tail call void (ptr, i32, ...) @lj_err_callerv(ptr noundef %0, i32 noundef 1928, ptr noundef nonnull %i.cp) #15
  unreachable

bb.n:                                             ; preds = %lj_strfmt_parse.exit
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.cr = add nsw i32 %.0, 1                      ; 17 uses
  %i.cs = sext i32 %.0 to i64                     ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cs ; 11 uses
  %.not112 = icmp slt i32 %.0, %i.i
  br i1 %.not112, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lj_err_arg(ptr noundef nonnull %0, i32 noundef %i.cr, i32 noundef 551) #15
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cu = and i32 %i.cl, 15
  switch i32 %i.cu, label %lj_strfmt_putfnum_int.exit.backedge [
    i32 3, label %bb.q
    i32 4, label %bb.w
    i32 5, label %bb.z
    i32 6, label %bb.aa
    i32 7, label %bb.ar
    i32 8, label %bb.aw
  ]

bb.q:                                             ; preds = %bb.p
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !18 ; 2 uses
  %.mask114 = and i64 %i.cv, -140737488355328
  %i.cw = icmp eq i64 %.mask114, -1548112371908608
  br i1 %i.cw, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.cx = and i64 %i.cv, 140737488355327
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !60
  %.off = add i16 %i.da, -11
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !61
  %i.dd = tail call ptr @lj_strfmt_putfxint(ptr noundef %1, i32 noundef %i.cl, i64 noundef %i.dc) ; 0 uses
  br label %lj_strfmt_putfnum_int.exit.backedge

.thread:                                          ; preds = %bb.r, %bb.q
  %i.de = tail call double @lj_lib_checknum(ptr noundef nonnull %0, i32 noundef %i.cr) #13
  %i.df = tail call i64 @lj_vm_num2i64(double noundef %i.de) #14 ; 3 uses
  %i.dg = add i64 %i.df, 2147483648
  %i.dh = icmp ult i64 %i.dg, 4294967296
  %i.di = icmp eq i32 %i.cl, 3
  %or.cond.i = and i1 %i.di, %i.dh
  br i1 %or.cond.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.thread
  %i.dj = trunc nsw i64 %i.df to i32
  %i.dk = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.dl = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = trunc i64 %i.do to i32
  %i.dq = icmp ult i32 %i.dp, 11
  br i1 %i.dq, label %bb.u, label %lj_strfmt_putint.exit.i, !prof !37

bb.u:                                             ; preds = %bb.t
  %i.dr = tail call ptr @lj_buf_more2(ptr noundef nonnull %1, i32 noundef 11) #13
  br label %lj_strfmt_putint.exit.i

lj_strfmt_putint.exit.i:                          ; preds = %bb.u, %bb.t
  %.0.i.i.i = phi ptr [ %i.dr, %bb.u ], [ %i.dl, %bb.t ]
  %i.ds = tail call ptr @lj_strfmt_wint(ptr noundef %.0.i.i.i, i32 noundef %i.dj)
  store ptr %i.ds, ptr %1, align 8, !tbaa !35
  br label %lj_strfmt_putfnum_int.exit.backedge

bb.v:                                             ; preds = %.thread
  %i.dt = tail call ptr @lj_strfmt_putfxint(ptr noundef %1, i32 noundef %i.cl, i64 noundef %i.df) ; 0 uses
  br label %lj_strfmt_putfnum_int.exit.backedge

bb.w:                                             ; preds = %bb.p
  %i.du = load i64, ptr %i.ct, align 8, !tbaa !18 ; 2 uses
  %.mask = and i64 %i.du, -140737488355328
  %i.dv = icmp eq i64 %.mask, -1548112371908608
  br i1 %i.dv, label %bb.x, label %.thread158

bb.x:                                             ; preds = %bb.w
  %i.dw = and i64 %i.du, 140737488355327
  %i.dx = inttoptr i64 %i.dw to ptr               ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 10
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !60
  %.off117 = add i16 %i.dz, -11
  %switch118 = icmp ult i16 %.off117, 2
  br i1 %switch118, label %bb.y, label %.thread158

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !61
  %i.ec = tail call ptr @lj_strfmt_putfxint(ptr noundef %1, i32 noundef %i.cl, i64 noundef %i.eb) ; 0 uses
  br label %lj_strfmt_putfnum_int.exit.backedge

lj_strfmt_putfnum_int.exit.backedge:              ; preds = %bb.y, %bb.v, %lj_strfmt_putint.exit.i, %bb.s, %.thread158, %bb.z, %lj_strfmt_putfchar.exit, %lj_strfmt_putptr.exit, %bb.p, %bb.al, %strfmt_putfstrlen.exit, %bb.ad, %lj_strfmt_parse.exit.thread144
  %.sroa.12.0.be = phi i32 [ %.sroa.12.1149, %lj_strfmt_parse.exit.thread144 ], [ %.sroa.12.0, %bb.p ], [ %.sroa.12.0, %bb.al ], [ %.sroa.12.0, %bb.s ], [ %.sroa.12.0, %.thread158 ], [ %.sroa.12.0, %bb.y ], [ %.sroa.12.0, %bb.z ], [ %.sroa.12.0, %lj_strfmt_putptr.exit ], [ %.sroa.12.0, %lj_strfmt_putfchar.exit ], [ %.sroa.12.0, %bb.ad ], [ %.sroa.12.0, %strfmt_putfstrlen.exit ], [ %.sroa.12.0, %lj_strfmt_putint.exit.i ], [ %.sroa.12.0, %bb.v ]
  %.sroa.0.0.be = phi ptr [ %.sroa.0.1151, %lj_strfmt_parse.exit.thread144 ], [ %i.ci, %bb.p ], [ %i.ci, %bb.al ], [ %i.ci, %bb.s ], [ %i.ci, %.thread158 ], [ %i.ci, %bb.y ], [ %i.ci, %bb.z ], [ %i.ci, %lj_strfmt_putptr.exit ], [ %i.ci, %lj_strfmt_putfchar.exit ], [ %i.ci, %bb.ad ], [ %i.ci, %strfmt_putfstrlen.exit ], [ %i.ci, %lj_strfmt_putint.exit.i ], [ %i.ci, %bb.v ]
  %.0102.be = phi i32 [ %.0102, %lj_strfmt_parse.exit.thread144 ], [ %.0102, %bb.p ], [ %.0102, %bb.al ], [ %.0102, %bb.s ], [ %.0102, %.thread158 ], [ %.0102, %bb.y ], [ %.0102, %bb.z ], [ %.0102, %lj_strfmt_putptr.exit ], [ %.0102, %lj_strfmt_putfchar.exit ], [ 1, %bb.ad ], [ %.0102, %strfmt_putfstrlen.exit ], [ %.0102, %lj_strfmt_putint.exit.i ], [ %.0102, %bb.v ]
  %.0.be = phi i32 [ %.0, %lj_strfmt_parse.exit.thread144 ], [ %i.cr, %bb.p ], [ %i.cr, %bb.al ], [ %i.cr, %bb.s ], [ %i.cr, %.thread158 ], [ %i.cr, %bb.y ], [ %i.cr, %bb.z ], [ %i.cr, %lj_strfmt_putptr.exit ], [ %i.cr, %lj_strfmt_putfchar.exit ], [ %i.cr, %bb.ad ], [ %i.cr, %strfmt_putfstrlen.exit ], [ %i.cr, %lj_strfmt_putint.exit.i ], [ %i.cr, %bb.v ]
  br label %lj_strfmt_putfnum_int.exit, !llvm.loop !56

.thread158:                                       ; preds = %bb.x, %bb.w
  %i.ed = tail call double @lj_lib_checknum(ptr noundef nonnull %0, i32 noundef %i.cr) #13
  %i.ee = tail call i64 @lj_vm_num2u64(double noundef %i.ed) #14
  %i.ef = tail call ptr @lj_strfmt_putfxint(ptr noundef %1, i32 noundef %i.cl, i64 noundef %i.ee) ; 0 uses
  br label %lj_strfmt_putfnum_int.exit.backedge

bb.z:                                             ; preds = %bb.p
  %i.eg = tail call double @lj_lib_checknum(ptr noundef nonnull %0, i32 noundef %i.cr) #13
  %i.eh = tail call ptr @lj_strfmt_putfnum(ptr noundef %1, i32 noundef %i.cl, double noundef %i.eg) #13 ; 0 uses
  br label %lj_strfmt_putfnum_int.exit.backedge

bb.aa:                                            ; preds = %bb.p
  %i.ei = load i64, ptr %i.ct, align 8, !tbaa !18 ; 5 uses
  %i.ej = ashr i64 %i.ei, 47
  switch i64 %i.ej, label %.critedge116 [
    i64 -5, label %.critedge
    i64 -13, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ek = and i64 %i.ei, 140737488355327
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 10
  %i.en = load i8, ptr %i.em, align 2, !tbaa !18
  %.not = icmp eq i8 %i.en, 3
  br i1 %.not, label %.critedge, label %.critedge116, !prof !20

.critedge116:                                     ; preds = %bb.aa, %bb.ab
  %i.eo = icmp sgt i32 %.0102, -1
  br i1 %i.eo, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %.critedge116
  %i.ep = tail call ptr @lj_meta_lookup(ptr noundef nonnull %0, ptr noundef nonnull %i.ct, i32 noundef 18) #13 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !18
  %i.er = icmp eq i64 %i.eq, -1
  br i1 %i.er, label %..critedge_crit_edge, label %bb.ad

..critedge_crit_edge:                             ; preds = %bb.ac
  %.pre = load i64, ptr %i.ct, align 8, !tbaa !18
  br label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %i.et, ptr %i.a, align 8, !tbaa !40
  %i.eu = load i64, ptr %i.ep, align 8, !tbaa !18
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !18
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %i.ew, ptr %i.a, align 8, !tbaa !40
  %i.ex = load i64, ptr %i.ct, align 8, !tbaa !18
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !18
  tail call void @lua_call(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1) #13
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.cs ; 2 uses
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -8 ; 2 uses
  store ptr %i.fb, ptr %i.a, align 8, !tbaa !40
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !18 ; 2 uses
  store i64 %i.fc, ptr %i.ez, align 8, !tbaa !18
  %i.fd = icmp samesign ult i32 %.0102, 2
  br i1 %i.fd, label %lj_strfmt_putfnum_int.exit.backedge, label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.aa, %bb.ad, %.critedge116, %bb.ab
  %i.fe = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.fc, %bb.ad ], [ %i.ei, %.critedge116 ], [ %i.ei, %bb.ab ], [ %i.ei, %bb.aa ] ; 3 uses
  %.0101 = phi ptr [ %i.ct, %..critedge_crit_edge ], [ %i.ez, %bb.ad ], [ %i.ct, %.critedge116 ], [ %i.ct, %bb.ab ], [ %i.ct, %bb.aa ]
  %i.ff = ashr i64 %i.fe, 47
  switch i64 %i.ff, label %bb.aj [
    i64 -5, label %bb.ae
    i64 -13, label %bb.af
  ], !prof !62

bb.ae:                                            ; preds = %.critedge
  %i.fg = and i64 %i.fe, 140737488355327
  %i.fh = inttoptr i64 %i.fg to ptr               ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 20
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  br label %bb.ak

bb.af:                                            ; preds = %.critedge
  %i.fl = and i64 %i.fe, 140737488355327
  %i.fm = inttoptr i64 %i.fl to ptr               ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 10
  %i.fo = load i8, ptr %i.fn, align 2, !tbaa !18
  %i.fp = icmp eq i8 %i.fo, 3
  br i1 %i.fp, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 48 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %1
  br i1 %i.fr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fs = add nsw i32 %.0, 2
  tail call void @lj_err_arg(ptr noundef nonnull %0, i32 noundef %i.fs, i32 noundef 3911) #15
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ft = load ptr, ptr %i.fq, align 8, !tbaa !27
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 88
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !28 ; 2 uses
  %i.fw = ptrtoint ptr %i.ft to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = trunc i64 %i.fy to i32
  br label %bb.ak

bb.aj:                                            ; preds = %.critedge, %bb.af
  %i.ga = tail call ptr @lj_strfmt_obj(ptr noundef nonnull %0, ptr noundef nonnull %.0101) ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !39
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ae
  %.098 = phi i32 [ %i.fj, %bb.ae ], [ %i.fz, %bb.ai ], [ %i.gc, %bb.aj ] ; 2 uses
  %.097 = phi ptr [ %i.fk, %bb.ae ], [ %i.fv, %bb.ai ], [ %i.gd, %bb.aj ] ; 3 uses
  %i.ge = and i32 %i.cl, 16
  %.not113 = icmp eq i32 %i.ge, 0
  br i1 %.not113, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gf = tail call fastcc ptr @strfmt_putquotedlen(ptr noundef %1, ptr noundef %.097, i32 noundef %.098) ; 0 uses
  br label %lj_strfmt_putfnum_int.exit.backedge

bb.am:                                            ; preds = %bb.ak
  %i.gg = lshr i32 %.3.i, 16
  %i.gh = and i32 %i.gg, 255                      ; 3 uses
  %i.gi = lshr i32 %.3.i, 24
  %i.gj = add nsw i32 %i.gi, -1
  %spec.select.i119 = tail call i32 @llvm.umin.i32(i32 %.098, i32 %i.gj) ; 5 uses
  %i.gk = tail call i32 @llvm.umax.i32(i32 %i.gh, i32 %spec.select.i119) ; 2 uses
  %i.gl = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.gm = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = icmp ugt i32 %i.gk, %i.gq
  br i1 %i.gr, label %bb.an, label %lj_buf_more.exit.i, !prof !37

bb.an:                                            ; preds = %bb.am
  %i.gs = tail call ptr @lj_buf_more2(ptr noundef nonnull %1, i32 noundef %i.gk) #13
  br label %lj_buf_more.exit.i

lj_buf_more.exit.i:                               ; preds = %bb.an, %bb.am
  %.0.i.i = phi ptr [ %i.gs, %bb.an ], [ %i.gm, %bb.am ] ; 3 uses
  %i.gt = and i32 %.3.i, 256
  %.not.i120 = icmp eq i32 %i.gt, 0               ; 2 uses
  br i1 %.not.i120, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %lj_buf_more.exit.i
  %i.gu = zext i32 %spec.select.i119 to i64       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr readonly align 1 %.097, i64 %i.gu, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.gu
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %lj_buf_more.exit.i
  %.0.i121 = phi ptr [ %i.gv, %bb.ao ], [ %.0.i.i, %lj_buf_more.exit.i ] ; 3 uses
  %i.gw = icmp ugt i32 %i.gh, %spec.select.i119
  br i1 %i.gw, label %.lr.ph.preheader.i124, label %._crit_edge.i122

.lr.ph.preheader.i124:                            ; preds = %bb.ap
  %i.gx = xor i32 %spec.select.i119, -1
  %i.gy = add nsw i32 %i.gh, %i.gx
  %i.gz = zext i32 %i.gy to i64
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i121, i8 32, i64 %i.ha, i1 false), !tbaa !18
  %scevgep.i125 = getelementptr i8, ptr %.0.i121, i64 %i.ha
  br label %._crit_edge.i122

._crit_edge.i122:                                 ; preds = %.lr.ph.preheader.i124, %bb.ap
  %.1.lcssa.i = phi ptr [ %.0.i121, %bb.ap ], [ %scevgep.i125, %.lr.ph.preheader.i124 ] ; 3 uses
  br i1 %.not.i120, label %bb.aq, label %strfmt_putfstrlen.exit

bb.aq:                                            ; preds = %._crit_edge.i122
  %i.hb = zext i32 %spec.select.i119 to i64       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1.lcssa.i, ptr readonly align 1 %.097, i64 %i.hb, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.hb
  br label %strfmt_putfstrlen.exit

strfmt_putfstrlen.exit:                           ; preds = %._crit_edge.i122, %bb.aq
  %.2.i123 = phi ptr [ %.1.lcssa.i, %._crit_edge.i122 ], [ %i.hc, %bb.aq ]
  store ptr %.2.i123, ptr %1, align 8, !tbaa !35
  br label %lj_strfmt_putfnum_int.exit.backedge

bb.ar:                                            ; preds = %bb.p
  %i.hd = tail call i32 @lj_lib_checkint(ptr noundef nonnull %0, i32 noundef %i.cr) #13 ; 2 uses
  %i.he = lshr i32 %.3.i, 16
  %i.hf = and i32 %i.he, 255                      ; 4 uses
  %i.hg = tail call i32 @llvm.umax.i32(i32 %i.hf, i32 1) ; 2 uses
  %i.hh = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.hi = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = icmp ugt i32 %i.hg, %i.hm
  br i1 %i.hn, label %bb.as, label %lj_buf_more.exit.i126, !prof !37

bb.as:                                            ; preds = %bb.ar
  %i.ho = tail call ptr @lj_buf_more2(ptr noundef nonnull %1, i32 noundef %i.hg) #13
  br label %lj_buf_more.exit.i126

lj_buf_more.exit.i126:                            ; preds = %bb.as, %bb.ar
  %.0.i.i127 = phi ptr [ %i.ho, %bb.as ], [ %i.hi, %bb.ar ] ; 3 uses
  %i.hp = and i32 %.3.i, 256
  %.not.i128 = icmp eq i32 %i.hp, 0               ; 2 uses
  br i1 %.not.i128, label %bb.au, label %bb.at

bb.at:                                            ; preds = %lj_buf_more.exit.i126
  %i.hq = trunc i32 %i.hd to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i.i127, i64 1
  store i8 %i.hq, ptr %.0.i.i127, align 1, !tbaa !18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %lj_buf_more.exit.i126
  %.0.i129 = phi ptr [ %i.hr, %bb.at ], [ %.0.i.i127, %lj_buf_more.exit.i126 ] ; 3 uses
  %i.hs = icmp samesign ugt i32 %i.hf, 1
  br i1 %i.hs, label %.lr.ph.preheader.i133, label %._crit_edge.i130

.lr.ph.preheader.i133:                            ; preds = %bb.au
  %i.ht = add nsw i32 %i.hf, -1
  %i.hu = zext nneg i32 %i.ht to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i129, i8 32, i64 %i.hu, i1 false), !tbaa !18
  %i.hv = zext nneg i32 %i.hf to i64
  %i.hw = getelementptr i8, ptr %.0.i129, i64 %i.hv
  %scevgep.i134 = getelementptr i8, ptr %i.hw, i64 -1
  br label %._crit_edge.i130

._crit_edge.i130:                                 ; preds = %.lr.ph.preheader.i133, %bb.au
  %.1.lcssa.i131 = phi ptr [ %.0.i129, %bb.au ], [ %scevgep.i134, %.lr.ph.preheader.i133 ] ; 3 uses
  br i1 %.not.i128, label %bb.av, label %lj_strfmt_putfchar.exit

bb.av:                                            ; preds = %._crit_edge.i130
  %i.hx = trunc i32 %i.hd to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %.1.lcssa.i131, i64 1
  store i8 %i.hx, ptr %.1.lcssa.i131, align 1, !tbaa !18
  br label %lj_strfmt_putfchar.exit

lj_strfmt_putfchar.exit:                          ; preds = %._crit_edge.i130, %bb.av
  %.2.i132 = phi ptr [ %.1.lcssa.i131, %._crit_edge.i130 ], [ %i.hy, %bb.av ]
  store ptr %.2.i132, ptr %1, align 8, !tbaa !35
  br label %lj_strfmt_putfnum_int.exit.backedge

bb.aw:                                            ; preds = %bb.p
  %i.hz = load i64, ptr %i.q, align 8, !tbaa !31
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = tail call ptr @lj_obj_ptr(ptr noundef %i.ia, ptr noundef %i.ct) #13 ; 2 uses
  %i.ic = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.id = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = icmp ult i32 %i.ih, 18
  br i1 %i.ii, label %bb.ax, label %lj_buf_more.exit.i135, !prof !37

bb.ax:                                            ; preds = %bb.aw
  %i.ij = tail call ptr @lj_buf_more2(ptr noundef nonnull %1, i32 noundef 18) #13
  br label %lj_buf_more.exit.i135

lj_buf_more.exit.i135:                            ; preds = %bb.ax, %bb.aw
  %.0.i.i136 = phi ptr [ %i.ij, %bb.ax ], [ %i.id, %bb.aw ] ; 6 uses
  %i.ik = ptrtoint ptr %i.ib to i64               ; 2 uses
  %i.il = icmp eq ptr %i.ib, null
  br i1 %i.il, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %lj_buf_more.exit.i135
  %i.im = getelementptr inbounds nuw i8, ptr %.0.i.i136, i64 4
end_hunk_0
begin_hunk_1_@lj_strfmt_obj:bb.a
  %.02025.i = phi i64 [ %i.ah, %.lr.ph.preheader.i ], [ %i.ax, %.lr.ph.i ] ; 2 uses
  %i.at = and i64 %.02025.i, 15
  %i.au = getelementptr inbounds nuw i8, ptr @.str, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !18
  %i.ax = ashr i64 %.02025.i, 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ay = and i64 %indvars.iv.next.i, 4294967294
  %.not28.i = icmp eq i64 %i.ay, 0
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.az = zext nneg i32 %i.aq to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.az
  br label %lj_strfmt_wptr.exit

lj_strfmt_wptr.exit:                              ; preds = %._crit_edge.i, %bb.n, %bb.l
  %.0 = phi ptr [ %i.ac, %bb.l ], [ %i.aj, %bb.n ], [ %i.ba, %._crit_edge.i ]
  %i.bb = ptrtoint ptr %.0 to i64
  %i.bc = ptrtoint ptr %i.a to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = call ptr @lj_str_new(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.bd) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.q

bb.q:                                             ; preds = %lj_strfmt_wptr.exit, %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.029 = phi ptr [ %i.f, %bb.b ], [ %i.h, %bb.d ], [ %i.j, %bb.f ], [ %i.k, %bb.h ], [ %i.l, %bb.i ], [ %i.be, %lj_strfmt_wptr.exit ]
  ret ptr %.029
}

declare hidden i32 @lj_lib_checkint(ptr noundef, i32 noundef) local_unnamed_addr #6

declare hidden ptr @lj_obj_ptr(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden ptr @lj_strfmt_int(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call ptr @lj_strfmt_wint(ptr noundef nonnull %i.a, i32 noundef %1)
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = and i64 %i.e, 4294967295
  %i.g = call ptr @lj_str_new(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_strfmt_number(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @lj_strfmt_num(ptr noundef %0, ptr noundef %1) #13
  ret ptr %i.a
}

declare hidden ptr @lj_strfmt_num(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden ptr @lj_strfmt_char(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = trunc i32 %1 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !18
  %i.c = call ptr @lj_str_new(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden nonnull ptr @lj_strfmt_pushvf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.FormatState, align 8        ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 16 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store i64 %i.e, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  store ptr %1, ptr %3, align 8, !tbaa !15
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !16
  %i.m = call i32 @lj_strfmt_parse(ptr noundef nonnull %3) ; 2 uses
  %.not41 = icmp eq i32 %i.m, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ai
  %i.t = phi i32 [ %i.m, %.lr.ph ], [ %i.ek, %bb.ai ] ; 3 uses
  %i.u = and i32 %i.t, 15
  switch i32 %i.u, label %bb.ag [
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.h
    i32 5, label %bb.l
    i32 6, label %bb.p
    i32 7, label %bb.t
    i32 8, label %bb.y
  ]

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.w = load i32, ptr %i.s, align 8, !tbaa !21
  %i.x = tail call ptr @lj_buf_putmem(ptr noundef nonnull %i.d, ptr noundef %i.v, i32 noundef %i.w) #13 ; 0 uses
  br label %bb.ai

bb.d:                                             ; preds = %bb.b
  %i.y = load i32, ptr %2, align 8                ; 3 uses
  %i.z = icmp ult i32 %i.y, 41
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.o, align 8
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %i.ad = add nuw nsw i32 %i.y, 8
  store i32 %i.ad, ptr %2, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !22
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call ptr @lj_strfmt_putfxint(ptr noundef nonnull %i.d, i32 noundef %i.t, i64 noundef %i.ai) ; 0 uses
  br label %bb.ai

bb.h:                                             ; preds = %bb.b
  %i.ak = load i32, ptr %2, align 8               ; 3 uses
  %i.al = icmp ult i32 %i.ak, 41
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.o, align 8
  %i.an = zext nneg i32 %i.ak to i64
  %i.ao = getelementptr i8, ptr %i.am, i64 %i.an
  %i.ap = add nuw nsw i32 %i.ak, 8
  store i32 %i.ap, ptr %2, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.n, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = phi ptr [ %i.ao, %bb.i ], [ %i.aq, %bb.j ]
  %i.at = load i32, ptr %i.as, align 4, !tbaa !22
  %i.au = zext i32 %i.at to i64
  %i.av = tail call ptr @lj_strfmt_putfxint(ptr noundef nonnull %i.d, i32 noundef %i.t, i64 noundef %i.au) ; 0 uses
  br label %bb.ai

bb.l:                                             ; preds = %bb.b
  %i.aw = load i32, ptr %i.q, align 4             ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 161
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.o, align 8
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr i8, ptr %i.ay, i64 %i.az
  %i.bb = add nuw nsw i32 %i.aw, 16
  store i32 %i.bb, ptr %i.q, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  store ptr %i.bd, ptr %i.n, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.be = phi ptr [ %i.ba, %bb.m ], [ %i.bc, %bb.n ]
  %i.bf = load double, ptr %i.be, align 8, !tbaa !65
  %i.bg = tail call ptr @lj_strfmt_putfnum(ptr noundef nonnull %i.d, i32 noundef 251658293, double noundef %i.bf) #13 ; 0 uses
  br label %bb.ai

bb.p:                                             ; preds = %bb.b
  %i.bh = load i32, ptr %2, align 8               ; 3 uses
  %i.bi = icmp ult i32 %i.bh, 41
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.o, align 8
  %i.bk = zext nneg i32 %i.bh to i64
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.bk
  %i.bm = add nuw nsw i32 %i.bh, 8
  store i32 %i.bm, ptr %2, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  store ptr %i.bo, ptr %i.n, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = phi ptr [ %i.bl, %bb.q ], [ %i.bn, %bb.r ]
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !41 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  %spec.store.select = select i1 %i.br, ptr @.str.7, ptr %i.bq ; 2 uses
  %i.bs = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #16
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = tail call ptr @lj_buf_putmem(ptr noundef nonnull %i.d, ptr noundef nonnull %spec.store.select, i32 noundef %i.bt) #13 ; 0 uses
  br label %bb.ai

bb.t:                                             ; preds = %bb.b
  %i.bv = load i32, ptr %2, align 8               ; 3 uses
  %i.bw = icmp ult i32 %i.bv, 41
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bx = load ptr, ptr %i.o, align 8
  %i.by = zext nneg i32 %i.bv to i64
  %i.bz = getelementptr i8, ptr %i.bx, i64 %i.by
  %i.ca = add nuw nsw i32 %i.bv, 8
  store i32 %i.ca, ptr %2, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cb = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  store ptr %i.cc, ptr %i.n, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cd = phi ptr [ %i.bz, %bb.u ], [ %i.cb, %bb.v ]
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !22
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !35  ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.x, label %lj_buf_putb.exit39, !prof !37

bb.x:                                             ; preds = %bb.w
  %i.cm = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.d, i32 noundef 1) #13
  br label %lj_buf_putb.exit39

lj_buf_putb.exit39:                               ; preds = %bb.w, %bb.x
  %.0.i.i38 = phi ptr [ %i.cm, %bb.x ], [ %i.cg, %bb.w ] ; 2 uses
  %i.cn = trunc i32 %i.ce to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i38, i64 1
  store i8 %i.cn, ptr %.0.i.i38, align 1, !tbaa !18
  store ptr %i.co, ptr %i.d, align 8, !tbaa !35
  br label %bb.ai

bb.y:                                             ; preds = %bb.b
  %i.cp = load i32, ptr %2, align 8               ; 3 uses
  %i.cq = icmp ult i32 %i.cp, 41
  br i1 %i.cq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cr = load ptr, ptr %i.o, align 8
  %i.cs = zext nneg i32 %i.cp to i64
  %i.ct = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.cu = add nuw nsw i32 %i.cp, 8
  store i32 %i.cu, ptr %2, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cv = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  store ptr %i.cw, ptr %i.n, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cx = phi ptr [ %i.ct, %bb.z ], [ %i.cv, %bb.aa ]
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !66 ; 2 uses
  %i.cz = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !35  ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = trunc i64 %i.dd to i32
  %i.df = icmp ult i32 %i.de, 18
  br i1 %i.df, label %bb.ac, label %lj_buf_more.exit.i, !prof !37

bb.ac:                                            ; preds = %bb.ab
  %i.dg = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.d, i32 noundef 18) #13
  br label %lj_buf_more.exit.i

lj_buf_more.exit.i:                               ; preds = %bb.ac, %bb.ab
  %.0.i.i40 = phi ptr [ %i.dg, %bb.ac ], [ %i.da, %bb.ab ] ; 6 uses
  %i.dh = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.di = icmp eq ptr %i.cy, null
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %lj_buf_more.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 4
  store <4 x i8> <i8 78, i8 85, i8 76, i8 76>, ptr %.0.i.i40, align 1, !tbaa !18
  br label %lj_strfmt_putptr.exit

bb.ae:                                            ; preds = %lj_buf_more.exit.i
  %i.dk = ashr i64 %i.dh, 32                      ; 2 uses
  %.not.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i, label %.lr.ph.preheader.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = trunc nsw i64 %i.dk to i32
  %i.dm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dl, i1 true)
  %i.dn = lshr i32 %i.dm, 2
  %i.do = and i32 %i.dn, 6
  %i.dp = sub nuw nsw i32 18, %i.do
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.af, %bb.ae
  %i.dq = phi i32 [ %i.dp, %bb.af ], [ 10, %bb.ae ] ; 2 uses
  store i8 48, ptr %.0.i.i40, align 1, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 1
  store i8 120, ptr %i.dr, align 1, !tbaa !18
  %.024.i.i = add nsw i32 %i.dq, -1
  %i.ds = zext nneg i32 %.024.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ds, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.02025.i.i = phi i64 [ %i.dh, %.lr.ph.preheader.i.i ], [ %i.dx, %.lr.ph.i.i ] ; 2 uses
  %i.dt = and i64 %.02025.i.i, 15
  %i.du = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 %indvars.iv.i.i
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !18
  %i.dx = ashr i64 %.02025.i.i, 4
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.dy = and i64 %indvars.iv.next.i.i, 4294967294
  %.not28.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dz = zext nneg i32 %i.dq to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 %i.dz
  br label %lj_strfmt_putptr.exit

lj_strfmt_putptr.exit:                            ; preds = %bb.ad, %._crit_edge.i.i
  %.021.i.i = phi ptr [ %i.dj, %bb.ad ], [ %i.ea, %._crit_edge.i.i ]
  store ptr %.021.i.i, ptr %i.d, align 8, !tbaa !35
  br label %bb.ai

bb.ag:                                            ; preds = %bb.b
  %i.eb = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !35  ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = and i64 %i.ef, 4294967295
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.ah, label %lj_buf_putb.exit, !prof !37

bb.ah:                                            ; preds = %bb.ag
  %i.ei = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.d, i32 noundef 1) #13
  br label %lj_buf_putb.exit

lj_buf_putb.exit:                                 ; preds = %bb.ag, %bb.ah
  %.0.i.i = phi ptr [ %i.ei, %bb.ah ], [ %i.ec, %bb.ag ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 63, ptr %.0.i.i, align 1, !tbaa !18
  store ptr %i.ej, ptr %i.d, align 8, !tbaa !35
  br label %bb.ai

bb.ai:                                            ; preds = %lj_buf_putb.exit, %lj_strfmt_putptr.exit, %lj_buf_putb.exit39, %bb.s, %bb.o, %bb.k, %bb.g, %bb.c
  %i.ek = call i32 @lj_strfmt_parse(ptr noundef nonnull %3) ; 2 uses
  %.not = icmp eq i32 %i.ek, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !63

._crit_edge.loopexit:                             ; preds = %bb.ai
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !34
  %.pre42 = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.el = phi ptr [ %.pre42, %._crit_edge.loopexit ], [ %i.h, %bb.a ]
  %i.em = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.a ] ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = tail call ptr @lj_str_new(ptr noundef %0, ptr noundef %i.em, i64 noundef %i.eq) #13 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !40
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = or i64 %i.eu, -703687441776640
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !18
  %i.ew = load ptr, ptr %i.es, align 8, !tbaa !40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  store ptr %i.ex, ptr %i.es, align 8, !tbaa !40
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !67
  %i.fa = inttoptr i64 %i.ez to ptr
  %.not37 = icmp ult ptr %i.ex, %i.fa
  br i1 %.not37, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  tail call void @lj_state_growstack1(ptr noundef nonnull %0) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %i.fb
}

declare hidden void @lj_state_growstack1(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden nonnull ptr @lj_strfmt_pushf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call ptr @lj_strfmt_pushvf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

declare hidden ptr @lj_buf_more2(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"FormatState", !13, i64 0, !13, i64 8, !13, i64 16, !9, i64 24}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !13, i64 8}
!17 = !{!14, !13, i64 16}
!18 = !{!8, !8, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!14, !9, i64 24}
!22 = !{!9, !9, i64 0}
!23 = !{!"long", !8, i64 0}
!24 = !{!"MRef", !23, i64 0}
!25 = !{!"GCRef", !23, i64 0}
!26 = !{!"SBufExt", !13, i64 0, !13, i64 8, !13, i64 16, !24, i64 24, !8, i64 32, !13, i64 40, !25, i64 48, !25, i64 56, !9, i64 64}
!27 = !{!26, !13, i64 0}
!28 = !{!26, !13, i64 40}
!29 = !{!"p1 _ZTS6TValue", !12, i64 0}
!30 = !{!"lua_State", !25, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !24, i64 16, !25, i64 24, !29, i64 32, !29, i64 40, !24, i64 48, !24, i64 56, !25, i64 64, !25, i64 72, !12, i64 80, !9, i64 88}
!31 = !{!30, !23, i64 16}
!32 = !{!"SBuf", !13, i64 0, !13, i64 8, !13, i64 16, !24, i64 24}
!33 = !{!32, !23, i64 24}
!34 = !{!32, !13, i64 16}
!35 = !{!32, !13, i64 0}
!36 = !{!32, !13, i64 8}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!"GCstr", !25, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !9, i64 12, !9, i64 16, !9, i64 20}
!39 = !{!38, !9, i64 20}
!40 = !{!30, !29, i64 40}
!41 = !{!13, !13, i64 0}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19, !52, !53}
!49 = distinct !{!49, !19, !52, !53}
!50 = distinct !{!50, !55}
!51 = distinct !{!51, !19, !52}
!52 = !{!"llvm.loop.isvectorized", i32 1}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!"branch_weights", i32 8, i32 24}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !19}
!57 = !{!30, !29, i64 32}
!58 = !{!"short", !8, i64 0}
!59 = !{!"GCcdata", !25, i64 0, !8, i64 8, !8, i64 9, !58, i64 10}
!60 = !{!59, !58, i64 10}
!61 = !{!23, !23, i64 0}
!62 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!63 = distinct !{!63, !19}
!64 = !{!"double", !8, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!12, !12, i64 0}
!67 = !{!30, !23, i64 48}
end_hunk_1
