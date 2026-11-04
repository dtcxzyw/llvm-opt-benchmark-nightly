Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Centry?download=true
inline.NumInlined: 22
inline.NumDeleted: 7
begin_hunk_0_@H5C__flush_single_entry:bb.a
bb.cy:                                            ; preds = %bb.cx, %bb.cr
  %.2.i = phi i32 [ %.1.i, %bb.cx ], [ 0, %bb.cr ] ; 4 uses
  store ptr null, ptr %1, align 8, !tbaa !112
  %i.oe = getelementptr inbounds nuw i8, ptr %i.k, i64 524600 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !113
  %i.og = add nsw i64 %i.of, 1
  store i64 %i.og, ptr %i.oe, align 8, !tbaa !113
  %i.oh = getelementptr inbounds nuw i8, ptr %i.k, i64 524608
  store ptr %1, ptr %i.oh, align 8, !tbaa !114
  %i.oi = getelementptr inbounds nuw i8, ptr %i.k, i64 524616 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !115
  %i.ok = icmp eq ptr %1, %i.oj
  br i1 %i.ok, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store ptr null, ptr %i.oi, align 8, !tbaa !115
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  br i1 %.0267, label %bb.db, label %H5C__discard_single_entry.exit

bb.db:                                            ; preds = %bb.da
  %i.ol = load i8, ptr %i.w, align 8, !tbaa !55, !range !16, !noundef !17
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  store i8 0, ptr %i.w, align 8, !tbaa !55
  %i.on = load ptr, ptr %i.cy, align 8, !tbaa !69
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 80
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !76 ; 2 uses
  %.not39.i = icmp eq ptr %i.op, null
  br i1 %.not39.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oq = call i32 %i.op(i32 noundef 5, ptr noundef nonnull %1) #8, !inline_history !148
  %i.or = icmp slt i32 %i.oq, 0
  br i1 %i.or, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.os = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.ot = load i64, ptr @H5E_CANTNOTIFY_g, align 8, !tbaa !64
  %i.ou = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__discard_single_entry, i32 noundef 917, i64 noundef %i.os, i64 noundef %i.ot, ptr noundef nonnull @.str.9) #8 ; 0 uses
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db
  %.3.i = phi i32 [ -1, %bb.de ], [ %.2.i, %bb.dd ], [ %.2.i, %bb.dc ], [ %.2.i, %bb.db ]
  %i.ov = load ptr, ptr %i.cy, align 8, !tbaa !69
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 88
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !116
  %i.oy = call i32 %i.ox(ptr noundef nonnull %1) #8, !inline_history !148
  %i.oz = icmp slt i32 %i.oy, 0
  br i1 %i.oz, label %H5C__discard_single_entry.exit.thread, label %H5C__discard_single_entry.exit

H5C__discard_single_entry.exit.thread:            ; preds = %bb.df
  %i.pa = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.pb = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !64
  %i.pc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__discard_single_entry, i32 noundef 925, i64 noundef %i.pa, i64 noundef %i.pb, ptr noundef nonnull @.str.83) #8 ; 0 uses
  br label %bb.dg

H5C__discard_single_entry.exit:                   ; preds = %bb.da, %bb.df
  %.4.i = phi i32 [ %.2.i, %bb.da ], [ %.3.i, %bb.df ]
  %i.pd = icmp slt i32 %.4.i, 0
  br i1 %i.pd, label %bb.dg, label %H5C__discard_single_entry.exit.thread322

bb.dg:                                            ; preds = %H5C__discard_single_entry.exit.thread, %H5C__discard_single_entry.exit
  %i.pe = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.pf = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !64
  %i.pg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__flush_single_entry, i32 noundef 764, i64 noundef %i.pe, i64 noundef %i.pf, ptr noundef nonnull @.str.11) #8 ; 0 uses
  br label %bb.do

H5C__discard_single_entry.exit.thread322.sink.split: ; preds = %bb.ck, %bb.ch, %bb.cg, %bb.cc
  store i8 0, ptr %i.as, align 1, !tbaa !65
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !75
  br label %H5C__discard_single_entry.exit.thread322

H5C__discard_single_entry.exit.thread322:         ; preds = %H5C__discard_single_entry.exit.thread322.sink.split, %.thread318, %H5C__discard_single_entry.exit
  %i.pj = phi i64 [ %i.il, %.thread318 ], [ %i.il, %H5C__discard_single_entry.exit ], [ %i.pi, %H5C__discard_single_entry.exit.thread322.sink.split ]
  %i.pk = phi ptr [ %i.dh, %.thread318 ], [ %i.dh, %H5C__discard_single_entry.exit ], [ %i.ph, %H5C__discard_single_entry.exit.thread322.sink.split ]
  br i1 %.not292, label %bb.dl, label %bb.dh

bb.dh:                                            ; preds = %H5C__discard_single_entry.exit.thread322
  %i.pl = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 104
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !157 ; 3 uses
  %.not310 = icmp eq ptr %i.pn, null
  br i1 %.not310, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !161
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !67 ; 2 uses
  %.not311 = icmp ult i64 %i.pp, %i.pr
  br i1 %.not311, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ps = load i64, ptr %i.pk, align 8, !tbaa !75
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !66
  %i.pv = call i32 @H5PB_update_entry(ptr noundef nonnull %i.pn, i64 noundef %i.ps, i64 noundef %i.pr, ptr noundef %i.pu) #8
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.px = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.py = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !64
  %i.pz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__flush_single_entry, i32 noundef 778, i64 noundef %i.px, i64 noundef %i.py, ptr noundef nonnull @.str.12) #8 ; 0 uses
  br label %bb.do

bb.dl:                                            ; preds = %bb.dh, %bb.di, %bb.dj, %H5C__discard_single_entry.exit.thread322
  %i.qa = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !162 ; 2 uses
  %.not312 = icmp eq ptr %i.qb, null
  br i1 %.not312, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qc = call i32 %i.qb(ptr noundef nonnull %i.k, i64 noundef %i.pj, i1 noundef zeroext %i.y, i32 noundef %2) #8
  %i.qd = icmp slt i32 %i.qc, 0
  br i1 %i.qd, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.qe = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.qf = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !64
  %i.qg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__flush_single_entry, i32 noundef 783, i64 noundef %i.qe, i64 noundef %i.qf, ptr noundef nonnull @.str.13) #8 ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.w, %bb.a, %bb.dl, %bb.dm, %bb.dn, %bb.dk, %bb.dg, %bb.cl, %bb.cf, %bb.by, %bb.bi, %bb.av, %bb.ac, %bb.y, %bb.o, %bb.l, %bb.h
  %.3 = phi i32 [ -1, %bb.h ], [ -1, %bb.l ], [ -1, %bb.y ], [ -1, %bb.ac ], [ -1, %bb.av ], [ -1, %bb.bi ], [ -1, %bb.dg ], [ -1, %bb.dk ], [ -1, %bb.dn ], [ 0, %bb.dm ], [ 0, %bb.dl ], [ -1, %bb.by ], [ -1, %bb.cf ], [ -1, %bb.cl ], [ -1, %bb.w ], [ -1, %bb.o ], [ 0, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5C__generate_image(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 -1, ptr %i.a, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i64 0, ptr %i.b, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !83
  %i.d = load i8, ptr @H5C_init_g, align 1, !tbaa !15, !range !16, !noundef !17
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !16
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %H5C__mark_flush_dep_serialized.exit.thread, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !75   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !163  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67
  %i.r = call i32 %i.o(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %i.k, i64 noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #8
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.u = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !64
  %i.v = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__generate_image, i32 noundef 272, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.78) #8 ; 0 uses
  br label %H5C__mark_flush_dep_serialized.exit.thread

bb.e:                                             ; preds = %bb.c
  %.pre = load i32, ptr %i.c, align 4, !tbaa !83  ; 4 uses
  %.not213 = icmp eq i32 %.pre, 0
  br i1 %.not213, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ugt i32 %.pre, 3
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.y = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !64
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__generate_image, i32 noundef 278, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.79) #8 ; 0 uses
  br label %H5C__mark_flush_dep_serialized.exit.thread

bb.h:                                             ; preds = %bb.f
  %3 = and i32 %.pre, 1
  %.not214 = icmp eq i32 %3, 0
  br i1 %.not214, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !64
  %i.ad = call ptr @H5MM_realloc(ptr noundef %i.ab, i64 noundef %i.ac) #8 ; 2 uses
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !66
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.ag = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !64
  %i.ah = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__generate_image, i32 noundef 315, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %H5C__mark_flush_dep_serialized.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !67 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !81
  %i.am = sub i64 %i.al, %i.aj
  %i.an = load i64, ptr %i.b, align 8, !tbaa !64  ; 6 uses
  %i.ao = add i64 %i.an, %i.am
  store i64 %i.ao, ptr %i.ak, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !82
  %i.as = sext i32 %i.ar to i64                   ; 3 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !64
  %i.av = sub i64 %i.an, %i.aj
  %i.aw = add i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !55, !range !16, !noundef !17
  %i.az = trunc nuw i8 %i.ay to i1                ; 2 uses
  %i.ba = load i64, ptr %i.ai, align 8, !tbaa !67 ; 2 uses
  %. = select i1 %i.az, i64 224, i64 168
  %.283 = select i1 %i.az, i64 232, i64 176
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %. ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !64
  %i.bd = sub i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.283
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.as ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !64
  %i.bh = sub i64 %i.bg, %i.ba
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !64
  %i.bi = load i64, ptr %i.bb, align 8, !tbaa !64
  %i.bj = add i64 %i.bi, %i.an
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !64
  %i.bk = load i64, ptr %i.bf, align 8, !tbaa !64
  %i.bl = add i64 %i.bk, %i.an
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !64
  %i.bm = load i64, ptr %i.ai, align 8, !tbaa !67
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 524576 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !91
  %i.bp = sub i64 %i.an, %i.bm                    ; 4 uses
  %i.bq = add i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !91
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !104, !range !16, !noundef !17
  %i.bt = trunc nuw i8 %i.bs to i1
  %.sink260 = select i1 %i.bt, i64 524784, i64 524816
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %.sink260 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !64
  %i.bw = add i64 %i.bp, %i.bv
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 524624
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !93, !range !16, !noundef !17
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 524632 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !97
  %i.cc = add i64 %i.bp, %i.cb
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !97
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 524664
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.as ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !64
  %i.cg = add i64 %i.bp, %i.cf
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !67
  %.pre225 = load i32, ptr %i.c, align 4, !tbaa !83
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %i.ch = phi i32 [ %.pre225, %bb.m ], [ %.pre, %bb.h ]
  %i.ci = and i32 %i.ch, 2
  %.not215 = icmp eq i32 %i.ci, 0
  br i1 %.not215, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load i64, ptr %i.j, align 8, !tbaa !75
  %i.ck = icmp eq i64 %i.cj, %i.k
  br i1 %i.ck, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cl = lshr i64 %i.k, 3
  %i.cm = and i64 %i.cl, 65535
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !77 ; 3 uses
  %.not216 = icmp eq ptr %i.co, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.pre227 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !78 ; 3 uses
  br i1 %.not216, label %._crit_edge226, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 112
  store ptr %.pre227, ptr %i.cp, align 8, !tbaa !78
  br label %._crit_edge226

._crit_edge226:                                   ; preds = %bb.p, %bb.q
  %.not217 = icmp eq ptr %.pre227, null
  br i1 %.not217, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge226
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre227, i64 104
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !77
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge226
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cm ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !79
  %i.cu = icmp eq ptr %i.ct, %2
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !77
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !79
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !80
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !80
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !67 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !81
  %i.dd = sub i64 %i.dc, %i.da
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !81
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !82
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !83
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !83
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dm = load i32, ptr %i.df, align 8, !tbaa !82 ; 2 uses
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dn ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !64
  %i.dq = sub i64 %i.dp, %i.da
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !55, !range !16, !noundef !17
  %i.dt = trunc nuw i8 %i.ds to i1                ; 2 uses
  %i.du = load i64, ptr %i.cz, align 8, !tbaa !67 ; 2 uses
  %.284 = select i1 %i.dt, i64 224, i64 168
  %.285 = select i1 %i.dt, i64 232, i64 176
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %.284 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !64
  %i.dx = sub i64 %i.dw, %i.du
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !64
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 %.285
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dn ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !64
  %i.eb = sub i64 %i.ea, %i.du
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !64
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 58 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !84, !range !16, !noundef !17
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 524720 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !85
  %i.eh = add i32 %i.eg, -1
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !85
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 524584 ; 4 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !86
  %i.ek = icmp eq ptr %i.ej, %2
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !87 ; 6 uses
  br i1 %i.ek, label %bb.x, label %bb.z

end_hunk_0
begin_hunk_1_@H5C_protect:bb.a

bb.cf:                                            ; preds = %._crit_edge409.i
  %i.nh = load ptr, ptr %i.ff, align 8, !tbaa !100 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 136
  store ptr %i.nf, ptr %i.ni, align 8, !tbaa !99
  br label %bb.cg

thread-pre-split313:                              ; preds = %bb.cd, %bb.ce
  %.pr315 = load ptr, ptr %i.ff, align 8, !tbaa !100
  br label %bb.cg

bb.cg:                                            ; preds = %thread-pre-split313, %bb.cf
  %i.nj = phi ptr [ %.pr315, %thread-pre-split313 ], [ %i.nh, %bb.cf ] ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.p, i64 524768 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !143
  %i.nm = icmp eq ptr %i.nl, %i.dz
  br i1 %i.nm, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  store ptr %i.nj, ptr %i.nk, align 8, !tbaa !143
  %.not375.i = icmp eq ptr %i.nj, null
  br i1 %.not375.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 136
  store ptr null, ptr %i.nn, align 8, !tbaa !99
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cg
  %i.no = getelementptr inbounds nuw i8, ptr %i.nf, i64 144
  store ptr %i.nj, ptr %i.no, align 8, !tbaa !100
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false)
  %i.np = load i32, ptr %i.mo, align 8, !tbaa !144
  %i.nq = add i32 %i.np, -1
  store i32 %i.nq, ptr %i.mo, align 8, !tbaa !144
  %i.nr = load i64, ptr %i.ei, align 8, !tbaa !67 ; 2 uses
  %i.ns = load i64, ptr %i.mr, align 8, !tbaa !141
  %i.nt = sub i64 %i.ns, %i.nr
  store i64 %i.nt, ptr %i.mr, align 8, !tbaa !141
  %i.nu = load i8, ptr %i.ev, align 8, !tbaa !104, !range !16, !noundef !17
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.nw = getelementptr inbounds nuw i8, ptr %i.p, i64 524792 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !133 ; 3 uses
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.nz = getelementptr inbounds nuw i8, ptr %i.p, i64 524800
  store ptr %i.dz, ptr %i.nz, align 8, !tbaa !134
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 144
  store ptr %i.dz, ptr %i.oa, align 8, !tbaa !100
  store ptr %i.nx, ptr %i.fe, align 8, !tbaa !99
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  store ptr %i.dz, ptr %i.nw, align 8, !tbaa !133
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ck
  %i.ob = getelementptr inbounds nuw i8, ptr %i.p, i64 524824 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !98 ; 3 uses
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.oe = getelementptr inbounds nuw i8, ptr %i.p, i64 524832
  store ptr %i.dz, ptr %i.oe, align 8, !tbaa !101
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 144
  store ptr %i.dz, ptr %i.of, align 8, !tbaa !100
  store ptr %i.oc, ptr %i.fe, align 8, !tbaa !99
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  store ptr %i.dz, ptr %i.ob, align 8, !tbaa !98
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.co
  %.sink484.i = phi i64 [ 524808, %bb.cs ], [ 524776, %bb.co ]
  %.sink479.i = phi i64 [ 524816, %bb.cs ], [ 524784, %bb.co ]
  %i.og = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink484.i ; 2 uses
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !83
  %i.oi = add i32 %i.oh, 1
  store i32 %i.oi, ptr %i.og, align 8, !tbaa !83
  %i.oj = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink479.i ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !64
  %i.ol = add i64 %i.ok, %i.nr
  store i64 %i.ol, ptr %i.oj, align 8, !tbaa !64
  store i8 0, ptr %i.eu, align 2, !tbaa !63
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.bf
  store i64 0, ptr %i.fk, align 8, !tbaa !181
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.be, %bb.ar, %bb.ac, %bb.aa, %bb.y
  %.2307 = phi ptr [ %storemerge.lcssa357451, %bb.y ], [ %storemerge.lcssa357451, %bb.aa ], [ %storemerge.lcssa357451, %bb.ac ], [ %storemerge.lcssa357451, %bb.ar ], [ %i.dz, %bb.cu ], [ %storemerge.lcssa357451, %bb.be ] ; 2 uses
  %i.om = phi i1 [ true, %bb.y ], [ true, %bb.aa ], [ true, %bb.ac ], [ true, %bb.ar ], [ false, %bb.cu ], [ true, %bb.be ] ; 2 uses
  %.0333.i = phi i32 [ -1, %bb.y ], [ -1, %bb.aa ], [ -1, %bb.ac ], [ -1, %bb.ar ], [ 0, %bb.cu ], [ -1, %bb.be ] ; 2 uses
  %.not376.i = icmp eq ptr %.0337.i, null
  br i1 %.not376.i, label %bb.cw, label %.thread385.i

.thread385.i:                                     ; preds = %bb.cv, %bb.cc, %bb.x
  %.3308 = phi ptr [ %.2307, %bb.cv ], [ %storemerge.lcssa357451, %bb.cc ], [ %storemerge.lcssa357451, %bb.x ]
  %.0333392.i = phi i32 [ %.0333.i, %bb.cv ], [ -1, %bb.cc ], [ -1, %bb.x ]
  %i.on = phi i1 [ %i.om, %bb.cv ], [ true, %bb.cc ], [ true, %bb.x ]
  %.1338391.i = phi ptr [ %.0337.i, %bb.cv ], [ %.0337.i, %bb.cc ], [ %i.cg, %bb.x ]
  %.0340390.i = phi ptr [ %i.dz, %bb.cv ], [ %i.dz, %bb.cc ], [ null, %bb.x ]
  %i.oo = call ptr @H5MM_xfree(ptr noundef nonnull %.1338391.i) #8 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %.thread385.i, %bb.cv
  %.4 = phi ptr [ %.2307, %bb.cv ], [ %.3308, %.thread385.i ]
  %.0333383.i = phi i32 [ %.0333.i, %bb.cv ], [ %.0333392.i, %.thread385.i ]
  %i.op = phi i1 [ %i.om, %bb.cv ], [ %i.on, %.thread385.i ]
  %.0340382.i = phi ptr [ %i.dz, %bb.cv ], [ %.0340390.i, %.thread385.i ] ; 2 uses
  %i.oq = icmp ne ptr %.0340382.i, null
  %or.cond.i = and i1 %i.op, %i.oq
  br i1 %or.cond.i, label %bb.cx, label %H5C__deserialize_prefetched_entry.exit

bb.cx:                                            ; preds = %bb.cw
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !116
  %i.ot = call i32 %i.os(ptr noundef nonnull %.0340382.i) #8, !inline_history !173
  %i.ou = icmp slt i32 %i.ot, 0
  br i1 %i.ou, label %bb.cy, label %H5C__deserialize_prefetched_entry.exit.thread

bb.cy:                                            ; preds = %bb.cx
  %i.ov = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.ow = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !64
  %i.ox = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__deserialize_prefetched_entry, i32 noundef 2107, i64 noundef %i.ov, i64 noundef %i.ow, ptr noundef nonnull @.str.83) #8 ; 0 uses
  br label %H5C__deserialize_prefetched_entry.exit.thread

H5C__deserialize_prefetched_entry.exit.thread:    ; preds = %bb.cy, %bb.cx, %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.cz

H5C__deserialize_prefetched_entry.exit:           ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.oy = icmp slt i32 %.0333383.i, 0
  br i1 %i.oy, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %H5C__deserialize_prefetched_entry.exit.thread, %H5C__deserialize_prefetched_entry.exit
  %i.oz = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.pa = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !64
  %i.pb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_protect, i32 noundef 3061, i64 noundef %i.oz, i64 noundef %i.pa, ptr noundef nonnull @.str.43) #8 ; 0 uses
  br label %.thread323

bb.da:                                            ; preds = %H5C__deserialize_prefetched_entry.exit.thread318, %H5C__deserialize_prefetched_entry.exit, %bb.k
  %.0305 = phi ptr [ %.4, %H5C__deserialize_prefetched_entry.exit ], [ %storemerge.lcssa357451, %bb.k ], [ %storemerge.lcssa357451, %H5C__deserialize_prefetched_entry.exit.thread318 ] ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.0305, i64 40
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !69
  %.not238 = icmp eq ptr %i.pd, %1
  br i1 %.not238, label %bb.gh, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pe = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.pf = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !64
  %i.pg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_protect, i32 noundef 3069, i64 noundef %i.pe, i64 noundef %i.pf, ptr noundef nonnull @.str.44) #8 ; 0 uses
  br label %.thread323

._crit_edge:                                      ; preds = %.lr.ph363, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.a, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ph = load i8, ptr @H5C_init_g, align 1, !tbaa !15, !range !16, !noundef !17
  %i.pi = trunc nuw i8 %i.ph to i1
  %i.pj = load i8, ptr @H5_libterm_g, align 1, !range !16
  %i.pk = trunc nuw i8 %i.pj to i1
  %i.pl = xor i1 %i.pk, true
  %i.pm = select i1 %i.pi, i1 true, i1 %i.pl
  br i1 %i.pm, label %bb.dc, label %bb.et, !prof !18

bb.dc:                                            ; preds = %._crit_edge
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !187
  %i.pp = call i32 %i.po(ptr noundef %3, ptr noundef nonnull %i.b) #8, !inline_history !176
  %i.pq = icmp slt i32 %i.pp, 0
  br i1 %i.pq, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.pr = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.ps = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !64
  %i.pt = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__load_entry, i32 noundef 1046, i64 noundef %i.pr, i64 noundef %i.ps, ptr noundef nonnull @.str.93) #8 ; 0 uses
  br label %bb.et

bb.de:                                            ; preds = %bb.dc
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !71
  %5 = and i32 %i.pv, 1
  %.not.i248 = icmp eq i32 %5, 0
  br i1 %.not.i248, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pw = call fastcc i32 @H5C__verify_len_eoa(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %i.b, i1 noundef zeroext false)
  %i.px = icmp slt i32 %i.pw, 0
  br i1 %i.px, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.py = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.pz = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !64
  %i.qa = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__load_entry, i32 noundef 1052, i64 noundef %i.py, i64 noundef %i.pz, ptr noundef nonnull @.str.94) #8 ; 0 uses
  br label %bb.et

bb.dh:                                            ; preds = %bb.df, %bb.de
  %i.qb = load i64, ptr %i.b, align 8, !tbaa !64  ; 3 uses
  %i.qc = call noalias ptr @malloc(i64 noundef %i.qb) #9 ; 3 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.qe = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.qf = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !64
  %i.qg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__load_entry, i32 noundef 1056, i64 noundef %i.qe, i64 noundef %i.qf, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %bb.et

bb.dj:                                            ; preds = %bb.dh
  %i.qh = load i32, ptr %i.pu, align 4, !tbaa !71
  %i.qi = and i32 %i.qh, 2
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %bb.dk, label %bb.eq

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 %i.qb, ptr %i.c, align 8, !tbaa !64
  %i.qk = call i32 @H5F_get_read_attempts(ptr noundef %0) #8 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.dl

bb.dl:                                            ; preds = %bb.ek, %bb.dk
  %.0129.i = phi ptr [ %i.qc, %bb.dk ], [ %.3132.i, %bb.ek ] ; 4 uses
  %.0123.i = phi i32 [ %i.qk, %bb.dk ], [ %i.sz, %bb.ek ] ; 4 uses
  %.0121.i = phi i64 [ 1, %bb.dk ], [ %.1122.i, %bb.ek ] ; 3 uses
  %.0120.i = phi i1 [ true, %bb.dk ], [ %.2.i, %bb.ek ] ; 2 uses
  %i.qo = load i64, ptr %i.c, align 8, !tbaa !64  ; 2 uses
  %i.qp = load i64, ptr %i.b, align 8, !tbaa !64  ; 3 uses
  %.not150.i = icmp eq i64 %i.qo, %i.qp
  br i1 %.not150.i, label %bb.dq, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qq = icmp eq i64 %i.qp, 0
  br i1 %i.qq, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.qr = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.qs = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !64
  %i.qt = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__load_entry, i32 noundef 1094, i64 noundef %i.qr, i64 noundef %i.qs, ptr noundef nonnull @.str.95) #8 ; 0 uses
  br label %.thread158.i

bb.do:                                            ; preds = %bb.dm
  %i.qu = call ptr @H5MM_realloc(ptr noundef %.0129.i, i64 noundef %i.qp) #8 ; 2 uses
  %i.qv = icmp eq ptr %i.qu, null
  br i1 %i.qv, label %bb.dp, label %._crit_edge.i249

._crit_edge.i249:                                 ; preds = %bb.do
  %.pre.i250 = load i64, ptr %i.b, align 8, !tbaa !64
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.qw = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.qx = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !64
  %i.qy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__load_entry, i32 noundef 1097, i64 noundef %i.qw, i64 noundef %i.qx, ptr noundef nonnull @.str.96) #8 ; 0 uses
  br label %.thread158.i

bb.dq:                                            ; preds = %._crit_edge.i249, %bb.dl
  %i.qz = phi i64 [ %i.qo, %bb.dl ], [ %.pre.i250, %._crit_edge.i249 ]
  %.1130.i = phi ptr [ %.0129.i, %bb.dl ], [ %i.qu, %._crit_edge.i249 ] ; 10 uses
  %i.ra = load i32, ptr %i.ql, align 8, !tbaa !74
  %i.rb = call i32 @H5F_block_read(ptr noundef %0, i32 noundef %i.ra, i64 noundef %2, i64 noundef %i.qz, ptr noundef %.1130.i) #8
  %i.rc = icmp slt i32 %i.rb, 0
  br i1 %i.rc, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.rd = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.re = load i64, ptr @H5E_READERROR_g, align 8, !tbaa !64
  %i.rf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__load_entry, i32 noundef 1117, i64 noundef %i.rd, i64 noundef %i.re, ptr noundef nonnull @.str.97) #8 ; 0 uses
  br label %.thread158.i

bb.ds:                                            ; preds = %bb.dq
  %i.rg = load i32, ptr %i.pu, align 4, !tbaa !71
  %i.rh = trunc i32 %i.rg to i1
  %or.cond.i251 = select i1 %i.rh, i1 %.0120.i, i1 false
  br i1 %or.cond.i251, label %bb.dt, label %bb.ef

bb.dt:                                            ; preds = %bb.ds
  %i.ri = load i64, ptr %i.b, align 8, !tbaa !64  ; 2 uses
  store i64 %i.ri, ptr %i.c, align 8, !tbaa !64
  %i.rj = load ptr, ptr %i.qm, align 8, !tbaa !188
  %i.rk = call i32 %i.rj(ptr noundef %.1130.i, i64 noundef %i.ri, ptr noundef %3, ptr noundef nonnull %i.c) #8, !inline_history !176
  %i.rl = icmp slt i32 %i.rk, 0
  br i1 %i.rl, label %bb.ek, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.rm = load i64, ptr %i.c, align 8, !tbaa !64  ; 2 uses
  %i.rn = load i64, ptr %i.b, align 8, !tbaa !64
  %.not151.i = icmp eq i64 %i.rm, %i.rn
  br i1 %.not151.i, label %bb.ee, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ro = call fastcc i32 @H5C__verify_len_eoa(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %i.c, i1 noundef zeroext true)
  %i.rp = icmp slt i32 %i.ro, 0
  br i1 %i.rp, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.rq = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.rr = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !64
  %i.rs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__load_entry, i32 noundef 1148, i64 noundef %i.rq, i64 noundef %i.rr, ptr noundef nonnull @.str.98) #8 ; 0 uses
  br label %.thread158.i

bb.dx:                                            ; preds = %bb.dv
  %i.rt = load i64, ptr %i.c, align 8, !tbaa !64  ; 2 uses
  %i.ru = icmp eq i64 %i.rt, 0
  br i1 %i.ru, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.rv = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.rw = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !64
  %i.rx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__load_entry, i32 noundef 1152, i64 noundef %i.rv, i64 noundef %i.rw, ptr noundef nonnull @.str.99) #8 ; 0 uses
  br label %.thread158.i

bb.dz:                                            ; preds = %bb.dx
  %i.ry = call ptr @H5MM_realloc(ptr noundef %.1130.i, i64 noundef %i.rt) #8 ; 5 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.sa = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.sb = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !64
  %i.sc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__load_entry, i32 noundef 1156, i64 noundef %i.sa, i64 noundef %i.sb, ptr noundef nonnull @.str.96) #8 ; 0 uses
  br label %.thread158.i

bb.eb:                                            ; preds = %bb.dz
  %i.sd = load i64, ptr %i.c, align 8, !tbaa !64  ; 2 uses
  %i.se = load i64, ptr %i.b, align 8, !tbaa !64  ; 4 uses
  %i.sf = icmp ugt i64 %i.sd, %i.se
  br i1 %i.sf, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.sg = load i32, ptr %i.ql, align 8, !tbaa !74
  %i.sh = add i64 %i.se, %2
  %i.si = sub nuw i64 %i.sd, %i.se
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.se
  %i.sk = call i32 @H5F_block_read(ptr noundef %0, i32 noundef %i.sg, i64 noundef %i.sh, i64 noundef %i.si, ptr noundef nonnull %i.sj) #8
  %i.sl = icmp slt i32 %i.sk, 0
  br i1 %i.sl, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.sm = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.sn = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !64
  %i.so = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__load_entry, i32 noundef 1180, i64 noundef %i.sm, i64 noundef %i.sn, ptr noundef nonnull @.str.100) #8 ; 0 uses
  br label %.thread158.i

bb.ee:                                            ; preds = %bb.du
  store i64 %i.rm, ptr %i.b, align 8, !tbaa !64
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ec, %bb.eb, %bb.ds
  %.2131.i = phi ptr [ %i.ry, %bb.ec ], [ %i.ry, %bb.eb ], [ %.1130.i, %bb.ee ], [ %.1130.i, %bb.ds ] ; 6 uses
  %.1.i252 = phi i1 [ true, %bb.ec ], [ true, %bb.eb ], [ false, %bb.ee ], [ %.0120.i, %bb.ds ]
  %i.sp = load ptr, ptr %i.qn, align 8, !tbaa !189 ; 2 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %bb.el, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.sr = load i64, ptr %i.c, align 8, !tbaa !64
  %i.ss = call i32 %i.sp(ptr noundef %.2131.i, i64 noundef %i.sr, ptr noundef %3) #8, !inline_history !176 ; 2 uses
  %i.st = icmp slt i32 %i.ss, 0
  br i1 %i.st, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.su = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.sv = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !64
  %i.sw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__load_entry, i32 noundef 1216, i64 noundef %i.su, i64 noundef %i.sv, ptr noundef nonnull @.str.101) #8 ; 0 uses
  br label %.thread158.i

bb.ei:                                            ; preds = %bb.eg
  %i.sx = icmp eq i32 %i.ss, 1
  br i1 %i.sx, label %bb.el, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @H5_nanosleep(i64 noundef %.0121.i) #8
  %i.sy = shl i64 %.0121.i, 1
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.dt
  %.3132.i = phi ptr [ %.1130.i, %bb.dt ], [ %.2131.i, %bb.ej ] ; 2 uses
  %.1122.i = phi i64 [ %.0121.i, %bb.dt ], [ %i.sy, %bb.ej ]
  %.2.i = phi i1 [ true, %bb.dt ], [ %.1.i252, %bb.ej ]
  %i.sz = add i32 %.0123.i, -1                    ; 2 uses
  %.not152.i = icmp eq i32 %i.sz, 0
end_hunk_1
begin_hunk_2_@H5C_unpin_entry:bb.a
  br i1 %i.e, label %bb.b, label %.thread, !prof !18

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.e, !prof !138

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !112
  %i.i = tail call fastcc i32 @H5C__unpin_entry_from_client(ptr noundef %i.h, ptr noundef nonnull %0, i1 noundef zeroext true)
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.l = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !64
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unpin_entry, i32 noundef 3418, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.49) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5C__unpin_entry_from_client(ptr nofree noundef captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !15, !range !16, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !16
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.v, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !104, !range !16, !noundef !17
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.k = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !64
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__unpin_entry_from_client, i32 noundef 211, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.108) #8 ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !120, !range !16, !noundef !17
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.q = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !64
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__unpin_entry_from_client, i32 noundef 213, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.109) #8 ; 0 uses
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 101
  %i.t = load i8, ptr %i.s, align 1, !tbaa !121, !range !16, !noundef !17
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %2, label %bb.h, label %H5C__unpin_entry_real.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.w = load i8, ptr %i.v, align 2, !tbaa !63, !range !16, !noundef !17
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %H5C__unpin_entry_real.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 524792 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !133
  %i.aa = icmp eq ptr %i.z, %1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99 ; 6 uses
  br i1 %i.aa, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !133
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  store ptr null, ptr %i.ad, align 8, !tbaa !100
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !99
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ah = phi ptr [ null, %bb.j ], [ %i.ac, %bb.k ], [ %i.ac, %bb.l ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 524800 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !134
  %i.ak = icmp eq ptr %i.aj, %1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !100 ; 4 uses
  br i1 %i.ak, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !134
  %.not41.i = icmp eq ptr %i.am, null
  br i1 %.not41.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store ptr null, ptr %i.an, align 8, !tbaa !99
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 144
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !100
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 524776 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !145
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !145
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !67 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 524784 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !140
  %i.aw = sub i64 %i.av, %i.at
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !140
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 524824 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !98 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 524832
  store ptr %1, ptr %i.ba, align 8, !tbaa !101
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  store ptr %1, ptr %i.bb, align 8, !tbaa !100
  store ptr %i.ay, ptr %i.ab, align 8, !tbaa !99
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr %1, ptr %i.ax, align 8, !tbaa !98
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 524808 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !102
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !102
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 524816 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !103
  %i.bh = add i64 %i.bg, %i.at
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !103
  br label %H5C__unpin_entry_real.exit

H5C__unpin_entry_real.exit:                       ; preds = %bb.g, %bb.h, %bb.t
  store i8 0, ptr %i.g, align 8, !tbaa !104
  br label %bb.u

bb.u:                                             ; preds = %H5C__unpin_entry_real.exit, %bb.f
  store i8 0, ptr %i.m, align 4, !tbaa !120
  br label %bb.v

bb.v:                                             ; preds = %bb.c, %bb.e, %bb.u, %bb.a
  %.0 = phi i32 [ 0, %bb.u ], [ 0, %bb.a ], [ -1, %bb.e ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5C_unprotect(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !15, !range !16, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !16
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !18

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.cq, !prof !138

bb.c:                                             ; preds = %.thread, %bb.b
  %4 = and i32 %3, 1
  %.not = icmp eq i32 %4, 0
  %i.h = and i32 %3, 4
  %.not204 = icmp eq i32 %i.h, 0                  ; 2 uses
  %i.i = and i32 %3, 8
  %.not205 = icmp eq i32 %i.i, 0                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 22 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.o = load i8, ptr %i.n, align 1, !tbaa !135, !range !16, !noundef !17
  %i.p = zext nneg i8 %i.o to i32
  %i.q = lshr i32 %3, 1
  %.lobit = and i32 %i.q, 1
  %i.r = or i32 %.lobit, %i.p
  %5 = icmp ne i32 %i.r, 0                        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !55, !range !16, !noundef !17 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !119  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  br i1 %5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.z = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !64
  %i.aa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3523, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.50) #8 ; 0 uses
  br label %bb.cq

bb.f:                                             ; preds = %bb.d
  %i.ab = add nsw i32 %i.w, -1
  store i32 %i.ab, ptr %i.v, align 4, !tbaa !119
  br i1 %.not204, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !104, !range !16, !noundef !17
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !120, !range !16, !noundef !17
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %H5C__pin_entry_from_client.exit

bb.i:                                             ; preds = %bb.g
  store i8 1, ptr %i.ac, align 8, !tbaa !104
  br label %H5C__pin_entry_from_client.exit

H5C__pin_entry_from_client.exit:                  ; preds = %bb.h, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i8 1, ptr %i.ai, align 4, !tbaa !120
  br label %bb.cq

bb.j:                                             ; preds = %bb.h
  %i.aj = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.ak = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !64
  %i.al = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__pin_entry_from_client, i32 noundef 133, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.84) #8 ; 0 uses
  %i.am = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.an = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !64
  %i.ao = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3532, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.40) #8 ; 0 uses
  br label %bb.cq

bb.k:                                             ; preds = %bb.f
  br i1 %.not205, label %bb.cq, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !104, !range !16, !noundef !17
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.at = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !64
  %i.au = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__unpin_entry_from_client, i32 noundef 211, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.108) #8 ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !120, !range !16, !noundef !17
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.az = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !64
  %i.ba = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__unpin_entry_from_client, i32 noundef 213, i64 noundef %i.ay, i64 noundef %i.az, ptr noundef nonnull @.str.109) #8 ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 101
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !121, !range !16, !noundef !17
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %H5C__unpin_entry_from_client.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %i.ap, align 8, !tbaa !104
  br label %H5C__unpin_entry_from_client.exit

H5C__unpin_entry_from_client.exit:                ; preds = %bb.p, %bb.q
  store i8 0, ptr %i.av, align 4, !tbaa !120
  br label %bb.cq

bb.r:                                             ; preds = %bb.m, %bb.o
  %i.be = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.bf = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !64
  %i.bg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3537, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.51) #8 ; 0 uses
  br label %bb.cq

bb.s:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 51 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !139, !range !16, !noundef !17
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  br i1 %5, label %bb.u, label %.thread233

bb.u:                                             ; preds = %bb.t
  %i.bk = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.bl = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !64
  %i.bm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3546, i64 noundef %i.bk, i64 noundef %i.bl, ptr noundef nonnull @.str.50) #8 ; 0 uses
  br label %bb.cq

bb.v:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 50 ; 5 uses
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !63, !range !16, !noundef !17
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.x, label %bb.w

.thread233:                                       ; preds = %bb.t
  store i8 0, ptr %i.bh, align 1, !tbaa !139
  store i32 0, ptr %i.v, align 4, !tbaa !119
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 50 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !63, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %.thread234, label %bb.w

.thread234:                                       ; preds = %.thread233
  store i8 %i.t, ptr %i.s, align 8, !tbaa !55
  br label %H5C__mark_flush_dep_unserialized.exit

bb.w:                                             ; preds = %.thread233, %bb.v
  %i.bt = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.bu = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !64
  %i.bv = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3579, i64 noundef %i.bt, i64 noundef %i.bu, ptr noundef nonnull @.str.52) #8 ; 0 uses
  br label %bb.cq

bb.x:                                             ; preds = %bb.v
  %i.bw = select i1 %i.u, i1 true, i1 %5
  %i.bx = zext i1 %i.bw to i8
  store i8 %i.bx, ptr %i.s, align 8, !tbaa !55
  br i1 %5, label %bb.y, label %H5C__mark_flush_dep_unserialized.exit

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !68, !range !16, !noundef !17
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.z, label %H5C__mark_flush_dep_unserialized.exit

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.by, align 8, !tbaa !68
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !107 ; 2 uses
  %.not208 = icmp eq i32 %i.cc, 0
  br i1 %.not208, label %H5C__mark_flush_dep_unserialized.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.i
  %i.ce = phi i32 [ %i.cc, %.lr.ph.i ], [ %i.cr, %bb.ac ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ac ] ; 2 uses
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !109
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !79 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !117
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !117
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !69
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !76 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = tail call i32 %i.co(i32 noundef 8, ptr noundef nonnull %i.ch) #8, !inline_history !136
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.ad, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ab
  %.pre.i = load i32, ptr %i.cb, align 8, !tbaa !107
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i, %bb.aa
  %i.cr = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.ce, %bb.aa ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp samesign ult i64 %indvars.iv.next.i, %i.cs
  br i1 %i.ct, label %bb.aa, label %H5C__mark_flush_dep_unserialized.exit, !llvm.loop !4

bb.ad:                                            ; preds = %bb.ab
  %i.cu = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.cv = load i64, ptr @H5E_CANTNOTIFY_g, align 8, !tbaa !64
  %i.cw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__mark_flush_dep_unserialized, i32 noundef 1527, i64 noundef %i.cu, i64 noundef %i.cv, ptr noundef nonnull @.str.62) #8 ; 0 uses
  %i.cx = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.cy = load i64, ptr @H5E_CANTNOTIFY_g, align 8, !tbaa !64
  %i.cz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3588, i64 noundef %i.cx, i64 noundef %i.cy, ptr noundef nonnull @.str.24) #8 ; 0 uses
  br label %bb.cq

H5C__mark_flush_dep_unserialized.exit:            ; preds = %bb.ac, %.thread234, %bb.z, %bb.y, %bb.x
  %i.da = phi ptr [ %i.bq, %.thread234 ], [ %i.bn, %bb.z ], [ %i.bn, %bb.x ], [ %i.bn, %bb.y ], [ %i.bn, %bb.ac ]
  %i.db = load i8, ptr %i.s, align 8, !tbaa !55, !range !16, !noundef !17
  %i.dc = trunc nuw i8 %i.db to i1                ; 2 uses
  br i1 %i.u, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %H5C__mark_flush_dep_unserialized.exit
  br i1 %i.dc, label %bb.af, label %H5C__mark_flush_dep_clean.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !67 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 168 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !106
  %i.dh = sub i64 %i.dg, %i.de
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !106
  %i.di = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !82
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dl ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !64
  %i.do = sub i64 %i.dn, %i.de
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !64
  %i.dp = load i64, ptr %i.dd, align 8, !tbaa !67 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 224 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !105
  %i.ds = add i64 %i.dr, %i.dp
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !105
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dl ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !64
  %i.dw = add i64 %i.dv, %i.dp
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !64
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 80
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !76 ; 2 uses
  %.not211 = icmp eq ptr %i.ea, null
  br i1 %.not211, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = tail call i32 %i.ea(i32 noundef 4, ptr noundef nonnull %2) #8
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.ee = load i64, ptr @H5E_CANTNOTIFY_g, align 8, !tbaa !64
  %i.ef = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3603, i64 noundef %i.ed, i64 noundef %i.ee, ptr noundef nonnull @.str.25) #8 ; 0 uses
  br label %bb.cq

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !107
  %.not212 = icmp eq i32 %i.eh, 0
  br i1 %.not212, label %H5C__mark_flush_dep_clean.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %6 = tail call fastcc i32 @H5C__mark_flush_dep_dirty(ptr noundef nonnull %2)
  %i.ei = icmp slt i32 %6, 0
  br i1 %i.ei, label %bb.ak, label %H5C__mark_flush_dep_clean.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ej = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.ek = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !64
  %i.el = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3610, i64 noundef %i.ej, i64 noundef %i.ek, ptr noundef nonnull @.str.26) #8 ; 0 uses
  br label %bb.cq

.critedge:                                        ; preds = %H5C__mark_flush_dep_unserialized.exit
  br i1 %i.dc, label %H5C__mark_flush_dep_clean.exit.thread, label %bb.al

bb.al:                                            ; preds = %.critedge
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !69
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 80
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !76 ; 2 uses
  %.not209 = icmp eq ptr %i.ep, null
  br i1 %.not209, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = tail call i32 %i.ep(i32 noundef 5, ptr noundef nonnull %2) #8
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.es = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.et = load i64, ptr @H5E_CANTNOTIFY_g, align 8, !tbaa !64
  %i.eu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3622, i64 noundef %i.es, i64 noundef %i.et, ptr noundef nonnull @.str.9) #8 ; 0 uses
  br label %bb.cq

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !107 ; 3 uses
  %.not210 = icmp eq i32 %i.ew, 0
  br i1 %.not210, label %H5C__mark_flush_dep_clean.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ex = load i8, ptr @H5C_init_g, align 1, !tbaa !15, !range !16, !noundef !17
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = load i8, ptr @H5_libterm_g, align 1, !range !16
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = xor i1 %i.fa, true
  %i.fc = select i1 %i.ey, i1 true, i1 %i.fb
  %i.fd = icmp sgt i32 %i.ew, 0
  %or.cond = and i1 %i.fd, %i.fc
  br i1 %or.cond, label %.lr.ph.i223, label %H5C__mark_flush_dep_clean.exit.thread, !prof !108

.lr.ph.i223:                                      ; preds = %bb.ap
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ff = zext nneg i32 %i.ew to i64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %.lr.ph.i223
  %indvars.iv.i224 = phi i64 [ %i.ff, %.lr.ph.i223 ], [ %indvars.iv.next.i225, %bb.as ] ; 2 uses
  %indvars.iv.next.i225 = add nsw i64 %indvars.iv.i224, -1 ; 2 uses
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !109
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next.i225
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !79 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 92 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !110
  %i.fl = add i32 %i.fk, -1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !110
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !69
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 80
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !76 ; 2 uses
  %.not.i226 = icmp eq ptr %i.fp, null
  br i1 %.not.i226, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fq = tail call i32 %i.fp(i32 noundef 7, ptr noundef nonnull %i.fi) #8, !inline_history !0
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fs = icmp samesign ugt i64 %indvars.iv.i224, 1
  br i1 %i.fs, label %bb.aq, label %H5C__mark_flush_dep_clean.exit.thread, !llvm.loop !1

bb.at:                                            ; preds = %bb.ar
  %i.ft = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.fu = load i64, ptr @H5E_CANTNOTIFY_g, align 8, !tbaa !64
  %i.fv = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__mark_flush_dep_clean, i32 noundef 1437, i64 noundef %i.ft, i64 noundef %i.fu, ptr noundef nonnull @.str.68) #8 ; 0 uses
  %i.fw = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.fx = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !64
  %i.fy = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3629, i64 noundef %i.fw, i64 noundef %i.fx, ptr noundef nonnull @.str.26) #8 ; 0 uses
  br label %bb.cq

H5C__mark_flush_dep_clean.exit.thread:            ; preds = %bb.as, %bb.ap, %bb.ae, %.critedge, %bb.ao, %bb.ai, %bb.aj
  br i1 %.not204, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %H5C__mark_flush_dep_clean.exit.thread
  %i.fz = load i8, ptr @H5C_init_g, align 1, !tbaa !15, !range !16, !noundef !17
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = load i8, ptr @H5_libterm_g, align 1, !range !16
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = xor i1 %i.gc, true
  %i.ge = select i1 %i.ga, i1 true, i1 %i.gd
  br i1 %i.ge, label %bb.av, label %H5C__unpin_entry_from_client.exit230, !prof !18

bb.av:                                            ; preds = %bb.au
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !104, !range !16, !noundef !17
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.gj = load i8, ptr %i.gi, align 4, !tbaa !120, !range !16, !noundef !17
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.az, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  store i8 1, ptr %i.gf, align 8, !tbaa !104
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i8 1, ptr %i.gl, align 4, !tbaa !120
  br label %H5C__unpin_entry_from_client.exit230

bb.az:                                            ; preds = %bb.aw
  %i.gm = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.gn = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !64
  %i.go = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__pin_entry_from_client, i32 noundef 133, i64 noundef %i.gm, i64 noundef %i.gn, ptr noundef nonnull @.str.84) #8 ; 0 uses
  %i.gp = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.gq = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !64
  %i.gr = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3636, i64 noundef %i.gp, i64 noundef %i.gq, ptr noundef nonnull @.str.40) #8 ; 0 uses
  br label %bb.cq

bb.ba:                                            ; preds = %H5C__mark_flush_dep_clean.exit.thread
  br i1 %.not205, label %H5C__unpin_entry_from_client.exit230, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gs = load i8, ptr @H5C_init_g, align 1, !tbaa !15, !range !16, !noundef !17
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = load i8, ptr @H5_libterm_g, align 1, !range !16
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = xor i1 %i.gv, true
  %i.gx = select i1 %i.gt, i1 true, i1 %i.gw
  br i1 %i.gx, label %bb.bc, label %H5C__unpin_entry_from_client.exit230, !prof !18

bb.bc:                                            ; preds = %bb.bb
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 8, !tbaa !104, !range !16, !noundef !17
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hb = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.hc = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !64
  %i.hd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__unpin_entry_from_client, i32 noundef 211, i64 noundef %i.hb, i64 noundef %i.hc, ptr noundef nonnull @.str.108) #8 ; 0 uses
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 4, !tbaa !120, !range !16, !noundef !17
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hh = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.hi = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !64
  %i.hj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C__unpin_entry_from_client, i32 noundef 213, i64 noundef %i.hh, i64 noundef %i.hi, ptr noundef nonnull @.str.109) #8 ; 0 uses
  br label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 101
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !121, !range !16, !noundef !17
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i8 0, ptr %i.gy, align 8, !tbaa !104
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store i8 0, ptr %i.he, align 4, !tbaa !120
  br label %H5C__unpin_entry_from_client.exit230

bb.bj:                                            ; preds = %bb.bf, %bb.bd
  %i.hn = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.ho = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !64
  %i.hp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3641, i64 noundef %i.hn, i64 noundef %i.ho, ptr noundef nonnull @.str.51) #8 ; 0 uses
  br label %bb.cq

H5C__unpin_entry_from_client.exit230:             ; preds = %bb.au, %bb.ay, %bb.bi, %bb.bb, %bb.ba
  %i.hq = getelementptr inbounds nuw i8, ptr %i.m, i64 524760 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !142
  %i.hs = icmp eq ptr %i.hr, %2
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !99 ; 6 uses
  br i1 %i.hs, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %H5C__unpin_entry_from_client.exit230
  store ptr %i.hu, ptr %i.hq, align 8, !tbaa !142
  %.not213 = icmp eq ptr %i.hu, null
  br i1 %.not213, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 144
  store ptr null, ptr %i.hv, align 8, !tbaa !100
  br label %bb.bn

bb.bm:                                            ; preds = %H5C__unpin_entry_from_client.exit230
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !100
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 136
  store ptr %i.hu, ptr %i.hy, align 8, !tbaa !99
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.hz = phi ptr [ null, %bb.bk ], [ %i.hu, %bb.bl ], [ %i.hu, %bb.bm ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.m, i64 524768 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !143
  %i.ic = icmp eq ptr %i.ib, %2
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !100 ; 4 uses
  br i1 %i.ic, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.ie, ptr %i.ia, align 8, !tbaa !143
  %.not214 = icmp eq ptr %i.ie, null
  br i1 %.not214, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 136
  store ptr null, ptr %i.if, align 8, !tbaa !99
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 144
  store ptr %i.ie, ptr %i.ig, align 8, !tbaa !100
  br label %bb.br

bb.br:                                            ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.m, i64 524744 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !144
  %i.ik = add i32 %i.ij, -1
  store i32 %i.ik, ptr %i.ii, align 8, !tbaa !144
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !67 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.m, i64 524752 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !141
  %i.ip = sub i64 %i.io, %i.im
  store i64 %i.ip, ptr %i.in, align 8, !tbaa !141
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !104, !range !16, !noundef !17
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.it = getelementptr inbounds nuw i8, ptr %i.m, i64 524792 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !133 ; 3 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.iw = getelementptr inbounds nuw i8, ptr %i.m, i64 524800
  store ptr %2, ptr %i.iw, align 8, !tbaa !134
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 144
  store ptr %2, ptr %i.ix, align 8, !tbaa !100
  store ptr %i.iu, ptr %i.ih, align 8, !tbaa !99
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  store ptr %2, ptr %i.it, align 8, !tbaa !133
  br label %bb.ca

bb.bw:                                            ; preds = %bb.br
  %i.iy = getelementptr inbounds nuw i8, ptr %i.m, i64 524824 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !98 ; 3 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jb = getelementptr inbounds nuw i8, ptr %i.m, i64 524832
  store ptr %2, ptr %i.jb, align 8, !tbaa !101
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 144
  store ptr %2, ptr %i.jc, align 8, !tbaa !100
  store ptr %i.iz, ptr %i.ih, align 8, !tbaa !99
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  store ptr %2, ptr %i.iy, align 8, !tbaa !98
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bv
  %.sink265 = phi i64 [ 524808, %bb.bz ], [ 524776, %bb.bv ]
  %.sink262 = phi i64 [ 524816, %bb.bz ], [ 524784, %bb.bv ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sink265 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !83
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 8, !tbaa !83
  %i.jg = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sink262 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !64
  %i.ji = add i64 %i.jh, %i.im
  store i64 %i.ji, ptr %i.jg, align 8, !tbaa !64
  store i8 0, ptr %i.da, align 2, !tbaa !63
  %i.jj = load i8, ptr %i.s, align 8, !tbaa !55, !range !16, !noundef !17
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 57 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !92, !range !16, !noundef !17
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jo = getelementptr inbounds nuw i8, ptr %i.m, i64 524624
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !93, !range !16, !noundef !17
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.jr = getelementptr inbounds nuw i8, ptr %i.m, i64 524712
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !94
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ju = tail call i32 @H5SL_insert(ptr noundef %i.js, ptr noundef nonnull %2, ptr noundef nonnull %i.jt) #8
  %i.jv = icmp slt i32 %i.ju, 0
  br i1 %i.jv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.jw = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.jx = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !64
  %i.jy = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3654, i64 noundef %i.jw, i64 noundef %i.jx, ptr noundef nonnull @.str.22) #8 ; 0 uses
  br label %bb.cq

bb.cf:                                            ; preds = %bb.cd
  store i8 1, ptr %i.jl, align 1, !tbaa !92
  %i.jz = getelementptr inbounds nuw i8, ptr %i.m, i64 524625
  store i8 1, ptr %i.jz, align 1, !tbaa !95
  %i.ka = getelementptr inbounds nuw i8, ptr %i.m, i64 524628 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !96
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ka, align 4, !tbaa !96
  %i.kd = load i64, ptr %i.il, align 8, !tbaa !67 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.m, i64 524632 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !97
  %i.kg = add i64 %i.kf, %i.kd
  store i64 %i.kg, ptr %i.ke, align 8, !tbaa !97
  %i.kh = getelementptr inbounds nuw i8, ptr %i.m, i64 524640
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !82
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.kk ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !83
  %i.kn = add i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 4, !tbaa !83
  %i.ko = getelementptr inbounds nuw i8, ptr %i.m, i64 524664
  %i.kp = load i32, ptr %i.ki, align 8, !tbaa !82
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.kq ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !64
  %i.kt = add i64 %i.ks, %i.kd
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !64
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cc, %bb.cb, %bb.ca
  br i1 %.not, label %bb.cq, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ku = lshr i64 %1, 3
  %i.kv = and i64 %i.ku, 65535
  %i.kw = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.kv ; 4 uses
  %.0191240 = load ptr, ptr %i.kx, align 8, !tbaa !79 ; 3 uses
  %cond241 = icmp eq ptr %.0191240, null
  %.not216 = icmp eq i64 %1, -1
  %or.cond266 = or i1 %cond241, %.not216
  br i1 %or.cond266, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.ch, %bb.cl
  %.0191242 = phi ptr [ %.0191, %bb.cl ], [ %.0191240, %bb.ch ] ; 9 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.0191242, i64 8
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !75
  %i.la = icmp eq i64 %1, %i.kz
  br i1 %i.la, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %.lr.ph.split
  %.not217 = icmp eq ptr %.0191242, %.0191240
  br i1 %.not217, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lb = getelementptr inbounds nuw i8, ptr %.0191242, i64 104 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !77 ; 3 uses
  %.not218 = icmp eq ptr %i.lc, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0191242, i64 112
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !78 ; 2 uses
  br i1 %.not218, label %._crit_edge245, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 112
  store ptr %.pre, ptr %i.ld, align 8, !tbaa !78
  br label %._crit_edge245

._crit_edge245:                                   ; preds = %bb.cj, %bb.ck
  %i.le = getelementptr inbounds nuw i8, ptr %.0191242, i64 112
  %i.lf = getelementptr inbounds nuw i8, ptr %.pre, i64 104
  store ptr %i.lc, ptr %i.lf, align 8, !tbaa !77
  %i.lg = load ptr, ptr %i.kx, align 8, !tbaa !79
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 112
  store ptr %.0191242, ptr %i.lh, align 8, !tbaa !78
  %i.li = load ptr, ptr %i.kx, align 8, !tbaa !79
  store ptr %i.li, ptr %i.lb, align 8, !tbaa !77
  store ptr null, ptr %i.le, align 8, !tbaa !78
  store ptr %.0191242, ptr %i.kx, align 8, !tbaa !79
  br label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.split
  %i.lj = getelementptr inbounds nuw i8, ptr %.0191242, i64 104
  %.0191 = load ptr, ptr %i.lj, align 8, !tbaa !79 ; 2 uses
  %cond = icmp eq ptr %.0191, null
  br i1 %cond, label %._crit_edge, label %.lr.ph.split, !llvm.loop !196

._crit_edge:                                      ; preds = %bb.cl, %bb.ch
  %i.lk = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.ll = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !64
  %i.lm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3668, i64 noundef %i.lk, i64 noundef %i.ll, ptr noundef nonnull @.str.53) #8 ; 0 uses
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ci, %._crit_edge245
  %.not219 = icmp eq ptr %.0191242, %2
  br i1 %.not219, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ln = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.lo = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !64
  %i.lp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3671, i64 noundef %i.ln, i64 noundef %i.lo, ptr noundef nonnull @.str.54) #8 ; 0 uses
  br label %bb.cq

bb.co:                                            ; preds = %bb.cm
  %i.lq = and i32 %3, 768
  %i.lr = or disjoint i32 %i.lq, 8240
  %i.ls = tail call i32 @H5C__flush_single_entry(ptr noundef %0, ptr noundef %2, i32 noundef %i.lr)
  %i.lt = icmp slt i32 %i.ls, 0
  br i1 %i.lt, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.lu = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.lv = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !64
  %i.lw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unprotect, i32 noundef 3687, i64 noundef %i.lu, i64 noundef %i.lv, ptr noundef nonnull @.str.55) #8 ; 0 uses
  br label %bb.cq

bb.cq:                                            ; preds = %H5C__unpin_entry_from_client.exit, %H5C__pin_entry_from_client.exit, %bb.b, %bb.cg, %bb.k, %bb.ce, %bb.bj, %bb.az, %bb.at, %bb.an, %bb.ak, %bb.ah, %bb.ad, %bb.w, %bb.u, %bb.r, %bb.j, %bb.e, %bb.co, %bb.cp, %bb.cn, %._crit_edge
  %.1190 = phi i32 [ -1, %bb.e ], [ -1, %bb.j ], [ 0, %H5C__pin_entry_from_client.exit ], [ -1, %bb.r ], [ 0, %H5C__unpin_entry_from_client.exit ], [ 0, %bb.k ], [ -1, %bb.u ], [ -1, %bb.ad ], [ -1, %bb.ah ], [ -1, %bb.ak ], [ -1, %bb.az ], [ 0, %bb.b ], [ -1, %bb.w ], [ 0, %bb.cg ], [ -1, %bb.ce ], [ -1, %bb.bj ], [ -1, %bb.an ], [ -1, %bb.at ], [ -1, %._crit_edge ], [ -1, %bb.cn ], [ -1, %bb.cp ], [ 0, %bb.co ]
  ret i32 %.1190
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5C_unsettle_entry_ring(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !15, !range !16, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !16
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !18

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.n, !prof !138

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !112    ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !82
  switch i32 %i.j, label %bb.n [
    i32 3, label %bb.i
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 527720 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !197, !range !16, !noundef !17
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.h, align 8, !tbaa !198, !range !16, !noundef !17
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 81
  %i.q = load i8, ptr %i.p, align 1, !tbaa !62, !range !16, !noundef !17
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.s = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.t = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !64
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unsettle_entry_ring, i32 noundef 3765, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.56) #8 ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %i.k, align 8, !tbaa !197
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 527721 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !199, !range !16, !noundef !17
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.y = load i8, ptr %i.h, align 8, !tbaa !198, !range !16, !noundef !17
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 81
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62, !range !16, !noundef !17
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ad = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !64
  %i.ae = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !64
  %i.af = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5C_unsettle_entry_ring, i32 noundef 3773, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.57) #8 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i8 0, ptr %i.v, align 1, !tbaa !199
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.l, %bb.c, %bb.i, %bb.m, %bb.d, %bb.h, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.l ], [ 0, %bb.m ], [ 0, %bb.i ], [ -1, %bb.g ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5C_create_flush_dependency(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !15, !range !16, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !16
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !18

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.y, !prof !138

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !112
  %i.i = icmp eq ptr %1, %0
  br i1 %i.i, label %bb.d, label %bb.e

end_hunk_2
