Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.14?download=true
inline.NumInlined: 1814
inline.NumDeleted: 645
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvXNtNtNtCs8frGy5WneL6_4fish8builtins6string6escapeNtB2_6EscapeNtB4_16StringSubCommand9parse_opt:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3004
  %.sroa.039.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load <2 x i32>, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %.sroa.039.0.copyload, ptr %0, align 8
  store <2 x i32> %i.x, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.636.0..sroa_idx, align 8
  %.sroa.636.sroa.4.0..sroa.636.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.636.sroa.4.0..sroa.636.0..sroa_idx.sroa_idx, align 8
  %.sroa.636.sroa.6.0..sroa.636.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %.sroa.636.sroa.6.0..sroa.636.0..sroa_idx.sroa_idx, align 8
  %.sroa.636.sroa.8.0..sroa.636.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %.sroa.636.sroa.8.0..sroa.636.0..sroa_idx.sroa_idx, align 8
  %.sroa.636.sroa.9.0..sroa.636.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %.sroa.636.sroa.9.0..sroa.636.0..sroa_idx.sroa_idx, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = load <2 x i32>, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store <2 x i32> %i.z, ptr %1, align 4
  br label %bb.e

bb.s:                                             ; preds = %_RNCNvXNtNtNtCs8frGy5WneL6_4fish8builtins6string6escapeNtB4_6EscapeNtB6_16StringSubCommand9parse_opt0Ba_.exit, %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXNtNtNtCs8frGy5WneL6_4fish8builtins6string6repeatNtB2_6RepeatNtB4_16StringSubCommand6handle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 18 uses
  %i.c = alloca [24 x i8], align 8                ; 27 uses
  %i.d = alloca [32 x i8], align 8                ; 14 uses
  %i.e = alloca [80 x i8], align 8                ; 9 uses
  %i.f = alloca [80 x i8], align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !10, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8              ; 4 uses
  %i.k = trunc nuw i64 %i.h to i1
  %i.l = load i64, ptr %0, align 8, !range !10, !noundef !8
  %i.m = trunc nuw i64 %i.l to i1                 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.014.0 = phi i64 [ %i.r, %bb.f ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = icmp eq i64 %.sroa.014.0, 0
  br i1 %i.p, label %bb.q, label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq i64 %i.j, 0
  br i1 %i.s, label %bb.e, label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %i.j, 0
  br i1 %i.t, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.014.2 = phi i64 [ %.sroa.014.0, %bb.e ], [ %i.r, %bb.f ], [ 0, %bb.g ] ; 2 uses
  %.sroa.07.1 = phi i64 [ 0, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ] ; 3 uses
  call void @_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 1024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i8, ptr %i.w, align 8, !range !11
  %.fr163 = freeze i8 %i.x                        ; 2 uses
  %i.y = trunc i8 %.fr163 to i1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.aa = icmp eq i64 %.sroa.07.1, 0
  %.not58.not = icmp eq i64 %.sroa.014.2, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %i.y, label %.outer.us, label %.outer

bb.i:                                             ; preds = %.outer.us
  %i.ae = load i64, ptr %i.d, align 8, !range !33, !noundef !8
  %.not.us = icmp eq i64 %i.ae, -2
  br i1 %.not.us, label %.split157.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.af = load i8, ptr %i.u, align 8, !range !11, !noundef !8
  %i.ag = load i64, ptr %i.v, align 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %.loopexit102

bb.k:                                             ; preds = %bb.j
  %i.ai = load i64, ptr %i.c, align 8, !range !14, !noundef !8
  %.not56.us = icmp eq i64 %i.ai, -1
  br i1 %.not56.us, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.us unwind label %.split160.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.us: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.us unwind label %.loopexit98.loopexit.split.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.us: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.us, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.outer.us

.outer.us:                                        ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.us
  %.sroa.029.0.us = phi i8 [ %i.af, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.us ], [ 1, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs3_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9ArgumentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e)
          to label %bb.i unwind label %.loopexit98.loopexit.split.us

.split160.us:                                     ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit98.loopexit.split.us:                    ; preds = %.outer.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.us
  %lpad.loopexit111.us = landingpad { ptr, i32 }
          cleanup
  br label %.body

.outer:                                           ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit82
  %.sroa.029.0.ph = phi i8 [ %i.al, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit82 ], [ 1, %bb.h ]
  %.sroa.028.0.ph = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit82 ], [ true, %bb.h ]
  %.sroa.026.0.ph = phi i8 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit82 ], [ 1, %bb.h ]
  br label %bb.m

bb.m:                                             ; preds = %.outer, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit
  %.sroa.029.0 = phi i8 [ %i.al, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ], [ %.sroa.029.0.ph, %.outer ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs3_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9ArgumentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e)
          to label %bb.n unwind label %.loopexit98.loopexit.split

.body:                                            ; preds = %.loopexit.split-lp99, %.loopexit98.loopexit.split, %.loopexit98.loopexit.split.us, %.loopexit98.loopexit.split-lp, %bb.bb, %bb.an, %bb.u, %.body74
  %.pn67 = phi { ptr, i32 } [ %.pn, %.body74 ], [ %i.cr, %bb.an ], [ %.us-phi161, %bb.u ], [ %i.ds, %bb.bb ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp99 ], [ %lpad.loopexit.split-lp112, %.loopexit98.loopexit.split-lp ], [ %lpad.loopexit111, %.loopexit98.loopexit.split ], [ %lpad.loopexit111.us, %.loopexit98.loopexit.split.us ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.e) #29
          to label %bb.be unwind label %bb.bd

.loopexit98.loopexit.split:                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.m
  %lpad.loopexit111 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit98.loopexit.split-lp:                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i78
  %lpad.loopexit.split-lp112 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp99:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i90
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.m
  %i.ak = load i64, ptr %i.d, align 8, !range !33, !noundef !8
  %.not = icmp eq i64 %i.ak, -2
  br i1 %.not, label %.split157.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.al = load i8, ptr %i.u, align 8, !range !11, !noundef !8 ; 2 uses
  %i.am = load i64, ptr %i.v, align 8             ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.s, label %bb.r

.split157.us:                                     ; preds = %bb.n, %bb.i
  %.us-phi = phi i8 [ 1, %bb.i ], [ %.sroa.026.0.ph, %bb.n ] ; 2 uses
  %.us-phi158 = phi i8 [ %.sroa.029.0.us, %bb.i ], [ %.sroa.029.0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ap = load i8, ptr %i.ao, align 1, !range !11
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = or i8 %.fr163, %.us-phi
  %i.as = icmp ne i8 %i.ar, 0
  %or.cond4 = select i1 %i.as, i1 true, i1 %i.aq
  %or.cond4.not = xor i1 %or.cond4, true
  %i.at = trunc nuw i8 %.us-phi158 to i1
  %or.cond6 = and i1 %i.at, %or.cond4.not
  br i1 %or.cond6, label %bb.p, label %6

6:                                                ; preds = %bb.p, %.split157.us
  %. = zext nneg i8 %.us-phi to i32
  br label %bb.q

bb.p:                                             ; preds = %.split157.us
  %i.au = load ptr, ptr %i.z, align 8, !nonnull !8, !align !17, !noundef !8
  %i.av = call noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendcEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au, i32 noundef 10) ; 0 uses
  br label %6

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit94, %bb.g, %bb.c, %bb.e, %6
  %.sroa.0.1 = phi i32 [ %., %6 ], [ %.sroa.0.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit94 ], [ 1, %bb.g ], [ 1, %bb.c ], [ 1, %bb.e ]
  %i.aw = insertvalue { i32, i32 } poison, i32 %.sroa.0.1, 0
  %i.ax = insertvalue { i32, i32 } %i.aw, i32 1, 1
  ret { i32, i32 } %i.ax

bb.r:                                             ; preds = %bb.o
  br i1 %.sroa.028.0.ph, label %bb.x, label %bb.w

bb.s:                                             ; preds = %bb.o
  %i.ay = load i64, ptr %i.c, align 8, !range !14, !noundef !8
  %.not56 = icmp eq i64 %i.ay, -1
  br i1 %.not56, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %.split160

.split160:                                        ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.split160.us, %.split160
  %.us-phi161 = phi { ptr, i32 } [ %i.az, %.split160 ], [ %i.aj, %.split160.us ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %.loopexit98.loopexit.split

bb.w:                                             ; preds = %bb.r
  %i.bb = load ptr, ptr %i.z, align 8, !nonnull !8, !align !17, !noundef !8
  %i.bc = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendcEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb, i32 noundef 10)
          to label %._crit_edge200 unwind label %.loopexit103 ; 0 uses

._crit_edge200:                                   ; preds = %bb.w
  %.pre = load i64, ptr %i.v, align 8
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge200, %bb.r
  %i.bd = phi i64 [ %.pre, %._crit_edge200 ], [ %i.am, %bb.r ] ; 3 uses
  %i.be = mul i64 %i.bd, %.sroa.014.2             ; 2 uses
  %i.bf = call i64 @llvm.umin.i64(i64 %i.be, i64 %.sroa.07.1)
  %spec.select = select i1 %.not58.not, i64 %.sroa.07.1, i64 %i.bf
  %.sroa.031.0 = select i1 %i.aa, i64 %i.be, i64 %spec.select ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = icmp ugt i64 %i.bd, -1501
  br i1 %i.bg, label %bb.y, label %bb.aa

.body74:                                          ; preds = %.loopexit103, %.loopexit.split-lp104, %bb.ax, %bb.ak, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.cn, %bb.ak ], [ %i.dn, %bb.ax ], [ %lpad.loopexit105, %.loopexit103 ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp104 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %.body unwind label %bb.bd

.loopexit103:                                     ; preds = %bb.w, %bb.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %lpad.loopexit105 = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.loopexit.split-lp104:                            ; preds = %bb.y, %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i84
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @833) #34
          to label %bb.z unwind label %.loopexit.split-lp104

bb.z:                                             ; preds = %bb.ac, %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.bh = add nuw i64 %i.bd, 1500
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.bh, i64 %.sroa.031.0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ab unwind label %.loopexit103

bb.ab:                                            ; preds = %bb.aa
  %i.bi = load i64, ptr %i.a, align 8, !range !10, !noundef !8
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = load i64, ptr %i.ab, align 8, !range !30, !noundef !8 ; 3 uses
  br i1 %i.bj, label %bb.ac, label %bb.ad, !prof !9

bb.ac:                                            ; preds = %bb.ab
  %i.bl = load i64, ptr %i.ac, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.bk, i64 %i.bl) #34
          to label %bb.z unwind label %.loopexit.split-lp104

bb.ad:                                            ; preds = %bb.ab
  %i.bm = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  %i.bn = icmp ule i64 %..i, %i.bk
  call void @llvm.assume(i1 %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.bk, ptr %i.b, align 8
  store ptr %i.bm, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.552.0..sroa_idx, align 8
  %.not60152 = icmp eq i64 %.sroa.031.0, 0
  br i1 %.not60152, label %thread-pre-split.thread, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.ad, %bb.as
  %.sroa.031.1153 = phi i64 [ %.sroa.031.2, %bb.as ], [ %.sroa.031.0, %bb.ad ] ; 4 uses
  %i.bo = load i64, ptr %i.v, align 8             ; 2 uses
  %.not62 = icmp ult i64 %.sroa.031.1153, %i.bo
  br i1 %.not62, label %bb.ae, label %bb.af

thread-pre-split:                                 ; preds = %bb.as, %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit
  %i.bp = phi i64 [ %i.ck, %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit ], [ %.pr202, %bb.as ] ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 2305843009213693952
  call void @llvm.assume(i1 %i.bq)
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %thread-pre-split.thread, label %bb.aj

bb.ae:                                            ; preds = %.lr.ph155
  %i.bs = load ptr, ptr %i.ad, align 8, !nonnull !8
  %i.bt = invoke { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt8slice_toCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bs, i64 noundef %i.bo, i64 noundef %.sroa.031.1153)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.af:                                            ; preds = %.lr.ph155
  %i.bu = invoke { ptr, i64 } @_RNvXse_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtNtCs3oUPovFnLWP_4core7convert5AsRefBI_E6as_refCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc69:                                         ; preds = %bb.af
  %i.bv = extractvalue { ptr, i64 } %i.bu, 1      ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef range(i64 0, 4611686018427387904) %i.bv)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit

.noexc70:                                         ; preds = %.noexc69
  %i.bw = load i64, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !3023, !noalias !3024, !noundef !8 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 2305843009213693952
  call void @llvm.assume(i1 %i.bx)
  %.not.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %.noexc70
  %i.by = extractvalue { ptr, i64 } %i.bu, 0
  %i.bz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3023, !noalias !3024, !nonnull !8, !noundef !8
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bw
  %i.cb = shl nuw nsw i64 %i.bv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ca, ptr nonnull readonly align 4 %i.by, i64 %i.cb, i1 false)
  %.pre.i.i = load i64, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !3023, !noalias !3024
  br label %bb.ap

.loopexit:                                        ; preds = %.lr.ph, %bb.at
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc69, %bb.af, %bb.ar
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.ae, %bb.aj, %bb.ah
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit95, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit108, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #29
          to label %.body74 unwind label %bb.bd

bb.ah:                                            ; preds = %bb.ae
  %i.cc = extractvalue { ptr, i64 } %i.bt, 0
  %i.cd = extractvalue { ptr, i64 } %i.bt, 1      ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef range(i64 0, 4611686018427387904) %i.cd)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc73:                                         ; preds = %bb.ah
  %i.ce = load i64, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !3025, !noalias !3026, !noundef !8 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 2305843009213693952
  call void @llvm.assume(i1 %i.cf)
  %.not.i.i71 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i71, label %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, label %bb.ai

bb.ai:                                            ; preds = %.noexc73
  %i.cg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3025, !noalias !3026, !nonnull !8, !noundef !8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ce
  %i.ci = shl nuw nsw i64 %i.cd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr nonnull readonly align 4 %i.cc, i64 %i.ci, i1 false)
  %.pre.i.i72 = load i64, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !3025, !noalias !3026
  br label %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit

_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit: ; preds = %.noexc73, %bb.ai
  %i.cj = phi i64 [ %.pre.i.i72, %bb.ai ], [ %i.ce, %.noexc73 ]
  %i.ck = add i64 %i.cj, %i.cd                    ; 2 uses
  store i64 %i.ck, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !3025, !noalias !3026
  br label %thread-pre-split
end_hunk_0
