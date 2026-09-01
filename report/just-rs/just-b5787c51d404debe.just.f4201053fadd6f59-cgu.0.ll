Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RINvNtCs4wP2HXfJTCR_5alloc3str17join_generic_copyehReECskXtk6F4WjxZ_4just:bb.a
  %i.ao = load i8, ptr %3, align 1, !alias.scope !6237, !noalias !6241
  store i8 %i.ao, ptr %.sroa.035.2206, align 1, !alias.scope !6237, !noalias !6241
  %.not.i86 = icmp ugt i64 %.sroa.012.1.val79, %i.an
  br i1 %.not.i86, label %.invoke, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit94, !prof !340

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit94: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.035.2206, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.012.1.val79
  %i.ar = sub nuw nsw i64 %i.an, %.sroa.012.1.val79 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %.sroa.012.1.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.1.val79, i1 false), !alias.scope !6243, !noalias !6247
  %i.as = icmp eq ptr %i.al, %i.b
  br i1 %i.as, label %.loopexit, label %.lr.ph208

.lr.ph203:                                        ; preds = %.preheader183, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit112
  %.sroa.012.2202 = phi ptr [ %i.at, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit112 ], [ %i.d, %.preheader183 ] ; 3 uses
  %.sroa.035.3201 = phi ptr [ %i.ay, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit112 ], [ %i.ah, %.preheader183 ] ; 2 uses
  %.sroa.26.3200 = phi i64 [ %i.az, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit112 ], [ %i.ai, %.preheader183 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.2202, i64 16 ; 2 uses
  %.sroa.012.2.val = load ptr, ptr %.sroa.012.2202, align 8, !nonnull !29, !noundef !29
  %i.au = getelementptr i8, ptr %.sroa.012.2202, i64 8
  %.sroa.012.2.val78 = load i64, ptr %i.au, align 8, !noundef !29 ; 4 uses
  %.not.i95 = icmp ult i64 %.sroa.26.3200, 2
  br i1 %.not.i95, label %.invoke, label %bb.k, !prof !340

bb.k:                                             ; preds = %.lr.ph203
  %i.av = add nsw i64 %.sroa.26.3200, -2          ; 2 uses
  %i.aw = load i16, ptr %3, align 1, !alias.scope !6249, !noalias !6253
  store i16 %i.aw, ptr %.sroa.035.3201, align 1, !alias.scope !6249, !noalias !6253
  %.not.i104 = icmp ugt i64 %.sroa.012.2.val78, %i.av
  br i1 %.not.i104, label %.invoke, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit112, !prof !340

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit112: ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.035.3201, i64 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.012.2.val78
  %i.az = sub nuw nsw i64 %i.av, %.sroa.012.2.val78 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.sroa.012.2.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.2.val78, i1 false), !alias.scope !6255, !noalias !6259
  %i.ba = icmp eq ptr %i.at, %i.b
  br i1 %i.ba, label %.loopexit, label %.lr.ph203

.lr.ph:                                           ; preds = %.preheader185, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit130
  %.sroa.012.3199 = phi ptr [ %i.bb, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit130 ], [ %i.d, %.preheader185 ] ; 3 uses
  %.sroa.035.4198 = phi ptr [ %i.bf, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit130 ], [ %i.ah, %.preheader185 ] ; 2 uses
  %.sroa.26.4197 = phi i64 [ %i.bg, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit130 ], [ %i.ai, %.preheader185 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.3199, i64 16 ; 2 uses
  %.sroa.012.3.val = load ptr, ptr %.sroa.012.3199, align 8, !nonnull !29, !noundef !29
  %i.bc = getelementptr i8, ptr %.sroa.012.3199, i64 8
  %.sroa.012.3.val77 = load i64, ptr %i.bc, align 8, !noundef !29 ; 4 uses
  %.not.i113 = icmp ult i64 %.sroa.26.4197, 3
  br i1 %.not.i113, label %.invoke, label %bb.l, !prof !340

bb.l:                                             ; preds = %.lr.ph
  %i.bd = add nsw i64 %.sroa.26.4197, -3          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.035.4198, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 range(i64 0, -9223372036854775808) 3, i1 false), !alias.scope !6261, !noalias !6265
  %.not.i122 = icmp ugt i64 %.sroa.012.3.val77, %i.bd
  br i1 %.not.i122, label %.invoke, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit130, !prof !340

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit130: ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.035.4198, i64 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.012.3.val77
  %i.bg = sub nuw nsw i64 %i.bd, %.sroa.012.3.val77 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %.sroa.012.3.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.3.val77, i1 false), !alias.scope !6267, !noalias !6271
  %i.bh = icmp eq ptr %i.bb, %i.b
  br i1 %i.bh, label %.loopexit, label %.lr.ph

.lr.ph213:                                        ; preds = %.preheader, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit148
  %.sroa.012.4212 = phi ptr [ %i.bi, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit148 ], [ %i.d, %.preheader ] ; 3 uses
  %.sroa.035.5211 = phi ptr [ %i.bn, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit148 ], [ %i.ah, %.preheader ] ; 2 uses
  %.sroa.26.5210 = phi i64 [ %i.bo, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit148 ], [ %i.ai, %.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.4212, i64 16 ; 2 uses
  %.sroa.012.4.val = load ptr, ptr %.sroa.012.4212, align 8, !nonnull !29, !noundef !29
  %i.bj = getelementptr i8, ptr %.sroa.012.4212, i64 8
  %.sroa.012.4.val76 = load i64, ptr %i.bj, align 8, !noundef !29 ; 4 uses
  %.not.i131 = icmp ult i64 %.sroa.26.5210, 4
  br i1 %.not.i131, label %.invoke, label %bb.m, !prof !340

bb.m:                                             ; preds = %.lr.ph213
  %i.bk = add nsw i64 %.sroa.26.5210, -4          ; 2 uses
  %i.bl = load i32, ptr %3, align 1, !alias.scope !6273, !noalias !6277
  store i32 %i.bl, ptr %.sroa.035.5211, align 1, !alias.scope !6273, !noalias !6277
  %.not.i140 = icmp ugt i64 %.sroa.012.4.val76, %i.bk
  br i1 %.not.i140, label %.invoke, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit148, !prof !340

.invoke:                                          ; preds = %bb.l, %.lr.ph, %bb.k, %.lr.ph203, %bb.j, %.lr.ph208, %bb.m, %.lr.ph213
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @786, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #75
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskXtk6F4WjxZ_4just.exit148: ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.035.5211, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.012.4.val76
  %i.bo = sub nuw nsw i64 %i.bk, %.sroa.012.4.val76 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %.sroa.012.4.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.4.val76, i1 false), !alias.scope !6279, !noalias !6283
  %i.bp = icmp eq ptr %i.bi, %i.b
  br i1 %i.bp, label %.loopexit, label %.lr.ph213

default.unreachable235:                           ; preds = %bb.i
  unreachable

bb.n:                                             ; preds = %bb.o, %.loopexit
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.ab

bb.o:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.br, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtCsaKJjC64KgbL_3std2fs5writeRNtNtB4_4path7PathBufNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !29, !noundef !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.d, align 8, !noundef !29
  %i.e = invoke noundef ptr @_RNvNvNtCsaKJjC64KgbL_3std2fs5write5inner(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val1, i64 noundef %.val2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6288)
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !6291 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !6291
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6295)
  %.val.i.i3 = load i64, ptr %1, align 8, !alias.scope !6298 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i3, 0
  br i1 %i.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val.i.i3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !6298
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5: ; preds = %bb.d, %bb.e
  ret ptr %i.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshTCYgcDtIbU_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtCskXtk6F4WjxZ_4just7request7RequestEB17_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [56 x i8], align 8                ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 10 uses
  store i8 -128, ptr %i.v, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6309)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 20 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !6312, !noalias !6317, !noundef !29 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !6321, !noalias !6322 ; 2 uses
  %i.z = icmp ult i64 %.promoted.i.i.i, %i.y
  br i1 %i.z, label %.lr.ph.i.i.i, label %.loopexit22.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.aa = load ptr, ptr %i.u, align 8, !alias.scope !6312, !noalias !6317, !nonnull !29, !noundef !29 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ab = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6324)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !6325, !noundef !29
  switch i8 %i.ad, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.s
    i8 34, label %bb.f
  ], !prof !6326

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.w, align 8, !alias.scope !6327, !noalias !6322
  %exitcond.not.i.i.i = icmp eq i64 %i.ae, %i.y
  br i1 %exitcond.not.i.i.i, label %.loopexit22.i.i, label %bb.b

.loopexit22.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6330
  store i64 5, ptr %i.p, align 8, !noalias !6330
  %i.af = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc unwind label %bb.be

.noexc:                                           ; preds = %.loopexit22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6330
  br label %bb.d

bb.d:                                             ; preds = %.noexc14, %.noexc
  %.sink.i.i = phi ptr [ %i.ah, %.noexc14 ], [ %i.af, %.noexc ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.ag, align 8, !alias.scope !6331, !noalias !6332
  store i64 -2, ptr %0, align 8, !alias.scope !6331, !noalias !6332
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request7RequestEBF_.exit39

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6330
  store i64 10, ptr %i.q, align 8, !noalias !6330
  %i.ah = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc14 unwind label %bb.be

.noexc14:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6330
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6356)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.g, %bb.f
  %i.ai = phi i64 [ %i.al, %bb.g ], [ %i.ab, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !6359, !noundef !29
  switch i8 %i.ak, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 34, label %bb.h
  ], !prof !6373

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.w, align 8, !alias.scope !6374, !noalias !6377
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.al, %i.y
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6378
  store i64 5, ptr %i.o, align 8, !noalias !6378
  %i.am = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc15 unwind label %bb.be

.noexc15:                                         ; preds = %.loopexit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6378
  br label %.noexc19

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.an = add i64 %i.ai, 1
  store i64 %i.an, ptr %i.w, align 8, !alias.scope !6379, !noalias !6382
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6383, !noalias !6382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6378
  invoke void @_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %.noexc16 unwind label %bb.be

.noexc16:                                         ; preds = %bb.h
  %i.ao = load i64, ptr %i.n, align 8, !range !27, !noalias !6378, !noundef !29 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !6378 ; 11 uses
  br i1 %i.ap, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.as = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @534)
          to label %.noexc17 unwind label %bb.be

bb.j:                                             ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6378
  br label %.noexc19

bb.k:                                             ; preds = %.noexc16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !6378 ; 3 uses
  %i.at = trunc nuw i64 %i.ao to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  br i1 %i.at, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB8_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBT_7Visitor9visit_strNtNtCshTCYgcDtIbU_10serde_json5error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i [
    i64 20, label %bb.m
    i64 6, label %bb.n
  ], !prof !6384

bb.m:                                             ; preds = %bb.l
  %i.au = load i128, ptr %i.ar, align 1
  %i.av = xor i128 %i.au, 140162838156011450068130631549806079589
  %i.aw = getelementptr i8, ptr %i.ar, i64 16
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = zext i32 %i.ax to i128
  %i.az = xor i128 %i.ay, 1701601889
  %i.ba = or i128 %i.av, %i.az
  %i.bb = icmp ne i128 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.r, label %_RINvXNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB8_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBT_7Visitor9visit_strNtNtCshTCYgcDtIbU_10serde_json5error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.be = load i32, ptr %i.ar, align 1
  %i.bf = xor i32 %i.be, 1852270963
  %i.bg = getelementptr i8, ptr %i.ar, i64 4
  %i.bh = load i16, ptr %i.bg, align 1
  %i.bi = zext i16 %i.bh to i32
  %i.bj = xor i32 %i.bi, 27745
  %i.bk = or i32 %i.bf, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RINvXNvNtCskXtk6F4WjxZ_4just7request1__NtB5_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB1R_4read7StrReadEEB7_.exit, label %_RINvXNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB8_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBT_7Visitor9visit_strNtNtCshTCYgcDtIbU_10serde_json5error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i, !prof !36

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB8_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBT_7Visitor9visit_strNtNtCshTCYgcDtIbU_10serde_json5error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i [
    i64 20, label %bb.p
    i64 6, label %bb.q
  ], !prof !6384

bb.p:                                             ; preds = %bb.o
  %i.bo = load i128, ptr %i.ar, align 1
  %i.bp = xor i128 %i.bo, 140162838156011450068130631549806079589
  %i.bq = getelementptr i8, ptr %i.ar, i64 16
  %i.br = load i32, ptr %i.bq, align 1
  %i.bs = zext i32 %i.br to i128
  %i.bt = xor i128 %i.bs, 1701601889
  %i.bu = or i128 %i.bp, %i.bt
  %i.bv = icmp ne i128 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.r, label %_RINvXNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB8_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBT_7Visitor9visit_strNtNtCshTCYgcDtIbU_10serde_json5error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.by = load i32, ptr %i.ar, align 1
  %i.bz = xor i32 %i.by, 1852270963
  %i.ca = getelementptr i8, ptr %i.ar, i64 4
  %i.cb = load i16, ptr %i.ca, align 1
  %i.cc = zext i16 %i.cb to i32
  %i.cd = xor i32 %i.cc, 27745
  %i.ce = or i32 %i.bz, %i.cd
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_RINvXNvNtCskXtk6F4WjxZ_4just7request1__NtB5_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB1R_4read7StrReadEEB7_.exit, label %_RINvXNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB8_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBT_7Visitor9visit_strNtNtCshTCYgcDtIbU_10serde_json5error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i, !prof !36

_RINvXNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB8_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBT_7Visitor9visit_strNtNtCshTCYgcDtIbU_10serde_json5error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %i.ci = invoke fastcc noundef nonnull align 8 ptr @_RNvYNtNtCshTCYgcDtIbU_10serde_json5error5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error15unknown_variantCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i)
          to label %.noexc18 unwind label %bb.be

.noexc18:                                         ; preds = %_RINvXNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB8_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBT_7Visitor9visit_strNtNtCshTCYgcDtIbU_10serde_json5error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6378
  br label %.noexc17

.noexc17:                                         ; preds = %bb.i, %.noexc18
  %.sroa.1210.1.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.noexc18 ], [ %i.as, %bb.i ]
  %i.cj = invoke fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskXtk6F4WjxZ_4just(ptr noalias noundef nonnull align 8 %.sroa.1210.1.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t)
          to label %.noexc19 unwind label %bb.be

.noexc19:                                         ; preds = %.noexc17, %bb.j, %.noexc15
  %.sroa.91.1.ph.i.i.i.i.i = phi ptr [ %i.ar, %bb.j ], [ %i.am, %.noexc15 ], [ %i.cj, %.noexc17 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.91.1.ph.i.i.i.i.i) ]
  br label %_RINvXNvNtCskXtk6F4WjxZ_4just7request1__NtB5_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB1R_4read7StrReadEEB7_.exit.thread105

bb.r:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6385
  store i8 13, ptr %i.m, align 8, !noalias !6385
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @544, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @528)
          to label %.noexc20 unwind label %bb.be

.noexc20:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6385
  br label %_RINvXNvNtCskXtk6F4WjxZ_4just7request1__NtB5_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB1R_4read7StrReadEEB7_.exit.thread105

bb.s:                                             ; preds = %bb.b
  store i8 127, ptr %i.v, align 8, !alias.scope !6332, !noalias !6331
  %i.cl = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.cl, ptr %i.w, align 8, !alias.scope !6390, !noalias !6331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6404)
  %i.cm = icmp ult i64 %i.cl, %i.y
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.s, %bb.t
  %i.cn = phi i64 [ %i.cq, %bb.t ], [ %i.cl, %bb.s ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noalias !6407, !noundef !29
  switch i8 %i.cp, label %bb.u [
    i8 32, label %bb.t
    i8 10, label %bb.t
    i8 9, label %bb.t
    i8 13, label %bb.t
    i8 34, label %bb.v
    i8 125, label %bb.ad
  ], !prof !6417

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cq = add i64 %i.cn, 1                        ; 3 uses
  store i64 %i.cq, ptr %i.w, align 8, !alias.scope !6418, !noalias !6421
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cq, %i.y
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6422
  store i64 3, ptr %i.i, align 8, !noalias !6422
  %i.cr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc21 unwind label %bb.be

.noexc21:                                         ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6422
  br label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6422
  store i64 17, ptr %i.j, align 8, !noalias !6422
  %i.cs = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc22 unwind label %bb.be

.noexc22:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6422
  br label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6432)
  %i.ct = add i64 %i.cn, 1
  store i64 %i.ct, ptr %i.w, align 8, !alias.scope !6435, !noalias !6438
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6443, !noalias !6438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6444
  invoke void @_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %.noexc23 unwind label %bb.be

.noexc23:                                         ; preds = %bb.v
  %i.cu = load i64, ptr %i.h, align 8, !range !27, !noalias !6444, !noundef !29 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !6444 ; 11 uses
end_hunk_0
