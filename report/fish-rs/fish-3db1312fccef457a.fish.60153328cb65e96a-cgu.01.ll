Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.01?download=true
inline.NumInlined: 2770
inline.NumDeleted: 706
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader16make_layout_data:bb.a
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i63: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit66 unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i63
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body64

.body64:                                          ; preds = %bb.ai, %bb.ak
  %eh.lpad-body65 = phi { ptr, i32 } [ %i.ce, %bb.ak ], [ %i.cc, %bb.ai ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit66: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.val, i64 1952
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf)
          to label %bb.al unwind label %bb.f

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i68 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body69 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i68: ; preds = %bb.al
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit71 unwind label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i68
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body69

.body69:                                          ; preds = %bb.am, %bb.ao
  %eh.lpad-body70 = phi { ptr, i32 } [ %i.ci, %bb.ao ], [ %i.cg, %bb.am ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit71: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.val, i64 1976
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj)
          to label %bb.ap unwind label %bb.f

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i73 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body74 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i73: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit76 unwind label %bb.as

bb.as:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i73
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.body74:                                          ; preds = %bb.aq, %bb.as
  %eh.lpad-body75 = phi { ptr, i32 } [ %i.cm, %bb.as ], [ %i.ck, %bb.aq ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit76: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %i.n, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.at:                                            ; preds = %bb.e
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.au:                                            ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader17is_repaint_needed(ptr captures(address, read_provenance) %.0.val, ptr noalias nofree noundef readonly captures(address, read_provenance) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 416 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !range !28, !noundef !14
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 1248
  %i.e = load i64, ptr %i.d, align 8, !range !28, !noundef !14
  %.not71 = icmp eq i64 %i.e, 0
  br i1 %.not71, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 689
  %i.g = load i8, ptr %i.f, align 1, !range !20, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i64 @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager15cursor_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.6.0 = phi i64 [ %i.i, %bb.d ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.07.0 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 2293
  %i.l = load i8, ptr %i.k, align 1, !range !20, !noundef !14
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 6) #43 ; 0 uses
  br i1 %i.m, label %bb.ah, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.p = load i64, ptr %i.o, align 8, !noundef !14 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 200
  %i.r = load i64, ptr %i.q, align 8, !noundef !14
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !14, !noundef !14
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !14, !noundef !14
  %i.x = shl nuw i64 %i.p, 2
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.w, ptr nonnull %i.u, i64 %i.x)
  %i.y = icmp ne i32 %bcmp, 0                     ; 2 uses
  %i.z = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4) #43 ; 0 uses
  br i1 %i.y, label %bb.ah, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not72 = icmp eq ptr %0, null
  br i1 %.not72, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 224
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !14
  %i.ac = icmp eq i64 %1, %i.ab
  br i1 %i.ac, label %bb.j, label %.critedge4

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !14, !noundef !14
  %i.af = tail call noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i64 noundef %1) ; 2 uses
  %i.ag = xor i1 %i.af, true
  %i.ah = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 9) #43 ; 0 uses
  br i1 %i.af, label %bb.k, label %bb.ah

.critedge2:                                       ; preds = %bb.h
  %i.ai = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 9) #43 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge2, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 1272
  %i.ak = load i64, ptr %i.aj, align 8, !range !28, !noundef !14
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %.0.val, i64 152
  %i.an = load i64, ptr %i.am, align 8, !range !28, !noundef !14
  %2 = trunc nuw i64 %i.an to i1                  ; 3 uses
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %2, label %bb.n, label %.critedge6

bb.m:                                             ; preds = %bb.k
  %i.ao = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 9) #43 ; 0 uses
  br i1 %2, label %bb.ah, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.val, i64 1280
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !14
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.val, i64 160
  %i.as = load i64, ptr %i.ar, align 8, !noundef !14
  %i.at = icmp eq i64 %i.aq, %i.as
  br i1 %i.at, label %bb.o, label %.critedge6

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 1288
  %i.av = load i64, ptr %i.au, align 8, !noundef !14
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.val, i64 168
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !14
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %.split, label %.critedge6

.split:                                           ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 1296
  %i.ba = load i64, ptr %i.az, align 8, !noundef !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 176
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !14
  %i.bd = icmp ne i64 %i.ba, %i.bc                ; 2 uses
  %i.be = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 9) #43 ; 0 uses
  br i1 %i.bd, label %bb.ah, label %bb.p

bb.p:                                             ; preds = %.split, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !14
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.val, i64 328
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !14
  %i.bj = icmp ne i64 %i.bg, %i.bi                ; 2 uses
  %i.bk = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 8) #43 ; 0 uses
  br i1 %i.bj, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = load i64, ptr %i.j, align 8, !range !28, !noundef !14
  %3 = trunc nuw i64 %i.bl to i1                  ; 3 uses
  br i1 %.sroa.07.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %3, label %.split25, label %.critedge8

bb.s:                                             ; preds = %bb.q
  %i.bm = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 27) #43 ; 0 uses
  br i1 %3, label %bb.ah, label %bb.t

.split25:                                         ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !14
  %i.bp = icmp ne i64 %.sroa.6.0, %i.bo           ; 2 uses
  %i.bq = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 27) #43 ; 0 uses
  br i1 %i.bp, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %.split25, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.br = getelementptr inbounds nuw i8, ptr %.0.val, i64 1624
  call void @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch22search_range_if_active(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.br)
  %i.bs = load i32, ptr %i.a, align 4, !range !25, !noundef !14
  %i.bt = trunc nuw i32 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.val, i64 336
  %i.bv = load i32, ptr %i.bu, align 8, !range !25, !noundef !14
  %4 = trunc nuw i32 %i.bv to i1                  ; 3 uses
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %4, label %bb.w, label %.critedge10

bb.v:                                             ; preds = %bb.t
  %i.bw = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 14) #43 ; 0 uses
  br i1 %4, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !noundef !14
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.val, i64 340
  %i.ca = load i32, ptr %i.bz, align 4, !noundef !14
  %i.cb = icmp eq i32 %i.by, %i.ca
  br i1 %i.cb, label %.split26, label %.critedge10

.split26:                                         ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !14
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.val, i64 344
  %i.cf = load i32, ptr %i.ce, align 8, !noundef !14
  %i.cg = icmp ne i32 %i.cd, %i.cf                ; 2 uses
  %i.ch = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.cg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 14) #43 ; 0 uses
  br i1 %i.cg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.split26, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.val, i64 384
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !14 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.val, i64 248
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !14
  %i.cm = icmp eq i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.z, label %.critedge12

.critedge10:                                      ; preds = %bb.w, %bb.u
  %i.cn = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 14) #43 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.split26, %.critedge10, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

bb.z:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %.0.val, i64 240
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !14, !noundef !14
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.val, i64 376
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !14, !noundef !14
  %i.cs = shl nuw i64 %i.cj, 2
  %bcmp73 = tail call i32 @bcmp(ptr nonnull %i.cr, ptr nonnull %i.cp, i64 %i.cs)
  %i.ct = icmp ne i32 %bcmp73, 0                  ; 2 uses
  %i.cu = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.ct, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 14) #43 ; 0 uses
  br i1 %i.ct, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.val, i64 1944
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !14 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !14
  %i.cz = icmp eq i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.ab, label %.critedge14

bb.ab:                                            ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %.0.val, i64 264
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !14, !noundef !14
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.val, i64 1936
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !14, !noundef !14
  %i.de = shl nuw i64 %i.cw, 2
  %bcmp74 = tail call i32 @bcmp(ptr nonnull %i.dd, ptr nonnull %i.db, i64 %i.de)
  %i.df = icmp ne i32 %bcmp74, 0                  ; 2 uses
  %i.dg = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 11) #43 ; 0 uses
  br i1 %i.df, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.val, i64 1968
  %i.di = load i64, ptr %i.dh, align 8, !noundef !14 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.val, i64 296
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !14
  %i.dl = icmp eq i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.ad, label %.critedge16

bb.ad:                                            ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.val, i64 288
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !14, !noundef !14
  %i.do = getelementptr inbounds nuw i8, ptr %.0.val, i64 1960
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !14, !noundef !14
  %i.dq = shl nuw i64 %i.di, 2
  %bcmp75 = tail call i32 @bcmp(ptr nonnull %i.dp, ptr nonnull %i.dn, i64 %i.dq)
  %i.dr = icmp ne i32 %bcmp75, 0                  ; 2 uses
  %i.ds = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.dr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 11) #43 ; 0 uses
  br i1 %i.dr, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.val, i64 1992
  %i.du = load i64, ptr %i.dt, align 8, !noundef !14 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !14
  %i.dx = icmp eq i64 %i.du, %i.dw
  br i1 %i.dx, label %bb.af, label %.critedge18

bb.af:                                            ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.val, i64 312
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !14, !noundef !14
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.val, i64 1984
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !14, !noundef !14
  %i.ec = shl nuw i64 %i.du, 2
  %bcmp76 = tail call i32 @bcmp(ptr nonnull %i.eb, ptr nonnull %i.dz, i64 %i.ec)
  %i.ed = icmp ne i32 %bcmp76, 0                  ; 2 uses
  %i.ee = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.ed, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 12) #43 ; 0 uses
  br i1 %i.ed, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.val, i64 696
  %i.eg = tail call noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager22rendering_needs_update(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.ef) ; 2 uses
  %i.eh = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext %i.eg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 5) #43 ; 0 uses
  br label %bb.ah

.critedge:                                        ; preds = %bb.f
  %i.ei = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4) #43 ; 0 uses
  br label %bb.ah

.critedge4:                                       ; preds = %bb.i
  %i.ej = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 9) #43 ; 0 uses
  br label %bb.ah

.critedge6:                                       ; preds = %bb.n, %bb.o, %bb.l
  %i.ek = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 9) #43 ; 0 uses
  br label %bb.ah

.critedge8:                                       ; preds = %bb.r
  %i.el = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 27) #43 ; 0 uses
  br label %bb.ah

.critedge12:                                      ; preds = %bb.x
  %i.em = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 14) #43 ; 0 uses
  br label %bb.ah

.critedge14:                                      ; preds = %bb.aa
  %i.en = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 11) #43 ; 0 uses
  br label %bb.ah

.critedge16:                                      ; preds = %bb.ac
  %i.eo = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 11) #43 ; 0 uses
  br label %bb.ah

.critedge18:                                      ; preds = %bb.ae
  %i.ep = tail call fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader17is_repaint_needed0Bb_(i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 12) #43 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.split25, %.split, %.critedge18, %.critedge16, %.critedge14, %.critedge12, %.critedge8, %.critedge6, %.critedge4, %.critedge, %bb.y, %bb.e, %bb.g, %bb.j, %bb.m, %bb.p, %bb.s, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ag
  %.sroa.03.0 = phi i1 [ %i.eg, %bb.ag ], [ true, %bb.af ], [ true, %bb.ad ], [ true, %bb.ab ], [ true, %bb.z ], [ true, %bb.s ], [ true, %bb.p ], [ true, %bb.m ], [ true, %bb.j ], [ true, %bb.g ], [ true, %bb.e ], [ true, %bb.y ], [ true, %.critedge ], [ true, %.critedge4 ], [ true, %.critedge6 ], [ true, %.critedge8 ], [ true, %.critedge12 ], [ true, %.critedge14 ], [ true, %.critedge16 ], [ true, %.critedge18 ], [ true, %.split ], [ true, %.split25 ]
  ret i1 %.sroa.03.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader18layout_and_repaint(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 4, 14) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [216 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val3 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 2 uses
  call fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader16make_layout_data(ptr noalias nofree noundef align 8 captures(none) dereferenceable(216) %i.a, ptr nonnull %.val3)
  %i.b = getelementptr inbounds nuw i8, ptr %.val3, i64 136 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.b, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false)
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.b, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader12paint_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader5query(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i16 2, ptr %i.g, align 8
  store i64 2, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i16, ptr %i.h, align 8, !range !1186, !alias.scope !1187, !noundef !14
  %.not.i = icmp eq i16 %i.i, 2                   ; 2 uses
  %i.j = load i64, ptr %0, align 8, !range !18
  %.not3.i = icmp eq i64 %i.j, 2                  ; 2 uses
  %or.cond = select i1 %.not.i, i1 %.not3.i, i1 false, !prof !1188
  br i1 %or.cond, label %bb.b, label %_RNvXs15_NtNtCs8frGy5WneL6_4fish5input5inputNtB6_14RecurrentQueryNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread, !prof !1188

_RNvXs15_NtNtCs8frGy5WneL6_4fish5input5inputNtB6_14RecurrentQueryNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 192 ; 2 uses
  call void @_RNvYNtNtNtCs8frGy5WneL6_4fish3env11environment8EnvStackNtB4_11Environment16get_unless_emptyB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @79, i64 noundef 30) #43
  %i.l = load ptr, ptr %i.e, align 8, !noundef !14 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit, label %bb.g
end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader9read_char:bb.a
  %i.uc = add nuw nsw i64 %.sroa.0.0.i11.i611, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ub)
          to label %bb.gn unwind label %bb.gp, !noalias !1328

bb.go:                                            ; preds = %.lr.ph615
  %i.ud = add i64 %.sroa.0.1.i.i613, 1            ; 2 uses
  %i.ue = icmp eq i64 %i.ud, %i.ty
  br i1 %i.ue, label %.body12.i, label %.lr.ph615

bb.gp:                                            ; preds = %.lr.ph612
  %i.uf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ug = icmp eq i64 %i.uc, %i.ty
  br i1 %i.ug, label %.body12.i, label %.lr.ph615

.lr.ph615:                                        ; preds = %bb.gp, %bb.go
  %.sroa.0.1.i.i613 = phi i64 [ %i.ud, %bb.go ], [ %i.uc, %bb.gp ] ; 2 uses
  %i.uh = getelementptr inbounds nuw [48 x i8], ptr %i.tx, i64 %.sroa.0.1.i.i613
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.uh) #36
          to label %bb.go unwind label %bb.gq, !noalias !1328

bb.gq:                                            ; preds = %.lr.ph615
  %i.ui = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1328
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i: ; preds = %bb.gu, %bb.gr
  %eh.lpad-body15.i = phi { ptr, i32 } [ %i.um, %bb.gu ], [ %i.uk, %bb.gr ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uj, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1328
  br label %.body12.i

._crit_edge:                                      ; preds = %bb.gn, %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1327
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1326, !nonnull !14, !align !19, !noundef !14
  %i.uj = getelementptr inbounds nuw i8, ptr %.val.i, i64 1472 ; 5 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uj)
          to label %bb.gs unwind label %bb.gr, !noalias !1328

bb.gr:                                            ; preds = %._crit_edge
  %i.uk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i unwind label %bb.gt, !noalias !1328

bb.gs:                                            ; preds = %._crit_edge
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uj)
          to label %bb.gx unwind label %bb.gu, !noalias !1328

bb.gt:                                            ; preds = %bb.gr
  %i.ul = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1328
  unreachable

bb.gu:                                            ; preds = %bb.gs
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i

bb.gv:                                            ; preds = %.thread.i92, %.body12.i
  %i.un = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1328
  unreachable

.thread.i92:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gh, %bb.gb
  %.pn.pn.pn19.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.gb ], [ %i.tr, %bb.gh ], [ %lpad.loopexit.split-lp619, %.loopexit.split-lp.loopexit.split-lp.i91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #36
          to label %.thread132 unwind label %bb.gv, !noalias !1328

.body109:                                         ; preds = %bb.hv, %bb.gw, %bb.hz
  %.pn27 = phi { ptr, i32 } [ %.pn25, %bb.hz ], [ %i.uq, %bb.gw ], [ %i.wj, %bb.hv ] ; 2 uses
  %i.uo = load i64, ptr %i.bz, align 8, !range !27, !noundef !14
  %i.up = icmp sgt i64 %i.uo, -1
  br i1 %i.up, label %.thread132, label %bb.ib

bb.gw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.gx:                                            ; preds = %bb.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uj, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1327
  %.val43 = load i8, ptr %i.cb, align 8, !range !39, !noundef !14 ; 2 uses
  %i.ur = icmp eq i8 %.val43, 98
  %i.us = load i64, ptr %i.bz, align 8, !range !27
  %i.ut = icmp sgt i64 %i.us, -1                  ; 2 uses
  %or.cond = select i1 %i.ur, i1 %i.ut, i1 false
  br i1 %or.cond, label %.thread145, label %bb.gy

.thread145:                                       ; preds = %bb.gx
  %i.uu = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  store i8 1, ptr %i.uu, align 4
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.uv = icmp eq i8 %.val43, 57
  %or.cond36 = select i1 %i.uv, i1 %i.ut, i1 false
  br i1 %or.cond36, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %.thread145, %bb.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 48, i1 false)
  br label %bb.hx

bb.ha:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store i64 0, ptr %i.bx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.uw = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.ux = load i8, ptr %i.uw, align 4, !range !20, !alias.scope !1331, !noundef !14 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.by, i64 29
  %i.uz = load i8, ptr %i.uy, align 1, !range !20, !alias.scope !1331, !noundef !14 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.by, i64 30
  %i.vb = load i8, ptr %i.va, align 2, !range !20, !alias.scope !1331, !noundef !14 ; 2 uses
  %i.vc = trunc nuw i8 %i.vb to i1
  %i.vd = getelementptr inbounds nuw i8, ptr %i.by, i64 31
  %i.ve = load i8, ptr %i.vd, align 1, !range !20, !alias.scope !1331, !noundef !14
  %i.vf = trunc nuw i8 %i.ve to i1
  %i.vg = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.vh = load i32, ptr %i.vg, align 8, !range !31, !alias.scope !1331, !noundef !14 ; 2 uses
  %i.vi = icmp ne i32 %i.vh, 0
  %or.cond.i = and i1 %i.vi, %i.vc
  br i1 %or.cond.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.vj = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.vk = load i32, ptr %i.vj, align 8, !range !31, !alias.scope !1331, !noundef !14
  %i.vl = or i8 %i.uz, %i.ux
  %i.vm = or i8 %i.vl, %i.vb
  %or.cond18.not.not.i = icmp eq i8 %i.vm, 0
  br i1 %or.cond18.not.not.i, label %bb.hd, label %select.unfold

bb.hc:                                            ; preds = %bb.ha
  %i.vn = or i8 %i.uz, %i.ux
  %brmerge.not.i = icmp eq i8 %i.vn, 0
  br i1 %brmerge.not.i, label %bb.hd, label %select.unfold

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.sroa.06.0.i = phi i32 [ %i.vh, %bb.hc ], [ %i.vk, %bb.hb ] ; 4 uses
  br i1 %i.vf, label %select.unfold, label %bb.he

bb.he:                                            ; preds = %bb.hd
  switch i32 %.sroa.06.0.i, label %bb.hh [
    i32 62734, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit
    i32 62723, label %bb.hf
    i32 62733, label %bb.hg
  ]

bb.hf:                                            ; preds = %bb.he
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit

bb.hg:                                            ; preds = %bb.he
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit

bb.hh:                                            ; preds = %bb.he
  %i.vo = add nsw i32 %.sroa.06.0.i, -57344
  %or.cond2.i = icmp ult i32 %i.vo, 6400
  %i.vp = icmp samesign ult i32 %.sroa.06.0.i, 28
  %or.cond19.i = select i1 %or.cond2.i, i1 true, i1 %i.vp
  br i1 %or.cond19.i, label %select.unfold, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit

.body105:                                         ; preds = %bb.ht, %bb.hi, %.body100
  %.pn25 = phi { ptr, i32 } [ %.pn23, %.body100 ], [ %i.vq, %bb.hi ], [ %i.wg, %bb.ht ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bx) #36
          to label %bb.hz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i104, %bb.hj
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %.body105

_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit: ; preds = %bb.he, %bb.hf, %bb.hg, %bb.hh
  %.sroa.0.0.i = phi i32 [ 32, %bb.he ], [ %.sroa.06.0.i, %bb.hh ], [ 10, %bb.hf ], [ 9, %bb.hg ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !1332
  %i.vr = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2305) 4, i64 noundef range(i64 1, 9) 4) #39, !noalias !1332 ; 3 uses
  %i.vs = icmp eq ptr %i.vr, null
  br i1 %i.vs, label %bb.hj, label %bb.hk, !prof !34

bb.hj:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #41
          to label %.noexc96 unwind label %bb.hi

.noexc96:                                         ; preds = %bb.hj
  unreachable

select.unfold:                                    ; preds = %bb.hb, %bb.hc, %bb.hd, %bb.hh, %bb.hk
  %.sink505 = phi i64 [ 1, %bb.hk ], [ 0, %bb.hh ], [ 0, %bb.hd ], [ 0, %bb.hc ], [ 0, %bb.hb ] ; 3 uses
  %.sink504 = phi ptr [ %i.vr, %bb.hk ], [ inttoptr (i64 4 to ptr), %bb.hh ], [ inttoptr (i64 4 to ptr), %bb.hd ], [ inttoptr (i64 4 to ptr), %bb.hc ], [ inttoptr (i64 4 to ptr), %bb.hb ] ; 2 uses
  store i64 %.sink505, ptr %i.bt, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %.sink504, ptr %.sroa.4126.0..sroa_idx, align 8
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %.sink505, ptr %.sroa.5127.0..sroa_idx, align 8
  invoke void @_RNvCs5UXtnEuoeIl_11fish_common6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sink504, i64 noundef %.sink505)
          to label %bb.hm unwind label %bb.hl

bb.hk:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit
  store i32 %.sroa.0.0.i, ptr %i.vr, align 4, !noalias !1332
  br label %select.unfold

.body100:                                         ; preds = %bb.hr, %bb.hl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn23 = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.vt, %bb.hl ], [ %i.we, %bb.hr ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt) #36
          to label %.body105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %select.unfold
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %.body100

bb.hm:                                            ; preds = %select.unfold
  %i.vu = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.vv = load ptr, ptr %i.vu, align 8, !nonnull !14, !noundef !14
  %i.vw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.vx = load i64, ptr %i.vw, align 8, !noundef !14
  store i64 1, ptr %i.bv, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.vv, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %i.vx, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bw, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 18, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @60, ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef 1)
          to label %bb.ho unwind label %bb.hn

bb.hn:                                            ; preds = %bb.hp, %bb.hm
  %i.vy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ho:                                            ; preds = %bb.hm
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %i.vz = load i8, ptr %i.bw, align 8, !range !20, !alias.scope !1333, !noundef !14
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %bb.hp, label %.noexc98.preheader, !prof !22

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !1334
  %i.wb = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.wc = load i8, ptr %i.wb, align 1, !range !35, !alias.scope !1333, !noundef !14
  store i8 %i.wc, ptr %i.bf, align 1, !noalias !1334
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 43, ptr noundef nonnull %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #40
          to label %.noexc unwind label %bb.hn

.noexc:                                           ; preds = %bb.hp
  unreachable

.noexc98.preheader:                               ; preds = %bb.ho
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit99 unwind label %bb.hq

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.hn, %bb.hq
  %.pn = phi { ptr, i32 } [ %i.wd, %bb.hq ], [ %i.vy, %bb.hn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bu) #36
          to label %.body100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hq:                                            ; preds = %.noexc98.preheader
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit99: ; preds = %.noexc98.preheader
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.hr

bb.hr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit99
  %i.we = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.body100 unwind label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.wf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit99
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.hl

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i104 unwind label %bb.ht

bb.ht:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.wg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.body105 unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.wh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i104: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit108 unwind label %bb.hi

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit108: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wi, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  store i64 -9223372036854775807, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.by)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.hv

bb.hv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit108
  %i.wj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.by)
          to label %.body109 unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.wk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit108
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.by)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit unwind label %bb.gw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.wl = load i64, ptr %i.bz, align 8, !range !27, !noundef !14
  %i.wm = icmp sgt i64 %i.wl, -1
  br i1 %i.wm, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ca)
  br label %bb.ia

bb.hy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bz)
          to label %bb.hx unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hz:                                            ; preds = %.body105
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.by) #36
          to label %.body109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ia:                                            ; preds = %bb.hx, %bb.fo, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  ret void

bb.ib:                                            ; preds = %.body109
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bz) #36
          to label %.thread132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread135:                                       ; preds = %.thread93.thread.i, %bb.ff, %.thread93.i, %.thread132
  %.pn32130 = phi { ptr, i32 } [ %.pn32131, %.thread132 ], [ %.pn1691.i, %.thread93.i ], [ %i.ri, %bb.ff ], [ %.pn1885.i, %.thread93.thread.i ]
  resume { ptr, i32 } %.pn32130

.thread132:                                       ; preds = %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body109, %bb.ib, %.body, %.thread.i92, %bb.gb, %bb.al
  %.pn32131 = phi { ptr, i32 } [ %.pn.pn.i, %bb.gb ], [ %.pn27, %.body109 ], [ %i.hy, %bb.al ], [ %.pn.pn.pn19.i, %.thread.i92 ], [ %.pn27, %bb.ib ], [ %.pn30, %.body ], [ %lpad.loopexit.split-lp638, %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ca) #36
          to label %.thread135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11insert_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %0, i1 noundef zeroext %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXsA_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeccEINtNtCs3oUPovFnLWP_4core7convert4FromAcj1_E4fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i32 noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.i = load i8, ptr %i.h, align 8, !range !41, !alias.scope !1338, !noundef !14
  %i.j = icmp eq i8 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1339
  %i.k = select i1 %1, i64 552, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1338, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1339
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %bb.g
end_hunk_1
begin_hunk_2_@_RNvMs8_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader17handle_char_event:bb.a
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.6.sroa.10.0.copyload = load i64, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 12 uses
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.6.sroa.11.0.copyload = load i64, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %i.hk = icmp slt i64 %.pr, 0
  %i.hl = add i64 %.pr, -9223372036854775807
  %i.hm = select i1 %i.hk, i64 %i.hl, i64 0
  switch i64 %i.hm, label %bb.cc [
    i64 0, label %bb.cg
    i64 1, label %bb.dh
    i64 2, label %bb.cd
    i64 3, label %bb.ce
    i64 4, label %bb.fx
  ]

bb.cc:                                            ; preds = %bb.ce, %bb.cb
  unreachable

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %.sroa.6.sroa.0.0.copyload, ptr %i.ag, align 8
  %.sroa.6.sroa.9.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.6.sroa.9.0.copyload, ptr %.sroa.6.sroa.9.0..sroa_idx24, align 8
  %.sroa.6.sroa.10.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.6.sroa.10.0.copyload, ptr %.sroa.6.sroa.10.0..sroa_idx30, align 8
  %.cast = inttoptr i64 %.sroa.6.sroa.9.0.copyload to ptr
  %.val124 = load ptr, ptr %i.an, align 8, !nonnull !14, !align !19, !noundef !14
  invoke fastcc void @_RNvMs8_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader13eval_bind_cmd(ptr nonnull %.val124, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.cast, i64 noundef %.sroa.6.sroa.10.0.copyload)
          to label %.noexc153 unwind label %bb.ed

.noexc153:                                        ; preds = %bb.cd
  %i.hn = invoke noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader15set_shell_modes(i32 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 12)
          to label %bb.ee unwind label %bb.ed     ; 0 uses

bb.ce:                                            ; preds = %bb.cb
  switch i64 %.sroa.6.sroa.0.0.copyload, label %bb.cc [
    i64 0, label %bb.eh
    i64 1, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData17save_screen_state.exit
    i64 2, label %bb.ei
    i64 3, label %bb.ej
    i64 4, label %bb.eo
    i64 5, label %bb.fh
    i64 6, label %bb.fi
  ]

bb.cf:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cx
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.af) #36
          to label %.thread unwind label %bb.df

bb.cg:                                            ; preds = %bb.cb
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.pr, ptr %i.af, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.6.sroa.9.0.copyload, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx12.sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %.sroa.6.sroa.10.0.copyload, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx12.sroa_idx, align 8
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 %.sroa.6.sroa.11.0.copyload, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx12.sroa_idx, align 8
  %.sroa.10.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx13, align 8
  %i.hp = and i64 %.sroa.10.0.copyload, 1095216660480
  %.not280 = icmp eq i64 %i.hp, 0
  %i.hq = lshr i64 %.sroa.6.sroa.10.0.copyload, 32 ; 2 uses
  %i.hr = lshr i64 %.sroa.6.sroa.10.0.copyload, 40 ; 2 uses
  %i.hs = lshr i64 %.sroa.6.sroa.10.0.copyload, 48 ; 2 uses
  %i.ht = trunc i64 %.sroa.6.sroa.11.0.copyload to i32 ; 2 uses
  %i.hu = trunc i64 %.sroa.6.sroa.10.0.copyload to i32
  %.phi.trans.insert319 = getelementptr inbounds nuw i8, ptr %.val106, i64 416
  %.pre = load i64, ptr %.phi.trans.insert319, align 8, !range !28 ; 2 uses
  br i1 %.not280, label %._crit_edge318, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not.i155 = icmp eq i64 %.pre, 0
  br i1 %.not.i155, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.hv = getelementptr inbounds nuw i8, ptr %.val106, i64 1248
  %i.hw = load i64, ptr %i.hv, align 8, !range !28, !alias.scope !1584, !noundef !14
  %i.hx = icmp ne i64 %i.hw, 0
  %i.hy = getelementptr inbounds nuw i8, ptr %.val106, i64 689
  %i.hz = load i8, ptr %i.hy, align 1, !range !20, !alias.scope !1584
  %i.ia = trunc nuw i8 %i.hz to i1
  %or.cond.i = select i1 %i.hx, i1 %i.ia, i1 false
  br i1 %or.cond.i, label %bb.ck, label %bb.cl

bb.cj:                                            ; preds = %bb.ch
  %.old1.i = getelementptr inbounds nuw i8, ptr %.val106, i64 689
  %.old2.i = load i8, ptr %.old1.i, align 1, !range !20, !alias.scope !1584, !noundef !14
  %.old3.i = trunc nuw i8 %.old2.i to i1
  br i1 %.old3.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ib = getelementptr inbounds nuw i8, ptr %.val106, i64 432
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ci, %bb.cj, %bb.ck
  %.sroa.04.0.i = phi ptr [ %i.ib, %bb.ck ], [ %.val106, %bb.cj ], [ %.val106, %bb.ci ]
  %i.ic = getelementptr i8, ptr %.sroa.04.0.i, i64 120
  %.val119 = load i64, ptr %i.ic, align 8, !noundef !14
  %i.id = icmp eq i64 %.val119, 0
  br i1 %i.id, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread, label %._crit_edge318

._crit_edge318:                                   ; preds = %bb.cg, %bb.cl
  %.not.i156 = icmp eq i64 %.pre, 0
  br i1 %.not.i156, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %._crit_edge318
  %i.ie = getelementptr inbounds nuw i8, ptr %.val106, i64 1248
  %i.if = load i64, ptr %i.ie, align 8, !range !28, !alias.scope !1585, !noundef !14
  %i.ig = icmp ne i64 %i.if, 0
  %i.ih = getelementptr inbounds nuw i8, ptr %.val106, i64 689
  %i.ii = load i8, ptr %i.ih, align 1, !range !20, !alias.scope !1585
  %i.ij = trunc nuw i8 %i.ii to i1
  %or.cond.i162 = select i1 %i.ig, i1 %i.ij, i1 false
  br i1 %or.cond.i162, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %._crit_edge318
  %.old1.i157 = getelementptr inbounds nuw i8, ptr %.val106, i64 689
  %.old2.i158 = load i8, ptr %.old1.i157, align 1, !range !20, !alias.scope !1585, !noundef !14
  %.old3.i159 = trunc nuw i8 %.old2.i158 to i1
  br i1 %.old3.i159, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %.sroa.0.0.i161 = phi i1 [ true, %bb.co ], [ false, %bb.cn ], [ false, %bb.cm ] ; 2 uses
  %i.ik = trunc i64 %i.hs to i1
  %i.il = and i64 %.sroa.6.sroa.10.0.copyload, 72057594037927936
  %.not333 = icmp eq i64 %i.il, 0
  %i.im = icmp ne i32 %i.ht, 0
  %or.cond.i164 = and i1 %i.im, %i.ik
  br i1 %or.cond.i164, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.in = or i64 %i.hq, %i.hs
  %i.io = or i64 %i.in, %i.hr
  %i.ip = and i64 %i.io, 255
  %or.cond18.not.not.i = icmp eq i64 %i.ip, 0
  br i1 %or.cond18.not.not.i, label %bb.cs, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread

bb.cr:                                            ; preds = %bb.cp
  %i.iq = or i64 %i.hr, %i.hq
  %i.ir = and i64 %i.iq, 255
  %brmerge.not.i = icmp eq i64 %i.ir, 0
  br i1 %brmerge.not.i, label %bb.cs, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.06.0.i = phi i32 [ %i.ht, %bb.cr ], [ %i.hu, %bb.cq ] ; 4 uses
  br i1 %.not333, label %bb.ct, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread

bb.ct:                                            ; preds = %bb.cs
  switch i32 %.sroa.06.0.i, label %bb.cw [
    i32 62734, label %bb.cx
    i32 62723, label %bb.cu
    i32 62733, label %bb.cv
  ]

bb.cu:                                            ; preds = %bb.ct
  br label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  br label %bb.cx

bb.cw:                                            ; preds = %bb.ct
  %i.is = add nsw i32 %.sroa.06.0.i, -57344
  %or.cond2.i = icmp ult i32 %i.is, 6400
  %i.it = icmp samesign ult i32 %.sroa.06.0.i, 28
  %or.cond19.i = select i1 %or.cond2.i, i1 true, i1 %i.it
  br i1 %or.cond19.i, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %.sroa.0.0.i165 = phi i32 [ 32, %bb.ct ], [ %.sroa.06.0.i, %bb.cw ], [ 10, %bb.cu ], [ 9, %bb.cv ]
  invoke fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11insert_char(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val106, i1 noundef zeroext %.sroa.0.0.i161, i32 noundef %.sroa.0.0.i165)
          to label %bb.cy unwind label %bb.cf

bb.cy:                                            ; preds = %bb.cx
  %.val93.pre320 = load ptr, ptr %0, align 8      ; 2 uses
  br i1 %.sroa.0.0.i161, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke fastcc void @_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11clear_pager(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val93.pre320)
          to label %bb.da unwind label %bb.cf

bb.da:                                            ; preds = %bb.cz
  %.val90 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14
  %i.iu = getelementptr inbounds nuw i8, ptr %.val90, i64 1624
  invoke void @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch5reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.iu)
          to label %._RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread_crit_edge unwind label %bb.cf

._RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread_crit_edge: ; preds = %bb.da
  %.val93.pre = load ptr, ptr %0, align 8
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread

_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread: ; preds = %._RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread_crit_edge, %bb.cw, %bb.cq, %bb.cr, %bb.cs, %bb.cl, %bb.cy
  %.val93 = phi ptr [ %.val93.pre, %._RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread_crit_edge ], [ %.val106, %bb.cw ], [ %.val106, %bb.cq ], [ %.val106, %bb.cr ], [ %.val106, %bb.cs ], [ %.val106, %bb.cl ], [ %.val93.pre320, %bb.cy ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.val93, i64 2258
  %i.iw = load i8, ptr %i.iv, align 2, !range !13, !alias.scope !1586, !noundef !14
  %.not.i166 = icmp eq i8 %i.iw, 2
  br i1 %.not.i166, label %bb.db, label %bb.dc, !prof !22

bb.db:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #40
          to label %.noexc167 unwind label %bb.cf

.noexc167:                                        ; preds = %bb.db
  unreachable

bb.dc:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread
  %i.ix = getelementptr inbounds nuw i8, ptr %.val93, i64 2256
  store i8 -1, ptr %i.ix, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %.thread unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.dc
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData17save_screen_state.exit

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData17save_screen_state.exit: ; preds = %bb.el, %bb.en, %bb.eh, %bb.gm, %bb.ce, %bb.fg, %bb.fh, %bb.fw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i189, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit

bb.df:                                            ; preds = %bb.gt, %bb.fk, %bb.eq, %bb.ed, %bb.dg, %bb.cf
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.dg:                                            ; preds = %.invoke340, %bb.dx, %bb.dw, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread268, %bb.dm
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input16ReadlineCmdEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ah) #36
          to label %.thread unwind label %bb.df

bb.dh:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.6.sroa.0.0.copyload, ptr %i.ah, align 8
  %.sroa.6.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.6.sroa.9.0.copyload, ptr %.sroa.6.sroa.9.0..sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.6.sroa.10.0.copyload, ptr %.sroa.6.sroa.10.0..sroa_idx, align 8
  %.sroa.6.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %.sroa.6.sroa.11.0.copyload, ptr %.sroa.6.sroa.11.0..sroa_idx, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %.val106, i64 2258
  %i.jd = load i8, ptr %i.jc, align 2, !range !13, !alias.scope !1587, !noundef !14
  %.not.i172 = icmp eq i8 %i.jd, 2
  %i.je = trunc i64 %.sroa.6.sroa.11.0.copyload to i8 ; 6 uses
  br i1 %.not.i172, label %.invoke340, label %bb.di, !prof !22

bb.di:                                            ; preds = %bb.dh
  %i.jf = getelementptr inbounds nuw i8, ptr %.val106, i64 2256
  %i.jg = load i8, ptr %i.jf, align 8, !range !44, !noundef !14
  %.off = add nsw i8 %i.jg, -109
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jh = getelementptr inbounds nuw i8, ptr %.val106, i64 2240
  store i64 0, ptr %i.jh, align 8
  %.val101.pre313.pre = load ptr, ptr %0, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.val101.pre313 = phi ptr [ %.val101.pre313.pre, %bb.dj ], [ %.val106, %bb.di ] ; 5 uses
  %i.ji = icmp eq i8 %i.je, 23                    ; 2 uses
  br i1 %i.ji, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.jj = getelementptr i8, ptr %.val101.pre313, i64 416
  %.val125 = load i64, ptr %i.jj, align 8, !range !28, !noundef !14
  %i.jk = getelementptr i8, ptr %.val101.pre313, i64 1248
  %.val126 = load i64, ptr %i.jk, align 8
  %.not.i178 = icmp ne i64 %.val125, 0
  %i.jl = trunc nuw i64 %.val126 to i1
  %.sroa.0.0.i179 = select i1 %.not.i178, i1 true, i1 %i.jl
  br i1 %.sroa.0.0.i179, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  invoke fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20clear_transient_edit(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val101.pre313)
          to label %._crit_edge312 unwind label %bb.dg

._crit_edge312:                                   ; preds = %bb.dm
  %.val101.pre = load ptr, ptr %0, align 8
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge312, %bb.dk, %bb.dl
  %.val101 = phi ptr [ %.val101.pre, %._crit_edge312 ], [ %.val101.pre313, %bb.dk ], [ %.val101.pre313, %bb.dl ] ; 6 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val101, i64 416
  %i.jn = load i64, ptr %i.jm, align 8, !range !28, !alias.scope !1588, !noundef !14
  %.not.i180 = icmp eq i64 %i.jn, 0
  br i1 %.not.i180, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.jo = getelementptr inbounds nuw i8, ptr %.val101, i64 1248
  %i.jp = load i64, ptr %i.jo, align 8, !range !28, !alias.scope !1588, !noundef !14
  %i.jq = icmp ne i64 %i.jp, 0
  %i.jr = getelementptr inbounds nuw i8, ptr %.val101, i64 689
  %i.js = load i8, ptr %i.jr, align 1, !range !20, !alias.scope !1588
  %i.jt = trunc nuw i8 %i.js to i1
  %or.cond.i185 = select i1 %i.jq, i1 %i.jt, i1 false
  br i1 %or.cond.i185, label %bb.dq, label %bb.dr

bb.dp:                                            ; preds = %bb.dn
  %.old1.i181 = getelementptr inbounds nuw i8, ptr %.val101, i64 689
  %.old2.i182 = load i8, ptr %.old1.i181, align 1, !range !20, !alias.scope !1588, !noundef !14
  %.old3.i183 = trunc nuw i8 %.old2.i182 to i1
  br i1 %.old3.i183, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp, %bb.do
  br label %bb.dr

bb.dr:                                            ; preds = %bb.do, %bb.dp, %bb.dq
  %i.ju = phi i1 [ false, %bb.dq ], [ true, %bb.dp ], [ true, %bb.do ]
  %i.jv = getelementptr i8, ptr %.val101, i64 1920
  %.val128 = load i8, ptr %i.jv, align 8, !range !41, !noundef !14
  %.not278 = icmp eq i8 %.val128, 0
  br i1 %.not278, label %bb.ds, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread268

bb.ds:                                            ; preds = %bb.dr
  switch i8 %i.je, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread268 [
    i8 0, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 2, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 110, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 109, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 6, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 9, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 10, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 11, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 12, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 13, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 15, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 16, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 20, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 108, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 22, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 23, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 24, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 25, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 26, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 105, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 104, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 30, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 31, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 103, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 34, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 35, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 98, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 37, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 97, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 44, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 46, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 91, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 90, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 87, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 53, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 54, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 56, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 57, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 59, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 60, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 86, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 63, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 64, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 65, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 66, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 67, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 68, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 75, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 76, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 78, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 80, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 83, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 84, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 85, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
  ]

_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit: ; preds = %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds
  br i1 %i.ju, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread268

_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread268: ; preds = %bb.ds, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread, %bb.dr, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
  invoke fastcc void @_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i8 noundef %i.je)
          to label %bb.dt unwind label %bb.dg

end_hunk_2
begin_hunk_3_@_RNvMs8_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader17handle_char_event:bb.a
  store i48 %.sroa.036.sroa.8.0.extract.trunc, ptr %.sroa.443.0..sroa_idx, align 2
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val106, i64 1408
  store i16 %.sroa.9.2.extract.trunc, ptr %.sroa.544.0..sroa_idx, align 8
  br label %.thread271

bb.gd:                                            ; preds = %bb.gb
  %i.pq = icmp eq i64 %i.pm, 0
  br i1 %i.pq, label %._crit_edge307, label %.thread271

bb.ge:                                            ; preds = %bb.gb
  store i64 1, ptr %i.pg, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val106, i64 1376
  store i64 %.sroa.6.sroa.9.0.copyload, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val106, i64 1384
  store i64 %.sroa.6.sroa.10.0.copyload, ptr %.sroa.547.0..sroa_idx, align 8
  br label %.thread271

._crit_edge307:                                   ; preds = %bb.fy, %bb.gd
  %.sroa.10.32..sroa_idx249 = getelementptr inbounds nuw i8, ptr %.val106, i64 1402
  %i.pr = load i64, ptr %.sroa.10.32..sroa_idx249, align 2, !alias.scope !1599
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val106, i64 1384
  %.sroa.5245.0.copyload = load i64, ptr %.sroa.5245.0..sroa_idx, align 8, !alias.scope !1599 ; 2 uses
  %.not67 = icmp eq i64 %i.ph, 2
  br i1 %.not67, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %._crit_edge307
  %.sroa.6246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val106, i64 1392
  %.sroa.6246.0.copyload = load i8, ptr %.sroa.6246.0..sroa_idx, align 8, !alias.scope !1599
  %i.ps = trunc nuw i8 %.sroa.6246.0.copyload to i1 ; 3 uses
  %. = select i1 %i.ps, i64 45, i64 35
  %.77 = select i1 %i.ps, ptr @134, ptr @133
  %i.pt = trunc nuw i64 %i.ph to i1               ; 2 uses
  %i.pu = select i1 %i.pt, i1 %i.ps, i1 false
  %.mux = select i1 %i.pt, i64 %.sroa.5245.0.copyload, i64 undef
  br i1 %i.pu, label %bb.gh, label %bb.gi

bb.gg:                                            ; preds = %bb.gi, %._crit_edge307
  %.not68 = icmp eq i16 %i.pk, 2
  br i1 %.not68, label %bb.gm, label %bb.gj

bb.gh:                                            ; preds = %bb.gf
  %i.pv = getelementptr inbounds nuw i8, ptr %.val106, i64 992
  %i.pw = call noundef i64 @_RNvMs1_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen29command_line_y_given_cursor_y(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.pv, i64 noundef %.sroa.5245.0.copyload)
  %.val79.pre = load ptr, ptr %0, align 8
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gf
  %.val79 = phi ptr [ %.val106, %bb.gf ], [ %.val79.pre, %bb.gh ]
  %.sroa.350.0 = phi i64 [ %.mux, %bb.gf ], [ %i.pw, %bb.gh ]
  %i.px = getelementptr inbounds nuw i8, ptr %.val79, i64 992
  call void @_RNvMs1_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen24set_position_in_viewport(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.px, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.77, i64 noundef %., i64 noundef %i.ph, i64 %.sroa.350.0)
  br label %bb.gg

bb.gj:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i16 %i.pk, ptr %i.q, align 2
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  store i64 %i.pr, ptr %.sroa.10.32..sroa_idx, align 2
  %i.py = trunc nuw i16 %i.pk to i1
  br i1 %i.py, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.pz = load ptr, ptr %i.an, align 8, !nonnull !14, !align !19, !noundef !14
  call void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser15set_color_theme(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.pz, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.10.32..sroa_idx)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gg
  %.val = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14
  %i.qa = getelementptr inbounds nuw i8, ptr %.val, i64 1368 ; 2 uses
  %.sroa.0.0.copyload.i217 = load i64, ptr %i.qa, align 8, !alias.scope !1600
  store i64 -2, ptr %i.qa, align 8, !alias.scope !1600
  %.not277 = icmp eq i64 %.sroa.0.0.copyload.i217, -2
  br i1 %.not277, label %bb.gn, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData17save_screen_state.exit, !prof !22

bb.gn:                                            ; preds = %bb.gm
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit: ; preds = %bb.gr, %bb.gq, %.thread271, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData17save_screen_state.exit
  %.sroa.0.1 = phi i1 [ false, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData17save_screen_state.exit ], [ false, %.thread271 ], [ true, %bb.gq ], [ true, %bb.gr ]
  ret i1 %.sroa.0.1

.thread271:                                       ; preds = %bb.gp, %bb.ca, %bb.gc, %bb.ge, %bb.fx, %bb.gd, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit

bb.go:                                            ; preds = %bb.bz
  br i1 %.not74, label %.thread271, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj)
  br label %.thread271

bb.gq:                                            ; preds = %bb.by
  store i8 1, ptr %i.br, align 2
  %i.qb = load i64, ptr %1, align 8, !range !40, !alias.scope !1601, !noundef !14
  %i.qc = icmp eq i64 %i.qb, -1
  br i1 %i.qc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit

.thread:                                          ; preds = %bb.cf, %bb.dg, %bb.ed, %bb.eq, %bb.fk, %bb.dd, %bb.dz, %bb.ef, %bb.gs, %bb.gt, %bb.bw, %.body.i
  %.pn75253 = phi { ptr, i32 } [ %eh.lpad-body257, %bb.gt ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body257, %bb.gs ], [ %eh.lpad-body.i, %bb.bw ], [ %i.ns, %bb.fk ], [ %i.ho, %bb.cf ], [ %i.jb, %bb.dg ], [ %i.kf, %bb.ed ], [ %i.ll, %bb.eq ], [ %i.jz, %bb.dz ], [ %i.iy, %bb.dd ], [ %i.kh, %bb.ef ]
  resume { ptr, i32 } %.pn75253

bb.gs:                                            ; preds = %.thread262, %.thread254
  %eh.lpad-body257 = phi { ptr, i32 } [ %i.bp, %.thread254 ], [ %lpad.thr_comm, %.thread262 ] ; 2 uses
  %i.qd = load i64, ptr %1, align 8, !range !40, !alias.scope !1602, !noundef !14
  %i.qe = icmp eq i64 %i.qd, -1
  br i1 %i.qe, label %.thread, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.thread unwind label %bb.df
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs8_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader8readline(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [56 x i8], align 8                ; 15 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [216 x i8], align 8               ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [128 x i8], align 8               ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 3 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs1_NtCs8frGy5WneL6_4fish11tty_handoffNtB5_10TtyHandoff3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader24reader_save_screen_state)
  %.val20 = load ptr, ptr %1, align 8, !nonnull !14, !align !19, !noundef !14 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val20, i64 2240
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val20, i64 2248
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val20, i64 2256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i8 -1, ptr %.sroa.580.0..sroa_idx, align 8
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val20, i64 2257
  store i8 2, ptr %.sroa.681.0..sroa_idx, align 1
  %.sroa.782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val20, i64 2258 ; 2 uses
  store i8 0, ptr %.sroa.782.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !14, !align !19, !noundef !14
  invoke void @_RINvMs5_NtCs8frGy5WneL6_4fish6parserNtB6_6Parser10push_scopeNCNvMs8_NtNtB8_6reader6readerNtB14_6Reader8readline0EB8_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.r, ptr noundef nonnull align 8 %i.v)
          to label %bb.c unwind label %bb.b

.body75:                                          ; preds = %bb.dh, %bb.b, %.body
  %.pn10 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.w, %bb.b ], [ %i.ij, %bb.dh ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish11tty_handoff10TtyHandoffEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #36
          to label %common.resume unwind label %bb.dt

bb.b:                                             ; preds = %bb.dk, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.au, %bb.bk, %bb.bl, %.body.i.i.i, %bb.bv, %bb.bw, %bb.by, %bb.ag, %bb.cz
  %.pn = phi { ptr, i32 } [ %.pn8.i.i, %bb.by ], [ %i.hm, %bb.cz ], [ %i.bu, %bb.ag ], [ %i.gb, %bb.bw ], [ %i.ed, %bb.au ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fl, %bb.bk ], [ %i.fl, %bb.bl ], [ %i.gb, %bb.bv ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs8_NtNtB1Q_6reader6readerNtB2N_6Reader8readline0E0EEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r) #36
          to label %.body75 unwind label %bb.dt

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %bb.aq, %.noexc59, %bb.ap, %bb.v, %bb.u, %bb.s, %.invoke135, %.invoke, %bb.dc, %bb.ch, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader23get_highlight_performer0B7_.exit.i, %bb.at, %.noexc57, %bb.ao, %bb.ah, %bb.af, %bb.q, %bb.o, %bb.aa, %bb.ab, %bb.cy, %bb.cu, %bb.cs, %bb.cq, %bb.cp, %bb.cn, %bb.ck, %bb.cj, %bb.cd, %bb.ca, %.loopexit103, %bb.y, %bb.m, %bb.j, %bb.h, %bb.g, %bb.d
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.x = load i8, ptr %.sroa.782.0..sroa_idx, align 2, !range !13, !alias.scope !1655, !noundef !14
  %.not.i = icmp eq i8 %i.x, 2
  br i1 %.not.i, label %.invoke135, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  store i64 %3, ptr %.sroa.479.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.val20, i64 2016
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val20, i64 2272
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val20, i64 1624
  invoke void @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch5reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.aa)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %.val35 = load ptr, ptr %1, align 8, !nonnull !14, !align !19, !noundef !14 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val35, i64 2286
  %i.ac = load i8, ptr %i.ab, align 2, !range !20, !noundef !14
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.val35, i64 1619
  %i.af = load i8, ptr %i.ae, align 1, !range !20, !noundef !14
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ah = invoke { i16, i16 } @_RNvNtCs8frGy5WneL6_4fish8termsize13termsize_last()
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.ai = extractvalue { i16, i16 } %i.ah, 0
  %i.aj = zext i16 %i.ai to i64
  %not. = xor i1 %i.ad, true
  %. = zext i1 %not. to i64
  %.val15 = load ptr, ptr %1, align 8, !nonnull !14, !align !19, !noundef !14
  %i.ak = getelementptr inbounds nuw i8, ptr %.val15, i64 992
  invoke void @_RNvMs1_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen21reset_abandoning_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.ak, i64 noundef %., i64 %i.aj)
          to label %._crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.h
  %.val14.pre = load ptr, ptr %1, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.val14 = phi ptr [ %.val14.pre, %._crit_edge ], [ %.val35, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val14, i64 2286
  store i8 0, ptr %i.al, align 2
  %.val32 = load ptr, ptr %1, align 8, !nonnull !14, !align !19, !noundef !14 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val32, i64 1600
  %i.an = load i64, ptr %i.am, align 8, !noundef !14 ; 5 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.u, align 8, !nonnull !14, !align !19, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.aq = getelementptr inbounds nuw i8, ptr %.val32, i64 1592
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !14, !align !30, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.an, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.as = load i64, ptr %i.k, align 8, !range !28, !noundef !14
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !29, !noundef !14 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.at, label %bb.l, label %bb.m, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.ax = load i64, ptr %i.aw, align 8
  br label %.invoke

bb.m:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr %i.aw, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.az = icmp ule i64 %i.an, %i.av
  call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ba = shl nuw nsw i64 %i.an, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr nonnull align 4 %i.ar, i64 %i.ba, i1 false)
  store i64 %i.av, ptr %i.q, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ay, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.an, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.bc, align 8
  invoke void @_RNvNtCs8frGy5WneL6_4fish5event12fire_generic(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.val43.pre = load ptr, ptr %1, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n
  %.val43 = phi ptr [ %.val32, %bb.i ], [ %.val43.pre, %bb.n ]
  %.val44 = load ptr, ptr %i.u, align 8, !nonnull !14, !align !19, !noundef !14
  invoke fastcc void @_RNvMse_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader11exec_prompt(ptr %.val43, ptr %.val44, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.cy, %bb.cq
  unreachable

bb.q:                                             ; preds = %bb.o
  %.val13 = load ptr, ptr %1, align 8, !nonnull !14, !align !19, !noundef !14
  %i.bd = getelementptr inbounds nuw i8, ptr %.val13, i64 2293
  store i8 1, ptr %i.bd, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i16 0, ptr %i.be, align 8
  store i64 0, ptr %i.o, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i8 0, ptr %.sroa.592.0..sroa_idx, align 8
  %.val45 = load ptr, ptr %1, align 8
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader5query(ptr %.val45, ptr %.val46, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(48) %i.o)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.s

bb.s:                                             ; preds = %bb.x, %bb.r
  %i.bf = invoke noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader29check_exit_loop_maybe_warning(ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(16) %1)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  br i1 %i.bf, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs1_NtCs8frGy5WneL6_4fish11tty_handoffNtB5_10TtyHandoff20enable_tty_protocols(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 -1, ptr %i.n, align 8
  %i.bg = invoke fastcc noundef zeroext i1 @_RNvMs8_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader17handle_char_event(ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.bg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val30 = load ptr, ptr %1, align 8, !nonnull !14, !align !19, !noundef !14
  %i.bh = getelementptr inbounds nuw i8, ptr %.val30, i64 2258
  %i.bi = load i8, ptr %i.bh, align 2, !range !13, !alias.scope !1656, !noundef !14
  switch i8 %i.bi, label %bb.y [
    i8 2, label %.invoke135
    i8 0, label %bb.s
  ], !prof !1657

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.t
  invoke void @_RNvMs1_NtCs8frGy5WneL6_4fish11tty_handoffNtB5_10TtyHandoff21disable_tty_protocols(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %.val29 = load ptr, ptr %1, align 8, !nonnull !14, !align !19, !noundef !14 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val29, i64 1616
  %i.bk = load i8, ptr %i.bj, align 8, !range !20, !noundef !14
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.val42 = load ptr, ptr %i.u, align 8, !nonnull !14, !align !19, !noundef !14
  invoke fastcc void @_RNvMse_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader11exec_prompt(ptr nonnull %.val29, ptr %.val42, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %._crit_edge113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge113:                                   ; preds = %bb.aa
  %.val36.pre = load ptr, ptr %1, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge113, %bb.z
  %.val36 = phi ptr [ %.val36.pre, %._crit_edge113 ], [ %.val29, %bb.z ]
  %i.bm = invoke fastcc noundef zeroext i1 @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader17is_repaint_needed(ptr nonnull %.val36, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %.val3.i.pre = load ptr, ptr %1, align 8        ; 5 uses
  br i1 %i.bm, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = getelementptr inbounds nuw i8, ptr %.val3.i.pre, i64 1241
  %i.bo = load i8, ptr %i.bn, align 1, !range !20, !noundef !14
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bq = getelementptr inbounds nuw i8, ptr %.val3.i.pre, i64 1608
  %i.br = load i32, ptr %i.bq, align 8, !noundef !14
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1658
  invoke fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader16make_layout_data(ptr noalias nofree noundef align 8 captures(none) dereferenceable(216) %i.j, ptr nonnull %.val3.i.pre)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %bb.af
  %i.bt = getelementptr inbounds nuw i8, ptr %.val3.i.pre, i64 136 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.bt)
          to label %bb.ah unwind label %bb.ag, !noalias !1658

bb.ag:                                            ; preds = %.noexc51
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bt, ptr noundef nonnull align 8 dereferenceable(216) %i.j, i64 216, i1 false), !noalias !1658
  br label %.body

bb.ah:                                            ; preds = %.noexc51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bt, ptr noundef nonnull align 8 dereferenceable(216) %i.j, i64 216, i1 false), !noalias !1658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1658
  invoke fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader12paint_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @78, i64 noundef 18, i1 noundef zeroext true)
          to label %._crit_edge115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge115:                                   ; preds = %bb.ah
  %.val26.pre = load ptr, ptr %1, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge115, %bb.ae
  %.val26 = phi ptr [ %.val26.pre, %._crit_edge115 ], [ %.val3.i.pre, %bb.ae ] ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val26, i64 2258
  %i.bw = load i8, ptr %i.bv, align 2, !range !13, !alias.scope !1659, !noundef !14
  switch i8 %i.bw, label %bb.aj [
    i8 2, label %.invoke135
    i8 0, label %.loopexit103
  ], !prof !1657
end_hunk_3
begin_hunk_4_@_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command:bb.a
switch.lookup2123:                                ; preds = %switch.hole_check2122
  %i.atx = zext nneg i8 %switch.tableidx2120 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command, i64 %i.atx
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.aty = zext nneg i8 %switch.tableidx2120 to i64
  %switch.gep2127 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command.289, i64 %i.aty
  %switch.load2128 = load i8, ptr %switch.gep2127, align 1 ; 2 uses
  %i.atz = getelementptr i8, ptr %.sroa.04.0.i1430, i64 120 ; 2 uses
  %.val853 = load i64, ptr %i.atz, align 8, !noundef !14 ; 3 uses
  %i.aua = icmp eq i64 %.val853, -1
  br i1 %i.aua, label %bb.rb, label %bb.ra

bb.ra:                                            ; preds = %switch.lookup2123
  %i.aub = add nuw i64 %.val853, 1                ; 2 uses
  %i.auc = getelementptr i8, ptr %.sroa.04.0.i1430, i64 48
  %.val757 = load i64, ptr %i.auc, align 8, !noundef !14 ; 2 uses
  %i.aud = icmp ult i64 %.val757, 2305843009213693952
  tail call void @llvm.assume(i1 %i.aud)
  %i.aue = icmp ult i64 %i.aub, %.val757
  br i1 %i.aue, label %bb.rk, label %bb.rc

bb.rb:                                            ; preds = %switch.lookup2123
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #40
  unreachable

bb.rc:                                            ; preds = %._crit_edge1976, %bb.ra
  %i.auf = phi i64 [ %.pre1977, %._crit_edge1976 ], [ %i.atn, %bb.ra ]
  %.not.i1434 = icmp eq i64 %i.auf, 0
  br i1 %.not.i1434, label %bb.rd, label %bb.rf

bb.rd:                                            ; preds = %bb.rc
  %i.aug = getelementptr inbounds nuw i8, ptr %.val572, i64 1248
  %i.auh = load i64, ptr %i.aug, align 8, !range !28, !noundef !14
  %.not2.i1437 = icmp eq i64 %i.auh, 0
  br i1 %.not2.i1437, label %bb.re, label %bb.rf

bb.re:                                            ; preds = %bb.rf, %bb.rd
  %i.aui = getelementptr inbounds nuw i8, ptr %.val572, i64 384
  %i.auj = load i64, ptr %i.aui, align 8, !noundef !14 ; 2 uses
  %i.auk = icmp ult i64 %i.auj, 2305843009213693952
  tail call void @llvm.assume(i1 %i.auk)
  %i.aul = icmp eq i64 %i.auj, 0
  br i1 %i.aul, label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread, label %bb.rg

bb.rf:                                            ; preds = %bb.rd, %bb.rc
  %i.aum = getelementptr inbounds nuw i8, ptr %.val572, i64 689
  %i.aun = load i8, ptr %i.aum, align 1, !range !20, !noundef !14
  %i.auo = trunc nuw i8 %i.aun to i1
  br i1 %i.auo, label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread, label %bb.re

bb.rg:                                            ; preds = %bb.re
  %i.aup = getelementptr inbounds nuw i8, ptr %.val572, i64 2290
  %i.auq = load i8, ptr %i.aup, align 2, !range !20, !noundef !14
  %i.aur = trunc nuw i8 %i.auq to i1
  %i.aus = getelementptr inbounds nuw i8, ptr %.val572, i64 120
  %i.aut = load i64, ptr %i.aus, align 8, !noundef !14 ; 3 uses
  br i1 %i.aur, label %bb.rh, label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438

bb.rh:                                            ; preds = %bb.rg
  %i.auu = icmp eq i64 %i.aut, -1
  br i1 %i.auu, label %bb.rj, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.auv = add nuw i64 %i.aut, 1
  br label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438

bb.rj:                                            ; preds = %bb.rh
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #40
  unreachable

_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438: ; preds = %bb.rg, %bb.ri
  %.sroa.01.0.i1435 = phi i64 [ %i.auv, %bb.ri ], [ %i.aut, %bb.rg ]
  %i.auw = getelementptr inbounds nuw i8, ptr %.val572, i64 400
  %i.aux = load i64, ptr %i.auw, align 8, !noundef !14
  %i.auy = icmp eq i64 %.sroa.01.0.i1435, %i.aux
  br i1 %i.auy, label %bb.rm, label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread

bb.rk:                                            ; preds = %bb.ra
  %i.auz = tail call noundef i32 @_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.04.0.i1430, i64 noundef %.val853)
  %i.ava = tail call noundef i8 %switch.load(i32 noundef %i.auz), !callees !2040 ; 2 uses
  %i.avb = tail call noundef i32 @_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.04.0.i1430, i64 noundef %i.aub)
  %i.avc = tail call noundef i8 %switch.load(i32 noundef %i.avb), !callees !2040
  %switch413 = icmp ult i8 %i.ava, 2
  br i1 %switch413, label %._crit_edge1976, label %bb.rl

._crit_edge1976:                                  ; preds = %bb.rk
  %.pre1977 = load i64, ptr %i.atm, align 8, !range !28
  br label %bb.rc

bb.rl:                                            ; preds = %bb.rk
  %i.avd = tail call fastcc noundef zeroext i1 @_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion(ptr nonnull %.val572)
  br i1 %i.avd, label %bb.rm, label %bb.ro

bb.rm:                                            ; preds = %bb.rl, %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.ave = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %switch.load2128, ptr %i.ave, align 1
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 1, ptr %i.avf, align 2
  store i8 2, ptr %i.ba, align 8
  call fastcc void @_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader21accept_autosuggestion(ptr nonnull %.val572, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread: ; preds = %bb.re, %bb.rf, %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438, %bb.ro
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  %i.avg = getelementptr inbounds nuw i8, ptr %.val572, i64 2258
  %i.avh = load i8, ptr %i.avg, align 2, !range !13, !alias.scope !2041, !noundef !14
  %.not.i1439 = icmp eq i8 %i.avh, 2
  br i1 %.not.i1439, label %bb.rn, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1440, !prof !22

bb.rn:                                            ; preds = %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !2041
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1440: ; preds = %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread
  %i.avi = getelementptr inbounds nuw i8, ptr %.val572, i64 2256
  %i.avj = load i8, ptr %i.avi, align 8, !range !44, !noundef !14
  %i.avk = icmp ne i8 %i.avj, %1
  tail call fastcc void @_RNvMs7_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData9move_word(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val572, i1 noundef zeroext %.sroa.0.0.i1431, i1 noundef zeroext true, i1 noundef zeroext %switch.selectcmp412, i8 noundef %switch.load2128, i1 noundef zeroext %i.avk, i1 noundef zeroext true)
  switch i8 %1, label %bb.rp [
    i8 85, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit
    i8 75, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit
  ]

bb.ro:                                            ; preds = %bb.rl
  %.not386 = icmp eq i8 %i.avc, %i.ava
  br i1 %.not386, label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread, label %switch.early.test

switch.early.test:                                ; preds = %bb.ro
  switch i8 %1, label %bb.rr [
    i8 85, label %bb.rs
    i8 75, label %bb.rs
  ]

bb.rp:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1440
  %.sroa.0.0.idx.i1441 = select i1 %.sroa.0.0.i1431, i64 432, i64 0
  %.sroa.0.0.i1442 = getelementptr inbounds nuw i8, ptr %.val572, i64 %.sroa.0.0.idx.i1441 ; 2 uses
  %i.avl = getelementptr i8, ptr %.sroa.0.0.i1442, i64 120
  %.val851 = load i64, ptr %i.avl, align 8, !noundef !14 ; 2 uses
  %i.avm = getelementptr i8, ptr %.sroa.0.0.i1442, i64 48
  %.val756 = load i64, ptr %i.avm, align 8, !noundef !14 ; 2 uses
  %i.avn = icmp ult i64 %.val756, 2305843009213693952
  tail call void @llvm.assume(i1 %i.avn)
  %i.avo = icmp ult i64 %.val851, %.val756
  br i1 %i.avo, label %bb.rq, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.rq:                                            ; preds = %bb.rp
  %i.avp = add nuw nsw i64 %.val851, 1
  %i.avq = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val572, i1 noundef zeroext %.sroa.0.0.i1431, i64 noundef 1, i64 %i.avp) ; 0 uses
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.rr:                                            ; preds = %switch.early.test
  %.val850 = load i64, ptr %i.atz, align 8, !noundef !14 ; 2 uses
  %i.avr = icmp eq i64 %.val850, -1
  br i1 %i.avr, label %bb.ru, label %bb.rt

bb.rs:                                            ; preds = %switch.early.test, %switch.early.test
  tail call fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11delete_char(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val572, i1 noundef zeroext false)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.rt:                                            ; preds = %bb.rr
  %i.avs = add nuw i64 %.val850, 1
  %i.avt = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val572, i1 noundef zeroext %.sroa.0.0.i1431, i64 noundef 1, i64 %i.avs) ; 0 uses
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.ru:                                            ; preds = %bb.rr
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #40
  unreachable

bb.rv:                                            ; preds = %bb.cg
  %i.avu = getelementptr inbounds nuw i8, ptr %.val661, i64 1256
  %i.avv = load i64, ptr %i.avu, align 8, !noundef !14
  %i.avw = icmp eq i64 %i.avv, 0
  br i1 %i.avw, label %bb.rx, label %bb.ry

bb.rw:                                            ; preds = %bb.cg
  %i.avx = getelementptr inbounds nuw i8, ptr %.val661, i64 416 ; 2 uses
  %i.avy = getelementptr i8, ptr %.val661, i64 608
  %.val995 = load i64, ptr %i.avy, align 8, !noundef !14 ; 2 uses
  %i.avz = icmp ult i64 %.val995, 64051194700380388
  tail call void @llvm.assume(i1 %i.avz)
  %i.awa = icmp eq i64 %.val995, 0
  br i1 %i.awa, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.rz

bb.rx:                                            ; preds = %bb.rv
  %i.awb = getelementptr i8, ptr %.val661, i64 48
  %.val755 = load i64, ptr %i.awb, align 8, !noundef !14 ; 2 uses
  %i.awc = icmp ult i64 %.val755, 2305843009213693952
  tail call void @llvm.assume(i1 %i.awc)
  tail call fastcc void @_RNvMsc_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader5flash(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef 0, i64 noundef %.val755)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.ry:                                            ; preds = %bb.rv
  tail call fastcc void @_RNvMsk_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData18fill_history_pager(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val661, i8 noundef 1, i8 noundef 6, i1 noundef zeroext false)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.rz:                                            ; preds = %bb.rw
  %i.awd = getelementptr i8, ptr %.val661, i64 689 ; 2 uses
  %.val1004 = load i8, ptr %i.awd, align 1, !range !20, !noundef !14 ; 2 uses
  %2 = trunc nuw i8 %.val1004 to i1
  %i.awe = xor i8 %.val1004, 1
  store i8 %i.awe, ptr %i.awd, align 1, !alias.scope !2042
  %i.awf = getelementptr inbounds nuw i8, ptr %.val661, i64 688
  store i8 1, ptr %i.awf, align 8, !alias.scope !2043
  br i1 %2, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %.val901 = load i64, ptr %i.avx, align 8, !range !28, !noundef !14
  %.not.i1443.not = icmp eq i64 %.val901, 0
  br i1 %.not.i1443.not, label %bb.sb, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.sb:                                            ; preds = %bb.sa
  %i.awg = getelementptr inbounds nuw i8, ptr %.val661, i64 696
  %i.awh = tail call noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager35select_next_completion_in_direction(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.avx, i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.awg)
  br i1 %i.awh, label %bb.sc, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.sc:                                            ; preds = %bb.sb
  tail call fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData23pager_selection_changed(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val661)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.sd:                                            ; preds = %bb.a
  %.val564 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 2 uses
  %i.awi = getelementptr i8, ptr %.val564, i64 48
  %.val990 = load i64, ptr %i.awi, align 8, !noundef !14 ; 2 uses
  %i.awj = icmp ult i64 %.val990, 2305843009213693952
  tail call void @llvm.assume(i1 %i.awj)
  %i.awk = icmp eq i64 %.val990, 0
  br i1 %i.awk, label %bb.sf, label %.thread1809

bb.se:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %switch.selectcmp.case1415 = icmp eq i8 %1, 3
  %switch.selectcmp.case2416 = icmp eq i8 %1, 17
  %switch.selectcmp417 = or i1 %switch.selectcmp.case1415, %switch.selectcmp.case2416 ; 5 uses
  switch i8 %1, label %bb.sg [
    i8 2, label %bb.si
    i8 3, label %bb.si
    i8 14, label %bb.sh
    i8 16, label %.thread1809
    i8 17, label %.thread1809
  ], !prof !2044

bb.sf:                                            ; preds = %bb.sd
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val899 = load ptr, ptr %i.awl, align 8, !nonnull !14, !align !19, !noundef !14
  tail call fastcc void @_RNvMs8_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader13eval_bind_cmd(ptr nonnull %.val899, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @187, i64 noundef 5)
  tail call void @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData23schedule_prompt_repaint(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val564)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.sg:                                            ; preds = %bb.se
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #40
  unreachable

bb.sh:                                            ; preds = %bb.se
  br label %bb.si

.thread1809:                                      ; preds = %bb.sd, %bb.se, %bb.se
  %switch.selectcmp4171813 = phi i1 [ %switch.selectcmp417, %bb.se ], [ %switch.selectcmp417, %bb.se ], [ false, %bb.sd ]
  br label %bb.si

bb.si:                                            ; preds = %bb.se, %bb.se, %.thread1809, %bb.sh
  %switch.selectcmp4171814 = phi i1 [ %switch.selectcmp4171813, %.thread1809 ], [ %switch.selectcmp417, %bb.sh ], [ %switch.selectcmp417, %bb.se ], [ %switch.selectcmp417, %bb.se ]
  %.sroa.096.0 = phi i8 [ 0, %.thread1809 ], [ 1, %bb.sh ], [ 2, %bb.se ], [ 2, %bb.se ]
  %i.awm = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 5 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 416
  %i.awo = load i64, ptr %i.awn, align 8, !range !28, !alias.scope !2045, !noundef !14
  %.not.i1446 = icmp eq i64 %i.awo, 0
  br i1 %.not.i1446, label %bb.sj, label %bb.sk

bb.sj:                                            ; preds = %bb.si
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awm, i64 1248
  %i.awq = load i64, ptr %i.awp, align 8, !range !28, !alias.scope !2045, !noundef !14
  %i.awr = icmp ne i64 %i.awq, 0
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awm, i64 689
  %i.awt = load i8, ptr %i.aws, align 1, !range !20, !alias.scope !2045
  %i.awu = trunc nuw i8 %i.awt to i1
  %or.cond.i1451 = select i1 %i.awr, i1 %i.awu, i1 false
  br i1 %or.cond.i1451, label %bb.sl, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1452

bb.sk:                                            ; preds = %bb.si
  %.old1.i1447 = getelementptr inbounds nuw i8, ptr %i.awm, i64 689
  %.old2.i1448 = load i8, ptr %.old1.i1447, align 1, !range !20, !alias.scope !2045, !noundef !14
  %.old3.i1449 = trunc nuw i8 %.old2.i1448 to i1
  br i1 %.old3.i1449, label %bb.sl, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1452

bb.sl:                                            ; preds = %bb.sk, %bb.sj
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1452

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1452: ; preds = %bb.sj, %bb.sk, %bb.sl
  %.sroa.0.0.i1450 = phi i1 [ true, %bb.sl ], [ false, %bb.sk ], [ false, %bb.sj ]
  tail call fastcc void @_RNvMs7_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData9move_word(ptr noalias nofree noundef align 8 dereferenceable(2304) %i.awm, i1 noundef zeroext %.sroa.0.0.i1450, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef %.sroa.096.0, i1 noundef zeroext false, i1 noundef zeroext %switch.selectcmp4171814)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.sm:                                            ; preds = %bb.bl
  tail call fastcc void @_RNvMse_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader11exec_prompt(ptr nonnull %.val540, ptr %i.je, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.awv = getelementptr inbounds nuw i8, ptr %.val540, i64 1968
  %i.aww = load i64, ptr %i.awv, align 8, !noundef !14 ; 2 uses
  %i.awx = icmp ult i64 %i.aww, 2305843009213693952
  tail call void @llvm.assume(i1 %i.awx)
  %i.awy = icmp eq i64 %i.aww, 0
  br i1 %i.awy, label %bb.sn, label %bb.so

bb.sn:                                            ; preds = %bb.sm, %bb.bl
  tail call fastcc void @_RNvMse_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader11exec_prompt(ptr nonnull %.val540, ptr %i.je, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.awz = getelementptr inbounds nuw i8, ptr %.val540, i64 992
  tail call void @_RNvMs1_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen10reset_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.awz, i1 noundef zeroext true)
  tail call fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader18layout_and_repaint(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @189, i64 noundef 8)
  %i.axa = getelementptr inbounds nuw i8, ptr %.val540, i64 2293
  store i8 0, ptr %i.axa, align 1
  store i8 0, ptr %i.jf, align 1
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.so:                                            ; preds = %bb.sm
  %i.axb = tail call fastcc noundef zeroext i1 @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader17is_repaint_needed(ptr nonnull %.val540, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef)
  br i1 %i.axb, label %bb.sp, label %bb.sq

bb.sp:                                            ; preds = %bb.so
  %i.axc = getelementptr inbounds nuw i8, ptr %.val540, i64 992
  tail call void @_RNvMs1_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen10reset_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.axc, i1 noundef zeroext true)
  tail call fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader18layout_and_repaint(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @188, i64 noundef 4)
  br label %bb.sq

bb.sq:                                            ; preds = %bb.so, %bb.sp
  store i8 0, ptr %i.jf, align 1
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.sr:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1131
  %i.axd = getelementptr inbounds nuw i8, ptr %.val659, i64 2294
  %i.axe = load i8, ptr %i.axd, align 2, !range !20, !noundef !14
  %i.axf = trunc nuw i8 %i.axe to i1
  %i.axg = getelementptr inbounds nuw i8, ptr %.val659, i64 2295
  %i.axh = load i8, ptr %i.axg, align 1, !range !20, !noundef !14
  %i.axi = trunc nuw i8 %i.axh to i1
  %i.axj = tail call fastcc noundef zeroext i1 @_RNvMs7_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData27jump_and_remember_last_jump(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val659, i1 noundef zeroext %i.axf, i1 noundef zeroext %i.axi, i1 noundef zeroext %.sroa.0.0.i1129, i32 noundef %i.mo, i1 noundef zeroext true)
  %i.axk = zext i1 %i.axj to i8
  br label %bb.ss

bb.ss:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1131, %bb.sr
  %.sroa.0146.0 = phi i8 [ %i.axk, %bb.sr ], [ 0, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1131 ]
  %i.axl = getelementptr inbounds nuw i8, ptr %.val659, i64 1540
  store i8 %.sroa.0146.0, ptr %i.axl, align 4, !alias.scope !2046
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.st:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1139
  %i.axm = icmp eq i8 %i.my, 0
  %i.axn = getelementptr inbounds nuw i8, ptr %.val657, i64 2295
  %i.axo = load i8, ptr %i.axn, align 1, !range !20, !noundef !14
  %i.axp = trunc nuw i8 %i.axo to i1
  %i.axq = tail call fastcc noundef zeroext i1 @_RNvMs7_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData27jump_and_remember_last_jump(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val657, i1 noundef zeroext %i.axm, i1 noundef zeroext %i.axp, i1 noundef zeroext %.sroa.0.0.i1137, i32 noundef %i.na, i1 noundef zeroext true)
  %i.axr = zext i1 %i.axq to i8
  br label %bb.su

bb.su:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1139, %bb.st
  %.sroa.0148.0 = phi i8 [ %i.axr, %bb.st ], [ 0, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1139 ]
  store i8 %i.my, ptr %i.mx, align 2
  %i.axs = getelementptr inbounds nuw i8, ptr %.val657, i64 1540
  store i8 %.sroa.0148.0, ptr %i.axs, align 4, !alias.scope !2047
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.sv:                                            ; preds = %bb.cv
  %i.axt = getelementptr i8, ptr %.val654, i64 120
  %.val877 = load i64, ptr %i.axt, align 8, !noundef !14 ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %.val654, i64 1280 ; 2 uses
  %i.axv = load i64, ptr %i.axu, align 8, !noundef !14
  store i64 %.val877, ptr %i.axu, align 8
  %i.axw = getelementptr inbounds nuw i8, ptr %.val654, i64 1288
  store i64 %.val877, ptr %i.axw, align 8
  %i.axx = getelementptr inbounds nuw i8, ptr %.val654, i64 416
  %i.axy = load i64, ptr %i.axx, align 8, !range !28, !alias.scope !2048, !noundef !14
  %.not.i1453 = icmp eq i64 %i.axy, 0
  br i1 %.not.i1453, label %bb.sw, label %bb.sx

bb.sw:                                            ; preds = %bb.sv
  %i.axz = getelementptr inbounds nuw i8, ptr %.val654, i64 1248
  %i.aya = load i64, ptr %i.axz, align 8, !range !28, !alias.scope !2048, !noundef !14
  %i.ayb = icmp ne i64 %i.aya, 0
  %i.ayc = getelementptr inbounds nuw i8, ptr %.val654, i64 689
  %i.ayd = load i8, ptr %i.ayc, align 1, !range !20, !alias.scope !2048
  %i.aye = trunc nuw i8 %i.ayd to i1
  %or.cond.i1458 = select i1 %i.ayb, i1 %i.aye, i1 false
  br i1 %or.cond.i1458, label %bb.sy, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1459

bb.sx:                                            ; preds = %bb.sv
  %.old1.i1454 = getelementptr inbounds nuw i8, ptr %.val654, i64 689
  %.old2.i1455 = load i8, ptr %.old1.i1454, align 1, !range !20, !alias.scope !2048, !noundef !14
  %.old3.i1456 = trunc nuw i8 %.old2.i1455 to i1
  br i1 %.old3.i1456, label %bb.sy, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1459

bb.sy:                                            ; preds = %bb.sx, %bb.sw
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1459

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1459: ; preds = %bb.sw, %bb.sx, %bb.sy
  %.sroa.0.0.i1457 = phi i1 [ true, %bb.sy ], [ false, %bb.sx ], [ false, %bb.sw ]
  %i.ayf = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val654, i1 noundef zeroext %.sroa.0.0.i1457, i64 noundef 1, i64 %i.axv) ; 0 uses
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.sz:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1147
  %i.ayg = icmp ult i64 %.val876, %.val766
  br i1 %i.ayg, label %bb.ta, label %bb.tb

bb.ta:                                            ; preds = %bb.sz
  %i.ayh = getelementptr i8, ptr %.sroa.04.0.i1144, i64 40
  %.val709 = load ptr, ptr %i.ayh, align 8, !nonnull !14, !noundef !14
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %.val709, i64 %.val876
  %i.ayj = load i32, ptr %i.ayi, align 4, !range !31, !noundef !14 ; 5 uses
  %i.ayk = add nsw i32 %i.ayj, -97
end_hunk_4
begin_hunk_5_@_RNvMsl_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader27fill_history_pager_complete:bb.a
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bo, %bb.ae ], [ %i.bm, %bb.ac ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #36
          to label %.body42 unwind label %bb.af

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body33

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %.preheader.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.59.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aj

bb.af:                                            ; preds = %.body33, %bb.v, %bb.u, %.body, %.body42
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.ag:                                            ; preds = %bb.m
  %i.bq = load i64, ptr %i.c, align 8, !range !28, !noundef !14
  %i.br = trunc nuw i64 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !29, !noundef !14 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !22

bb.ah:                                            ; preds = %bb.ag
  %i.bv = load i64, ptr %i.bu, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.bt, i64 %i.bv) #41
          to label %bb.k unwind label %bb.b

bb.ai:                                            ; preds = %bb.ag
  %i.bw = load ptr, ptr %i.bu, align 8, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.ak, %bb.am
  %eh.lpad-body37 = phi { ptr, i32 } [ %i.ca, %bb.am ], [ %i.by, %bb.ak ]
  store i64 %.sroa.0.0, ptr %i.bx, align 8
  %.sroa.6.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %.val29, i64 624
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx52, align 8
  %.sroa.7.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %.val29, i64 632
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx56, align 8
  br label %.body42

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, %bb.ai
  %.sroa.7.0 = phi i64 [ 0, %bb.ai ], [ %.sroa.7.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.bw, %bb.ai ], [ %.sroa.6.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.bt, %bb.ai ], [ %.sroa.0.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val29, i64 616 ; 5 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  store i64 %.sroa.0.0, ptr %i.bx, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %.val29, i64 624
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx54, align 8
  %.sroa.7.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %.val29, i64 632
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx58, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.val29, i64 416 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !14, !noundef !14
  %i.ce = load i64, ptr %i.z, align 8, !noundef !14
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager15set_completions(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.ce, i1 noundef zeroext false)
          to label %bb.ao unwind label %bb.b

bb.ao:                                            ; preds = %bb.an
  %i.cf = icmp eq i8 %2, 2
  br i1 %i.cf, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ch = load i8, ptr %i.cg, align 8, !range !2367, !noundef !14 ; 2 uses
  %.not21 = icmp eq i8 %i.ch, -1
  br i1 %.not21, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager29set_selected_completion_index(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.cb, i64 noundef %3, i64 %4)
          to label %bb.ar unwind label %bb.b

bb.ar:                                            ; preds = %bb.aq
  invoke fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData23pager_selection_changed(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val29)
          to label %bb.ap unwind label %bb.b

_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit: ; preds = %.noexc39, %bb.ap
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val32 = load ptr, ptr %i.ci, align 8
  invoke fastcc void @_RNvMsj_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader25super_highlight_me_plenty(ptr nonnull %.val29, ptr %.val32)
          to label %bb.at unwind label %bb.b

bb.as:                                            ; preds = %bb.ap
  %i.cj = getelementptr inbounds nuw i8, ptr %.val29, i64 696
  %i.ck = invoke noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager35select_next_completion_in_direction(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.cb, i8 noundef range(i8 0, 9) %i.ch, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.cj)
          to label %.noexc39 unwind label %bb.b   ; 0 uses

.noexc39:                                         ; preds = %bb.as
  invoke fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData23pager_selection_changed(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val29)
          to label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit unwind label %bb.b

bb.at:                                            ; preds = %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2368
  invoke fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader16make_layout_data(ptr noalias nofree noundef align 8 captures(none) dereferenceable(216) %i.a, ptr nonnull %.val29)
          to label %.noexc41 unwind label %bb.b

.noexc41:                                         ; preds = %bb.at
  %i.cl = getelementptr inbounds nuw i8, ptr %.val29, i64 136 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.cl)
          to label %bb.av unwind label %bb.au, !noalias !2368

bb.au:                                            ; preds = %.noexc41
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.cl, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false), !noalias !2368
  br label %.body42

bb.av:                                            ; preds = %.noexc41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.cl, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false), !noalias !2368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2368
  invoke fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader12paint_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @262, i64 noundef 13, i1 noundef zeroext false)
          to label %_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader18layout_and_repaint.exit unwind label %bb.b

_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader18layout_and_repaint.exit: ; preds = %bb.av
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader18HistoryPagerResultEBH_.exit46 unwind label %bb.aw

bb.aw:                                            ; preds = %_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader18layout_and_repaint.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %common.resume unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader18HistoryPagerResultEBH_.exit46: ; preds = %_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader18layout_and_repaint.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMsm_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader29expand_abbreviation_at_cursor(ptr %.0.val, ptr %.8.val, i64 noundef range(i64 0, 2) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 12 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 416
  %i.e = load i64, ptr %i.d, align 8, !range !28, !alias.scope !2373, !noundef !14
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 1248
  %i.g = load i64, ptr %i.f, align 8, !range !28, !alias.scope !2373, !noundef !14
  %i.h = icmp ne i64 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 689
  %i.j = load i8, ptr %i.i, align 1, !range !20, !alias.scope !2373
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond.i, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit

bb.c:                                             ; preds = %bb.a
  %.old1.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 689
  %.old2.i = load i8, ptr %.old1.i, align 1, !range !20, !alias.scope !2373, !noundef !14
  %.old3.i = trunc nuw i8 %.old2.i to i1
  br i1 %.old3.i, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit: ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 1617
  %i.m = load i8, ptr %i.l, align 1, !range !20, !noundef !14
  %1 = trunc nuw i8 %i.m to i1
  br i1 %1, label %bb.d, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread

bb.d:                                             ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit
  %i.n = getelementptr i8, ptr %.0.val, i64 120
  %.val5 = load i64, ptr %i.n, align 8, !noundef !14
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %.val5, i64 %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = getelementptr i8, ptr %.0.val, i64 40
  %.val3 = load ptr, ptr %i.p, align 8, !nonnull !14, !noundef !14
  %i.q = getelementptr i8, ptr %.0.val, i64 48
  %.val4 = load i64, ptr %i.q, align 8, !noundef !14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader36reader_expand_abbreviation_at_cursor(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val3, i64 noundef %.val4, i64 noundef %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %.8.val)
  %i.r = load i64, ptr %i.c, align 8, !range !18, !noundef !14
  %.not = icmp ne i64 %i.r, 2                     ; 2 uses
  br i1 %.not, label %bb.e, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread.sink.split

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = load i32, ptr %i.s, align 8, !noundef !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.v = load i32, ptr %i.u, align 4, !noundef !14
  %i.w = invoke { i64, i64 } @_RNvXs1_NtCs8frGy5WneL6_4fish15parse_constantsINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEINtNtBO_7convert4FromNtB5_11SourceRangeE4from(i32 noundef %i.t, i32 noundef %i.v)
          to label %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader9push_edit.exit unwind label %bb.g ; 2 uses

_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader9push_edit.exit: ; preds = %bb.e
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.ab, align 8, !alias.scope !2374
  store i64 0, ptr %i.a, align 8, !alias.scope !2374
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.x, ptr %i.ac, align 8, !alias.scope !2374
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 %i.y, ptr %i.ad, align 8, !alias.scope !2374
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.ae, align 8, !alias.scope !2374
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !2374
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !2374
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !2374
  call fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData18push_edit_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.0.val, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.a, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = load i64, ptr %i.b, align 8, !range !28, !noundef !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.0.val, i1 noundef zeroext false, i64 noundef range(i64 0, 2) %i.ag, i64 %i.ai) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread.sink.split

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread.sink.split: ; preds = %bb.d, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader9push_edit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread: ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread.sink.split, %bb.c, %bb.b, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ false, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit ], [ %.not, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread.sink.split ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.g:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #36
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMso_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader17completion_insert(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i16 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 416 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !28, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 1248
  %i.g = load i64, ptr %i.f, align 8, !range !28, !noundef !14
  %.not7 = icmp eq i64 %i.g, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 689
  %i.i = load i8, ptr %i.h, align 1, !range !20, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  %spec.select.idx = select i1 %i.j, i64 432, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.0.val, i64 %spec.select.idx
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi ptr [ %.0.val, %bb.b ], [ %spec.select, %bb.c ]
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.j, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !noundef !14
  %.not8 = icmp eq i64 %i.l, %2
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.0.val, i1 noundef zeroext %.sroa.0.0, i64 noundef 1, i64 %2) ; 0 uses
  %.pre = load i64, ptr %i.d, align 8, !range !28
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = phi i64 [ %i.e, %bb.d ], [ %.pre, %bb.e ]
  %.not9 = icmp eq i64 %i.n, 0
  br i1 %.not9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 1248
  %i.p = load i64, ptr %i.o, align 8, !range !28, !noundef !14
  %.not10 = icmp eq i64 %i.p, 0
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 689
  %i.r = load i8, ptr %i.q, align 1, !range !20, !noundef !14
  %i.s = trunc nuw i8 %i.r to i1
  %spec.select13.idx = select i1 %i.s, i64 432, i64 0
  %spec.select13 = getelementptr inbounds nuw i8, ptr %.0.val, i64 %spec.select13.idx
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.03.0 = phi ptr [ %.0.val, %bb.g ], [ %spec.select13, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 120
  %i.u = load i64, ptr %i.t, align 8, !noundef !14
  store i64 %i.u, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  call void @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext24background_interruptible(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @49)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !14, !noundef !14
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 48
  %i.z = load i64, ptr %i.y, align 8, !noundef !14
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32completion_apply_to_command_line(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i16 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.x, i64 noundef %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext false, i1 noundef zeroext %4)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a) #36
          to label %common.resume unwind label %bb.q

bb.k:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %common.resume unwind label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !14, !noundef !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !14
  %i.ag = load i64, ptr %i.c, align 8, !noundef !14
  invoke fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData28set_buffer_maintaining_pager(ptr noalias nofree noundef align 8 dereferenceable(2304) %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ad, i64 noundef %i.af, i64 noundef %i.ag)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

end_hunk_5
