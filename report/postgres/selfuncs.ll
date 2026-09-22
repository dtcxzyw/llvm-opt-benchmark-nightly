Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/selfuncs?download=true
inline.NumInlined: 290
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@convert_string_datum:bb.a
  store i8 1, ptr %3, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.022 = phi ptr [ %i.a, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ] ; 5 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call ptr @pg_newlocale_from_collation(i32 noundef %2) #12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i64 @pg_strxfrm(ptr noundef null, ptr noundef %.022, i64 noundef 0, ptr noundef nonnull %i.h) #12
  %i.m = add i64 %i.l, 1                          ; 2 uses
  %i.n = tail call ptr @palloc(i64 noundef %i.m) #12 ; 2 uses
  %i.o = tail call i64 @pg_strxfrm(ptr noundef %i.n, ptr noundef %.022, i64 noundef %i.m, ptr noundef nonnull %i.h) #12 ; 0 uses
  tail call void @pfree(ptr noundef %.022) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %.022, %bb.f ], [ %.022, %bb.g ], [ %i.n, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @convert_bytea_to_scalar(i64 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i64 noundef %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.a) #12 ; 5 uses
  %i.c = inttoptr i64 %2 to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #12 ; 5 uses
  %i.e = inttoptr i64 %4 to ptr
  %i.f = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.e) #12 ; 5 uses
  %i.g = load i8, ptr %i.b, align 1               ; 3 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = icmp eq i8 %i.g, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.b, i64 1
  %.val.i = load i8, ptr %i.j, align 1            ; 2 uses
  %i.k = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.k, 3
  %i.l = icmp eq i8 %.val.i, 18
  %i.m = select i1 %i.l, i32 16, i32 0
  %i.n = select i1 %or.cond.i.i.i, i32 8, i32 %i.m
  br label %VARSIZE_ANY_EXHDR.exit

bb.c:                                             ; preds = %bb.a
  %i.o = and i32 %i.h, 1
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i32 %i.h, 1
  %i.q = add nsw i32 %i.p, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.b, align 4
  %i.s = lshr i32 %i.r, 2
  %i.t = add nsw i32 %i.s, -4
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.n, %bb.b ], [ %i.q, %bb.d ], [ %i.t, %bb.e ] ; 4 uses
  %i.u = load i8, ptr %i.d, align 1               ; 3 uses
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = icmp eq i8 %i.u, 1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.x = getelementptr i8, ptr %i.d, i64 1
  %.val.i58 = load i8, ptr %i.x, align 1          ; 2 uses
  %i.y = add i8 %.val.i58, -1
  %or.cond.i.i.i59 = icmp ult i8 %i.y, 3
  %i.z = icmp eq i8 %.val.i58, 18
  %i.aa = select i1 %i.z, i32 16, i32 0
  %i.ab = select i1 %or.cond.i.i.i59, i32 8, i32 %i.aa
  br label %VARSIZE_ANY_EXHDR.exit60

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.ac = and i32 %i.v, 1
  %.not.i56 = icmp eq i32 %i.ac, 0
  br i1 %.not.i56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = lshr i32 %i.v, 1
  %i.ae = add nsw i32 %i.ad, -1
  br label %VARSIZE_ANY_EXHDR.exit60

bb.i:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.d, align 4
  %i.ag = lshr i32 %i.af, 2
  %i.ah = add nsw i32 %i.ag, -4
  br label %VARSIZE_ANY_EXHDR.exit60

VARSIZE_ANY_EXHDR.exit60:                         ; preds = %bb.f, %bb.h, %bb.i
  %.0.i57 = phi i32 [ %i.ab, %bb.f ], [ %i.ae, %bb.h ], [ %i.ah, %bb.i ] ; 4 uses
  %i.ai = load i8, ptr %i.f, align 1              ; 3 uses
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %i.ak = icmp eq i8 %i.ai, 1
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %VARSIZE_ANY_EXHDR.exit60
  %i.al = getelementptr i8, ptr %i.f, i64 1
  %.val.i63 = load i8, ptr %i.al, align 1         ; 2 uses
  %i.am = add i8 %.val.i63, -1
  %or.cond.i.i.i64 = icmp ult i8 %i.am, 3
  %i.an = icmp eq i8 %.val.i63, 18
  %i.ao = select i1 %i.an, i32 16, i32 0
  %i.ap = select i1 %or.cond.i.i.i64, i32 8, i32 %i.ao
  br label %VARSIZE_ANY_EXHDR.exit65

bb.k:                                             ; preds = %VARSIZE_ANY_EXHDR.exit60
  %i.aq = and i32 %i.aj, 1
  %.not.i61 = icmp eq i32 %i.aq, 0
  br i1 %.not.i61, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = lshr i32 %i.aj, 1
  %i.as = add nsw i32 %i.ar, -1
  br label %VARSIZE_ANY_EXHDR.exit65

bb.m:                                             ; preds = %bb.k
  %i.at = load i32, ptr %i.f, align 4
  %i.au = lshr i32 %i.at, 2
  %i.av = add nsw i32 %i.au, -4
  br label %VARSIZE_ANY_EXHDR.exit65

VARSIZE_ANY_EXHDR.exit65:                         ; preds = %bb.j, %bb.l, %bb.m
  %.0.i62 = phi i32 [ %i.ap, %bb.j ], [ %i.as, %bb.l ], [ %i.av, %bb.m ] ; 4 uses
  %i.aw = and i8 %i.g, 1
  %.not.i66 = icmp eq i8 %i.aw, 0
  %.v.i = select i1 %.not.i66, i64 4, i64 1       ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %.v.i ; 2 uses
  %i.ay = and i8 %i.u, 1
  %.not.i67 = icmp eq i8 %i.ay, 0
  %.v.i68 = select i1 %.not.i67, i64 4, i64 1     ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i68 ; 2 uses
  %i.ba = and i8 %i.ai, 1
  %.not.i69 = icmp eq i8 %i.ba, 0
  %.v.i70 = select i1 %.not.i69, i64 4, i64 1     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 %.v.i70 ; 2 uses
  %i.bc = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 %.0.i57)
  %. = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %.0.i62) ; 6 uses
  %i.bd = icmp sgt i32 %., 0
  br i1 %i.bd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %VARSIZE_ANY_EXHDR.exit65
  %i.be = sub nsw i32 %.0.i, %.
  %i.bf = sub nsw i32 %.0.i57, %.
  %i.bg = sub nsw i32 %.0.i62, %.
  %i.bh = add nsw i32 %., -1
  %i.bi = zext nneg i32 %i.bh to i64              ; 3 uses
  %i.bj = getelementptr i8, ptr %i.b, i64 %.v.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.bi
  %scevgep = getelementptr i8, ptr %i.bk, i64 1
  %i.bl = getelementptr i8, ptr %i.d, i64 %.v.i68
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bi
  %scevgep113 = getelementptr i8, ptr %i.bm, i64 1
  %i.bn = getelementptr i8, ptr %i.f, i64 %.v.i70
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bi
  %scevgep114 = getelementptr i8, ptr %i.bo, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.091 = phi ptr [ %i.bt, %bb.o ], [ %i.bb, %.lr.ph.preheader ] ; 4 uses
  %.04690 = phi ptr [ %i.bs, %bb.o ], [ %i.az, %.lr.ph.preheader ] ; 4 uses
  %.04789 = phi ptr [ %i.bu, %bb.o ], [ %i.ax, %.lr.ph.preheader ] ; 4 uses
  %.04888 = phi i32 [ %i.by, %bb.o ], [ 0, %.lr.ph.preheader ]
  %.04987 = phi i32 [ %i.bw, %bb.o ], [ %.0.i62, %.lr.ph.preheader ] ; 3 uses
  %.05086 = phi i32 [ %i.bv, %bb.o ], [ %.0.i57, %.lr.ph.preheader ] ; 3 uses
  %.05185 = phi i32 [ %i.bx, %bb.o ], [ %.0.i, %.lr.ph.preheader ] ; 3 uses
  %i.bp = load i8, ptr %.04690, align 1           ; 2 uses
  %i.bq = load i8, ptr %.091, align 1
  %.not = icmp eq i8 %i.bp, %i.bq
  br i1 %.not, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %.lr.ph
  %i.br = load i8, ptr %.04789, align 1
  %.not55 = icmp eq i8 %i.bp, %i.br
  br i1 %.not55, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %.04690, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.091, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.04789, i64 1
  %i.bv = add i32 %.05086, -1
  %i.bw = add i32 %.04987, -1
  %i.bx = add i32 %.05185, -1
  %i.by = add nuw nsw i32 %.04888, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %.
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.o, %bb.n, %.lr.ph, %VARSIZE_ANY_EXHDR.exit65
  %.051.lcssa = phi i32 [ %.0.i, %VARSIZE_ANY_EXHDR.exit65 ], [ %.05185, %.lr.ph ], [ %.05185, %bb.n ], [ %i.be, %bb.o ] ; 3 uses
  %.050.lcssa = phi i32 [ %.0.i57, %VARSIZE_ANY_EXHDR.exit65 ], [ %.05086, %.lr.ph ], [ %.05086, %bb.n ], [ %i.bf, %bb.o ] ; 3 uses
  %.049.lcssa = phi i32 [ %.0.i62, %VARSIZE_ANY_EXHDR.exit65 ], [ %.04987, %.lr.ph ], [ %.04987, %bb.n ], [ %i.bg, %bb.o ] ; 3 uses
  %.047.lcssa = phi ptr [ %i.ax, %VARSIZE_ANY_EXHDR.exit65 ], [ %.04789, %.lr.ph ], [ %.04789, %bb.n ], [ %scevgep, %bb.o ] ; 2 uses
  %.046.lcssa = phi ptr [ %i.az, %VARSIZE_ANY_EXHDR.exit65 ], [ %.04690, %.lr.ph ], [ %.04690, %bb.n ], [ %scevgep113, %bb.o ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.bb, %VARSIZE_ANY_EXHDR.exit65 ], [ %.091, %.lr.ph ], [ %.091, %bb.n ], [ %scevgep114, %bb.o ] ; 2 uses
  %i.bz = icmp slt i32 %.051.lcssa, 1
  br i1 %i.bz, label %convert_one_bytea_to_scalar.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.ca = tail call i32 @llvm.umin.i32(i32 %.051.lcssa, i32 10) ; 3 uses
  %xtraiter = and i32 %i.ca, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.p, %.prol.preheader
  %.02032.i.prol = phi double [ %12, %.prol.preheader ], [ 2.560000e+02, %bb.p ] ; 2 uses
  %.02131.i.prol = phi double [ %11, %.prol.preheader ], [ 0.000000e+00, %bb.p ]
  %.02330.i.prol = phi ptr [ %7, %.prol.preheader ], [ %.047.lcssa, %bb.p ] ; 2 uses
  %.02429.i.prol = phi i32 [ %6, %.prol.preheader ], [ %i.ca, %bb.p ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.p ]
  %6 = add nsw i32 %.02429.i.prol, -1             ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.02330.i.prol, i64 1 ; 2 uses
  %8 = load i8, ptr %.02330.i.prol, align 1
  %9 = uitofp i8 %8 to double
  %10 = fdiv double %9, %.02032.i.prol
  %11 = fadd double %.02131.i.prol, %10           ; 3 uses
  %12 = fmul double %.02032.i.prol, 2.560000e+02  ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !76

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.p
  %.02032.i.unr = phi double [ 2.560000e+02, %bb.p ], [ %12, %.prol.preheader ]
  %.02131.i.unr = phi double [ 0.000000e+00, %bb.p ], [ %11, %.prol.preheader ]
  %.02330.i.unr = phi ptr [ %.047.lcssa, %bb.p ], [ %7, %.prol.preheader ]
  %.02429.i.unr = phi i32 [ %i.ca, %bb.p ], [ %6, %.prol.preheader ]
  %.lcssa121.unr = phi double [ poison, %bb.p ], [ %11, %.prol.preheader ]
  %13 = icmp ult i32 %.051.lcssa, 4
  br i1 %13, label %convert_one_bytea_to_scalar.exit, label %bb.q

bb.q:                                             ; preds = %.prol.loopexit, %bb.q
  %.02032.i = phi double [ %i.ch, %bb.q ], [ %.02032.i.unr, %.prol.loopexit ] ; 2 uses
  %.02131.i = phi double [ %i.cg, %bb.q ], [ %.02131.i.unr, %.prol.loopexit ]
  %.02330.i = phi ptr [ %i.cc, %bb.q ], [ %.02330.i.unr, %.prol.loopexit ] ; 5 uses
  %.02429.i = phi i32 [ %i.cb, %bb.q ], [ %.02429.i.unr, %.prol.loopexit ] ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %.02330.i, i64 1
  %15 = load i8, ptr %.02330.i, align 1
  %16 = uitofp i8 %15 to double
  %17 = fdiv double %16, %.02032.i
  %18 = fadd double %.02131.i, %17
  %19 = fmul double %.02032.i, 2.560000e+02       ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %.02330.i, i64 2
  %21 = load i8, ptr %14, align 1
  %22 = uitofp i8 %21 to double
  %23 = fdiv double %22, %19
  %24 = fadd double %18, %23
  %25 = fmul double %19, 2.560000e+02             ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %.02330.i, i64 3
  %27 = load i8, ptr %20, align 1
  %28 = uitofp i8 %27 to double
  %29 = fdiv double %28, %25
  %30 = fadd double %24, %29
  %31 = fmul double %25, 2.560000e+02             ; 2 uses
  %i.cb = add nsw i32 %.02429.i, -4
  %i.cc = getelementptr inbounds nuw i8, ptr %.02330.i, i64 4
  %i.cd = load i8, ptr %26, align 1
  %i.ce = uitofp i8 %i.cd to double
  %i.cf = fdiv double %i.ce, %31
  %i.cg = fadd double %30, %i.cf                  ; 2 uses
  %i.ch = fmul double %31, 2.560000e+02
  %32 = icmp sgt i32 %.02429.i, 4
  br i1 %32, label %bb.q, label %convert_one_bytea_to_scalar.exit, !llvm.loop !77

convert_one_bytea_to_scalar.exit:                 ; preds = %.prol.loopexit, %bb.q, %._crit_edge
  %.022.i = phi double [ 0.000000e+00, %._crit_edge ], [ %.lcssa121.unr, %.prol.loopexit ], [ %i.cg, %bb.q ]
  store double %.022.i, ptr %1, align 8
  %i.ci = icmp slt i32 %.050.lcssa, 1
  br i1 %i.ci, label %convert_one_bytea_to_scalar.exit76, label %bb.r

bb.r:                                             ; preds = %convert_one_bytea_to_scalar.exit
  %i.cj = tail call i32 @llvm.umin.i32(i32 %.050.lcssa, i32 10) ; 3 uses
  %xtraiter125 = and i32 %i.cj, 3                 ; 2 uses
  %lcmp.mod126.not = icmp eq i32 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.prol.loopexit123, label %.prol.preheader122

.prol.preheader122:                               ; preds = %bb.r, %.prol.preheader122
  %.02032.i71.prol = phi double [ %39, %.prol.preheader122 ], [ 2.560000e+02, %bb.r ] ; 2 uses
  %.02131.i72.prol = phi double [ %38, %.prol.preheader122 ], [ 0.000000e+00, %bb.r ]
  %.02330.i73.prol = phi ptr [ %34, %.prol.preheader122 ], [ %.046.lcssa, %bb.r ] ; 2 uses
  %.02429.i74.prol = phi i32 [ %33, %.prol.preheader122 ], [ %i.cj, %bb.r ]
  %prol.iter127 = phi i32 [ %prol.iter127.next, %.prol.preheader122 ], [ 0, %bb.r ]
  %33 = add nsw i32 %.02429.i74.prol, -1          ; 2 uses
  %34 = getelementptr inbounds nuw i8, ptr %.02330.i73.prol, i64 1 ; 2 uses
  %35 = load i8, ptr %.02330.i73.prol, align 1
  %36 = uitofp i8 %35 to double
  %37 = fdiv double %36, %.02032.i71.prol
  %38 = fadd double %.02131.i72.prol, %37         ; 3 uses
  %39 = fmul double %.02032.i71.prol, 2.560000e+02 ; 2 uses
  %prol.iter127.next = add i32 %prol.iter127, 1   ; 2 uses
  %prol.iter127.cmp.not = icmp eq i32 %prol.iter127.next, %xtraiter125
  br i1 %prol.iter127.cmp.not, label %.prol.loopexit123, label %.prol.preheader122, !llvm.loop !78

.prol.loopexit123:                                ; preds = %.prol.preheader122, %bb.r
  %.02032.i71.unr = phi double [ 2.560000e+02, %bb.r ], [ %39, %.prol.preheader122 ]
  %.02131.i72.unr = phi double [ 0.000000e+00, %bb.r ], [ %38, %.prol.preheader122 ]
  %.02330.i73.unr = phi ptr [ %.046.lcssa, %bb.r ], [ %34, %.prol.preheader122 ]
  %.02429.i74.unr = phi i32 [ %i.cj, %bb.r ], [ %33, %.prol.preheader122 ]
  %.lcssa120.unr = phi double [ poison, %bb.r ], [ %38, %.prol.preheader122 ]
  %40 = icmp ult i32 %.050.lcssa, 4
  br i1 %40, label %convert_one_bytea_to_scalar.exit76, label %bb.s

bb.s:                                             ; preds = %.prol.loopexit123, %bb.s
  %.02032.i71 = phi double [ %i.cq, %bb.s ], [ %.02032.i71.unr, %.prol.loopexit123 ] ; 2 uses
  %.02131.i72 = phi double [ %i.cp, %bb.s ], [ %.02131.i72.unr, %.prol.loopexit123 ]
  %.02330.i73 = phi ptr [ %i.cl, %bb.s ], [ %.02330.i73.unr, %.prol.loopexit123 ] ; 5 uses
  %.02429.i74 = phi i32 [ %i.ck, %bb.s ], [ %.02429.i74.unr, %.prol.loopexit123 ] ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %.02330.i73, i64 1
  %42 = load i8, ptr %.02330.i73, align 1
  %43 = uitofp i8 %42 to double
  %44 = fdiv double %43, %.02032.i71
  %45 = fadd double %.02131.i72, %44
  %46 = fmul double %.02032.i71, 2.560000e+02     ; 2 uses
  %47 = getelementptr inbounds nuw i8, ptr %.02330.i73, i64 2
  %48 = load i8, ptr %41, align 1
  %49 = uitofp i8 %48 to double
  %50 = fdiv double %49, %46
  %51 = fadd double %45, %50
  %52 = fmul double %46, 2.560000e+02             ; 2 uses
  %53 = getelementptr inbounds nuw i8, ptr %.02330.i73, i64 3
  %54 = load i8, ptr %47, align 1
  %55 = uitofp i8 %54 to double
  %56 = fdiv double %55, %52
  %57 = fadd double %51, %56
  %58 = fmul double %52, 2.560000e+02             ; 2 uses
  %i.ck = add nsw i32 %.02429.i74, -4
  %i.cl = getelementptr inbounds nuw i8, ptr %.02330.i73, i64 4
  %i.cm = load i8, ptr %53, align 1
  %i.cn = uitofp i8 %i.cm to double
  %i.co = fdiv double %i.cn, %58
  %i.cp = fadd double %57, %i.co                  ; 2 uses
  %i.cq = fmul double %58, 2.560000e+02
  %59 = icmp sgt i32 %.02429.i74, 4
  br i1 %59, label %bb.s, label %convert_one_bytea_to_scalar.exit76, !llvm.loop !77

convert_one_bytea_to_scalar.exit76:               ; preds = %.prol.loopexit123, %bb.s, %convert_one_bytea_to_scalar.exit
  %.022.i75 = phi double [ 0.000000e+00, %convert_one_bytea_to_scalar.exit ], [ %.lcssa120.unr, %.prol.loopexit123 ], [ %i.cp, %bb.s ]
  store double %.022.i75, ptr %3, align 8
  %i.cr = icmp slt i32 %.049.lcssa, 1
  br i1 %i.cr, label %convert_one_bytea_to_scalar.exit82, label %bb.t

bb.t:                                             ; preds = %convert_one_bytea_to_scalar.exit76
  %i.cs = tail call i32 @llvm.umin.i32(i32 %.049.lcssa, i32 10) ; 3 uses
  %xtraiter131 = and i32 %i.cs, 3                 ; 2 uses
  %lcmp.mod132.not = icmp eq i32 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.prol.loopexit129, label %.prol.preheader128

.prol.preheader128:                               ; preds = %bb.t, %.prol.preheader128
  %.02032.i77.prol = phi double [ %66, %.prol.preheader128 ], [ 2.560000e+02, %bb.t ] ; 2 uses
  %.02131.i78.prol = phi double [ %65, %.prol.preheader128 ], [ 0.000000e+00, %bb.t ]
  %.02330.i79.prol = phi ptr [ %61, %.prol.preheader128 ], [ %.0.lcssa, %bb.t ] ; 2 uses
  %.02429.i80.prol = phi i32 [ %60, %.prol.preheader128 ], [ %i.cs, %bb.t ]
  %prol.iter133 = phi i32 [ %prol.iter133.next, %.prol.preheader128 ], [ 0, %bb.t ]
  %60 = add nsw i32 %.02429.i80.prol, -1          ; 2 uses
  %61 = getelementptr inbounds nuw i8, ptr %.02330.i79.prol, i64 1 ; 2 uses
  %62 = load i8, ptr %.02330.i79.prol, align 1
  %63 = uitofp i8 %62 to double
  %64 = fdiv double %63, %.02032.i77.prol
  %65 = fadd double %.02131.i78.prol, %64         ; 3 uses
  %66 = fmul double %.02032.i77.prol, 2.560000e+02 ; 2 uses
  %prol.iter133.next = add i32 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i32 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.prol.loopexit129, label %.prol.preheader128, !llvm.loop !79

.prol.loopexit129:                                ; preds = %.prol.preheader128, %bb.t
  %.02032.i77.unr = phi double [ 2.560000e+02, %bb.t ], [ %66, %.prol.preheader128 ]
  %.02131.i78.unr = phi double [ 0.000000e+00, %bb.t ], [ %65, %.prol.preheader128 ]
  %.02330.i79.unr = phi ptr [ %.0.lcssa, %bb.t ], [ %61, %.prol.preheader128 ]
  %.02429.i80.unr = phi i32 [ %i.cs, %bb.t ], [ %60, %.prol.preheader128 ]
  %.lcssa.unr = phi double [ poison, %bb.t ], [ %65, %.prol.preheader128 ]
  %67 = icmp ult i32 %.049.lcssa, 4
  br i1 %67, label %convert_one_bytea_to_scalar.exit82, label %bb.u

bb.u:                                             ; preds = %.prol.loopexit129, %bb.u
  %.02032.i77 = phi double [ %i.cz, %bb.u ], [ %.02032.i77.unr, %.prol.loopexit129 ] ; 2 uses
  %.02131.i78 = phi double [ %i.cy, %bb.u ], [ %.02131.i78.unr, %.prol.loopexit129 ]
  %.02330.i79 = phi ptr [ %i.cu, %bb.u ], [ %.02330.i79.unr, %.prol.loopexit129 ] ; 5 uses
  %.02429.i80 = phi i32 [ %i.ct, %bb.u ], [ %.02429.i80.unr, %.prol.loopexit129 ] ; 2 uses
  %68 = getelementptr inbounds nuw i8, ptr %.02330.i79, i64 1
  %69 = load i8, ptr %.02330.i79, align 1
  %70 = uitofp i8 %69 to double
  %71 = fdiv double %70, %.02032.i77
  %72 = fadd double %.02131.i78, %71
  %73 = fmul double %.02032.i77, 2.560000e+02     ; 2 uses
  %74 = getelementptr inbounds nuw i8, ptr %.02330.i79, i64 2
  %75 = load i8, ptr %68, align 1
  %76 = uitofp i8 %75 to double
  %77 = fdiv double %76, %73
  %78 = fadd double %72, %77
  %79 = fmul double %73, 2.560000e+02             ; 2 uses
  %80 = getelementptr inbounds nuw i8, ptr %.02330.i79, i64 3
  %81 = load i8, ptr %74, align 1
  %82 = uitofp i8 %81 to double
  %83 = fdiv double %82, %79
  %84 = fadd double %78, %83
  %85 = fmul double %79, 2.560000e+02             ; 2 uses
  %i.ct = add nsw i32 %.02429.i80, -4
  %i.cu = getelementptr inbounds nuw i8, ptr %.02330.i79, i64 4
  %i.cv = load i8, ptr %80, align 1
  %i.cw = uitofp i8 %i.cv to double
  %i.cx = fdiv double %i.cw, %85
  %i.cy = fadd double %84, %i.cx                  ; 2 uses
  %i.cz = fmul double %85, 2.560000e+02
  %86 = icmp sgt i32 %.02429.i80, 4
  br i1 %86, label %bb.u, label %convert_one_bytea_to_scalar.exit82, !llvm.loop !77

convert_one_bytea_to_scalar.exit82:               ; preds = %.prol.loopexit129, %bb.u, %convert_one_bytea_to_scalar.exit76
  %.022.i81 = phi double [ 0.000000e+00, %convert_one_bytea_to_scalar.exit76 ], [ %.lcssa.unr, %.prol.loopexit129 ], [ %i.cy, %bb.u ]
  store double %.022.i81, ptr %5, align 8
  ret void
}

declare double @convert_network_to_scalar(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @DirectFunctionCall1Coll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @numeric_float8_no_overflow(ptr noundef) #2

declare ptr @text_to_cstring(ptr noundef) local_unnamed_addr #2

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #2

declare ptr @pg_newlocale_from_collation(i32 noundef) local_unnamed_addr #2

declare i64 @pg_strxfrm(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare ptr @pg_detoast_datum_packed(ptr noundef) local_unnamed_addr #2

declare double @date2timestamp_no_overflow(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @contain_placeholder_walker(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  %i.c = icmp eq i32 %i.b, 335
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @expression_tree_walker_impl(ptr noundef nonnull %0, ptr noundef nonnull @contain_placeholder_walker, ptr noundef %1) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.d, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @strip_all_phvs_mutator(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr11 = phi ptr [ %i.e, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.b = load i32, ptr %.tr11, align 4
  %i.c = icmp eq i32 %i.b, 335
  br i1 %i.c, label %tailrecurse, label %bb.b

tailrecurse:                                      ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @expression_tree_mutator_impl(ptr noundef nonnull %.tr11, ptr noundef nonnull @strip_all_phvs_mutator, ptr noundef %1) #12
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ], [ null, %tailrecurse ]
  ret ptr %.0
}

declare zeroext i1 @expression_tree_walker_impl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @expression_tree_mutator_impl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_make_singleton(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare ptr @get_tle_by_resno(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare zeroext i1 @targetIsInSortList(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @datumCopy(i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @get_stats_slot_range(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i16 noundef signext %4, i1 noundef zeroext %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull captures(none) %7, ptr nofree noundef nonnull captures(none) %8) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %6, align 8                ; 2 uses
  %i.b = load i64, ptr %7, align 8                ; 2 uses
  %i.c = load i8, ptr %8, align 1, !range !5, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @fmgr_info(i32 noundef %1, ptr noundef nonnull %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.c
  %i.i = trunc nuw i8 %i.c to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store i8 1, ptr %8, align 1
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.m = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %2, i32 noundef %3, i64 noundef %i.l, i64 noundef %i.a) #12
  %.not48.peel = icmp ne i64 %i.m, 0              ; 3 uses
  %.pre = load ptr, ptr %i.j, align 8
  %.pre60 = load i64, ptr %.pre, align 8          ; 2 uses
  %spec.select = select i1 %.not48.peel, i64 %.pre60, i64 %i.a ; 2 uses
  %i.n = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %2, i32 noundef %3, i64 noundef %i.b, i64 noundef %.pre60) #12
  %.not49.peel = icmp eq i64 %i.n, 0
  br i1 %.not49.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = load i64, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.246.peel = phi i64 [ %spec.select, %bb.f ], [ %spec.select, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %.143.peel = phi i64 [ %i.p, %bb.f ], [ %i.b, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %.2.peel = phi i1 [ %.not48.peel, %bb.f ], [ %.not48.peel, %bb.e ], [ true, %bb.d ] ; 2 uses
  %.1.peel = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.q = load i32, ptr %i.f, align 8
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.g
  %.044.lcssa = phi i64 [ %.246.peel, %bb.g ], [ %.04450..pre63, %bb.i ]
  %.042.lcssa = phi i64 [ %.143.peel, %bb.g ], [ %.143, %bb.i ]
  %.038.lcssa = phi i1 [ %.2.peel, %bb.g ], [ %.03853., %bb.i ]
  %.037.lcssa = phi i1 [ %.1.peel, %bb.g ], [ %.1, %bb.i ] ; 2 uses
  br i1 %.038.lcssa, label %.split, label %bb.j

.peel.next:                                       ; preds = %bb.g, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.g ] ; 4 uses
  %.03754 = phi i1 [ %.1, %bb.i ], [ %.1.peel, %bb.g ]
  %.03853 = phi i1 [ %.03853., %bb.i ], [ %.2.peel, %bb.g ]
  %.04251 = phi i64 [ %.143, %bb.i ], [ %.143.peel, %bb.g ] ; 2 uses
  %.04450 = phi i64 [ %.04450..pre63, %bb.i ], [ %.246.peel, %bb.g ] ; 2 uses
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 8
  %i.v = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %2, i32 noundef %3, i64 noundef %i.u, i64 noundef %.04450) #12
  %.not48 = icmp ne i64 %i.v, 0                   ; 2 uses
  %.pre61 = load ptr, ptr %i.j, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre61, i64 %indvars.iv
  %.pre63 = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.04450..pre63 = select i1 %.not48, i64 %.pre63, i64 %.04450 ; 2 uses
  %.03853. = select i1 %.not48, i1 true, i1 %.03853 ; 2 uses
  %i.w = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %2, i32 noundef %3, i64 noundef %.04251, i64 noundef %.pre63) #12
  %.not49 = icmp eq i64 %i.w, 0
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.peel.next
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i64, ptr %i.y, align 8
  br label %bb.i

bb.i:                                             ; preds = %.peel.next, %bb.h
  %.143 = phi i64 [ %i.z, %bb.h ], [ %.04251, %.peel.next ] ; 2 uses
  %.1 = phi i1 [ true, %bb.h ], [ %.03754, %.peel.next ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.f, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.peel.next, label %._crit_edge, !llvm.loop !80

.split:                                           ; preds = %._crit_edge
  %i.ad = sext i16 %4 to i32
  %i.ae = tail call i64 @datumCopy(i64 noundef %.044.lcssa, i1 noundef zeroext %5, i32 noundef %i.ad) #12
  store i64 %i.ae, ptr %6, align 8
  br i1 %.037.lcssa, label %bb.k, label %.thread

bb.j:                                             ; preds = %._crit_edge
  br i1 %.037.lcssa, label %bb.k, label %.thread

bb.k:                                             ; preds = %.split, %bb.j
  %i.af = sext i16 %4 to i32
  %i.ag = tail call i64 @datumCopy(i64 noundef %.042.lcssa, i1 noundef zeroext %5, i32 noundef %i.af) #12
  store i64 %i.ag, ptr %7, align 8
  br label %.thread

.thread:                                          ; preds = %bb.c, %.split, %bb.k, %bb.j
  ret void
}

declare zeroext i1 @match_index_to_operand(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IndexAmTranslateStrategy(i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @table_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @table_slot_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ScanKeyEntryInitialize(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @get_actual_variable_endpoint(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -1, 2) %2, ptr noundef nonnull %3, i16 noundef signext %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef nonnull writeonly captures(none) %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.SnapshotData, align 8       ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [32 x i64], align 16              ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 6, ptr %9, align 8
  %i.d = tail call ptr @GlobalVisTestFor(ptr noundef %0) #12
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %i.d, ptr %i.e, align 8
  %i.f = call ptr @index_beginscan(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 1, ptr %i.g, align 8
  call void @index_rescan(ptr noundef %i.f, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null, i32 noundef 0) #12
  %i.h = call ptr @index_getnext_tid(ptr noundef %i.f, i32 noundef %2) #12 ; 2 uses
  %.not53 = icmp eq ptr %i.h, null
  br i1 %.not53, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %i.i = phi ptr [ %i.ar, %bb.k ], [ %i.h, %bb.a ] ; 2 uses
  %.03155 = phi i32 [ %.2, %bb.k ], [ 0, %bb.a ]  ; 2 uses
  %.03254 = phi i32 [ %.234, %bb.k ], [ -1, %bb.a ] ; 2 uses
  %.val = load i16, ptr %i.i, align 2
  %i.j = getelementptr i8, ptr %i.i, i64 2
  %.val48 = load i16, ptr %i.j, align 2
  %i.k = zext i16 %.val to i32
  %i.l = shl nuw i32 %i.k, 16
  %i.m = zext i16 %.val48 to i32
  %i.n = or disjoint i32 %i.l, %i.m               ; 3 uses
  %i.o = call zeroext i8 @visibilitymap_get_status(ptr noundef %0, i32 noundef %i.n, ptr noundef nonnull %i.a) #12
  %i.p = and i8 %i.o, 1
  %.not44 = icmp eq i8 %i.p, 0
  br i1 %.not44, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.q = call zeroext i1 @index_fetch_heap(ptr noundef %i.f, ptr noundef %6) #12
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not45 = icmp eq i32 %i.n, %.03254
  br i1 %.not45, label %bb.k, label %bb.d, !llvm.loop !81

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %.03155, 1                       ; 2 uses
  %i.s = icmp sgt i32 %i.r, 100
  br i1 %i.s, label %..thread.loopexit_crit_edge56, label %bb.k, !llvm.loop !81

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef %6) #12, !inline_history !82
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not46 = icmp eq ptr %i.y, null
  br i1 %.not46, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.z = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.aa = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.20) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 7258, ptr noundef nonnull @__func__.get_actual_variable_endpoint) #12
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.ac = load i8, ptr %i.ab, align 8, !range !5, !noundef !6
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.af = load ptr, ptr %i.ae, align 8
  call void @index_deform_tuple(ptr noundef nonnull %i.y, ptr noundef %i.af, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %i.ag = load i8, ptr %i.c, align 16, !range !5, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.al) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 7274, ptr noundef nonnull @__func__.get_actual_variable_endpoint) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.an = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %7, ptr @CurrentMemoryContext, align 8
  %i.ao = load i64, ptr %i.b, align 16
  %i.ap = sext i16 %4 to i32
  %i.aq = call i64 @datumCopy(i64 noundef %i.ao, i1 noundef zeroext %5, i32 noundef %i.ap) #12
  store i64 %i.aq, ptr %8, align 8
  store ptr %i.an, ptr @CurrentMemoryContext, align 8
  br label %.thread

bb.k:                                             ; preds = %bb.d, %bb.c
  %.234 = phi i32 [ %i.n, %bb.d ], [ %.03254, %bb.c ]
  %.2 = phi i32 [ %i.r, %bb.d ], [ %.03155, %bb.c ]
  %i.ar = call ptr @index_getnext_tid(ptr noundef %i.f, i32 noundef %2) #12 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %.thread, label %.lr.ph

..thread.loopexit_crit_edge56:                    ; preds = %bb.d
  br label %.thread, !llvm.loop !81

.thread:                                          ; preds = %bb.k, %bb.a, %..thread.loopexit_crit_edge56, %bb.j, %bb.g
  %.237 = phi i1 [ true, %bb.j ], [ false, %bb.g ], [ false, %bb.a ], [ false, %..thread.loopexit_crit_edge56 ], [ false, %bb.k ]
  %i.as = load i32, ptr %i.a, align 4             ; 2 uses
  %.not47 = icmp eq i32 %i.as, 0
  br i1 %.not47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  call void @ReleaseBuffer(i32 noundef %i.as) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  call void @index_endscan(ptr noundef %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  ret i1 %.237
}

declare void @ExecDropSingleTupleTableSlot(ptr noundef) local_unnamed_addr #2

declare void @table_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @MemoryContextDelete(ptr noundef) local_unnamed_addr #2

declare ptr @GlobalVisTestFor(ptr noundef) local_unnamed_addr #2

declare ptr @index_beginscan(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @index_rescan(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @index_getnext_tid(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @visibilitymap_get_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @index_fetch_heap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @index_deform_tuple(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ReleaseBuffer(i32 noundef) local_unnamed_addr #2

declare void @index_endscan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @gincost_pattern(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -32768, 32768) %1, i32 noundef %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.FmgrInfo, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store ptr null, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = sext i32 %1 to i64                       ; 8 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4
  call void @get_op_opfamily_properties(i32 noundef %2, i32 noundef %i.m, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.k
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.k
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = call i32 @get_opfamily_proc(i32 noundef %i.p, i32 noundef %i.t, i32 noundef %i.t, i16 noundef signext 3) #12 ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.w = add nsw i32 %1, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = call ptr @get_rel_name(i32 noundef %i.y) #12
  %i.aa = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.23, i32 noundef 3, i32 noundef %i.w, ptr noundef %i.z) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 8408, ptr noundef nonnull @__func__.gincost_pattern) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.k
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %.not42 = icmp eq i32 %i.ae, 0
  %. = select i1 %.not42, i32 100, i32 %i.ae
  call void @fmgr_info(i32 noundef %i.u, ptr noundef nonnull %5) #12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.k
  %i.ai = load ptr, ptr %i.ah, align 8
  call void @set_fn_opclass_options(ptr noundef nonnull %5, ptr noundef %i.ai) #12
  %i.aj = ptrtoint ptr %i.d to i64
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = and i32 %i.ak, 65535
  %i.am = zext nneg i32 %i.al to i64
  %i.an = ptrtoint ptr %i.e to i64
  %i.ao = ptrtoint ptr %i.f to i64
  %i.ap = ptrtoint ptr %i.g to i64
  %i.aq = ptrtoint ptr %i.h to i64
  %i.ar = call i64 @FunctionCall7Coll(ptr noundef nonnull %5, i32 noundef %., i64 noundef %3, i64 noundef %i.aj, i64 noundef %i.am, i64 noundef %i.an, i64 noundef %i.ao, i64 noundef %i.ap, i64 noundef %i.aq) #12 ; 0 uses
  %i.as = load i32, ptr %i.d, align 4             ; 7 uses
  %i.at = icmp sgt i32 %i.as, 0                   ; 2 uses
  %i.au = load i32, ptr %i.h, align 4             ; 2 uses
  %i.av = icmp ne i32 %i.au, 0
  %or.cond.not = select i1 %i.at, i1 true, i1 %i.av ; 2 uses
  br i1 %or.cond.not, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.c
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aw = load ptr, ptr %i.e, align 8             ; 4 uses
  %.not43 = icmp eq ptr %i.aw, null
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %.promoted = load double, ptr %i.az, align 8    ; 3 uses
  br i1 %.not43, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.as to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ba = icmp eq i32 %i.as, 1
  br i1 %i.ba, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.promoted48 = load double, ptr %i.ay, align 8
  %i.bb = insertelement <2 x double> poison, double %.promoted48, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %.promoted, i64 1 ; 2 uses
  %xtraiter58 = and i32 %i.as, 7                  ; 3 uses
  %i.bd = icmp ult i32 %i.as, 8
  br i1 %i.bd, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter64 = and i32 %i.as, 2147483640
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.split.us.new
  %i.be = phi <2 x double> [ %i.bc, %.lr.ph.split.us.new ], [ %i.bm, %bb.d ]
  %niter65 = phi i32 [ 0, %.lr.ph.split.us.new ], [ %niter65.next.7, %bb.d ]
  %i.bf = fadd <2 x double> %i.be, splat (double 1.000000e+00)
  %i.bg = fadd <2 x double> %i.bf, splat (double 1.000000e+00)
  %i.bh = fadd <2 x double> %i.bg, splat (double 1.000000e+00)
  %i.bi = fadd <2 x double> %i.bh, splat (double 1.000000e+00)
  %i.bj = fadd <2 x double> %i.bi, splat (double 1.000000e+00)
  %i.bk = fadd <2 x double> %i.bj, splat (double 1.000000e+00)
  %i.bl = fadd <2 x double> %i.bk, splat (double 1.000000e+00)
  %i.bm = fadd <2 x double> %i.bl, splat (double 1.000000e+00) ; 3 uses
  %niter65.next.7 = add nuw nsw i32 %niter65, 8   ; 2 uses
  %niter65.ncmp.7 = icmp eq i32 %niter65.next.7, %unroll_iter64
  br i1 %niter65.ncmp.7, label %._crit_edge.split.us.unr-lcssa, label %bb.d, !llvm.loop !83

._crit_edge.split.us.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod61.not = icmp eq i32 %xtraiter58, 0
  br i1 %lcmp.mod61.not, label %._crit_edge.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.unr-lcssa, %.lr.ph.split.us
  %.epil.init60 = phi <2 x double> [ %i.bc, %.lr.ph.split.us ], [ %i.bm, %._crit_edge.split.us.unr-lcssa ]
  %lcmp.mod63 = icmp ne i32 %xtraiter58, 0
  call void @llvm.assume(i1 %lcmp.mod63)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %i.bn = phi <2 x double> [ %.epil.init60, %.epil.preheader ], [ %i.bo, %bb.e ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bo = fadd <2 x double> %i.bn, splat (double 1.000000e+00) ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter58
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.us, label %bb.e, !llvm.loop !84

._crit_edge.split.us:                             ; preds = %bb.e, %._crit_edge.split.us.unr-lcssa
  %.lcssa = phi <2 x double> [ %i.bm, %._crit_edge.split.us.unr-lcssa ], [ %i.bo, %bb.e ]
  store <2 x double> %.lcssa, ptr %i.ay, align 8
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %bb.j, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %i.bp = phi double [ %.promoted, %.lr.ph.split.preheader.new ], [ %i.cg, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv
  %i.br = load i8, ptr %i.bq, align 1, !range !5, !noundef !6
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  %i.bt = load double, ptr %i.ax, align 8
  %i.bu = fadd double %i.bt, 1.000000e+02
  store double %i.bu, ptr %i.ax, align 8
  br label %.lr.ph.split.1

bb.g:                                             ; preds = %.lr.ph.split
  %i.bv = load double, ptr %i.ay, align 8
  %i.bw = fadd double %i.bv, 1.000000e+00
  store double %i.bw, ptr %i.ay, align 8
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.g, %bb.f
  %i.bx = fadd double %i.bp, 1.000000e+00         ; 2 uses
  store double %i.bx, ptr %i.az, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !range !5, !noundef !6
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.1
  %i.cc = load double, ptr %i.ay, align 8
  %i.cd = fadd double %i.cc, 1.000000e+00
  store double %i.cd, ptr %i.ay, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.1
  %i.ce = load double, ptr %i.ax, align 8
  %i.cf = fadd double %i.ce, 1.000000e+02
  store double %i.cf, ptr %i.ax, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cg = fadd double %i.bx, 1.000000e+00         ; 3 uses
  store double %i.cg, ptr %i.az, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !83

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi double [ %.promoted, %.lr.ph.split.preheader ], [ %i.cg, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod57 = trunc i32 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod57)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.epil.init
  %i.ci = load i8, ptr %i.ch, align 1, !range !5, !noundef !6
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.epil.preheader
  %i.ck = load double, ptr %i.ay, align 8
  %i.cl = fadd double %i.ck, 1.000000e+00
  store double %i.cl, ptr %i.ay, align 8
  br label %._crit_edge.loopexit.epilog-lcssa

bb.l:                                             ; preds = %.lr.ph.split.epil.preheader
  %i.cm = load double, ptr %i.ax, align 8
  %i.cn = fadd double %i.cm, 1.000000e+02
  store double %i.cn, ptr %i.ax, align 8
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.l, %bb.k
  %i.co = fadd double %.epil.init, 1.000000e+00
  store double %i.co, ptr %i.az, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %._crit_edge.split.us, %.preheader
  switch i32 %i.au, label %bb.o [
    i32 0, label %bb.m
    i32 1, label %bb.n
  ]

bb.m:                                             ; preds = %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %i.k
  store i8 1, ptr %i.cq, align 1
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.k
  store i8 1, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.cu = load <2 x double>, ptr %i.ct, align 8
  %i.cv = fadd <2 x double> %i.cu, splat (double 1.000000e+00)
  store <2 x double> %i.cv, ptr %i.ct, align 8
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds i8, ptr %4, i64 %i.k
  store i8 1, ptr %i.cw, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i1 %or.cond.not
}

declare i32 @get_opfamily_proc(i32 noundef, i32 noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @get_rel_name(i32 noundef) local_unnamed_addr #2

declare void @set_fn_opclass_options(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FunctionCall7Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = !{!"llvm.loop.peeled.count", i32 1}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{null}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7, !9}
!27 = !{ptr @contain_placeholder_walker}
!28 = !{ptr @strip_all_phvs_mutator}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7, !68, !69}
!54 = distinct !{!54, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{null, null}
!61 = distinct !{null, null, null}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{null, null}
!65 = distinct !{null, null, null}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7, !68}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!55}
!71 = !{!56}
!72 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !8}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !8}
!79 = distinct !{!79, !8}
!80 = distinct !{!80, !7, !9}
!81 = distinct !{!81, !7}
!82 = distinct !{null}
!83 = distinct !{!83, !7}
!84 = distinct !{!84, !8}
end_hunk_0
