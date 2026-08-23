Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/find_msvc_tools-b82fdeba10b29d0c.find_msvc_tools.5190c04fb50b97ad-cgu.0?download=true
inline.NumInlined: 322
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvNtCs70aAUIZqZWH_15find_msvc_tools10find_tools15find_vs_version:bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs70aAUIZqZWH_15find_msvc_tools.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs70aAUIZqZWH_15find_msvc_tools.exit.i, %bb.q
  %i.au = load i64, ptr %i.f, align 8
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.r, label %bb.s

bb.n:                                             ; preds = %bb.u, %bb.b
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjd0ZH04R2Z3_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 158, i1 zeroext false, i64 1, i64 1)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.o
  %i.ax = load i64, ptr %i.a, align 8, !noalias !63
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !63 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !63
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %i.ba, i64 %i.bc) #31
          to label %.noexc14 unwind label %bb.m

.noexc14:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %.noexc
  %i.bd = load ptr, ptr %i.bb, align 8, !noalias !63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(158) %i.bd, ptr noundef nonnull readonly align 1 dereferenceable(158) @18, i64 158, i1 false), !noalias !63
  store i64 %i.ba, ptr %0, align 8
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %.sroa.216.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 158, ptr %.sroa.3.0..sroa_idx, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs70aAUIZqZWH_15find_msvc_tools.exit

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs70aAUIZqZWH_15find_msvc_tools.exit
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs2AWtUsOyxgP_3std3env8VarErrorEECs70aAUIZqZWH_15find_msvc_tools(ptr nonnull align 8 %i.f)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs70aAUIZqZWH_15find_msvc_tools.exit
  ret void

bb.t:                                             ; preds = %bb.u, %.body
  resume { ptr, i32 } %.pn

bb.u:                                             ; preds = %.body
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs2AWtUsOyxgP_3std3env8VarErrorEECs70aAUIZqZWH_15find_msvc_tools(ptr nonnull align 8 %i.f) #33
          to label %bb.t unwind label %bb.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCs70aAUIZqZWH_15find_msvc_tools10find_tools16find_windows_sdk(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #8 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs70aAUIZqZWH_15find_msvc_tools10find_tools18find_tool_with_env(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr %3, i64 %4, ptr %5, ptr align 8 %6) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [56 x i8], align 8                ; 10 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 15 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [56 x i8], align 8                ; 5 uses
  switch i64 %2, label %_RNvMNtCs70aAUIZqZWH_15find_msvc_tools10find_toolsNtB2_10TargetArch3new.exit [
    i64 3, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit.i
    i64 6, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit3.i
    i64 5, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit6.i
    i64 7, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit9.i
    i64 4, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit18.i
    i64 8, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit27.i
  ]

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit.i: ; preds = %bb.a
  %i.p = load i16, ptr %1, align 1
  %i.q = xor i16 %i.p, 13944
  %i.r = getelementptr i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i16
  %i.u = xor i16 %i.t, 52
  %i.v = or i16 %i.q, %i.u
  %i.w = icmp ne i16 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %select.unfold, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit15.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit3.i: ; preds = %bb.a
  %i.z = load i32, ptr %1, align 1
  %i.aa = xor i32 %i.z, 1597388920
  %i.ab = getelementptr i8, ptr %1, i64 4
  %i.ac = load i16, ptr %i.ab, align 1
  %i.ad = zext i16 %i.ac to i32
  %i.ae = xor i32 %i.ad, 13366
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %select.unfold, label %_RNvMNtCs70aAUIZqZWH_15find_msvc_tools10find_toolsNtB2_10TargetArch3new.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit6.i: ; preds = %bb.a
  %i.aj = load i32, ptr %1, align 1
  %i.ak = xor i32 %i.aj, 913142369
  %i.al = getelementptr i8, ptr %1, i64 4
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = xor i32 %i.an, 52
  %i.ap = or i32 %i.ak, %i.ao
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %select.unfold, label %_RNvMNtCs70aAUIZqZWH_15find_msvc_tools10find_toolsNtB2_10TargetArch3new.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit9.i: ; preds = %bb.a
  %i.at = load i32, ptr %1, align 1
  %i.au = xor i32 %i.at, 1668440417
  %i.av = getelementptr i8, ptr %1, i64 3
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = xor i32 %i.aw, 875980899
  %i.ay = or i32 %i.au, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %select.unfold, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit12.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit12.i: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit9.i
  %i.bc = load i32, ptr %1, align 1
  %i.bd = xor i32 %i.bc, 913142369
  %i.be = getelementptr i8, ptr %1, i64 3
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = xor i32 %i.bf, 1667576886
  %i.bh = or i32 %i.bd, %i.bg
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %select.unfold, label %_RNvMNtCs70aAUIZqZWH_15find_msvc_tools10find_toolsNtB2_10TargetArch3new.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit15.i: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit.i
  %i.bl = load i16, ptr %1, align 1
  %i.bm = xor i16 %i.bl, 14456
  %i.bn = getelementptr i8, ptr %1, i64 2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i16
  %i.bq = xor i16 %i.bp, 54
  %i.br = or i16 %i.bm, %i.bq
  %i.bs = icmp ne i16 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %select.unfold, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit24.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit18.i: ; preds = %bb.a
  %i.bv = load i32, ptr %1, align 1
  %i.bw = icmp ne i32 %i.bv, 909653609
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %select.unfold, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit21.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit21.i: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit18.i
  %i.bz = load i32, ptr %1, align 1
  %i.ca = icmp ne i32 %i.bz, 909653353
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %select.unfold, label %_RNvMNtCs70aAUIZqZWH_15find_msvc_tools10find_toolsNtB2_10TargetArch3new.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit24.i: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit15.i
  %i.cd = load i16, ptr %1, align 1
  %i.ce = xor i16 %i.cd, 29281
  %i.cf = getelementptr i8, ptr %1, i64 2
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i16
  %i.ci = xor i16 %i.ch, 109
  %i.cj = or i16 %i.ce, %i.ci
  %i.ck = icmp ne i16 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %select.unfold, label %_RNvMNtCs70aAUIZqZWH_15find_msvc_tools10find_toolsNtB2_10TargetArch3new.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit27.i: ; preds = %bb.a
  %i.cn = load i64, ptr %1, align 1
  %i.co = icmp ne i64 %i.cn, 7005197910513379444
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %select.unfold, label %_RNvMNtCs70aAUIZqZWH_15find_msvc_tools10find_toolsNtB2_10TargetArch3new.exit

_RNvMNtCs70aAUIZqZWH_15find_msvc_tools10find_toolsNtB2_10TargetArch3new.exit: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit27.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit24.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit21.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit12.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit6.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit3.i, %bb.a
  store i64 -1, ptr %0, align 8
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs70aAUIZqZWH_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit

select.unfold:                                    ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit6.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit12.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit15.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit3.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit9.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit21.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit18.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit27.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs70aAUIZqZWH_15find_msvc_tools.exit24.i
  %i.cr = tail call zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECs70aAUIZqZWH_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @20, i64 7)
  br i1 %i.cr, label %bb.c, label %bb.b

bb.b:                                             ; preds = %select.unfold
  %i.cs = tail call zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECs70aAUIZqZWH_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @21, i64 6)
  br i1 %i.cs, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.ct = tail call zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECs70aAUIZqZWH_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @22, i64 5)
  br i1 %i.ct, label %bb.ai, label %.preheader.1

bb.c:                                             ; preds = %select.unfold
  store i64 -1, ptr %0, align 8
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs70aAUIZqZWH_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.cu = tail call zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECs70aAUIZqZWH_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @23, i64 4)
  br i1 %i.cu, label %bb.ai, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.cv = tail call zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECs70aAUIZqZWH_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @24, i64 4)
  br i1 %i.cv, label %bb.ai, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.cw = tail call zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECs70aAUIZqZWH_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @25, i64 2)
  br i1 %i.cw, label %bb.ai, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.cx = tail call zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECs70aAUIZqZWH_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @26, i64 3)
  br i1 %i.cx, label %bb.ai, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs70aAUIZqZWH_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs70aAUIZqZWH_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs70aAUIZqZWH_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit: ; preds = %.preheader.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %3, ptr %i.n, align 8, !noalias !66
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %4, ptr %i.cy, align 8, !noalias !66
  store ptr %5, ptr %i.m, align 8, !noalias !66
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %6, ptr %i.cz, align 8, !noalias !66
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !invariant.load !53, !noalias !66, !nonnull !53 ; 2 uses
  call void %i.db(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr %5, ptr nonnull @29, i64 12), !noalias !66, !inline_history !69
  %i.dc = load i64, ptr %i.k, align 8, !noalias !66 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dc, -2
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs70aAUIZqZWH_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit
  store i64 -1, ptr %i.o, align 8
  br label %_RNvNtNtCs70aAUIZqZWH_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.f:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs70aAUIZqZWH_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit
  %.sroa.4.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx16.i, i64 16, i1 false), !noalias !66
  store i64 %i.dc, ptr %i.l, align 8, !noalias !66
  invoke void %i.db(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr %5, ptr nonnull @30, i64 12)
          to label %bb.h unwind label %bb.g, !noalias !66

.body.i:                                          ; preds = %bb.r, %bb.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.i ], [ %i.dd, %bb.g ], [ %i.dm, %bb.r ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs70aAUIZqZWH_15find_msvc_tools10find_tools3EnvEBF_(ptr nonnull align 8 %i.l) #33
          to label %common.resume.i unwind label %bb.aa, !noalias !66

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs70aAUIZqZWH_15find_msvc_tools.exit.i.i, %bb.f
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %bb.f
  %i.de = load i64, ptr %i.i, align 8, !noalias !66 ; 2 uses
  %.not.i2.i = icmp eq i64 %i.de, -2
  br i1 %.not.i2.i, label %bb.ab, label %bb.j

.loopexit.i:                                      ; preds = %bb.k, %_RNvXNtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB2_11ControlFlowNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs70aAUIZqZWH_15find_msvc_tools.exit.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %bb.o, %bb.n
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs70aAUIZqZWH_15find_msvc_tools10find_tools3EnvEBF_(ptr nonnull align 8 %i.j) #33
          to label %.body.i unwind label %bb.aa, !noalias !66

bb.j:                                             ; preds = %bb.h
  %.sroa.420.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.223.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.420.0..sroa_idx21.i, i64 16, i1 false), !noalias !66
  store i64 %i.de, ptr %i.j, align 8, !noalias !66
  store ptr %i.n, ptr %i.h, align 8, !noalias !66
  %i.df = load i64, ptr %i.l, align 8, !noalias !66
  %i.dg = icmp eq i64 %i.df, -1
  %i.dh = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !66
  %.pn6.idx.i.i.i = select i1 %i.dg, i64 16, i64 0
  %.pn6.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.pn6.idx.i.i.i
  %.pn4.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pn4.i.i.i = load i64, ptr %.pn4.in.i.i.i, align 8, !noalias !66
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !66
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.pn6.i.i.i, ptr %i.di, align 8, !noalias !73
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.pn4.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !73
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !73
  store ptr %i.n, ptr %i.e, align 8, !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !73
  store ptr %i.e, ptr %i.d, align 8, !noalias !73
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB2_11ControlFlowNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs70aAUIZqZWH_15find_msvc_tools.exit.i.i.i.i.i

_RNvXNtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB2_11ControlFlowNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs70aAUIZqZWH_15find_msvc_tools.exit.i.i.i.i.i: ; preds = %.noexc4.i, %bb.j
  invoke void @_RNvXs4_NtCs2AWtUsOyxgP_3std3envNtB5_10SplitPathsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.di)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !66

.noexc.i:                                         ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB2_11ControlFlowNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs70aAUIZqZWH_15find_msvc_tools.exit.i.i.i.i.i
  %i.dj = load i64, ptr %i.c, align 8, !noalias !73
  %.not.i.i.i.i.i = icmp eq i64 %i.dj, -1
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !73
  invoke void @_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCs2AWtUsOyxgP_3std4path7PathBufBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCNCNvNtNtCs70aAUIZqZWH_15find_msvc_tools10find_tools5impl_21find_msvc_environment00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkBZ_NCB2n_s_0E0E0B2v_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.b)
          to label %.noexc4.i unwind label %.loopexit.i, !noalias !66

.noexc4.i:                                        ; preds = %bb.k
  %i.dk = load i64, ptr %i.a, align 8, !noalias !73 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dk, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB2_11ControlFlowNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs70aAUIZqZWH_15find_msvc_tools.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc4.i
  %.sroa.4.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx4.i.i.i.i.i, i64 16, i1 false), !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !73
  store i64 %i.dk, ptr %i.f, align 8, !alias.scope !70, !noalias !66
  %.sroa.2.0..sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.2.0..sroa_idx.i1.i.i, align 8, !alias.scope !70, !noalias !66
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !70, !noalias !66
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !70, !noalias !66
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !70, !noalias !66
  br label %bb.n

bb.m:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !73
  store i64 -1, ptr %i.f, align 8, !alias.scope !70, !noalias !66
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !66
  invoke void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs70aAUIZqZWH_15find_msvc_tools4tool4ToolE7or_elseNCNvNtNtBM_10find_tools5impl_21find_msvc_environments_0EBM_(ptr nonnull sret([56 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.j)
          to label %bb.o unwind label %.loopexit.split-lp.i, !noalias !66

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs70aAUIZqZWH_15find_msvc_tools4tool4ToolE7or_elseNCNvNtNtBM_10find_tools5impl_21find_msvc_environments0_0EBM_(ptr nonnull sret([56 x i8]) align 8 %i.o, ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.h)
          to label %bb.p unwind label %.loopexit.split-lp.i

bb.p:                                             ; preds = %bb.o
  %i.dl = load i64, ptr %i.j, align 8, !noalias !66
  %.not.i5.i = icmp eq i64 %i.dl, -1
  br i1 %.not.i5.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs70aAUIZqZWH_15find_msvc_tools.exit.i.i unwind label %bb.r, !noalias !66

bb.r:                                             ; preds = %bb.q
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.j)
          to label %.body.i unwind label %bb.s, !noalias !66

bb.s:                                             ; preds = %bb.r
end_hunk_0
