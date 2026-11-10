Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/formatting?download=true
inline.NumInlined: 373
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@float8_to_char:bb.a
bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.z = tail call ptr @cstring_to_text(ptr noundef nonnull @.str.17) #16
  br label %bb.ac

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.aa = shl nsw i64 %.0.i, 3
  %i.ab = and i64 %i.aa, 4294967288
  %i.ac = or disjoint i64 %i.ab, 5
  %i.ad = tail call ptr @palloc0(i64 noundef %i.ac) #16 ; 3 uses
  %i.ae = call fastcc ptr @NUM_cache(i32 noundef %i.x, ptr noundef %1, ptr noundef nonnull %i.g, ptr noundef %i.a) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %i.ah = and i32 %i.ag, 1024
  %.not78 = icmp eq i32 %i.ah, 0
  br i1 %.not78, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call double @llvm.rint.f64(double %i.c) ; 3 uses
  %i.aj = fcmp oge double %i.ai, f0xC1E0000000000000
  %i.ak = fcmp olt double %i.ai, f0x41E0000000000000
  %or.cond5 = and i1 %i.aj, %i.ak
  %i.al = fptosi double %i.ai to i32
  %.062 = select i1 %or.cond5, i32 %i.al, i32 2147483647
  %i.am = tail call fastcc ptr @int_to_roman(i32 noundef %.062)
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  %i.an = and i32 %i.ag, 16384
  %.not79 = icmp eq i32 %i.an, 0
  br i1 %.not79, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call double @llvm.fabs.f64(double %i.c)
  %or.cond83 = fcmp ueq double %i.ao, +inf
  br i1 %or.cond83, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %1, align 4               ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = add i32 %i.ap, 7
  %i.at = add i32 %i.as, %i.ar
  %i.au = sext i32 %i.at to i64
  %i.av = tail call ptr @palloc(i64 noundef %i.au) #16 ; 5 uses
  %i.aw = add i32 %i.ap, 6
  %i.ax = add i32 %i.aw, %i.ar
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 35, i64 %i.ay, i1 false)
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  store i8 0, ptr %i.az, align 1
  store i8 32, ptr %i.av, align 1
  %i.ba = sext i32 %i.ap to i64
  %i.bb = getelementptr inbounds i8, ptr %i.av, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 46, ptr %i.bc, align 1
  br label %bb.z

bb.l:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.21, i32 noundef %i.be, double noundef %i.c) #16 ; 4 uses
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 43
  br i1 %i.bh, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  store i8 32, ptr %i.bf, align 1
  br label %bb.z

bb.n:                                             ; preds = %bb.i
  %i.bi = and i32 %i.ag, 2048
  %.not80 = icmp eq i32 %i.bi, 0
  br i1 %.not80, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = tail call double @pow(double noundef 1.000000e+01, double noundef %i.bl) #16
  %i.bn = fmul double %i.c, %i.bm
  %i.bo = load i32, ptr %1, align 4
  %i.bp = add i32 %i.bo, %i.bk
  store i32 %i.bp, ptr %1, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.061 = phi double [ %i.bn, %bb.o ], [ %i.c, %bb.n ] ; 2 uses
  %i.bq = tail call double @llvm.fabs.f64(double %.061)
  %i.br = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.22, double noundef %i.bq) #16
  %i.bs = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.br) #17 ; 3 uses
  %i.bt = icmp ugt i64 %i.bs, 14
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br i1 %i.bt, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = add nsw i64 %i.bs, %i.bw
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = trunc nuw nsw i64 %i.bs to i32
  %i.ca = sub nuw nsw i32 15, %i.bz
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.r
  %.sink = phi i32 [ %i.ca, %bb.r ], [ 0, %bb.p ] ; 2 uses
  store i32 %.sink, ptr %i.bu, align 4
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.q
  %i.cb = phi i32 [ %i.bv, %bb.q ], [ %.sink, %.sink.split ] ; 3 uses
  %i.cc = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.23, i32 noundef %i.cb, double noundef %.061) #16 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = icmp eq i8 %i.cd, 45                    ; 2 uses
  %.066 = select i1 %i.ce, i32 45, i32 43         ; 3 uses
  %.064.idx = zext i1 %i.ce to i64
  %.064 = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.064.idx ; 5 uses
  %i.cf = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.064, i32 noundef 46) #17 ; 2 uses
  %.not81 = icmp eq ptr %i.cf, null
  br i1 %.not81, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %.064 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.064) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.060 = phi i64 [ %i.ci, %bb.t ], [ %i.cj, %bb.u ] ; 3 uses
  %i.ck = load i32, ptr %1, align 4               ; 4 uses
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %i.cm = icmp ult i64 %.060, %i.cl
  br i1 %i.cm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cn = trunc i64 %.060 to i32
  %i.co = sub i32 %i.ck, %i.cn
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.cp = icmp ugt i64 %.060, %i.cl
  br i1 %i.cp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cq = add i32 %i.ck, 2
  %i.cr = add i32 %i.cq, %i.cb
  %i.cs = sext i32 %i.cr to i64
  %i.ct = tail call ptr @palloc(i64 noundef %i.cs) #16 ; 4 uses
  %i.cu = add i32 %i.ck, 1
  %i.cv = add i32 %i.cu, %i.cb
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ct, i8 35, i64 %i.cw, i1 false)
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %i.cw
  store i8 0, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds i8, ptr %i.ct, i64 %i.cl
  store i8 46, ptr %i.cy, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.x, %bb.h, %bb.k, %bb.m, %bb.l
  %.169 = phi i32 [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.l ], [ %i.co, %bb.w ], [ 0, %bb.y ], [ 0, %bb.x ]
  %.167 = phi i32 [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.l ], [ %.066, %bb.w ], [ %.066, %bb.y ], [ %.066, %bb.x ]
  %.2 = phi ptr [ %i.am, %bb.h ], [ %i.av, %bb.k ], [ %i.bf, %bb.m ], [ %i.bf, %bb.l ], [ %.064, %bb.w ], [ %i.ct, %bb.y ], [ %.064, %bb.x ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  call fastcc void @NUM_processor(ptr noundef %i.ae, ptr noundef %1, ptr noundef nonnull %i.cz, ptr noundef %.2, i64 noundef 0, i32 noundef %.169, i32 noundef %.167, i1 noundef zeroext true)
  %i.da = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @pfree(ptr noundef %i.ae) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cz) #17
  %i.dd = trunc i64 %i.dc to i32
  %i.de = shl i32 %i.dd, 2
  %i.df = add i32 %i.de, 16
  store i32 %i.df, ptr %i.ad, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.f, %bb.ab
  %.1.in = phi ptr [ %i.ad, %bb.ab ], [ %i.z, %bb.f ]
  %.1 = ptrtoint ptr %.1.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i64 %.1
}

declare i64 @mul_size(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @DCH_to_char(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  tail call void @cache_locale_time() #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.hv, %bb.a
  %.0614 = phi ptr [ %0, %bb.a ], [ %i.aki, %bb.hv ] ; 46 uses
  %.0613 = phi ptr [ %3, %bb.a ], [ %.1, %bb.hv ] ; 215 uses
  %i.k = load i32, ptr %.0614, align 8
  switch i32 %i.k, label %bb.d [
    i32 1, label %bb.c
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %.0613, align 1
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.0614, i64 4
  %i.m = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.l) #16 ; 0 uses
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.0614, i64 16 ; 13 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 8              ; 7 uses
  switch i32 %i.q, label %bb.hv [
    i32 1, label %bb.f
    i32 40, label %bb.f
    i32 3, label %bb.g
    i32 41, label %bb.g
    i32 59, label %bb.h
    i32 94, label %bb.h
    i32 61, label %bb.i
    i32 95, label %bb.i
    i32 23, label %bb.j
    i32 22, label %bb.j
    i32 21, label %bb.l
    i32 32, label %bb.n
    i32 46, label %bb.p
    i32 14, label %bb.r
    i32 15, label %bb.t
    i32 16, label %bb.v
    i32 36, label %bb.v
    i32 17, label %bb.x
    i32 18, label %bb.z
    i32 19, label %bb.ab
    i32 50, label %bb.ab
    i32 45, label %bb.ad
    i32 103, label %bb.af
    i32 49, label %bb.aj
    i32 47, label %bb.an
    i32 48, label %bb.aq
    i32 39, label %bb.at
    i32 0, label %bb.ax
    i32 4, label %bb.ax
    i32 2, label %bb.ba
    i32 5, label %bb.ba
    i32 58, label %bb.bd
    i32 62, label %bb.bd
    i32 60, label %bb.bg
    i32 63, label %bb.bg
    i32 34, label %bb.bj
    i32 37, label %bb.br
    i32 90, label %bb.bz
    i32 35, label %bb.ch
    i32 38, label %bb.co
    i32 91, label %bb.cw
    i32 33, label %bb.dd
    i32 7, label %bb.dh
    i32 11, label %bb.do
    i32 65, label %bb.dv
    i32 10, label %bb.ec
    i32 12, label %bb.ei
    i32 68, label %bb.ep
    i32 8, label %bb.ev
    i32 24, label %bb.ev
    i32 9, label %bb.fa
    i32 13, label %bb.fc
    i32 25, label %bb.fg
    i32 51, label %bb.fk
    i32 26, label %bb.fm
    i32 42, label %bb.fo
    i32 6, label %bb.fr
    i32 53, label %bb.gb
    i32 54, label %bb.gd
    i32 27, label %bb.gd
    i32 55, label %bb.gm
    i32 28, label %bb.gm
    i32 56, label %bb.gv
    i32 29, label %bb.gv
    i32 31, label %bb.ht
    i32 52, label %bb.hr
    i32 43, label %bb.hk
    i32 97, label %bb.hk
    i32 57, label %bb.he
    i32 30, label %bb.hg
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = load i64, ptr %i.h, align 8
  %i.s = srem i64 %i.r, 24
  %i.t = icmp sgt i64 %i.s, 11
  %i.u = select i1 %i.t, ptr @.str.24, ptr @.str.25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.0613, ptr noundef nonnull align 1 dereferenceable(5) %i.u, i64 5, i1 false) #16
  br label %.sink.split

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.v = load i64, ptr %i.h, align 8
  %i.w = srem i64 %i.v, 24
  %i.x = icmp sgt i64 %i.w, 11
  %i.y = select i1 %i.x, ptr @.str.26, ptr @.str.27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0613, ptr noundef nonnull align 1 dereferenceable(3) %i.y, i64 3, i1 false) #16
  br label %.sink.split

bb.h:                                             ; preds = %bb.e, %bb.e
  %i.z = load i64, ptr %i.h, align 8
  %i.aa = srem i64 %i.z, 24
  %i.ab = icmp sgt i64 %i.aa, 11
  %i.ac = select i1 %i.ab, ptr @.str.28, ptr @.str.29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.0613, ptr noundef nonnull align 1 dereferenceable(5) %i.ac, i64 5, i1 false) #16
  br label %.sink.split

bb.i:                                             ; preds = %bb.e, %bb.e
  %i.ad = load i64, ptr %i.h, align 8
  %i.ae = srem i64 %i.ad, 24
  %i.af = icmp sgt i64 %i.ae, 11
  %i.ag = select i1 %i.af, ptr @.str.30, ptr @.str.31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0613, ptr noundef nonnull align 1 dereferenceable(3) %i.ag, i64 3, i1 false) #16
  br label %.sink.split

bb.j:                                             ; preds = %bb.e, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.0614, i64 9 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = trunc i8 %i.ai to i1
  %.pre904 = load i64, ptr %i.h, align 8          ; 2 uses
  %i.ak = icmp sgt i64 %.pre904, -1
  %i.al = select i1 %i.ak, i32 2, i32 3
  %i.am = select i1 %i.aj, i32 0, i32 %i.al
  %i.an = srem i64 %.pre904, 12                   ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  %spec.select = select i1 %i.ao, i64 12, i64 %i.an
  %i.ap = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.32, i32 noundef %i.am, i64 noundef %spec.select) #16 ; 0 uses
  %i.aq = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.ar = and i8 %i.aq, 6
  %.not831 = icmp eq i8 %i.ar, 0
  br i1 %.not831, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = and i8 %i.aq, 2
  %.not.i = icmp eq i8 %i.as, 0
  %i.at = select i1 %.not.i, i32 2, i32 1
  %i.au = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.at)
  %i.av = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.au) #16 ; 0 uses
  br label %.sink.split

bb.l:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %.0614, i64 9 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = trunc i8 %i.ax to i1
  %.pre903 = load i64, ptr %i.h, align 8          ; 2 uses
  %i.az = icmp sgt i64 %.pre903, -1
  %i.ba = select i1 %i.az, i32 2, i32 3
  %i.bb = select i1 %i.ay, i32 0, i32 %i.ba
  %i.bc = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.32, i32 noundef %i.bb, i64 noundef %.pre903) #16 ; 0 uses
  %i.bd = load i8, ptr %i.aw, align 1             ; 2 uses
  %i.be = and i8 %i.bd, 6
  %.not830 = icmp eq i8 %i.be, 0
  br i1 %.not830, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = and i8 %i.bd, 2
  %.not.i680 = icmp eq i8 %i.bf, 0
  %i.bg = select i1 %.not.i680, i32 2, i32 1
  %i.bh = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.bg)
  %i.bi = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.bh) #16 ; 0 uses
  br label %.sink.split

bb.n:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %.0614, i64 9 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = trunc i8 %i.bk to i1
  %.pre902 = load i32, ptr %i.i, align 4          ; 2 uses
  %i.bm = icmp sgt i32 %.pre902, -1
  %i.bn = select i1 %i.bm, i32 2, i32 3
  %i.bo = select i1 %i.bl, i32 0, i32 %i.bn
  %i.bp = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.33, i32 noundef %i.bo, i32 noundef %.pre902) #16 ; 0 uses
  %i.bq = load i8, ptr %i.bj, align 1             ; 2 uses
  %i.br = and i8 %i.bq, 6
  %.not829 = icmp eq i8 %i.br, 0
  br i1 %.not829, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = and i8 %i.bq, 2
  %.not.i682 = icmp eq i8 %i.bs, 0
  %i.bt = select i1 %.not.i682, i32 2, i32 1
  %i.bu = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.bt)
  %i.bv = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.bu) #16 ; 0 uses
  br label %.sink.split

bb.p:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %.0614, i64 9 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = trunc i8 %i.bx to i1
  %.pre = load i32, ptr %2, align 8               ; 2 uses
  %i.bz = icmp sgt i32 %.pre, -1
  %i.ca = select i1 %i.bz, i32 2, i32 3
  %i.cb = select i1 %i.by, i32 0, i32 %i.ca
  %i.cc = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.33, i32 noundef %i.cb, i32 noundef %.pre) #16 ; 0 uses
  %i.cd = load i8, ptr %i.bw, align 1             ; 2 uses
  %i.ce = and i8 %i.cd, 6
  %.not828 = icmp eq i8 %i.ce, 0
  br i1 %.not828, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = and i8 %i.cd, 2
  %.not.i684 = icmp eq i8 %i.cf, 0
  %i.cg = select i1 %.not.i684, i32 2, i32 1
  %i.ch = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.cg)
  %i.ci = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.ch) #16 ; 0 uses
  br label %.sink.split

bb.r:                                             ; preds = %bb.e
  %i.cj = load i32, ptr %i.j, align 8
  %i.ck = sdiv i32 %i.cj, 100000
  %i.cl = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.34, i32 noundef %i.ck) #16 ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0614, i64 9
  %i.cn = load i8, ptr %i.cm, align 1             ; 2 uses
  %i.co = and i8 %i.cn, 6
  %.not827 = icmp eq i8 %i.co, 0
  br i1 %.not827, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = and i8 %i.cn, 2
  %.not.i686 = icmp eq i8 %i.cp, 0
  %i.cq = select i1 %.not.i686, i32 2, i32 1
  %i.cr = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.cq)
  %i.cs = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.cr) #16 ; 0 uses
  br label %.sink.split

bb.t:                                             ; preds = %bb.e
  %i.ct = load i32, ptr %i.j, align 8
  %i.cu = sdiv i32 %i.ct, 10000
  %i.cv = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.35, i32 noundef %i.cu) #16 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0614, i64 9
  %i.cx = load i8, ptr %i.cw, align 1             ; 2 uses
  %i.cy = and i8 %i.cx, 6
  %.not826 = icmp eq i8 %i.cy, 0
  br i1 %.not826, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = and i8 %i.cx, 2
  %.not.i688 = icmp eq i8 %i.cz, 0
  %i.da = select i1 %.not.i688, i32 2, i32 1
  %i.db = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.da)
  %i.dc = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.db) #16 ; 0 uses
  br label %.sink.split

bb.v:                                             ; preds = %bb.e, %bb.e
  %i.dd = load i32, ptr %i.j, align 8
  %i.de = sdiv i32 %i.dd, 1000
  %i.df = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.36, i32 noundef %i.de) #16 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0614, i64 9
  %i.dh = load i8, ptr %i.dg, align 1             ; 2 uses
  %i.di = and i8 %i.dh, 6
  %.not825 = icmp eq i8 %i.di, 0
  br i1 %.not825, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = and i8 %i.dh, 2
  %.not.i690 = icmp eq i8 %i.dj, 0
  %i.dk = select i1 %.not.i690, i32 2, i32 1
  %i.dl = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.dk)
  %i.dm = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.dl) #16 ; 0 uses
  br label %.sink.split

bb.x:                                             ; preds = %bb.e
  %i.dn = load i32, ptr %i.j, align 8
  %i.do = sdiv i32 %i.dn, 100
  %i.dp = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.37, i32 noundef %i.do) #16 ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0614, i64 9
  %i.dr = load i8, ptr %i.dq, align 1             ; 2 uses
  %i.ds = and i8 %i.dr, 6
  %.not824 = icmp eq i8 %i.ds, 0
  br i1 %.not824, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = and i8 %i.dr, 2
  %.not.i692 = icmp eq i8 %i.dt, 0
  %i.du = select i1 %.not.i692, i32 2, i32 1
  %i.dv = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.du)
  %i.dw = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.dv) #16 ; 0 uses
  br label %.sink.split

bb.z:                                             ; preds = %bb.e
  %i.dx = load i32, ptr %i.j, align 8
  %i.dy = sdiv i32 %i.dx, 10
end_hunk_0
begin_hunk_1_@DCH_to_char:bb.a

bb.gc:                                            ; preds = %bb.gb
  %i.ady = and i8 %i.adw, 2
  %.not.i773 = icmp eq i8 %i.ady, 0
  %i.adz = select i1 %.not.i773, i32 2, i32 1
  %i.aea = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.adz)
  %i.aeb = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.aea) #16 ; 0 uses
  br label %.sink.split

bb.gd:                                            ; preds = %bb.e, %bb.e
  %i.aec = getelementptr inbounds nuw i8, ptr %.0614, i64 9 ; 2 uses
  %i.aed = load i8, ptr %i.aec, align 1
  %i.aee = trunc i8 %i.aed to i1
  br i1 %i.aee, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aef = load i32, ptr %i.a, align 8            ; 3 uses
  %i.aeg = icmp sgt i32 %i.aef, 0
  %i.aeh = sub i32 1, %i.aef
  %i.aei = select i1 %1, i1 true, i1 %i.aeg
  %i.aej = select i1 %i.aei, i32 %i.aef, i32 %i.aeh
  %i.aek = icmp sgt i32 %i.aej, -1
  %i.ael = select i1 %i.aek, i32 4, i32 5
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gd, %bb.ge
  %i.aem = phi i32 [ %i.ael, %bb.ge ], [ 0, %bb.gd ]
  %i.aen = icmp eq i32 %i.q, 54
  %i.aeo = load i32, ptr %i.a, align 8            ; 5 uses
  br i1 %i.aen, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %bb.gf
  br i1 %1, label %bb.gk, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aep = icmp slt i32 %i.aeo, 1
  %i.aeq = sub i32 1, %i.aeo
  %spec.select673 = select i1 %i.aep, i32 %i.aeq, i32 %i.aeo
  br label %bb.gk

bb.gi:                                            ; preds = %bb.gf
  %i.aer = load i32, ptr %i.b, align 4
  %i.aes = load i32, ptr %i.c, align 8
  %i.aet = tail call i32 @date2isoyear(i32 noundef %i.aeo, i32 noundef %i.aer, i32 noundef %i.aes) #16 ; 2 uses
  br i1 %1, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aeu = icmp slt i32 %i.aet, 1
  %i.aev = load i32, ptr %i.a, align 8
  %i.aew = load i32, ptr %i.b, align 4
  %i.aex = load i32, ptr %i.c, align 8
  %i.aey = tail call i32 @date2isoyear(i32 noundef %i.aev, i32 noundef %i.aew, i32 noundef %i.aex) #16 ; 2 uses
  %i.aez = sub i32 1, %i.aey
  %spec.select969 = select i1 %i.aeu, i32 %i.aez, i32 %i.aey
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi, %bb.gg, %bb.gh
  %i.afa = phi i32 [ %i.aet, %bb.gi ], [ %spec.select969, %bb.gj ], [ %spec.select673, %bb.gh ], [ %i.aeo, %bb.gg ]
  %i.afb = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.33, i32 noundef %i.aem, i32 noundef %i.afa) #16 ; 0 uses
  %i.afc = load i8, ptr %i.aec, align 1           ; 2 uses
  %i.afd = and i8 %i.afc, 6
  %.not798 = icmp eq i8 %i.afd, 0
  br i1 %.not798, label %.sink.split, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.afe = and i8 %i.afc, 2
  %.not.i775 = icmp eq i8 %i.afe, 0
  %i.aff = select i1 %.not.i775, i32 2, i32 1
  %i.afg = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.aff)
  %i.afh = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.afg) #16 ; 0 uses
  br label %.sink.split

bb.gm:                                            ; preds = %bb.e, %bb.e
  %i.afi = getelementptr inbounds nuw i8, ptr %.0614, i64 9 ; 2 uses
  %i.afj = load i8, ptr %i.afi, align 1
  %i.afk = trunc i8 %i.afj to i1
  br i1 %i.afk, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.afl = load i32, ptr %i.a, align 8            ; 3 uses
  %i.afm = icmp sgt i32 %i.afl, 0
  %i.afn = sub i32 1, %i.afl
  %i.afo = select i1 %1, i1 true, i1 %i.afm
  %i.afp = select i1 %i.afo, i32 %i.afl, i32 %i.afn
  %i.afq = icmp sgt i32 %i.afp, -1
  %i.afr = select i1 %i.afq, i32 3, i32 4
  br label %bb.go

bb.go:                                            ; preds = %bb.gm, %bb.gn
  %i.afs = phi i32 [ %i.afr, %bb.gn ], [ 0, %bb.gm ]
  %i.aft = icmp eq i32 %i.q, 55
  %i.afu = load i32, ptr %i.a, align 8            ; 5 uses
  br i1 %i.aft, label %bb.gp, label %bb.gr

bb.gp:                                            ; preds = %bb.go
  br i1 %1, label %bb.gt, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.afv = icmp slt i32 %i.afu, 1
  %i.afw = sub i32 1, %i.afu
  %spec.select675 = select i1 %i.afv, i32 %i.afw, i32 %i.afu
  br label %bb.gt

bb.gr:                                            ; preds = %bb.go
  %i.afx = load i32, ptr %i.b, align 4
  %i.afy = load i32, ptr %i.c, align 8
  %i.afz = tail call i32 @date2isoyear(i32 noundef %i.afu, i32 noundef %i.afx, i32 noundef %i.afy) #16 ; 2 uses
  br i1 %1, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aga = icmp slt i32 %i.afz, 1
  %i.agb = load i32, ptr %i.a, align 8
  %i.agc = load i32, ptr %i.b, align 4
  %i.agd = load i32, ptr %i.c, align 8
  %i.age = tail call i32 @date2isoyear(i32 noundef %i.agb, i32 noundef %i.agc, i32 noundef %i.agd) #16 ; 2 uses
  %i.agf = sub i32 1, %i.age
  %spec.select970 = select i1 %i.aga, i32 %i.agf, i32 %i.age
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %bb.gp, %bb.gq
  %i.agg = phi i32 [ %i.afz, %bb.gr ], [ %spec.select970, %bb.gs ], [ %spec.select675, %bb.gq ], [ %i.afu, %bb.gp ]
  %i.agh = srem i32 %i.agg, 1000
  %i.agi = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.33, i32 noundef %i.afs, i32 noundef %i.agh) #16 ; 0 uses
  %i.agj = load i8, ptr %i.afi, align 1           ; 2 uses
  %i.agk = and i8 %i.agj, 6
  %.not797 = icmp eq i8 %i.agk, 0
  br i1 %.not797, label %.sink.split, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.agl = and i8 %i.agj, 2
  %.not.i777 = icmp eq i8 %i.agl, 0
  %i.agm = select i1 %.not.i777, i32 2, i32 1
  %i.agn = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.agm)
  %i.ago = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.agn) #16 ; 0 uses
  br label %.sink.split

bb.gv:                                            ; preds = %bb.e, %bb.e
  %i.agp = getelementptr inbounds nuw i8, ptr %.0614, i64 9 ; 2 uses
  %i.agq = load i8, ptr %i.agp, align 1
  %i.agr = trunc i8 %i.agq to i1
  br i1 %i.agr, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ags = load i32, ptr %i.a, align 8            ; 3 uses
  %i.agt = icmp sgt i32 %i.ags, 0
  %i.agu = sub i32 1, %i.ags
  %i.agv = select i1 %1, i1 true, i1 %i.agt
  %i.agw = select i1 %i.agv, i32 %i.ags, i32 %i.agu
  %i.agx = icmp sgt i32 %i.agw, -1
  %i.agy = select i1 %i.agx, i32 2, i32 3
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gv, %bb.gw
  %i.agz = phi i32 [ %i.agy, %bb.gw ], [ 0, %bb.gv ]
  %i.aha = icmp eq i32 %i.q, 56
  %i.ahb = load i32, ptr %i.a, align 8            ; 5 uses
  br i1 %i.aha, label %bb.gy, label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  br i1 %1, label %bb.hc, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ahc = icmp slt i32 %i.ahb, 1
  %i.ahd = sub i32 1, %i.ahb
  %spec.select677 = select i1 %i.ahc, i32 %i.ahd, i32 %i.ahb
  br label %bb.hc

bb.ha:                                            ; preds = %bb.gx
  %i.ahe = load i32, ptr %i.b, align 4
  %i.ahf = load i32, ptr %i.c, align 8
  %i.ahg = tail call i32 @date2isoyear(i32 noundef %i.ahb, i32 noundef %i.ahe, i32 noundef %i.ahf) #16 ; 2 uses
  br i1 %1, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ahh = icmp slt i32 %i.ahg, 1
  %i.ahi = load i32, ptr %i.a, align 8
  %i.ahj = load i32, ptr %i.b, align 4
  %i.ahk = load i32, ptr %i.c, align 8
  %i.ahl = tail call i32 @date2isoyear(i32 noundef %i.ahi, i32 noundef %i.ahj, i32 noundef %i.ahk) #16 ; 2 uses
  %i.ahm = sub i32 1, %i.ahl
  %spec.select971 = select i1 %i.ahh, i32 %i.ahm, i32 %i.ahl
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha, %bb.gy, %bb.gz
  %i.ahn = phi i32 [ %i.ahg, %bb.ha ], [ %spec.select971, %bb.hb ], [ %spec.select677, %bb.gz ], [ %i.ahb, %bb.gy ]
  %i.aho = srem i32 %i.ahn, 100
  %i.ahp = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.33, i32 noundef %i.agz, i32 noundef %i.aho) #16 ; 0 uses
  %i.ahq = load i8, ptr %i.agp, align 1           ; 2 uses
  %i.ahr = and i8 %i.ahq, 6
  %.not796 = icmp eq i8 %i.ahr, 0
  br i1 %.not796, label %.sink.split, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ahs = and i8 %i.ahq, 2
  %.not.i779 = icmp eq i8 %i.ahs, 0
  %i.aht = select i1 %.not.i779, i32 2, i32 1
  %i.ahu = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.aht)
  %i.ahv = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.ahu) #16 ; 0 uses
  br label %.sink.split

bb.he:                                            ; preds = %bb.e
  %i.ahw = load i32, ptr %i.a, align 8            ; 4 uses
  br i1 %1, label %bb.hi, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ahx = icmp slt i32 %i.ahw, 1
  %i.ahy = sub i32 1, %i.ahw
  %spec.select678 = select i1 %i.ahx, i32 %i.ahy, i32 %i.ahw
  br label %bb.hi

bb.hg:                                            ; preds = %bb.e
  %5 = load i32, ptr %i.a, align 8
  %i.ahz = load i32, ptr %i.b, align 4
  %i.aia = load i32, ptr %i.c, align 8
  %i.aib = tail call i32 @date2isoyear(i32 noundef %5, i32 noundef %i.ahz, i32 noundef %i.aia) #16 ; 2 uses
  br i1 %1, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aic = icmp slt i32 %i.aib, 1
  %i.aid = load i32, ptr %i.a, align 8
  %i.aie = load i32, ptr %i.b, align 4
  %i.aif = load i32, ptr %i.c, align 8
  %i.aig = tail call i32 @date2isoyear(i32 noundef %i.aid, i32 noundef %i.aie, i32 noundef %i.aif) #16 ; 2 uses
  %i.aih = sub i32 1, %i.aig
  %spec.select972 = select i1 %i.aic, i32 %i.aih, i32 %i.aig
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.he, %bb.hf
  %i.aii = phi i32 [ %i.aib, %bb.hg ], [ %spec.select972, %bb.hh ], [ %spec.select678, %bb.hf ], [ %i.ahw, %bb.he ]
  %i.aij = srem i32 %i.aii, 10
  %i.aik = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.58, i32 noundef %i.aij) #16 ; 0 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.0614, i64 9
  %i.aim = load i8, ptr %i.ail, align 1           ; 2 uses
  %i.ain = and i8 %i.aim, 6
  %.not795.a = icmp eq i8 %i.ain, 0
  br i1 %.not795.a, label %.sink.split, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aio = and i8 %i.aim, 2
  %.not.i781 = icmp eq i8 %i.aio, 0
  %i.aip = select i1 %.not.i781, i32 2, i32 1
  %i.aiq = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.aip)
  %i.air = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.aiq) #16 ; 0 uses
  br label %.sink.split

bb.hk:                                            ; preds = %bb.e, %bb.e
  %i.ais = load i32, ptr %i.b, align 4            ; 4 uses
  %.not645 = icmp eq i32 %i.ais, 0
  br i1 %.not645, label %bb.hl, label %bb.hn

bb.hl:                                            ; preds = %bb.hk
  %i.ait = load i32, ptr %i.a, align 8            ; 2 uses
  %.not646 = icmp eq i32 %i.ait, 0
  br i1 %.not646, label %bb.hv, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.aiu = icmp eq i32 %i.q, 43
  %rm_months_upper.rm_months_lower788 = select i1 %i.aiu, ptr @rm_months_upper, ptr @rm_months_lower
  %.inv = icmp slt i32 %i.ait, 0
  %i.aiv = select i1 %.inv, i32 11, i32 0
  br label %bb.hq

bb.hn:                                            ; preds = %bb.hk
  %i.aiw = icmp eq i32 %i.q, 43
  %rm_months_upper.rm_months_lower = select i1 %i.aiw, ptr @rm_months_upper, ptr @rm_months_lower ; 2 uses
  %i.aix = icmp slt i32 %i.ais, 0
  br i1 %i.aix, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.aiy = xor i32 %i.ais, -1
  br label %bb.hq

bb.hp:                                            ; preds = %bb.hn
  %i.aiz = sub nsw i32 12, %i.ais
  br label %bb.hq

bb.hq:                                            ; preds = %bb.ho, %bb.hp, %bb.hm
  %rm_months_upper.rm_months_lower789 = phi ptr [ %rm_months_upper.rm_months_lower788, %bb.hm ], [ %rm_months_upper.rm_months_lower, %bb.ho ], [ %rm_months_upper.rm_months_lower, %bb.hp ]
  %.0612 = phi i32 [ %i.aiv, %bb.hm ], [ %i.aiy, %bb.ho ], [ %i.aiz, %bb.hp ]
  %i.aja = getelementptr inbounds nuw i8, ptr %.0614, i64 9
  %i.ajb = load i8, ptr %i.aja, align 1
  %i.ajc = trunc i8 %i.ajb to i1
  %i.ajd = select i1 %i.ajc, i32 0, i32 -4
  %i.aje = sext i32 %.0612 to i64
  %i.ajf = getelementptr inbounds [8 x i8], ptr %rm_months_upper.rm_months_lower789, i64 %i.aje
  %i.ajg = load ptr, ptr %i.ajf, align 8
  %i.ajh = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.55, i32 noundef %i.ajd, ptr noundef %i.ajg) #16 ; 0 uses
  br label %.sink.split

bb.hr:                                            ; preds = %bb.e
  %i.aji = load i32, ptr %i.c, align 8
  %i.ajj = add i32 %i.aji, -1
  %i.ajk = sdiv i32 %i.ajj, 7
  %i.ajl = add nsw i32 %i.ajk, 1
  %i.ajm = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.56, i32 noundef %i.ajl) #16 ; 0 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0614, i64 9
  %i.ajo = load i8, ptr %i.ajn, align 1           ; 2 uses
  %i.ajp = and i8 %i.ajo, 6
  %.not794 = icmp eq i8 %i.ajp, 0
  br i1 %.not794, label %.sink.split, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ajq = and i8 %i.ajo, 2
  %.not.i783 = icmp eq i8 %i.ajq, 0
  %i.ajr = select i1 %.not.i783, i32 2, i32 1
  %i.ajs = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.ajr)
  %i.ajt = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.ajs) #16 ; 0 uses
  br label %.sink.split

bb.ht:                                            ; preds = %bb.e
  %i.aju = load i32, ptr %i.a, align 8
  %i.ajv = load i32, ptr %i.b, align 4
  %i.ajw = load i32, ptr %i.c, align 8
  %i.ajx = tail call i32 @date2j(i32 noundef %i.aju, i32 noundef %i.ajv, i32 noundef %i.ajw) #16
  %i.ajy = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0613, ptr noundef nonnull @.str.56, i32 noundef %i.ajx) #16 ; 0 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0614, i64 9
  %i.aka = load i8, ptr %i.ajz, align 1           ; 2 uses
  %i.akb = and i8 %i.aka, 6
  %.not = icmp eq i8 %i.akb, 0
  br i1 %.not, label %.sink.split, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.akc = and i8 %i.aka, 2
  %.not.i785 = icmp eq i8 %i.akc, 0
  %i.akd = select i1 %.not.i785, i32 2, i32 1
  %i.ake = tail call fastcc ptr @get_th(ptr noundef %.0613, i32 noundef range(i32 1, 3) %i.akd)
  %i.akf = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0613, ptr noundef nonnull dereferenceable(1) %i.ake) #16 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ht, %bb.hu, %bb.hr, %bb.hs, %bb.hi, %bb.hj, %bb.hc, %bb.hd, %bb.gt, %bb.gu, %bb.gk, %bb.gl, %bb.gb, %bb.gc, %bb.fz, %bb.ga, %bb.fp, %bb.fq, %bb.fm, %bb.fn, %bb.fk, %bb.fl, %bb.fi, %bb.fj, %bb.fe, %bb.ff, %bb.fa, %bb.fb, %bb.ey, %bb.ez, %bb.dz, %asc_tolower_z.exit742, %bb.ds, %bb.du, %bb.dl, %asc_toupper_z.exit735, %bb.df, %bb.dg, %bb.ce, %asc_tolower_z.exit712, %bb.bw, %bb.by, %bb.bo, %asc_toupper_z.exit, %bb.ad, %bb.ae, %bb.ab, %bb.ac, %bb.z, %bb.aa, %bb.x, %bb.y, %bb.v, %bb.w, %bb.t, %bb.u, %bb.r, %bb.s, %bb.p, %bb.q, %bb.n, %bb.o, %bb.l, %bb.m, %bb.j, %bb.k, %bb.d, %bb.aw, %bb.am, %asc_tolower_z.exit, %bb.hq, %asc_tolower_z.exit756, %bb.eo, %asc_toupper_z.exit749, %asc_tolower_z.exit726, %bb.cv, %asc_toupper_z.exit719, %bb.bi, %bb.bf, %bb.bc, %bb.az, %bb.as, %bb.ap, %bb.i, %bb.h, %bb.g, %bb.f
  %.0613.sink968 = phi ptr [ %.0613, %bb.f ], [ %.0613, %bb.g ], [ %.0613, %bb.h ], [ %.0613, %bb.i ], [ %.0613, %bb.d ], [ %.0613, %bb.j ], [ %.0613, %bb.l ], [ %.0613, %bb.n ], [ %.0613, %bb.p ], [ %.0613, %bb.r ], [ %.0613, %bb.t ], [ %.0613, %bb.v ], [ %.0613, %bb.x ], [ %.0613, %bb.z ], [ %.0613, %bb.ab ], [ %.0613, %bb.ap ], [ %.0613, %bb.as ], [ %.0613, %bb.az ], [ %.0613, %bb.bc ], [ %.0613, %bb.bf ], [ %.0613, %bb.bi ], [ %.0613, %bb.ad ], [ %.0613, %bb.bo ], [ %.0613, %bb.bw ], [ %.0613, %asc_toupper_z.exit719 ], [ %.0613, %bb.cv ], [ %.0613, %asc_tolower_z.exit726 ], [ %.0613, %bb.ce ], [ %.0613, %bb.df ], [ %.0613, %bb.dl ], [ %.0613, %bb.ds ], [ %.0613, %asc_toupper_z.exit749 ], [ %.0613, %bb.eo ], [ %.0613, %asc_tolower_z.exit756 ], [ %.0613, %bb.dz ], [ %.0613, %bb.ey ], [ %.0613, %bb.fa ], [ %.0613, %bb.fe ], [ %.0613, %bb.fi ], [ %.0613, %bb.fk ], [ %.0613, %bb.fm ], [ %.0613, %bb.fp ], [ %.0613, %bb.fz ], [ %.0613, %bb.gb ], [ %.0613, %bb.gk ], [ %.0613, %bb.gt ], [ %.0613, %bb.hc ], [ %.0613, %bb.hq ], [ %.0613, %bb.hi ], [ %.0613, %bb.hr ], [ %.0613, %asc_tolower_z.exit ], [ %.0613, %bb.am ], [ %i.hm, %bb.aw ], [ %.0613, %bb.k ], [ %.0613, %bb.m ], [ %.0613, %bb.o ], [ %.0613, %bb.q ], [ %.0613, %bb.s ], [ %.0613, %bb.u ], [ %.0613, %bb.w ], [ %.0613, %bb.y ], [ %.0613, %bb.aa ], [ %.0613, %bb.ac ], [ %.0613, %bb.ae ], [ %.0613, %asc_toupper_z.exit ], [ %.0613, %bb.by ], [ %.0613, %asc_tolower_z.exit712 ], [ %.0613, %bb.dg ], [ %.0613, %asc_toupper_z.exit735 ], [ %.0613, %bb.du ], [ %.0613, %asc_tolower_z.exit742 ], [ %.0613, %bb.ez ], [ %.0613, %bb.fb ], [ %.0613, %bb.ff ], [ %.0613, %bb.fj ], [ %.0613, %bb.fl ], [ %.0613, %bb.fn ], [ %.0613, %bb.fq ], [ %.0613, %bb.ga ], [ %.0613, %bb.gc ], [ %.0613, %bb.gl ], [ %.0613, %bb.gu ], [ %.0613, %bb.hd ], [ %.0613, %bb.hj ], [ %.0613, %bb.hs ], [ %.0613, %bb.hu ], [ %.0613, %bb.ht ] ; 2 uses
  %i.akg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0613.sink968) #17
  %i.akh = getelementptr inbounds nuw i8, ptr %.0613.sink968, i64 %i.akg
  br label %bb.hv

bb.hv:                                            ; preds = %.sink.split, %bb.e, %bb.ah, %bb.al, %bb.av, %bb.bl, %bb.bt, %bb.cb, %bb.cj, %bb.cq, %bb.cy, %bb.fo, %bb.hl
  %.1 = phi ptr [ %.0613, %bb.bt ], [ %.0613, %bb.e ], [ %i.hm, %bb.av ], [ %.0613, %bb.hl ], [ %.0613, %bb.cb ], [ %.0613, %bb.cy ], [ %.0613, %bb.cj ], [ %.0613, %bb.ah ], [ %.0613, %bb.fo ], [ %.0613, %bb.al ], [ %.0613, %bb.bl ], [ %.0613, %bb.cq ], [ %i.akh, %.sink.split ]
  %i.aki = getelementptr inbounds nuw i8, ptr %.0614, i64 24
  br label %bb.b, !llvm.loop !35
}

declare void @cache_locale_time() local_unnamed_addr #3

declare i32 @pg_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

declare i32 @date2isoyearday(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @date2isoweek(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @date2isoyear(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noundef nonnull ptr @get_th(ptr noundef %0, i32 noundef range(i32 1, 3) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a       ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %i.e = tail call ptr @__ctype_b_loc() #18
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = zext i8 %i.d to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, 2048
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 33685634) #16 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.59, ptr noundef nonnull %0) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1567, ptr noundef nonnull @__func__.get_th) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.a, 1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.b, i64 -2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 49
  br i1 %i.q, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  switch i8 %i.d, label %.thread [
    i8 49, label %bb.f
    i8 50, label %bb.g
    i8 51, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i32 %1, 1
  %.str.60..str.64 = select i1 %i.r, ptr @.str.60, ptr @.str.64
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i32 %1, 1
  %.str.61..str.65 = select i1 %i.s, ptr @.str.61, ptr @.str.65
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.t = icmp eq i32 %1, 1
  %.str.62..str.66 = select i1 %i.t, ptr @.str.62, ptr @.str.66
  br label %bb.i

.thread:                                          ; preds = %bb.d, %bb.e
  %i.u = icmp eq i32 %1, 1
  %.str.63..str.67 = select i1 %i.u, ptr @.str.63, ptr @.str.67
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h, %bb.g, %bb.f
  %.013 = phi ptr [ %.str.63..str.67, %.thread ], [ %.str.61..str.65, %bb.g ], [ %.str.60..str.64, %bb.f ], [ %.str.62..str.66, %bb.h ]
  ret ptr %.013
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

declare i32 @pg_mblen_cstr(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5
end_hunk_1
