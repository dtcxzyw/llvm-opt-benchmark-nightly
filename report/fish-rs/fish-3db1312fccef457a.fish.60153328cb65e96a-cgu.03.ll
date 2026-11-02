Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.03?download=true
inline.NumInlined: 2345
inline.NumDeleted: 813
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 48
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion4rank:bb.a
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion9with_desc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 53)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !798
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !799
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.b, i8 0, i64 5, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB5_12RegexMatcher12report_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr nofree readonly captures(none) %.104.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %3, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [96 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = load i64, ptr %3, align 8, !range !13, !noundef !5
  %.not = icmp eq i64 %i.m, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.104.val) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.104.val, i64 28
  %i.o = load i8, ptr %i.n, align 4, !range !4, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.104.val) ]
  %i.q = getelementptr inbounds nuw i8, ptr %.104.val, i64 28 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !range !4, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.ak, label %bb.aj

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.104.val, i64 29
  %i.u = load i8, ptr %i.t, align 1, !range !4, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8n0tpEuULLm_5pcre210regex_impl8CapturesNtNtBG_3ffi15CodeUnitWidth32EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.h)
  br label %bb.ai

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.104.val, i64 25 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !range !4, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %.thread

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  br label %bb.ai

bb.h:                                             ; preds = %bb.i
  %.pre = load i8, ptr %i.w, align 1, !range !4
  %i.z = trunc nuw i8 %.pre to i1
  br i1 %i.z, label %bb.j, label %.thread

bb.i:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.aa = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.body34:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af, %bb.ad, %.body
  %.pn28 = phi { ptr, i32 } [ %i.bp, %bb.ad ], [ %.pn26, %.body ], [ %i.bq, %bb.af ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8n0tpEuULLm_5pcre210regex_impl8CapturesNtNtBG_3ffi15CodeUnitWidth32EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.h) #35
          to label %common.resume unwind label %bb.ah

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.s, %bb.t, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.thread:                                          ; preds = %bb.f, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.104.val, i64 26
  %i.ac = load i8, ptr %i.ab, align 2, !range !4, !noundef !5
  %i.ad = zext nneg i8 %i.ac to i64
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h
  %.sroa.03.0 = phi i64 [ %i.ad, %.thread ], [ 1, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !noundef !5
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = icmp samesign ult i64 %.sroa.03.0, %i.ag
  br i1 %i.ah, label %.lr.ph.i.lr.ph, label %.loopexit

.lr.ph.i.lr.ph:                                   ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.104.val, i64 31
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %.lr.ph.i

bb.k:                                             ; preds = %bb.x, %bb.t
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.u
  %.sroa.4.025 = phi i64 [ %.sroa.03.0, %.lr.ph.i.lr.ph ], [ %i.ap, %bb.u ]
  %.val.i.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !818, !noundef !5 ; 2 uses
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 8, !noalias !818, !noundef !5
  %i.an = zext i32 %.val1.i.i.i.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.lr.ph.i
  %i.ao = phi i64 [ %.sroa.4.025, %.lr.ph.i ], [ %i.ap, %bb.o ] ; 3 uses
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 4 uses
  %i.aq = icmp samesign ult i64 %i.ao, %i.an
  br i1 %i.aq, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.idx.i.i.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.as = load i64, ptr %i.ar, align 8, !noalias !819, !noundef !5 ; 7 uses
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !819, !noundef !5 ; 6 uses
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %exitcond.not.i = icmp eq i64 %i.ap, %i.ag
  br i1 %exitcond.not.i, label %.loopexit, label %bb.l

bb.p:                                             ; preds = %bb.n
  %i.ax = load i8, ptr %i.aj, align 1, !range !4, !noundef !5
  %i.ay = trunc nuw i8 %i.ax to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br i1 %i.ay, label %bb.v, label %bb.r

.loopexit:                                        ; preds = %bb.u, %bb.o, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.q

bb.q:                                             ; preds = %bb.ay, %bb.ax, %bb.ai, %.loopexit
  ret void

bb.r:                                             ; preds = %bb.p
  %i.az = icmp ult i64 %i.av, %i.as
  %.not25 = icmp ugt i64 %i.av, %2
  %or.cond = or i1 %i.az, %.not25
  br i1 %or.cond, label %bb.t, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.ba = sub nuw i64 %i.av, %i.as
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.bc = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bb, i64 noundef %i.ba)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #34
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.bd = icmp ult i64 %i.ap, %i.ag
  br i1 %i.bd, label %.lr.ph.i, label %.loopexit

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.418.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.519.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.be = add nuw i64 %i.as, 1
  store i64 %i.be, ptr %i.ak, align 8
  store i64 4, ptr %i.c, align 8
  %i.bf = icmp ult i64 %i.av, %i.as
  br i1 %i.bf, label %bb.x, label %bb.w

.body:                                            ; preds = %bb.ab, %.peel.begin, %.loopexit.split-lp11.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y
  %.pn26 = phi { ptr, i32 } [ %lpad.loopexit.split-lp60, %.loopexit.split-lp11.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bh, %bb.y ], [ %i.bo, %.peel.begin ], [ %i.bo, %bb.ab ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #35
          to label %.body34 unwind label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.bg = sub nuw i64 %i.av, %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i64 4, ptr %i.al, align 8
  store i64 %i.bg, ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 6, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @48, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef 2)
          to label %bb.z unwind label %.loopexit.split-lp11.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #34
          to label %bb.k unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #35
          to label %.body unwind label %bb.ah

.loopexit.split-lp11.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.aa
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #35
          to label %.body unwind label %bb.ah

bb.z:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.bi = load i8, ptr %i.e, align 8, !range !4, !alias.scope !820, !noundef !5
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.aa, label %.preheader.preheader, !prof !11

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !821
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !range !24, !alias.scope !820, !noundef !5
  store i8 %i.bl, ptr %i.a, align 1, !noalias !821
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #31
          to label %.noexc31 unwind label %.loopexit.split-lp11.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.aa
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am)
          to label %.preheader.1 unwind label %.peel.begin

.preheader.1:                                     ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bm = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.ae unwind label %bb.ad     ; 0 uses

.preheader.preheader:                             ; preds = %bb.z
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
          to label %.preheader unwind label %.peel.begin

.peel.begin:                                      ; preds = %.preheader, %.preheader.preheader
  %i.bn = phi i1 [ false, %.preheader.preheader ], [ true, %.preheader ]
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bn, label %.body, label %bb.ab

bb.ab:                                            ; preds = %.peel.begin
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.al) #35
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ad:                                            ; preds = %.preheader.1
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #35
          to label %.body34 unwind label %bb.ah

bb.ae:                                            ; preds = %.preheader.1
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body34 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.ah:                                            ; preds = %bb.ao, %bb.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.ad, %.loopexit.split-lp11.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y, %.body, %.body34
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.av, %.body34, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.at
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %.pn28, %.body34 ], [ %i.cj, %bb.at ], [ %i.ck, %bb.av ]
  resume { ptr, i32 } %common.resume.op

bb.ai:                                            ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.q

bb.aj:                                            ; preds = %bb.am, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit42, %bb.ak, %bb.c
  %i.bt = load i8, ptr %i.q, align 4, !range !4, !noundef !5
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ay, label %bb.ax

bb.ak:                                            ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %.104.val, i64 29
  %i.bw = load i8, ptr %i.bv, align 1, !range !4, !noundef !5
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.aj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.by = getelementptr inbounds nuw i8, ptr %.104.val, i64 31
  %i.bz = load i8, ptr %i.by, align 1, !range !4, !noundef !5
  %i.ca = trunc nuw i8 %i.bz to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br i1 %i.ca, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cb = tail call noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) ; 0 uses
  br label %bb.aj

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 4, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 5, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @48, ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef 1)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %bb.ah

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.cd = load i8, ptr %i.j, align 8, !range !4, !alias.scope !822, !noundef !5
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.aq, label %bb.ar, !prof !11

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !823
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !range !24, !alias.scope !822, !noundef !5
  store i8 %i.cg, ptr %i.b, align 1, !noalias !823
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #31
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39 unwind label %bb.as

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.ao, %bb.as
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.as ], [ %i.cc, %bb.ao ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #35
          to label %common.resume unwind label %bb.ah

bb.as:                                            ; preds = %bb.ar
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB5_12RegexMatcher28populate_captures_from_match:bb.a
bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit unwind label %bb.x, !noalias !861

bb.x:                                             ; preds = %bb.w
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #35
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit: ; preds = %bb.v, %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !860, !nonnull !5, !noundef !5
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.cy = add i64 %i.cq, 1
  store i64 %i.cy, ptr %i.cp, align 8, !alias.scope !860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.z:                                             ; preds = %bb.u
  %i.cz = shl nuw nsw i64 %i.ch, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %i.ci, i64 %i.cz, i1 false)
  br label %bb.v

bb.aa:                                            ; preds = %bb.o, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit
  %i.da = call { ptr, ptr } @_RNvXsK_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7IterMutNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) ; 2 uses
  %i.db = extractvalue { ptr, ptr } %i.da, 0      ; 2 uses
  %i.dc = extractvalue { ptr, ptr } %i.da, 1
  %.not = icmp eq ptr %i.db, null
  br i1 %.not, label %._crit_edge, label %bb.c

bb.ab:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !848, !noundef !5 ; 3 uses
  %i.df = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !848, !noundef !5
  %i.dg = icmp eq i64 %i.de, %i.df
  br i1 %i.dg, label %bb.ac, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17 unwind label %.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !849

bb.ad:                                            ; preds = %.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17: ; preds = %bb.ab, %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !848, !nonnull !5, !noundef !5
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.dl = add i64 %i.de, 1
  store i64 %i.dl, ptr %i.dd, align 8, !alias.scope !848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCs8n0tpEuULLm_5pcre24pool5innerINtB5_4PoolINtNtB9_3ffi9MatchDataNtBS_15CodeUnitWidth32EINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputBP_NtNtB2f_6marker4SendNtNtNtB2f_5panic11unwind_safe13RefUnwindSafeNtB3n_10UnwindSafeNtB33_4SyncEL_EE3newCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 64               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 8, i1 noundef zeroext false, i64 noundef 64, i64 noundef 64)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.w, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish(ptr nonnull %1, ptr nonnull %2) #35
          to label %bb.o unwind label %bb.m

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !10, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #34
          to label %bb.n unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = icmp samesign ugt i64 %i.h, 7
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.510.sroa.3.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.h

bb.g:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.h:                                             ; preds = %bb.f, %bb.l
  %i.s = phi ptr [ %i.k, %bb.f ], [ %i.y, %bb.l ]
  %i.t = phi i64 [ 0, %bb.f ], [ %i.aa, %bb.l ]   ; 3 uses
  %.sroa.017.022 = phi i64 [ 0, %bb.f ], [ %i.ab, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 64
  store i8 0, ptr %.sroa.49.0..sroa_idx, align 4
  store i64 0, ptr %.sroa.510.sroa.3.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, align 16
  store i64 0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.u = load i64, ptr %i.c, align 8, !range !12, !alias.scope !865, !noundef !5
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxINtNtBT_3ffi9MatchDataNtB2Y_15CodeUnitWidth32EEEEEE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge unwind label %bb.j, !noalias !866

._crit_edge:                                      ; preds = %bb.i
  %.pre = load ptr, ptr %i.m, align 8, !alias.scope !865
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB2h_5boxed3BoxINtNtBI_3ffi9MatchDataNtB35_15CodeUnitWidth32EEEEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 64 dereferenceable(64) %i.b) #35
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.j
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxINtNtB1f_3ffi9MatchDataNtB38_15CodeUnitWidth32EEEEEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #35
          to label %bb.b unwind label %bb.m

bb.l:                                             ; preds = %._crit_edge, %bb.h
  %i.y = phi ptr [ %.pre, %._crit_edge ], [ %i.s, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.z, ptr noundef nonnull align 64 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.aa = add i64 %i.t, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.n, align 8, !alias.scope !865
  %i.ab = add nuw nsw i64 %.sroa.017.022, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not, label %bb.g, label %bb.h

bb.m:                                             ; preds = %bb.b, %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.n:                                             ; preds = %bb.e
  unreachable

bb.o:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs8n0tpEuULLm_5pcre24pool5innerINtB5_4PoolINtNtB9_3ffi9MatchDataNtBS_15CodeUnitWidth32EINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputBP_NtNtB2f_6marker4SendNtNtNtB2f_5panic11unwind_safe13RefUnwindSafeNtB3n_10UnwindSafeNtB33_4SyncEL_EE8get_slowCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 3 uses
  %i.k = icmp ult i64 %i.j, 144115188075855872
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1B_15CodeUnitWidth32ENtNtBP_6marker4SendNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtB2U_10UnwindSafeNtB2B_4SyncEL_EIBJ_uE4callCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !13, !alias.scope !875, !noundef !5
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB10_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsd_NtCs8n0tpEuULLm_5pcre23ffiINtB5_9MatchDataNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB10_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB10_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = inttoptr i64 %2 to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.s, align 8
  store i64 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.u, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit23

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit23: ; preds = %bb.v, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i22, %bb.r, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtBH_15CodeUnitWidth32EE3newCs8frGy5WneL6_4fish.exit9, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB10_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit
  ret void

common.resume:                                    ; preds = %10, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %i.q, %bb.f ], [ %11, %10 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #31
  unreachable

bb.h:                                             ; preds = %bb.c
  %4 = urem i64 %2, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %4
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1Q_15CodeUnitWidth32EEEE8try_lockCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = load ptr, ptr %5, align 8, !nonnull !5, !align !19, !noundef !5 ; 9 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = load i8, ptr %6, align 8, !range !4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ag = trunc nuw i8 %i.ab to i1
  br i1 %i.ag, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ai = and i64 %i.ah, 9223372036854775807
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc20, !prof !14

.noexc20:                                         ; preds = %bb.k
  %i.ak = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ak, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc20
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc20, %bb.k, %bb.j
  %i.al = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit, !prof !11

bb.m:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = add nsw i64 %i.ad, -1                   ; 3 uses
  store i64 %i.ao, ptr %i.ac, align 8
  %i.ap = load i64, ptr %i.an, align 8, !range !12, !noundef !5
  %i.aq = icmp samesign ult i64 %i.ao, %i.ap
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.at = icmp ult i64 %i.ad, 1152921504606846977
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !5, !align !19, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.aw, align 8
  store i64 0, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ba = trunc nuw i8 %i.ab to i1
  br i1 %i.ba, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i22, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bc = and i64 %i.bb, 9223372036854775807
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i22, label %bb.p, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.be = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.be, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i22, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.az monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i22

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i22: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bf = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit23, !prof !11

bb.r:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i22
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit23

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.m, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1B_15CodeUnitWidth32ENtNtBP_6marker4SendNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtB2U_10UnwindSafeNtB2B_4SyncEL_EIBJ_uE4callCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !876
  %i.bi = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775805) 64, i64 noundef range(i64 1, 9) 8) #33, !noalias !876 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.s, label %bb.v, !prof !9

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #34
          to label %.noexc24 unwind label %bb.t

.noexc24:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtCs8n0tpEuULLm_5pcre23ffiINtB5_9MatchDataNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bm, align 8
  store i64 0, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bo, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit23

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i28 = load ptr, ptr %7, align 8, !alias.scope !877 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val3.i29 = load i8, ptr %8, align 8, !range !7, !alias.scope !877, !noundef !5 ; 2 uses
  %.not.i.i30 = icmp eq i8 %.val3.i29, 2
  br i1 %.not.i.i30, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit35, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i28) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i28, i64 4
  %i.bq = trunc nuw i8 %.val3.i29 to i1
  br i1 %i.bq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !877
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31, label %bb.z, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.bu = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !877
  br i1 %i.bu, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bp monotonic, align 1, !noalias !877
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bv = atomicrmw xchg ptr %.val.i28, i32 0 release, align 4, !noalias !877
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit.sink.split.i32, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit35, !prof !11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit.sink.split.i32: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i28), !noalias !877
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit35

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit35: ; preds = %bb.w, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit.sink.split.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1B_15CodeUnitWidth32ENtNtBP_6marker4SendNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtB2U_10UnwindSafeNtB2B_4SyncEL_EIBJ_uE4callCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !878
  %i.by = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775805) 64, i64 noundef range(i64 1, 9) 8) #33, !noalias !878 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %9, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtBH_15CodeUnitWidth32EE3newCs8frGy5WneL6_4fish.exit9, !prof !9

9:                                                ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit35
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #34
          to label %.noexc32 unwind label %10

.noexc32:                                         ; preds = %9
  unreachable

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtCs8n0tpEuULLm_5pcre23ffiINtB5_9MatchDataNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %common.resume unwind label %12

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtBH_15CodeUnitWidth32EE3newCs8frGy5WneL6_4fish.exit9: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %14, align 8
  store i64 0, ptr %0, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %16, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit23
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs8n0tpEuULLm_5pcre24pool5innerINtB5_4PoolINtNtB9_3ffi9MatchDataNtBS_15CodeUnitWidth32EINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputBP_NtNtB2f_6marker4SendNtNtNtB2f_5panic11unwind_safe13RefUnwindSafeNtB3n_10UnwindSafeNtB33_4SyncEL_EE9put_valueCs8frGy5WneL6_4fish(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 43 uses
  %i.b = invoke noundef i64 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtCs8n0tpEuULLm_5pcre24pool5innerINtB19_4PoolINtNtB1d_3ffi9MatchDataNtB1X_15CodeUnitWidth32EINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB1U_NtNtB3m_6marker4SendNtNtNtB3m_5panic11unwind_safe13RefUnwindSafeNtB4v_10UnwindSafeNtB4b_4SyncEL_EE9put_value0jECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @111)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = icmp ult i64 %i.d, 144115188075855872
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #34
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.g, %bb.c
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp, %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.w, %.body ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.9
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 64, i64 noundef 8) #33
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1d_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 64, i64 noundef 8) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.p, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1d_15CodeUnitWidth32EEECs8frGy5WneL6_4fish.exit
  ret void

bb.f:                                             ; preds = %bb.b
  %i.h = urem i64 %i.b, %i.d                      ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.h
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1Q_15CodeUnitWidth32EEEE8try_lockCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.m)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.8, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.7, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.5, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26
  %.lcssa = phi i64 [ %i.fb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.8 ], [ %i.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26 ], [ %i.bh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.1 ], [ %i.bv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.2 ], [ %i.cj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.3 ], [ %i.cx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.4 ], [ %i.dl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.5 ], [ %i.dz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.6 ], [ %i.en, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.7 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #34
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.cb, %bb.bu, %bb.bn, %bb.bg, %bb.az, %bb.as, %bb.al, %bb.ae, %bb.x, %bb.h
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !5, !align !19, !noundef !5 ; 7 uses
  %i.q = load i8, ptr %i.k, align 8, !range !4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !902, !noundef !5 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !12, !alias.scope !902, !noundef !5
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB17_15CodeUnitWidth32EEE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.m unwind label %bb.k, !noalias !903

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1d_15CodeUnitWidth32EEECs8frGy5WneL6_4fish(ptr nonnull align 8 %1) #35
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish(ptr nonnull %i.p, i8 %i.q) #35
          to label %common.resume unwind label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !902, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t
  store ptr %1, ptr %i.aa, align 8, !noalias !903
  %i.ab = add i64 %i.t, 1
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !902
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ad = trunc nuw i8 %i.q to i1
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc14, !prof !14

.noexc14:                                         ; preds = %bb.n
  %i.ah = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ah, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc14
  store atomic i8 1, ptr %i.ac monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.o, %.noexc14, %bb.n, %bb.m
  %i.ai = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit, !prof !11

bb.p:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp, %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.r:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %.val.i16 = load ptr, ptr %i.j, align 8, !alias.scope !904 ; 4 uses
  %.val3.i17 = load i8, ptr %i.k, align 8, !range !7, !alias.scope !904, !noundef !5 ; 2 uses
  %.not.i.i18 = icmp eq i8 %.val3.i17, 2
  br i1 %.not.i.i18, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i16, i64 4
  %i.am = trunc nuw i8 %.val3.i17 to i1
  br i1 %i.am, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !904
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.u, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #36
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.u
  br i1 %i.aq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.v

bb.v:                                             ; preds = %.noexc24
  store atomic i8 1, ptr %i.al monotonic, align 1, !noalias !904
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19: ; preds = %bb.v, %.noexc24, %bb.t, %bb.s
  %i.ar = atomicrmw xchg ptr %.val.i16, i32 0 release, align 4, !noalias !904
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit.sink.split.i20, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26, !prof !11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit.sink.split.i20: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2p_15CodeUnitWidth32EEEEECs8frGy5WneL6_4fish.exit.sink.split.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.au = icmp ult i64 %i.h, %i.at
  br i1 %i.au, label %bb.w, label %bb.g

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26
  %i.av = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.h
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1Q_15CodeUnitWidth32EEEE8try_lockCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.aw)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.ax = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.y, label %bb.i

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %.val.i16.1 = load ptr, ptr %i.j, align 8, !alias.scope !905 ; 4 uses
  %.val3.i17.1 = load i8, ptr %i.k, align 8, !range !7, !alias.scope !905, !noundef !5 ; 2 uses
  %.not.i.i18.1 = icmp eq i8 %.val3.i17.1, 2
  br i1 %.not.i.i18.1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1X_5boxed3BoxINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB2L_15CodeUnitWidth32EEEEINtB12_12TryLockErrorBX_EEECs8frGy5WneL6_4fish.exit26.1, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.1) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i16.1, i64 4
end_hunk_1
begin_hunk_2_@_RNvMs8_NtCs8frGy5WneL6_4fish8completeNtB5_9Completer12complete_cmd:bb.a
  br label %bb.l

bb.k:                                             ; preds = %bb.m
  %i.be = add i64 %.sroa.01.0.i.i.i161, -1
  %.not.not.not.not.i.not.i = icmp eq ptr %i.ax, %i.bg
  br i1 %.not.not.not.not.i.not.i, label %.loopexit183.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.01.0.i.i.i161 = phi i64 [ %i.az, %.lr.ph ], [ %i.be, %bb.k ] ; 5 uses
  %i.bf = phi ptr [ %i.bd, %.lr.ph ], [ %i.bg, %bb.k ]
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !961, !noalias !963, !noundef !5 ; 4 uses
  %i.bi = xor i32 %i.bh, 55296
  %i.bj = add i32 %i.bi, -1114112
  %i.bk = icmp ult i32 %i.bj, -1112064
  br i1 %i.bk, label %.split.i.i.i.i, label %bb.m

.split.i.i.i.i:                                   ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !964
  store i32 %i.bh, ptr %i.b, align 4, !noalias !964
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1938) #31
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %.split.i.i.i.i
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bl = icmp ult i32 %i.bh, 1114112
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp eq i32 %i.bh, 47
  br i1 %i.bm, label %bb.n, label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.bn = icmp eq i64 %.sroa.01.0.i.i.i161, 0
  br i1 %i.bn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = icmp ugt i64 %.sroa.01.0.i.i.i161, %i.az
  br i1 %i.bo, label %.loopexit, label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #31
          to label %.noexc22 unwind label %bb.b

.noexc22:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bp = sub nuw i64 %i.az, %.sroa.01.0.i.i.i161
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.01.0.i.i.i161
  br label %.loopexit183.i

.loopexit183.i:                                   ; preds = %bb.k, %bb.j, %bb.q
  %.sroa.13.0.i = phi i64 [ %i.bp, %bb.q ], [ %i.az, %bb.j ], [ %i.az, %bb.k ] ; 6 uses
  %.sroa.0.0.i = phi ptr [ %i.bq, %bb.q ], [ %i.ax, %bb.j ], [ %i.ax, %bb.k ] ; 2 uses
  %i.br = icmp ult i64 %.sroa.13.0.i, 2
  br i1 %i.br, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.loopexit183.i
  %i.bs = invoke noundef zeroext i1 @_RINvNtCs8frGy5WneL6_4fish8wildcard12wildcard_hasRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB4_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.13.0.i)
          to label %.noexc23 unwind label %bb.b

.noexc23:                                         ; preds = %bb.r
  br i1 %i.bs, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.noexc23
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val97.i = load ptr, ptr %i.bt, align 8, !alias.scope !960, !nonnull !5, !noundef !5 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val98.i = load i64, ptr %i.bu, align 8, !alias.scope !960, !noundef !5 ; 2 uses
  %.idx207.i = mul nuw nsw i64 %.val98.i, 56
  %i.bv = getelementptr inbounds nuw i8, ptr %.val97.i, i64 %.idx207.i ; 2 uses
  %.not4.not.not.i.not.i162 = icmp eq i64 %.val98.i, 0
  br i1 %.not4.not.not.i.not.i162, label %.loopexit, label %.lr.ph163

bb.t:                                             ; preds = %_RNCNvMs8_NtCs8frGy5WneL6_4fish8completeNtB7_9Completer17complete_cmd_descs_0B9_.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bx, i64 56 ; 2 uses
  %.not4.not.not.i.not.i = icmp eq ptr %i.bw, %i.bv
  br i1 %.not4.not.not.i.not.i, label %.loopexit, label %.lr.ph163

.lr.ph163:                                        ; preds = %bb.s, %bb.t
  %i.bx = phi ptr [ %i.bw, %bb.t ], [ %.val97.i, %bb.s ] ; 3 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %.val2.i.i = load i64, ptr %i.by, align 8, !noalias !965, !noundef !5 ; 3 uses
  %i.bz = icmp ult i64 %.val2.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ca, label %bb.u, label %_RNCNvMs8_NtCs8frGy5WneL6_4fish8completeNtB7_9Completer17complete_cmd_descs_0B9_.exit.i.i

_RNCNvMs8_NtCs8frGy5WneL6_4fish8completeNtB7_9Completer17complete_cmd_descs_0B9_.exit.i.i: ; preds = %.lr.ph163
  %i.cb = getelementptr i8, ptr %i.bx, i64 8
  %.val.i107.i = load ptr, ptr %i.cb, align 8, !noalias !965, !nonnull !5, !noundef !5
  %i.cc = getelementptr [4 x i8], ptr %.val.i107.i, i64 %.val2.i.i
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !range !26, !noalias !965, !noundef !5
  %.not.i.i = icmp eq i32 %i.ce, 47
  br i1 %.not.i.i, label %bb.t, label %bb.u

bb.u:                                             ; preds = %_RNCNvMs8_NtCs8frGy5WneL6_4fish8completeNtB7_9Completer17complete_cmd_descs_0B9_.exit.i.i, %.lr.ph163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !962
  store i64 0, ptr %i.m, align 8, !noalias !962
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !962
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.545.0..sroa_idx.i, align 8, !noalias !962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !962
  invoke void @_RNvCs5UXtnEuoeIl_11fish_common6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.13.0.i)
          to label %bb.w unwind label %bb.v, !noalias !960

.body115.i:                                       ; preds = %bb.af, %.body110.i, %bb.v
  %.pn78.i = phi { ptr, i32 } [ %.pn76.i, %.body110.i ], [ %i.cf, %bb.v ], [ %i.cw, %bb.af ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #35
          to label %.body unwind label %bb.ay, !noalias !960

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i114.i, %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body115.i

bb.w:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !962, !nonnull !5, !noundef !5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !962, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !962
  store i64 0, ptr %i.i, align 8, !noalias !962
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !962
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !962
  store i64 1, ptr %i.k, align 8, !noalias !962
  %.sroa.4.0..sroa_idx233.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ch, ptr %.sroa.4.0..sroa_idx233.i, align 8, !noalias !962
  %.sroa.5.0..sroa_idx234.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.cj, ptr %.sroa.5.0..sroa_idx234.i, align 8, !noalias !962
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store i64 1, ptr %i.ck, align 8, !noalias !962
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !962
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !962
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 74, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @48, ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef 2)
          to label %bb.y unwind label %bb.x, !noalias !960

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.k) #35
          to label %.body108.i unwind label %bb.ay, !noalias !960

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.cm = load i8, ptr %i.l, align 8, !range !4, !alias.scope !966, !noalias !962, !noundef !5
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.z, label %.preheader182.i.preheader, !prof !11

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !967
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !range !24, !alias.scope !966, !noalias !962, !noundef !5
  store i8 %i.cp, ptr %i.c, align 1, !noalias !967
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #31
          to label %.noexc.i unwind label %bb.x, !noalias !960

.noexc.i:                                         ; preds = %bb.z
  unreachable

.preheader182.i:                                  ; preds = %.preheader182.i.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cq)
          to label %.preheader182.i.1 unwind label %.peel.begin.i, !noalias !960

.preheader182.i.1:                                ; preds = %.preheader182.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.ac, !noalias !960

.preheader182.i.preheader:                        ; preds = %bb.y
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k)
          to label %.preheader182.i unwind label %.peel.begin.i, !noalias !960

.peel.begin.i:                                    ; preds = %.preheader182.i, %.preheader182.i.preheader
  %i.cr = phi i1 [ false, %.preheader182.i.preheader ], [ true, %.preheader182.i ]
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cr, label %.body108.i, label %bb.aa

bb.aa:                                            ; preds = %.peel.begin.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ck) #35
          to label %.body108.i unwind label %bb.ab, !noalias !960

bb.ab:                                            ; preds = %bb.aa
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !960
  unreachable

.body108.i:                                       ; preds = %bb.aa, %.peel.begin.i, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.cs, %.peel.begin.i ], [ %i.cl, %bb.x ], [ %i.cs, %bb.aa ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #35
          to label %.body110.i unwind label %bb.ay, !noalias !960

bb.ac:                                            ; preds = %.preheader182.i.1
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body110.i unwind label %bb.ad, !noalias !960

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !960
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.preheader182.i.1
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ae, !noalias !960

.body110.i:                                       ; preds = %bb.ae, %bb.ac, %.body108.i
  %.pn76.i = phi { ptr, i32 } [ %i.ct, %bb.ac ], [ %.pn.i, %.body108.i ], [ %i.cv, %bb.ae ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #35
          to label %.body115.i unwind label %bb.ay, !noalias !960

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body110.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !962
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i114.i unwind label %bb.af, !noalias !960

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body115.i unwind label %bb.ag, !noalias !960

bb.ag:                                            ; preds = %bb.af
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !960
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i114.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit118.i unwind label %bb.v, !noalias !960

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit118.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !962
  store i64 0, ptr %i.h, align 8, !noalias !962
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cy, align 8, !noalias !962
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.cz, align 8, !noalias !962
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !962, !nonnull !5, !noundef !5
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !962, !noundef !5
  %i.de = invoke { i32, i32 } @_RNvNtCs8frGy5WneL6_4fish4exec13exec_subshell(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.db, i64 noundef %i.dd, ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %.val96.i, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(24) %i.h, i1 noundef zeroext false)
          to label %.split.i unwind label %bb.ah, !noalias !960 ; 0 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1A_EECs8frGy5WneL6_4fish.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %bb.ah
  %.pn91.i = phi { ptr, i32 } [ %i.df, %bb.ah ], [ %.pn89.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #35
          to label %.body139.i unwind label %bb.ay, !noalias !960

bb.ah:                                            ; preds = %._crit_edge.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit118.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1A_EECs8frGy5WneL6_4fish.exit.i

.split.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit118.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !962
  store ptr null, ptr %i.g, align 8, !noalias !962
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.dg, align 8, !noalias !962
  %i.dh = load ptr, ptr %i.cy, align 8, !noalias !962, !nonnull !5, !noundef !5 ; 2 uses
  %i.di = load i64, ptr %i.cz, align 8, !noalias !962, !noundef !5 ; 2 uses
  %.idx206.i = mul nuw nsw i64 %i.di, 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx206.i
  %i.dk = icmp eq i64 %i.di, 0
  br i1 %i.dk, label %.lr.ph205.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.ai

.lr.ph205.i:                                      ; preds = %.backedge.i, %.split.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br label %bb.az

bb.ai:                                            ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.027.0203.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %i.dp, %.backedge.i ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.027.0203.i, i64 24 ; 2 uses
  %i.dq = invoke { i64, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9find_charCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.027.0203.i, i32 noundef 9)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !960 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body134.i
  %.pn89.i = phi { ptr, i32 } [ %eh.lpad-body135.i, %.body134.i ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1A_EECs8frGy5WneL6_4fish.exit.i unwind label %bb.ay, !noalias !960

bb.aj:                                            ; preds = %bb.ai
  %i.dr = extractvalue { i64, i64 } %i.dq, 0
  %i.ds = extractvalue { i64, i64 } %i.dq, 1      ; 6 uses
  %i.dt = trunc nuw i64 %i.dr to i1
  br i1 %i.dt, label %bb.ak, label %.backedge.i

bb.ak:                                            ; preds = %bb.aj
  %i.du = icmp eq i64 %i.ds, -1
  br i1 %i.du, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = add nuw i64 %i.ds, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.027.0203.i, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !960, !noundef !5 ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 2305843009213693952
  call void @llvm.assume(i1 %i.dy)
  %.not80.i = icmp uge i64 %i.dv, %i.dx
  %.not81.i = icmp ult i64 %i.ds, %.sroa.13.0.i
  %or.cond267.i = or i1 %.not81.i, %.not80.i
  br i1 %or.cond267.i, label %.backedge.i, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #34
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !960

bb.an:                                            ; preds = %bb.bd, %bb.aw, %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.al
  %.idx.i = shl nuw nsw i64 %i.ds, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.027.0203.i, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !960, !nonnull !5, !noundef !5 ; 2 uses
  %i.eb = sub nuw nsw i64 %i.ds, %.sroa.13.0.i
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.sroa.13.0.i
  %i.ed = xor i64 %i.ds, -1
  %i.ee = add nsw i64 %i.dx, %i.ed                ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !962
  %i.eh = load i32, ptr %i.eg, align 4, !noalias !968, !noundef !5 ; 4 uses
  %i.ei = xor i32 %i.eh, 55296
  %i.ej = add i32 %i.ei, -1114112
  %i.ek = icmp ult i32 %i.ej, -1112064
  br i1 %i.ek, label %.split.i.i, label %bb.ap

.split.i.i:                                       ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !969
  store i32 %i.eh, ptr %i.a, align 4, !noalias !969
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1937) #31
          to label %.noexc128.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !960

.noexc128.i:                                      ; preds = %.split.i.i
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.el = icmp ult i32 %i.eh, 1114112
  call void @llvm.assume(i1 %i.el)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !962
  invoke void @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11conversions8to_upper(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.e, i32 noundef %i.eh)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !960

bb.aq:                                            ; preds = %bb.ap
  %i.em = load i32, ptr %i.dl, align 4, !range !26, !alias.scope !970, !noalias !962, !noundef !5
  %i.en = icmp eq i32 %i.em, 0
  %i.eo = load i32, ptr %i.dm, align 4, !range !26, !alias.scope !970, !noalias !962
  %i.ep = icmp eq i32 %i.eo, 0
  %spec.select.i129.i = select i1 %i.ep, i64 1, i64 2
  %.sroa.4.0.i.i = select i1 %i.en, i64 %spec.select.i129.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5166.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !noalias !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !962
  store i64 0, ptr %i.f, align 8, !noalias !962
  store i64 %.sroa.4.0.i.i, ptr %.sroa.4165.0..sroa_idx.i, align 8, !noalias !962
  %i.eq = invoke noundef i32 @_RNvXsu_NtCs3oUPovFnLWP_4core4charNtB5_11ToUppercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !960 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bb, %bb.az, %bb.at, %bb.ar, %bb.aq, %bb.ap, %bb.ai, %bb.bd, %bb.aw, %.split.i.i, %bb.am
  %lpad.loopexit.split-lp188 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.ar:                                            ; preds = %bb.aq
  %i.er = invoke noundef i32 @_RNvXsu_NtCs3oUPovFnLWP_4core4charNtB5_11ToUppercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !960

bb.as:                                            ; preds = %bb.ar
  %.not84.i = icmp ne i32 %i.eq, -1
end_hunk_2
begin_hunk_3_@_RNvNtCs8frGy5WneL6_4fish8complete14complete_print:bb.a

bb.as:                                            ; preds = %bb.ar
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body84 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.013.0307, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !5 ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_RNvNtCs8frGy5WneL6_4fish8complete22append_switch_long_arg.exit, label %bb.au

bb.au:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.013.0307, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2099
  store ptr @240, ptr %i.di, align 8, !noalias !2099
  store i64 5, ptr %i.dj, align 8, !noalias !2099
  store i64 1, ptr %i.x, align 8, !noalias !2099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2099
  invoke void @_RNvCs5UXtnEuoeIl_11fish_common6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fs, i64 noundef %i.fp)
          to label %bb.aw unwind label %bb.av, !noalias !2100

bb.av:                                            ; preds = %bb.au
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x) #35
          to label %.body84 unwind label %.peel.begin.critedge.split-lp, !noalias !2100

bb.aw:                                            ; preds = %bb.au
  %i.fu = load ptr, ptr %i.dk, align 8, !noalias !2099, !nonnull !5, !noundef !5
  %i.fv = load i64, ptr %i.dl, align 8, !noalias !2099, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !2099
  store i64 1, ptr %i.dm, align 8, !noalias !2099
  store ptr %i.fu, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2099
  store i64 %i.fv, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2099
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @48, ptr noalias nofree noundef nonnull align 8 %i.y, i64 noundef 2)
          to label %bb.az unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %bb.ba
  %lpad.loopexit.split-lp477 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y)
          to label %bb.ax unwind label %.critedge

bb.ax:                                            ; preds = %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp
  %i.fw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fw)
          to label %.body.i unwind label %.peel.begin.critedge.split-lp

.peel.begin.critedge.split-lp:                    ; preds = %bb.av, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113, %bb.ax
  %lpad.critedge.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body114

.critedge:                                        ; preds = %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp
  %lpad.critedge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dm) #35
          to label %.body114 unwind label %bb.ay

bb.ay:                                            ; preds = %.critedge
  %lpad.loopexit.split-lp373 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.az:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  %i.fx = load i8, ptr %i.z, align 8, !range !4, !alias.scope !2101, !noalias !2099, !noundef !5
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.ba, label %.preheader.i.preheader.preheader, !prof !11

.preheader.i.preheader.preheader:                 ; preds = %bb.az
  %i.fz = load i64, ptr %i.y, align 8, !range !23, !alias.scope !2102, !noundef !5
  switch i64 %i.fz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit [
    i64 2, label %bb.bb
    i64 3, label %bb.be
  ]

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2103
  %i.ga = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !range !24, !alias.scope !2101, !noalias !2099, !noundef !5
  store i8 %i.gb, ptr %i.v, align 1, !noalias !2103
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #31
          to label %.noexc.i unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %.preheader.i.preheader.preheader
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bi, %bb.bb
  %.lcssa343.a = phi i64 [ 1, %bb.bb ], [ 2, %bb.bi ]
  %.lcssa340.a = phi ptr [ %i.dp, %bb.bb ], [ %i.dr, %bb.bi ]
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.lcssa340.a)
          to label %.peel.begin.i.body unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit unwind label %.peel.begin.i

bb.be:                                            ; preds = %.preheader.i.preheader.preheader
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i120 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %bb.be
  %.lcssa341 = phi i64 [ 1, %bb.be ], [ 2, %bb.bh ]
  %.lcssa339 = phi ptr [ %i.do, %bb.be ], [ %i.dq, %bb.bh ]
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.lcssa339)
          to label %.peel.begin.i.body unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i120: ; preds = %bb.be
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit unwind label %.peel.begin.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i120, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i, %.preheader.i.preheader.preheader
  %i.gg = load i64, ptr %i.dm, align 8, !range !23, !alias.scope !2102, !noundef !5
  switch i64 %i.gg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.1 [
    i64 2, label %bb.bi
    i64 3, label %bb.bh
  ]

bb.bh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i120.1 unwind label %bb.bf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i120.1: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.1 unwind label %.peel.begin.i

bb.bi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.1 unwind label %bb.bc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.1: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.1 unwind label %.peel.begin.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.1: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i120.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.bn

.peel.begin.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i120.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i120, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i
  %.lcssa342 = phi i64 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i120 ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i120.1 ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.1 ]
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.peel.begin.i.body

.peel.begin.i.body:                               ; preds = %bb.bc, %bb.bf, %.peel.begin.i
  %i.gi = phi i64 [ %.lcssa342, %.peel.begin.i ], [ %.lcssa343.a, %bb.bc ], [ %.lcssa341, %bb.bf ]
  %eh.lpad-body121 = phi { ptr, i32 } [ %i.gh, %.peel.begin.i ], [ %i.gc, %bb.bc ], [ %i.ge, %bb.bf ] ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 2
  br i1 %i.gj, label %.body.i, label %bb.bj

bb.bj:                                            ; preds = %.peel.begin.i.body
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dm) #35
          to label %.body.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

.body.i:                                          ; preds = %bb.ax, %bb.bj, %.peel.begin.i.body
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body121, %bb.bj ], [ %eh.lpad-body121, %.peel.begin.i.body ], [ %lpad.loopexit.split-lp477, %bb.ax ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113 unwind label %bb.bl

bb.bl:                                            ; preds = %.body.i
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body114 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113: ; preds = %.body.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body84 unwind label %.peel.begin.critedge.split-lp

bb.bn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.1
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body84 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.1
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2099
  br label %_RNvNtCs8frGy5WneL6_4fish8complete22append_switch_long_arg.exit

.body114:                                         ; preds = %.peel.begin.critedge.split-lp, %.critedge, %bb.bl
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNvNtCs8frGy5WneL6_4fish8complete22append_switch_long_arg.exit: ; preds = %.noexc89, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef range(i64 0, 4611686018427387904) 1)
          to label %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit92: ; preds = %_RNvNtCs8frGy5WneL6_4fish8complete22append_switch_long_arg.exit
  %i.go = load i64, ptr %.sroa.519.0..sroa_idx, align 8, !alias.scope !2104, !noundef !5 ; 2 uses
  %i.gp = icmp ult i64 %i.go, 2305843009213693952
  call void @llvm.assume(i1 %i.gp)
  %i.gq = load ptr, ptr %.sroa.418.0..sroa_idx, align 8, !alias.scope !2104, !nonnull !5, !noundef !5
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.go
  store i32 10, ptr %i.gr, align 4
  %.pre.i.i90 = load i64, ptr %.sroa.519.0..sroa_idx, align 8, !alias.scope !2104
  %i.gs = add i64 %.pre.i.i90, 1
  store i64 %i.gs, ptr %.sroa.519.0..sroa_idx, align 8, !alias.scope !2104
  %i.gt = icmp eq ptr %i.ew, %i.eq
  br i1 %i.gt, label %.backedge.backedge, label %bb.am

bb.bp:                                            ; preds = %.body100, %.thread174, %.body84, %.body.thread, %bb.ez, %bb.ev, %bb.aq
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.bq:                                            ; preds = %bb.q
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !noundef !5
  %i.gx = icmp eq i64 %i.gw, %2
  br i1 %i.gx, label %bb.bs, label %.backedge233

bb.br:                                            ; preds = %bb.bs, %bb.q
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !noundef !5 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %.backedge233, label %.lr.ph

.lr.ph:                                           ; preds = %bb.br
  %.idx310 = mul nuw nsw i64 %i.hb, 104
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.idx310
  %i.he = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.hf = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !nonnull !5, !noundef !5
  %bcmp51 = call i32 @bcmp(ptr nonnull %i.hi, ptr nonnull %1, i64 %i.ch)
  %.not52 = icmp eq i32 %bcmp51, 0
  br i1 %.not52, label %bb.br, label %.backedge233

.backedge233.loopexit:                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111
  %.pre = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2105
  %.pre376 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2105
  br label %.backedge233

.backedge233:                                     ; preds = %.backedge233.loopexit, %bb.bs, %bb.bq, %bb.br
  %i.hj = phi ptr [ %.pre376, %.backedge233.loopexit ], [ %i.ck, %bb.bs ], [ %i.ck, %bb.bq ], [ %i.ck, %bb.br ] ; 2 uses
  %i.hk = phi ptr [ %.pre, %.backedge233.loopexit ], [ %i.ci, %bb.bs ], [ %i.ci, %bb.bq ], [ %i.ci, %bb.br ] ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %._crit_edge, label %bb.q

bb.bt:                                            ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111
  %.sroa.45.0304 = phi ptr [ %i.hd, %.lr.ph ], [ %i.hm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111 ] ; 17 uses
  %i.hm = getelementptr inbounds i8, ptr %.sroa.45.0304, i64 -104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2108
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef 8, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc98 unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %bb.bt
  %i.hn = load i64, ptr %i.s, align 8, !range !6, !noalias !2108, !noundef !5
  %i.ho = trunc nuw i64 %i.hn to i1
  %i.hp = load i64, ptr %i.bx, align 8, !range !10, !noalias !2108, !noundef !5 ; 3 uses
  br i1 %i.ho, label %bb.bu, label %bb.bv, !prof !11

bb.bu:                                            ; preds = %.noexc98
  %i.hq = load i64, ptr %i.by, align 8, !noalias !2108
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.hp, i64 %i.hq) #34
          to label %.noexc99 unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %.noexc98
  %i.hr = load ptr, ptr %i.by, align 8, !noalias !2108, !nonnull !5, !noundef !5 ; 2 uses
  %i.hs = icmp samesign ugt i64 %i.hp, 7
  call void @llvm.assume(i1 %i.hs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.hr, ptr noundef nonnull align 4 dereferenceable(32) @243, i64 32, i1 false), !noalias !2108
  store i64 %i.hp, ptr %i.u, align 8, !noalias !2108
  store ptr %i.hr, ptr %.sroa.4.0..sroa_idx.i93, align 8, !noalias !2108
  store i64 8, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2108
  %i.ht = getelementptr inbounds i8, ptr %.sroa.45.0304, i64 -8
  %i.hu = load i16, ptr %i.ht, align 8, !alias.scope !2107, !noundef !5
  %i.hv = and i16 %i.hu, 32
  %.not.i = icmp eq i16 %i.hv, 0
  br i1 %.not.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish8complete19append_switch_short.exit.i, %bb.bv
  %i.hw = getelementptr inbounds i8, ptr %.sroa.45.0304, i64 -6
  %i.hx = load i8, ptr %i.hw, align 2, !range !4, !alias.scope !2107, !noundef !5
  %i.hy = trunc nuw i8 %i.hx to i1                ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %.sroa.45.0304, i64 -4
  %i.ia = load i8, ptr %i.hz, align 4, !range !4, !alias.scope !2107
  %i.ib = trunc nuw i8 %i.ia to i1                ; 2 uses
  %or.cond.i = select i1 %i.hy, i1 %i.ib, i1 false
  br i1 %or.cond.i, label %bb.cl, label %bb.ck

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2109
  store i64 4, ptr %i.q, align 8, !noalias !2109
  store i64 107, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2109
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @251, i64 noundef 4, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @48, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef 1)
          to label %bb.by unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2108

.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bx, %bb.bz
  %lpad.loopexit.split-lp489.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %.body.i94 unwind label %bb.ch, !noalias !2108

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  %i.ic = load i8, ptr %i.r, align 8, !range !4, !alias.scope !2110, !noalias !2109, !noundef !5
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.bz, label %bb.ca, !prof !11

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2111
  %i.ie = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !range !24, !alias.scope !2110, !noalias !2109, !noundef !5
  store i8 %i.if, ptr %i.p, align 1, !noalias !2111
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #31
          to label %.noexc.i.i unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2108

.noexc.i.i:                                       ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.ig = load i64, ptr %i.q, align 8, !range !23, !alias.scope !2112, !noalias !2108, !noundef !5
  switch i64 %i.ig, label %_RNvNtCs8frGy5WneL6_4fish8complete19append_switch_short.exit.i [
    i64 2, label %bb.cb
    i64 3, label %bb.ce
  ]

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i153 unwind label %bb.cc, !noalias !2108

end_hunk_3
begin_hunk_4_@_RNvNtCs8frGy5WneL6_4fish8complete22complete_function_desc:bb.a
  %i.x = invoke fastcc { ptr, i64 } @_RNvNtNtCs8frGy5WneL6_4fish12localization7gettext7gettext(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc9 unwind label %bb.h    ; 2 uses

.noexc9:                                          ; preds = %bb.f
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2249
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.l, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  %i.ab = load ptr, ptr %i.d, align 8, !alias.scope !2252, !nonnull !5, !noundef !5
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !2252
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEB1d_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #36
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEB1d_.exit unwind label %bb.s

bb.j:                                             ; preds = %.noexc9, %.noexc, %bb.d, %bb.c
  %.sroa.5.0.i = phi i64 [ 0, %bb.d ], [ %i.z, %.noexc9 ], [ %i.s, %.noexc ], [ 0, %bb.c ] ; 5 uses
  %.sroa.0.0.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.d ], [ %i.y, %.noexc9 ], [ %i.r, %.noexc ], [ inttoptr (i64 4 to ptr), %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.5.0.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.ae = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !10, !noundef !5 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.af, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.ai, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ah, i64 %i.aj) #34
          to label %bb.r unwind label %bb.h

bb.m:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = icmp ule i64 %.sroa.5.0.i, %i.ah
  tail call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not8 = icmp eq i64 %.sroa.5.0.i, 0
  br i1 %.not8, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.p, %bb.m
  store i64 %i.ah, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !2255, !nonnull !5, !noundef !5
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !2255
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEB1d_.exit11

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEB1d_.exit11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEB1d_.exit11: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.ap = shl nuw nsw i64 %.sroa.5.0.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %.sroa.0.0.i, i64 %i.ap, i1 false)
  br label %bb.n

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEB1d_.exit11, %bb.g
  ret void

bb.r:                                             ; preds = %bb.l
  unreachable

bb.s:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEB1d_.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs8frGy5WneL6_4fish8complete23append_switch_short_arg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i32 noundef range(i32 97, 116) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.g, ptr %i.h, align 8
  store i64 4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvCs5UXtnEuoeIl_11fish_common6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #35
          to label %common.resume unwind label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 1, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @259, i64 noundef 7, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @48, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef 2)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #35
          to label %.body unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  %i.p = load i8, ptr %i.e, align 8, !range !4, !alias.scope !2259, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %.preheader.preheader, !prof !11

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2260
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.s = load i8, ptr %i.r, align 1, !range !24, !alias.scope !2259, !noundef !5
  store i8 %i.s, ptr %i.a, align 1, !noalias !2260
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #31
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.g
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t)
          to label %.preheader.1 unwind label %.peel.begin

.preheader.1:                                     ; preds = %.preheader
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.j

.preheader.preheader:                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
          to label %.preheader unwind label %.peel.begin

.peel.begin:                                      ; preds = %.preheader, %.preheader.preheader
  %i.u = phi i1 [ false, %.preheader.preheader ], [ true, %.preheader ]
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.u, label %.body, label %bb.h

bb.h:                                             ; preds = %.peel.begin
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #35
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.h, %.peel.begin, %bb.e
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.v, %.peel.begin ], [ %i.v, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #35
          to label %common.resume unwind label %bb.m

bb.j:                                             ; preds = %.preheader.1
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.c, %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.j ], [ %.pn, %.body ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %.preheader.1
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  ret void

bb.m:                                             ; preds = %.body, %bb.e, %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish8complete23complete_remove_wrapper(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  %i.l = icmp eq i64 %2, 0
  %or.cond = or i1 %i.l, %i.k
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %.body, %bb.v, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.v ], [ %i.m, %bb.c ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.o = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP, i64 56) acquire, align 8
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP, i64 56), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit

.body:                                            ; preds = %bb.j, %bb.g, %.body17
  %.pn = phi { ptr, i32 } [ %eh.lpad-body18, %.body17 ], [ %i.q, %bb.g ], [ %i.y, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #35
          to label %common.resume unwind label %bb.ac

bb.g:                                             ; preds = %bb.u, %bb.s, %bb.f, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit: ; preds = %.noexc, %bb.e
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtBb_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB1D_EEE4lockCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 @_RNvNtCs8frGy5WneL6_4fish8complete11WRAPPER_MAP)
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtNtNtBa_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2M_EEEE5force0ECs8frGy5WneL6_4fish.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  %i.r = load i64, ptr %i.g, align 8, !range !6, !alias.scope !2267, !noundef !5
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.i, label %bb.m, !prof !11

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2268
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !2267, !nonnull !5, !align !19, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !4, !alias.scope !2267, !noundef !5
  store ptr %i.u, ptr %i.a, align 8, !noalias !2268
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.w, ptr %i.x, align 8, !noalias !2268
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #34
          to label %bb.k unwind label %bb.j, !noalias !2267

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtBI_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2v_EEEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #35
          to label %.body unwind label %bb.l, !noalias !2267

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !2267
  unreachable

bb.m:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2267, !nonnull !5, !align !19, !noundef !5 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !4, !alias.scope !2267, !noundef !5 ; 2 uses
  %i.ae = trunc nuw i8 %i.ad to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBN_ENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE8iter_mutCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.m, %.loopexit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.aa
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.bi, %bb.aa ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish(ptr nonnull %i.ab, i8 %i.ad) #35
          to label %.body unwind label %bb.ac

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ag = shl nuw i64 %2, 2
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit20, %bb.n
  %.sroa.0.0.ph = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit20 ], [ false, %bb.n ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %.loopexit.outer
  %i.ah = invoke { ptr, ptr } @_RNvXsK_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7IterMutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBN_EENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.loopexit
  %i.ai = extractvalue { ptr, ptr } %i.ah, 0
  %i.aj = extractvalue { ptr, ptr } %i.ah, 1      ; 4 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %i.an, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %.loopexit.backedge, label %.lr.ph.i

.loopexit.backedge:                               ; preds = %_RNCNvNtCs8frGy5WneL6_4fish8complete23complete_remove_wrapper0B5_.exit.thread.i, %bb.p
end_hunk_4
