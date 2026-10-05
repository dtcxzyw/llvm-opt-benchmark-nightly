Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ra_ap_rustc_parse_format-41ff0d7045b243ff.ra_ap_rustc_parse_format.d0975aa7e68fcc34-cgu.0?download=true
inline.NumInlined: 163
inline.NumDeleted: 57
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUkdWg1oz5w_24ra_ap_rustc_parse_format:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMCshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB2_8Argument13is_identifier(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(248) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load i64, ptr %i.b, align 8, !range !7, !noundef !5
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i32 -1, ptr %i.e, align 8
  store i64 0, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  store <4 x i8> <i8 0, i8 0, i8 2, i8 2>, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  store i16 4, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  store i16 4, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.p = load i8, ptr %i.o, align 4, !range !8, !alias.scope !31, !noalias !32, !noundef !5
  %i.q = icmp ne i8 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 197
  %i.s = load i8, ptr %i.r, align 1, !range !8
  %i.t = icmp ne i8 %i.s, 0
  %or.cond.not37 = select i1 %i.q, i1 true, i1 %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.v = load i32, ptr %i.u, align 8, !range !9
  %.not.i = icmp ne i32 %i.v, -1
  %or.cond14.not34 = select i1 %or.cond.not37, i1 true, i1 %.not.i
  %i.w = load i64, ptr %0, align 8, !range !10
  %i.x = trunc nuw i64 %i.w to i1
  %or.cond16 = select i1 %or.cond14.not34, i1 true, i1 %i.x
  %or.cond16.not = xor i1 %or.cond16, true
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.z = load i8, ptr %i.y, align 8, !range !33
  %i.aa = icmp eq i8 %i.z, 3
  %or.cond19 = select i1 %or.cond16.not, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 198
  %i.ac = load i8, ptr %i.ab, align 2, !range !11
  %.not8.i = icmp eq i8 %i.ac, 2
  %or.cond21 = select i1 %or.cond19, i1 %.not8.i, i1 false
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 199
  %i.ae = load i8, ptr %i.ad, align 1, !range !11
  %.not10.i = icmp eq i8 %i.ae, 2
  %or.cond23 = select i1 %or.cond21, i1 %.not10.i, i1 false
  br i1 %or.cond23, label %bb.c, label %_RNvXsk_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB5_10FormatSpecNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = call fastcc noundef zeroext i1 @_RNvXsM_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB5_5CountNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) #22
  %.not = xor i1 %i.ag, true
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !range !10
  %i.aj = trunc nuw i64 %i.ai to i1
  %or.cond26 = select i1 %.not, i1 true, i1 %i.aj
  br i1 %or.cond26, label %_RNvXsk_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB5_10FormatSpecNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = call fastcc noundef zeroext i1 @_RNvXsM_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB5_5CountNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j) #22
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load i64, ptr %i.am, align 8, !range !10
  %i.ao = trunc nuw i64 %i.an to i1
  %.not40 = xor i1 %i.ao, true
  %or.cond30.not = select i1 %i.al, i1 %.not40, i1 false
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  %or.cond = select i1 %or.cond30.not, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.e, label %_RNvXsk_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB5_10FormatSpecNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load i64, ptr %i.as, align 8, !range !10
  %i.au = trunc nuw i64 %i.at to i1
  %not.or.cond33 = xor i1 %i.au, true
  br label %_RNvXsk_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB5_10FormatSpecNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXsk_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB5_10FormatSpecNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.e, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ %not.or.cond33, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvXsk_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB5_10FormatSpecNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i, %_RNvXsk_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB5_10FormatSpecNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc11is_assigned(i32 noundef range(i32 33, 1114112) %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i32 %0, 888
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 262142
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %0, 917505
  %i.d = add nsw i32 %0, -917536
  %or.cond2 = icmp ult i32 %i.d, 96
  %or.cond = select i1 %i.c, i1 true, i1 %or.cond2
  %i.e = add nsw i32 %0, -917760
  %or.cond3 = icmp ult i32 %i.e, 240
  %or.cond6 = select i1 %or.cond, i1 true, i1 %or.cond3
  %i.f = add nsw i32 %0, -983040
  %or.cond4 = icmp ult i32 %i.f, 65534
  %or.cond7 = select i1 %or.cond6, i1 true, i1 %or.cond4
  br i1 %or.cond7, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data13cn_planes_0_311lookup_slow(i32 noundef %0) #23
  %i.h = xor i1 %i.g, true
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i32 %0, -1048576
  %spec.select = icmp ult i32 %i.i, 65534
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.c ], [ %i.h, %bb.d ], [ true, %bb.a ], [ %spec.select, %bb.e ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB5_6Parser10peek_ahead(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((24, 28)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(176) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.e ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !range !12, !noundef !5
  %i.n = load <2 x i64>, ptr %i.i, align 8
  store <2 x i64> %i.n, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.m, %bb.b ], [ -1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sink, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB5_6Parser3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 0, 2) %3, i64 %4, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %5, i1 noundef zeroext %6, i8 noundef range(i8 0, 3) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = trunc nuw i64 %3 to i1                   ; 2 uses
  %i.m = add i64 %4, 2                            ; 8 uses
  %spec.select.i = select i1 %i.l, i64 %i.m, i64 1
  store i64 %spec.select.i, ptr %i.k, align 8
  %i.n = load i64, ptr %5, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.n, -1                    ; 5 uses
  br i1 %.not, label %.thread143, label %bb.c

.body:                                            ; preds = %bb.ay, %bb.b, %bb.bb
  %.sroa.064.0 = phi i1 [ %.not, %bb.ay ], [ %.not, %bb.bb ], [ %.sroa.064.1, %bb.b ]
  %.pn.pn = phi { ptr, i32 } [ %i.eu, %bb.ay ], [ %i.ew, %bb.bb ], [ %i.o, %bb.b ] ; 2 uses
  %.not.not = xor i1 %.not, true
  %or.cond = and i1 %.sroa.064.0, %.not.not
  br i1 %or.cond, label %bb.bc, label %.thread

bb.b:                                             ; preds = %bb.az, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i
  %.sroa.064.1 = phi i1 [ %.not, %bb.az ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i ]
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br i1 %i.l, label %bb.d, label %bb.y

.thread143:                                       ; preds = %bb.a
  %. = sext i1 %6 to i64
  %i.p = add i64 %2, %.
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.11.0..sroa_idx29149 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.11.0..sroa_idx29149, align 8
  %.sroa.19.0..sroa_idx33150 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.19.0..sroa_idx33150, align 8
  br label %bb.av

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %4, 1                            ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 18 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub nuw nsw i64 %i.u, %i.q               ; 6 uses
  %i.x = add i64 %i.m, %i.q
  %.not86 = icmp ult i64 %i.u, %i.x
  br i1 %.not86, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not87 = icmp eq i64 %i.u, 0
  br i1 %.not87, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.s, align 1, !noundef !5
  %i.z = icmp eq i8 %i.y, 114
  br i1 %i.z, label %bb.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit

.body101:                                         ; preds = %bb.ai, %bb.g, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.ac ], [ %i.aa, %bb.g ], [ %i.cz, %bb.ai ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #21
          to label %.thread unwind label %bb.au

bb.g:                                             ; preds = %.invoke, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.invoke, %bb.aj, %bb.y, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body101

bb.h:                                             ; preds = %bb.j
  unreachable

bb.i:                                             ; preds = %bb.f
  %or.cond94.not = icmp ult i64 %4, %i.u
  br i1 %or.cond94.not, label %bb.k, label %bb.j, !prof !47

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %i.q, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #24
          to label %bb.h unwind label %bb.g

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %4
  %i.ad = icmp samesign eq i64 %4, 0
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ac
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %i.ag = phi ptr [ %i.ae, %bb.l ], [ %i.ab, %bb.k ] ; 2 uses
  %.val.i = load i8, ptr %i.ag, align 1, !noalias !48, !noundef !5
  %i.ah = icmp eq i8 %.val.i, 35
  br i1 %i.ah, label %bb.l, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %i.ai = icmp ult i64 %i.q, %i.u
  br i1 %i.ai, label %bb.m, label %.invoke

bb.m:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !5
  %i.al = icmp eq i8 %i.ak, 34
  br i1 %i.al, label %bb.n, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit

.invoke:                                          ; preds = %bb.e, %._crit_edge
  %i.am = phi i64 [ %i.q, %._crit_edge ], [ 0, %bb.e ]
  %i.an = phi i64 [ %i.u, %._crit_edge ], [ 0, %bb.e ]
  %i.ao = phi ptr [ @20, %._crit_edge ], [ @19, %bb.e ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao) #24
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !5
  %i.ar = icmp eq i8 %i.aq, 34
  br i1 %i.ar, label %bb.o, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %4
  %i.au = icmp samesign eq i64 %4, 0
  br i1 %i.au, label %._crit_edge180, label %.lr.ph179

bb.p:                                             ; preds = %.lr.ph179
  %i.av = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %._crit_edge180, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.o, %bb.p
  %i.ax = phi ptr [ %i.av, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %.val.i99 = load i8, ptr %i.ax, align 1, !noalias !49, !noundef !5
  %i.ay = icmp eq i8 %.val.i99, 35
  br i1 %i.ay, label %bb.p, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit

._crit_edge180:                                   ; preds = %bb.p, %bb.o
  %i.az = icmp ugt i64 %i.m, %i.w
  br i1 %i.az, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.invoke, label %bb.q, !prof !13

bb.q:                                             ; preds = %._crit_edge180
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !50, !noundef !5
  %i.bc = icmp sgt i8 %i.bb, -65
  br i1 %i.bc, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit97.thread, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.invoke, !prof !14

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit97.thread: ; preds = %bb.q
  %i.bd = sub nuw nsw i64 %i.w, %i.m              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  br i1 %6, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit97.thread
  %i.bf = add i64 %2, -1                          ; 5 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.not = icmp eq i64 %2, 0
  br i1 %.not.i.not, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !51, !noundef !5
  %i.bj = icmp sgt i8 %i.bi, -65
  br i1 %i.bj, label %bb.u, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.invoke

bb.u:                                             ; preds = %bb.r, %bb.t, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit97.thread
  %.sroa.36.0 = phi i64 [ %2, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit97.thread ], [ %i.bf, %bb.t ], [ 0, %bb.r ]
  %i.bk = icmp eq i64 %i.bd, %.sroa.36.0
  br i1 %i.bk, label %bb.v, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit

bb.v:                                             ; preds = %bb.u
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.be, ptr nonnull %1, i64 %i.bd)
  %i.bl = icmp eq i32 %bcmp, 0                    ; 2 uses
  %spec.select = select i1 %i.bl, i64 %i.w, i64 %i.u
  %spec.select155 = zext i1 %i.bl to i8
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit: ; preds = %.lr.ph, %.lr.ph179, %bb.z, %bb.v, %bb.u, %bb.d, %bb.f, %bb.m, %bb.n, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejEcEEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit
  %.sroa.19.0 = phi i64 [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %.lr.ph179 ], [ %.sroa.19.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejEcEEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.z ], [ 0, %.lr.ph ] ; 4 uses
  %.sroa.11.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.v ], [ inttoptr (i64 8 to ptr), %bb.u ], [ inttoptr (i64 8 to ptr), %.lr.ph179 ], [ %.sroa.11.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejEcEEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit ], [ inttoptr (i64 8 to ptr), %bb.n ], [ inttoptr (i64 8 to ptr), %bb.m ], [ inttoptr (i64 8 to ptr), %bb.f ], [ inttoptr (i64 8 to ptr), %bb.d ], [ inttoptr (i64 8 to ptr), %bb.z ], [ inttoptr (i64 8 to ptr), %.lr.ph ] ; 5 uses
  %.sroa.024.0 = phi i64 [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %.lr.ph179 ], [ %.sroa.024.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejEcEEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.z ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.016.0 = phi i64 [ %spec.select, %bb.v ], [ %i.u, %bb.u ], [ %i.u, %.lr.ph179 ], [ %.sroa.016.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejEcEEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit ], [ %i.u, %bb.n ], [ %i.u, %bb.m ], [ %i.u, %bb.f ], [ %i.u, %bb.d ], [ %i.bt, %bb.z ], [ %i.u, %.lr.ph ] ; 2 uses
  %.sroa.073.0 = phi i8 [ %spec.select155, %bb.v ], [ 0, %bb.u ], [ 0, %.lr.ph179 ], [ %.sroa.073.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejEcEEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.z ], [ 0, %.lr.ph ] ; 2 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i unwind label %bb.w

bb.w:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.at unwind label %bb.b

bb.y:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !5, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 34, ptr %i.a, align 4
  %i.bs = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %bb.z unwind label %bb.g

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bt = load i64, ptr %i.bq, align 8, !noundef !5 ; 8 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  call void @llvm.assume(i1 %i.bu)
  br i1 %i.bs, label %bb.aa, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB1J_6Parser3news_0EB1J_.exit

bb.aa:                                            ; preds = %bb.z
  %i.bv = add nsw i64 %i.bt, -1                   ; 4 uses
  %i.bw = load ptr, ptr %i.bo, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %or.cond.i = icmp samesign ult i64 %i.bt, 2
  br i1 %or.cond.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.invoke, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !52, !noundef !5
  %i.bz = icmp sgt i8 %i.by, -65
  br i1 %i.bz, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.invoke, !prof !14

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit: ; preds = %bb.ab
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !52, !noundef !5
  %i.cc = icmp sgt i8 %i.cb, -65
  br i1 %i.cc, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread141, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.invoke, !prof !15

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.invoke: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit, %bb.aa, %bb.ab, %bb.s, %bb.t, %._crit_edge180, %bb.q
  %i.cd = phi ptr [ %1, %bb.s ], [ %i.s, %._crit_edge180 ], [ %i.s, %bb.q ], [ %1, %bb.t ], [ %i.bw, %bb.ab ], [ %i.bw, %bb.aa ], [ %i.bw, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit ]
  %i.ce = phi i64 [ %2, %bb.s ], [ %i.u, %._crit_edge180 ], [ %i.u, %bb.q ], [ %2, %bb.t ], [ %i.bt, %bb.ab ], [ %i.bt, %bb.aa ], [ %i.bt, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit ]
  %i.cf = phi i64 [ 0, %bb.s ], [ %i.m, %._crit_edge180 ], [ %i.m, %bb.q ], [ 0, %bb.t ], [ 1, %bb.ab ], [ 1, %bb.aa ], [ 1, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit ]
  %i.cg = phi i64 [ %i.bf, %bb.s ], [ %i.w, %._crit_edge180 ], [ %i.w, %bb.q ], [ %i.bf, %bb.t ], [ %i.bv, %bb.ab ], [ %i.bv, %bb.aa ], [ %i.bv, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit ]
  %i.ch = phi ptr [ @22, %bb.s ], [ @21, %._crit_edge180 ], [ @21, %bb.q ], [ @22, %bb.t ], [ @24, %bb.ab ], [ @24, %bb.aa ], [ @24, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.ce, i64 noundef %i.cf, i64 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch) #24
          to label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.cont unwind label %bb.g

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.cont: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.invoke
  unreachable

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread141: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit
  %i.ci = add nsw i64 %i.bt, -2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 1, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.38.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %i.f, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.cm, align 8
  invoke void @_RINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB17_6Parser3news1_0EB17_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef %i.ci, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ar, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread141
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejEcEEECshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #21
          to label %.body101 unwind label %bb.au

bb.ad:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.co = load i64, ptr %.sroa.38.0..sroa_idx, align 8, !noundef !5 ; 6 uses
  %.not85 = icmp eq i64 %i.co, 0
  br i1 %.not85, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.cq = getelementptr [24 x i8], ptr %i.cp, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !5
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sroa.09.0 = phi i64 [ %i.cs, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  %i.ct = load i8, ptr %i.h, align 1, !range !8, !noundef !5
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cv = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.cw = load ptr, ptr %i.ck, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %6, label %bb.am, label %bb.al

bb.ah:                                            ; preds = %bb.af, %bb.ap, %bb.am, %bb.al
  %i.cx = load i64, ptr %i.bq, align 8, !noundef !5 ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, -1
  call void @llvm.assume(i1 %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtBL_4drop4Drop4dropCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtBS_4drop4Drop4dropCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body101 unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtBS_4drop4Drop4dropCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejEcEEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit unwind label %bb.g

bb.ak:                                            ; preds = %bb.ai
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.al:                                            ; preds = %bb.ag
  %i.db = icmp eq ptr %i.cw, %i.cv
  br i1 %i.db, label %bb.an, label %bb.ah

bb.am:                                            ; preds = %bb.ag
  %i.dc = ptrtoint ptr %i.cw to i64
  %i.dd = ptrtoint ptr %i.cv to i64
  %i.de = sub nuw i64 %i.dc, %i.dd
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ap, label %bb.ah

bb.an:                                            ; preds = %bb.al
  %i.dg = add i64 %.sroa.09.0, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.as, %bb.an
  %.sroa.19.2 = phi i64 [ %i.dn, %bb.as ], [ %i.co, %bb.an ]
  %.sroa.016.2 = phi i64 [ %i.di, %bb.as ], [ %i.dg, %bb.an ]
  %.sroa.11.0.copyload28 = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
end_hunk_0
