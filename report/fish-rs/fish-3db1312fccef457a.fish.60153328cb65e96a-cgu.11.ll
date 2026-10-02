Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager35select_next_completion_in_direction:bb.a

bb.cn:                                            ; preds = %bb.cm
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !range !28, !noundef !5
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = icmp eq i64 %i.dm, 0
  %or.cond.not = select i1 %i.dk, i1 true, i1 %i.dn
  br i1 %or.cond.not, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.do = icmp ult i64 %.sroa.038.093, %i.m
  br i1 %i.do, label %bb.cr, label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  store i8 1, ptr %i.di, align 8
  br label %bb.g

bb.cq:                                            ; preds = %bb.co
  %reass.sub = sub nuw i64 %.sroa.038.093, %i.m
  %i.dp = add nuw i64 %reass.sub, 1
  store i64 %i.dp, ptr %i.df, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 1, ptr %i.dq, align 8
  br label %bb.g

bb.cr:                                            ; preds = %bb.co
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2918) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager5clear(ptr noalias nofree noundef align 8 dereferenceable(280) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i20 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.0.i20
  %i.h = add nuw nsw i64 %.sroa.0.0.i20, 1        ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph22
  %i.i = add i64 %.sroa.0.1.i21, 1                ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %common.resume, label %.lr.ph22

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %common.resume, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.1.i21 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.1.i21
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.m) #35
          to label %bb.c unwind label %bb.e

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.d, %bb.h, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.y, %bb.h ], [ %i.k, %bb.d ], [ %i.y, %bb.g ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.lr.ph22
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit10, label %.lr.ph24

bb.f:                                             ; preds = %.lr.ph24
  %i.t = icmp eq i64 %i.v, %i.r
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit10, label %.lr.ph24

.lr.ph24:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit, %bb.f
  %.sroa.0.0.i823 = phi i64 [ %i.v, %bb.f ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %.sroa.0.0.i823
  %i.v = add nuw nsw i64 %.sroa.0.0.i823, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.u)
          to label %bb.f unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph26
  %i.w = add i64 %.sroa.0.1.i925, 1               ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.r
  br i1 %i.x, label %common.resume, label %.lr.ph26

bb.h:                                             ; preds = %.lr.ph24
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = icmp eq i64 %i.v, %i.r
  br i1 %i.z, label %common.resume, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.h, %bb.g
  %.sroa.0.1.i925 = phi i64 [ %i.w, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %.sroa.0.1.i925
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.aa) #35
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph26
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit10: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !4, !alias.scope !2828, !noundef !5
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit10
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.af, %bb.k ]
  store i64 -1, ptr %i.ac, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit10, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  store i64 -1, ptr %i.ac, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 275
  store i8 0, ptr %i.ai, align 1
  store i64 0, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 273
  store i8 0, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %i.am, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([296 x i8]) align 8 captures(none) dereferenceable(296) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [4 x i8], align 4                 ; 3 uses
  %i.e = alloca [4 x i8], align 1                 ; 7 uses
  %i.f = alloca [4 x i8], align 1                 ; 7 uses
  %i.g = alloca [4 x i8], align 1                 ; 7 uses
  %i.h = alloca [4 x i8], align 1                 ; 7 uses
  %i.i = alloca [4 x i8], align 1                 ; 7 uses
  %.sroa.0.i.i.i = alloca i32, align 4            ; 9 uses
  %i.j = alloca [40 x i8], align 8                ; 25 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 16               ; 6 uses
  %i.n = alloca [1 x i8], align 1                 ; 3 uses
  %i.o = alloca [1 x i8], align 1                 ; 3 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [4 x i8], align 1                 ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 13 uses
  %i.t = alloca [4 x i8], align 4                 ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [96 x i8], align 8                ; 14 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 11 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 32 uses
  %i.ag = alloca [96 x i8], align 8               ; 15 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 5 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 5 uses
  %.sroa.10 = alloca [24 x i8], align 8           ; 5 uses
  %i.al = alloca [296 x i8], align 8              ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 248 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 256 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 264
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 4 uses
  store i64 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 5 uses
  store i64 0, ptr %i.av, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 32, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 280 ; 7 uses
  store i64 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 288
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 3 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 128 ; 3 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 144 ; 3 uses
  store i64 0, ptr %.sroa.716.0..sroa_idx, align 8
  %.sroa.716.sroa.4.0..sroa.716.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, i8 0, i64 40, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.716.sroa.4.0..sroa.716.0..sroa_idx.sroa_idx, align 8
  %.sroa.716.sroa.5.0..sroa.716.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 168 ; 2 uses
  %.sroa.817.sroa.4.0..sroa.817.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.716.sroa.5.0..sroa.716.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.817.sroa.4.0..sroa.817.0..sroa_idx.sroa_idx, align 8
  %.sroa.817.sroa.5.0..sroa.817.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 192 ; 2 uses
  %.sroa.9.sroa.0.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.817.sroa.5.0..sroa.817.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9.sroa.0.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 208
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 216 ; 2 uses
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 224 ; 2 uses
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 225 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 232 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 240 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %.sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.ba = load i64, ptr %i.az, align 8, !noundef !5 ; 11 uses
  store i64 1, ptr %i.al, align 8
  store i64 %i.ba, ptr %i.am, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5 ; 3 uses
  store i64 1, ptr %i.an, align 8
  store i64 %i.bc, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2945
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2945
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.d unwind label %bb.c, !noalias !2946

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.bn, %bb.e ], [ %i.bg, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #35
          to label %.body unwind label %bb.f, !noalias !2946

bb.c:                                             ; preds = %.noexc
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !2944, !noalias !2946, !noundef !5 ; 2 uses
  %i.bj = load i64, ptr %i.bd, align 8, !range !22, !alias.scope !2944, !noalias !2946, !noundef !5 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !2944, !noalias !2946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2945
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %bb.g unwind label %bb.e, !noalias !2946

bb.e:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #35
          to label %bb.b unwind label %bb.f, !noalias !2946

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2946
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i, %.loopexit.i.i, %bb.cp, %.body192.i, %bb.ew, %bb.gg, %bb.b, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.h ], [ %.pn.i, %bb.b ], [ %.pn130.i, %.body192.i ], [ %i.yl, %bb.gg ], [ %lpad.loopexit186.i.i, %.loopexit.i.i ], [ %i.tf, %bb.ew ], [ %i.pt, %bb.cp ], [ %lpad.phi.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i ], [ %lpad.loopexit160, %.loopexit ], [ %lpad.loopexit168, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit177, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager13PageRenderingEBF_(ptr noalias nofree noundef align 8 dereferenceable(296) %i.al) #35
          to label %bb.hk unwind label %bb.hj

.loopexit:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_.exit.i.i, %.backedge.i.i
  %lpad.loopexit160 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph303.i.i
  %lpad.loopexit168 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.backedge541, %.sink.split.sink.split.i
  %lpad.loopexit177 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke1053, %.invoke, %bb.n, %bb.a, %bb.l, %bb.z, %bb.gi
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.bp = trunc nuw i64 %i.bj to i1
  %.sroa.5.0.i = select i1 %i.bp, i64 %i.bl, i64 undef ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !2944, !noalias !2946, !noundef !5 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bt = load i8, ptr %i.bs, align 8, !range !28, !alias.scope !2944, !noalias !2946, !noundef !5 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.bv = load i8, ptr %i.bu, align 1, !range !28, !alias.scope !2944, !noalias !2946, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !2944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2945
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !range !22, !alias.scope !2944, !noalias !2946, !noundef !5 ; 3 uses
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !2944, !noalias !2946
  %.sroa.54.0.i = select i1 %i.by, i64 %i.ca, i64 undef ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !2944, !noalias !2946, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !2944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !2944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2945
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line12EditableLineEBF_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.ay)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bj, ptr %i.ay, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.bx, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  store i64 %.sroa.54.0.i, ptr %.sroa.7.0..sroa_idx91, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.716.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false)
  store i64 %i.br, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  store i8 %i.bt, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  store i8 %i.bv, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 1
  store i64 %i.bi, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %i.cc, ptr %.sroa.11.0..sroa_idx, align 8
  br label %.body

bb.i:                                             ; preds = %bb.g
  store i64 %i.bj, ptr %i.ay, align 8
  %.sroa.5.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx87, align 8
  store i64 %i.bx, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  store i64 %.sroa.54.0.i, ptr %.sroa.7.0..sroa_idx92, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.716.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false)
  store i64 %i.br, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  store i8 %i.bt, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  store i8 %i.bv, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 1
  store i64 %i.bi, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %i.cc, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cf = load i64, ptr %i.ce, align 8            ; 21 uses
  %i.cg = icmp ult i64 %i.cf, 64051194700380388
  %i.ch = icmp eq i64 %i.cf, 0                    ; 3 uses
  %i.ci = load i64, ptr %1, align 8, !range !22   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 6 uses
  %i.cl = trunc nuw i64 %i.ci to i1               ; 4 uses
  %i.cm = icmp eq i64 %i.ck, 0                    ; 2 uses
  %.not2.i.i = icmp ult i64 %i.ck, %i.cf          ; 2 uses
  %i.cn = add nsw i64 %i.cf, -1                   ; 2 uses
  %.sroa.37.0.in = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.37.0 = load i64, ptr %.sroa.37.0.in, align 8
  %.sroa.06.0.in = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.06.0 = load ptr, ptr %.sroa.06.0.in, align 8, !nonnull !5 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !5 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = icmp ult i64 %i.ba, 16
  %i.ct = icmp ult i64 %i.bc, 4
  %or.cond.i = or i1 %i.cs, %i.ct                 ; 3 uses
  %i.cu = add i64 %i.bc, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 273
  %i.cw = load i8, ptr %i.cv, align 1, !range !28
  %i.cx = trunc nuw i8 %i.cw to i1                ; 3 uses
  %.sroa.07.0.neg.i = sext i1 %i.cx to i64
  %i.cy = add i64 %i.cu, %.sroa.07.0.neg.i        ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.da = load i8, ptr %i.cz, align 8, !range !28
  %i.db = trunc nuw i8 %i.da to i1                ; 4 uses
  %i.dc = lshr i64 %i.cy, 1
  %..i.i = call i64 @llvm.umax.i64(i64 %i.dc, i64 4)
  %..i137.i = call i64 @llvm.umin.i64(i64 %..i.i, i64 %i.cy) ; 3 uses
  %.fr.i = freeze { i64, i1 } { i64 poison, i1 false }
  %i.dd = extractvalue { i64, i1 } %.fr.i, 1      ; 2 uses
  %.sroa.6.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %2 = getelementptr inbounds nuw i8, ptr %i.ag, <2 x i64> <i64 0, i64 96>
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 275
  %.val.i143.i = load i8, ptr %i.dg, align 1      ; 2 uses
  %.sroa.483.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.584.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dh = sub i8 28, %.val.i143.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0, i64 %.sroa.37.0
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.5.0..sroa_idx.i21.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %.sroa.573.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.676.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %.sroa.440.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.541.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.642.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %.sroa.573.0..sroa_idx74.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.676.0..sroa_idx77.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.7.0..sroa_idx79.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 7 uses
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 11 uses
  %brmerge.not.i = and i1 %i.ch, %i.cx
  %i.dj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.466.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.571.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.466.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.571.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.4.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.du = load i64, ptr %i.dt, align 8            ; 5 uses
  %i.dv = icmp ult i64 %i.du, 2305843009213693952
  %i.dw = icmp eq i64 %i.du, 0
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val.i = load ptr, ptr %i.dx, align 8, !nonnull !5
  %i.dy = shl nuw nsw i64 %i.du, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !5
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ec = load i64, ptr %i.eb, align 8            ; 8 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.not129.i = icmp eq i64 %i.ec, 0
  %i.ef = shl nuw nsw i64 %i.ec, 2
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %.sroa.689.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.eg = icmp ult i64 %i.ec, 2305843009213693952
  %i.eh = icmp samesign ult i64 %i.ec, 12
  %i.ei = sub nuw nsw i64 12, %i.ec               ; 2 uses
  %i.ej = add i64 %i.ba, -1                       ; 2 uses
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.not499 = xor i1 %i.cl, true
  %brmerge = select i1 %.not499, i1 true, i1 %i.cm ; 2 uses
  %brmerge501 = select i1 %brmerge, i1 true, i1 %.not2.i.i
  %.mux.mux = select i1 %i.cl, i64 %i.ck, i64 0
  %.mux500.mux = select i1 %brmerge, i64 %i.ci, i64 1
  %spec.select = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select800 = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select807 = select i1 %i.db, i64 %i.cy, i64 %..i137.i ; 2 uses
  %not.796 = xor i1 %i.cl, true
  %i.ek = select i1 %not.796, i1 true, i1 %i.cm
  %invariant.op = sub i8 20, %.val.i143.i
  %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 2
  %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 3
  %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  br label %.backedge541

.backedge541:                                     ; preds = %.backedge541.backedge, %bb.i
  %.sroa.4.0498 = phi i64 [ 6, %bb.i ], [ %i.en, %.backedge541.backedge ] ; 13 uses
  %i.en = add i64 %.sroa.4.0498, -1               ; 5 uses
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish6screenNtB4_10ScreenData11clear_lines(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.thread:                                          ; preds = %.loopexit176.thread803, %.loopexit176.thread, %.loopexit176, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.al, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  ret void

bb.j:                                             ; preds = %.backedge541
  call void @llvm.assume(i1 %i.cg)
  br i1 %i.ch, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eo = urem i64 %i.cf, %.sroa.4.0498
  %.not.i43 = icmp ne i64 %i.eo, 0
  %i.ep = udiv i64 %i.cf, %.sroa.4.0498
  %..i = zext i1 %.not.i43 to i64
  %i.eq = add nuw nsw i64 %i.ep, %..i             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.eq, ptr %i.ah, align 8
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @31, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2943) #37
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.es = urem i64 %i.cf, %i.eq
  %.not.i46 = icmp ne i64 %i.es, 0
  %i.et = udiv i64 %i.cf, %i.eq
  %..i47 = zext i1 %.not.i46 to i64
  %i.eu = add nuw nsw i64 %i.et, %..i47           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not = icmp ugt i64 %i.eu, %.sroa.4.0498
  br i1 %.not, label %bb.n, label %.thread129, !prof !2947

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2919, i64 noundef 52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2920) #36
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.j
  %.not142 = icmp eq i64 %.sroa.4.0498, 1
  br i1 %.not142, label %.loopexit176.thread803, label %.backedge541.backedge

.thread129:                                       ; preds = %bb.m
  %i.ev = icmp ne i64 %.sroa.4.0498, 1
  %i.ew = icmp ult i64 %i.eu, %.sroa.4.0498
  %or.cond132 = and i1 %i.ev, %i.ew
  br i1 %or.cond132, label %.backedge541.backedge, label %bb.q

.backedge541.backedge:                            ; preds = %.thread129, %bb.o, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  br label %.backedge541

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %.thread129
  store i64 %.sroa.4.0498, ptr %i.aq, align 8
  store i64 %i.eq, ptr %i.ap, align 8
  br i1 %brmerge501, label %.loopexit176.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.0.03.i.i = phi i64 [ %i.ex, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %.not6.i.i = icmp ult i64 %.sroa.0.03.i.i, %i.eq
  br i1 %.not6.i.i, label %.loopexit176, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.ex = sub nuw i64 %.sroa.0.03.i.i, %i.eq      ; 3 uses
  %.not.i.i = icmp ult i64 %i.ex, %i.cf
  br i1 %.not.i.i, label %.loopexit176, label %.lr.ph.i.i

.loopexit176:                                     ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.7.0.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ %i.ex, %bb.r ]
  store i64 1, ptr %i.at, align 8
  store i64 %.sroa.7.0.i, ptr %i.au, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  call void @llvm.experimental.noalias.scope.decl(metadata !2949)
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

.loopexit176.thread803:                           ; preds = %bb.o
  store i64 1, ptr %i.aq, align 8
  store i64 0, ptr %i.ap, align 8
  store i64 0, ptr %i.at, align 8
  br i1 %or.cond.i, label %.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread

.loopexit176.thread:                              ; preds = %bb.q
  store i64 %.mux500.mux, ptr %i.at, align 8
  store i64 %.mux.mux, ptr %i.au, align 8
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i: ; preds = %.loopexit176, %.loopexit176.thread
  %spec.select801 = phi i64 [ %spec.select800, %.loopexit176.thread ], [ %spec.select, %.loopexit176 ] ; 5 uses
  %i.ey = urem i64 %i.cf, %.sroa.4.0498
  %.not.i.i52 = icmp ne i64 %i.ey, 0
  %i.ez = udiv i64 %i.cf, %.sroa.4.0498
  %..i138.i = zext i1 %.not.i.i52 to i64
  %i.fa = add nuw nsw i64 %i.ez, %..i138.i
  %.sroa.0.0.i207.fr677.i = freeze i64 %i.fa      ; 6 uses
  %i.fb = icmp ule i64 %.sroa.0.0.i207.fr677.i, %spec.select801
  %or.cond4.not.i = select i1 %i.db, i1 true, i1 %i.fb
  br i1 %or.cond4.not.i, label %.outer.split.i.split.us.preheader.sink.split, label %bb.s

bb.s:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %i.fc = sub nuw nsw i64 %.sroa.0.0.i207.fr677.i, %spec.select801 ; 3 uses
  store i64 %i.fc, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.t, label %.outer.split.i.split.us.preheader

bb.t:                                             ; preds = %bb.s
  %i.fe = add nuw nsw i64 %spec.select801, 1
  br label %.outer.split.i.split.us.preheader.sink.split

.outer.split.i.split.us.preheader.sink.split:     ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i, %bb.t
  %.sroa.08.1.i816.ph = phi i64 [ %i.fe, %bb.t ], [ %spec.select801, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ]
  store i64 0, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  br label %.outer.split.i.split.us.preheader

.outer.split.i.split.us.preheader:                ; preds = %.outer.split.i.split.us.preheader.sink.split, %bb.s
  %.sroa.08.1.i816 = phi i64 [ %spec.select801, %bb.s ], [ %.sroa.08.1.i816.ph, %.outer.split.i.split.us.preheader.sink.split ] ; 2 uses
  %i.ff = phi i64 [ %i.fc, %bb.s ], [ 0, %.outer.split.i.split.us.preheader.sink.split ] ; 2 uses
  br label %.outer.split.i.split.us

.invoke:                                          ; preds = %bb.gj, %bb.go, %bb.gt, %bb.gy, %bb.hd, %bb.hi, %.split.i, %.split.1.i, %.split.2.i, %.split.3.i, %.split.4.i, %.split.5.i, %bb.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i, %.split.us, %bb.gn, %bb.gs, %bb.gx, %bb.hc, %bb.hh, %bb.gl, %bb.gq, %bb.gv, %bb.ha, %bb.hf, %bb.ag, %bb.ae
  %i.fg = phi ptr [ @2877, %bb.gs ], [ @2876, %bb.hf ], [ @3129, %bb.ae ], [ @2876, %bb.gv ], [ @2876, %bb.ha ], [ @2877, %.split.us ], [ @2877, %bb.gn ], [ @2877, %bb.hc ], [ @2877, %bb.hh ], [ @2876, %bb.gl ], [ @2876, %bb.gq ], [ @2877, %bb.gx ], [ @2856, %bb.ag ], [ @2874, %.split.i ], [ @2875, %bb.gj ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i ], [ @2874, %.split.5.i ], [ @2874, %.split.4.i ], [ @2874, %.split.3.i ], [ @2874, %.split.2.i ], [ @2874, %.split.1.i ], [ @2875, %bb.hi ], [ @2875, %bb.hd ], [ @2875, %bb.gy ], [ @2875, %bb.gt ], [ @2875, %bb.go ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i ], [ @2860, %bb.u ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fg) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i: ; preds = %bb.hi
  %..i199.5.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.aca) ; 2 uses
  %i.fh = add nuw i64 %.sroa.022.0.ph429.5.i.lcssa, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2951
  store i64 %..i199.i846, ptr %i.ag, align 8, !noalias !2951
  store i64 %i.zk, ptr %.sroa.6.0..sroa_idx.i54, align 8, !noalias !2951
  store i64 %..i199.1688.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.zn, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.2.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.aac, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.3.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.aau, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.4.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.abl, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.5.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.fh, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !2951
  %i.fi = add i64 %..i199.1688.i, %..i199.i846    ; 3 uses
  %i.fj = icmp ult i64 %i.fi, %..i199.i846
  br i1 %i.fj, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i
  %i.fk = add i64 %..i199.2.i, %i.fi              ; 3 uses
  %i.fl = icmp ult i64 %i.fk, %i.fi
  br i1 %i.fl, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i
  %i.fm = add i64 %..i199.3.i, %i.fk              ; 3 uses
  %i.fn = icmp ult i64 %i.fm, %i.fk
  br i1 %i.fn, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i
  %i.fo = add i64 %..i199.4.i, %i.fm              ; 3 uses
  %i.fp = icmp ult i64 %i.fo, %i.fm
  br i1 %i.fp, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i
  %i.fq = add i64 %..i199.5.i, %i.fo              ; 3 uses
  %i.fr = icmp ult i64 %i.fq, %i.fo
  br i1 %i.fr, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i
  %i.fs = icmp slt i64 %i.en, 0
  br i1 %i.fs, label %.invoke1053, label %bb.u

bb.u:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i
  %i.ft = shl nuw i64 %i.en, 1
  %i.fu = add i64 %i.fq, %i.ft                    ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.fq
  br i1 %i.fv, label %.invoke, label %bb.v

.invoke1053:                                      ; preds = %.outer.split.us.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i, %bb.af
  %i.fw = phi ptr [ @2856, %bb.af ], [ @2859, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ @2876, %.outer.split.us.1.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fw) #37
          to label %.cont1054 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1054:                                        ; preds = %.invoke1053
  unreachable

bb.v:                                             ; preds = %bb.u
  %.not.i55.not = icmp uge i64 %i.ba, %i.fu       ; 2 uses
  br i1 %.not.i55.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not114.i = icmp ugt i64 %.sroa.0.0.i207.fr678.i812827834844, %.sroa.08.1.i814826835840
  br i1 %.not114.i, label %bb.y, label %.thread219.i

bb.x:                                             ; preds = %bb.v
  %.not132.i = icmp eq i64 %.sroa.4.0498, 1
  br i1 %.not132.i, label %bb.gi, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit, !prof !7

bb.y:                                             ; preds = %bb.w
  %i.fx = sub nuw nsw i64 %.sroa.0.0.i207.fr678.i812827834844, %.sroa.08.1.i814826835840
  %..i141.i = call noundef i64 @llvm.umin.i64(i64 %i.fx, i64 %i.cr) ; 2 uses
  %i.fy = add nuw nsw i64 %..i141.i, %.sroa.08.1.i814826835840
  br label %.thread219.i

.thread219.i:                                     ; preds = %bb.y, %bb.w
  %.sroa.034.0217224.i = phi i64 [ %..i141.i, %bb.y ], [ 0, %bb.w ] ; 7 uses
  %.sroa.028.0218223.i = phi i64 [ %i.fy, %bb.y ], [ %.sroa.0.0.i207.fr678.i812827834844, %bb.w ] ; 6 uses
  %i.fz = sub nuw nsw i64 %.sroa.028.0218223.i, %.sroa.034.0217224.i
  %.not118.i = icmp ugt i64 %i.fz, %.sroa.08.1.i814826835840
  br i1 %.not118.i, label %bb.z, label %bb.aa, !prof !7

bb.z:                                             ; preds = %.thread219.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2861, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2862) #37
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.thread219.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2952)
  call void @llvm.experimental.noalias.scope.decl(metadata !2953)
  store i64 %.sroa.034.0217224.i, ptr %i.ar, align 8, !alias.scope !2954, !noalias !2955
  store i64 %.sroa.028.0218223.i, ptr %i.as, align 8, !alias.scope !2954, !noalias !2955
  br i1 %i.ch, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ga = urem i64 %i.cf, %.sroa.4.0498
  %.not.i.i.i = icmp ne i64 %i.ga, 0
  %i.gb = udiv i64 %i.cf, %.sroa.4.0498
  %..i.i.i = zext i1 %.not.i.i.i to i64
  %i.gc = add nuw nsw i64 %i.gb, %..i.i.i         ; 7 uses
  br i1 %i.ek, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gd = icmp eq i64 %i.gc, 0                    ; 3 uses
  %brmerge506 = select i1 %i.gd, i1 true, i1 %.not2.i.i
  %.mux508 = select i1 %i.gd, i64 undef, i64 %i.ck
  %not. = xor i1 %i.gd, true
  br i1 %brmerge506, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %bb.ad
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.ge, %bb.ad ], [ %i.ck, %bb.ac ] ; 2 uses
  %.not6.i.i.i.i = icmp ult i64 %.sroa.0.03.i.i.i.i, %i.gc
  br i1 %.not6.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ge = sub nuw i64 %.sroa.0.03.i.i.i.i, %i.gc  ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.ge, %i.cf
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i, %bb.ac, %bb.ab, %bb.aa
  %.sroa.0.0.i.i.i138 = phi i64 [ %i.gc, %bb.ac ], [ %i.gc, %bb.ab ], [ 0, %bb.aa ], [ %i.gc, %.lr.ph.i.i.i.i ], [ %i.gc, %bb.ad ]
  %.sroa.7.0.i.i.i = phi i64 [ %.mux508, %bb.ac ], [ 0, %bb.ab ], [ undef, %bb.aa ], [ %i.ge, %bb.ad ], [ %i.cn, %.lr.ph.i.i.i.i ]
  %.sroa.0.0.i18.i.i = phi i1 [ %not., %bb.ac ], [ %i.cl, %bb.ab ], [ false, %bb.aa ], [ true, %.lr.ph.i.i.i.i ], [ true, %bb.ad ]
  %i.gf = icmp samesign ult i64 %.sroa.034.0217224.i, %.sroa.028.0218223.i
  br i1 %i.gf, label %.lr.ph303.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i

.lr.ph303.i.i:                                    ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, %._crit_edge.i.i
  %.sroa.08.0302.i.i = phi i64 [ %i.gg, %._crit_edge.i.i ], [ %.sroa.034.0217224.i, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i ] ; 4 uses
  %i.gg = add nuw nsw i64 %.sroa.08.0302.i.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2956
  store <2 x ptr> %2, ptr %i.m, align 16, !noalias !2956
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !noalias !2956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2957
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit

.noexc65:                                         ; preds = %.lr.ph303.i.i
  %i.gh = load i64, ptr %i.k, align 8, !range !22, !noalias !2957, !noundef !5
  %i.gi = trunc nuw i64 %i.gh to i1
  br i1 %i.gi, label %.lr.ph.i.i58, label %._crit_edge.i.i

.lr.ph.i.i58:                                     ; preds = %.noexc65
  %i.gj = trunc i64 %.sroa.08.0302.i.i to i1      ; 4 uses
  %spec.select.i.i.i.i = select i1 %i.gj, i8 22, i8 18
  %i.gk = select i1 %i.gj, i8 4, i8 0
  %spec.select.i134.i.reass.reass.i.reass.i.reass.reass = add i8 %i.gk, %invariant.op
  %spec.select.i137.i.i.i = select i1 %i.gj, i8 24, i8 20
  %spec.select.i140.i.i.i = select i1 %i.gj, i8 25, i8 21
  %i.gl = sub nuw nsw i64 %.sroa.08.0302.i.i, %.sroa.034.0217224.i
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc72, %.lr.ph.i.i58
  call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  %i.gm = load i64, ptr %i.de, align 8, !noalias !2959, !noundef !5 ; 8 uses
  %i.gn = load i64, ptr %i.df, align 8, !noalias !2959, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2959
  %i.go = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !alias.scope !2958, !noalias !2960, !noundef !5 ; 4 uses
  %i.gp = icmp eq i64 %i.go, -1
  br i1 %i.gp, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gq = add nuw i64 %i.go, 1
  store i64 %i.gq, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !alias.scope !2958, !noalias !2960
  %i.gr = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.go, i64 %.sroa.0.0.i.i.i138) ; 2 uses
  %i.gs = extractvalue { i64, i1 } %i.gr, 1
  br i1 %i.gs, label %.invoke1053, label %bb.ag

._crit_edge.i.i:                                  ; preds = %.noexc72, %.noexc65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2956
  %exitcond.not.i.i = icmp eq i64 %i.gg, %.sroa.028.0218223.i
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i, label %.lr.ph303.i.i

bb.ag:                                            ; preds = %bb.af
  %i.gt = extractvalue { i64, i1 } %i.gr, 0       ; 2 uses
  %i.gu = add i64 %i.gt, %.sroa.08.0302.i.i       ; 20 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  br i1 %i.gv, label %.invoke, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not16.i.i = icmp ugt i64 %i.cf, %i.gu
  br i1 %.not16.i.i, label %bb.ai, label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.gw = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.gu ; 9 uses
  %i.gx = icmp eq i64 %i.gu, %.sroa.7.0.i.i.i
  %.sroa.05.0.i.i = select i1 %.sroa.0.0.i18.i.i, i1 %i.gx, i1 false ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 96
  %i.gz = load i16, ptr %i.gy, align 8, !alias.scope !2961, !noalias !2962, !noundef !5
  %i.ha = and i16 %i.gz, 1024
  %.not17.not.i.i = icmp eq i16 %i.ha, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2956
  call void @llvm.experimental.noalias.scope.decl(metadata !2963)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2964
  store i64 0, ptr %i.j, align 8, !noalias !2964
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.483.0..sroa_idx.i.i.i, align 8, !noalias !2964
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.584.0..sroa_idx.i.i.i, i8 0, i64 17, i1 false), !noalias !2964
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !2965, !noalias !2966, !noundef !5 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 136
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !2965, !noalias !2966, !noundef !5 ; 5 uses
  %i.hf = icmp ne i64 %i.he, 0                    ; 2 uses
  %..i19.i.i = select i1 %i.hf, i64 4, i64 0
  %i.hg = add i64 %..i19.i.i, %i.he               ; 4 uses
  %i.hh = icmp ult i64 %i.hg, %i.he
  br i1 %i.hh, label %.invoke.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hi = add i64 %i.hg, %i.hc                    ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hc
  br i1 %i.hj, label %.invoke.i.i.i, label %bb.am

.invoke.i.i.i:                                    ; preds = %bb.ax, %bb.ap, %bb.aj, %bb.ai
  %i.hk = phi ptr [ @2884, %bb.ax ], [ @2881, %bb.ap ], [ @2878, %bb.aj ], [ @2877, %bb.ai ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hk) #36
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2967

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

.loopexit.i.i.i:                                  ; preds = %bb.bz
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.cg
  %lpad.loopexit52.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.us.i.i.i.i
  %lpad.loopexit56.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.i.i.i.i, %bb.ce
  %lpad.loopexit60.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i.i: ; preds = %bb.bo
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i
  %lpad.loopexit166.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.noexc152.i.i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit40.i.i.i.i, %bb.bu, %.noexc25.i.i, %.loopexit.i22.i.i
  %lpad.loopexit179.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke.i.i, %.split66.us.i.i.i
  %lpad.loopexit.split-lp180.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i: ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i
  %lpad.loopexit152.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i: ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i60.i.i
  %lpad.loopexit155.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i101.i.i
  %lpad.loopexit158.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i
  %lpad.loopexit170.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i72.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i
  %lpad.loopexit173.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i113.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i
  %lpad.loopexit177.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.av, %bb.bc, %bb.bh, %.noexc38.i.i, %bb.bl, %bb.bf, %.noexc78.i.i, %bb.ba, %.noexc119.i.i, %bb.at
  %lpad.loopexit183.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke291.i.invoke.i.i, %.split78.us.i.i.invoke.i.i, %.split.i.i.invoke.i.i.i, %.invoke289.i.i.i, %.invoke287.i.i.i, %.invoke.i.i.i
  %lpad.loopexit.split-lp184.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit52.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit56.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit60.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp180.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i.i ], [ %lpad.loopexit166.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit179.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit152.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i ], [ %lpad.loopexit155.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit158.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit170.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit173.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit177.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit183.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp184.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i unwind label %bb.ak, !noalias !2967

bb.ak:                                            ; preds = %.loopexit.split-lp.i.i.i
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.body.i.i unwind label %bb.al, !noalias !2967

bb.al:                                            ; preds = %bb.ak
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2967
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i: ; preds = %.loopexit.split-lp.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.body unwind label %bb.ck, !noalias !2968

bb.am:                                            ; preds = %bb.aj
  %.not.i20.i.i = icmp ugt i64 %i.hi, %i.gm
  br i1 %.not.i20.i.i, label %bb.an, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.hn = call i64 @llvm.usub.sat.i64(i64 %i.gm, i64 4) ; 2 uses
  %i.ho = udiv i64 %i.hn, 3
  %i.hp = shl nuw i64 %i.ho, 1
  %i.hq = urem i64 %i.hn, 3
  %.cmp.i.i.i = icmp samesign ugt i64 %i.hq, 1
  %i.hr = zext i1 %.cmp.i.i.i to i64
  %i.hs = or disjoint i64 %i.hp, %i.hr
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.hs, i64 %i.hc) ; 2 uses
  %i.ht = icmp ugt i64 %i.gm, %i.hg
  %i.hu = sub nuw i64 %i.gm, %i.hg
  %..i133.i.i.i = call i64 @llvm.umax.i64(i64 %i.hu, i64 %..i.i.i.i)
  %.sroa.04.0.i.i.i = select i1 %i.ht, i64 %..i133.i.i.i, i64 %..i.i.i.i ; 2 uses
  %.not114.i.i.i = icmp ugt i64 %.sroa.04.0.i.i.i, %i.gm
  br i1 %.not114.i.i.i, label %.invoke287.i.i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i, !prof !7

.invoke287.i.i.i:                                 ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i, %bb.an
  %i.hv = phi ptr [ @2879, %bb.an ], [ @2885, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  %i.hw = phi i64 [ 41, %bb.an ], [ 37, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  %i.hx = phi ptr [ @2880, %bb.an ], [ @2886, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hv, i64 noundef %i.hw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hx) #36
          to label %.cont288.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2967

.cont288.i.i.i:                                   ; preds = %.invoke287.i.i.i
  unreachable

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.04.1.i.i.i = phi i64 [ %.sroa.04.0.i.i.i, %bb.an ], [ %i.hc, %bb.am ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %.spec.select.i137.i.i.i = select i1 %.sroa.05.0.i.i, i8 28, i8 %spec.select.i137.i.i.i
  %.spec.select.i.i.i.i = select i1 %.sroa.05.0.i.i, i8 26, i8 %spec.select.i.i.i.i ; 7 uses
  %.spec.select.i134.i.reass.i.i = select i1 %.sroa.05.0.i.i, i8 %i.dh, i8 %spec.select.i134.i.reass.reass.i.reass.i.reass.reass
  %.spec.select.i140.i.i.i = select i1 %.sroa.05.0.i.i, i8 29, i8 %spec.select.i140.i.i.i
  store i8 %.spec.select.i137.i.i.i, ptr %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1, !noalias !2964
  store i8 0, ptr %.sroa.0.i.i.i, align 4, !noalias !2964
  store i8 0, ptr %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !noalias !2964
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
end_hunk_0
begin_hunk_1_@_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBU_EEE3newCs8frGy5WneL6_4fish:bb.a
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEE3newB2n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE3newB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdEE3newB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE3newCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEE3newB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 8, 121) %2) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 7                            ; 2 uses
  %i.b = lshr i64 %2, 3
  tail call void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.b)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %2, 120                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 4 uses
  %i.f = icmp samesign ult i64 %i.a, 4
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3014)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 1, !alias.scope !3013, !noalias !3014
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.e, align 1, !alias.scope !3014, !noalias !3013
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.d, align 1, !alias.scope !3013, !noalias !3014
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.e, align 1, !alias.scope !3014, !noalias !3013
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.g = and i64 %2, 2
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.i, align 1, !alias.scope !3015, !noalias !3016
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.j, align 1, !alias.scope !3016, !noalias !3015
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.i, align 1, !alias.scope !3015, !noalias !3016
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.j, align 1, !alias.scope !3016, !noalias !3015
  %i.k = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.l = and i64 %2, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.n, align 1, !alias.scope !3017, !noalias !3018
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.o, align 1, !alias.scope !3018, !noalias !3017
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.n, align 1, !alias.scope !3017, !noalias !3018
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.o, align 1, !alias.scope !3018, !noalias !3017
  br label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish8autoload9has_asset(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs8frGy5WneL6_4fish8autoloadNtB5_5Asset3get(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.b = load i64, ptr %i.a, align 8, !range !30, !noundef !5
  %i.c = icmp ne i64 %i.b, 2                      ; 2 uses
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileEECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !range !4, !alias.scope !3025, !noundef !5
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileEECs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.c
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend11replace_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.b, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %3 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.e, i64 1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4IterhEEEECs8frGy5WneL6_4fish.exit
  %i.g = add nuw i64 %i.r, 2                      ; 3 uses
  %i.h = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.d, %bb.a ], [ %i.h, %bb.b ]
  %.sroa.0.020 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ] ; 4 uses
  %i.k = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.l = sub nuw i64 %i.j, %.sroa.0.020
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.020
  %i.n = call { i64, i64 } @_RINvCskr4qsHYS30i_15fish_widestring17subslice_positionhRShBR_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 1) ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.h, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2958) #37
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = extractvalue { i64, i64 } %i.n, 1
  %i.r = add i64 %i.q, %.sroa.0.020               ; 6 uses
  %i.s = icmp ult i64 %i.r, %.sroa.0.020
  br i1 %i.s, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  ret void

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = icmp eq i64 %i.r, -1
  br i1 %i.t, label %bb.l, label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2955) #37
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = add nuw i64 %i.r, 1
  call void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.r, i64 noundef %i.u)
  store <2 x ptr> %4, ptr %i.f, align 8, !alias.scope !3029, !noalias !3030
  invoke void @_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB10_5slice4iter4IterhEEENtNtNtB10_3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4IterhEEEECs8frGy5WneL6_4fish.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainhENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhEECs8frGy5WneL6_4fish.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.j
  resume { ptr, i32 } %i.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4IterhEEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.i
  call void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainhENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = icmp eq i64 %i.r, -2
  br i1 %i.x, label %bb.m, label %bb.b

bb.l:                                             ; preds = %bb.g
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2956) #37
  unreachable

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4IterhEEEECs8frGy5WneL6_4fish.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2957) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend20decode_item_fish_2_0(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 14 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.7244.sroa.0 = alloca [16 x i8], align 8  ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.r = icmp samesign eq i64 %2, 0
  br i1 %i.r, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.02.07.i.i = phi i64 [ %i.v, %bb.b ], [ 0, %bb.a ] ; 11 uses
  %i.s = phi ptr [ %i.u, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %.val.i.i = load i8, ptr %i.s, align 1, !alias.scope !3160, !noalias !3161, !noundef !5
  %i.t = icmp eq i8 %.val.i.i, 10
  br i1 %i.t, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.02.07.i.i, 1
  %i.w = icmp eq ptr %i.u, %i.q
  br i1 %i.w, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, label %.lr.ph.i.i

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit: ; preds = %.lr.ph.i.i
  %i.x = icmp samesign ult i64 %.sroa.02.07.i.i, %2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %.sroa.02.07.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.02.07.i.i
  %i.aa = icmp samesign eq i64 %.sroa.02.07.i.i, 0
  br i1 %i.aa, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.ae, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ] ; 4 uses
  %i.ab = phi ptr [ %i.ad, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ %1, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ] ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !3163, !noalias !3164, !noundef !5
  switch i8 %i.ac, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i [
    i8 9, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
    i8 10, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
    i8 13, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.01.019.i.i.i.i, 1
  %i.af = icmp eq ptr %i.ad, %i.z
  br i1 %i.af, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, label %.lr.ph.i.i.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ag = icmp samesign ugt i64 %.sroa.01.019.i.i.i.i, %.sroa.02.07.i.i
  br i1 %i.ag, label %bb.c, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, !prof !33

bb.c:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.019.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.02.07.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.02.07.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2954) #37, !noalias !3162
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit: ; preds = %bb.b, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i, %bb.a, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i
  %.sroa.02.07.i.lcssa.sink.i322 = phi i64 [ %.sroa.02.07.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ], [ 0, %bb.a ], [ %.sroa.02.07.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ 0, %bb.b ] ; 5 uses
  %.sink.i321 = phi ptr [ %1, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i ], [ %1, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ], [ inttoptr (i64 1 to ptr), %bb.a ], [ %1, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  %.sink11.i320 = phi i64 [ %i.y, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i ], [ 1, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ], [ 0, %bb.a ], [ %i.y, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ %2, %bb.b ] ; 4 uses
  %.sroa.0.1.i.i4.i = phi i64 [ %.sroa.01.019.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ], [ 0, %bb.a ], [ %.sroa.02.07.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ 0, %bb.b ] ; 5 uses
  %i.ah = sub nuw nsw i64 %.sroa.02.07.i.lcssa.sink.i322, %.sroa.0.1.i.i4.i ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i321, i64 %.sroa.0.1.i.i4.i ; 8 uses
  %i.aj = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2962, i64 noundef 5)
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.e:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sink.i321, i64 %.sroa.02.07.i.lcssa.sink.i322 ; 2 uses
  %i.al = icmp eq i64 %.sroa.02.07.i.lcssa.sink.i322, %.sroa.0.1.i.i4.i
  br i1 %i.al, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113.thread, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %bb.e, %bb.f
  %.sroa.02.07.i.i115 = phi i64 [ %i.ap, %bb.f ], [ 0, %bb.e ] ; 15 uses
  %i.am = phi ptr [ %i.ao, %bb.f ], [ %i.ai, %bb.e ] ; 2 uses
  %.val.i.i116 = load i8, ptr %i.am, align 1, !noalias !3165, !noundef !5
  %i.an = icmp eq i8 %.val.i.i116, 58
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i114
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.ap = add nuw i64 %.sroa.02.07.i.i115, 1
  %i.aq = icmp eq ptr %i.ao, %i.ak
  br i1 %i.aq, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113.thread, label %.lr.ph.i.i114

bb.g:                                             ; preds = %.lr.ph.i.i114
  %i.ar = icmp ult i64 %.sroa.02.07.i.i115, %i.ah
  tail call void @llvm.assume(i1 %i.ar), !noalias !3166
  %i.as = add nuw i64 %.sroa.02.07.i.i115, 1      ; 3 uses
  %i.at = sub i64 %i.ah, %i.as                    ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.as ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3167
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3168)
  %i.av = icmp samesign eq i64 %.sroa.02.07.i.i115, 0
  br i1 %i.av, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.sroa.02.07.i.i115, 4
  br i1 %min.iters.check, label %.preheader396.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1103 = icmp ult i64 %.sroa.02.07.i.i115, 32
  br i1 %min.iters.check1103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %.sroa.02.07.i.i115, 28
  %n.vec = and i64 %.sroa.02.07.i.i115, -32       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi1104 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <16 x i8>, ptr %i.ax, align 1, !noalias !3169
  %wide.load1105 = load <16 x i8>, ptr %i.ay, align 1, !noalias !3169
  %i.az = icmp eq <16 x i8> %wide.load, splat (i8 92)
  %i.ba = icmp eq <16 x i8> %wide.load1105, splat (i8 92)
  %i.bb = or <16 x i1> %vec.phi, %i.az            ; 2 uses
  %i.bc = or <16 x i1> %vec.phi1104, %i.ba        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !3056

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.bc, %i.bb
  %i.be = bitcast <16 x i1> %bin.rdx to i16
  %i.bf = icmp ne i16 %i.be, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %.sroa.02.07.i.i115, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.preheader396.preheader, label %vec.epilog.ph, !prof !3170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.bf, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec1106 = and i64 %.sroa.02.07.i.i115, -4    ; 3 uses
  %i.bg = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1110, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi1108 = phi <4 x i1> [ %i.bg, %vec.epilog.ph ], [ %i.bj, %vec.epilog.vector.body ]
end_hunk_1
