Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_test-2f7d10107b04703e.uu_test.1caa145562c6b167-cgu.0?download=true
inline.NumInlined: 491
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCs2szWGFz6wmN_7uu_test4eval:bb.a
  br i1 %.not235, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5159.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5156.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.hy, ptr %0, align 8
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ia, ptr %.sroa.4158.0..sroa_idx, align 8
  %i.ib = icmp eq i64 %.sroa.4649.0.copyload, 0
  br i1 %i.ib, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit362, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5650.0.copyload, i64 noundef %.sroa.4649.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit362

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit362: ; preds = %bb.cd, %bb.ce
  %i.ic = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.ic, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit363, label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit362
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5625.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit363

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit363: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit362, %bb.cf
  %i.id = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.id, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit363
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.ch:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ia, ptr %i.ie, align 8
  store i64 -1, ptr %0, align 8
  %i.if = icmp eq i64 %.sroa.4649.0.copyload, 0
  br i1 %i.if, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit365, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5650.0.copyload, i64 noundef %.sroa.4649.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit365

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit365: ; preds = %bb.ch, %bb.ci
  %i.ig = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.ig, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit366, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit365
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5625.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit366

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit366: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit365, %bb.cj
  %i.ih = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.ih, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.ck

bb.ck:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit366
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.cl:                                            ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.5.0.copyload) #21
  %i.ii = load i64, ptr %i.p, align 8, !range !199, !noundef !18
  %i.ij = trunc nuw i64 %i.ii to i1
  br i1 %i.ij, label %bb.cx, label %bb.cy, !prof !207

bb.cm:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ik = icmp eq i64 %i.ab, 0
  br i1 %i.ik, label %.thread579, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.il = add nsw i64 %i.z, -2                    ; 3 uses
  store i64 %i.il, ptr %i.y, align 8
  %i.im = icmp samesign ult i64 %i.il, %i.ac
  tail call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.il
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.in, i64 40, i1 false)
  %.pr577 = load i64, ptr %i.v, align 8
  switch i64 %.pr577, label %bb.co [
    i64 -1, label %.thread579
    i64 3, label %bb.cp
    i64 6, label %bb.cu
  ]

.thread579:                                       ; preds = %bb.cm, %bb.cn
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.io, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cv

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  store i64 1, ptr %i.u, align 8
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.5132.sroa.4.0.copyload, ptr %.sroa.4167.0..sroa_idx, align 8
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.5132.sroa.5.0.copyload, ptr %.sroa.5168.0..sroa_idx, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i8 1, ptr %i.ip, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %.sroa.491.0..sroa_idx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u) #23
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v) #21
  br label %bb.cv

bb.cp:                                            ; preds = %bb.cn
  %i.iq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0462.0.copyload = load i64, ptr %i.iq, align 8
  %.sroa.4463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4463.0.copyload = load ptr, ptr %.sroa.4463.0..sroa_idx, align 8
  %.sroa.5464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.5464.0.copyload = load i64, ptr %.sroa.5464.0..sroa_idx, align 8
  %i.ir = icmp ne i64 %.sroa.5464.0.copyload, 0
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cu
  %.sroa.0459.0588 = phi i64 [ 0, %bb.cu ], [ %.sroa.0462.0.copyload, %bb.cp ] ; 2 uses
  %.sroa.6460.0586 = phi ptr [ inttoptr (i64 1 to ptr), %bb.cu ], [ %.sroa.4463.0.copyload, %bb.cp ] ; 2 uses
  %.sroa.8461.0584 = phi i1 [ false, %bb.cu ], [ %i.ir, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.is = icmp eq i64 %.sroa.5132.sroa.5.0.copyload, 2
  br i1 %i.is, label %bb.cr, label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit370

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  %i.it = load i16, ptr %.sroa.5132.sroa.4.0.copyload, align 1
  %i.iu = icmp ne i16 %i.it, 31277
  %i.iv = zext i1 %i.iu to i32
  %i.iw = icmp eq i32 %i.iv, 0
  %i.ix = xor i1 %.sroa.8461.0584, %i.iw
  br label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit370

_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit370: ; preds = %bb.cq, %bb.cr
  %.sroa.0.0.i368 = phi i1 [ %i.ix, %bb.cr ], [ %.sroa.8461.0584, %bb.cq ]
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iz = zext i1 %.sroa.0.0.i368 to i8
  store i8 %i.iz, ptr %i.iy, align 8
  store i64 -1, ptr %0, align 8
  %i.ja = icmp eq i64 %.sroa.0459.0588, 0
  br i1 %i.ja, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit371, label %bb.cs

bb.cs:                                            ; preds = %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit370
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6460.0586) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6460.0586, i64 noundef %.sroa.0459.0588, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit371

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit371: ; preds = %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit370, %bb.cs
  %i.jb = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.jb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit371
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.cu:                                            ; preds = %bb.cn
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v) #21
  br label %bb.cq

bb.cv:                                            ; preds = %.thread579, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.jc = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.jc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.cx:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #22
  unreachable

bb.cy:                                            ; preds = %bb.cl
  %i.jd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !18, !noundef !18 ; 20 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.jh = load i64, ptr %i.y, align 8, !noundef !18 ; 3 uses
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %.thread590, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jj = add nsw i64 %i.jh, -1                   ; 3 uses
  store i64 %i.jj, ptr %i.y, align 8
  %i.jk = load i64, ptr %1, align 8, !range !70, !noundef !18
  %i.jl = icmp samesign ult i64 %i.jj, %i.jk
  tail call void @llvm.assume(i1 %i.jl)
  %i.jm = load ptr, ptr %i.ae, align 8, !nonnull !18, !noundef !18
  %i.jn = icmp ult i64 %i.jh, 230584300921369397
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = getelementptr inbounds nuw [40 x i8], ptr %i.jm, i64 %i.jj ; 4 uses
  %.sroa.0536.0.copyload = load i64, ptr %i.jo, align 8
  %.sroa.4537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %.sroa.4537.0.copyload.a = load i64, ptr %.sroa.4537.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6539.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %.sroa.6539.0.copyload.a = load i64, ptr %.sroa.6539.0..sroa_idx.a, align 8 ; 19 uses
  %i.jp = icmp eq i64 %.sroa.0536.0.copyload, 3
  br i1 %i.jp, label %bb.da, label %.thread590, !prof !208

.thread590:                                       ; preds = %bb.cy, %bb.cz
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #22
  unreachable

bb.da:                                            ; preds = %bb.cz
  %.sroa.5538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %.sroa.5538.0.copyload = load i64, ptr %.sroa.5538.0..sroa_idx, align 8 ; 20 uses
  %i.jq = inttoptr i64 %.sroa.5538.0.copyload to ptr ; 22 uses
  %cond = icmp eq i64 %i.jg, 2
  br i1 %cond, label %bb.db, label %bb.en, !prof !249

bb.db:                                            ; preds = %bb.da
  %i.jr = load i16, ptr %i.je, align 1
  %i.js = icmp ne i16 %i.jr, 25133
  %i.jt = zext i1 %i.js to i32
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.jv = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.jv)
  %i.jw = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 0) #21
  %i.jx = zext i1 %i.jw to i8
  br label %bb.ep

bb.dd:                                            ; preds = %bb.db
  %i.jy = load i16, ptr %i.je, align 1
  %i.jz = icmp ne i16 %i.jy, 25389
  %i.ka = zext i1 %i.jz to i32
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.kc = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.kc)
  %i.kd = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 1) #21
  %i.ke = zext i1 %i.kd to i8
  br label %bb.ep

bb.df:                                            ; preds = %bb.dd
  %i.kf = load i16, ptr %i.je, align 1
  %i.kg = icmp ne i16 %i.kf, 25645
  %i.kh = zext i1 %i.kg to i32
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.kj = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.kj)
  %i.kk = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 2) #21
  %i.kl = zext i1 %i.kk to i8
  br label %bb.ep

bb.dh:                                            ; preds = %bb.df
  %i.km = load i16, ptr %i.je, align 1
  %i.kn = icmp ne i16 %i.km, 25901
  %i.ko = zext i1 %i.kn to i32
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.kq = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.kq)
  %i.kr = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 3) #21
  %i.ks = zext i1 %i.kr to i8
  br label %bb.ep

bb.dj:                                            ; preds = %bb.dh
  %i.kt = load i16, ptr %i.je, align 1
  %i.ku = icmp ne i16 %i.kt, 26157
  %i.kv = zext i1 %i.ku to i32
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.kx = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.kx)
  %i.ky = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 5) #21
  %i.kz = zext i1 %i.ky to i8
  br label %bb.ep

bb.dl:                                            ; preds = %bb.dj
  %i.la = load i16, ptr %i.je, align 1
  %i.lb = icmp ne i16 %i.la, 26413
  %i.lc = zext i1 %i.lb to i32
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.le = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.le)
  %i.lf = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 6) #21
  %i.lg = zext i1 %i.lf to i8
  br label %bb.ep

bb.dn:                                            ; preds = %bb.dl
  %i.lh = load i16, ptr %i.je, align 1
  %i.li = icmp ne i16 %i.lh, 18221
  %i.lj = zext i1 %i.li to i32
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ll = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ll)
  %i.lm = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 7) #21
  %i.ln = zext i1 %i.lm to i8
  br label %bb.ep

bb.dp:                                            ; preds = %bb.dn
  %i.lo = load i16, ptr %i.je, align 1
  %i.lp = icmp ne i16 %i.lo, 26669
  %i.lq = zext i1 %i.lp to i32
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dr, %bb.dp
  %i.ls = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ls)
  %i.lt = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 8) #21
  %i.lu = zext i1 %i.lt to i8
  br label %bb.ep

bb.dr:                                            ; preds = %bb.dp
  %i.lv = load i16, ptr %i.je, align 1
  %i.lw = icmp ne i16 %i.lv, 19501
  %i.lx = zext i1 %i.lw to i32
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.dq, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.lz = load i16, ptr %i.je, align 1
  %i.ma = icmp ne i16 %i.lz, 27437
  %i.mb = zext i1 %i.ma to i32
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.md = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.md)
  %i.me = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 9) #21
  %i.mf = zext i1 %i.me to i8
  br label %bb.ep

bb.du:                                            ; preds = %bb.ds
  %i.mg = load i16, ptr %i.je, align 1
  %i.mh = icmp ne i16 %i.mg, 20013
  %i.mi = zext i1 %i.mh to i32
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.mk = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.mk)
  %i.ml = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 4) #21
  %i.mm = zext i1 %i.ml to i8
  br label %bb.ep

bb.dw:                                            ; preds = %bb.du
  %i.mn = load i16, ptr %i.je, align 1
  %i.mo = icmp ne i16 %i.mn, 20269
  %i.mp = zext i1 %i.mo to i32
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.mr = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.mr)
  %i.ms = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 10) #21
  %i.mt = zext i1 %i.ms to i8
  br label %bb.ep

bb.dy:                                            ; preds = %bb.dw
  %i.mu = load i16, ptr %i.je, align 1
  %i.mv = icmp ne i16 %i.mu, 28717
  %i.mw = zext i1 %i.mv to i32
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.my = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.my)
  %i.mz = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 11) #21
  %i.na = zext i1 %i.mz to i8
  br label %bb.ep

bb.ea:                                            ; preds = %bb.dy
  %i.nb = load i16, ptr %i.je, align 1
  %i.nc = icmp ne i16 %i.nb, 29229
  %i.nd = zext i1 %i.nc to i32
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.nf = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.nf)
  %i.ng = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 12) #21
  %i.nh = zext i1 %i.ng to i8
  br label %bb.ep

bb.ec:                                            ; preds = %bb.ea
  %i.ni = load i16, ptr %i.je, align 1
  %i.nj = icmp ne i16 %i.ni, 21293
  %i.nk = zext i1 %i.nj to i32
  %i.nl = icmp eq i32 %i.nk, 0
  br i1 %i.nl, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.nm = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.nm)
  %i.nn = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 13) #21
  %i.no = zext i1 %i.nn to i8
  br label %bb.ep

bb.ee:                                            ; preds = %bb.ec
  %i.np = load i16, ptr %i.je, align 1
  %i.nq = icmp ne i16 %i.np, 29485
  %i.nr = zext i1 %i.nq to i32
  %i.ns = icmp eq i32 %i.nr, 0
  br i1 %i.ns, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.nt = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.nt)
  %i.nu = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 14) #21
  %i.nv = zext i1 %i.nu to i8
  br label %bb.ep

bb.eg:                                            ; preds = %bb.ee
  %i.nw = load i16, ptr %i.je, align 1
  %i.nx = icmp ne i16 %i.nw, 29741
  %i.ny = zext i1 %i.nx to i32
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.oa = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.oa)
  call fastcc void @_RNvCs2szWGFz6wmN_7uu_test6isatty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a) #21
  %i.ob = load i64, ptr %i.t, align 8, !range !201, !noundef !18 ; 2 uses
  %.not232 = icmp eq i64 %i.ob, -1
  %i.oc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.od = load i8, ptr %i.oc, align 8             ; 2 uses
  br i1 %.not232, label %bb.ev, label %bb.es

bb.ei:                                            ; preds = %bb.eg
  %i.oe = load i16, ptr %i.je, align 1
  %i.of = icmp ne i16 %i.oe, 29997
  %i.og = zext i1 %i.of to i32
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.oi = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.oi)
  %i.oj = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 15) #21
  %i.ok = zext i1 %i.oj to i8
  br label %bb.ep

bb.ek:                                            ; preds = %bb.ei
  %i.ol = load i16, ptr %i.je, align 1
  %i.om = icmp ne i16 %i.ol, 30509
  %i.on = zext i1 %i.om to i32
  %i.oo = icmp eq i32 %i.on, 0
  br i1 %i.oo, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.op = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.op)
  %i.oq = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 16) #21
  %i.or = zext i1 %i.oq to i8
  br label %bb.ep

bb.em:                                            ; preds = %bb.ek
  %i.os = load i16, ptr %i.je, align 1
  %i.ot = icmp ne i16 %i.os, 30765
  %i.ou = zext i1 %i.ot to i32
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %bb.eo, label %bb.en, !prof !250

bb.en:                                            ; preds = %bb.da, %bb.em
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22
  unreachable

bb.eo:                                            ; preds = %bb.em
  %i.ow = icmp ne i64 %.sroa.5538.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ow)
  %i.ox = tail call fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %.sroa.6539.0.copyload.a, i8 17) #21
  %i.oy = zext i1 %i.ox to i8
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ev, %bb.eo, %bb.el, %bb.ej, %bb.ef, %bb.ed, %bb.eb, %bb.dz, %bb.dx, %bb.dv, %bb.dt, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dc
  %.sroa.0104.0 = phi i8 [ %i.jx, %bb.dc ], [ %i.ke, %bb.de ], [ %i.kl, %bb.dg ], [ %i.ks, %bb.di ], [ %i.kz, %bb.dk ], [ %i.lg, %bb.dm ], [ %i.ln, %bb.do ], [ %i.lu, %bb.dq ], [ %i.mf, %bb.dt ], [ %i.mm, %bb.dv ], [ %i.mt, %bb.dx ], [ %i.na, %bb.dz ], [ %i.nh, %bb.eb ], [ %i.no, %bb.ed ], [ %i.nv, %bb.ef ], [ %i.od, %bb.ev ], [ %i.ok, %bb.ej ], [ %i.or, %bb.el ], [ %i.oy, %bb.eo ]
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0104.0, ptr %i.oz, align 8
  store i64 -1, ptr %0, align 8
  %i.pa = icmp eq i64 %.sroa.4537.0.copyload.a, 0
  br i1 %i.pa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit374, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jq) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jq, i64 noundef %.sroa.4537.0.copyload.a, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit374

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit374: ; preds = %bb.ep, %bb.eq
  %i.pb = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.pb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.er

bb.er:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit374
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.es:                                            ; preds = %bb.eh
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5177.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5174.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.ob, ptr %0, align 8
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.od, ptr %.sroa.4176.0..sroa_idx, align 8
  %i.pc = icmp eq i64 %.sroa.4537.0.copyload.a, 0
  br i1 %i.pc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit376, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jq, i64 noundef %.sroa.4537.0.copyload.a, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit376

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit376: ; preds = %bb.es, %bb.et
  %i.pd = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.pd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.eu

bb.eu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit376
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.ev:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ep

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.eu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit376, %bb.er, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit374, %bb.cw, %bb.cv, %bb.ct, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit371, %bb.ck, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit366, %bb.cg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit363, %bb.by, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit360, %bb.bu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit357, %bb.an, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit349, %bb.w, %bb.v, %bb.u, %bb.t, %bb.k, %.thread, %bb.j, %bb.l, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvCs2szWGFz6wmN_7uu_test4path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 6 uses
  %i.c = alloca [176 x i8], align 8               ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [176 x i8], align 8               ; 17 uses
  %.sroa.15 = alloca [160 x i8], align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %i.i = icmp eq i8 %.0.val, 8
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !251
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #21, !noalias !255
  %i.j = load i64, ptr %i.c, align 8, !range !256, !noalias !251, !noundef !18 ; 2 uses
  %i.k = icmp eq i64 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !257
  br i1 %i.k, label %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.15.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.15.0..sroa_idx7, i64 160, i1 false), !noalias !257
  br label %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit

_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !251
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !258
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #21, !noalias !262
  %i.n = load i64, ptr %i.b, align 8, !range !256, !noalias !258, !noundef !18 ; 2 uses
  %i.o = icmp eq i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !263
  br i1 %i.o, label %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.15.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.15.0..sroa_idx8, i64 160, i1 false), !noalias !263
  br label %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit

_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !258
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit, %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit
  %.sroa.11.2 = phi ptr [ %i.q, %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit ], [ %i.m, %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit ] ; 5 uses
  %.sroa.0.2 = phi i64 [ %i.n, %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit ], [ %i.j, %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtNtB4_3ffi6os_str5OsStrECs2szWGFz6wmN_7uu_test.exit ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.2, 2
  br i1 %i.r, label %bb.ae, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.0.2, ptr %i.h, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.11.2, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.15, i64 160, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.t = load i32, ptr %i.s, align 8, !noundef !18 ; 13 uses
  switch i8 %.0.val, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs2szWGFz6wmN_7uu_test.exit
    i8 4, label %bb.k
    i8 5, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
    i8 8, label %bb.q
    i8 9, label %bb.r
    i8 10, label %bb.s
    i8 11, label %bb.t
    i8 12, label %bb.u
    i8 13, label %bb.w
    i8 14, label %bb.x
    i8 15, label %bb.y
    i8 16, label %bb.z
    i8 17, label %bb.ab
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.u = and i32 %i.t, 61440
  %i.v = icmp eq i32 %i.u, 24576
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs2szWGFz6wmN_7uu_test.exit

bb.i:                                             ; preds = %bb.g
  %i.w = and i32 %i.t, 61440
  %i.x = icmp eq i32 %i.w, 8192
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs2szWGFz6wmN_7uu_test.exit

bb.j:                                             ; preds = %bb.g
  %i.y = and i32 %i.t, 61440
  %i.z = icmp eq i32 %i.y, 16384
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs2szWGFz6wmN_7uu_test.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMsm_NtCs2vKOLqTMYjT_3std2fsNtB5_8Metadata8accessed(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.h) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !range !267, !alias.scope !264, !noalias !268, !noundef !18 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.l, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs2vKOLqTMYjT_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorE6unwrapCs2szWGFz6wmN_7uu_test.exit4, !prof !207

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !270
  %i.ad = load ptr, ptr %i.g, align 8, !alias.scope !264, !noalias !268, !nonnull !18, !noundef !18
  store ptr %i.ad, ptr %i.d, align 8, !noalias !270
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #22, !noalias !264
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs2vKOLqTMYjT_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorE6unwrapCs2szWGFz6wmN_7uu_test.exit4: ; preds = %bb.k
  %i.ae = load i64, ptr %i.g, align 8, !alias.scope !264, !noalias !268, !noundef !18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMsm_NtCs2vKOLqTMYjT_3std2fsNtB5_8Metadata8modified(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.h) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !range !267, !alias.scope !271, !noalias !274, !noundef !18 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.m, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs2vKOLqTMYjT_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorE6unwrapCs2szWGFz6wmN_7uu_test.exit, !prof !207

bb.m:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs2vKOLqTMYjT_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorE6unwrapCs2szWGFz6wmN_7uu_test.exit4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !276
  %i.ai = load ptr, ptr %i.f, align 8, !alias.scope !271, !noalias !274, !nonnull !18, !noundef !18
  store ptr %i.ai, ptr %i.e, align 8, !noalias !276
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !271
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs2vKOLqTMYjT_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorE6unwrapCs2szWGFz6wmN_7uu_test.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs2vKOLqTMYjT_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorE6unwrapCs2szWGFz6wmN_7uu_test.exit4
  %i.aj = load i64, ptr %i.f, align 8, !alias.scope !271, !noalias !274, !noundef !18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ak = icmp eq i64 %i.ae, %i.aj
  %i.al = icmp slt i64 %i.ae, %i.aj
  %i.am = icmp samesign ult i32 %i.ab, %i.ag
  %spec.select = select i1 %i.ak, i1 %i.am, i1 %i.al
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs2szWGFz6wmN_7uu_test.exit

bb.n:                                             ; preds = %bb.g
  %i.an = and i32 %i.t, 61440
  %i.ao = icmp eq i32 %i.an, 32768
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs2szWGFz6wmN_7uu_test.exit

bb.o:                                             ; preds = %bb.g
  %i.ap = and i32 %i.t, 1024
  %i.aq = icmp ne i32 %i.ap, 0
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs2szWGFz6wmN_7uu_test.exit

bb.p:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.as = load i32, ptr %i.ar, align 8, !noundef !18
  %i.at = call noundef i32 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features7process4unix7getegid() #21
  %i.au = icmp eq i32 %i.as, %i.at
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs2szWGFz6wmN_7uu_test.exit

bb.q:                                             ; preds = %bb.g
  %i.av = and i32 %i.t, 61440
  %i.aw = icmp eq i32 %i.av, 40960
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs2szWGFz6wmN_7uu_test.exit

bb.r:                                             ; preds = %bb.g
  %i.ax = and i32 %i.t, 512
  %i.ay = icmp ne i32 %i.ax, 0
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs2szWGFz6wmN_7uu_test.exit

bb.s:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.ba = load i32, ptr %i.az, align 4, !noundef !18
  %i.bb = call noundef i32 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features7process4unix7geteuid() #21
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs2szWGFz6wmN_7uu_test.exit
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser12maybe_boolop:bb.a
  %i.af = icmp eq i64 %i.ae, 6
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_RNvMNtCs2szWGFz6wmN_7uu_test6parserNtB2_6Symbol12into_literal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.c) #21
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser7literal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ag = load i64, ptr %i.i, align 8, !range !201, !noundef !18
  %.not2 = icmp eq i64 %i.ag, -1
  br i1 %.not2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit23, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit14

bb.n:                                             ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  switch i64 %i.ae, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit [
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 4, label %bb.q
    i64 5, label %bb.r
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.sink7.i.sroa.phi = phi ptr [ %.sink7.i.sroa.gep, %bb.q ], [ %.sink7.i.sroa.gep59, %bb.p ], [ %.sink7.i.sroa.gep59, %bb.o ], [ %.sink7.i.sroa.gep, %bb.r ]
  %.val2.i.sink.i = phi i64 [ %.val4.i.i, %bb.q ], [ %.val.i4, %bb.p ], [ %.val2.i, %bb.o ], [ %.val2.i.i, %bb.r ]
  %.val1.i6.i = load ptr, ptr %.sink7.i.sroa.phi, align 8, !alias.scope !489, !nonnull !18, !noundef !18
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6.i, i64 noundef %.val2.i.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !489
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val2.i = load i64, ptr %i.ah, align 8, !range !70, !alias.scope !489, !noundef !18 ; 2 uses
  %i.ai = icmp eq i64 %.val2.i, 0
  br i1 %i.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i4 = load i64, ptr %i.aj, align 8, !range !70, !alias.scope !489, !noundef !18 ; 2 uses
  %i.ak = icmp eq i64 %.val.i4, 0
  br i1 %i.ak, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i

bb.q:                                             ; preds = %bb.n
  %.val4.i.i = load i64, ptr %.sink7.i.sroa.gep59, align 8, !range !70, !alias.scope !492, !noundef !18 ; 2 uses
  %i.al = icmp eq i64 %.val4.i.i, 0
  br i1 %i.al, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i

bb.r:                                             ; preds = %bb.n
  %.val2.i.i = load i64, ptr %.sink7.i.sroa.gep59, align 8, !range !70, !alias.scope !495, !noundef !18 ; 2 uses
  %i.am = icmp eq i64 %.val2.i.i, 0
  br i1 %i.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit: ; preds = %bb.n, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i, %bb.o, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !498
  %i.an = tail call noundef dereferenceable_or_null(2) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef range(i64 1, 9) 1) #21, !noalias !498 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 2) #24, !noalias !505, !inline_history !506
  unreachable

bb.t:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit
  store i16 24877, ptr %i.an, align 1, !noalias !505
  %i.ap = load i64, ptr %i.c, align 8, !range !162, !noundef !18 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 2
  %.val6.i = load i64, ptr %.sink7.i26.sroa.gep, align 8
  %i.ar = icmp eq i64 %.val6.i, 2
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %_RNvXsb_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6SymbolNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit51

_RNvXsb_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6SymbolNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit: ; preds = %bb.t
  %.val.i15.i = load ptr, ptr %.sink7.i26.sroa.gep53, align 8, !nonnull !18, !noundef !18
  %i.as = load i16, ptr %.val.i15.i, align 1
  %i.at = load i16, ptr %i.an, align 1
  %i.au = icmp ne i16 %i.as, %i.at
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit41, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit51

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit51: ; preds = %bb.t, %_RNvXsb_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6SymbolNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !507
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser14peek_is_boolop(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #21, !noalias !510, !inline_history !513
  br i1 %i.ax, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !514
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4term(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #21, !noalias !510, !inline_history !513
  %i.ay = load i64, ptr %i.b, align 8, !range !201, !noalias !514, !noundef !18 ; 2 uses
  %.not.i42 = icmp eq i64 %i.ay, -1
  br i1 %.not.i42, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.x, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !514
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser12maybe_boolop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #21, !noalias !510, !inline_history !513
  %i.az = load i64, ptr %i.a, align 8, !range !201, !noalias !514, !noundef !18 ; 2 uses
  %.not1.i = icmp eq i64 %i.az, -1
  br i1 %.not1.i, label %bb.z, label %bb.y

bb.w:                                             ; preds = %bb.u
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8116, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4152.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !514
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !514
  br label %bb.v

bb.y:                                             ; preds = %bb.v
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8116, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4162.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !514
  br label %bb.ac

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit41: ; preds = %_RNvXsb_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6SymbolNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !505
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4term(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #21, !noalias !519, !inline_history !506
  %i.ba = load i64, ptr %i.d, align 8, !range !201, !noalias !505, !noundef !18 ; 2 uses
  %.not6.i = icmp eq i64 %i.ba, -1
  br i1 %.not6.i, label %bb.ah, label %.thread

bb.z:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !514
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ah, %bb.z
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !520, !noalias !523, !noundef !18 ; 3 uses
  %i.bd = load i64, ptr %1, align 8, !range !70, !alias.scope !520, !noalias !523, !noundef !18
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #20, !noalias !523
  br label %bb.aj

bb.ac:                                            ; preds = %bb.w, %bb.y
  %.sroa.0113.0.ph = phi i64 [ %i.ay, %bb.w ], [ %i.az, %bb.y ] ; 8 uses
  switch i64 %i.ap, label %bb.ai [
    i64 2, label %bb.ad
    i64 3, label %bb.ae
    i64 4, label %bb.af
    i64 5, label %bb.ag
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i25: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.sroa.0.0173 = phi i64 [ %.sroa.0113.0.ph, %bb.af ], [ %.sroa.0113.0.ph, %bb.ae ], [ %.sroa.0.0174, %bb.ad ], [ %.sroa.0113.0.ph, %bb.ag ]
  %.sink7.i26.sroa.phi = phi ptr [ %.sink7.i26.sroa.gep, %bb.af ], [ %.sink7.i26.sroa.gep53, %bb.ae ], [ %.sink7.i26.sroa.gep53, %bb.ad ], [ %.sink7.i26.sroa.gep, %bb.ag ]
  %.val2.i.sink.i27 = phi i64 [ %.val4.i.i29, %bb.af ], [ %.val.i30, %bb.ae ], [ %.val2.i31, %bb.ad ], [ %.val2.i.i24, %bb.ag ]
  %.val1.i6.i28 = load ptr, ptr %.sink7.i26.sroa.phi, align 8, !nonnull !18, !noundef !18
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6.i28, i64 noundef %.val2.i.sink.i27, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !525
  br label %bb.ai

bb.ad:                                            ; preds = %.thread, %bb.ac
  %.sroa.0.0174 = phi i64 [ %i.ba, %.thread ], [ %.sroa.0113.0.ph, %bb.ac ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val2.i31 = load i64, ptr %i.bf, align 8, !range !70, !noundef !18 ; 2 uses
  %i.bg = icmp eq i64 %.val2.i31, 0
  br i1 %i.bg, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i25

bb.ae:                                            ; preds = %bb.ac
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i30 = load i64, ptr %i.bh, align 8, !range !70, !noundef !18 ; 2 uses
  %i.bi = icmp eq i64 %.val.i30, 0
  br i1 %i.bi, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i25

bb.af:                                            ; preds = %bb.ac
  %.val4.i.i29 = load i64, ptr %.sink7.i26.sroa.gep53, align 8, !range !70, !noundef !18 ; 2 uses
  %i.bj = icmp eq i64 %.val4.i.i29, 0
  br i1 %i.bj, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i25

bb.ag:                                            ; preds = %bb.ac
  %.val2.i.i24 = load i64, ptr %.sink7.i26.sroa.gep53, align 8, !range !70, !noundef !18 ; 2 uses
  %i.bk = icmp eq i64 %.val2.i.i24, 0
  br i1 %i.bk, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i25

.thread:                                          ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit41
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8116, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4132.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !505
  br label %bb.ad

bb.ah:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !505
  br label %bb.aa

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit14: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.am

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit23: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.b

bb.ai:                                            ; preds = %bb.ac, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i25, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %.sroa.0.1.ph = phi i64 [ %.sroa.0113.0.ph, %bb.ag ], [ %.sroa.0113.0.ph, %bb.af ], [ %.sroa.0113.0.ph, %bb.ae ], [ %.sroa.0.0174, %bb.ad ], [ %.sroa.0.0173, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i25 ], [ %.sroa.0113.0.ph, %bb.ac ]
  store i64 %.sroa.0.1.ph, ptr %0, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.479.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8116, i64 24, i1 false)
  br label %bb.am

bb.aj:                                            ; preds = %bb.aa, %bb.ab
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !520, !noalias !523, !nonnull !18, !noundef !18
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.bo = add i64 %i.bc, 1
  store i64 %i.bo, ptr %i.bb, align 8, !alias.scope !520, !noalias !523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser12maybe_boolop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(80) %1) #21
  %i.bp = load i64, ptr %i.g, align 8, !range !201, !noundef !18
  %.not1 = icmp eq i64 %i.bp, -1
  br i1 %.not1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.b

bb.am:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit14, %bb.ai, %bb.ak, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser14peek_is_boolop(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !531
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.d = load i64, ptr %i.c, align 8, !range !538, !alias.scope !528, !noalias !539, !noundef !18 ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, -2
  %.sink7.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sink7.i.sroa.gep2 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  br i1 %.not.i.i, label %bb.b, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !546, !noalias !547, !nonnull !18, !noundef !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !546, !noalias !547, !nonnull !18, !noundef !18 ; 4 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %_RNCNvMs3_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE4peek0Cs2szWGFz6wmN_7uu_test.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.j, ptr %i.g, align 8, !alias.scope !546, !noalias !547
  %.sroa.0.0.copyload7.i.i = load i64, ptr %i.h, align 8, !noalias !550
  %.sroa.5.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx8.i.i, i64 16, i1 false), !noalias !551
  br label %_RNCNvMs3_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE4peek0Cs2szWGFz6wmN_7uu_test.exit.i.i

_RNCNvMs3_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE4peek0Cs2szWGFz6wmN_7uu_test.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload7.i.i, %bb.c ], [ -1, %bb.b ] ; 3 uses
  store i64 %.sroa.0.0.i.i, ptr %i.c, align 8, !alias.scope !552, !noalias !553
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !553
  %i.k = icmp ne i64 %.sroa.0.0.i.i, -2
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i: ; preds = %_RNCNvMs3_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE4peek0Cs2szWGFz6wmN_7uu_test.exit.i.i, %bb.a
  %i.l = phi i64 [ %i.d, %bb.a ], [ %.sroa.0.0.i.i, %_RNCNvMs3_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE4peek0Cs2szWGFz6wmN_7uu_test.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %.not.i = icmp eq i64 %i.l, -1
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !528, !noalias !539, !nonnull !18, !noundef !18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load i64, ptr %i.n, align 8, !alias.scope !528, !noalias !539, !noundef !18 ; 6 uses
  %i.o = icmp eq i64 %.val1.i, 0
  br i1 %i.o, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !554
  %i.p = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i, i64 noundef range(i64 1, 9) 1) #21, !noalias !554 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1.i) #24, !noalias !562
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val1.i, i1 false), !noalias !563
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit.i

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit.i: ; preds = %bb.f, %bb.d
  %.sroa.5.0.i = phi ptr [ %i.p, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.d ]
  store i64 %.val1.i, ptr %i.a, align 8, !noalias !531
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !531
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.val1.i, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !531
  br label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit

bb.g:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Y_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs2szWGFz6wmN_7uu_test.exit.i
  store i64 -1, ptr %i.a, align 8, !noalias !531
  br label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit

_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit: ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit.i, %bb.g
  call fastcc void @_RNvMNtCs2szWGFz6wmN_7uu_test6parserNtB2_6Symbol3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.a) #21, !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !531
  %i.r = load i64, ptr %i.b, align 8, !range !162, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  switch i64 %i.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit [
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.j
    i64 5, label %bb.k
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sink7.i.sroa.phi = phi ptr [ %.sink7.i.sroa.gep, %bb.j ], [ %.sink7.i.sroa.gep2, %bb.i ], [ %.sink7.i.sroa.gep2, %bb.h ], [ %.sink7.i.sroa.gep, %bb.k ]
  %.val2.i.sink.i = phi i64 [ %.val4.i.i, %bb.j ], [ %.val.i1, %bb.i ], [ %.val2.i, %bb.h ], [ %.val2.i.i, %bb.k ]
  %.val1.i6.i = load ptr, ptr %.sink7.i.sroa.phi, align 8, !alias.scope !564, !nonnull !18, !noundef !18
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6.i, i64 noundef %.val2.i.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !564
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit

bb.h:                                             ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val2.i = load i64, ptr %i.s, align 8, !range !70, !alias.scope !564, !noundef !18 ; 2 uses
  %i.t = icmp eq i64 %.val2.i, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i

bb.i:                                             ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i1 = load i64, ptr %i.u, align 8, !range !70, !alias.scope !564, !noundef !18 ; 2 uses
  %i.v = icmp eq i64 %.val.i1, 0
  br i1 %i.v, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i

bb.j:                                             ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit
  %.val4.i.i = load i64, ptr %.sink7.i.sroa.gep2, align 8, !range !70, !alias.scope !567, !noundef !18 ; 2 uses
  %i.w = icmp eq i64 %.val4.i.i, 0
  br i1 %i.w, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i

bb.k:                                             ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit
  %.val2.i.i = load i64, ptr %.sink7.i.sroa.gep2, align 8, !range !70, !alias.scope !570, !noundef !18 ; 2 uses
  %i.x = icmp eq i64 %.val2.i.i, 0
  br i1 %i.x, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit: ; preds = %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser4peek.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i, %bb.h, %bb.i, %bb.j, %bb.k
  %i.y = icmp eq i64 %i.r, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.y
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser3uop(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !576
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !alias.scope !573, !noalias !578 ; 2 uses
  store i64 -2, ptr %i.e, align 8, !alias.scope !573, !noalias !578
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !noalias !576
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false), !noalias !578
  br label %_RNvMs0_NtCs2szWGFz6wmN_7uu_test6parserNtB5_6Parser10next_token.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !584, !noalias !585, !nonnull !18, !noundef !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !584, !noalias !585, !nonnull !18, !noundef !18 ; 3 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.k, ptr %i.h, align 8, !alias.scope !584, !noalias !585
end_hunk_1
