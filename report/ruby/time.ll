Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/time?download=true
inline.NumInlined: 958
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@init_leap_second_info:bb.a
  %or.cond24.not.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %or.cond24.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %timet2wv.exit
  %i.bo = ashr i64 %i.av, 1                       ; 2 uses
  %i.bp = sdiv i64 %i.bo, 1000000000              ; 2 uses
  %i.bq = mul nsw i64 %i.bp, 1000000000
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = shl nsw i64 %i.bp, 1
  %i.bt = or disjoint i64 %i.bs, 1
  br label %rb_time_unmagnify_to_rational.exit.i

bb.j:                                             ; preds = %bb.h, %timet2wv.exit
  %i.bu = call i64 @rb_numeric_quo(i64 noundef %i.av, i64 noundef 2000000001) #18
  br label %rb_time_unmagnify_to_rational.exit.i

rb_time_unmagnify_to_rational.exit.i:             ; preds = %bb.j, %bb.i
  %.1.i.i.i = phi i64 [ %i.bu, %bb.j ], [ %i.bt, %bb.i ] ; 6 uses
  %i.bv = icmp eq i64 %.1.i.i.i, 0
  %i.bw = and i64 %.1.i.i.i, 7
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = or i1 %i.bv, %i.bx
  br i1 %i.by, label %rb_time_unmagnify.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i3

rbimpl_RB_TYPE_P_fastpath.exit.i.i3:              ; preds = %rb_time_unmagnify_to_rational.exit.i
  %i.bz = inttoptr i64 %.1.i.i.i to ptr           ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !33
  %i.cb = and i64 %i.ca, 31
  %i.cc = icmp eq i64 %i.cb, 15
  br i1 %i.cc, label %bb.k, label %rb_time_unmagnify.exit

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i3
  %i.cd = getelementptr i8, ptr %i.bz, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !42
  %.not.i.i5 = icmp eq i64 %i.ce, 3
  br i1 %.not.i.i5, label %bb.l, label %rb_time_unmagnify.exit

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr i8, ptr %i.bz, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !43
  br label %rb_time_unmagnify.exit

rb_time_unmagnify.exit:                           ; preds = %rb_time_unmagnify_to_rational.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i3, %bb.k, %bb.l
  %.06.i.i4 = phi i64 [ %.1.i.i.i, %bb.k ], [ %i.cg, %bb.l ], [ %.1.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i3 ], [ %.1.i.i.i, %rb_time_unmagnify_to_rational.exit.i ]
  %i.ch = call fastcc i64 @wsub(i64 noundef %.06.i.i, i64 noundef %.06.i.i4) ; 3 uses
  %i.ci = trunc i64 %i.ch to i1
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %rb_time_unmagnify.exit
  %i.cj = call i64 @rb_fix2int(i64 noundef %i.ch) #18
  br label %rb_num2int_inline.exit

bb.n:                                             ; preds = %rb_time_unmagnify.exit
  %i.ck = call i64 @rb_num2int(i64 noundef %i.ch) #18
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.m, %bb.n
  %.0.i6 = phi i64 [ %i.cj, %bb.m ], [ %i.ck, %bb.n ]
  %i.cl = trunc i64 %.0.i6 to i32
  store i32 %i.cl, ptr @number_of_leap_seconds_known, align 4, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.b, %rb_num2int_inline.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @gmtime_with_leapsecond(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr @ruby_tz_uptodate_p, align 1, !tbaa !15, !range !72, !noundef !73
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %rb_localtime_r.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @ruby_tz_uptodate_p, align 1, !tbaa !15
  tail call void @tzset() #18
  br label %rb_localtime_r.exit

rb_localtime_r.exit:                              ; preds = %bb.a, %bb.b
  %i.c = tail call ptr @localtime_r(ptr noundef %0, ptr noundef nonnull %1) #18 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.af, label %bb.c

bb.c:                                             ; preds = %rb_localtime_r.exit
  %i.e = getelementptr i8, ptr %i.c, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !74   ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  %.088 = select i1 %i.g, i32 1, i32 -1           ; 3 uses
  %.082 = tail call i64 @llvm.abs.i64(i64 %i.f, i1 false) ; 3 uses
  %i.h = srem i64 %.082, 60                       ; 2 uses
  %i.i = sdiv i64 %.082, 60
  %i.j = srem i64 %i.i, 60
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i64 %.082, 3600
  %i.m = trunc i64 %i.l to i32
  %i.n = mul nsw i32 %.088, %i.k                  ; 3 uses
  %i.o = mul i32 %.088, %i.m                      ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nsw i64 %i.h to i32
  %i.q = mul nsw i32 %.088, %i.p
  %i.r = load i32, ptr %1, align 8, !tbaa !68
  %i.s = add i32 %i.r, %i.q                       ; 4 uses
  store i32 %i.s, ptr %1, align 8, !tbaa !68
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp samesign ugt i32 %i.s, 59
  br i1 %i.u, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink169 = phi i32 [ 60, %bb.d ], [ -60, %bb.e ]
  %.sink = phi i32 [ -1, %bb.d ], [ 1, %bb.e ]
  %i.v = add nsw i32 %i.s, %.sink169
  store i32 %i.v, ptr %1, align 8, !tbaa !68
  %i.w = add nsw i32 %i.n, %.sink
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.c
  %.187 = phi i32 [ %i.n, %bb.c ], [ %i.n, %bb.e ], [ %i.w, %.sink.split ] ; 2 uses
  %.not101 = icmp eq i32 %.187, 0
  br i1 %.not101, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !67
  %i.z = add i32 %i.y, %.187                      ; 4 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !67
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.sink.split170, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp samesign ugt i32 %i.z, 59
  br i1 %i.ab, label %.sink.split170, label %bb.i

.sink.split170:                                   ; preds = %bb.h, %bb.g
  %.sink173 = phi i32 [ 60, %bb.g ], [ -60, %bb.h ]
  %.sink171 = phi i32 [ -1, %bb.g ], [ 1, %bb.h ]
  %i.ac = add nsw i32 %i.z, %.sink173
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !67
  %i.ad = add i32 %i.o, %.sink171
  br label %bb.i

bb.i:                                             ; preds = %.sink.split170, %bb.h, %bb.f
  %.185 = phi i32 [ %i.o, %bb.f ], [ %i.o, %bb.h ], [ %i.ad, %.sink.split170 ] ; 2 uses
  %.not102 = icmp eq i32 %.185, 0
  br i1 %.not102, label %.thread119, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !66
  %i.ag = add i32 %i.af, %.185                    ; 4 uses
  %i.ah = icmp slt i32 %i.ag, 0
  %i.ai = add nsw i32 %i.ag, 24
  %spec.select = select i1 %i.ah, i32 %i.ai, i32 %i.ag ; 3 uses
  store i32 %spec.select, ptr %i.ae, align 8, !tbaa !66
  %i.aj = icmp sgt i32 %spec.select, 23
  br i1 %i.aj, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not103 = icmp sgt i32 %i.ag, -1
  br i1 %.not103, label %.thread119, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %1, i64 28        ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !70 ; 3 uses
  %i.am = icmp eq i32 %i.al, 0
  %i.an = getelementptr i8, ptr %1, i64 12        ; 4 uses
  br i1 %i.am, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  store i32 31, ptr %i.an, align 4, !tbaa !65
  %i.ao = getelementptr i8, ptr %1, i64 16
  store i32 11, ptr %i.ao, align 8, !tbaa !64
  %i.ap = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !63 ; 2 uses
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !63
  %i.as = add i32 %i.aq, 1899                     ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp sgt i32 %i.as, -1
  br i1 %i.au, label %bb.o, label %bb.n, !prof !18

bb.n:                                             ; preds = %bb.m
  %i.av = sub nsw i64 0, %i.at
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = phi i64 [ %i.av, %bb.n ], [ %i.at, %bb.m ] ; 3 uses
  %i.ax = and i64 %i.aw, 3
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %bb.p, label %leap_year_p.exit.thread131, !prof !19

bb.p:                                             ; preds = %bb.o
  %.lhs.trunc143 = trunc nuw i64 %i.aw to i32
  %i.ay = udiv i32 %.lhs.trunc143, 100
  %.zext144 = zext nneg i32 %i.ay to i64          ; 2 uses
  %i.az = mul nuw nsw i64 %.zext144, 100
  %.not11.i = icmp eq i64 %i.aw, %i.az
  br i1 %.not11.i, label %leap_year_p.exit.a, label %leap_year_p.exit.thread131, !prof !19

leap_year_p.exit.a:                               ; preds = %bb.p
  %i.ba = and i64 %.zext144, 3
  %.not151 = icmp eq i64 %i.ba, 0
  %2 = zext i1 %.not151 to i32
  %3 = or disjoint i32 %2, 364
  br label %leap_year_p.exit.thread131

bb.q:                                             ; preds = %bb.l
  %i.bb = load i32, ptr %i.an, align 4, !tbaa !65 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr i8, ptr %1, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !63
  %i.bf = add i32 %i.be, 1900                     ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = icmp sgt i32 %i.bf, -1
  br i1 %i.bh, label %bb.t, label %bb.s, !prof !18

bb.s:                                             ; preds = %bb.r
  %i.bi = sub nsw i64 0, %i.bg
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bj = phi i64 [ %i.bi, %bb.s ], [ %i.bg, %bb.r ]
  %.fr = freeze i64 %i.bj                         ; 3 uses
  %i.bk = and i64 %.fr, 3
  %.not.i108 = icmp eq i64 %i.bk, 0
  br i1 %.not.i108, label %bb.u, label %leap_year_p.exit111.thread, !prof !19

bb.u:                                             ; preds = %bb.t
  %.lhs.trunc145 = trunc i64 %.fr to i32
  %i.bl = udiv i32 %.lhs.trunc145, 100
  %.zext146 = zext nneg i32 %i.bl to i64          ; 2 uses
  %i.bm = mul nuw nsw i64 %.zext146, 100
  %.not11.i110 = icmp eq i64 %.fr, %i.bm
  br i1 %.not11.i110, label %leap_year_p.exit111, label %leap_year_p.exit111.thread139, !prof !19

leap_year_p.exit111:                              ; preds = %bb.u
  %i.bn = and i64 %.zext146, 3
  %.not147 = icmp eq i64 %i.bn, 0
  br i1 %.not147, label %leap_year_p.exit111.thread139, label %leap_year_p.exit111.thread

leap_year_p.exit111.thread:                       ; preds = %bb.t, %leap_year_p.exit111
  br label %leap_year_p.exit111.thread139

leap_year_p.exit111.thread139:                    ; preds = %bb.u, %leap_year_p.exit111, %leap_year_p.exit111.thread
  %i.bo = phi ptr [ @common_year_days_in_month, %leap_year_p.exit111.thread ], [ @leap_year_days_in_month, %leap_year_p.exit111 ], [ @leap_year_days_in_month, %bb.u ]
  %i.bp = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !64
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !64
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr i8, ptr %i.bo, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !52
  %i.bv = sext i8 %i.bu to i32
  store i32 %i.bv, ptr %i.an, align 4, !tbaa !65
  %i.bw = add i32 %i.al, -1
  br label %leap_year_p.exit.thread131

bb.v:                                             ; preds = %bb.q
  %i.bx = add i32 %i.bb, -1
  store i32 %i.bx, ptr %i.an, align 4, !tbaa !65
  %i.by = add i32 %i.al, -1
  br label %leap_year_p.exit.thread131

leap_year_p.exit.thread131:                       ; preds = %leap_year_p.exit.a, %bb.p, %bb.o, %leap_year_p.exit111.thread139, %bb.v
  %.sink174 = phi i32 [ %i.bw, %leap_year_p.exit111.thread139 ], [ %i.by, %bb.v ], [ 364, %bb.o ], [ %3, %leap_year_p.exit.a ], [ 365, %bb.p ]
  store i32 %.sink174, ptr %i.ak, align 4, !tbaa !70
  br label %.thread119.sink.split

bb.w:                                             ; preds = %bb.j
  %i.bz = add nsw i32 %spec.select, -24
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !66
  %i.ca = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !63 ; 2 uses
  %i.cc = add i32 %i.cb, 1900                     ; 2 uses
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = icmp sgt i32 %i.cc, -1
  br i1 %i.ce, label %bb.y, label %bb.x, !prof !18

bb.x:                                             ; preds = %bb.w
  %i.cf = sub nsw i64 0, %i.cd
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cg = phi i64 [ %i.cf, %bb.x ], [ %i.cd, %bb.w ] ; 3 uses
  %i.ch = and i64 %i.cg, 3
  %.not.i112.not = icmp eq i64 %i.ch, 0
  br i1 %.not.i112.not, label %bb.z, label %.sink.split176, !prof !19

bb.z:                                             ; preds = %bb.y
  %.lhs.trunc = trunc nuw i64 %i.cg to i32
  %i.ci = udiv i32 %.lhs.trunc, 100
  %.zext = zext nneg i32 %i.ci to i64             ; 2 uses
  %i.cj = mul nuw nsw i64 %.zext, 100
  %.not11.i114 = icmp eq i64 %i.cg, %i.cj
  br i1 %.not11.i114, label %leap_year_p.exit115.a, label %.sink.split176, !prof !19

leap_year_p.exit115.a:                            ; preds = %bb.z
  %i.ck = and i64 %.zext, 3
  %.not190 = icmp eq i64 %i.ck, 0
  %4 = zext i1 %.not190 to i32
  br label %.sink.split176

.sink.split176:                                   ; preds = %bb.y, %bb.z, %leap_year_p.exit115.a
  %i.cl = phi i32 [ 0, %bb.y ], [ %4, %leap_year_p.exit115.a ], [ 1, %bb.z ] ; 2 uses
  %i.cm = getelementptr i8, ptr %1, i64 28        ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !70 ; 3 uses
  %5 = or disjoint i32 %i.cl, 364
  %i.co = icmp eq i32 %i.cn, %5
  br i1 %i.co, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.sink.split176
  %i.cp = add i32 %i.cb, 1
  store i32 %i.cp, ptr %i.ca, align 4, !tbaa !63
  %i.cq = getelementptr i8, ptr %1, i64 16
  store i32 0, ptr %i.cq, align 8, !tbaa !64
  %i.cr = getelementptr i8, ptr %1, i64 12
  store i32 1, ptr %i.cr, align 4, !tbaa !65
  br label %bb.ae

bb.ab:                                            ; preds = %.sink.split176
  %.not104 = icmp eq i32 %i.cl, 0
  %i.cs = getelementptr i8, ptr %1, i64 12        ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !65 ; 2 uses
  %6 = select i1 %.not104, ptr @common_year_days_in_month, ptr @leap_year_days_in_month
  %i.cu = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !64 ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr i8, ptr %6, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !52
  %i.cz = sext i8 %i.cy to i32
  %i.da = icmp eq i32 %i.ct, %i.cz
  br i1 %i.da, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.db = add i32 %i.cv, 1
  store i32 %i.db, ptr %i.cu, align 8, !tbaa !64
  store i32 1, ptr %i.cs, align 4, !tbaa !65
  %i.dc = add i32 %i.cn, 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dd = add i32 %i.ct, 1
  store i32 %i.dd, ptr %i.cs, align 4, !tbaa !65
  %i.de = add i32 %i.cn, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %.sink180 = phi i32 [ %i.dc, %bb.ac ], [ %i.de, %bb.ad ], [ 0, %bb.aa ]
  store i32 %.sink180, ptr %i.cm, align 4, !tbaa !70
  br label %.thread119.sink.split

.thread119.sink.split:                            ; preds = %bb.ae, %leap_year_p.exit.thread131
  %.sink185 = phi i32 [ 6, %leap_year_p.exit.thread131 ], [ 1, %bb.ae ]
  %i.df = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !69
  %i.dh = add i32 %i.dg, %.sink185
  %i.di = srem i32 %i.dh, 7
  store i32 %i.di, ptr %i.df, align 8, !tbaa !69
  br label %.thread119

.thread119:                                       ; preds = %.thread119.sink.split, %bb.i, %bb.k
  %i.dj = getelementptr i8, ptr %1, i64 32
  store i32 0, ptr %i.dj, align 8, !tbaa !71
  %i.dk = getelementptr i8, ptr %1, i64 40
  store i64 0, ptr %i.dk, align 8, !tbaa !74
  %i.dl = getelementptr i8, ptr %1, i64 48
  store ptr @.str.33, ptr %i.dl, align 8, !tbaa !75
  br label %bb.af

bb.af:                                            ; preds = %rb_localtime_r.exit, %.thread119
  %.0 = phi ptr [ %1, %.thread119 ], [ null, %rb_localtime_r.exit ]
  ret ptr %.0
}

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #6

declare i64 @rb_big_modulo(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @timegmw_noleapsecond(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = load i64, ptr %0, align 8, !tbaa !59     ; 7 uses
  %i.d = and i64 %i.c, 1
  %or.cond.not.i = icmp eq i64 %i.d, 0
  br i1 %or.cond.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ashr i64 %i.c, 1                         ; 2 uses
  %i.f = add nsw i64 %i.e, -1900                  ; 2 uses
  %or.cond.i.i = icmp sgt i64 %i.e, -4611686018427386005
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = shl nsw i64 %i.f, 1
  %i.h = or disjoint i64 %i.g, 1
  br label %subv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i64 @rb_int2big(i64 noundef %i.f) #18
  br label %subv.exit

bb.e:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.c, 0
  %i.k = and i64 %i.c, 6
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.e
  %i.n = inttoptr i64 %i.c to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !33
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 10
  br i1 %i.q, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.r = tail call i64 @rb_big_minus(i64 noundef %i.c, i64 noundef 3801) #18
  br label %subv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.e
  %i.s = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.c, i64 noundef 45, i32 noundef 1, i64 noundef 3801) #18
  br label %subv.exit

subv.exit:                                        ; preds = %bb.c, %bb.d, %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.s, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.r, %bb.f ], [ %i.h, %bb.c ], [ %i.i, %bb.d ] ; 8 uses
  call fastcc void @divmodv(i64 noundef %.0.i, i64 noundef 801, ptr noundef %i.a, ptr noundef %i.b)
  %i.t = load i64, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %subv.exit
  %i.v = tail call i64 @rb_fix2int(i64 noundef %i.t) #18
  br label %rb_num2int_inline.exit

bb.h:                                             ; preds = %subv.exit
  %i.w = tail call i64 @rb_num2int(i64 noundef %i.t) #18
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.g, %bb.h
  %.0.i26 = phi i64 [ %i.v, %bb.g ], [ %i.w, %bb.h ] ; 2 uses
  %i.x = trunc i64 %.0.i26 to i32                 ; 7 uses
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load i64, ptr %i.y, align 8              ; 4 uses
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = lshr i32 %i.aa, 9
  %i.ac = and i32 %i.ab, 15
  %i.ad = add nsw i32 %i.ac, -1                   ; 3 uses
  %i.ae = lshr i32 %i.aa, 13
  %i.af = and i32 %i.ae, 31
  %sext.mask = and i64 %.0.i26, 2147483648
  %.not = icmp eq i64 %sext.mask, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %rb_num2int_inline.exit
  %.lhs.trunc.i = xor i32 %i.x, -1
  %i.ag = urem i32 %.lhs.trunc.i, 400
  %narrow.i = sub nuw nsw i32 399, %i.ag
  br label %bb.k

bb.j:                                             ; preds = %rb_num2int_inline.exit
  %i.ah = urem i32 %i.x, 400
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.in.i = phi i32 [ %narrow.i, %bb.i ], [ %i.ah, %bb.j ]
  %narrow22.i = add nuw nsw i32 %.in.i, 1900      ; 2 uses
  %i.ai = zext nneg i32 %narrow22.i to i64        ; 2 uses
  %i.aj = and i64 %i.ai, 3
  %.not.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i, label %bb.l, label %leap_year_p.exit.thread.i, !prof !19

leap_year_p.exit.thread.i:                        ; preds = %bb.k
  %i.ak = sext i32 %i.ad to i64
  %i.al = getelementptr [2 x i8], ptr @common_year_yday_offset, i64 %i.ak
  br label %calc_tm_yday.exit

bb.l:                                             ; preds = %bb.k
  %.lhs.trunc18.i = trunc nuw nsw i32 %narrow22.i to i16
  %i.am = udiv i16 %.lhs.trunc18.i, 100
  %.zext19.i = zext nneg i16 %i.am to i64         ; 2 uses
  %i.an = mul nuw nsw i64 %.zext19.i, 100
  %.not11.i.i = icmp eq i64 %i.an, %i.ai
  br i1 %.not11.i.i, label %leap_year_p.exit.i, label %leap_year_p.exit.thread14.i, !prof !19

leap_year_p.exit.thread14.i:                      ; preds = %bb.l
  %i.ao = sext i32 %i.ad to i64
  %i.ap = getelementptr [2 x i8], ptr @leap_year_yday_offset, i64 %i.ao
  br label %calc_tm_yday.exit

leap_year_p.exit.i:                               ; preds = %bb.l
  %i.aq = and i64 %.zext19.i, 3
  %.not.i = icmp eq i64 %i.aq, 0
  %i.ar = sext i32 %i.ad to i64
  %spec.select.v.i = select i1 %.not.i, ptr @leap_year_yday_offset, ptr @common_year_yday_offset
  %spec.select.i = getelementptr [2 x i8], ptr %spec.select.v.i, i64 %i.ar
  br label %calc_tm_yday.exit

calc_tm_yday.exit:                                ; preds = %leap_year_p.exit.thread.i, %leap_year_p.exit.thread14.i, %leap_year_p.exit.i
  %i.as = phi ptr [ %i.ap, %leap_year_p.exit.thread14.i ], [ %spec.select.i, %leap_year_p.exit.i ], [ %i.al, %leap_year_p.exit.thread.i ]
  %.pn.in.i = load i16, ptr %i.as, align 2, !tbaa !77
  %.pn.i = sext i16 %.pn.in.i to i32
  %i.at = lshr i64 %i.z, 32
  %i.au = and i64 %i.at, 63
  %i.av = lshr i64 %i.z, 23
  %i.aw = and i64 %i.av, 63
  %i.ax = mul nuw nsw i64 %i.aw, 60
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  %i.az = lshr i64 %i.z, 18
  %i.ba = and i64 %i.az, 31
  %i.bb = mul nuw nsw i64 %i.ba, 3600
  %i.bc = add nuw nsw i64 %i.ay, %i.bb
  %i.bd = shl nuw nsw i64 %i.bc, 1
  %i.be = or disjoint i64 %i.bd, 1
  %i.bf = add i32 %i.x, -69                       ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  %i.bh = sub i32 68, %i.x
  %i.bi = lshr i32 %i.bh, 2
  %i.bj = xor i32 %i.bi, -1
end_hunk_0
begin_hunk_1_@vtm_add_offset:bb.a
  store i64 %i.fr, ptr %i.fc, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.353 = phi i32 [ %.252, %bb.ax ], [ %.050, %bb.aw ] ; 2 uses
  %.not69 = icmp eq i32 %.353, 0
  br i1 %.not69, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fs = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8            ; 2 uses
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = lshr i32 %i.fu, 23
  %i.fw = and i32 %i.fv, 63
  %i.fx = add i32 %i.fw, %.353                    ; 4 uses
  %i.fy = icmp slt i32 %i.fx, 0
  %i.fz = add nsw i32 %i.fx, 60
  %.454 = select i1 %i.fy, i32 %i.fz, i32 %i.fx   ; 2 uses
  %.lobit126 = ashr i32 %i.fx, 31
  %.148 = add i32 %.lobit126, %.047
  %i.ga = icmp sgt i32 %.454, 59                  ; 2 uses
  %i.gb = zext i1 %i.ga to i32
  %.249 = add i32 %.148, %i.gb
  %i.gc = shl i32 %.454, 23                       ; 2 uses
  %i.gd = add i32 %i.gc, 33554432
  %i.ge = select i1 %i.ga, i32 %i.gd, i32 %i.gc
  %i.gf = and i32 %i.ge, 528482304
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = and i64 %i.ft, -528482305
  %i.gi = or disjoint i64 %i.gh, %i.gg
  store i64 %i.gi, ptr %i.fs, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.3 = phi i32 [ %.249, %bb.az ], [ %.047, %bb.ay ] ; 2 uses
  %.not70 = icmp eq i32 %.3, 0
  br i1 %.not70, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gj = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8            ; 2 uses
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = lshr i32 %i.gl, 18
  %i.gn = and i32 %i.gm, 31
  %i.go = add i32 %i.gn, %.3                      ; 4 uses
  %i.gp = icmp slt i32 %i.go, 0
  %i.gq = add nsw i32 %i.go, 24
  %spec.select = select i1 %i.gp, i32 %i.gq, i32 %i.go ; 2 uses
  %.lobit127 = ashr i32 %i.go, 31
  %i.gr = icmp sgt i32 %spec.select, 23           ; 2 uses
  %.1 = select i1 %i.gr, i32 1, i32 %.lobit127
  %i.gs = shl i32 %spec.select, 18                ; 2 uses
  %i.gt = add i32 %i.gs, 2097152
  %i.gu = select i1 %i.gr, i32 %i.gt, i32 %i.gs
  %i.gv = and i32 %i.gu, 8126464
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = and i64 %i.gk, -8126465
  %i.gy = or disjoint i64 %i.gx, %i.gw
  store i64 %i.gy, ptr %i.gj, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.2 = phi i32 [ %.1, %bb.bb ], [ 0, %bb.ba ]
  tail call fastcc void @vtm_add_day(ptr noundef %0, i32 noundef %.2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret void
}

declare i64 @rb_equal(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtm_add_day(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -1, 2) %1) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 32         ; 8 uses
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = and i64 %i.c, 261632
  %or.cond = icmp eq i64 %i.d, 8704
  br i1 %or.cond, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.e = and i64 %i.c, -261633
  %i.f = or disjoint i64 %i.e, 260096
  store i64 %i.f, ptr %i.b, align 8
  %i.g = load i64, ptr %0, align 8, !tbaa !59     ; 7 uses
  %i.h = and i64 %i.g, 1
  %or.cond.not.i = icmp eq i64 %i.h, 0
  br i1 %or.cond.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = ashr i64 %i.g, 1                         ; 2 uses
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  %or.cond.i.i = icmp sgt i64 %i.i, -4611686018427387904
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = shl nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1
  br label %subv.exit

bb.g:                                             ; preds = %bb.e
  %i.m = tail call i64 @rb_int2big(i64 noundef %i.j) #18
  br label %subv.exit

bb.h:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.g, 0
  %i.o = and i64 %i.g, 6
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.h
  %i.r = inttoptr i64 %i.g to ptr
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  %i.t = and i64 %i.s, 31
  %i.u = icmp eq i64 %i.t, 10
  br i1 %i.u, label %bb.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.v = tail call i64 @rb_big_minus(i64 noundef %i.g, i64 noundef 3) #18
  br label %subv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.h
  %i.w = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.g, i64 noundef 45, i32 noundef 1, i64 noundef 3) #18
  br label %subv.exit

subv.exit:                                        ; preds = %bb.f, %bb.g, %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.w, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.v, %bb.i ], [ %i.l, %bb.f ], [ %i.m, %bb.g ] ; 8 uses
  store i64 %.0.i, ptr %0, align 8, !tbaa !59
  %i.x = load i64, ptr %i.b, align 8              ; 2 uses
  %i.y = and i64 %i.x, 511
  %.not60 = icmp eq i64 %i.y, 0
  br i1 %.not60, label %bb.ae, label %bb.j

bb.j:                                             ; preds = %subv.exit
  %i.z = trunc i64 %.0.i to i1
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = ashr i64 %.0.i, 1
  %i.ab = srem i64 %i.aa, 400                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  %i.ad = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.ae = add nsw i64 %i.ad, 800
  %i.af = select i1 %i.ac, i64 %i.ae, i64 %i.ad
  %i.ag = or disjoint i64 %i.af, 1
  br label %modv.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = icmp eq i64 %.0.i, 0
  %i.ai = and i64 %.0.i, 6
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = or i1 %i.ah, %i.aj
  br i1 %i.ak, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i67, label %rbimpl_RB_TYPE_P_fastpath.exit.i66

rbimpl_RB_TYPE_P_fastpath.exit.i66:               ; preds = %bb.l
  %i.al = inttoptr i64 %.0.i to ptr
  %i.am = load i64, ptr %i.al, align 8, !tbaa !33
  %i.an = and i64 %i.am, 31
  %i.ao = icmp eq i64 %i.an, 10
  br i1 %i.ao, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i67

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i66
  %i.ap = tail call i64 @rb_big_modulo(i64 noundef %.0.i, i64 noundef 801) #18
  br label %modv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i67:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i66, %bb.l
  %i.aq = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.0.i, i64 noundef 37, i32 noundef 1, i64 noundef 801) #18
  br label %modv.exit

modv.exit:                                        ; preds = %bb.k, %bb.m, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i67
  %.0.i68 = phi i64 [ %i.aq, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i67 ], [ %i.ap, %bb.m ], [ %i.ag, %bb.k ] ; 3 uses
  %i.ar = trunc i64 %.0.i68 to i1
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %modv.exit
  %i.as = ashr i64 %.0.i68, 1
  br label %rb_num2long_inline.exit

bb.o:                                             ; preds = %modv.exit
  %i.at = tail call i64 @rb_num2long(i64 noundef %.0.i68) #18
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.n, %bb.o
  %.0.i69 = phi i64 [ %i.as, %bb.n ], [ %i.at, %bb.o ] ; 3 uses
  %i.au = icmp sgt i64 %.0.i69, -1
  br i1 %i.au, label %bb.q, label %bb.p, !prof !18

bb.p:                                             ; preds = %rb_num2long_inline.exit
  %i.av = sub i64 0, %.0.i69
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %rb_num2long_inline.exit
  %i.aw = phi i64 [ %i.av, %bb.p ], [ %.0.i69, %rb_num2long_inline.exit ] ; 3 uses
  %i.ax = and i64 %i.aw, 3
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %bb.r, label %leap_year_p.exit.thread100, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.ay = udiv i64 %i.aw, 100                     ; 2 uses
  %i.az = mul nuw nsw i64 %i.ay, 100
  %.not11.i = icmp eq i64 %i.aw, %i.az
  br i1 %.not11.i, label %leap_year_p.exit.a, label %leap_year_p.exit.thread100, !prof !19

leap_year_p.exit.a:                               ; preds = %bb.r
  %i.ba = and i64 %i.ay, 3
  %.not125.a = icmp eq i64 %i.ba, 0
  %2 = select i1 %.not125.a, i64 366, i64 365
  br label %leap_year_p.exit.thread100

leap_year_p.exit.thread100:                       ; preds = %bb.q, %bb.r, %leap_year_p.exit.a
  %i.bb = phi i64 [ 365, %bb.q ], [ %2, %leap_year_p.exit.a ], [ 366, %bb.r ]
  %i.bc = load i64, ptr %i.b, align 8
  %i.bd = and i64 %i.bc, -512
  %i.be = or disjoint i64 %i.bd, %i.bb
  br label %.sink.split

bb.s:                                             ; preds = %bb.c
  %i.bf = trunc i64 %i.c to i32                   ; 2 uses
  %i.bg = and i32 %i.bf, 253952
  %i.bh = icmp eq i32 %i.bg, 8192
  br i1 %i.bh, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.bi = load i64, ptr %0, align 8, !tbaa !59    ; 7 uses
  %i.bj = trunc i64 %i.bi to i1
  br i1 %i.bj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = ashr i64 %i.bi, 1
  %i.bl = srem i64 %i.bk, 400                     ; 2 uses
  %i.bm = icmp slt i64 %i.bl, 0
  %i.bn = shl nsw i64 %i.bl, 1                    ; 2 uses
  %i.bo = add nsw i64 %i.bn, 800
  %i.bp = select i1 %i.bm, i64 %i.bo, i64 %i.bn
  %i.bq = or disjoint i64 %i.bp, 1
  br label %modv.exit74

bb.v:                                             ; preds = %bb.t
  %i.br = icmp eq i64 %i.bi, 0
  %i.bs = and i64 %i.bi, 6
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = or i1 %i.br, %i.bt
  br i1 %i.bu, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i71, label %rbimpl_RB_TYPE_P_fastpath.exit.i70

rbimpl_RB_TYPE_P_fastpath.exit.i70:               ; preds = %bb.v
  %i.bv = inttoptr i64 %i.bi to ptr
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !33
  %i.bx = and i64 %i.bw, 31
  %i.by = icmp eq i64 %i.bx, 10
  br i1 %i.by, label %bb.w, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i71

bb.w:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i70
  %i.bz = tail call i64 @rb_big_modulo(i64 noundef %i.bi, i64 noundef 801) #18
  br label %modv.exit74

rbimpl_RB_TYPE_P_fastpath.exit.thread.i71:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i70, %bb.v
  %i.ca = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bi, i64 noundef 37, i32 noundef 1, i64 noundef 801) #18
  br label %modv.exit74

modv.exit74:                                      ; preds = %bb.u, %bb.w, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i71
  %.0.i72 = phi i64 [ %i.ca, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i71 ], [ %i.bz, %bb.w ], [ %i.bq, %bb.u ] ; 3 uses
  %i.cb = trunc i64 %.0.i72 to i1
  br i1 %i.cb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %modv.exit74
  %i.cc = ashr i64 %.0.i72, 1
  br label %rb_num2long_inline.exit76

bb.y:                                             ; preds = %modv.exit74
  %i.cd = tail call i64 @rb_num2long(i64 noundef %.0.i72) #18
  br label %rb_num2long_inline.exit76

rb_num2long_inline.exit76:                        ; preds = %bb.x, %bb.y
  %.0.i75 = phi i64 [ %i.cc, %bb.x ], [ %i.cd, %bb.y ] ; 3 uses
  %i.ce = icmp sgt i64 %.0.i75, -1
  br i1 %i.ce, label %bb.aa, label %bb.z, !prof !18

bb.z:                                             ; preds = %rb_num2long_inline.exit76
  %i.cf = sub i64 0, %.0.i75
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %rb_num2long_inline.exit76
  %i.cg = phi i64 [ %i.cf, %bb.z ], [ %.0.i75, %rb_num2long_inline.exit76 ]
  %.fr = freeze i64 %i.cg                         ; 3 uses
  %i.ch = and i64 %.fr, 3
  %.not.i77 = icmp eq i64 %i.ch, 0
  br i1 %.not.i77, label %bb.ab, label %leap_year_p.exit80.thread, !prof !19

bb.ab:                                            ; preds = %bb.aa
  %i.ci = udiv i64 %.fr, 100                      ; 2 uses
  %i.cj = mul nuw nsw i64 %i.ci, 100
  %.not11.i79 = icmp eq i64 %.fr, %i.cj
  br i1 %.not11.i79, label %leap_year_p.exit80, label %leap_year_p.exit80.thread108, !prof !19

leap_year_p.exit80:                               ; preds = %bb.ab
  %i.ck = and i64 %i.ci, 3
  %.not121 = icmp eq i64 %i.ck, 0
  br i1 %.not121, label %leap_year_p.exit80.thread108, label %leap_year_p.exit80.thread

leap_year_p.exit80.thread:                        ; preds = %bb.aa, %leap_year_p.exit80
  br label %leap_year_p.exit80.thread108

leap_year_p.exit80.thread108:                     ; preds = %bb.ab, %leap_year_p.exit80, %leap_year_p.exit80.thread
  %i.cl = phi ptr [ @common_year_days_in_month, %leap_year_p.exit80.thread ], [ @leap_year_days_in_month, %leap_year_p.exit80 ], [ @leap_year_days_in_month, %bb.ab ]
  %i.cm = load i64, ptr %i.b, align 8             ; 3 uses
  %i.cn = add i64 %i.cm, 7680                     ; 2 uses
  %i.co = and i64 %i.cn, 7680
  %i.cp = and i64 %i.cm, -261633
  %i.cq = or disjoint i64 %i.co, %i.cp
  %i.cr = lshr i64 %i.cn, 9
  %i.cs = and i64 %i.cr, 15
  %i.ct = getelementptr i8, ptr %i.cl, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 -1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !52
  %i.cw = and i8 %i.cv, 31
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 13
  %i.cz = or disjoint i64 %i.cy, %i.cq            ; 2 uses
  %i.da = trunc i64 %i.cm to i32
  %i.db = and i32 %i.da, 511                      ; 2 uses
  %.not59 = icmp eq i32 %i.db, 0
  %i.dc = add nsw i32 %i.db, -1
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = and i64 %i.cz, -512
  %i.df = or i64 %i.de, %i.dd
  %storemerge = select i1 %.not59, i64 %i.cz, i64 %i.df
  br label %.sink.split

bb.ac:                                            ; preds = %bb.s
  %i.dg = add i64 %i.c, 253952
  %i.dh = and i64 %i.dg, 253952
  %i.di = and i64 %i.c, -253953
  %i.dj = or disjoint i64 %i.dh, %i.di            ; 3 uses
  store i64 %i.dj, ptr %i.b, align 8
  %i.dk = and i32 %i.bf, 511                      ; 2 uses
  %.not57 = icmp eq i32 %i.dk, 0
  br i1 %.not57, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = add nsw i32 %i.dk, -1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = and i64 %i.dj, -512
  %i.do = or i64 %i.dn, %i.dm
  br label %.sink.split

.sink.split:                                      ; preds = %leap_year_p.exit.thread100, %bb.ad, %leap_year_p.exit80.thread108
  %storemerge.sink = phi i64 [ %storemerge, %leap_year_p.exit80.thread108 ], [ %i.do, %bb.ad ], [ %i.be, %leap_year_p.exit.thread100 ] ; 2 uses
  store i64 %storemerge.sink, ptr %i.b, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ac, %subv.exit
  %i.dp = phi i64 [ %i.dj, %bb.ac ], [ %i.x, %subv.exit ], [ %storemerge.sink, %.sink.split ]
  %.fr129 = freeze i64 %i.dp                      ; 2 uses
  %i.dq = lshr i64 %.fr129, 38
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 7                        ; 3 uses
  %.not62 = icmp eq i32 %i.ds, 7
  br i1 %.not62, label %bb.bd, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.urem = add nsw i32 %i.ds, -1
  %.cmp = icmp eq i32 %i.ds, 0
  %i.dt = select i1 %.cmp, i32 6, i32 %.urem
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 38
  %i.dw = and i64 %.fr129, -1924145348609
  %i.dx = add nuw nsw i64 %i.dv, %i.dw
  store i64 %i.dx, ptr %i.b, align 8
  br label %bb.bd

bb.ag:                                            ; preds = %bb.b
  %i.dy = load i64, ptr %0, align 8, !tbaa !59    ; 7 uses
  %i.dz = trunc i64 %i.dy to i1
  br i1 %i.dz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ea = ashr i64 %i.dy, 1
  %i.eb = srem i64 %i.ea, 400                     ; 2 uses
  %i.ec = icmp slt i64 %i.eb, 0
  %i.ed = shl nsw i64 %i.eb, 1                    ; 2 uses
  %i.ee = add nsw i64 %i.ed, 800
  %i.ef = select i1 %i.ec, i64 %i.ee, i64 %i.ed
  %i.eg = or disjoint i64 %i.ef, 1
  br label %modv.exit85

bb.ai:                                            ; preds = %bb.ag
  %i.eh = icmp eq i64 %i.dy, 0
  %i.ei = and i64 %i.dy, 6
  %i.ej = icmp ne i64 %i.ei, 0
  %i.ek = or i1 %i.eh, %i.ej
  br i1 %i.ek, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i82, label %rbimpl_RB_TYPE_P_fastpath.exit.i81

rbimpl_RB_TYPE_P_fastpath.exit.i81:               ; preds = %bb.ai
  %i.el = inttoptr i64 %i.dy to ptr
  %i.em = load i64, ptr %i.el, align 8, !tbaa !33
  %i.en = and i64 %i.em, 31
  %i.eo = icmp eq i64 %i.en, 10
  br i1 %i.eo, label %bb.aj, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i82

bb.aj:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i81
  %i.ep = tail call i64 @rb_big_modulo(i64 noundef %i.dy, i64 noundef 801) #18
  br label %modv.exit85

rbimpl_RB_TYPE_P_fastpath.exit.thread.i82:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i81, %bb.ai
  %i.eq = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dy, i64 noundef 37, i32 noundef 1, i64 noundef 801) #18
  br label %modv.exit85

modv.exit85:                                      ; preds = %bb.ah, %bb.aj, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i82
  %.0.i83 = phi i64 [ %i.eq, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i82 ], [ %i.ep, %bb.aj ], [ %i.eg, %bb.ah ] ; 3 uses
  %i.er = trunc i64 %.0.i83 to i1
  br i1 %i.er, label %bb.ak, label %bb.al
end_hunk_1
begin_hunk_2_@time_arg:bb.a
  %i.ax = zext nneg i32 %.286.i.4 to i64
  %i.ay = getelementptr [8 x i8], ptr %1, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = add nuw nsw i32 %.286.i.4, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sroa.19.0 = phi i64 [ %i.az, %bb.p ], [ 4, %bb.o ]
  %.286.i.5 = phi i32 [ %i.ba, %bb.p ], [ %.286.i.4, %bb.o ] ; 2 uses
  %i.bb = icmp samesign ult i32 %.286.i.5, %0
  %i.bc = zext i1 %i.bb to i32
  %.286.i.6 = add nuw nsw i32 %.286.i.5, %i.bc
  %i.bd = icmp eq i32 %.286.i.6, %0
  br i1 %i.bd, label %rb_scan_args_set.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.c
  tail call void @rb_error_arity(i32 noundef range(i32 11, 10) %0, i32 noundef 1, i32 noundef 8) #19
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.q
  %i.be = or disjoint i64 %i.g, 8521215115264
  br label %bb.s

bb.s:                                             ; preds = %rb_scan_args_set.exit, %bb.b
  %.sroa.15.1 = phi i64 [ %i.s, %bb.b ], [ %.sroa.15.0, %rb_scan_args_set.exit ] ; 8 uses
  %.sroa.8.2 = phi <2 x i64> [ %i.r, %bb.b ], [ %.sroa.8.1, %rb_scan_args_set.exit ] ; 2 uses
  %.sroa.2.1 = phi <2 x i64> [ %i.o, %bb.b ], [ %.sroa.2.0, %rb_scan_args_set.exit ] ; 2 uses
  %.sroa.19.1 = phi i64 [ 4, %bb.b ], [ %.sroa.19.0, %rb_scan_args_set.exit ] ; 7 uses
  %i.bf = phi i64 [ %i.l, %bb.b ], [ %i.z, %rb_scan_args_set.exit ] ; 5 uses
  %storemerge = phi i64 [ %i.x, %bb.b ], [ %i.be, %rb_scan_args_set.exit ]
  store i64 %storemerge, ptr %i.c, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = and i64 %i.bf, 7
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.s
  %i.bk = inttoptr i64 %i.bf to ptr
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !33
  %i.bm = and i64 %i.bl, 31
  %i.bn = icmp eq i64 %i.bm, 5
  br i1 %i.bn, label %bb.t, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.t:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.bo = tail call i64 @rb_str_to_inum(i64 noundef %i.bf, i32 noundef 10, i32 noundef 1) #18
  br label %obj2vint.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.s
  %i.bp = tail call i64 @rb_to_int(i64 noundef %i.bf) #18
  br label %obj2vint.exit

obj2vint.exit:                                    ; preds = %bb.t, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.bo, %bb.t ], [ %i.bp, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  store i64 %.0.i, ptr %2, align 8, !tbaa !59
  %.sroa.2.8.vec.extract = extractelement <2 x i64> %.sroa.2.1, i64 0 ; 2 uses
  %i.bq = icmp eq i64 %.sroa.2.8.vec.extract, 4
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %obj2vint.exit
  %i.br = tail call fastcc i32 @month_arg(i64 noundef %.sroa.2.8.vec.extract)
  %i.bs = shl nuw nsw i32 %i.br, 9
  %i.bt = zext nneg i32 %i.bs to i64
  br label %bb.v

bb.v:                                             ; preds = %obj2vint.exit, %bb.u
  %.sink133 = phi i64 [ %i.bt, %bb.u ], [ 512, %obj2vint.exit ]
  %.sink134 = load i64, ptr %i.c, align 8
  %i.bu = and i64 %.sink134, -7681
  %i.bv = or disjoint i64 %i.bu, %.sink133        ; 2 uses
  store i64 %i.bv, ptr %i.c, align 8
  %.sroa.2.16.vec.extract = extractelement <2 x i64> %.sroa.2.1, i64 1 ; 7 uses
  %i.bw = icmp eq i64 %.sroa.2.16.vec.extract, 4
  br i1 %i.bw, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = icmp eq i64 %.sroa.2.16.vec.extract, 0
  %i.by = and i64 %.sroa.2.16.vec.extract, 7
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = or i1 %i.bx, %i.bz
  br i1 %i.ca, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.w
  %i.cb = inttoptr i64 %.sroa.2.16.vec.extract to ptr
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !33
  %i.cd = and i64 %i.cc, 31
  %i.ce = icmp eq i64 %i.cd, 5
  br i1 %i.ce, label %bb.x, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.x:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.cf = tail call i64 @rb_str_to_inum(i64 noundef %.sroa.2.16.vec.extract, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.x, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.w
  %.0.i.i = phi i64 [ %i.cf, %bb.x ], [ %.sroa.2.16.vec.extract, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.sroa.2.16.vec.extract, %bb.w ] ; 3 uses
  %i.cg = trunc i64 %.0.i.i to i1
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ch = tail call i64 @rb_fix2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

bb.z:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ci = tail call i64 @rb_num2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

obj2int.exit.i:                                   ; preds = %bb.z, %bb.y
  %.0.i3.i.i = phi i64 [ %i.ch, %bb.y ], [ %i.ci, %bb.z ] ; 2 uses
  %i.cj = and i64 %.0.i3.i.i, 4294967264
  %.not.i55 = icmp eq i64 %i.cj, 0
  br i1 %.not.i55, label %obj2ubits.exit, label %bb.aa

bb.aa:                                            ; preds = %obj2int.exit.i
  %i.ck = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ck, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit:                                   ; preds = %obj2int.exit.i
  %i.cl = load i64, ptr %i.c, align 8
  %i.cm = shl i64 %.0.i3.i.i, 13
  %i.cn = and i64 %i.cm, 253952
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %obj2ubits.exit
  %.sink137 = phi i64 [ %i.cl, %obj2ubits.exit ], [ %i.bv, %bb.v ] ; 3 uses
  %.sink136 = phi i64 [ %i.cn, %obj2ubits.exit ], [ 8192, %bb.v ] ; 2 uses
  %i.co = and i64 %.sink137, -253953
  %i.cp = or disjoint i64 %i.co, %.sink136        ; 4 uses
  store i64 %i.cp, ptr %i.c, align 8
  %i.cq = trunc i64 %.sink137 to i32
  %i.cr = lshr i32 %i.cq, 9
  %i.cs = and i32 %i.cr, 15
  switch i32 %i.cs, label %bb.ao [
    i32 2, label %bb.ac
    i32 4, label %bb.am
    i32 6, label %bb.am
    i32 9, label %bb.am
    i32 11, label %bb.am
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ct = load i64, ptr %2, align 8, !tbaa !59    ; 7 uses
  %i.cu = trunc i64 %i.ct to i1
  br i1 %i.cu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cv = ashr i64 %i.ct, 1
  %i.cw = srem i64 %i.cv, 400                     ; 2 uses
  %i.cx = icmp slt i64 %i.cw, 0
  %i.cy = shl nsw i64 %i.cw, 1                    ; 2 uses
  %i.cz = add nsw i64 %i.cy, 800
  %i.da = select i1 %i.cx, i64 %i.cz, i64 %i.cy
  %i.db = or disjoint i64 %i.da, 1
  br label %modv.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dc = icmp eq i64 %i.ct, 0
  %i.dd = and i64 %i.ct, 6
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = or i1 %i.dc, %i.de
  br i1 %i.df, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57, label %rbimpl_RB_TYPE_P_fastpath.exit.i56

rbimpl_RB_TYPE_P_fastpath.exit.i56:               ; preds = %bb.ae
  %i.dg = inttoptr i64 %i.ct to ptr
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !33
  %i.di = and i64 %i.dh, 31
  %i.dj = icmp eq i64 %i.di, 10
  br i1 %i.dj, label %bb.af, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57

bb.af:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i56
  %i.dk = tail call i64 @rb_big_modulo(i64 noundef %i.ct, i64 noundef 801) #18
  br label %modv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i57:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i56, %bb.ae
  %i.dl = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ct, i64 noundef 37, i32 noundef 1, i64 noundef 801) #18
  br label %modv.exit

modv.exit:                                        ; preds = %bb.ad, %bb.af, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57
  %.0.i58 = phi i64 [ %i.dl, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57 ], [ %i.dk, %bb.af ], [ %i.db, %bb.ad ] ; 3 uses
  %i.dm = trunc i64 %.0.i58 to i1
  br i1 %i.dm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %modv.exit
  %i.dn = ashr i64 %.0.i58, 1
  br label %rb_num2long_inline.exit

bb.ah:                                            ; preds = %modv.exit
  %i.do = tail call i64 @rb_num2long(i64 noundef %.0.i58) #18
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.ag, %bb.ah
  %.0.i59 = phi i64 [ %i.dn, %bb.ag ], [ %i.do, %bb.ah ] ; 3 uses
  %i.dp = icmp sgt i64 %.0.i59, -1
  br i1 %i.dp, label %bb.aj, label %bb.ai, !prof !18

bb.ai:                                            ; preds = %rb_num2long_inline.exit
  %i.dq = sub i64 0, %.0.i59
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %rb_num2long_inline.exit
  %i.dr = phi i64 [ %i.dq, %bb.ai ], [ %.0.i59, %rb_num2long_inline.exit ] ; 3 uses
  %i.ds = and i64 %i.dr, 3
  %.not.i60 = icmp eq i64 %i.ds, 0
  br i1 %.not.i60, label %bb.ak, label %leap_year_p.exit.thread90, !prof !19

bb.ak:                                            ; preds = %bb.aj
  %i.dt = udiv i64 %i.dr, 100                     ; 2 uses
  %i.du = mul nuw nsw i64 %i.dt, 100
  %.not11.i = icmp eq i64 %i.dr, %i.du
  br i1 %.not11.i, label %leap_year_p.exit.a, label %leap_year_p.exit.thread90, !prof !19

leap_year_p.exit.a:                               ; preds = %bb.ak
  %i.dv = and i64 %i.dt, 3
  %.not95 = icmp eq i64 %i.dv, 0
  %3 = zext i1 %.not95 to i32
  %4 = or disjoint i32 %3, 28
  br label %leap_year_p.exit.thread90

leap_year_p.exit.thread90:                        ; preds = %bb.aj, %bb.ak, %leap_year_p.exit.a
  %i.dw = phi i32 [ 28, %bb.aj ], [ %4, %leap_year_p.exit.a ], [ 29, %bb.ak ] ; 2 uses
  %i.dx = load i64, ptr %i.c, align 8             ; 4 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = lshr i32 %i.dy, 13                      ; 2 uses
  %i.ea = and i32 %i.dz, 31
  %i.eb = icmp samesign ugt i32 %i.ea, %i.dw
  br i1 %i.eb, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %leap_year_p.exit.thread90
  %i.ec = sub nuw nsw i32 %i.dz, %i.dw
  %i.ed = shl nuw i32 %i.ec, 13
  %i.ee = and i32 %i.ed, 253952
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = and i64 %i.dx, -261633
  %i.eh = add i64 %i.dx, 512
  %i.ei = and i64 %i.eh, 7680
  %i.ej = or disjoint i64 %i.ei, %i.eg
  %i.ek = or disjoint i64 %i.ej, %i.ef
  br label %.sink.split

bb.am:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.el = icmp eq i64 %.sink136, 253952
  br i1 %i.el, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.em = add i64 %.sink137, 512
  %i.en = and i64 %i.em, 7680
  %i.eo = and i64 %i.cp, -253441
  %i.ep = or disjoint i64 %i.eo, %i.en
  br label %.sink.split

.sink.split:                                      ; preds = %bb.an, %bb.al
  %.sink138 = phi i64 [ %i.ek, %bb.al ], [ %i.ep, %bb.an ] ; 2 uses
  store i64 %.sink138, ptr %i.c, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %leap_year_p.exit.thread90, %bb.am, %bb.ab
  %i.eq = phi i64 [ %i.dx, %leap_year_p.exit.thread90 ], [ %i.cp, %bb.ab ], [ %i.cp, %bb.am ], [ %.sink138, %.sink.split ]
  %.sroa.8.24.vec.extract = extractelement <2 x i64> %.sroa.8.2, i64 0 ; 7 uses
  %i.er = icmp eq i64 %.sroa.8.24.vec.extract, 4
  br i1 %i.er, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.es = icmp eq i64 %.sroa.8.24.vec.extract, 0
  %i.et = and i64 %.sroa.8.24.vec.extract, 7
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = or i1 %i.es, %i.eu
  br i1 %i.ev, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i61

rbimpl_RB_TYPE_P_fastpath.exit.i.i61:             ; preds = %bb.ap
  %i.ew = inttoptr i64 %.sroa.8.24.vec.extract to ptr
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !33
  %i.ey = and i64 %i.ex, 31
  %i.ez = icmp eq i64 %i.ey, 5
  br i1 %i.ez, label %bb.aq, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62

bb.aq:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i61
  %i.fa = tail call i64 @rb_str_to_inum(i64 noundef %.sroa.8.24.vec.extract, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62:      ; preds = %bb.aq, %rbimpl_RB_TYPE_P_fastpath.exit.i.i61, %bb.ap
  %.0.i.i63 = phi i64 [ %i.fa, %bb.aq ], [ %.sroa.8.24.vec.extract, %rbimpl_RB_TYPE_P_fastpath.exit.i.i61 ], [ %.sroa.8.24.vec.extract, %bb.ap ] ; 3 uses
  %i.fb = trunc i64 %.0.i.i63 to i1
  br i1 %i.fb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62
  %i.fc = tail call i64 @rb_fix2int(i64 noundef %.0.i.i63) #18
  br label %obj2int.exit.i64

bb.as:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62
  %i.fd = tail call i64 @rb_num2int(i64 noundef %.0.i.i63) #18
  br label %obj2int.exit.i64

obj2int.exit.i64:                                 ; preds = %bb.as, %bb.ar
  %.0.i3.i.i65 = phi i64 [ %i.fc, %bb.ar ], [ %i.fd, %bb.as ] ; 2 uses
  %i.fe = and i64 %.0.i3.i.i65, 4294967264
  %.not.i66 = icmp eq i64 %i.fe, 0
  br i1 %.not.i66, label %obj2ubits.exit67, label %bb.at

bb.at:                                            ; preds = %obj2int.exit.i64
  %i.ff = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ff, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit67:                                 ; preds = %obj2int.exit.i64
  %i.fg = shl i64 %.0.i3.i.i65, 18
  %i.fh = and i64 %i.fg, 8126464
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.ao, %obj2ubits.exit67
  %i.fi = phi i64 [ %.pre, %obj2ubits.exit67 ], [ %i.eq, %bb.ao ]
  %i.fj = phi i64 [ %i.fh, %obj2ubits.exit67 ], [ 0, %bb.ao ]
  %i.fk = and i64 %i.fi, -8126465
  %i.fl = or disjoint i64 %i.fk, %i.fj            ; 2 uses
  store i64 %i.fl, ptr %i.c, align 8
  %.sroa.8.32.vec.extract = extractelement <2 x i64> %.sroa.8.2, i64 1 ; 7 uses
  %i.fm = icmp eq i64 %.sroa.8.32.vec.extract, 4
  br i1 %i.fm, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fn = icmp eq i64 %.sroa.8.32.vec.extract, 0
  %i.fo = and i64 %.sroa.8.32.vec.extract, 7
  %i.fp = icmp ne i64 %i.fo, 0
  %i.fq = or i1 %i.fn, %i.fp
  br i1 %i.fq, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i68

rbimpl_RB_TYPE_P_fastpath.exit.i.i68:             ; preds = %bb.av
  %i.fr = inttoptr i64 %.sroa.8.32.vec.extract to ptr
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !33
  %i.ft = and i64 %i.fs, 31
  %i.fu = icmp eq i64 %i.ft, 5
  br i1 %i.fu, label %bb.aw, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69

bb.aw:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i68
  %i.fv = tail call i64 @rb_str_to_inum(i64 noundef %.sroa.8.32.vec.extract, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69:      ; preds = %bb.aw, %rbimpl_RB_TYPE_P_fastpath.exit.i.i68, %bb.av
  %.0.i.i70 = phi i64 [ %i.fv, %bb.aw ], [ %.sroa.8.32.vec.extract, %rbimpl_RB_TYPE_P_fastpath.exit.i.i68 ], [ %.sroa.8.32.vec.extract, %bb.av ] ; 3 uses
  %i.fw = trunc i64 %.0.i.i70 to i1
  br i1 %i.fw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69
  %i.fx = tail call i64 @rb_fix2int(i64 noundef %.0.i.i70) #18
  br label %obj2int.exit.i71

bb.ay:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69
  %i.fy = tail call i64 @rb_num2int(i64 noundef %.0.i.i70) #18
  br label %obj2int.exit.i71

obj2int.exit.i71:                                 ; preds = %bb.ay, %bb.ax
  %.0.i3.i.i72 = phi i64 [ %i.fx, %bb.ax ], [ %i.fy, %bb.ay ] ; 2 uses
  %i.fz = and i64 %.0.i3.i.i72, 4294967232
  %.not.i73 = icmp eq i64 %i.fz, 0
  br i1 %.not.i73, label %obj2ubits.exit74, label %bb.az

bb.az:                                            ; preds = %obj2int.exit.i71
  %i.ga = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ga, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit74:                                 ; preds = %obj2int.exit.i71
  %i.gb = shl i64 %.0.i3.i.i72, 23
  %i.gc = and i64 %i.gb, 528482304
  %.pre116 = load i64, ptr %i.c, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.au, %obj2ubits.exit74
  %i.gd = phi i64 [ %.pre116, %obj2ubits.exit74 ], [ %i.fl, %bb.au ]
  %i.ge = phi i64 [ %i.gc, %obj2ubits.exit74 ], [ 0, %bb.au ]
  %i.gf = and i64 %i.gd, -528482305
  %i.gg = or disjoint i64 %i.gf, %i.ge            ; 3 uses
  store i64 %i.gg, ptr %i.c, align 8
  %i.gh = icmp eq i64 %.sroa.19.1, 4
  %i.gi = icmp ne i32 %0, 7
  %or.cond.not = or i1 %i.gi, %i.gh
  %i.gj = icmp eq i64 %.sroa.15.1, 4              ; 2 uses
  br i1 %or.cond.not, label %bb.bt, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.gj, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gk = icmp eq i64 %.sroa.15.1, 0
  %i.gl = and i64 %.sroa.15.1, 7
  %i.gm = icmp ne i64 %i.gl, 0
  %i.gn = or i1 %i.gk, %i.gm
  br i1 %i.gn, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i75

rbimpl_RB_TYPE_P_fastpath.exit.i.i75:             ; preds = %bb.bc
  %i.go = inttoptr i64 %.sroa.15.1 to ptr
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !33
  %i.gq = and i64 %i.gp, 31
  %i.gr = icmp eq i64 %i.gq, 5
  br i1 %i.gr, label %bb.bd, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76

bb.bd:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i75
  %i.gs = tail call i64 @rb_str_to_inum(i64 noundef %.sroa.15.1, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76:      ; preds = %bb.bd, %rbimpl_RB_TYPE_P_fastpath.exit.i.i75, %bb.bc
  %.0.i.i77 = phi i64 [ %i.gs, %bb.bd ], [ %.sroa.15.1, %rbimpl_RB_TYPE_P_fastpath.exit.i.i75 ], [ %.sroa.15.1, %bb.bc ] ; 3 uses
  %i.gt = trunc i64 %.0.i.i77 to i1
  br i1 %i.gt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76
  %i.gu = tail call i64 @rb_fix2int(i64 noundef %.0.i.i77) #18
  br label %obj2int.exit.i78

bb.bf:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i76
  %i.gv = tail call i64 @rb_num2int(i64 noundef %.0.i.i77) #18
  br label %obj2int.exit.i78

obj2int.exit.i78:                                 ; preds = %bb.bf, %bb.be
  %.0.i3.i.i79 = phi i64 [ %i.gu, %bb.be ], [ %i.gv, %bb.bf ] ; 2 uses
  %i.gw = and i64 %.0.i3.i.i79, 4294967232
  %.not.i80 = icmp eq i64 %i.gw, 0
  br i1 %.not.i80, label %obj2ubits.exit81, label %bb.bg

bb.bg:                                            ; preds = %obj2int.exit.i78
end_hunk_2
