Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager35select_next_completion_in_direction:bb.a
bb.cm:                                            ; preds = %bb.ck
  %.off = add nsw i8 %1, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !range !1936, !noundef !5
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
  %i.ad = load i64, ptr %i.ac, align 8, !range !4, !alias.scope !2817, !noundef !5
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
  %i.m = alloca [24 x i8], align 8                ; 7 uses
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
  %i.ag = alloca [96 x i8], align 8               ; 16 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2820)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2823
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2823
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.d unwind label %bb.c, !noalias !2825

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.bn, %bb.e ], [ %i.bg, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #35
          to label %.body unwind label %bb.f, !noalias !2825

bb.c:                                             ; preds = %.noexc
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !2820, !noalias !2825, !noundef !5 ; 2 uses
  %i.bj = load i64, ptr %i.bd, align 8, !range !1852, !alias.scope !2820, !noalias !2825, !noundef !5 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !2820, !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2823
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %bb.g unwind label %bb.e, !noalias !2825

bb.e:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #35
          to label %bb.b unwind label %bb.f, !noalias !2825

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2825
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i, %.loopexit.i.i, %bb.cp, %.body192.i, %bb.ew, %bb.gg, %bb.b, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.h ], [ %.pn.i, %bb.b ], [ %.pn130.i, %.body192.i ], [ %i.yq, %bb.gg ], [ %lpad.loopexit186.i.i, %.loopexit.i.i ], [ %i.tk, %bb.ew ], [ %i.py, %bb.cp ], [ %lpad.phi.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i ], [ %lpad.loopexit160, %.loopexit ], [ %lpad.loopexit169, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager13PageRenderingEBF_(ptr noalias nofree noundef align 8 dereferenceable(296) %i.al) #35
          to label %bb.ho unwind label %bb.hn

.loopexit:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_.exit.i.i, %.backedge.i.i
  %lpad.loopexit160 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph303.i.i
  %lpad.loopexit169 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.backedge524, %.sink.split.sink.split.i
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke992, %.invoke, %bb.n, %bb.a, %bb.l, %bb.z, %bb.gi
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.bp = trunc nuw i64 %i.bj to i1
  %.sroa.5.0.i = select i1 %i.bp, i64 %i.bl, i64 undef ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !2820, !noalias !2825, !noundef !5 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bt = load i8, ptr %i.bs, align 8, !range !1936, !alias.scope !2820, !noalias !2825, !noundef !5 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.bv = load i8, ptr %i.bu, align 1, !range !1936, !alias.scope !2820, !noalias !2825, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !2820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2823
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !range !1852, !alias.scope !2820, !noalias !2825, !noundef !5 ; 3 uses
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !2820, !noalias !2825
  %.sroa.54.0.i = select i1 %i.by, i64 %i.ca, i64 undef ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !2820, !noalias !2825, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !2820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !2820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2823
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
  %i.ci = load i64, ptr %1, align 8, !range !1852 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 7 uses
  %i.cl = trunc nuw i64 %i.ci to i1               ; 4 uses
  %i.cm = icmp eq i64 %i.ck, 0
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
  %i.cw = load i8, ptr %i.cv, align 1, !range !1936
  %i.cx = trunc nuw i8 %i.cw to i1                ; 3 uses
  %.sroa.07.0.neg.i = sext i1 %i.cx to i64
  %i.cy = add i64 %i.cu, %.sroa.07.0.neg.i        ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.da = load i8, ptr %i.cz, align 8, !range !1936
  %i.db = trunc nuw i8 %i.da to i1                ; 4 uses
  %i.dc = lshr i64 %i.cy, 1
  %..i.i = call i64 @llvm.umax.i64(i64 %i.dc, i64 4)
  %..i137.i = call i64 @llvm.umin.i64(i64 %..i.i, i64 %i.cy) ; 3 uses
  %.fr452.i = freeze { i64, i1 } zeroinitializer  ; 2 uses
  %i.dd = extractvalue { i64, i1 } %.fr452.i, 1
  %i.de = extractvalue { i64, i1 } %.fr452.i, 0   ; 2 uses
  %.fr.i = freeze { i64, i1 } { i64 poison, i1 false }
  %i.df = extractvalue { i64, i1 } %.fr.i, 1      ; 2 uses
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
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.dh = icmp ne i64 %i.ck, 0
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 275
  %.val.i143.i = load i8, ptr %i.dk, align 1      ; 2 uses
  %.sroa.483.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.584.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dl = sub i8 28, %.val.i143.i
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0, i64 %.sroa.37.0
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
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.466.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.571.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.466.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.571.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dy = load i64, ptr %i.dx, align 8            ; 5 uses
  %i.dz = icmp ult i64 %i.dy, 2305843009213693952
  %i.ea = icmp eq i64 %i.dy, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val.i = load ptr, ptr %i.eb, align 8, !nonnull !5
  %i.ec = shl nuw nsw i64 %i.dy, 2
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !5
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eg = load i64, ptr %i.ef, align 8            ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.not129.i = icmp eq i64 %i.eg, 0
  %i.ej = shl nuw nsw i64 %i.eg, 2
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %.sroa.689.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.ek = icmp ult i64 %i.eg, 2305843009213693952
  %i.el = icmp samesign ult i64 %i.eg, 12
  %i.em = sub nuw nsw i64 12, %i.eg               ; 2 uses
  %i.en = add i64 %i.ba, -1                       ; 2 uses
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.not482 = xor i1 %i.cl, true
  %brmerge = select i1 %.not482, i1 true, i1 %i.cm ; 2 uses
  %brmerge484 = select i1 %brmerge, i1 true, i1 %.not2.i.i
  %.mux.mux = select i1 %i.cl, i64 %i.ck, i64 0
  %.mux483.mux = select i1 %brmerge, i64 %i.ci, i64 1
  %spec.select = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select777 = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select784 = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %brmerge486.not = select i1 %i.cl, i1 %i.dh, i1 false
  %invariant.op = sub i8 20, %.val.i143.i
  %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 2
  %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 3
  %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  br label %.backedge524

.backedge524:                                     ; preds = %.backedge524.backedge, %bb.i
  %.sroa.4.0481 = phi i64 [ 6, %bb.i ], [ %i.eq, %.backedge524.backedge ] ; 13 uses
  %i.eq = add i64 %.sroa.4.0481, -1               ; 5 uses
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish6screenNtB4_10ScreenData11clear_lines(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.thread:                                          ; preds = %.loopexit177.thread780, %.loopexit177.thread, %.loopexit177, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.al, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  ret void

bb.j:                                             ; preds = %.backedge524
  call void @llvm.assume(i1 %i.cg)
  br i1 %i.ch, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.er = urem i64 %i.cf, %.sroa.4.0481
  %.not.i43 = icmp ne i64 %i.er, 0
  %i.es = udiv i64 %i.cf, %.sroa.4.0481
  %..i = zext i1 %.not.i43 to i64
  %i.et = add nuw nsw i64 %i.es, %..i             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.et, ptr %i.ah, align 8
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.l, label %bb.m, !prof !82

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @31, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2943) #37
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ev = urem i64 %i.cf, %i.et
  %.not.i46 = icmp ne i64 %i.ev, 0
  %i.ew = udiv i64 %i.cf, %i.et
  %..i47 = zext i1 %.not.i46 to i64
  %i.ex = add nuw nsw i64 %i.ew, %..i47           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not = icmp ugt i64 %i.ex, %.sroa.4.0481
  br i1 %.not, label %bb.n, label %.thread129, !prof !2826

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2919, i64 noundef 52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2920) #36
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.j
  %.not142 = icmp eq i64 %.sroa.4.0481, 1
  br i1 %.not142, label %.loopexit177.thread780, label %.backedge524.backedge

.thread129:                                       ; preds = %bb.m
  %i.ey = icmp ne i64 %.sroa.4.0481, 1
  %i.ez = icmp ult i64 %i.ex, %.sroa.4.0481
  %or.cond132 = and i1 %i.ey, %i.ez
  br i1 %or.cond132, label %.backedge524.backedge, label %bb.q

.backedge524.backedge:                            ; preds = %.thread129, %bb.o, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  br label %.backedge524

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %.thread129
  store i64 %.sroa.4.0481, ptr %i.aq, align 8
  store i64 %i.et, ptr %i.ap, align 8
  br i1 %brmerge484, label %.loopexit177.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.0.03.i.i = phi i64 [ %i.fa, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %.not6.i.i = icmp ult i64 %.sroa.0.03.i.i, %i.et
  br i1 %.not6.i.i, label %.loopexit177, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.fa = sub nuw i64 %.sroa.0.03.i.i, %i.et      ; 3 uses
  %.not.i.i = icmp ult i64 %i.fa, %i.cf
  br i1 %.not.i.i, label %.loopexit177, label %.lr.ph.i.i

.loopexit177:                                     ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.7.0.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ %i.fa, %bb.r ]
  store i64 1, ptr %i.at, align 8
  store i64 %.sroa.7.0.i, ptr %i.au, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

.loopexit177.thread780:                           ; preds = %bb.o
  store i64 1, ptr %i.aq, align 8
  store i64 0, ptr %i.ap, align 8
  store i64 0, ptr %i.at, align 8
  br i1 %or.cond.i, label %.thread, label %.thread.i

.loopexit177.thread:                              ; preds = %bb.q
  store i64 %.mux483.mux, ptr %i.at, align 8
  store i64 %.mux.mux, ptr %i.au, align 8
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i: ; preds = %.loopexit177, %.loopexit177.thread
  %spec.select778 = phi i64 [ %spec.select777, %.loopexit177.thread ], [ %spec.select, %.loopexit177 ] ; 5 uses
  %i.fb = urem i64 %i.cf, %.sroa.4.0481
  %.not.i.i52 = icmp ne i64 %i.fb, 0
  %i.fc = udiv i64 %i.cf, %.sroa.4.0481
  %..i138.i = zext i1 %.not.i.i52 to i64
  %i.fd = add nuw nsw i64 %i.fc, %..i138.i        ; 5 uses
  %i.fe = icmp ule i64 %i.fd, %spec.select778
  %or.cond4.not.i = select i1 %i.db, i1 true, i1 %i.fe
  br i1 %or.cond4.not.i, label %.thread.i, label %bb.s

.thread.i:                                        ; preds = %.loopexit177.thread780, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %spec.select779 = phi i64 [ %spec.select778, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ], [ %spec.select784, %.loopexit177.thread780 ]
  %.sroa.0.0.i208.i = phi i64 [ %i.fd, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ], [ 0, %.loopexit177.thread780 ]
  store i64 0, ptr %i.aw, align 8, !alias.scope !2830, !noalias !2832
  %.sroa.0.0.i207.fr678.i = freeze i64 %.sroa.0.0.i208.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

bb.s:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %i.ff = sub nuw nsw i64 %i.fd, %spec.select778  ; 3 uses
  store i64 %i.ff, ptr %i.aw, align 8, !alias.scope !2830, !noalias !2832
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.t, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.fh = add nuw nsw i64 %spec.select778, 1
  store i64 0, ptr %i.aw, align 8, !alias.scope !2830, !noalias !2832
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i: ; preds = %bb.t, %bb.s, %.thread.i
  %.sroa.0.0.i207.fr679.i = phi i64 [ %i.fd, %bb.t ], [ %i.fd, %bb.s ], [ %.sroa.0.0.i207.fr678.i, %.thread.i ] ; 38 uses
  %i.fi = phi i64 [ 0, %bb.t ], [ %i.ff, %bb.s ], [ 0, %.thread.i ]
  %.sroa.08.1.i = phi i64 [ %i.fh, %bb.t ], [ %spec.select778, %bb.s ], [ %spec.select779, %.thread.i ] ; 4 uses
  %.not.i58 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0 ; 2 uses
  br i1 %i.dd, label %.outer.split.us.i, label %.outer.split.i.preheader

.outer.split.i.preheader:                         ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i
  br i1 %.not.i58, label %.split.i, label %.lr.ph

.invoke:                                          ; preds = %bb.gl, %bb.gq, %bb.gv, %bb.ha, %bb.hf, %bb.hk, %.split.i, %.split.1.i, %.split.2.i, %.split.3.i, %.split.4.i, %.split.5.i, %bb.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i, %bb.hm, %bb.gp, %bb.gu, %bb.gz, %bb.he, %bb.hj, %bb.gk, %bb.gn, %bb.gs, %bb.gx, %bb.hc, %bb.hh, %bb.ag, %bb.ae
  %i.fj = phi ptr [ @2877, %bb.gu ], [ @3129, %bb.ae ], [ @2877, %bb.hm ], [ @2876, %bb.gs ], [ @2876, %bb.gx ], [ @2877, %bb.gp ], [ @2877, %bb.he ], [ @2877, %bb.hj ], [ @2876, %bb.gk ], [ @2876, %bb.gn ], [ @2877, %bb.gz ], [ @2876, %bb.hc ], [ @2876, %bb.hh ], [ @2856, %bb.ag ], [ @2874, %.split.i ], [ @2875, %bb.gl ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i ], [ @2874, %.split.5.i ], [ @2874, %.split.4.i ], [ @2874, %.split.3.i ], [ @2874, %.split.2.i ], [ @2874, %.split.1.i ], [ @2875, %bb.hk ], [ @2875, %bb.hf ], [ @2875, %bb.ha ], [ @2875, %bb.gv ], [ @2875, %bb.gq ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i ], [ @2860, %bb.u ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i: ; preds = %bb.hk
  %..i199.5.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.acf) ; 2 uses
  %i.fk = add nuw i64 %.sroa.022.0.ph429.5.i.lcssa, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2835
  store i64 %..i199689697703708.i, ptr %i.ag, align 8, !noalias !2835
  store i64 %i.zs, ptr %.sroa.6.0..sroa_idx.i54, align 8, !noalias !2835
  store i64 %..i199.1710.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2835
  store i64 %i.zr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2835
  store i64 %..i199.2.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2835
  store i64 %i.aah, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2835
  store i64 %..i199.3.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !2835
  store i64 %i.aaz, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !2835
  store i64 %..i199.4.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !2835
  store i64 %i.abq, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !2835
  store i64 %..i199.5.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !2835
  store i64 %i.fk, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !2835
  %i.fl = add i64 %..i199689697703708.i, %..i199.1710.i ; 3 uses
  %i.fm = icmp ult i64 %i.fl, %..i199689697703708.i
  br i1 %i.fm, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i
  %i.fn = add i64 %..i199.2.i, %i.fl              ; 3 uses
  %i.fo = icmp ult i64 %i.fn, %i.fl
  br i1 %i.fo, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i
  %i.fp = add i64 %..i199.3.i, %i.fn              ; 3 uses
  %i.fq = icmp ult i64 %i.fp, %i.fn
  br i1 %i.fq, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i
  %i.fr = add i64 %..i199.4.i, %i.fp              ; 3 uses
  %i.fs = icmp ult i64 %i.fr, %i.fp
  br i1 %i.fs, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i
  %i.ft = add i64 %..i199.5.i, %i.fr              ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.fr
  br i1 %i.fu, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i
  %i.fv = icmp slt i64 %i.eq, 0
  br i1 %i.fv, label %.invoke992, label %bb.u

bb.u:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i
  %i.fw = shl nuw i64 %i.eq, 1
  %i.fx = add i64 %i.ft, %i.fw                    ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ft
  br i1 %i.fy, label %.invoke, label %bb.v

.invoke992:                                       ; preds = %.outer.split.us.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i, %.outer.split.us.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i, %bb.af
  %i.fz = phi ptr [ @2856, %bb.af ], [ @2859, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i ], [ @2876, %.outer.split.us.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ @2876, %.outer.split.us.1.i ]
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
  %i.gp = load i64, ptr %i.di, align 8, !noalias !2853, !noundef !5 ; 8 uses
  %i.gq = load i64, ptr %i.dj, align 8, !noalias !2853, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2853
  %i.gr = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2854, !noundef !5 ; 4 uses
  %i.gs = icmp eq i64 %i.gr, -1
  br i1 %i.gs, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gt = add nuw i64 %i.gr, 1
  store i64 %i.gt, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !2851, !noalias !2854
  %i.gu = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gr, i64 %.sroa.0.0.i.i.i138) ; 2 uses
  %i.gv = extractvalue { i64, i1 } %i.gu, 1
  br i1 %i.gv, label %.invoke992, label %bb.ag

._crit_edge.i.i:                                  ; preds = %.noexc72, %.noexc65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2846
  %exitcond.not.i.i = icmp eq i64 %i.gj, %.sroa.028.0218223.i
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i, label %.lr.ph303.i.i

bb.ag:                                            ; preds = %bb.af
  %i.gw = extractvalue { i64, i1 } %i.gu, 0       ; 2 uses
  %i.gx = add i64 %i.gw, %.sroa.08.0302.i.i       ; 20 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  br i1 %i.gy, label %.invoke, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not16.i.i = icmp ugt i64 %i.cf, %i.gx
  br i1 %.not16.i.i, label %bb.ai, label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.gz = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.gx ; 9 uses
  %i.ha = icmp eq i64 %i.gx, %.sroa.7.0.i.i.i
  %.sroa.05.0.i.i = select i1 %.sroa.0.0.i18.i.i, i1 %i.ha, i1 false ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 96
  %i.hc = load i16, ptr %i.hb, align 8, !alias.scope !2855, !noalias !2856, !noundef !5
  %i.hd = and i16 %i.hc, 1024
  %.not17.not.i.i = icmp eq i16 %i.hd, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2846
  call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2860
  store i64 0, ptr %i.j, align 8, !noalias !2860
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.483.0..sroa_idx.i.i.i, align 8, !noalias !2860
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.584.0..sroa_idx.i.i.i, i8 0, i64 17, i1 false), !noalias !2860
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !2863, !noalias !2864, !noundef !5 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !2863, !noalias !2864, !noundef !5 ; 6 uses
  %i.hi = icmp eq i64 %i.hh, 0
  %..i19.i.i = select i1 %i.hi, i64 0, i64 4
  %i.hj = add i64 %..i19.i.i, %i.hh               ; 4 uses
  %i.hk = icmp ult i64 %i.hj, %i.hh
  br i1 %i.hk, label %.invoke.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hl = add i64 %i.hj, %i.hf                    ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %i.hf
  br i1 %i.hm, label %.invoke.i.i.i, label %bb.am

.invoke.i.i.i:                                    ; preds = %bb.ax, %bb.ap, %bb.aj, %bb.ai
  %i.hn = phi ptr [ @2884, %bb.ax ], [ @2881, %bb.ap ], [ @2878, %bb.aj ], [ @2877, %bb.ai ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hn) #36
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2865

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

.loopexit.i.i.i:                                  ; preds = %bb.bz
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.cg
  %lpad.loopexit52.i.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.us.i.i.i.i
  %lpad.loopexit56.i.i.i.a = landingpad { ptr, i32 }
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

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke290.i.invoke.i.i, %.split78.us.i.i.invoke.i.i, %.split.i.i.invoke.i.i.i, %.invoke288.i.i.i, %.invoke286.i.i.i, %.invoke.i.i.i
  %lpad.loopexit.split-lp184.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit52.i.i.i.a, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit56.i.i.i.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit60.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp180.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i.i ], [ %lpad.loopexit166.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit179.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit152.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i ], [ %lpad.loopexit155.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit158.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit170.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit173.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit177.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit183.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp184.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i unwind label %bb.ak, !noalias !2865

bb.ak:                                            ; preds = %.loopexit.split-lp.i.i.i
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.body.i.i unwind label %bb.al, !noalias !2865

bb.al:                                            ; preds = %bb.ak
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2865
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i: ; preds = %.loopexit.split-lp.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.body unwind label %bb.ck, !noalias !2866

bb.am:                                            ; preds = %bb.aj
  %.not.i20.i.i = icmp ugt i64 %i.hl, %i.gp
  br i1 %.not.i20.i.i, label %bb.an, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.hq = call i64 @llvm.usub.sat.i64(i64 %i.gp, i64 4) ; 2 uses
  %i.hr = udiv i64 %i.hq, 3
  %i.hs = shl nuw i64 %i.hr, 1
  %i.ht = urem i64 %i.hq, 3
  %.cmp.i.i.i = icmp samesign ugt i64 %i.ht, 1
  %i.hu = zext i1 %.cmp.i.i.i to i64
  %i.hv = or disjoint i64 %i.hs, %i.hu
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.hv, i64 %i.hf) ; 2 uses
  %i.hw = icmp ugt i64 %i.gp, %i.hj
  %i.hx = sub nuw i64 %i.gp, %i.hj
  %..i133.i.i.i = call i64 @llvm.umax.i64(i64 %i.hx, i64 %..i.i.i.i)
  %.sroa.04.0.i.i.i = select i1 %i.hw, i64 %..i133.i.i.i, i64 %..i.i.i.i ; 2 uses
  %.not114.i.i.i = icmp ugt i64 %.sroa.04.0.i.i.i, %i.gp
  br i1 %.not114.i.i.i, label %.invoke286.i.i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i, !prof !82

.invoke286.i.i.i:                                 ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i, %bb.an
  %i.hy = phi ptr [ @2879, %bb.an ], [ @2885, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  %i.hz = phi i64 [ 41, %bb.an ], [ 37, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  %i.ia = phi ptr [ @2880, %bb.an ], [ @2886, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hy, i64 noundef %i.hz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ia) #36
          to label %.cont287.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2865

.cont287.i.i.i:                                   ; preds = %.invoke286.i.i.i
  unreachable

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.04.1.i.i.i = phi i64 [ %.sroa.04.0.i.i.i, %bb.an ], [ %i.hf, %bb.am ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %.spec.select.i137.i.i.i = select i1 %.sroa.05.0.i.i, i8 28, i8 %spec.select.i137.i.i.i
  %.spec.select.i.i.i.i = select i1 %.sroa.05.0.i.i, i8 26, i8 %spec.select.i.i.i.i ; 7 uses
  %.spec.select.i134.i.reass.i.i = select i1 %.sroa.05.0.i.i, i8 %i.dl, i8 %spec.select.i134.i.reass.reass.i.reass.i.reass.reass
  %.spec.select.i140.i.i.i = select i1 %.sroa.05.0.i.i, i8 29, i8 %spec.select.i140.i.i.i
  store i8 %.spec.select.i137.i.i.i, ptr %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !noalias !2860
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1, !noalias !2860
  store i8 0, ptr %.sroa.0.i.i.i, align 4, !noalias !2860
  store i8 0, ptr %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !noalias !2860
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !2863, !noalias !2864, !nonnull !5, !noundef !5 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !alias.scope !2863, !noalias !2864, !noundef !5 ; 4 uses
  %.idx = mul nuw nsw i64 %i.ie, 24
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.idx
  %i.ig = icmp ult i64 %i.ie, 384307168202282326
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gz, i64 120
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gz, i64 112
  %i.ij = load i64, ptr %i.ih, align 8, !alias.scope !2863, !noalias !2864 ; 6 uses
  %i.ik = icmp ult i64 %i.ij, 2305843009213693952 ; 3 uses
  %i.il = icmp eq i64 %i.ij, 0
  %brmerge45.i.i.i = or i1 %.sroa.05.0.i.i, %i.il ; 3 uses
  %i.im = load ptr, ptr %i.ii, align 8, !alias.scope !2863, !noalias !2864 ; 4 uses
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %i.ij
  %i.io = getelementptr i8, ptr %i.in, i64 -4     ; 3 uses
  %.sroa.6130.0.insert.ext.i.i = zext nneg i8 %.spec.select.i.i.i.i to i32
  %.sroa.6130.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.6130.0.insert.ext.i.i, 24 ; 8 uses
  %i.ip = icmp eq i64 %i.ie, 0
  br i1 %i.ip, label %._crit_edge, label %.lr.ph1293

bb.ao:                                            ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i
  %i.iq = icmp eq ptr %i.ir, %i.if
  br i1 %i.iq, label %._crit_edge, label %.lr.ph1293

.lr.ph1293:                                       ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i, %bb.ao
  %.sroa.043.0.i.i.i1292 = phi i64 [ %.sroa.013.2.i.i.i.i, %bb.ao ], [ %.sroa.04.1.i.i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i1291 = phi ptr [ %i.ir, %bb.ao ], [ %i.ic, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 4 uses
  %.sroa.72.0.i.i.i1290 = phi i64 [ %i.is, %bb.ao ], [ 0, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1291, i64 24 ; 2 uses
  %i.is = add nuw nsw i64 %.sroa.72.0.i.i.i1290, 1 ; 2 uses
  %.not119.i.i.i = icmp eq i64 %.sroa.72.0.i.i.i1290, 0
  br i1 %.not119.i.i.i, label %bb.bn, label %.outer.us.i.i.i

._crit_edge:                                      ; preds = %bb.ao, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i
  %.sroa.043.0.i.i.i.lcssa = phi i64 [ %.sroa.04.1.i.i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ], [ %.sroa.013.2.i.i.i.i, %bb.ao ]
  %i.it = icmp ult i64 %i.gp, %.sroa.04.1.i.i.i
  br i1 %i.it, label %.invoke288.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.iu = sub nuw i64 %i.gp, %.sroa.04.1.i.i.i    ; 2 uses
  %i.iv = add i64 %.sroa.043.0.i.i.i.lcssa, %i.iu ; 9 uses
  %i.iw = icmp ult i64 %i.iv, %i.iu
  br i1 %i.iw, label %.invoke.i.i.i, label %bb.aq

.invoke288.i.i.i:                                 ; preds = %bb.bi, %bb.bg, %bb.be, %bb.bd, %bb.aw, %._crit_edge, %bb.bv
  %i.ix = phi ptr [ @2893, %bb.bv ], [ @2889, %bb.be ], [ @2888, %bb.bd ], [ @2892, %bb.bi ], [ @2883, %bb.aw ], [ @2881, %._crit_edge ], [ @2890, %bb.bg ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ix) #36
          to label %.cont289.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2865

.cont289.i.i.i:                                   ; preds = %.invoke288.i.i.i
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.iy = icmp ne i64 %i.hh, 0
  %i.iz = icmp ugt i64 %i.iv, 4
  %or.cond.i.i.i = and i1 %i.iy, %i.iz
  br i1 %or.cond.i.i.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not116.i.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not116.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i: ; preds = %bb.ar, %.outer.i85.i.i
  %.sroa.0.0.ph.i90287.i.i = phi i64 [ %i.jp, %.outer.i85.i.i ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.013.0.ph.i89286.i.i = phi i64 [ %i.jq, %.outer.i85.i.i ], [ %i.iv, %bb.ar ] ; 6 uses
  %.sroa.036.0.ph.i87285.i.i = phi i64 [ %spec.select49.lcssa.i108.i.i, %.outer.i85.i.i ], [ %i.iv, %bb.ar ]
  %.sroa.7.0.ph.i86284.i.i = phi i32 [ %spec.select.lcssa.i107.i.i, %.outer.i85.i.i ], [ 32, %bb.ar ] ; 3 uses
  %i.ja = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.ph.i86284.i.i)
          to label %.noexc116.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2866 ; 2 uses

.noexc116.i.i:                                    ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i
  %i.jb = add i64 %.sroa.036.0.ph.i87285.i.i, -1  ; 2 uses
  %spec.select49.peel.i96.i.i = call i64 @llvm.umax.i64(i64 %i.jb, i64 1) ; 2 uses
  %.not8.i.peel.i94.i.i = icmp ne i64 %i.jb, 0    ; 2 uses
  %spec.select.peel.i95.i.i = select i1 %.not8.i.peel.i94.i.i, i32 %.sroa.7.0.ph.i86284.i.i, i32 -1 ; 2 uses
  %i.jc = extractvalue { i64, i64 } %i.ja, 0
  %i.jd = trunc nuw i64 %i.jc to i1
  br i1 %i.jd, label %.loopexit.i105.i.i, label %.peel.next.i97.i.i

.peel.next.i97.i.i:                               ; preds = %.noexc116.i.i, %.noexc117.i.i
  %.sroa.7.0.i98.i.i = phi i32 [ %spec.select.i103.i.i, %.noexc117.i.i ], [ %spec.select.peel.i95.i.i, %.noexc116.i.i ] ; 4 uses
  %.sroa.036.0.i99.i.i = phi i64 [ %spec.select49.i104.i.i, %.noexc117.i.i ], [ %spec.select49.peel.i96.i.i, %.noexc116.i.i ]
  %.not.i.i100.i.i = icmp eq i32 %.sroa.7.0.i98.i.i, -1
  br i1 %.not.i.i100.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i101.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i101.i.i: ; preds = %.peel.next.i97.i.i
  %i.je = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.i98.i.i)
          to label %.noexc117.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2866 ; 2 uses

.noexc117.i.i:                                    ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i101.i.i
  %i.jf = add i64 %.sroa.036.0.i99.i.i, -1        ; 2 uses
  %spec.select49.i104.i.i = call i64 @llvm.umax.i64(i64 %i.jf, i64 1) ; 2 uses
  %.not8.i.i102.i.i = icmp ne i64 %i.jf, 0        ; 2 uses
  %spec.select.i103.i.i = select i1 %.not8.i.i102.i.i, i32 %.sroa.7.0.i98.i.i, i32 -1 ; 2 uses
  %i.jg = extractvalue { i64, i64 } %i.je, 0
  %i.jh = trunc nuw i64 %i.jg to i1
  br i1 %i.jh, label %.loopexit.i105.i.i, label %.peel.next.i97.i.i, !llvm.loop !2867

.loopexit.i105.i.i:                               ; preds = %.noexc117.i.i, %.noexc116.i.i
  %.not8.i.lcssa.i106.i.i = phi i1 [ %.not8.i.peel.i94.i.i, %.noexc116.i.i ], [ %.not8.i.i102.i.i, %.noexc117.i.i ]
  %spec.select.lcssa.i107.i.i = phi i32 [ %spec.select.peel.i95.i.i, %.noexc116.i.i ], [ %spec.select.i103.i.i, %.noexc117.i.i ] ; 2 uses
  %spec.select49.lcssa.i108.i.i = phi i64 [ %spec.select49.peel.i96.i.i, %.noexc116.i.i ], [ %spec.select49.i104.i.i, %.noexc117.i.i ]
  %.lcssa.i109.i.i = phi { i64, i64 } [ %i.ja, %.noexc116.i.i ], [ %i.je, %.noexc117.i.i ]
  %.sroa.7.0.lcssa59.i110.i.i = phi i32 [ %.sroa.7.0.ph.i86284.i.i, %.noexc116.i.i ], [ %.sroa.7.0.i98.i.i, %.noexc117.i.i ]
  %i.ji = extractvalue { i64, i64 } %.lcssa.i109.i.i, 1 ; 3 uses
  %i.jj = icmp ugt i64 %i.ji, %.sroa.013.0.ph.i89286.i.i
  br i1 %i.jj, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, label %bb.as

bb.as:                                            ; preds = %.loopexit.i105.i.i
  %i.jk = icmp eq i64 %i.ji, %.sroa.013.0.ph.i89286.i.i ; 2 uses
  %brmerge.not.i111.i.i = select i1 %i.jk, i1 %.not8.i.lcssa.i106.i.i, i1 false
  br i1 %brmerge.not.i111.i.i, label %bb.at, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i113.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i113.i.i: ; preds = %bb.as
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.sroa.7.0.lcssa59.i110.i.i, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc118.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2866

.noexc118.i.i:                                    ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i113.i.i
  %i.jl = icmp eq i64 %.sroa.0.0.ph.i90287.i.i, -1
  br i1 %i.jl, label %.split78.us.i.i.invoke.i.i, label %.outer.i85.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc119.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2866

.noexc119.i.i:                                    ; preds = %bb.at
  %i.jm = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc120.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2866 ; 2 uses

.noexc120.i.i:                                    ; preds = %.noexc119.i.i
  %i.jn = extractvalue { i64, i64 } %i.jm, 0
  %i.jo = trunc nuw i64 %i.jn to i1
  br i1 %i.jo, label %bb.au, label %.invoke290.i.invoke.i.i, !prof !98

.outer.i85.i.i:                                   ; preds = %.noexc118.i.i
  %i.jp = add nuw i64 %.sroa.0.0.ph.i90287.i.i, 1
  %i.jq = sub nuw i64 %.sroa.013.0.ph.i89286.i.i, %i.ji ; 2 uses
  %.not.i.peel.i91552.i.i = icmp eq i32 %spec.select.lcssa.i107.i.i, -1
  %or.cond.peel.i92.i.i = select i1 %i.jk, i1 true, i1 %.not.i.peel.i91552.i.i
  br i1 %or.cond.peel.i92.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i

bb.au:                                            ; preds = %.noexc120.i.i
  %i.jr = extractvalue { i64, i64 } %i.jm, 1
  %i.js = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i89286.i.i, i64 %i.jr)
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i: ; preds = %.outer.i85.i.i, %.loopexit.i105.i.i, %.peel.next.i97.i.i, %bb.au
  %.sroa.013.2.i115.i.i = phi i64 [ %i.js, %bb.au ], [ %.sroa.013.0.ph.i89286.i.i, %.peel.next.i97.i.i ], [ %.sroa.013.0.ph.i89286.i.i, %.loopexit.i105.i.i ], [ %i.jq, %.outer.i85.i.i ]
  %i.jt = icmp ult i64 %i.iv, %.sroa.013.2.i115.i.i
  br i1 %i.jt, label %.invoke290.i.invoke.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, !prof !2868

bb.av:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2860
  store i8 0, ptr %i.h, align 1, !noalias !2860
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 1, !noalias !2860
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i, align 1, !noalias !2860
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !noalias !2860
  %i.ju = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNCINvB2_9print_maxBJ_E0EB4_(i64 range(i64 0, 64051194700380387) %i.gx, ptr noundef nonnull @2882, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @2882, i64 2), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.h, i64 noundef %i.iv, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 2 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2860
  %i.jv = sub i64 %i.iv, %i.ju                    ; 5 uses
  %i.jw = icmp ult i64 %i.iv, %i.ju
  br i1 %i.jw, label %.invoke288.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jx = icmp ugt i64 %i.hh, -3
  br i1 %i.jx, label %.invoke.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jy = add nuw i64 %i.hh, 2
  %i.jz = call i64 @llvm.usub.sat.i64(i64 %i.gp, i64 %i.gq)
  %..i144.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.jy, i64 %i.jz) ; 2 uses
  %.not117.i.not.i.i = icmp ugt i64 %i.jv, %..i144.i.i.i
  br i1 %.not117.i.not.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i: ; preds = %bb.ay
  %i.ka = sub nuw i64 %i.jv, %..i144.i.i.i
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i: ; preds = %.outer.i44.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i
  %.sroa.0.0.ph.i49293.i.i = phi i64 [ %i.kq, %.outer.i44.i.i ], [ 0, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ] ; 2 uses
  %.sroa.013.0.ph.i48292.i.i = phi i64 [ %i.kr, %.outer.i44.i.i ], [ %i.jv, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ] ; 6 uses
  %.sroa.036.0.ph.i46291.i.i = phi i64 [ %spec.select49.lcssa.i67.i.i, %.outer.i44.i.i ], [ %i.ka, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ]
  %.sroa.7.0.ph.i45290.i.i = phi i32 [ %spec.select.lcssa.i66.i.i, %.outer.i44.i.i ], [ 32, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ] ; 3 uses
  %i.kb = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.ph.i45290.i.i)
          to label %.noexc75.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2866 ; 2 uses

.noexc75.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i
  %i.kc = add i64 %.sroa.036.0.ph.i46291.i.i, -1  ; 2 uses
  %spec.select49.peel.i55.i.i = call i64 @llvm.umax.i64(i64 %i.kc, i64 1) ; 2 uses
  %.not8.i.peel.i53.i.i = icmp ne i64 %i.kc, 0    ; 2 uses
  %spec.select.peel.i54.i.i = select i1 %.not8.i.peel.i53.i.i, i32 %.sroa.7.0.ph.i45290.i.i, i32 -1 ; 2 uses
  %i.kd = extractvalue { i64, i64 } %i.kb, 0
  %i.ke = trunc nuw i64 %i.kd to i1
  br i1 %i.ke, label %.loopexit.i64.i.i, label %.peel.next.i56.i.i

end_hunk_1
begin_hunk_2_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
          to label %.noexc38.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2866

.noexc38.i.i:                                     ; preds = %bb.bl
  %i.ly = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc39.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2866 ; 2 uses

.noexc39.i.i:                                     ; preds = %.noexc38.i.i
  %i.lz = extractvalue { i64, i64 } %i.ly, 0
  %i.ma = trunc nuw i64 %i.lz to i1
  br i1 %i.ma, label %bb.bm, label %.invoke290.i.invoke.i.i, !prof !98

.outer.i.i.i:                                     ; preds = %.noexc37.i.i
  %i.mb = add nuw i64 %.sroa.0.0.ph.i299.i.i, 1
  %i.mc = sub nuw i64 %.sroa.013.0.ph.i298.i.i, %i.lu ; 2 uses
  %.not.i.peel.i554.i.i = icmp eq i32 %spec.select.lcssa.i.i.i, -1
  %or.cond.peel.i.i.i = select i1 %i.lw, i1 true, i1 %.not.i.peel.i554.i.i
  br i1 %or.cond.peel.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i

bb.bm:                                            ; preds = %.noexc39.i.i
  %i.md = extractvalue { i64, i64 } %i.ly, 1
  %i.me = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i298.i.i, i64 %i.md)
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i: ; preds = %.outer.i.i.i, %.loopexit.i33.i.i, %.peel.next.i.i.i, %bb.bm
  %.sroa.013.2.i34.i.i = phi i64 [ %i.me, %bb.bm ], [ %.sroa.013.0.ph.i298.i.i, %.peel.next.i.i.i ], [ %.sroa.013.0.ph.i298.i.i, %.loopexit.i33.i.i ], [ %i.mc, %.outer.i.i.i ]
  %i.mf = icmp ult i64 %i.ll, %.sroa.013.2.i34.i.i
  br i1 %i.mf, label %.invoke290.i.invoke.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, !prof !2869

bb.bn:                                            ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, %.lr.ph1293
  %.sroa.043.1.i.i.i = phi i64 [ %.sroa.043.0.i.i.i1292, %.lr.ph1293 ], [ %.sroa.013.2.i.i.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i ] ; 4 uses
  br i1 %.not17.not.i.i, label %bb.bu, label %bb.bx

.outer.us.i.i.i:                                  ; preds = %.lr.ph1293, %bb.br
  %.sroa.035.0.ph.us.i.idx.i.i = phi i64 [ %.sroa.035.0.us.i.add.i.i, %bb.br ], [ 0, %.lr.ph1293 ]
  %.sroa.013.0.ph.us.i.i.i = phi i64 [ %i.mo, %bb.br ], [ %.sroa.043.0.i.i.i1292, %.lr.ph1293 ] ; 6 uses
  %.sroa.0.0.ph.us.i.i.i = phi i64 [ %i.mn, %bb.br ], [ 0, %.lr.ph1293 ] ; 2 uses
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bs
  %i.mg = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 32)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i.i, !noalias !2866 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bo
  %.sroa.035.0.us.i.add.i.i = add nuw nsw i64 %.sroa.035.0.us.i.idx.i.i, 4 ; 2 uses
  %i.mh = extractvalue { i64, i64 } %i.mg, 0
  %i.mi = trunc nuw i64 %i.mh to i1
  br i1 %i.mi, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.noexc.i.i
  %i.mj = extractvalue { i64, i64 } %i.mg, 1      ; 3 uses
  %i.mk = icmp ugt i64 %i.mj, %.sroa.013.0.ph.us.i.i.i
  br i1 %i.mk, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ml = icmp eq i64 %i.mj, %.sroa.013.0.ph.us.i.i.i
  br i1 %i.ml, label %.loopexit.i22.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i: ; preds = %bb.bq
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 32, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc23.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i, !noalias !2866

.noexc23.i.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i
  %i.mm = icmp eq i64 %.sroa.0.0.ph.us.i.i.i, -1
  br i1 %i.mm, label %.split66.us.i.i.i, label %bb.br

bb.br:                                            ; preds = %.noexc23.i.i
  %i.mn = add nuw i64 %.sroa.0.0.ph.us.i.i.i, 1
  %i.mo = sub nuw i64 %.sroa.013.0.ph.us.i.i.i, %i.mj
  br label %.outer.us.i.i.i

bb.bs:                                            ; preds = %.noexc.i.i, %.outer.us.i.i.i
  %.sroa.035.0.us.i.idx.i.i = phi i64 [ %.sroa.035.0.us.i.add.i.i, %.noexc.i.i ], [ %.sroa.035.0.ph.us.i.idx.i.i, %.outer.us.i.i.i ] ; 2 uses
  %i.mp = icmp eq i64 %.sroa.035.0.us.i.idx.i.i, 8
  br i1 %i.mp, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, label %bb.bo

.loopexit.i22.i.i:                                ; preds = %bb.bq
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2866

.noexc25.i.i:                                     ; preds = %.loopexit.i22.i.i
  %i.mq = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc26.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2866 ; 2 uses

.noexc26.i.i:                                     ; preds = %.noexc25.i.i
  %i.mr = extractvalue { i64, i64 } %i.mq, 0
  %i.ms = trunc nuw i64 %i.mr to i1
  br i1 %i.ms, label %bb.bt, label %.invoke.i.i, !prof !98

.split66.us.i.i.i:                                ; preds = %.noexc23.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
          to label %.noexc27.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2866

.noexc27.i.i:                                     ; preds = %.split66.us.i.i.i
  unreachable

bb.bt:                                            ; preds = %.noexc26.i.i
  %i.mt = extractvalue { i64, i64 } %i.mq, 1
  %i.mu = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.us.i.i.i, i64 %i.mt)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i

.invoke.i.i:                                      ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, %.noexc26.i.i
  %i.mv = phi ptr [ @16, %.noexc26.i.i ], [ @17, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mv) #37
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2866

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i: ; preds = %bb.bp, %bb.bs, %bb.bt
  %.sroa.013.2.i.i.i = phi i64 [ %i.mu, %bb.bt ], [ %.sroa.013.0.ph.us.i.i.i, %bb.bs ], [ %.sroa.013.0.ph.us.i.i.i, %bb.bp ] ; 2 uses
  %i.mw = icmp ult i64 %.sroa.043.0.i.i.i1292, %.sroa.013.2.i.i.i
  br i1 %i.mw, label %.invoke.i.i, label %bb.bn, !prof !82

bb.bu:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2860
  store i8 0, ptr %i.i, align 1, !noalias !2860
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !2860
  store i8 %.spec.select.i134.i.reass.i.i, ptr %.sroa.5.0..sroa_idx.i21.i.i, align 1, !noalias !2860
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 1, !noalias !2860
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1291, i64 16
  %i.my = load i64, ptr %i.mx, align 8, !noalias !2865, !noundef !5 ; 2 uses
  %i.mz = icmp ult i64 %i.my, 2305843009213693952
  call void @llvm.assume(i1 %i.mz)
  %i.na = icmp ne i64 %i.my, 0
  %i.nb = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx, ptr noundef nonnull readonly align 4 %.sroa.06.0, ptr noundef nonnull readonly %i.dm, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.i, i64 noundef %.sroa.043.1.i.i.i, i1 noundef zeroext %i.na, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2870 ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2860
  %i.nc = icmp ult i64 %.sroa.043.1.i.i.i, %i.nb
  br i1 %i.nc, label %.invoke288.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nd = sub nuw i64 %.sroa.043.1.i.i.i, %i.nb
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bn
  %.sroa.043.2.i.i.i = phi i64 [ %i.nd, %bb.bw ], [ %.sroa.043.1.i.i.i, %bb.bn ] ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1291, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !2865, !nonnull !5, !noundef !5 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1291, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !2865, !noundef !5 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.nh, 2
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 %.idx.i.i.i ; 4 uses
  call void @llvm.assume(i1 %i.ig)
  %i.nj = icmp samesign ult i64 %i.is, %i.ie
  br i1 %i.nj, label %.outer.us.i.i.i.i, label %.outer.i.preheader.i.i.i

.outer.i.preheader.i.i.i:                         ; preds = %bb.bx
  %i.nk = icmp eq i64 %i.nh, 0
  br i1 %i.nk, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %.lr.ph.i.i.i

.outer.us.i.i.i.i:                                ; preds = %bb.bx, %bb.cc
  %.sroa.0.045.ph.us.i.i.i.i = phi ptr [ %i.nr, %bb.cc ], [ %i.nf, %bb.bx ]
  %.sroa.013.0.ph.us.i.i.i.i = phi i64 [ %i.ob, %bb.cc ], [ %.sroa.043.2.i.i.i, %bb.bx ] ; 6 uses
  %.sroa.0.0.ph.us.i.i.i.i = phi i64 [ %i.oa, %bb.cc ], [ 0, %bb.bx ] ; 5 uses
  br label %bb.cd

bb.by:                                            ; preds = %bb.cd
  %i.nl = load i32, ptr %.sroa.0.045.us.i.i.i.i, align 4, !noalias !2871, !noundef !5 ; 5 uses
  %i.nm = xor i32 %i.nl, 55296
  %i.nn = add i32 %i.nm, -1114112
  %i.no = icmp ult i32 %i.nn, -1112064
  br i1 %i.no, label %.split.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.np = icmp ult i32 %i.nl, 1114112
  call void @llvm.assume(i1 %i.np)
  %i.nq = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %i.nl)
          to label %.noexc145.i.i.i unwind label %.loopexit.i.i.i, !noalias !2865 ; 2 uses

.noexc145.i.i.i:                                  ; preds = %bb.bz
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0.045.us.i.i.i.i, i64 4 ; 2 uses
  %i.ns = extractvalue { i64, i64 } %i.nq, 0
  %i.nt = trunc nuw i64 %i.ns to i1
  br i1 %i.nt, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %.noexc145.i.i.i
  %i.nu = extractvalue { i64, i64 } %i.nq, 1      ; 3 uses
  %i.nv = icmp ugt i64 %i.nu, %.sroa.013.0.ph.us.i.i.i.i
  br i1 %i.nv, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nw = icmp eq i64 %i.nu, %.sroa.013.0.ph.us.i.i.i.i
  br i1 %i.nw, label %.loopexit.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i.i: ; preds = %bb.cb
  call void @llvm.assume(i1 %i.ik)
  br i1 %brmerge45.i.i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.us.i.i.i.i, label %._crit_edge.i.us.i.i.i.i

._crit_edge.i.us.i.i.i.i:                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i.i
  %i.nx = icmp ult i64 %.sroa.0.0.ph.us.i.i.i.i, %i.ij
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.sroa.0.0.ph.us.i.i.i.i
  %.sroa.03.0.i.us.i.i.i.i = select i1 %i.nx, ptr %i.ny, ptr null ; 2 uses
  %.not9.i.us.i.i.i.i = icmp eq ptr %.sroa.03.0.i.us.i.i.i.i, null
  %spec.select.i.us.i.i.i.i = select i1 %.not9.i.us.i.i.i.i, ptr %i.io, ptr %.sroa.03.0.i.us.i.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i.us.i.i.i.i) ]
  br label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.us.i.i.i.i

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.us.i.i.i.i: ; preds = %._crit_edge.i.us.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i.i
  %.sroa.0.0.in.i.us.i.i.i.i = phi ptr [ %.sroa.0.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i.i ], [ %spec.select.i.us.i.i.i.i, %._crit_edge.i.us.i.i.i.i ]
  %.sroa.0.0.i33.us.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.us.i.i.i.i, align 1, !noalias !2877
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %i.nl, i32 noundef %.sroa.0.0.i33.us.i.i.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc146.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2865

.noexc146.i.i.i:                                  ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.us.i.i.i.i
  %i.nz = icmp eq i64 %.sroa.0.0.ph.us.i.i.i.i, -1
  br i1 %i.nz, label %.split78.us.i.i.invoke.i.i, label %bb.cc

bb.cc:                                            ; preds = %.noexc146.i.i.i
  %i.oa = add nuw i64 %.sroa.0.0.ph.us.i.i.i.i, 1
  %i.ob = sub nuw i64 %.sroa.013.0.ph.us.i.i.i.i, %i.nu
  br label %.outer.us.i.i.i.i

bb.cd:                                            ; preds = %.noexc145.i.i.i, %.outer.us.i.i.i.i
  %.sroa.0.045.us.i.i.i.i = phi ptr [ %i.nr, %.noexc145.i.i.i ], [ %.sroa.0.045.ph.us.i.i.i.i, %.outer.us.i.i.i.i ] ; 3 uses
  %i.oc = icmp eq ptr %.sroa.0.045.us.i.i.i.i, %i.ni
  br i1 %i.oc, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %bb.by

.lr.ph.i.i.i:                                     ; preds = %.outer.i.preheader.i.i.i, %.outer.i.i.i.i
  %.sroa.0.0.ph.i129.i.i.i = phi i64 [ %i.po, %.outer.i.i.i.i ], [ 0, %.outer.i.preheader.i.i.i ] ; 5 uses
  %.sroa.013.0.ph.i128.i.i.i = phi i64 [ %i.pp, %.outer.i.i.i.i ], [ %.sroa.043.2.i.i.i, %.outer.i.preheader.i.i.i ] ; 6 uses
  %.sroa.0.045.ph.i127.i.i.i = phi ptr [ %.lcssa107.i.i.i.i, %.outer.i.i.i.i ], [ %i.nf, %.outer.i.preheader.i.i.i ] ; 2 uses
  %i.od = load i32, ptr %.sroa.0.045.ph.i127.i.i.i, align 4, !noalias !2871, !noundef !5 ; 5 uses
  %i.oe = xor i32 %i.od, 55296
  %i.of = add i32 %i.oe, -1114112
  %i.og = icmp ult i32 %i.of, -1112064
  br i1 %i.og, label %.split.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i.i
  %i.oh = icmp ult i32 %i.od, 1114112
  call void @llvm.assume(i1 %i.oh)
  %i.oi = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %i.od)
          to label %.noexc147.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2865 ; 2 uses

.noexc147.i.i.i:                                  ; preds = %bb.ce
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0.045.ph.i127.i.i.i, i64 4 ; 2 uses
  %i.ok = extractvalue { i64, i64 } %i.oi, 0
  %i.ol = trunc nuw i64 %i.ok to i1
  br i1 %i.ol, label %.loopexit119.i.i.i.i, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %.noexc147.i.i.i, %.noexc149.i.i.i
  %.sroa.0.045.i.i.i.i = phi ptr [ %i.ou, %.noexc149.i.i.i ], [ %i.oj, %.noexc147.i.i.i ] ; 3 uses
  %i.om = icmp eq ptr %.sroa.0.045.i.i.i.i, %i.ni
  br i1 %i.om, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.peel.next.i.i.i.i
  %i.on = load i32, ptr %.sroa.0.045.i.i.i.i, align 4, !noalias !2871, !noundef !5 ; 5 uses
  %i.oo = xor i32 %i.on, 55296
  %i.op = add i32 %i.oo, -1114112
  %i.oq = icmp ult i32 %i.op, -1112064
  br i1 %i.oq, label %.split.i.i.i.i.i, label %bb.cg

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %bb.cf, %bb.by
  %.us-phi.i.i.i.i = phi i32 [ %i.nl, %bb.by ], [ %i.on, %bb.cf ], [ %i.od, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2880
  store i32 %.us-phi.i.i.i.i, ptr %i.d, align 4, !noalias !2880
  br label %.split.i.i.invoke.i.i.i

.split.i.i.invoke.i.i.i:                          ; preds = %.split.i.i.i.i.i.i.i, %.split.i.i.i.i.i
  %i.or = phi ptr [ %i.d, %.split.i.i.i.i.i ], [ %i.c, %.split.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.or, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3115) #37
          to label %.split.i.i.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2865

.split.i.i.cont.i.i.i:                            ; preds = %.split.i.i.invoke.i.i.i
  unreachable

bb.cg:                                            ; preds = %bb.cf
  %i.os = icmp ult i32 %i.on, 1114112
  call void @llvm.assume(i1 %i.os)
  %i.ot = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %i.on)
          to label %.noexc149.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !2865 ; 2 uses

.noexc149.i.i.i:                                  ; preds = %bb.cg
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.045.i.i.i.i, i64 4 ; 2 uses
  %i.ov = extractvalue { i64, i64 } %i.ot, 0
  %i.ow = trunc nuw i64 %i.ov to i1
  br i1 %i.ow, label %.loopexit119.i.i.i.i, label %.peel.next.i.i.i.i, !llvm.loop !2881

.loopexit119.i.i.i.i:                             ; preds = %.noexc149.i.i.i, %.noexc147.i.i.i
  %.lcssa107.i.i.i.i = phi ptr [ %i.oj, %.noexc147.i.i.i ], [ %i.ou, %.noexc149.i.i.i ] ; 4 uses
  %.lcssa106.i.i.i.i = phi { i64, i64 } [ %i.oi, %.noexc147.i.i.i ], [ %i.ot, %.noexc149.i.i.i ]
  %.lcssa105.i.i.i.i = phi i32 [ %i.od, %.noexc147.i.i.i ], [ %i.on, %.noexc149.i.i.i ]
  %i.ox = extractvalue { i64, i64 } %.lcssa106.i.i.i.i, 1 ; 3 uses
  %i.oy = icmp ugt i64 %i.ox, %.sroa.013.0.ph.i128.i.i.i
  br i1 %i.oy, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.loopexit119.i.i.i.i
  %i.oz = icmp eq i64 %i.ox, %.sroa.013.0.ph.i128.i.i.i ; 2 uses
  %i.pa = icmp ne ptr %.lcssa107.i.i.i.i, %i.ni
  %or.cond293.not.i.i.i = select i1 %i.oz, i1 %i.pa, i1 false
  br i1 %or.cond293.not.i.i.i, label %bb.ci, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.i.i.i.i: ; preds = %bb.ch
  call void @llvm.assume(i1 %i.ik)
  br i1 %brmerge45.i.i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.i.i.i.i
  %i.pb = icmp ult i64 %.sroa.0.0.ph.i129.i.i.i, %i.ij
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.sroa.0.0.ph.i129.i.i.i
  %.sroa.03.0.i.i.i.i.i = select i1 %i.pb, ptr %i.pc, ptr null ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %.sroa.03.0.i.i.i.i.i, null
  %spec.select.i.i.i.i.i = select i1 %.not9.i.i.i.i.i, ptr %i.io, ptr %.sroa.03.0.i.i.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i.i.i.i.i) ]
  br label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.i.i.i.i

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.i.i.i.i
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.i.i.i.i ]
  %.sroa.0.0.i33.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i.i, align 1, !noalias !2877
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.lcssa105.i.i.i.i, i32 noundef %.sroa.0.0.i33.i.i.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc150.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2865

.noexc150.i.i.i:                                  ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.i.i.i.i
  %i.pd = icmp eq i64 %.sroa.0.0.ph.i129.i.i.i, -1
  br i1 %i.pd, label %.split78.us.i.i.invoke.i.i, label %.outer.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.pe = load i32, ptr %.lcssa107.i.i.i.i, align 4, !noalias !2882, !noundef !5 ; 3 uses
  %i.pf = xor i32 %i.pe, 55296
  %i.pg = add i32 %i.pf, -1114112
  %i.ph = icmp ult i32 %i.pg, -1112064
  br i1 %i.ph, label %.split.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2890
  store i32 %i.pe, ptr %i.c, align 4, !noalias !2890
  br label %.split.i.i.invoke.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.ci
  %i.pi = icmp ult i32 %i.pe, 1114112
  call void @llvm.assume(i1 %i.pi)
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.cb, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.i.i.i.i
  %.sroa.013.0.ph71.i.i.i.i = phi i64 [ %.sroa.013.0.ph.i128.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ %.sroa.013.0.ph.us.i.i.i.i, %bb.cb ]
  %.sroa.0.0.ph65.i.i.i.i = phi i64 [ %.sroa.0.0.ph.i129.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ %.sroa.0.0.ph.us.i.i.i.i, %bb.cb ] ; 2 uses
  call void @llvm.assume(i1 %i.ik)
  br i1 %brmerge45.i.i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit40.i.i.i.i, label %._crit_edge.i34.i.i.i.i

._crit_edge.i34.i.i.i.i:                          ; preds = %.loopexit.i.i.i.i
  %i.pj = icmp ult i64 %.sroa.0.0.ph65.i.i.i.i, %i.ij
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.sroa.0.0.ph65.i.i.i.i
  %.sroa.03.0.i35.i.i.i.i = select i1 %i.pj, ptr %i.pk, ptr null ; 2 uses
  %.not9.i36.i.i.i.i = icmp eq ptr %.sroa.03.0.i35.i.i.i.i, null
  %spec.select.i37.i.i.i.i = select i1 %.not9.i36.i.i.i.i, ptr %i.io, ptr %.sroa.03.0.i35.i.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i37.i.i.i.i) ]
  br label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit40.i.i.i.i

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit40.i.i.i.i: ; preds = %._crit_edge.i34.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0.0.in.i38.i.i.i.i = phi ptr [ %spec.select.i37.i.i.i.i, %._crit_edge.i34.i.i.i.i ], [ %.sroa.0.i.i.i, %.loopexit.i.i.i.i ]
  %.sroa.0.0.i39.i.i.i.i = load i32, ptr %.sroa.0.0.in.i38.i.i.i.i, align 1, !noalias !2891
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.0.0.i39.i.i.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc152.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2865

.noexc152.i.i.i:                                  ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit40.i.i.i.i
  %i.pl = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc153.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2865 ; 2 uses

.noexc153.i.i.i:                                  ; preds = %.noexc152.i.i.i
  %i.pm = extractvalue { i64, i64 } %i.pl, 0
  %i.pn = trunc nuw i64 %i.pm to i1
  br i1 %i.pn, label %bb.cj, label %.invoke290.i.invoke.i.i, !prof !98

.outer.i.i.i.i:                                   ; preds = %.noexc150.i.i.i
  %i.po = add nuw i64 %.sroa.0.0.ph.i129.i.i.i, 1
  %i.pp = sub nuw i64 %.sroa.013.0.ph.i128.i.i.i, %i.ox ; 2 uses
  %i.pq = icmp eq ptr %.lcssa107.i.i.i.i, %i.ni
  %or.cond.peel.i.i.i.i = select i1 %i.oz, i1 true, i1 %i.pq
  br i1 %or.cond.peel.i.i.i.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %.lr.ph.i.i.i

.split78.us.i.i.invoke.i.i:                       ; preds = %.noexc118.i.i, %.noexc77.i.i, %.noexc37.i.i, %.noexc150.i.i.i, %.noexc146.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
          to label %.split78.us.i.i.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2865

.split78.us.i.i.cont.i.i:                         ; preds = %.split78.us.i.i.invoke.i.i
  unreachable

bb.cj:                                            ; preds = %.noexc153.i.i.i
  %i.pr = extractvalue { i64, i64 } %i.pl, 1
  %i.ps = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph71.i.i.i.i, i64 %i.pr)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i

.invoke290.i.invoke.i.i:                          ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, %.noexc39.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i, %.noexc79.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, %.noexc120.i.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, %.noexc153.i.i.i
  %i.pt = phi ptr [ @16, %.noexc153.i.i.i ], [ @17, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i ], [ @16, %.noexc39.i.i ], [ @17, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i ], [ @16, %.noexc79.i.i ], [ @16, %.noexc120.i.i ], [ @17, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i ], [ @17, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pt) #37
          to label %.invoke290.i.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2865

.invoke290.i.cont.i.i:                            ; preds = %.invoke290.i.invoke.i.i
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i: ; preds = %.outer.i.i.i.i, %.loopexit119.i.i.i.i, %bb.ca, %.peel.next.i.i.i.i, %bb.cd, %bb.cj, %.outer.i.preheader.i.i.i
  %.sroa.013.2.i.i.i.i = phi i64 [ %i.ps, %bb.cj ], [ %.sroa.013.0.ph.i128.i.i.i, %.peel.next.i.i.i.i ], [ %.sroa.013.0.ph.us.i.i.i.i, %bb.cd ], [ %.sroa.013.0.ph.us.i.i.i.i, %bb.ca ], [ %.sroa.043.2.i.i.i, %.outer.i.preheader.i.i.i ], [ %i.pp, %.outer.i.i.i.i ], [ %.sroa.013.0.ph.i128.i.i.i, %.loopexit119.i.i.i.i ] ; 3 uses
  %i.pu = icmp ult i64 %.sroa.043.2.i.i.i, %.sroa.013.2.i.i.i.i
  br i1 %i.pu, label %.invoke290.i.invoke.i.i, label %bb.ao, !prof !82

bb.ck:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i
  %i.pv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ck, %bb.ak
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2865
  unreachable

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i: ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, %bb.bj, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !2894
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2860
  %i.pw = icmp ult i64 %i.gr, %i.eq
  br i1 %i.pw, label %bb.cl, label %bb.cm

.loopexit.i.i:                                    ; preds = %bb.cn, %bb.cm, %bb.cl
  %lpad.loopexit186.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l) #35
          to label %.body unwind label %bb.cr, !noalias !2866

bb.cl:                                            ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line10append_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @2857, i64 noundef 2, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %bb.cm unwind label %.loopexit.i.i, !noalias !2866

bb.cm:                                            ; preds = %bb.cl, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i
  %i.px = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs8frGy5WneL6_4fish6screenNtB4_10ScreenData11create_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.av, i64 noundef %i.go)
          to label %bb.cn unwind label %.loopexit.i.i, !noalias !2866

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line11append_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.px, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %bb.co unwind label %.loopexit.i.i, !noalias !2866

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_.exit.i.i unwind label %bb.cp, !noalias !2866

bb.cp:                                            ; preds = %bb.co
  %i.py = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %.body unwind label %bb.cq, !noalias !2866

bb.cq:                                            ; preds = %bb.cp
  %i.pz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2866
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_.exit.i.i: ; preds = %bb.co
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %.noexc71 unwind label %.loopexit

.noexc71:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2846
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.noexc71, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2895
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc72 unwind label %.loopexit

.noexc72:                                         ; preds = %.backedge.i.i
  %i.qa = load i64, ptr %i.k, align 8, !range !1852, !noalias !2895, !noundef !5
  %i.qb = trunc nuw i64 %i.qa to i1
  br i1 %i.qb, label %bb.ae, label %._crit_edge.i.i

bb.cr:                                            ; preds = %.loopexit.i.i
  %i.qc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2866
  unreachable

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i: ; preds = %._crit_edge.i.i
  %.pre.i = load i64, ptr %i.aw, align 8, !alias.scope !2830, !noalias !2832
  br label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i: ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i
  %i.qd = phi i64 [ %.pre.i, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i ], [ %i.fi, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2835
  store i64 0, ptr %i.af, align 8, !noalias !2835
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !2835
  store i64 0, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !2835
  switch i64 %i.qd, label %bb.cv [
    i64 1, label %bb.cs
    i64 0, label %bb.cu
  ], !prof !2897

bb.cs:                                            ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2863, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2864) #36
          to label %bb.ct unwind label %.loopexit.split-lp260.i.loopexit.split-lp, !noalias !2832

.body192.i:                                       ; preds = %.loopexit.split-lp260.i.loopexit, %.loopexit.split-lp260.i.loopexit.split-lp, %bb.dj, %bb.gd, %.loopexit.split-lp248.i, %.body162.i, %.body156.i, %.body148.i, %.body145.i, %bb.cy, %.loopexit259.i
  %.pn130.i = phi { ptr, i32 } [ %.pn.i55, %bb.cy ], [ %lpad.phi.i, %.loopexit.split-lp248.i ], [ %eh.lpad-body163.i, %.body162.i ], [ %.pn127.i, %.body156.i ], [ %.pn122.pn.i, %.body145.i ], [ %eh.lpad-body149.i, %.body148.i ], [ %i.yo, %bb.gd ], [ %lpad.loopexit261.i, %.loopexit259.i ], [ %i.qw, %bb.dj ], [ %lpad.loopexit186, %.loopexit.split-lp260.i.loopexit ], [ %lpad.loopexit.split-lp187, %.loopexit.split-lp260.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #35
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2832

.loopexit259.i:                                   ; preds = %bb.eq, %bb.ep
  %lpad.loopexit261.i = landingpad { ptr, i32 }
          cleanup
  br label %.body192.i

.loopexit.split-lp260.i.loopexit:                 ; preds = %bb.eo, %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit.i, %bb.er, %bb.et, %bb.ey, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i80
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  br label %.body192.i

.loopexit.split-lp260.i.loopexit.split-lp:        ; preds = %bb.cs, %bb.fa
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %.body192.i

bb.ct:                                            ; preds = %bb.gf, %bb.fa, %bb.db, %bb.cs
  unreachable

bb.cu:                                            ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i
  %i.qe = icmp ne i64 %.sroa.034.0217224.i, 0
  %i.qf = icmp ult i64 %.sroa.028.0218223.i, %.sroa.0.0.i207.fr679.i
  %or.cond6.i = or i1 %i.qe, %i.qf
  br i1 %or.cond6.i, label %bb.dl, label %bb.cw

bb.cv:                                            ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2835
  store i64 0, ptr %i.ad, align 8, !noalias !2835
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.466.0..sroa_idx67.i, align 8, !noalias !2835
  store i64 0, ptr %.sroa.571.0..sroa_idx72.i, align 8, !noalias !2835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2835
  store ptr @2868, ptr %i.dv, align 8, !noalias !2835
  store i64 17, ptr %i.dw, align 8, !noalias !2835
  store i64 -1, ptr %i.ab, align 8, !noalias !2835
  %i.qg = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.ec unwind label %.loopexit.split-lp265.i, !noalias !2832 ; 2 uses

bb.cw:                                            ; preds = %bb.cu
  br i1 %brmerge.not.i, label %bb.cx, label %bb.eb

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2835
  store ptr @2865, ptr %i.dn, align 8, !noalias !2835
  store i64 12, ptr %i.do, align 8, !noalias !2835
  store i64 -1, ptr %i.u, align 8, !noalias !2835
  %i.qh = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.cz unwind label %.loopexit181, !noalias !2832 ; 2 uses

bb.cy:                                            ; preds = %.loopexit181, %.loopexit.split-lp182, %.body83
  %.pn.i55 = phi { ptr, i32 } [ %eh.lpad-body84, %.body83 ], [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit.split-lp184, %.loopexit.split-lp182 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #35
          to label %.body192.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2832

.loopexit181:                                     ; preds = %bb.cx, %bb.cz
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp182:                            ; preds = %bb.db
  %lpad.loopexit.split-lp184 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cz:                                            ; preds = %bb.cx
  %i.qi = extractvalue { ptr, i64 } %i.qh, 0
  %i.qj = extractvalue { ptr, i64 } %i.qh, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2835
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %i.qj, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.da unwind label %.loopexit181, !noalias !2832

bb.da:                                            ; preds = %bb.cz
  %i.qk = load i64, ptr %i.q, align 8, !range !1852, !noalias !2835, !noundef !5
  %i.ql = trunc nuw i64 %i.qk to i1
  %i.qm = load i64, ptr %i.dp, align 8, !range !1862, !noalias !2835, !noundef !5 ; 4 uses
  br i1 %i.ql, label %bb.db, label %bb.dc, !prof !82

bb.db:                                            ; preds = %bb.da
  %i.qn = load i64, ptr %i.dq, align 8, !noalias !2835
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.qm, i64 %i.qn) #36
          to label %bb.ct unwind label %.loopexit.split-lp182, !noalias !2832

bb.dc:                                            ; preds = %bb.da
  %i.qo = load ptr, ptr %i.dq, align 8, !noalias !2835, !nonnull !5, !noundef !5 ; 3 uses
  %i.qp = icmp ule i64 %i.qj, %i.qm
  call void @llvm.assume(i1 %i.qp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2835
  %.not120.i = icmp eq i64 %i.qj, 0
  br i1 %.not120.i, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dg, %bb.dc
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.de, !noalias !2832

bb.de:                                            ; preds = %bb.dd
  %i.qq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body83 unwind label %bb.df, !noalias !2832

bb.df:                                            ; preds = %bb.de
  %i.qr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2832
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.dd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.dh

bb.dg:                                            ; preds = %bb.dc
  %i.qs = shl nuw nsw i64 %i.qj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.qo, ptr align 4 %i.qi, i64 %i.qs, i1 false), !noalias !2832
  br label %bb.dd
end_hunk_2
