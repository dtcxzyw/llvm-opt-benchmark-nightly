Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.10?download=true
inline.NumInlined: 125
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_c_str:bb.a

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.cf
  %.sroa.030.1356.i = phi ptr [ %i.fu, %bb.cf ], [ %i.bh, %.preheader.i ] ; 3 uses
  %.sroa.23.1355.i = phi i64 [ %i.ft, %bb.cf ], [ %i.bg, %.preheader.i ] ; 2 uses
  %i.fs = load i8, ptr %.sroa.030.1356.i, align 1, !alias.scope !140, !noalias !137, !noundef !4
  switch i8 %i.fs, label %.backedge.i [
    i8 32, label %bb.cf
    i8 9, label %bb.cf
    i8 10, label %bb.cf
    i8 13, label %bb.cf
  ]

bb.cf:                                            ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ft = add i64 %.sroa.23.1355.i, -1            ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.030.1356.i, i64 1
  %.not98.i = icmp eq i64 %i.ft, 0
  br i1 %.not98.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.i

bb.cg:                                            ; preds = %bb.k
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !140, !noalias !137, !noundef !4
  %.not97.i = icmp eq i8 %i.fw, 10
  br i1 %.not97.i, label %bb.ch, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i

bb.ch:                                            ; preds = %bb.cg
  %i.fx = add i64 %.sroa.23.0362.i, -2
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 2
  br label %bb.cd

bb.ci:                                            ; preds = %bb.i
  %i.fz = add i64 %.sroa.23.0362.i, -1
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 1
  br label %bb.cd

common.resume:                                    ; preds = %.body.i2, %bb.cs, %.body.i, %bb.y, %bb.cl, %bb.cn
  %common.resume.op = phi { ptr, i32 } [ %i.gd, %bb.cn ], [ %lpad.phi.i, %bb.cl ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.y ], [ %eh.lpad-body.i3, %bb.cs ], [ %eh.lpad-body.i3, %.body.i2 ]
  resume { ptr, i32 } %common.resume.op

.loopexit.i:                                      ; preds = %bb.ce, %bb.cb
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp.i:                             ; preds = %bb.aw, %bb.u, %bb.s, %bb.p, %bb.o
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cj:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.cl unwind label %bb.ck, !noalias !137

bb.ck:                                            ; preds = %bb.cj
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body129.i unwind label %bb.cm, !noalias !137

bb.cl:                                            ; preds = %bb.cj
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ag, !noalias !137

bb.cm:                                            ; preds = %bb.ck
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !137
  unreachable

_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i: ; preds = %bb.cg, %.backedge.i, %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.i, %bb.bt, %.loopexit.5.i.i, %.loopexit.4.i.i, %.loopexit.3.i.i, %.loopexit.2.i.i, %.loopexit.1.i.i, %.loopexit.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit49.i.i, %bb.ba, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit.i120.i, %bb.ay, %bb.ax, %bb.as, %bb.an, %bb.ai, %.preheader.i, %bb.ah, %bb.k, %bb.j, %bb.cf, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.1.i.i, %bb.bd, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.2.i.i, %bb.bg, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.3.i.i, %bb.bj, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.4.i.i, %bb.bm, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.5.i.i, %bb.bp, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.6.i.i, %switch.early.test.i.i, %.lr.ph.split.us.6.i.i, %.split.i.thread.i
  store ptr null, ptr %0, align 8, !alias.scope !137, !noalias !140
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit132.i unwind label %bb.cn, !noalias !142

bb.cn:                                            ; preds = %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.co, !noalias !142

bb.co:                                            ; preds = %bb.cn
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !142
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit132.i: ; preds = %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !142
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value22parse_lit_c_str_cooked.exit

_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value22parse_lit_c_str_cooked.exit: ; preds = %bb.ad, %bb.ae, %bb.af, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit

.split.i.i:                                       ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !173
  %i.gf = add i64 %2, -1
  call fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value17parse_lit_str_raw(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.gf), !noalias !170
  %i.gg = load ptr, ptr %i.c, align 8, !noalias !173, !noundef !4 ; 2 uses
  %.not22.i = icmp eq ptr %i.gg, null
  br i1 %.not22.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.split.i.i
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.415.0.copyload.i = load i64, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !173
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.516.0.copyload.i = load ptr, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !173, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.617.0.copyload.i = load i64, ptr %.sroa.617.0..sroa_idx.i, align 8, !noalias !173 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !173
  invoke void @_RNvXsN_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtB7_5boxed3BoxeEE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull %i.gg, i64 noundef %.sroa.415.0.copyload.i)
          to label %bb.ct unwind label %bb.cr, !noalias !170

bb.cq:                                            ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !173
  store ptr null, ptr %0, align 8, !alias.scope !170, !noalias !175
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit

bb.cr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i4, %bb.ct, %bb.cp
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i2

.body.i2:                                         ; preds = %bb.cw, %bb.cr
  %eh.lpad-body.i3 = phi { ptr, i32 } [ %i.gh, %bb.cr ], [ %i.gk, %bb.cw ] ; 2 uses
  %i.gi = icmp eq i64 %.sroa.617.0.copyload.i, 0
  br i1 %i.gi, label %common.resume, label %bb.cs

bb.cs:                                            ; preds = %.body.i2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.516.0.copyload.i, i64 noundef range(i64 1, 0) %.sroa.617.0.copyload.i, i64 noundef 1) #21, !noalias !170
  br label %common.resume

bb.ct:                                            ; preds = %bb.cp
  invoke void @_RNvXNvMs_NtNtCs4wP2HXfJTCR_5alloc3ffi5c_strNtB7_7CString3newNtNtBb_6string6StringNtB2_11SpecNewImpl13spec_new_implCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.cu unwind label %bb.cr, !noalias !170

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !173
  %i.gj = load i64, ptr %i.b, align 8, !range !149, !noalias !173, !noundef !4
  %.not23.not.i = icmp eq i64 %i.gj, -1
  br i1 %.not23.not.i, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i4 unwind label %bb.cw, !noalias !170

bb.cw:                                            ; preds = %bb.cv
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body.i2 unwind label %bb.cx, !noalias !170

bb.cx:                                            ; preds = %bb.cw
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !170
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i4: ; preds = %bb.cv
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.cz unwind label %bb.cr, !noalias !170

bb.cy:                                            ; preds = %bb.cu
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !173
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !173, !nonnull !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !173
  store ptr %i.gp, ptr %0, align 8, !alias.scope !170, !noalias !175
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gn, ptr %.sroa.4.0..sroa_idx.i5, align 8, !alias.scope !170, !noalias !175
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.516.0.copyload.i, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !170, !noalias !175
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.617.0.copyload.i, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !170, !noalias !175
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit

bb.cz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !173
  store ptr null, ptr %0, align 8, !alias.scope !170, !noalias !175
  %i.gq = icmp eq i64 %.sroa.617.0.copyload.i, 0
  br i1 %i.gq, label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.516.0.copyload.i, i64 noundef range(i64 1, 0) %.sroa.617.0.copyload.i, i64 noundef 1) #21, !noalias !170
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit

_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit: ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cq, %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value22parse_lit_c_str_cooked.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_float(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.695.sroa.0 = alloca [16 x i8], align 8   ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.l = load i64, ptr %i.g, align 8, !range !66, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !67, !noundef !4 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.s = icmp ule i64 %2, %i.o
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not66 = icmp eq i64 %2, 0
  br i1 %.not66, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.o, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx105, align 8
  %.sroa.450.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.450.0..sroa_idx106, align 8
  br label %.split219.thread

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 %i.o, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 %2, ptr %.sroa.450.0..sroa_idx, align 8
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %i.u = icmp eq i8 %i.t, 45
  %i.v = zext i1 %i.u to i64                      ; 4 uses
  %i.w = icmp ugt i64 %2, %i.v
  br i1 %i.w, label %bb.h, label %.split219.thread

.split219.thread:                                 ; preds = %.split219, %.lr.ph.split.us, %.lr.ph.split.us, %bb.i, %.lr.ph.split, %.loopexit, %bb.r, %bb.e, %bb.h, %bb.d
  store ptr null, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit unwind label %bb.f

bb.f:                                             ; preds = %.split219.thread
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.bf, %bb.u, %bb.aa, %bb.bc, %bb.al, %bb.ay, %bb.ax, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.bv, %bb.aa ], [ %lpad.thr_comm, %bb.bf ], [ %i.dq, %bb.ax ], [ %i.bp, %bb.u ], [ %i.dv, %bb.al ], [ %.pn.pn133, %bb.bc ], [ %i.dq, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit: ; preds = %.split219.thread
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.x

bb.h:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.aa = load i8, ptr %i.z, align 1, !noundef !4
  %i.ab = add i8 %i.aa, -48
  %or.cond74 = icmp ult i8 %i.ab, 10
  br i1 %or.cond74, label %.lr.ph, label %.split219.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.sroa.020.0206 = phi i64 [ %.sroa.020.1, %bb.j ], [ %.sroa.020.0.ph240, %.lr.ph ] ; 6 uses
  %.sroa.036.0205 = phi i1 [ %.sroa.036.1, %bb.j ], [ %.sroa.036.0.ph237, %.lr.ph ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.020.0206
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 3 uses
  switch i8 %i.ad, label %.split [
    i8 95, label %bb.j
    i8 46, label %.split219.thread
    i8 101, label %.split225.us
    i8 69, label %.split225.us
    i8 45, label %bb.i
    i8 43, label %bb.i
  ]

.loopexit.loopexit:                               ; preds = %bb.j
  %i.ae = add nuw nsw i64 %.sroa.020.0.ph240, 1
  %umax318.le = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.ae)
  br label %.loopexit

.loopexit.loopexit339:                            ; preds = %bb.l
  %i.af = add nuw nsw i64 %.sroa.020.0.ph240, 1
  %umax.le = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.af)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.split, %.outer, %.loopexit.loopexit339, %.loopexit.loopexit
  %.sroa.037.0.ph204 = phi i8 [ %.sroa.037.0.ph236, %.loopexit.loopexit ], [ %.sroa.037.0.ph236, %.loopexit.loopexit339 ], [ %.sroa.037.0.ph236, %bb.o ], [ %.sroa.037.0.ph236, %.split ], [ %.sroa.037.1, %.outer ]
  %.sroa.031.0.ph195 = phi i8 [ %.sroa.031.0.ph238, %.loopexit.loopexit ], [ %.sroa.031.0.ph238, %.loopexit.loopexit339 ], [ %.sroa.031.0.ph238, %bb.o ], [ %.sroa.031.0.ph238, %.split ], [ %.sroa.031.1, %.outer ]
  %.sroa.0.0.ph186 = phi i64 [ %.sroa.0.0.ph241, %.loopexit.loopexit ], [ %.sroa.0.0.ph241, %.loopexit.loopexit339 ], [ %.sroa.0.0.ph241, %bb.o ], [ %.sroa.0.0.ph241, %.split ], [ %i.an, %.outer ]
  %.sroa.020.0158 = phi i64 [ %umax318.le, %.loopexit.loopexit ], [ %umax.le, %.loopexit.loopexit339 ], [ %.us-phi228, %bb.o ], [ %.us-phi216, %.split ], [ %i.am, %.outer ]
  %i.ag = trunc nuw i8 %.sroa.031.0.ph195 to i1
  %.not = xor i1 %i.ag, true
  %i.ah = trunc nuw i8 %.sroa.037.0.ph204 to i1
  %or.cond7 = select i1 %.not, i1 true, i1 %i.ah
  br i1 %or.cond7, label %.thread108, label %.split219.thread

.split:                                           ; preds = %.lr.ph.split.us, %.lr.ph.split
  %.us-phi214 = phi i8 [ %i.ad, %.lr.ph.split ], [ %i.aw, %.lr.ph.split.us ] ; 2 uses
  %.us-phi215 = phi i1 [ %.sroa.036.0205, %.lr.ph.split ], [ %.sroa.036.0.ph237, %.lr.ph.split.us ]
  %.us-phi216 = phi i64 [ %.sroa.020.0206, %.lr.ph.split ], [ %.sroa.020.0206.us, %.lr.ph.split.us ] ; 2 uses
  %i.ai = add i8 %.us-phi214, -48
  %or.cond76 = icmp ult i8 %i.ai, 10
  br i1 %or.cond76, label %bb.bd, label %.loopexit

.split219:                                        ; preds = %.lr.ph.split.us
  br i1 %.sroa.030.0.ph239, label %.split219.thread, label %bb.k

bb.i:                                             ; preds = %.lr.ph.split, %.lr.ph.split
  %or.cond3 = select i1 %.sroa.036.0205, i1 true, i1 %i.at
  br i1 %or.cond3, label %.split219.thread, label %bb.s

bb.j:                                             ; preds = %bb.s, %.lr.ph.split
  %.sroa.036.1 = phi i1 [ %.sroa.036.0205, %.lr.ph.split ], [ true, %bb.s ]
  %.sroa.020.1 = add nuw nsw i64 %.sroa.020.0206, 1 ; 2 uses
  %i.aj = icmp ult i64 %.sroa.020.1, %i.ar
  br i1 %i.aj, label %.lr.ph.split, label %.loopexit.loopexit

bb.k:                                             ; preds = %.split219
  %i.ak = icmp samesign ult i64 %.sroa.0.0.ph241, %i.ar
  br i1 %i.ak, label %.outer, label %.invoke437

.outer:                                           ; preds = %bb.k, %bb.t, %bb.q, %bb.be
  %.us-phi214.sink = phi i8 [ %.us-phi214, %bb.be ], [ 101, %bb.q ], [ 45, %bb.t ], [ 46, %bb.k ]
  %.sroa.020.0160 = phi i64 [ %.us-phi216, %bb.be ], [ %.us-phi228, %bb.q ], [ %.sroa.020.0206, %bb.t ], [ %.sroa.020.0206.us, %bb.k ]
  %.sroa.037.1 = phi i8 [ %spec.select, %bb.be ], [ %.sroa.037.0.ph236, %bb.q ], [ 0, %bb.t ], [ %.sroa.037.0.ph236, %bb.k ] ; 2 uses
  %.sroa.036.2 = phi i1 [ %.us-phi215, %bb.be ], [ %.us-phi227, %bb.q ], [ true, %bb.t ], [ %.sroa.036.0.ph237, %bb.k ]
  %.sroa.031.1 = phi i8 [ %.sroa.031.0.ph238, %bb.be ], [ 1, %bb.q ], [ 1, %bb.t ], [ 0, %bb.k ] ; 2 uses
  %.sroa.030.1 = phi i1 [ %.sroa.030.0.ph239, %bb.be ], [ %.sroa.030.0.ph239, %bb.q ], [ %.sroa.030.0.ph239, %bb.t ], [ true, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.ph241
  store i8 %.us-phi214.sink, ptr %i.al, align 1
  %i.am = add nuw nsw i64 %.sroa.020.0160, 1      ; 3 uses
  %i.an = add nuw nsw i64 %.sroa.0.0.ph241, 1     ; 2 uses
  %i.ao = load i64, ptr %.sroa.450.0..sroa_idx, align 8, !noundef !4 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp ult i64 %i.am, %i.ao
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h, %.outer
  %i.ar = phi i64 [ %i.ao, %.outer ], [ %2, %bb.h ] ; 11 uses
  %.sroa.0.0.ph241 = phi i64 [ %i.an, %.outer ], [ %i.v, %bb.h ] ; 12 uses
  %.sroa.020.0.ph240 = phi i64 [ %i.am, %.outer ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.030.0.ph239 = phi i1 [ %.sroa.030.1, %.outer ], [ false, %bb.h ] ; 4 uses
  %.sroa.031.0.ph238 = phi i8 [ %.sroa.031.1, %.outer ], [ 0, %bb.h ] ; 6 uses
  %.sroa.036.0.ph237 = phi i1 [ %.sroa.036.2, %.outer ], [ false, %bb.h ] ; 5 uses
  %.sroa.037.0.ph236 = phi i8 [ %.sroa.037.1, %.outer ], [ 0, %bb.h ] ; 8 uses
  %i.as = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.at = trunc nuw i8 %.sroa.037.0.ph236 to i1   ; 2 uses
  %i.au = trunc nuw i8 %.sroa.031.0.ph238 to i1   ; 3 uses
  br i1 %i.au, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %.sroa.020.0206.us = phi i64 [ %.sroa.020.1.us, %bb.l ], [ %.sroa.020.0.ph240, %.lr.ph ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.020.0206.us
  %i.aw = load i8, ptr %i.av, align 1, !noundef !4 ; 2 uses
  switch i8 %i.aw, label %.split [
    i8 95, label %bb.l
    i8 46, label %.split219
    i8 101, label %.split225.us
    i8 69, label %.split225.us
    i8 45, label %.split219.thread
    i8 43, label %.split219.thread
  ]

bb.l:                                             ; preds = %.lr.ph.split.us
  %.sroa.020.1.us = add nuw nsw i64 %.sroa.020.0206.us, 1 ; 2 uses
  %i.ax = icmp ult i64 %.sroa.020.1.us, %i.ar
  br i1 %i.ax, label %.lr.ph.split.us, label %.loopexit.loopexit339

.split225.us:                                     ; preds = %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split, %.lr.ph.split
  %.us-phi227 = phi i1 [ %.sroa.036.0205, %.lr.ph.split ], [ %.sroa.036.0205, %.lr.ph.split ], [ %.sroa.036.0.ph237, %.lr.ph.split.us ], [ %.sroa.036.0.ph237, %.lr.ph.split.us ]
  %.us-phi228 = phi i64 [ %.sroa.020.0206, %.lr.ph.split ], [ %.sroa.020.0206, %.lr.ph.split ], [ %.sroa.020.0206.us, %.lr.ph.split.us ], [ %.sroa.020.0206.us, %.lr.ph.split.us ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  %i.az = add nuw nsw i64 %.us-phi228, 1          ; 2 uses
  %i.ba = icmp samesign eq i64 %i.az, %i.ar
  br i1 %i.ba, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_float0EB1K_.exit, label %.lr.ph509

.lr.ph509:                                        ; preds = %.split225.us
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ay
  br i1 %i.bd, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_float0EB1K_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph509, %bb.m
  %i.be = phi ptr [ %i.bb, %.lr.ph509 ], [ %i.bc, %bb.m ] ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1, !noalias !176, !noundef !4
  %.not.i78 = icmp eq i8 %i.bf, 95
  br i1 %.not.i78, label %bb.m, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_float0EB1K_.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_float0EB1K_.exit: ; preds = %bb.m, %bb.n, %.split225.us
  %.sroa.0.0.i = phi ptr [ null, %.split225.us ], [ null, %bb.m ], [ %i.be, %bb.n ] ; 2 uses
  %.not69 = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not69, ptr @32, ptr %.sroa.0.0.i
  %i.bg = load i8, ptr %., align 1, !noundef !4   ; 2 uses
  switch i8 %i.bg, label %bb.o [
    i8 45, label %bb.p
    i8 43, label %bb.p
  ]

bb.o:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_float0EB1K_.exit
  %i.bh = add i8 %i.bg, -48
  %or.cond75 = icmp ult i8 %i.bh, 10
  br i1 %or.cond75, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_float0EB1K_.exit, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_float0EB1K_.exit
  br i1 %i.au, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = icmp samesign ult i64 %.sroa.0.0.ph241, %i.ar
  br i1 %i.bi, label %.outer, label %.invoke437

bb.r:                                             ; preds = %bb.p
  br i1 %i.at, label %.thread108, label %.split219.thread

bb.s:                                             ; preds = %bb.i
  %i.bj = icmp eq i8 %i.ad, 45
  br i1 %i.bj, label %bb.t, label %bb.j

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ult i64 %.sroa.0.0.ph241, %i.ar
  br i1 %i.bk, label %.outer, label %.invoke437

.thread108:                                       ; preds = %bb.r, %.loopexit
  %.sroa.0.0.ph185 = phi i64 [ %.sroa.0.0.ph241, %bb.r ], [ %.sroa.0.0.ph186, %.loopexit ] ; 5 uses
  %.sroa.020.0157 = phi i64 [ %.us-phi228, %bb.r ], [ %.sroa.020.0158, %.loopexit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.695.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !184
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !182, !noalias !179, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !182, !noalias !179, !noundef !4 ; 2 uses
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo)
          to label %bb.v unwind label %bb.u, !noalias !184

bb.u:                                             ; preds = %.thread108
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #19
          to label %common.resume unwind label %bb.w, !noalias !179

bb.v:                                             ; preds = %.thread108
  %i.bq = load i64, ptr %i.c, align 8, !range !66, !noalias !184, !noundef !4
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %bb.y, label %.thread

.thread:                                          ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.695.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !179
  unreachable

bb.x:                                             ; preds = %bb.av, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.y:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %3 = load <2 x i64>, ptr %i.bt, align 8, !noalias !184
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !184
  %.sroa.0101.0.copyload = load i64, ptr %i.i, align 8, !noalias !179 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.695.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !noalias !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %.not.i = icmp eq i64 %.sroa.0101.0.copyload, -1
  br i1 %.not.i, label %bb.ad, label %bb.z, !prof !190

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !191
  store i64 %.sroa.0101.0.copyload, ptr %i.d, align 8, !noalias !185
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.695.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.695.sroa.0, i64 16, i1 false), !noalias !185
  %.sroa.695.sroa.6.0..sroa.695.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store <2 x i64> %3, ptr %.sroa.695.sroa.6.0..sroa.695.0..sroa_idx.sroa_idx, align 8, !noalias !185
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #20
          to label %bb.ab unwind label %bb.aa, !noalias !191

bb.aa:                                            ; preds = %bb.z
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #19
          to label %common.resume unwind label %bb.ac, !noalias !191

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !191
  unreachable

bb.ad:                                            ; preds = %bb.y, %.thread
  %.sroa.695.sroa.6.0 = phi i64 [ %i.bu, %bb.y ], [ %i.bo, %.thread ] ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.695.sroa.0, i64 16, i1 false), !alias.scope !191
  %.sroa.695.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 %.sroa.695.sroa.6.0, ptr %.sroa.695.sroa.6.0..sroa_idx, align 8, !alias.scope !191
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.695.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !195, !noalias !192, !nonnull !4, !noundef !4 ; 3 uses
  %i.bz = icmp eq i64 %.sroa.020.0157, 0
  br i1 %i.bz, label %.split1.i, label %bb.af

.split1.i:                                        ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.ca = icmp sgt i64 %.sroa.695.sroa.6.0, -1
  tail call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !200
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %.sroa.695.sroa.6.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.thread129

.noexc:                                           ; preds = %.split1.i
  %i.cb = load i64, ptr %i.b, align 8, !range !66, !noalias !200, !noundef !4
  %i.cc = trunc nuw i64 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !67, !noalias !200, !noundef !4 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cc, label %bb.ae, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit.i, !prof !25

bb.ae:                                            ; preds = %.noexc
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !200
  br label %.invoke

.invoke:                                          ; preds = %bb.ai, %bb.ae
  %i.ch = phi i64 [ %i.ce, %bb.ae ], [ %i.cv, %bb.ai ]
  %i.ci = phi i64 [ %i.cg, %bb.ae ], [ %i.cx, %bb.ai ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ch, i64 %i.ci) #20
          to label %.cont unwind label %.thread129

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit.i: ; preds = %.noexc
  %i.cj = load ptr, ptr %i.cf, align 8, !noalias !200, !nonnull !4, !noundef !4 ; 2 uses
  %i.ck = icmp ule i64 %.sroa.695.sroa.6.0, %i.ce
  tail call void @llvm.assume(i1 %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !200
  store i64 0, ptr %.sroa.695.sroa.6.0..sroa_idx, align 8, !alias.scope !202, !noalias !203
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull align 1 %i.by, i64 %.sroa.695.sroa.6.0, i1 false), !noalias !200
  br label %bb.am

bb.af:                                            ; preds = %bb.ad
  %.not.i82 = icmp ult i64 %.sroa.020.0157, %.sroa.695.sroa.6.0
  br i1 %.not.i82, label %bb.ag, label %.split2.i

.split2.i:                                        ; preds = %bb.af
  %i.cl = icmp eq i64 %.sroa.020.0157, %.sroa.695.sroa.6.0
  br i1 %i.cl, label %.split.i, label %bb.ak, !prof !204

bb.ag:                                            ; preds = %bb.af
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.020.0157
  %i.cn = load i8, ptr %i.cm, align 1, !noalias !205, !noundef !4
  %i.co = icmp sgt i8 %i.cn, -65
  br i1 %i.co, label %.split.i, label %bb.ak, !prof !204

.split.i:                                         ; preds = %bb.ag, %.split2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.cp = icmp sgt i64 %.sroa.695.sroa.6.0, -1
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp ugt i64 %.sroa.020.0157, %.sroa.695.sroa.6.0
  br i1 %i.cq, label %bb.aj, label %bb.ah, !prof !25

bb.ah:                                            ; preds = %.split.i
  %i.cr = sub nuw nsw i64 %.sroa.695.sroa.6.0, %.sroa.020.0157 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !209
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.cr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc85 unwind label %.thread129

.noexc85:                                         ; preds = %bb.ah
  %i.cs = load i64, ptr %i.a, align 8, !range !66, !noalias !209, !noundef !4
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !67, !noalias !209, !noundef !4 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ct, label %bb.ai, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit3.i, !prof !25

bb.ai:                                            ; preds = %.noexc85
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !209
  br label %.invoke

bb.aj:                                            ; preds = %.split.i
  invoke void @_RNvNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecppE9split_off13assert_failed(i64 noundef %.sroa.020.0157, i64 noundef %.sroa.695.sroa.6.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #17
          to label %.noexc87 unwind label %.thread129

.noexc87:                                         ; preds = %bb.aj
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit3.i: ; preds = %.noexc85
  %i.cy = load ptr, ptr %i.cw, align 8, !noalias !209, !nonnull !4, !noundef !4 ; 2 uses
  %i.cz = icmp ule i64 %i.cr, %i.cv
  tail call void @llvm.assume(i1 %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !209
  store i64 %.sroa.020.0157, ptr %.sroa.695.sroa.6.0..sroa_idx, align 8, !alias.scope !211, !noalias !212
  %i.da = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.020.0157
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull align 1 %i.da, i64 %i.cr, i1 false), !noalias !209
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag, %.split2.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #17
          to label %.noexc88 unwind label %.thread129

.noexc88:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.bb
  br i1 %.sroa.047.2, label %bb.bc, label %common.resume

.thread129:                                       ; preds = %.invoke, %bb.at, %.split1.i, %bb.ah, %bb.aj, %bb.ak
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.am:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit3.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit.i
  %.sroa.8.0.i = phi i64 [ %.sroa.695.sroa.6.0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit.i ], [ %i.cr, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit3.i ] ; 2 uses
  %.sroa.6.0.i = phi ptr [ %i.cj, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit.i ], [ %i.cy, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit3.i ]
  %.sroa.0.0.i83 = phi i64 [ %i.ce, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit.i ], [ %i.cv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit3.i ]
  store i64 %.sroa.0.0.i83, ptr %i.h, align 8, !alias.scope !192, !noalias !195
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !192, !noalias !195
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !192, !noalias !195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %.not.i89 = icmp ugt i64 %.sroa.0.0.ph185, %.sroa.020.0157
  br i1 %.not.i89, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dc = icmp ne i64 %.sroa.0.0.ph185, 0
  %.not2.i = icmp samesign ult i64 %.sroa.0.0.ph185, %.sroa.020.0157
  %or.cond.i = select i1 %i.dc, i1 %.not2.i, i1 false
  br i1 %or.cond.i, label %bb.ao, label %.split.i90

.split.i90:                                       ; preds = %bb.ao, %bb.an
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.sroa.0.0.ph185)
          to label %.split.i90._RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit_crit_edge unwind label %bb.bb

.split.i90._RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit_crit_edge: ; preds = %.split.i90
  %.pre = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit

bb.ao:                                            ; preds = %bb.an
  %i.dd = load ptr, ptr %i.bx, align 8, !alias.scope !213, !nonnull !4, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sroa.0.0.ph185
  %i.df = load i8, ptr %i.de, align 1, !noalias !213, !noundef !4
  %i.dg = icmp sgt i8 %i.df, -65
  br i1 %i.dg, label %.split.i90, label %bb.ap, !prof !204

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #17
          to label %.noexc92 unwind label %bb.bb

.noexc92:                                         ; preds = %bb.ap
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit: ; preds = %.split.i90._RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit_crit_edge, %bb.am
  %i.dh = phi i64 [ %.pre, %.split.i90._RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit_crit_edge ], [ %.sroa.8.0.i, %bb.am ] ; 3 uses
  %i.di = icmp sgt i64 %i.dh, -1
  call void @llvm.assume(i1 %i.di)
  %i.dj = icmp eq i64 %i.dh, 0
  br i1 %i.dj, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit
  %i.dk = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4
  %i.dl = invoke noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn5ident6xid_ok(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dh)
          to label %bb.as unwind label %bb.bb

bb.ar:                                            ; preds = %bb.as, %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.dm = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.aw unwind label %bb.bb     ; 2 uses

bb.as:                                            ; preds = %bb.aq
  br i1 %i.dl, label %bb.ar, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr null, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.au unwind label %.thread129

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.aw:                                            ; preds = %bb.ar
  %i.dn = extractvalue { ptr, i64 } %i.dm, 0      ; 3 uses
  %i.do = extractvalue { ptr, i64 } %i.dm, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.dp = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.az unwind label %bb.ax     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = icmp eq i64 %i.do, 0
  br i1 %i.dr, label %common.resume, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef range(i64 1, 0) %i.do, i64 noundef 1) #21
  br label %common.resume

bb.az:                                            ; preds = %bb.aw
  %i.ds = extractvalue { ptr, i64 } %i.dp, 0      ; 2 uses
  %i.dt = extractvalue { ptr, i64 } %i.dp, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.dn, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.do, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ds, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dt, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.av

bb.ba:                                            ; preds = %bb.bf, %bb.bc, %bb.bb
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.bb:                                            ; preds = %bb.ap, %.split.i90, %bb.ar, %bb.aq
  %.sroa.047.2 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ], [ true, %bb.ap ], [ true, %.split.i90 ]
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #19
          to label %bb.al unwind label %bb.ba

bb.bc:                                            ; preds = %.thread129, %bb.al
  %.pn.pn133 = phi { ptr, i32 } [ %i.db, %.thread129 ], [ %i.dv, %bb.al ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #19
          to label %common.resume unwind label %bb.ba

bb.bd:                                            ; preds = %.split
  %i.dw = icmp samesign ult i64 %.sroa.0.0.ph241, %i.ar
  br i1 %i.dw, label %bb.be, label %.invoke437

bb.be:                                            ; preds = %bb.bd
  %spec.select = select i1 %i.au, i8 1, i8 %.sroa.037.0.ph236
  br label %.outer

.invoke437:                                       ; preds = %bb.bd, %bb.t, %bb.q, %bb.k
  %i.dx = phi ptr [ @34, %bb.t ], [ @33, %bb.q ], [ @31, %bb.k ], [ @38, %bb.bd ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.ph241, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx) #20
          to label %.cont438 unwind label %bb.bf

.cont438:                                         ; preds = %.invoke437
  unreachable

bb.bf:                                            ; preds = %.invoke437
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #19
          to label %common.resume unwind label %bb.ba
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value17parse_lit_str_raw(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i8 0, ptr %i.e, align 1
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !noundef !4    ; 2 uses
  store i8 %i.f, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 114
  br i1 %i.g, label %bb.c, label %bb.e, !prof !115

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not.i.not = icmp eq i64 %2, 1
  br i1 %.not.i.not, label %.thread74, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !216, !noundef !4
  %i.j = icmp sgt i8 %i.i, -65
  br i1 %i.j, label %.lr.ph.preheader, label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.k = add i64 %2, -1                           ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 11 uses
  br label %.lr.ph

bb.e:                                             ; preds = %.thread, %bb.b
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedhhECsgbWeKYPjk8w_3syn(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @39, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #17
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.sroa.021.091 = phi i64 [ %i.o, %bb.g ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.021.091
  %i.n = load i8, ptr %i.m, align 1, !noundef !4
end_hunk_0
