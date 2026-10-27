Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/time?download=true
inline.NumInlined: 958
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@gmtime_with_leapsecond:bb.a
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
  %i.aw = phi i64 [ %i.av, %bb.n ], [ %i.at, %bb.m ]
  %.fr150 = freeze i64 %i.aw                      ; 3 uses
  %i.ax = and i64 %.fr150, 3
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %bb.p, label %leap_year_p.exit.thread, !prof !19

bb.p:                                             ; preds = %bb.o
  %.lhs.trunc143 = trunc i64 %.fr150 to i32
  %i.ay = udiv i32 %.lhs.trunc143, 100
  %.zext144 = zext nneg i32 %i.ay to i64          ; 2 uses
  %i.az = mul nuw nsw i64 %.zext144, 100
  %.not11.i = icmp eq i64 %.fr150, %i.az
  br i1 %.not11.i, label %leap_year_p.exit, label %leap_year_p.exit.thread131, !prof !19

leap_year_p.exit:                                 ; preds = %bb.p
  %i.ba = and i64 %.zext144, 3
  %.not151 = icmp eq i64 %i.ba, 0
  br i1 %.not151, label %leap_year_p.exit.thread131, label %leap_year_p.exit.thread

leap_year_p.exit.thread:                          ; preds = %bb.o, %leap_year_p.exit
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
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !51
  %i.bv = sext i8 %i.bu to i32
  store i32 %i.bv, ptr %i.an, align 4, !tbaa !65
  %i.bw = add i32 %i.al, -1
  br label %leap_year_p.exit.thread131

bb.v:                                             ; preds = %bb.q
  %i.bx = add i32 %i.bb, -1
  store i32 %i.bx, ptr %i.an, align 4, !tbaa !65
  %i.by = add i32 %i.al, -1
  br label %leap_year_p.exit.thread131

leap_year_p.exit.thread131:                       ; preds = %leap_year_p.exit.thread, %leap_year_p.exit, %bb.p, %leap_year_p.exit111.thread139, %bb.v
  %.sink174 = phi i32 [ %i.bw, %leap_year_p.exit111.thread139 ], [ %i.by, %bb.v ], [ 364, %leap_year_p.exit.thread ], [ 365, %leap_year_p.exit ], [ 365, %bb.p ]
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
  %i.cg = phi i64 [ %i.cf, %bb.x ], [ %i.cd, %bb.w ]
  %.fr189 = freeze i64 %i.cg                      ; 3 uses
  %i.ch = and i64 %.fr189, 3
  %.not.i112.not = icmp eq i64 %i.ch, 0
  br i1 %.not.i112.not, label %bb.z, label %.sink.split176, !prof !19

bb.z:                                             ; preds = %bb.y
  %.lhs.trunc = trunc i64 %.fr189 to i32
  %i.ci = udiv i32 %.lhs.trunc, 100
  %.zext = zext nneg i32 %i.ci to i64             ; 2 uses
  %i.cj = mul nuw nsw i64 %.zext, 100
  %.not11.i114 = icmp eq i64 %.fr189, %i.cj
  br i1 %.not11.i114, label %leap_year_p.exit115, label %.sink.split176, !prof !19

leap_year_p.exit115:                              ; preds = %bb.z
  %i.ck = and i64 %.zext, 3
  %.not190 = icmp eq i64 %i.ck, 0                 ; 2 uses
  %spec.select175 = select i1 %.not190, i32 365, i32 364
  %i.cl = select i1 %.not190, ptr @leap_year_days_in_month, ptr @common_year_days_in_month
  br label %.sink.split176

.sink.split176:                                   ; preds = %bb.y, %bb.z, %leap_year_p.exit115
  %.1.i113163 = phi ptr [ %i.cl, %leap_year_p.exit115 ], [ @leap_year_days_in_month, %bb.z ], [ @common_year_days_in_month, %bb.y ]
  %i.cm = phi i32 [ %spec.select175, %leap_year_p.exit115 ], [ 365, %bb.z ], [ 364, %bb.y ]
  %i.cn = getelementptr i8, ptr %1, i64 28        ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !70 ; 3 uses
  %i.cp = icmp eq i32 %i.co, %i.cm
  br i1 %i.cp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.sink.split176
  %i.cq = add i32 %i.cb, 1
  store i32 %i.cq, ptr %i.ca, align 4, !tbaa !63
  %i.cr = getelementptr i8, ptr %1, i64 16
  store i32 0, ptr %i.cr, align 8, !tbaa !64
  %i.cs = getelementptr i8, ptr %1, i64 12
  store i32 1, ptr %i.cs, align 4, !tbaa !65
  br label %bb.ae

bb.ab:                                            ; preds = %.sink.split176
  %i.ct = getelementptr i8, ptr %1, i64 12        ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !65 ; 2 uses
  %i.cv = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !64 ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %.1.i113163, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !51
  %i.da = sext i8 %i.cz to i32
  %i.db = icmp eq i32 %i.cu, %i.da
  br i1 %i.db, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dc = add i32 %i.cw, 1
  store i32 %i.dc, ptr %i.cv, align 8, !tbaa !64
  store i32 1, ptr %i.ct, align 4, !tbaa !65
  %2 = add i32 %i.co, 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %3 = add i32 %i.cu, 1
  store i32 %3, ptr %i.ct, align 4, !tbaa !65
  %i.dd = add i32 %i.co, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %.sink180 = phi i32 [ %2, %bb.ac ], [ %i.dd, %bb.ad ], [ 0, %bb.aa ]
  store i32 %.sink180, ptr %i.cn, align 4, !tbaa !70
  br label %.thread119.sink.split

.thread119.sink.split:                            ; preds = %bb.ae, %leap_year_p.exit.thread131
  %.sink185 = phi i32 [ 6, %leap_year_p.exit.thread131 ], [ 1, %bb.ae ]
  %i.de = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !69
  %i.dg = add i32 %i.df, %.sink185
  %i.dh = srem i32 %i.dg, 7
  store i32 %i.dh, ptr %i.de, align 8, !tbaa !69
  br label %.thread119

.thread119:                                       ; preds = %.thread119.sink.split, %bb.i, %bb.k
  %i.di = getelementptr i8, ptr %1, i64 32
  store i32 0, ptr %i.di, align 8, !tbaa !71
  %i.dj = getelementptr i8, ptr %1, i64 40
  store i64 0, ptr %i.dj, align 8, !tbaa !74
  %i.dk = getelementptr i8, ptr %1, i64 48
  store ptr @.str.33, ptr %i.dk, align 8, !tbaa !75
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
  %i.bk = lshr i32 %i.bf, 2
  %i.bl = select i1 %i.bg, i32 %i.bj, i32 %i.bk
  %i.bm = add i32 %i.x, -1                        ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %calc_tm_yday.exit
  %i.bo = sub nsw i32 0, %i.x
  %.neg63 = udiv i32 %i.bo, 100
  %i.bp = xor i32 %.neg63, -1
  br label %rb_long2num_inline.exit

bb.n:                                             ; preds = %calc_tm_yday.exit
  %i.bq = udiv i32 %i.bm, 100
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.n, %bb.m
  %i.br = phi i32 [ %i.bp, %bb.m ], [ %i.bq, %bb.n ]
  %i.bs = add i32 %i.x, 299
  %i.bt = sdiv i32 %i.bs, 400
end_hunk_0
