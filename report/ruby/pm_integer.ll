Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/pm_integer?download=true
inline.NumInlined: 29
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pm_integer_parse:bb.a
  br i1 %or.cond56, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %spec.select, i64 1 ; 9 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  switch i8 %i.x, label %bb.n [
    i8 95, label %bb.i
    i8 48, label %.loopexit
    i8 49, label %.loopexit
    i8 50, label %.loopexit
    i8 51, label %.loopexit
    i8 52, label %.loopexit
    i8 53, label %.loopexit
    i8 54, label %.loopexit
    i8 55, label %.loopexit
    i8 98, label %bb.j
    i8 66, label %bb.j
    i8 111, label %bb.k
    i8 79, label %bb.k
    i8 100, label %bb.l
    i8 68, label %bb.l
    i8 120, label %bb.m
    i8 88, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.z = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.aa = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.l:                                             ; preds = %bb.h, %bb.h
  %i.ab = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.m:                                             ; preds = %bb.h, %bb.h
  %i.ac = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.n:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 511, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_parse) #13
  unreachable

.loopexit:                                        ; preds = %.preheader, %bb.e, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.d, %bb.c, %bb.g, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.b, %bb.a
  %.3 = phi ptr [ %spec.select, %bb.a ], [ %i.w, %bb.h ], [ %i.f, %bb.b ], [ %spec.select, %bb.g ], [ %i.w, %bb.h ], [ %i.g, %bb.c ], [ %spec.select57, %bb.e ], [ %i.p, %bb.f ], [ %i.y, %bb.i ], [ %i.i, %bb.d ], [ %i.z, %bb.j ], [ %i.aa, %bb.k ], [ %i.ab, %bb.l ], [ %i.ac, %bb.m ], [ %i.w, %bb.h ], [ %i.w, %bb.h ], [ %i.w, %bb.h ], [ %i.w, %bb.h ], [ %i.w, %bb.h ], [ %i.w, %bb.h ], [ %.146, %.preheader ] ; 5 uses
  %i.ad = phi i1 [ true, %bb.a ], [ false, %bb.h ], [ false, %bb.b ], [ true, %bb.g ], [ false, %bb.h ], [ false, %bb.c ], [ true, %bb.e ], [ false, %bb.f ], [ false, %bb.i ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.l ], [ false, %bb.m ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ true, %.preheader ]
  %.044 = phi i32 [ 10, %bb.a ], [ 8, %bb.h ], [ 2, %bb.b ], [ 10, %bb.g ], [ 8, %bb.h ], [ 8, %bb.c ], [ 10, %bb.e ], [ 16, %bb.f ], [ 8, %bb.i ], [ 8, %bb.d ], [ 2, %bb.j ], [ 8, %bb.k ], [ 10, %bb.l ], [ 16, %bb.m ], [ 8, %bb.h ], [ 8, %bb.h ], [ 8, %bb.h ], [ 8, %bb.h ], [ 8, %bb.h ], [ 8, %bb.h ], [ 10, %.preheader ] ; 2 uses
  %.not = icmp ult ptr %.3, %3
  br i1 %.not, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %.loopexit
  %i.ae = load i8, ptr %.3, align 1, !tbaa !11
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr i8, ptr @pm_integer_parse_digit_values, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11  ; 2 uses
  %.not.i = icmp eq i8 %i.ah, -1
  br i1 %.not.i, label %bb.p, label %pm_integer_parse_digit.exit

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_parse_digit) #13
  unreachable

pm_integer_parse_digit.exit:                      ; preds = %bb.o
  %i.ai = zext i8 %i.ah to i64                    ; 2 uses
  %.04363 = getelementptr i8, ptr %.3, i64 1      ; 2 uses
  %i.aj = icmp ult ptr %.04363, %3
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %pm_integer_parse_digit.exit
  %i.ak = zext nneg i32 %.044 to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.af
  %.04365 = phi ptr [ %.04363, %.lr.ph ], [ %.043, %bb.af ] ; 2 uses
  %.064 = phi i64 [ %i.ai, %.lr.ph ], [ %.1, %bb.af ] ; 2 uses
  %i.al = load i8, ptr %.04365, align 1, !tbaa !11 ; 2 uses
  %i.am = icmp eq i8 %i.al, 95
  br i1 %i.am, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = zext i8 %i.al to i64
  %i.ao = getelementptr i8, ptr @pm_integer_parse_digit_values, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11  ; 2 uses
  %.not.i58 = icmp eq i8 %i.ap, -1
  br i1 %.not.i58, label %bb.s, label %pm_integer_parse_digit.exit59

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_parse_digit) #13
  unreachable

pm_integer_parse_digit.exit59:                    ; preds = %bb.r
  %i.aq = mul nuw nsw i64 %.064, %i.ak
  %i.ar = zext i8 %i.ap to i64
  %i.as = add nuw nsw i64 %i.aq, %i.ar            ; 2 uses
  %i.at = icmp samesign ugt i64 %i.as, 4294967295
  br i1 %i.at, label %bb.t, label %bb.af

bb.t:                                             ; preds = %pm_integer_parse_digit.exit59
  %i.au = ptrtoint ptr %3 to i64
  %i.av = ptrtoint ptr %.3 to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.aw) #14 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.w
  %.047.i = phi i64 [ %.1.i, %bb.w ], [ 0, %bb.t ] ; 3 uses
  %.01746.i = phi ptr [ %i.bf, %bb.w ], [ %.3, %bb.t ] ; 2 uses
  %i.ay = load i8, ptr %.01746.i, align 1, !tbaa !11 ; 2 uses
  %i.az = icmp eq i8 %i.ay, 95
  br i1 %i.az, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.ba = zext i8 %i.ay to i64
  %i.bb = getelementptr i8, ptr @pm_integer_parse_digit_values, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !11  ; 2 uses
  %.not.i.i = icmp eq i8 %i.bc, -1
  br i1 %.not.i.i, label %bb.v, label %pm_integer_parse_digit.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_parse_digit) #13
  unreachable

pm_integer_parse_digit.exit.i:                    ; preds = %bb.u
  %i.bd = add i64 %.047.i, 1
  %i.be = getelementptr i8, ptr %i.ax, i64 %.047.i
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %pm_integer_parse_digit.exit.i, %.lr.ph.i
  %.1.i = phi i64 [ %.047.i, %.lr.ph.i ], [ %i.bd, %pm_integer_parse_digit.exit.i ] ; 9 uses
  %i.bf = getelementptr i8, ptr %.01746.i, i64 1  ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bf, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.w
  br i1 %i.ad, label %bb.x, label %.preheader.i

bb.x:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bg = add i64 %.1.i, 8
  %i.bh = udiv i64 %i.bg, 9                       ; 2 uses
  %i.bi = tail call noalias ptr @calloc(i64 noundef %i.bh, i64 noundef 4) #15 ; 3 uses
  %.not.i19.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i19.i, label %pm_integer_parse_decimal.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.z
  %.020.i.i = phi i32 [ %.1.i.i, %bb.z ], [ 0, %bb.x ]
  %.01719.i.i = phi i64 [ %i.bu, %bb.z ], [ 0, %bb.x ] ; 3 uses
  %i.bj = mul i32 %.020.i.i, 10
  %i.bk = getelementptr i8, ptr %i.ax, i64 %.01719.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add i32 %i.bj, %i.bm                    ; 2 uses
  %i.bo = xor i64 %.01719.i.i, -1
  %i.bp = add i64 %.1.i, %i.bo                    ; 2 uses
  %i.bq = urem i64 %i.bp, 9
  %i.br = udiv i64 %i.bp, 9
  %i.bs = icmp eq i64 %i.bq, 0
  br i1 %i.bs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.bt = getelementptr [4 x i8], ptr %i.bi, i64 %i.br
  store i32 %i.bn, ptr %i.bt, align 4, !tbaa !7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.1.i.i = phi i32 [ 0, %bb.y ], [ %i.bn, %.lr.ph.i.i ]
  %i.bu = add nuw i64 %.01719.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bu, %.1.i
  br i1 %exitcond.not.i.i, label %pm_integer_parse_decimal.exit.i, label %.lr.ph.i.i, !llvm.loop !15

pm_integer_parse_decimal.exit.i:                  ; preds = %bb.z, %bb.x
  store i64 %i.bh, ptr %4, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bi, ptr %i.bv, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.bw, align 8
  call fastcc void @pm_integer_convert_base(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 1000000000, i64 noundef 4294967296)
  tail call void @free(ptr noundef %i.bi) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %pm_integer_parse_big.exit

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.i
  %.0.i.i = phi i64 [ %i.ca, %.preheader.i ], [ 1, %._crit_edge.i ] ; 5 uses
  %i.bx = trunc i64 %.0.i.i to i32
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = icmp ugt i32 %.044, %i.by
  %i.ca = add i64 %.0.i.i, 1
  br i1 %i.bz, label %.preheader.i, label %bb.aa, !llvm.loop !23

bb.aa:                                            ; preds = %.preheader.i
  %i.cb = mul i64 %.0.i.i, %.1.i
  %i.cc = add i64 %i.cb, 31                       ; 2 uses
  %i.cd = lshr i64 %i.cc, 5                       ; 3 uses
  %i.ce = tail call noalias ptr @calloc(i64 noundef %i.cd, i64 noundef 4) #15 ; 8 uses
  %.not.i20.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i20.i, label %.preheader.i.i, label %.lr.ph.i21.i

.preheader.i.i:                                   ; preds = %bb.ac, %bb.aa
  %i.cf = icmp ugt i64 %i.cc, 63
  br i1 %i.cf, label %.lr.ph39.i.i, label %.critedge.i.i

.lr.ph.i21.i:                                     ; preds = %bb.aa, %bb.ac
  %.03437.i.i = phi i64 [ %i.da, %bb.ac ], [ 0, %bb.aa ] ; 3 uses
  %i.cg = xor i64 %.03437.i.i, -1
  %i.ch = add i64 %.1.i, %i.cg
  %i.ci = mul i64 %i.ch, %.0.i.i                  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ax, i64 %.03437.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = lshr i64 %i.ci, 5
  %i.cn = and i64 %i.ci, 31                       ; 2 uses
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl i32 %i.cl, %i.co
  %i.cq = getelementptr [4 x i8], ptr %i.ce, i64 %i.cm ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !7
  %i.cs = or i32 %i.cp, %i.cr
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !7
  %i.ct = sub nuw nsw i64 32, %i.cn               ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %.0.i.i
  br i1 %i.cu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i21.i
  %i.cv = trunc nuw nsw i64 %i.ct to i32
  %i.cw = lshr i32 %i.cl, %i.cv
  %i.cx = getelementptr i8, ptr %i.cq, i64 4      ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cz = or i32 %i.cy, %i.cw
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i21.i
  %i.da = add nuw i64 %.03437.i.i, 1              ; 2 uses
  %exitcond.not.i22.i = icmp eq i64 %i.da, %.1.i
  br i1 %exitcond.not.i22.i, label %.preheader.i.i, label %.lr.ph.i21.i, !llvm.loop !24

.lr.ph39.i.i:                                     ; preds = %.preheader.i.i, %bb.ad
  %.03338.i.i = phi i64 [ %i.de, %bb.ad ], [ %i.cd, %.preheader.i.i ] ; 4 uses
  %i.db = getelementptr [4 x i8], ptr %i.ce, i64 %.03338.i.i
  %i.dc = getelementptr i8, ptr %i.db, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %.not50.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not50.i.i, label %bb.ad, label %thread-pre-split.i.i.i

bb.ad:                                            ; preds = %.lr.ph39.i.i
  %i.de = add nsw i64 %.03338.i.i, -1             ; 2 uses
  %i.df = icmp ugt i64 %i.de, 1
  br i1 %i.df, label %.lr.ph39.i.i, label %thread-pre-split.i.i.thread38.i, !llvm.loop !25

thread-pre-split.i.i.thread38.i:                  ; preds = %bb.ad
  %.sroa.3.0..sroa_idx.i2642.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i2642.i, align 8
  br label %pm_integer_free.exit.i.i.i

.critedge.i.i:                                    ; preds = %.preheader.i.i
  store i64 %i.cd, ptr %0, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ce, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %5 = icmp eq ptr %i.ce, null
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  br i1 %5, label %pm_integer_parse_big.exit, label %pm_integer_free.exit.i.i.i

thread-pre-split.i.i.i:                           ; preds = %.lr.ph39.i.i
  store i64 %.03338.i.i, ptr %0, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ce, ptr %.sroa.2.0..sroa_idx.i25.i, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i26.i, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %thread-pre-split.i.i.i
  %i.dg = phi i64 [ %i.dl, %bb.ae ], [ %.03338.i.i, %thread-pre-split.i.i.i ] ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %i.ce, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !7
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ae, label %pm_integer_parse_big.exit

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.dl = add i64 %i.dg, -1                       ; 3 uses
  store i64 %i.dl, ptr %0, align 8, !tbaa !16
  %i.dm = icmp ugt i64 %i.dl, 1
  br i1 %i.dm, label %.lr.ph.i.i.i, label %pm_integer_free.exit.i.i.i, !llvm.loop !28

pm_integer_free.exit.i.i.i:                       ; preds = %bb.ae, %.critedge.i.i, %thread-pre-split.i.i.thread38.i
  %.sroa.3.0..sroa_idx.i3037.i = phi ptr [ %.sroa.3.0..sroa_idx.i2642.i, %thread-pre-split.i.i.thread38.i ], [ %.sroa.3.0..sroa_idx.i.i, %.critedge.i.i ], [ %.sroa.3.0..sroa_idx.i26.i, %bb.ae ]
  %.sroa.4.0..sroa_idx.i3136.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dn = load i32, ptr %i.ce, align 4, !tbaa !7
  tail call void @free(ptr noundef nonnull %i.ce) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 %i.dn, ptr %.sroa.3.0..sroa_idx.i3037.i, align 8, !tbaa !7
  store i32 0, ptr %.sroa.4.0..sroa_idx.i3136.i, align 4
  br label %pm_integer_parse_big.exit

pm_integer_parse_big.exit:                        ; preds = %.lr.ph.i.i.i, %pm_integer_parse_decimal.exit.i, %.critedge.i.i, %pm_integer_free.exit.i.i.i
  tail call void @free(ptr noundef %i.ax) #16
  br label %bb.ag

bb.af:                                            ; preds = %pm_integer_parse_digit.exit59, %bb.q
  %.1 = phi i64 [ %.064, %bb.q ], [ %i.as, %pm_integer_parse_digit.exit59 ] ; 2 uses
  %.043 = getelementptr i8, ptr %.04365, i64 1    ; 2 uses
  %exitcond.not = icmp eq ptr %.043, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.af, %pm_integer_parse_digit.exit
  %.0.lcssa = phi i64 [ %i.ai, %pm_integer_parse_digit.exit ], [ %.1, %bb.af ]
  %i.do = trunc nuw i64 %.0.lcssa to i32
  %i.dp = getelementptr i8, ptr %0, i64 16
  store i32 %i.do, ptr %i.dp, align 8, !tbaa !30
  br label %bb.ag

bb.ag:                                            ; preds = %pm_integer_parse_big.exit, %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @pm_integer_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !31, !range !32, !noundef !33 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1                  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 20
  %i.e = load i8, ptr %i.d, align 4, !tbaa !31, !range !32, !noundef !33
  %.not = icmp eq i8 %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = select i1 %i.c, i32 -1, i32 1
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.neg = select i1 %i.c, i32 1, i32 -1           ; 4 uses
  %i.g = select i1 %i.c, i32 -1, i32 1            ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.r = icmp ult i32 %i.o, %i.q
  br i1 %i.r, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ugt i32 %i.o, %i.q
  %. = select i1 %i.s, i32 %i.g, i32 0
  br label %.thread

bb.g:                                             ; preds = %bb.c
  %i.t = load i64, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.u = load i64, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = icmp ugt i64 %i.t, %i.u
  %or.cond = or i1 %i.z, %i.y
  br i1 %or.cond, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.not4854.not = icmp eq i64 %i.t, 0
  br i1 %.not4854.not, label %.thread, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.04055, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.t
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !34

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.056 = phi i32 [ %.1, %bb.i ], [ undef, %.preheader ]
  %.04055 = phi i64 [ %i.aa, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %i.ab = xor i64 %.04055, -1
  %i.ac = add i64 %i.t, %i.ab                     ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7  ; 3 uses
  %i.af = getelementptr [4 x i8], ptr %i.x, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7  ; 3 uses
  %.not52 = icmp ult i32 %i.ae, %i.ag
  %.not53 = icmp ugt i32 %i.ae, %i.ag
  %..0 = select i1 %.not53, i32 %i.g, i32 %.056
  %cond1 = icmp eq i32 %i.ae, %i.ag
  %.1 = select i1 %.not52, i32 %.neg, i32 %..0    ; 2 uses
  br i1 %cond1, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.i, %.lr.ph, %.preheader, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.b
  %.4 = phi i32 [ %i.f, %bb.b ], [ %.neg, %bb.d ], [ %., %bb.f ], [ %.neg, %bb.e ], [ %i.g, %bb.h ], [ %.neg, %bb.g ], [ 0, %.preheader ], [ 0, %bb.i ], [ %.1, %.lr.ph ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @pm_integers_reduce(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !16
  %.not17 = icmp eq i64 %i.b, 0
  br i1 %.not17, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  switch i32 %i.g, label %.lr.ph [
    i32 1, label %bb.e
    i32 0, label %._crit_edge
  ]

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.021 = phi i32 [ %.01420, %.lr.ph ], [ %i.d, %bb.d ]
  %.01420 = phi i32 [ %i.h, %.lr.ph ], [ %i.g, %bb.d ] ; 3 uses
  %i.h = urem i32 %.021, %.01420                  ; 2 uses
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.0.lcssa = phi i32 [ %i.d, %bb.d ], [ %.01420, %.lr.ph ] ; 2 uses
  %i.i = udiv i32 %i.d, %.0.lcssa
  store i32 %i.i, ptr %i.c, align 8, !tbaa !30
  %i.j = load i32, ptr %i.f, align 8, !tbaa !30
  %i.k = udiv i32 %i.j, %.0.lcssa
  store i32 %i.k, ptr %i.f, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_integer_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !31, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 45) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %i.h) #16
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr %1, align 8, !tbaa !16
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.e, align 4
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef %i.k) #16
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call fastcc void @pm_integer_convert_base(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef 4294967296, i64 noundef 1000000000)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %pm_integer_free.exit, label %bb.h

pm_integer_free.exit:                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !30
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %i.p) #16
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr %2, align 8, !tbaa !16     ; 8 uses
  %i.r = mul i64 %i.q, 9                          ; 13 uses
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 1) #15 ; 15 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %.preheader42

.preheader42:                                     ; preds = %bb.h
  %invariant.gep = getelementptr i8, ptr %i.s, i64 %i.r ; 6 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.lr.ph47.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader42
  %min.iters.check = icmp ult i64 %i.q, 8
  br i1 %min.iters.check, label %.lr.ph.preheader81, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.u = add i64 %i.q, -1
  %i.v = getelementptr i8, ptr %i.s, i64 %i.r     ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 9) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 9 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.w = sub i64 0, %mul.result
  %i.x = getelementptr i8, ptr %i.s, i64 %i.r     ; 2 uses
  %i.y = sub i64 0, %mul.result
  %i.z = getelementptr i8, ptr %i.s, i64 %i.r     ; 2 uses
  %i.aa = sub i64 0, %mul.result
  %i.ab = getelementptr i8, ptr %i.s, i64 %i.r    ; 2 uses
  %i.ac = sub i64 0, %mul.result
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.r    ; 2 uses
  %i.ae = sub i64 0, %mul.result
  %i.af = getelementptr i8, ptr %i.s, i64 %i.r    ; 2 uses
  %i.ag = sub i64 0, %mul.result
  %i.ah = getelementptr i8, ptr %i.s, i64 %i.r    ; 2 uses
  %i.ai = sub i64 0, %mul.result
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.r    ; 2 uses
  %i.ak = sub i64 0, %mul.result
  %scevgep70 = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = insertelement <8 x ptr> poison, ptr %i.x, i64 0
  %i.am = insertelement <8 x ptr> %i.al, ptr %i.v, i64 1
  %i.an = insertelement <8 x ptr> %i.am, ptr %i.z, i64 2
  %i.ao = insertelement <8 x ptr> %i.an, ptr %i.ab, i64 3
  %i.ap = insertelement <8 x ptr> %i.ao, ptr %i.ad, i64 4
  %i.aq = insertelement <8 x ptr> %i.ap, ptr %i.af, i64 5
  %i.ar = insertelement <8 x ptr> %i.aq, ptr %i.ah, i64 6
  %i.as = insertelement <8 x ptr> %i.ar, ptr %i.aj, i64 7
  %i.at = getelementptr i8, <8 x ptr> %i.as, <8 x i64> <i64 -2, i64 -1, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8>
  %scevgep69 = getelementptr i8, ptr %i.ah, i64 -7
  %scevgep68 = getelementptr i8, ptr %i.af, i64 -6
  %scevgep67 = getelementptr i8, ptr %i.ad, i64 -5
  %scevgep66 = getelementptr i8, ptr %i.ab, i64 -4
  %scevgep65 = getelementptr i8, ptr %i.z, i64 -3
  %scevgep = getelementptr i8, ptr %i.v, i64 -1
  %scevgep64 = getelementptr i8, ptr %i.x, i64 -2
  %i.au = getelementptr i8, ptr %scevgep, i64 %i.w
  %i.av = getelementptr i8, ptr %scevgep64, i64 %i.y
  %i.aw = getelementptr i8, ptr %scevgep65, i64 %i.aa
  %i.ax = getelementptr i8, ptr %scevgep66, i64 %i.ac
  %i.ay = getelementptr i8, ptr %scevgep67, i64 %i.ae
  %i.az = getelementptr i8, ptr %scevgep68, i64 %i.ag
  %i.ba = getelementptr i8, ptr %scevgep69, i64 %i.ai
  %i.bb = getelementptr i8, ptr %scevgep70, i64 %i.ak
  %i.bc = insertelement <8 x ptr> poison, ptr %i.av, i64 0
  %i.bd = insertelement <8 x ptr> %i.bc, ptr %i.au, i64 1
  %i.be = insertelement <8 x ptr> %i.bd, ptr %i.aw, i64 2
  %i.bf = insertelement <8 x ptr> %i.be, ptr %i.ax, i64 3
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %i.ay, i64 4
  %i.bh = insertelement <8 x ptr> %i.bg, ptr %i.az, i64 5
  %i.bi = insertelement <8 x ptr> %i.bh, ptr %i.ba, i64 6
  %i.bj = insertelement <8 x ptr> %i.bi, ptr %i.bb, i64 7
  %i.bk = icmp ugt <8 x ptr> %i.bj, %i.at
  %i.bl = getelementptr i8, ptr %i.s, i64 %i.r
  %scevgep71 = getelementptr i8, ptr %i.bl, i64 -9 ; 2 uses
  %i.bm = sub i64 0, %mul.result
  %i.bn = getelementptr i8, ptr %scevgep71, i64 %i.bm
  %i.bo = icmp ugt ptr %i.bn, %scevgep71
  %i.bp = bitcast <8 x i1> %i.bk to i8
  %i.bq = icmp ne i8 %i.bp, 0
  %op.rdx = or i1 %mul.overflow, %i.bq
  %op.rdx73 = or i1 %op.rdx, %i.bo
  br i1 %op.rdx73, label %.lr.ph.preheader81, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.br = shl i64 %i.q, 2
  %scevgep72 = getelementptr i8, ptr %i.m, i64 %i.br
  %bound0 = icmp ult ptr %i.m, %invariant.gep
  %bound1 = icmp ult ptr %i.s, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bs = getelementptr [4 x i8], ptr %i.m, i64 %index
  %wide.load = load <4 x i32>, ptr %i.bs, align 4, !tbaa !7, !alias.scope !36, !noalias !39 ; 8 uses
  %i.bt = mul i64 %index, -9
  %i.bu = mul i64 %index, -9
  %i.bv = mul i64 %index, -9
  %i.bw = mul i64 %index, -9
  %i.bx = getelementptr i8, ptr %invariant.gep, i64 %i.bt ; 9 uses
  %i.by = getelementptr i8, ptr %invariant.gep, i64 %i.bu ; 9 uses
  %i.bz = getelementptr i8, ptr %invariant.gep, i64 %i.bv ; 9 uses
  %i.ca = getelementptr i8, ptr %invariant.gep, i64 %i.bw ; 9 uses
  %wide.load.frozen = freeze <4 x i32> %wide.load ; 2 uses
  %i.cb = udiv <4 x i32> %wide.load.frozen, splat (i32 10) ; 2 uses
  %i.cc = mul <4 x i32> %i.cb, splat (i32 10)
  %.decomposed = sub <4 x i32> %wide.load.frozen, %i.cc
  %i.cd = trunc nuw nsw <4 x i32> %.decomposed to <4 x i8>
  %i.ce = or disjoint <4 x i8> %i.cd, splat (i8 48) ; 4 uses
  %i.cf = getelementptr i8, ptr %i.bx, i64 -1
  %i.cg = getelementptr i8, ptr %i.by, i64 -10
  %i.ch = getelementptr i8, ptr %i.bz, i64 -19
  %i.ci = getelementptr i8, ptr %i.ca, i64 -28
  %i.cj = extractelement <4 x i8> %i.ce, i64 0
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !11, !alias.scope !39
  %i.ck = extractelement <4 x i8> %i.ce, i64 1
  store i8 %i.ck, ptr %i.cg, align 1, !tbaa !11, !alias.scope !39
  %i.cl = extractelement <4 x i8> %i.ce, i64 2
  store i8 %i.cl, ptr %i.ch, align 1, !tbaa !11, !alias.scope !39
  %i.cm = extractelement <4 x i8> %i.ce, i64 3
  store i8 %i.cm, ptr %i.ci, align 1, !tbaa !11, !alias.scope !39
  %i.cn = urem <4 x i32> %i.cb, splat (i32 10)
  %i.co = trunc nuw nsw <4 x i32> %i.cn to <4 x i8>
  %i.cp = or disjoint <4 x i8> %i.co, splat (i8 48) ; 4 uses
  %i.cq = getelementptr i8, ptr %i.bx, i64 -2
  %i.cr = getelementptr i8, ptr %i.by, i64 -11
  %i.cs = getelementptr i8, ptr %i.bz, i64 -20
  %i.ct = getelementptr i8, ptr %i.ca, i64 -29
  %i.cu = extractelement <4 x i8> %i.cp, i64 0
  store i8 %i.cu, ptr %i.cq, align 1, !tbaa !11, !alias.scope !39
  %i.cv = extractelement <4 x i8> %i.cp, i64 1
  store i8 %i.cv, ptr %i.cr, align 1, !tbaa !11, !alias.scope !39
  %i.cw = extractelement <4 x i8> %i.cp, i64 2
  store i8 %i.cw, ptr %i.cs, align 1, !tbaa !11, !alias.scope !39
  %i.cx = extractelement <4 x i8> %i.cp, i64 3
  store i8 %i.cx, ptr %i.ct, align 1, !tbaa !11, !alias.scope !39
  %i.cy = udiv <4 x i32> %wide.load, splat (i32 100)
  %i.cz = urem <4 x i32> %i.cy, splat (i32 10)
  %i.da = trunc nuw nsw <4 x i32> %i.cz to <4 x i8>
  %i.db = or disjoint <4 x i8> %i.da, splat (i8 48) ; 4 uses
  %i.dc = getelementptr i8, ptr %i.bx, i64 -3
  %i.dd = getelementptr i8, ptr %i.by, i64 -12
  %i.de = getelementptr i8, ptr %i.bz, i64 -21
  %i.df = getelementptr i8, ptr %i.ca, i64 -30
  %i.dg = extractelement <4 x i8> %i.db, i64 0
  store i8 %i.dg, ptr %i.dc, align 1, !tbaa !11, !alias.scope !39
  %i.dh = extractelement <4 x i8> %i.db, i64 1
  store i8 %i.dh, ptr %i.dd, align 1, !tbaa !11, !alias.scope !39
  %i.di = extractelement <4 x i8> %i.db, i64 2
  store i8 %i.di, ptr %i.de, align 1, !tbaa !11, !alias.scope !39
  %i.dj = extractelement <4 x i8> %i.db, i64 3
  store i8 %i.dj, ptr %i.df, align 1, !tbaa !11, !alias.scope !39
  %i.dk = udiv <4 x i32> %wide.load, splat (i32 1000)
  %i.dl = urem <4 x i32> %i.dk, splat (i32 10)
  %i.dm = trunc nuw nsw <4 x i32> %i.dl to <4 x i8>
  %i.dn = or disjoint <4 x i8> %i.dm, splat (i8 48) ; 4 uses
  %i.do = getelementptr i8, ptr %i.bx, i64 -4
  %i.dp = getelementptr i8, ptr %i.by, i64 -13
  %i.dq = getelementptr i8, ptr %i.bz, i64 -22
  %i.dr = getelementptr i8, ptr %i.ca, i64 -31
  %i.ds = extractelement <4 x i8> %i.dn, i64 0
  store i8 %i.ds, ptr %i.do, align 1, !tbaa !11, !alias.scope !39
  %i.dt = extractelement <4 x i8> %i.dn, i64 1
  store i8 %i.dt, ptr %i.dp, align 1, !tbaa !11, !alias.scope !39
  %i.du = extractelement <4 x i8> %i.dn, i64 2
  store i8 %i.du, ptr %i.dq, align 1, !tbaa !11, !alias.scope !39
  %i.dv = extractelement <4 x i8> %i.dn, i64 3
  store i8 %i.dv, ptr %i.dr, align 1, !tbaa !11, !alias.scope !39
  %i.dw = udiv <4 x i32> %wide.load, splat (i32 10000)
  %i.dx = urem <4 x i32> %i.dw, splat (i32 10)
  %i.dy = trunc nuw nsw <4 x i32> %i.dx to <4 x i8>
  %i.dz = or disjoint <4 x i8> %i.dy, splat (i8 48) ; 4 uses
  %i.ea = getelementptr i8, ptr %i.bx, i64 -5
  %i.eb = getelementptr i8, ptr %i.by, i64 -14
  %i.ec = getelementptr i8, ptr %i.bz, i64 -23
  %i.ed = getelementptr i8, ptr %i.ca, i64 -32
  %i.ee = extractelement <4 x i8> %i.dz, i64 0
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !11, !alias.scope !39
  %i.ef = extractelement <4 x i8> %i.dz, i64 1
  store i8 %i.ef, ptr %i.eb, align 1, !tbaa !11, !alias.scope !39
  %i.eg = extractelement <4 x i8> %i.dz, i64 2
  store i8 %i.eg, ptr %i.ec, align 1, !tbaa !11, !alias.scope !39
  %i.eh = extractelement <4 x i8> %i.dz, i64 3
  store i8 %i.eh, ptr %i.ed, align 1, !tbaa !11, !alias.scope !39
  %i.ei = udiv <4 x i32> %wide.load, splat (i32 100000)
  %i.ej = trunc nuw <4 x i32> %i.ei to <4 x i16>
  %i.ek = urem <4 x i16> %i.ej, splat (i16 10)
  %i.el = trunc nuw nsw <4 x i16> %i.ek to <4 x i8>
  %i.em = or disjoint <4 x i8> %i.el, splat (i8 48) ; 4 uses
  %i.en = getelementptr i8, ptr %i.bx, i64 -6
  %i.eo = getelementptr i8, ptr %i.by, i64 -15
  %i.ep = getelementptr i8, ptr %i.bz, i64 -24
  %i.eq = getelementptr i8, ptr %i.ca, i64 -33
  %i.er = extractelement <4 x i8> %i.em, i64 0
  store i8 %i.er, ptr %i.en, align 1, !tbaa !11, !alias.scope !39
  %i.es = extractelement <4 x i8> %i.em, i64 1
  store i8 %i.es, ptr %i.eo, align 1, !tbaa !11, !alias.scope !39
  %i.et = extractelement <4 x i8> %i.em, i64 2
  store i8 %i.et, ptr %i.ep, align 1, !tbaa !11, !alias.scope !39
  %i.eu = extractelement <4 x i8> %i.em, i64 3
  store i8 %i.eu, ptr %i.eq, align 1, !tbaa !11, !alias.scope !39
  %i.ev = udiv <4 x i32> %wide.load, splat (i32 1000000)
  %i.ew = trunc nuw nsw <4 x i32> %i.ev to <4 x i16>
  %i.ex = urem <4 x i16> %i.ew, splat (i16 10)
  %i.ey = trunc nuw nsw <4 x i16> %i.ex to <4 x i8>
  %i.ez = or disjoint <4 x i8> %i.ey, splat (i8 48) ; 4 uses
  %i.fa = getelementptr i8, ptr %i.bx, i64 -7
  %i.fb = getelementptr i8, ptr %i.by, i64 -16
  %i.fc = getelementptr i8, ptr %i.bz, i64 -25
  %i.fd = getelementptr i8, ptr %i.ca, i64 -34
  %i.fe = extractelement <4 x i8> %i.ez, i64 0
  store i8 %i.fe, ptr %i.fa, align 1, !tbaa !11, !alias.scope !39
  %i.ff = extractelement <4 x i8> %i.ez, i64 1
  store i8 %i.ff, ptr %i.fb, align 1, !tbaa !11, !alias.scope !39
  %i.fg = extractelement <4 x i8> %i.ez, i64 2
  store i8 %i.fg, ptr %i.fc, align 1, !tbaa !11, !alias.scope !39
  %i.fh = extractelement <4 x i8> %i.ez, i64 3
  store i8 %i.fh, ptr %i.fd, align 1, !tbaa !11, !alias.scope !39
  %i.fi = udiv <4 x i32> %wide.load, splat (i32 10000000)
  %i.fj = trunc nuw nsw <4 x i32> %i.fi to <4 x i16>
  %i.fk = urem <4 x i16> %i.fj, splat (i16 10)
  %i.fl = trunc nuw nsw <4 x i16> %i.fk to <4 x i8>
  %i.fm = or disjoint <4 x i8> %i.fl, splat (i8 48) ; 4 uses
  %i.fn = getelementptr i8, ptr %i.bx, i64 -8
  %i.fo = getelementptr i8, ptr %i.by, i64 -17
  %i.fp = getelementptr i8, ptr %i.bz, i64 -26
  %i.fq = getelementptr i8, ptr %i.ca, i64 -35
  %i.fr = extractelement <4 x i8> %i.fm, i64 0
  store i8 %i.fr, ptr %i.fn, align 1, !tbaa !11, !alias.scope !39
  %i.fs = extractelement <4 x i8> %i.fm, i64 1
  store i8 %i.fs, ptr %i.fo, align 1, !tbaa !11, !alias.scope !39
  %i.ft = extractelement <4 x i8> %i.fm, i64 2
  store i8 %i.ft, ptr %i.fp, align 1, !tbaa !11, !alias.scope !39
  %i.fu = extractelement <4 x i8> %i.fm, i64 3
  store i8 %i.fu, ptr %i.fq, align 1, !tbaa !11, !alias.scope !39
  %i.fv = udiv <4 x i32> %wide.load, splat (i32 100000000)
  %i.fw = trunc nuw nsw <4 x i32> %i.fv to <4 x i8>
  %i.fx = urem <4 x i8> %i.fw, splat (i8 10)
  %i.fy = or disjoint <4 x i8> %i.fx, splat (i8 48) ; 4 uses
  %i.fz = getelementptr i8, ptr %i.bx, i64 -9
  %i.ga = getelementptr i8, ptr %i.by, i64 -18
  %i.gb = getelementptr i8, ptr %i.bz, i64 -27
  %i.gc = getelementptr i8, ptr %i.ca, i64 -36
  %i.gd = extractelement <4 x i8> %i.fy, i64 0
  store i8 %i.gd, ptr %i.fz, align 1, !tbaa !11, !alias.scope !39
  %i.ge = extractelement <4 x i8> %i.fy, i64 1
  store i8 %i.ge, ptr %i.ga, align 1, !tbaa !11, !alias.scope !39
  %i.gf = extractelement <4 x i8> %i.fy, i64 2
  store i8 %i.gf, ptr %i.gb, align 1, !tbaa !11, !alias.scope !39
  %i.gg = extractelement <4 x i8> %i.fy, i64 3
  store i8 %i.gg, ptr %i.gc, align 1, !tbaa !11, !alias.scope !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader81

.lr.ph.preheader81:                               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.03745.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block
  %i.gi = add i64 %i.r, -1                        ; 2 uses
  %.not50 = icmp eq i64 %i.gi, 0
  br i1 %.not50, label %pm_integer_free.exit41, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.preheader42, %.preheader
  %i.gj = phi i64 [ %i.gi, %.preheader ], [ -1, %.preheader42 ] ; 2 uses
  br label %.lr.ph47

.lr.ph:                                           ; preds = %.lr.ph.preheader81, %.lr.ph
  %.03745 = phi i64 [ %i.ho, %.lr.ph ], [ %.03745.ph, %.lr.ph.preheader81 ] ; 3 uses
  %i.gk = getelementptr [4 x i8], ptr %i.m, i64 %.03745
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !7  ; 6 uses
  %.neg = mul i64 %.03745, -9
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.neg ; 2 uses
  %i.gm = urem i32 %i.gl, 10
  %i.gn = trunc nuw nsw i32 %i.gm to i8
  %i.go = or disjoint i8 %i.gn, 48
  %i.gp = getelementptr i8, ptr %gep, i64 -1
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !11
  %i.gq = udiv i32 %i.gl, 10000000
  %.lhs.trunc60 = trunc nuw nsw i32 %i.gq to i16
  %i.gr = urem i16 %.lhs.trunc60, 10
  %i.gs = trunc nuw nsw i16 %i.gr to i8
  %i.gt = udiv i32 %i.gl, 100000000
  %.lhs.trunc62 = trunc nuw nsw i32 %i.gt to i8
  %i.gu = urem i8 %.lhs.trunc62, 10
  %i.gv = getelementptr i8, ptr %gep, i64 -9
  %i.gw = insertelement <4 x i32> poison, i32 %i.gl, i64 0
  %i.gx = shufflevector <4 x i32> %i.gw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gy = udiv <4 x i32> %i.gx, <i32 10000, i32 1000, i32 100, i32 10>
  %i.gz = urem <4 x i32> %i.gy, splat (i32 10)
  %i.ha = trunc nuw nsw <4 x i32> %i.gz to <4 x i8>
  %i.hb = udiv i32 %i.gl, 100000
  %i.hc = udiv i32 %i.gl, 1000000
  %.lhs.trunc = trunc nuw i32 %i.hb to i16
  %.lhs.trunc58 = trunc nuw nsw i32 %i.hc to i16
  %i.hd = insertelement <2 x i16> poison, i16 %.lhs.trunc58, i64 0
  %i.he = insertelement <2 x i16> %i.hd, i16 %.lhs.trunc, i64 1
  %i.hf = urem <2 x i16> %i.he, splat (i16 10)
  %i.hg = insertelement <8 x i8> poison, i8 %i.gu, i64 0
  %i.hh = insertelement <8 x i8> %i.hg, i8 %i.gs, i64 1
  %i.hi = shufflevector <4 x i8> %i.ha, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hj = shufflevector <8 x i8> %i.hh, <8 x i8> %i.hi, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.hk = shufflevector <2 x i16> %i.hf, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hl = trunc <8 x i16> %i.hk to <8 x i8>
  %i.hm = shufflevector <8 x i8> %i.hj, <8 x i8> %i.hl, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.hn = or disjoint <8 x i8> %i.hm, splat (i8 48)
  store <8 x i8> %i.hn, ptr %i.gv, align 1, !tbaa !11
  %i.ho = add nuw i64 %.03745, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ho, %i.q
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !44

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.i
  %.046 = phi i64 [ %i.hs, %bb.i ], [ 0, %.lr.ph47.preheader ] ; 3 uses
  %i.hp = getelementptr i8, ptr %i.s, i64 %.046
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !11
  %i.hr = icmp eq i8 %i.hq, 48
  br i1 %i.hr, label %bb.i, label %pm_integer_free.exit41

bb.i:                                             ; preds = %.lr.ph47
  %i.hs = add nuw i64 %.046, 1                    ; 2 uses
  %exitcond51.not = icmp eq i64 %i.hs, %i.gj
  br i1 %exitcond51.not, label %pm_integer_free.exit41, label %.lr.ph47, !llvm.loop !45

pm_integer_free.exit41:                           ; preds = %.lr.ph47, %bb.i, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.gj, %bb.i ], [ %.046, %.lr.ph47 ] ; 2 uses
  %i.ht = getelementptr i8, ptr %i.s, i64 %.0.lcssa
  %i.hu = sub i64 %i.r, %.0.lcssa
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef %i.ht, i64 noundef %i.hu) #16
  tail call void @free(ptr noundef %i.s) #16
  tail call void @free(ptr noundef nonnull %i.m) #16
  br label %bb.j

bb.j:                                             ; preds = %pm_integer_free.exit41, %bb.h, %pm_integer_free.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.d
  ret void
}

declare void @pm_buffer_append_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @pm_buffer_append_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_integer_convert_base(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 1000000000, 4294967297) %2, i64 noundef range(i64 1000000000, 4294967297) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.pm_integer_t, align 8       ; 12 uses
  %5 = alloca %struct.pm_integer_t, align 8       ; 4 uses
  %6 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread140, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.e = add i64 %i.d, 1
  %i.f = lshr i64 %i.e, 1                         ; 4 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_convert_base) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 24) #15 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.ae, label %.preheader

.thread140:                                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #15 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.ae, label %.lr.ph.preheader

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %i.d, 0
  br i1 %.not111, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread140, %.preheader
  %i.l = phi i64 [ %i.f, %.preheader ], [ 1, %.thread140 ]
  %.057101143149 = phi i64 [ %i.d, %.preheader ], [ 1, %.thread140 ] ; 2 uses
  %.058100144148 = phi ptr [ %i.b, %.preheader ], [ %i.i, %.thread140 ] ; 2 uses
  %i.m = phi ptr [ %i.g, %.preheader ], [ %i.j, %.thread140 ] ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %pm_integer_from_uint64.exit80, %.preheader
  %i.n = phi i64 [ %i.f, %.preheader ], [ %i.l, %pm_integer_from_uint64.exit80 ] ; 2 uses
  %i.o = phi ptr [ %i.g, %.preheader ], [ %i.m, %pm_integer_from_uint64.exit80 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.p = icmp samesign ult i64 %2, %3
  br i1 %i.p, label %bb.e, label %.preheader29.i

bb.e:                                             ; preds = %._crit_edge
  %i.q = trunc nuw i64 %2 to i32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !30
  br label %pm_integer_from_uint64.exit

.preheader29.i:                                   ; preds = %._crit_edge, %.preheader29.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader29.i ], [ 1, %._crit_edge ] ; 5 uses
  %.02431.i = phi i64 [ %i.t, %.preheader29.i ], [ %2, %._crit_edge ] ; 2 uses
  %.02530.i = phi i64 [ %i.s, %.preheader29.i ], [ 0, %._crit_edge ]
  %i.s = add i64 %.02530.i, 1                     ; 4 uses
  %i.t = udiv i64 %.02431.i, %3
  %.not.i = icmp samesign ugt i64 %3, %.02431.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %.not.i, label %bb.f, label %.preheader29.i, !llvm.loop !46

bb.f:                                             ; preds = %.preheader29.i
  %i.u = shl i64 %i.s, 2
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #14 ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %pm_integer_from_uint64.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.not34.i = icmp eq i64 %i.s, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter163 = and i64 %indvars.iv.i, 1
  %i.x = icmp eq i64 %indvars.iv.i, 1
  br i1 %i.x, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter166 = and i64 %indvars.iv.i, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.033.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02332.i.epil.init = phi i64 [ %2, %.lr.ph.i.preheader ], [ %i.ak, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod165 = trunc i64 %indvars.iv.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod165)
  %i.y = urem i64 %.02332.i.epil.init, %3
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = getelementptr [4 x i8], ptr %i.v, i64 %.033.i.epil.init
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  store i64 %i.s, ptr %4, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.v, ptr %i.ab, align 8, !tbaa !22
  br label %pm_integer_from_uint64.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.033.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.al, %.lr.ph.i ] ; 3 uses
  %.02332.i = phi i64 [ %2, %.lr.ph.i.preheader.new ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %niter167 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter167.next.1, %.lr.ph.i ]
  %i.ac = urem i64 %.02332.i, %3
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !7
  %i.af = udiv i64 %.02332.i, %3                  ; 2 uses
  %i.ag = urem i64 %i.af, %3
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !7
  %i.ak = udiv i64 %i.af, %3                      ; 2 uses
  %i.al = add nuw i64 %.033.i, 2                  ; 2 uses
  %niter167.next.1 = add i64 %niter167, 2         ; 2 uses
  %niter167.ncmp.1 = icmp eq i64 %niter167.next.1, %unroll_iter166
  br i1 %niter167.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !47

pm_integer_from_uint64.exit:                      ; preds = %bb.e, %bb.f, %._crit_edge.i
  %i.am = icmp samesign ugt i64 %i.n, 1
  br i1 %i.am, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %pm_integer_from_uint64.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %pm_integer_from_uint64.exit80
  %.060105 = phi i64 [ %i.ca, %pm_integer_from_uint64.exit80 ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = getelementptr [4 x i8], ptr %.058100144148, i64 %.060105
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = zext i32 %i.ar to i64
  %i.at = or disjoint i64 %.060105, 1             ; 2 uses
  %i.au = icmp ult i64 %i.at, %.057101143149
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.av = getelementptr [4 x i8], ptr %.058100144148, i64 %i.at
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw i64 %2, %i.ax
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.az = phi i64 [ %i.ay, %bb.g ], [ 0, %.lr.ph ]
  %i.ba = add nuw i64 %i.az, %i.as                ; 5 uses
  %i.bb = lshr exact i64 %.060105, 1
  %i.bc = getelementptr [24 x i8], ptr %i.m, i64 %i.bb ; 3 uses
  %i.bd = icmp ult i64 %i.ba, %3
  br i1 %i.bd, label %bb.i, label %.preheader29.i67

bb.i:                                             ; preds = %bb.h
  %i.be = trunc nuw i64 %i.ba to i32
  %i.bf = getelementptr i8, ptr %i.bc, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !30
  br label %pm_integer_from_uint64.exit80

.preheader29.i67:                                 ; preds = %bb.h, %.preheader29.i67
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i72, %.preheader29.i67 ], [ 1, %bb.h ] ; 5 uses
  %.02431.i69 = phi i64 [ %i.bh, %.preheader29.i67 ], [ %i.ba, %bb.h ] ; 2 uses
  %.02530.i70 = phi i64 [ %i.bg, %.preheader29.i67 ], [ 0, %bb.h ]
  %i.bg = add i64 %.02530.i70, 1                  ; 4 uses
  %i.bh = udiv i64 %.02431.i69, %3
  %.not.i71 = icmp ugt i64 %3, %.02431.i69
  %indvars.iv.next.i72 = add i64 %indvars.iv.i68, 1
  br i1 %.not.i71, label %bb.j, label %.preheader29.i67, !llvm.loop !46

bb.j:                                             ; preds = %.preheader29.i67
  %i.bi = shl i64 %i.bg, 2
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bi) #14 ; 5 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %pm_integer_from_uint64.exit80, label %.preheader.i73

.preheader.i73:                                   ; preds = %bb.j
  %.not34.i74 = icmp eq i64 %i.bg, 0
  br i1 %.not34.i74, label %._crit_edge.i79, label %.lr.ph.i75.preheader

.lr.ph.i75.preheader:                             ; preds = %.preheader.i73
  %xtraiter = and i64 %indvars.iv.i68, 1
  %i.bl = icmp eq i64 %indvars.iv.i68, 1
  br i1 %i.bl, label %.lr.ph.i75.epil.preheader, label %.lr.ph.i75.preheader.new

.lr.ph.i75.preheader.new:                         ; preds = %.lr.ph.i75.preheader
  %unroll_iter = and i64 %indvars.iv.i68, -2
  br label %.lr.ph.i75

._crit_edge.i79.loopexit.unr-lcssa:               ; preds = %.lr.ph.i75
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i79, label %.lr.ph.i75.epil.preheader

.lr.ph.i75.epil.preheader:                        ; preds = %._crit_edge.i79.loopexit.unr-lcssa, %.lr.ph.i75.preheader
  %.033.i76.epil.init = phi i64 [ 0, %.lr.ph.i75.preheader ], [ %i.bz, %._crit_edge.i79.loopexit.unr-lcssa ]
  %.02332.i77.epil.init = phi i64 [ %i.ba, %.lr.ph.i75.preheader ], [ %i.by, %._crit_edge.i79.loopexit.unr-lcssa ]
  %lcmp.mod162 = trunc i64 %indvars.iv.i68 to i1
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %i.bm = urem i64 %.02332.i77.epil.init, %3
  %i.bn = trunc nuw i64 %i.bm to i32
  %i.bo = getelementptr [4 x i8], ptr %i.bj, i64 %.033.i76.epil.init
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !7
  br label %._crit_edge.i79

._crit_edge.i79:                                  ; preds = %.lr.ph.i75.epil.preheader, %._crit_edge.i79.loopexit.unr-lcssa, %.preheader.i73
  store i64 %i.bg, ptr %i.bc, align 8, !tbaa !16
  %i.bp = getelementptr i8, ptr %i.bc, i64 8
  store ptr %i.bj, ptr %i.bp, align 8, !tbaa !22
  br label %pm_integer_from_uint64.exit80

.lr.ph.i75:                                       ; preds = %.lr.ph.i75, %.lr.ph.i75.preheader.new
  %.033.i76 = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %i.bz, %.lr.ph.i75 ] ; 3 uses
  %.02332.i77 = phi i64 [ %i.ba, %.lr.ph.i75.preheader.new ], [ %i.by, %.lr.ph.i75 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %niter.next.1, %.lr.ph.i75 ]
  %i.bq = urem i64 %.02332.i77, %3
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = getelementptr [4 x i8], ptr %i.bj, i64 %.033.i76
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !7
  %i.bt = udiv i64 %.02332.i77, %3                ; 2 uses
  %i.bu = urem i64 %i.bt, %3
  %i.bv = trunc nuw i64 %i.bu to i32
  %i.bw = getelementptr [4 x i8], ptr %i.bj, i64 %.033.i76
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !7
  %i.by = udiv i64 %i.bt, %3                      ; 2 uses
  %i.bz = add nuw i64 %.033.i76, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i79.loopexit.unr-lcssa, label %.lr.ph.i75, !llvm.loop !47

pm_integer_from_uint64.exit80:                    ; preds = %bb.i, %bb.j, %._crit_edge.i79
  %i.ca = add i64 %.060105, 2                     ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %.057101143149
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !48

bb.k:                                             ; preds = %.lr.ph109, %bb.m
  %.059108 = phi i64 [ %i.n, %.lr.ph109 ], [ %i.ce, %bb.m ] ; 4 uses
  %.061107 = phi ptr [ %i.o, %.lr.ph109 ], [ %i.cf, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call fastcc void @karatsuba_multiply(ptr noundef %5, ptr noundef %4, ptr noundef nonnull %4, i64 noundef %3)
  %i.cc = load ptr, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %.not.i81 = icmp eq ptr %i.cc, null
  br i1 %.not.i81, label %pm_integer_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.cc) #16
  br label %pm_integer_free.exit

pm_integer_free.exit:                             ; preds = %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !49
  %i.cd = add nuw i64 %.059108, 1
  %i.ce = lshr i64 %i.cd, 1                       ; 2 uses
  %i.cf = call noalias ptr @calloc(i64 noundef %i.ce, i64 noundef 24) #15 ; 4 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.ab
  call void @free(ptr noundef nonnull %.061107) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.cg = icmp ugt i64 %.059108, 2
  br i1 %i.cg, label %bb.k, label %._crit_edge110, !llvm.loop !51

bb.n:                                             ; preds = %pm_integer_free.exit, %bb.ab
  %.0106 = phi i64 [ 0, %pm_integer_free.exit ], [ %i.dz, %bb.ab ] ; 6 uses
  %i.ch = or disjoint i64 %.0106, 1               ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %.059108
  br i1 %i.ci, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cj = lshr exact i64 %.0106, 1
  %i.ck = getelementptr [24 x i8], ptr %i.cf, i64 %i.cj
  %i.cl = getelementptr [24 x i8], ptr %.061107, i64 %.0106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !tbaa.struct !49
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.cm = getelementptr [24 x i8], ptr %.061107, i64 %i.ch ; 2 uses
  call fastcc void @karatsuba_multiply(ptr noundef %6, ptr noundef %4, ptr noundef %i.cm, i64 noundef %3)
  %i.cn = lshr exact i64 %.0106, 1
  %i.co = getelementptr [24 x i8], ptr %i.cf, i64 %i.cn ; 3 uses
  %i.cp = getelementptr [24 x i8], ptr %.061107, i64 %.0106 ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8      ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !22 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr i8, ptr %i.cp, i64 16
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cu = load i64, ptr %i.cp, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.039.i = phi ptr [ %i.ct, %bb.q ], [ %i.cr, %bb.r ]
  %.0.i = phi i64 [ 1, %bb.q ], [ %i.cu, %bb.r ]  ; 2 uses
  %i.cv = load ptr, ptr %i.ao, align 8, !tbaa !22 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null                 ; 3 uses
  %i.cx = load i64, ptr %6, align 8
  %.041.i = select i1 %i.cw, ptr %i.ap, ptr %i.cv
  %.040.i = select i1 %i.cw, i64 1, i64 %i.cx     ; 2 uses
  %i.cy = call i64 @llvm.umax.i64(i64 %.0.i, i64 %.040.i) ; 5 uses
  %i.cz = add i64 %i.cy, 1                        ; 2 uses
  %i.da = shl i64 %i.cz, 2
  %i.db = call noalias ptr @malloc(i64 noundef %i.da) #14 ; 4 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %big_add.exit, label %.preheader.i82

.preheader.i82:                                   ; preds = %bb.s
  %.not51.i = icmp eq i64 %i.cy, 0
  br i1 %.not51.i, label %._crit_edge.thread.i, label %.lr.ph.i83

._crit_edge.i85:                                  ; preds = %bb.w
  %.not.i86 = icmp ugt i64 %3, %i.do
  br i1 %.not.i86, label %._crit_edge.thread.i, label %bb.x

.lr.ph.i83:                                       ; preds = %.preheader.i82, %bb.w
  %.04350.i = phi i64 [ %i.dt, %bb.w ], [ 0, %.preheader.i82 ] ; 6 uses
  %.04449.i = phi i64 [ %i.ds, %bb.w ], [ 0, %.preheader.i82 ]
  %i.dd = icmp ult i64 %.04350.i, %.0.i
  br i1 %i.dd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i83
  %i.de = getelementptr [4 x i8], ptr %.039.i, i64 %.04350.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = zext i32 %i.df to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i83
  %i.dh = phi i64 [ %i.dg, %bb.t ], [ 0, %.lr.ph.i83 ]
  %i.di = add nuw nsw i64 %i.dh, %.04449.i
  %i.dj = icmp ult i64 %.04350.i, %.040.i
  br i1 %i.dj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr [4 x i8], ptr %.041.i, i64 %.04350.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = zext i32 %i.dl to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dn = phi i64 [ %i.dm, %bb.v ], [ 0, %bb.u ]
  %i.do = add nuw nsw i64 %i.di, %i.dn            ; 3 uses
  %i.dp = urem i64 %i.do, %3
  %i.dq = trunc nuw i64 %i.dp to i32
  %i.dr = getelementptr [4 x i8], ptr %i.db, i64 %.04350.i
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !7
  %i.ds = udiv i64 %i.do, %3                      ; 2 uses
  %i.dt = add nuw i64 %.04350.i, 1                ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %i.dt, %i.cy
  br i1 %exitcond.not.i84, label %._crit_edge.i85, label %.lr.ph.i83, !llvm.loop !52

bb.x:                                             ; preds = %._crit_edge.i85
  %i.du = trunc nuw nsw i64 %i.ds to i32
  %i.dv = getelementptr [4 x i8], ptr %i.db, i64 %i.cy
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !7
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.x, %._crit_edge.i85, %.preheader.i82
  %.042.i = phi i64 [ %i.cz, %bb.x ], [ %i.cy, %._crit_edge.i85 ], [ 0, %.preheader.i82 ]
  store i64 %.042.i, ptr %i.co, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.db, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.pre = load ptr, ptr %i.cq, align 8, !tbaa !22
  br label %big_add.exit

big_add.exit:                                     ; preds = %bb.s, %._crit_edge.thread.i
  %i.dw = phi ptr [ %i.cr, %bb.s ], [ %.pre, %._crit_edge.thread.i ] ; 2 uses
  %.not.i87 = icmp eq ptr %i.dw, null
  br i1 %.not.i87, label %pm_integer_free.exit88, label %bb.y

bb.y:                                             ; preds = %big_add.exit
  call void @free(ptr noundef nonnull %i.dw) #16
  br label %pm_integer_free.exit88

pm_integer_free.exit88:                           ; preds = %big_add.exit, %bb.y
  %i.dx = getelementptr i8, ptr %i.cm, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !22 ; 2 uses
  %.not.i89 = icmp eq ptr %i.dy, null
  br i1 %.not.i89, label %pm_integer_free.exit90, label %bb.z

bb.z:                                             ; preds = %pm_integer_free.exit88
  call void @free(ptr noundef nonnull %i.dy) #16
  br label %pm_integer_free.exit90

pm_integer_free.exit90:                           ; preds = %pm_integer_free.exit88, %bb.z
  br i1 %i.cw, label %pm_integer_free.exit92, label %bb.aa

bb.aa:                                            ; preds = %pm_integer_free.exit90
  call void @free(ptr noundef nonnull %i.cv) #16
  br label %pm_integer_free.exit92

pm_integer_free.exit92:                           ; preds = %pm_integer_free.exit90, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.o, %pm_integer_free.exit92
  %i.dz = add nuw i64 %.0106, 2                   ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %.059108
  br i1 %i.ea, label %bb.n, label %bb.m, !llvm.loop !53

._crit_edge110:                                   ; preds = %bb.m, %pm_integer_from_uint64.exit
  %.061.lcssa = phi ptr [ %i.o, %pm_integer_from_uint64.exit ], [ %i.cf, %bb.m ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.061.lcssa, i64 24, i1 false), !tbaa.struct !49
  %i.eb = getelementptr i8, ptr %1, i64 20
  %i.ec = load i8, ptr %i.eb, align 4, !tbaa !31, !range !32, !noundef !33 ; 2 uses
  %i.ed = getelementptr i8, ptr %0, i64 20        ; 2 uses
  store i8 %i.ec, ptr %i.ed, align 4, !tbaa !31
  %i.ee = getelementptr i8, ptr %0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !22 ; 4 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %pm_integer_normalize.exit, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %._crit_edge110
  %.pr.i = load i64, ptr %0, align 8, !tbaa !16   ; 2 uses
  %i.eh = icmp ugt i64 %.pr.i, 1
  br i1 %i.eh, label %.lr.ph.i94, label %pm_integer_free.exit.i

.lr.ph.i94:                                       ; preds = %thread-pre-split.i, %bb.ac
  %i.ei = phi i64 [ %i.en, %bb.ac ], [ %.pr.i, %thread-pre-split.i ] ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %i.ef, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !7
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ac, label %pm_integer_normalize.exit

bb.ac:                                            ; preds = %.lr.ph.i94
  %i.en = add i64 %i.ei, -1                       ; 3 uses
  store i64 %i.en, ptr %0, align 8, !tbaa !16
  %i.eo = icmp ugt i64 %i.en, 1
  br i1 %i.eo, label %.lr.ph.i94, label %pm_integer_free.exit.i, !llvm.loop !28

pm_integer_free.exit.i:                           ; preds = %bb.ac, %thread-pre-split.i
  %i.ep = load i32, ptr %i.ef, align 4, !tbaa !7  ; 2 uses
  %i.eq = trunc nuw i8 %i.ec to i1
  %i.er = icmp ne i32 %i.ep, 0
  %i.es = select i1 %i.eq, i1 %i.er, i1 false
  %i.et = zext i1 %i.es to i8
  call void @free(ptr noundef nonnull %i.ef) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %.sroa.2.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ep, ptr %.sroa.2.0..sroa_idx.i93, align 8, !tbaa !7
  store i8 %i.et, ptr %i.ed, align 4, !tbaa !50
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i, i8 0, i64 3, i1 false)
  br label %pm_integer_normalize.exit

pm_integer_normalize.exit:                        ; preds = %.lr.ph.i94, %._crit_edge110, %pm_integer_free.exit.i
  call void @free(ptr noundef %.061.lcssa) #16
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !22 ; 2 uses
  %.not.i95 = icmp eq ptr %i.ev, null
  br i1 %.not.i95, label %pm_integer_free.exit96, label %bb.ad

bb.ad:                                            ; preds = %pm_integer_normalize.exit
  call void @free(ptr noundef nonnull %i.ev) #16
  br label %pm_integer_free.exit96

pm_integer_free.exit96:                           ; preds = %pm_integer_normalize.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ae

bb.ae:                                            ; preds = %.thread140, %bb.d, %pm_integer_free.exit96
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @pm_integer_free(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

declare void @pm_buffer_append_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @karatsuba_multiply(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef range(i64 1000000000, 4294967297) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.pm_integer_t, align 8       ; 6 uses
  %5 = alloca %struct.pm_integer_t, align 8       ; 6 uses
  %6 = alloca %struct.pm_integer_t, align 8       ; 5 uses
  %7 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %8 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %9 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %10 = alloca %struct.pm_integer_t, align 8      ; 7 uses
  %11 = alloca %struct.pm_integer_t, align 8      ; 7 uses
  %12 = alloca %struct.pm_integer_t, align 8      ; 7 uses
  %13 = alloca %struct.pm_integer_t, align 8      ; 8 uses
  %14 = alloca %struct.pm_integer_t, align 8      ; 8 uses
  %15 = alloca %struct.pm_integer_t, align 8      ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0164 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  %.0 = phi i64 [ 1, %bb.b ], [ %i.e, %bb.c ]     ; 6 uses
  %i.f = getelementptr i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %2, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = load i64, ptr %2, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0168 = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %.0166 = phi i64 [ 1, %bb.e ], [ %i.j, %bb.f ]  ; 6 uses
  %i.k = icmp ugt i64 %.0, %.0166
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1169 = phi ptr [ %.0164, %bb.h ], [ %.0168, %bb.g ] ; 4 uses
  %.1167 = phi i64 [ %.0, %bb.h ], [ %.0166, %bb.g ] ; 8 uses
  %.1165 = phi ptr [ %.0168, %bb.h ], [ %.0164, %bb.g ] ; 4 uses
  %.1 = phi i64 [ %.0166, %bb.h ], [ %.0, %bb.g ] ; 9 uses
  %i.l = icmp ult i64 %.1, 11
  br i1 %i.l, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.m = add i64 %.0166, %.0                      ; 4 uses
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #15 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.au, label %.preheader240

.preheader240:                                    ; preds = %bb.j
  %invariant.gep274 = getelementptr [4 x i8], ptr %i.n, i64 %.1167
  %.not285 = icmp eq i64 %.1, 0
  %.not286.a = icmp eq i64 %.1167, 0
  %or.cond = select i1 %.not285, i1 true, i1 %.not286.a
  br i1 %or.cond, label %.preheader, label %.preheader239.us

.preheader239.us:                                 ; preds = %.preheader240, %._crit_edge272.us
  %.0175276.us = phi i64 [ %i.ai, %._crit_edge272.us ], [ 0, %.preheader240 ] ; 4 uses
  %i.p = getelementptr [4 x i8], ptr %.1165, i64 %.0175276.us
  %i.q = getelementptr [4 x i8], ptr %i.n, i64 %.0175276.us
  br label %bb.k

bb.k:                                             ; preds = %.preheader239.us, %bb.k
  %.0177270.us = phi i64 [ 0, %.preheader239.us ], [ %i.af, %bb.k ]
  %.0178269.us = phi i64 [ 0, %.preheader239.us ], [ %i.ag, %bb.k ] ; 3 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !7
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr %.1169, i64 %.0178269.us
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw i64 %i.v, %i.s
  %i.x = getelementptr [4 x i8], ptr %i.q, i64 %.0178269.us ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = zext i32 %i.y to i64
  %i.aa = and i64 %.0177270.us, 4294967295
  %i.ab = add nuw nsw i64 %i.aa, %i.z
  %i.ac = add nuw i64 %i.ab, %i.w                 ; 2 uses
  %i.ad = urem i64 %i.ac, %3
  %i.ae = trunc nuw i64 %i.ad to i32
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !7
  %i.af = udiv i64 %i.ac, %3                      ; 2 uses
  %i.ag = add nuw i64 %.0178269.us, 1             ; 2 uses
  %exitcond295.not = icmp eq i64 %i.ag, %.1167
  br i1 %exitcond295.not, label %._crit_edge272.us, label %bb.k, !llvm.loop !54

._crit_edge272.us:                                ; preds = %bb.k
  %i.ah = trunc i64 %i.af to i32
  %gep275.us = getelementptr [4 x i8], ptr %invariant.gep274, i64 %.0175276.us
  store i32 %i.ah, ptr %gep275.us, align 4, !tbaa !7
  %i.ai = add nuw nsw i64 %.0175276.us, 1         ; 2 uses
  %exitcond296.not = icmp eq i64 %i.ai, %.1
  br i1 %exitcond296.not, label %.preheader, label %.preheader239.us, !llvm.loop !55

.preheader:                                       ; preds = %._crit_edge272.us, %.preheader240
  %i.aj = icmp ugt i64 %i.m, 1
  br i1 %i.aj, label %.lr.ph278, label %.critedge

.lr.ph278:                                        ; preds = %.preheader, %bb.l
  %.0170277 = phi i64 [ %i.ao, %bb.l ], [ %i.m, %.preheader ] ; 3 uses
  %i.ak = getelementptr [4 x i8], ptr %i.n, i64 %.0170277
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph278
  %i.ao = add i64 %.0170277, -1                   ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 1
  br i1 %i.ap, label %.lr.ph278, label %.critedge, !llvm.loop !56

.critedge:                                        ; preds = %.lr.ph278, %bb.l, %.preheader
  %.0170.lcssa = phi i64 [ %i.m, %.preheader ], [ 1, %bb.l ], [ %.0170277, %.lr.ph278 ]
  store i64 %.0170.lcssa, ptr %0, align 8, !tbaa !26
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.269.0..sroa_idx, align 8, !tbaa !27
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.370.0..sroa_idx, align 8
  br label %bb.au

bb.m:                                             ; preds = %bb.i
  %i.aq = shl i64 %.1, 1
  %.not = icmp ugt i64 %i.aq, %.1167
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = add i64 %.0166, %.0                     ; 2 uses
  %i.as = tail call noalias ptr @calloc(i64 noundef %i.ar, i64 noundef 4) #15 ; 3 uses
  %.not282 = icmp eq i64 %.1167, 0
  br i1 %.not282, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.o

._crit_edge252:                                   ; preds = %pm_integer_free.exit, %bb.n
  store i64 %i.ar, ptr %0, align 8, !tbaa !26
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %.sroa.240.0..sroa_idx, align 8, !tbaa !27
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.341.0..sroa_idx, align 8
  br label %bb.au

bb.o:                                             ; preds = %.lr.ph251, %pm_integer_free.exit
  %.0179249 = phi i64 [ 0, %.lr.ph251 ], [ %i.ay, %pm_integer_free.exit ] ; 5 uses
  %i.ay = add i64 %.0179249, %.1                  ; 3 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %i.ay, i64 %.1167)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i64 %.1, ptr %4, align 8, !tbaa !16
  store ptr %.1165, ptr %i.at, align 8, !tbaa !22
  store i64 0, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.az = sub i64 %spec.select, %.0179249
  store i64 %i.az, ptr %5, align 8, !tbaa !16
  %i.ba = getelementptr [4 x i8], ptr %.1169, i64 %.0179249
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !22
  store i64 0, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call fastcc void @karatsuba_multiply(ptr noundef %6, ptr noundef %4, ptr noundef nonnull %5, i64 noundef %3)
  %i.bb = load i64, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not283 = icmp eq i64 %i.bb, 0
  br i1 %.not283, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bc = getelementptr [4 x i8], ptr %i.as, i64 %.0179249
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !22
  br label %bb.p

._crit_edge:                                      ; preds = %bb.p
  %.not194 = icmp ugt i64 %3, %i.bl
  br i1 %.not194, label %._crit_edge.thread, label %bb.q

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %.0181247 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %bb.p ]
  %.0182246 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %bb.p ] ; 3 uses
  %i.be = getelementptr [4 x i8], ptr %i.bc, i64 %.0182246 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr [4 x i8], ptr %i.bd, i64 %.0182246
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = zext i32 %i.bi to i64
  %i.bk = add nuw nsw i64 %.0181247, %i.bg
  %i.bl = add nuw nsw i64 %i.bk, %i.bj            ; 3 uses
  %i.bm = urem i64 %i.bl, %3
  %i.bn = trunc nuw i64 %i.bm to i32
  store i32 %i.bn, ptr %i.be, align 4, !tbaa !7
  %i.bo = udiv i64 %i.bl, %3                      ; 2 uses
  %i.bp = add nuw i64 %.0182246, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %i.bb
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !57

bb.q:                                             ; preds = %._crit_edge
  %i.bq = trunc nuw nsw i64 %i.bo to i32
  %i.br = getelementptr [4 x i8], ptr %i.as, i64 %.0179249
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.bb ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = add i32 %i.bt, %i.bq
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !7
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.o, %bb.q, %._crit_edge
  %i.bv = load ptr, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %pm_integer_free.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread
  call void @free(ptr noundef nonnull %i.bv) #16
  br label %pm_integer_free.exit

pm_integer_free.exit:                             ; preds = %._crit_edge.thread, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bw = icmp ult i64 %i.ay, %.1167
  br i1 %i.bw, label %bb.o, label %._crit_edge252, !llvm.loop !58

bb.s:                                             ; preds = %bb.m
  %i.bx = lshr i64 %.1, 1                         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i64 %i.bx, ptr %7, align 8, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.1165, ptr %i.by, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 0, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ca = sub i64 %.1, %i.bx
  store i64 %i.ca, ptr %8, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %.1165, i64 %i.bx
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i64 %i.bx, ptr %9, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.1169, ptr %i.ce, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 0, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.cg = sub i64 %.1167, %i.bx
  store i64 %i.cg, ptr %10, align 8, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %.1169, i64 %i.bx
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !22
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 0, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call fastcc void @karatsuba_multiply(ptr noundef %11, ptr noundef %7, ptr noundef nonnull %9, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call fastcc void @karatsuba_multiply(ptr noundef %12, ptr noundef %8, ptr noundef nonnull %10, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ck = load ptr, ptr %i.by, align 8, !tbaa !22 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null                 ; 2 uses
  %i.cm = load i64, ptr %7, align 8
  %spec.select233 = select i1 %i.cl, ptr %i.bz, ptr %i.ck
  %spec.select234 = select i1 %i.cl, i64 1, i64 %i.cm ; 2 uses
  %i.cn = load ptr, ptr %i.cb, align 8, !tbaa !22 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null                 ; 2 uses
  %i.cp = load i64, ptr %8, align 8
  %.041.i = select i1 %i.co, ptr %i.cd, ptr %i.cn
  %.040.i = select i1 %i.co, i64 1, i64 %i.cp     ; 2 uses
  %i.cq = call i64 @llvm.umax.i64(i64 %spec.select234, i64 %.040.i) ; 5 uses
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  %i.cs = shl i64 %i.cr, 2
  %i.ct = call noalias ptr @malloc(i64 noundef %i.cs) #14 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %big_add.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %.not51.i = icmp eq i64 %i.cq, 0
  br i1 %.not51.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.w
  %.not.i195 = icmp ugt i64 %3, %i.dg
  br i1 %.not.i195, label %._crit_edge.thread.i, label %bb.x

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.w
  %.04350.i = phi i64 [ %i.dl, %bb.w ], [ 0, %.preheader.i ] ; 6 uses
  %.04449.i = phi i64 [ %i.dk, %bb.w ], [ 0, %.preheader.i ]
  %i.cv = icmp ult i64 %.04350.i, %spec.select234
  br i1 %i.cv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.cw = getelementptr [4 x i8], ptr %spec.select233, i64 %.04350.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %i.cy = zext i32 %i.cx to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %i.cz = phi i64 [ %i.cy, %bb.t ], [ 0, %.lr.ph.i ]
  %i.da = add nuw nsw i64 %i.cz, %.04449.i
  %i.db = icmp ult i64 %.04350.i, %.040.i
  br i1 %i.db, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr [4 x i8], ptr %.041.i, i64 %.04350.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %i.de = zext i32 %i.dd to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.df = phi i64 [ %i.de, %bb.v ], [ 0, %bb.u ]
  %i.dg = add nuw nsw i64 %i.da, %i.df            ; 3 uses
  %i.dh = urem i64 %i.dg, %3
  %i.di = trunc nuw i64 %i.dh to i32
  %i.dj = getelementptr [4 x i8], ptr %i.ct, i64 %.04350.i
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !7
  %i.dk = udiv i64 %i.dg, %3                      ; 2 uses
  %i.dl = add nuw i64 %.04350.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dl, %i.cq
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !52

bb.x:                                             ; preds = %._crit_edge.i
  %i.dm = trunc nuw nsw i64 %i.dk to i32
  %i.dn = getelementptr [4 x i8], ptr %i.ct, i64 %i.cq
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !7
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.x, %._crit_edge.i, %.preheader.i
  %.042.i = phi i64 [ %i.cr, %bb.x ], [ %i.cq, %._crit_edge.i ], [ 0, %.preheader.i ]
  store i64 %.042.i, ptr %13, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.ct, ptr %.sroa.2.0..sroa_idx.i.a, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %big_add.exit

big_add.exit:                                     ; preds = %bb.s, %._crit_edge.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.do = load ptr, ptr %i.ce, align 8, !tbaa !22 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null                 ; 2 uses
  %i.dq = load i64, ptr %9, align 8
  %spec.select235 = select i1 %i.dp, ptr %i.cf, ptr %i.do
  %spec.select236 = select i1 %i.dp, i64 1, i64 %i.dq ; 2 uses
  %i.dr = load ptr, ptr %i.ch, align 8, !tbaa !22 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null                 ; 2 uses
  %i.dt = load i64, ptr %10, align 8
  %.041.i198 = select i1 %i.ds, ptr %i.cj, ptr %i.dr
  %.040.i199 = select i1 %i.ds, i64 1, i64 %i.dt  ; 2 uses
  %i.du = call i64 @llvm.umax.i64(i64 %spec.select236, i64 %.040.i199) ; 5 uses
  %i.dv = add i64 %i.du, 1                        ; 2 uses
  %i.dw = shl i64 %i.dv, 2
  %i.dx = call noalias ptr @malloc(i64 noundef %i.dw) #14 ; 4 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %big_add.exit212, label %.preheader.i200

.preheader.i200:                                  ; preds = %big_add.exit
  %.not51.i201 = icmp eq i64 %i.du, 0
  br i1 %.not51.i201, label %._crit_edge.thread.i208, label %.lr.ph.i202

._crit_edge.i206:                                 ; preds = %bb.ab
  %.not.i207 = icmp ugt i64 %3, %i.ek
  br i1 %.not.i207, label %._crit_edge.thread.i208, label %bb.ac

.lr.ph.i202:                                      ; preds = %.preheader.i200, %bb.ab
  %.04350.i203 = phi i64 [ %i.ep, %bb.ab ], [ 0, %.preheader.i200 ] ; 6 uses
  %.04449.i204 = phi i64 [ %i.eo, %bb.ab ], [ 0, %.preheader.i200 ]
  %i.dz = icmp ult i64 %.04350.i203, %spec.select236
  br i1 %i.dz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i202
  %i.ea = getelementptr [4 x i8], ptr %spec.select235, i64 %.04350.i203
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !7
  %i.ec = zext i32 %i.eb to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i202
  %i.ed = phi i64 [ %i.ec, %bb.y ], [ 0, %.lr.ph.i202 ]
  %i.ee = add nuw nsw i64 %i.ed, %.04449.i204
  %i.ef = icmp ult i64 %.04350.i203, %.040.i199
  br i1 %i.ef, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr [4 x i8], ptr %.041.i198, i64 %.04350.i203
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.ei = zext i32 %i.eh to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ej = phi i64 [ %i.ei, %bb.aa ], [ 0, %bb.z ]
  %i.ek = add nuw nsw i64 %i.ee, %i.ej            ; 3 uses
  %i.el = urem i64 %i.ek, %3
  %i.em = trunc nuw i64 %i.el to i32
  %i.en = getelementptr [4 x i8], ptr %i.dx, i64 %.04350.i203
  store i32 %i.em, ptr %i.en, align 4, !tbaa !7
  %i.eo = udiv i64 %i.ek, %3                      ; 2 uses
  %i.ep = add nuw i64 %.04350.i203, 1             ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %i.ep, %i.du
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %.lr.ph.i202, !llvm.loop !52

bb.ac:                                            ; preds = %._crit_edge.i206
  %i.eq = trunc nuw nsw i64 %i.eo to i32
  %i.er = getelementptr [4 x i8], ptr %i.dx, i64 %i.du
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !7
  br label %._crit_edge.thread.i208

._crit_edge.thread.i208:                          ; preds = %bb.ac, %._crit_edge.i206, %.preheader.i200
  %.042.i209 = phi i64 [ %i.dv, %bb.ac ], [ %i.du, %._crit_edge.i206 ], [ 0, %.preheader.i200 ]
  store i64 %.042.i209, ptr %14, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.dx, ptr %.sroa.2.0..sroa_idx.i210, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx.i211 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i211, align 8
  br label %big_add.exit212

big_add.exit212:                                  ; preds = %big_add.exit, %._crit_edge.thread.i208
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call fastcc void @karatsuba_multiply(ptr noundef %15, ptr noundef %13, ptr noundef nonnull %14, i64 noundef %3)
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !22 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null                 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ew = load i64, ptr %15, align 8              ; 2 uses
  %.045.i = select i1 %i.eu, ptr %i.ev, ptr %i.et
  %.0.i213 = select i1 %i.eu, i64 1, i64 %i.ew    ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !22 ; 4 uses
  %i.ez = icmp eq ptr %i.ey, null                 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fb = load i64, ptr %11, align 8              ; 2 uses
  %.047.i = select i1 %i.ez, ptr %i.fa, ptr %i.ey
  %.046.i = select i1 %i.ez, i64 1, i64 %i.fb
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !22 ; 4 uses
  %i.fe = icmp eq ptr %i.fd, null                 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fg = load i64, ptr %12, align 8              ; 2 uses
  %.052.i = select i1 %i.fe, ptr %i.ff, ptr %i.fd
  %.051.i = select i1 %i.fe, i64 1, i64 %i.fg
  %i.fh = shl i64 %.0.i213, 2
  %i.fi = call noalias ptr @malloc(i64 noundef %i.fh) #14 ; 5 uses
  %.not.i214 = icmp eq i64 %.0.i213, 0
  br i1 %.not.i214, label %big_sub2.exit, label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %big_add.exit212
  %i.fj = shl nuw nsw i64 %3, 1
  br label %bb.ad

.preheader.i217:                                  ; preds = %bb.aj
  %.not72.i = icmp eq i64 %.0.i213, 1
  br i1 %.not72.i, label %big_sub2.exit, label %.lr.ph63.i

bb.ad:                                            ; preds = %bb.aj, %.lr.ph.i215
  %.04861.i = phi i64 [ 0, %.lr.ph.i215 ], [ %i.gf, %bb.aj ] ; 7 uses
  %.04960.i = phi i64 [ 0, %.lr.ph.i215 ], [ %.150.i, %bb.aj ]
  %i.fk = getelementptr [4 x i8], ptr %.045.i, i64 %.04861.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !7
  %i.fm = zext i32 %i.fl to i64
  %i.fn = icmp ult i64 %.04861.i, %.046.i
  br i1 %i.fn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fo = getelementptr [4 x i8], ptr %.047.i, i64 %.04861.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !7
  %i.fq = zext i32 %i.fp to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fr = phi i64 [ %i.fq, %bb.ae ], [ 0, %bb.ad ]
  %i.fs = icmp ult i64 %.04861.i, %.051.i
  br i1 %i.fs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ft = getelementptr [4 x i8], ptr %.052.i, i64 %.04861.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !7
  %i.fv = zext i32 %i.fu to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fw = phi i64 [ %i.fv, %bb.ag ], [ 0, %bb.af ]
  %.neg238 = add nsw i64 %.04960.i, %i.fm
  %i.fx = add nuw nsw i64 %i.fr, %i.fw
  %i.fy = sub nsw i64 %.neg238, %i.fx             ; 3 uses
  %i.fz = icmp sgt i64 %i.fy, -1
  br i1 %i.fz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ga = add nsw i64 %i.fy, %i.fj                ; 2 uses
  %i.gb = urem i64 %i.ga, %3
  %i.gc = sdiv i64 %i.ga, %3
  %i.gd = add nsw i64 %i.gc, -2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sink.in.i = phi i64 [ %i.gb, %bb.ai ], [ %i.fy, %bb.ah ]
  %.150.i = phi i64 [ %i.gd, %bb.ai ], [ 0, %bb.ah ]
  %.sink.i = trunc i64 %.sink.in.i to i32
  %i.ge = getelementptr [4 x i8], ptr %i.fi, i64 %.04861.i
  store i32 %.sink.i, ptr %i.ge, align 4, !tbaa !7
  %i.gf = add nuw i64 %.04861.i, 1                ; 2 uses
  %exitcond.not.i216 = icmp eq i64 %i.gf, %.0.i213
  br i1 %exitcond.not.i216, label %.preheader.i217, label %bb.ad, !llvm.loop !59

.lr.ph63.i:                                       ; preds = %.preheader.i217, %bb.ak
  %.162.i = phi i64 [ %i.gk, %bb.ak ], [ %i.ew, %.preheader.i217 ] ; 3 uses
  %i.gg = getelementptr [4 x i8], ptr %i.fi, i64 %.162.i
  %i.gh = getelementptr i8, ptr %i.gg, i64 -4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !7
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.ak, label %big_sub2.exit

bb.ak:                                            ; preds = %.lr.ph63.i
  %i.gk = add i64 %.162.i, -1                     ; 2 uses
  %i.gl = icmp ugt i64 %i.gk, 1
  br i1 %i.gl, label %.lr.ph63.i, label %big_sub2.exit, !llvm.loop !60

big_sub2.exit:                                    ; preds = %.lr.ph63.i, %bb.ak, %big_add.exit212, %.preheader.i217
  %.1.lcssa.i = phi i64 [ 1, %.preheader.i217 ], [ 0, %big_add.exit212 ], [ 1, %bb.ak ], [ %.162.i, %.lr.ph63.i ] ; 3 uses
  %i.gm = add i64 %.0166, %.0                     ; 4 uses
  %i.gn = call noalias ptr @calloc(i64 noundef %i.gm, i64 noundef 4) #15 ; 6 uses
  br i1 %i.ez, label %bb.al, label %bb.am

bb.al:                                            ; preds = %big_sub2.exit
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 205, ptr noundef nonnull @__PRETTY_FUNCTION__.karatsuba_multiply) #13
  unreachable

bb.am:                                            ; preds = %big_sub2.exit
  %i.go = shl i64 %i.fb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gn, ptr noundef nonnull align 1 %i.ey, i64 noundef %i.go, i1 noundef false) #16
  br i1 %i.fe, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 208, ptr noundef nonnull @__PRETTY_FUNCTION__.karatsuba_multiply) #13
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.gp = and i64 %.1, -2
  %i.gq = getelementptr [4 x i8], ptr %i.gn, i64 %i.gp
  %i.gr = shl i64 %i.fg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gq, ptr noundef nonnull align 1 %i.fd, i64 noundef %i.gr, i1 noundef false) #16
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.bx
  %.not284 = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not284, label %.preheader241, label %.lr.ph256

._crit_edge257:                                   ; preds = %.lr.ph256
  %.not193259 = icmp ugt i64 %3, %i.gz
  br i1 %.not193259, label %.preheader241, label %.lr.ph263.preheader

.lr.ph263.preheader:                              ; preds = %._crit_edge257
  %i.gs = add i64 %.1.lcssa.i, %i.bx
  br label %.lr.ph263

.lr.ph256:                                        ; preds = %bb.ao, %.lr.ph256
  %.0172254 = phi i64 [ %i.hd, %.lr.ph256 ], [ 0, %bb.ao ] ; 3 uses
  %.0173253 = phi i64 [ %i.hc, %.lr.ph256 ], [ 0, %bb.ao ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.0172254 ; 2 uses
  %i.gt = load i32, ptr %gep, align 4, !tbaa !7
  %i.gu = zext i32 %i.gt to i64
  %i.gv = add nuw nsw i64 %.0173253, %i.gu
  %i.gw = getelementptr [4 x i8], ptr %i.fi, i64 %.0172254
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !7
  %i.gy = zext i32 %i.gx to i64
  %i.gz = add nuw nsw i64 %i.gv, %i.gy            ; 3 uses
  %i.ha = urem i64 %i.gz, %3
  %i.hb = trunc nuw i64 %i.ha to i32
  store i32 %i.hb, ptr %gep, align 4, !tbaa !7
  %i.hc = udiv i64 %i.gz, %3                      ; 2 uses
  %i.hd = add nuw i64 %.0172254, 1                ; 2 uses
  %exitcond294.not = icmp eq i64 %i.hd, %.1.lcssa.i
  br i1 %exitcond294.not, label %._crit_edge257, label %.lr.ph256, !llvm.loop !61

.preheader241:                                    ; preds = %.lr.ph263, %bb.ao, %._crit_edge257
  %i.he = icmp ugt i64 %i.gm, 1
  br i1 %i.he, label %.lr.ph265, label %pm_integer_free.exit221

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %.lr.ph263
  %.0171261 = phi i64 [ %i.hm, %.lr.ph263 ], [ %i.gs, %.lr.ph263.preheader ] ; 2 uses
  %.1174260 = phi i64 [ %i.hl, %.lr.ph263 ], [ %i.hc, %.lr.ph263.preheader ]
  %i.hf = getelementptr [4 x i8], ptr %i.gn, i64 %.0171261 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !7
  %i.hh = zext i32 %i.hg to i64
  %i.hi = add nuw nsw i64 %.1174260, %i.hh        ; 3 uses
  %i.hj = urem i64 %i.hi, %3
  %i.hk = trunc nuw i64 %i.hj to i32
  store i32 %i.hk, ptr %i.hf, align 4, !tbaa !7
  %i.hl = udiv i64 %i.hi, %3
  %i.hm = add i64 %.0171261, 1
  %.not193 = icmp samesign ugt i64 %3, %i.hi
  br i1 %.not193, label %.preheader241, label %.lr.ph263, !llvm.loop !62

.lr.ph265:                                        ; preds = %.preheader241, %bb.ap
  %.0176264 = phi i64 [ %i.hr, %bb.ap ], [ %i.gm, %.preheader241 ] ; 3 uses
  %i.hn = getelementptr [4 x i8], ptr %i.gn, i64 %.0176264
  %i.ho = getelementptr i8, ptr %i.hn, i64 -4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !7
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.ap, label %pm_integer_free.exit221

bb.ap:                                            ; preds = %.lr.ph265
  %i.hr = add i64 %.0176264, -1                   ; 2 uses
  %i.hs = icmp ugt i64 %i.hr, 1
  br i1 %i.hs, label %.lr.ph265, label %pm_integer_free.exit221, !llvm.loop !63

pm_integer_free.exit221:                          ; preds = %.lr.ph265, %bb.ap, %.preheader241
  %.0176.lcssa = phi i64 [ %i.gm, %.preheader241 ], [ 1, %bb.ap ], [ %.0176264, %.lr.ph265 ]
  call void @free(ptr noundef nonnull %i.ey) #16
  %.not.i222 = icmp eq ptr %i.fi, null
  br i1 %.not.i222, label %pm_integer_free.exit225, label %bb.aq

bb.aq:                                            ; preds = %pm_integer_free.exit221
  call void @free(ptr noundef nonnull %i.fi) #16
  br label %pm_integer_free.exit225

pm_integer_free.exit225:                          ; preds = %pm_integer_free.exit221, %bb.aq
  call void @free(ptr noundef nonnull %i.fd) #16
  %i.ht = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !22 ; 2 uses
  %.not.i226 = icmp eq ptr %i.hu, null
  br i1 %.not.i226, label %pm_integer_free.exit227, label %bb.ar

bb.ar:                                            ; preds = %pm_integer_free.exit225
  call void @free(ptr noundef nonnull %i.hu) #16
  br label %pm_integer_free.exit227

pm_integer_free.exit227:                          ; preds = %pm_integer_free.exit225, %bb.ar
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !22 ; 2 uses
  %.not.i228 = icmp eq ptr %i.hw, null
  br i1 %.not.i228, label %pm_integer_free.exit229, label %bb.as

bb.as:                                            ; preds = %pm_integer_free.exit227
  call void @free(ptr noundef nonnull %i.hw) #16
  br label %pm_integer_free.exit229

pm_integer_free.exit229:                          ; preds = %pm_integer_free.exit227, %bb.as
  br i1 %i.eu, label %pm_integer_free.exit231, label %bb.at

bb.at:                                            ; preds = %pm_integer_free.exit229
  call void @free(ptr noundef nonnull %i.et) #16
  br label %pm_integer_free.exit231

pm_integer_free.exit231:                          ; preds = %pm_integer_free.exit229, %bb.at
  store i64 %.0176.lcssa, ptr %0, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gn, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.au

bb.au:                                            ; preds = %.critedge, %bb.j, %pm_integer_free.exit231, %._crit_edge252
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!17, !18, i64 0}
!17 = !{!"", !18, i64 0, !19, i64 8, !8, i64 16, !21, i64 20}
!18 = !{!"long", !9, i64 0}
!19 = !{!"p1 int", !20, i64 0}
!20 = !{!"any pointer", !9, i64 0}
!21 = !{!"_Bool", !9, i64 0}
!22 = !{!17, !19, i64 8}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = !{!18, !18, i64 0}
!27 = !{!19, !19, i64 0}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = !{!17, !8, i64 16}
!31 = !{!17, !21, i64 20}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = !{!37}
!37 = distinct !{!37, !38}
!38 = distinct !{!38, !"LVerDomain"}
!39 = !{!40}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !13, !42, !43}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = distinct !{!44, !13, !42}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = !{i64 0, i64 8, !26, i64 8, i64 8, !27, i64 16, i64 4, !7, i64 20, i64 1, !50}
!50 = !{!21, !21, i64 0}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
end_hunk_0
