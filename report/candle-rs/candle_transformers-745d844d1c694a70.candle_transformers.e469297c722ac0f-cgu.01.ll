Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.01?download=true
inline.NumInlined: 4099
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCINvB1c_23non_maximum_suppressionB2a_E0E0EB1e_:bb.a
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val = load float, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.w = getelementptr i8, ptr %i.s, i64 24
  %.val1 = load float, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %brmerge.not.i19 = fcmp uno float %.val1, %.val
  br i1 %brmerge.not.i19, label %bb.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit21, !prof !22

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit18
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit21: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBB_23non_maximum_suppressionB1z_E0E0BD_.exit18
  %i.x = select i1 %.mux.i17, ptr %i.i, ptr %i.m, !unpredictable !4
  %i.y = select i1 %.mux.i14, ptr %i.k, ptr %i.f, !unpredictable !4
  %.mux.i20 = fcmp olt float %.val1, %.val        ; 2 uses
  %i.z = select i1 %.mux.i20, ptr %i.u, ptr %i.s, !unpredictable !4
  %i.aa = select i1 %.mux.i20, ptr %i.s, ptr %i.u, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablejNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB1X_15LogitsProcessor11sample_topp0E0EB1Z_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val13 = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %.val14 = load i64, ptr %0, align 8, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 20 uses
  %i.f = icmp ult i64 %.val14, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %.val13, %i.e
  br i1 %i.g, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val14, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val13, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.val14
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.val13
  %i.j = load i32, ptr %i.h, align 4, !noundef !4 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !noundef !4 ; 2 uses
  %i.l = ashr i32 %i.j, 31
  %i.m = lshr i32 %i.l, 1
  %i.n = xor i32 %i.m, %i.j
  %i.o = ashr i32 %i.k, 31
  %i.p = lshr i32 %i.o, 1
  %i.q = xor i32 %i.p, %i.k
  %i.r = icmp slt i32 %i.n, %i.q                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load i64, ptr %i.s, align 8, !noundef !4 ; 3 uses
  %.val11 = load i64, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %i.u = icmp ult i64 %.val11, %i.e
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit
  %i.v = icmp ult i64 %.val10, %i.e
  br i1 %i.v, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit16, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val11, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val10, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit16: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.val11
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.val10
  %i.y = load i32, ptr %i.w, align 4, !noundef !4 ; 2 uses
  %i.z = load i32, ptr %i.x, align 4, !noundef !4 ; 2 uses
  %i.aa = ashr i32 %i.y, 31
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = xor i32 %i.ab, %i.y
  %i.ad = ashr i32 %i.z, 31
  %i.ae = lshr i32 %i.ad, 1
  %i.af = xor i32 %i.ae, %i.z
  %i.ag = icmp slt i32 %i.ac, %i.af               ; 2 uses
  %i.ah = zext i1 %i.r to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = xor i1 %i.r, true
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak ; 4 uses
  %i.am = select i1 %i.ag, i64 3, i64 2
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am ; 3 uses
  %i.ao = select i1 %i.ag, i64 2, i64 3
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao ; 3 uses
  %.val7 = load i64, ptr %i.an, align 8, !noundef !4 ; 4 uses
  %.val8 = load i64, ptr %i.ai, align 8, !noundef !4 ; 4 uses
  %i.aq = icmp ult i64 %.val8, %i.e
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit16
  %i.ar = icmp ult i64 %.val7, %i.e
  br i1 %i.ar, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit18, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit16
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val8, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val7, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit18: ; preds = %bb.h
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.val8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.val7
  %i.au = load i32, ptr %i.as, align 4, !noundef !4 ; 2 uses
  %i.av = load i32, ptr %i.at, align 4, !noundef !4 ; 2 uses
  %i.aw = ashr i32 %i.au, 31
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = xor i32 %i.ax, %i.au
  %i.az = ashr i32 %i.av, 31
  %i.ba = lshr i32 %i.az, 1
  %i.bb = xor i32 %i.ba, %i.av
  %i.bc = icmp slt i32 %i.ay, %i.bb               ; 3 uses
  %.val4 = load i64, ptr %i.ap, align 8, !noundef !4 ; 3 uses
  %.val5 = load i64, ptr %i.al, align 8, !noundef !4 ; 3 uses
  %i.bd = icmp ult i64 %.val5, %i.e
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit18
  %i.be = icmp ult i64 %.val4, %i.e
  br i1 %i.be, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit20, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit18
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val5, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val4, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit20: ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.val5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.val4
  %i.bh = load i32, ptr %i.bf, align 4, !noundef !4 ; 2 uses
  %i.bi = load i32, ptr %i.bg, align 4, !noundef !4 ; 2 uses
  %i.bj = ashr i32 %i.bh, 31
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = xor i32 %i.bk, %i.bh
  %i.bm = ashr i32 %i.bi, 31
  %i.bn = lshr i32 %i.bm, 1
  %i.bo = xor i32 %i.bn, %i.bi
  %i.bp = icmp slt i32 %i.bl, %i.bo               ; 3 uses
  %i.bq = select i1 %i.bp, ptr %i.an, ptr %i.al, !unpredictable !4
  %i.br = select i1 %i.bc, ptr %i.ai, ptr %i.bq, !unpredictable !4 ; 3 uses
  %i.bs = select i1 %i.bc, ptr %i.al, ptr %i.an, !unpredictable !4
  %i.bt = select i1 %i.bp, ptr %i.ap, ptr %i.bs, !unpredictable !4 ; 3 uses
  %.val1 = load i64, ptr %i.bt, align 8, !noundef !4 ; 3 uses
  %.val2 = load i64, ptr %i.br, align 8, !noundef !4 ; 3 uses
  %i.bu = icmp ult i64 %.val2, %i.e
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit20
  %i.bv = icmp ult i64 %.val1, %i.e
  br i1 %i.bv, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit22, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit20
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit22: ; preds = %bb.n
  %i.bw = select i1 %i.bp, ptr %i.al, ptr %i.ap, !unpredictable !4
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.val2
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.val1
  %i.bz = load i32, ptr %i.bx, align 4, !noundef !4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !noundef !4 ; 2 uses
  %i.cb = ashr i32 %i.bz, 31
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, %i.bz
  %i.ce = ashr i32 %i.ca, 31
  %i.cf = lshr i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, %i.ca
  %i.ch = icmp slt i32 %i.cd, %i.cg               ; 2 uses
  %i.ci = select i1 %i.ch, ptr %i.bt, ptr %i.br, !unpredictable !4
  %i.cj = select i1 %i.ch, ptr %i.br, ptr %i.bt, !unpredictable !4
  %i.ck = select i1 %i.bc, i64 %.val7, i64 %.val8
  store i64 %i.ck, ptr %1, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load i64, ptr %i.ci, align 8
  store i64 %i.cm, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load i64, ptr %i.cj, align 8
  store i64 %i.co, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cq = load i64, ptr %i.bw, align 8
  store i64 %i.cq, ptr %i.cp, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB20_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB24_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val14 = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.a = zext i32 %.val14 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 20 uses
  %i.f = icmp ugt i64 %i.e, %i.a
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.g, align 4
  %i.h = zext i32 %.val13 to i64                  ; 3 uses
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.a
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
  %i.l = load i32, ptr %i.j, align 4, !noundef !4 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !noundef !4 ; 2 uses
  %i.n = ashr i32 %i.l, 31
  %i.o = lshr i32 %i.n, 1
  %i.p = xor i32 %i.o, %i.l
  %i.q = ashr i32 %i.m, 31
  %i.r = lshr i32 %i.q, 1
  %i.s = xor i32 %i.r, %i.m
  %i.t = icmp slt i32 %i.p, %i.s                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.u, align 4, !noundef !4
  %i.v = zext i32 %.val11 to i64                  ; 3 uses
  %i.w = icmp ugt i64 %i.e, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.x, align 4
  %i.y = zext i32 %.val10 to i64                  ; 3 uses
  %i.z = icmp ugt i64 %i.e, %i.y
  br i1 %i.z, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit16, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #34
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit16: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y
  %i.ac = load i32, ptr %i.aa, align 4, !noundef !4 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !noundef !4 ; 2 uses
  %i.ae = ashr i32 %i.ac, 31
  %i.af = lshr i32 %i.ae, 1
  %i.ag = xor i32 %i.af, %i.ac
  %i.ah = ashr i32 %i.ad, 31
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = xor i32 %i.ai, %i.ad
  %i.ak = icmp slt i32 %i.ag, %i.aj               ; 2 uses
  %i.al = zext i1 %i.t to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = xor i1 %i.t, true
  %i.ao = zext i1 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao ; 4 uses
  %i.aq = select i1 %i.ak, i64 3, i64 2
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq ; 3 uses
  %i.as = select i1 %i.ak, i64 2, i64 3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as ; 3 uses
  %.val8 = load i32, ptr %i.am, align 4, !noundef !4 ; 2 uses
  %i.au = zext i32 %.val8 to i64                  ; 3 uses
  %i.av = icmp ugt i64 %i.e, %i.au
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit16
  %.val7 = load i32, ptr %i.ar, align 4           ; 2 uses
  %i.aw = zext i32 %.val7 to i64                  ; 3 uses
  %i.ax = icmp ugt i64 %i.e, %i.aw
  br i1 %i.ax, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit18, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit16
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #34
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit18: ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.au
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aw
  %i.ba = load i32, ptr %i.ay, align 4, !noundef !4 ; 2 uses
  %i.bb = load i32, ptr %i.az, align 4, !noundef !4 ; 2 uses
  %i.bc = ashr i32 %i.ba, 31
  %i.bd = lshr i32 %i.bc, 1
  %i.be = xor i32 %i.bd, %i.ba
  %i.bf = ashr i32 %i.bb, 31
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = xor i32 %i.bg, %i.bb
  %i.bi = icmp slt i32 %i.be, %i.bh               ; 3 uses
  %.val5 = load i32, ptr %i.ap, align 4, !noundef !4
  %i.bj = zext i32 %.val5 to i64                  ; 3 uses
  %i.bk = icmp ugt i64 %i.e, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit18
  %.val4 = load i32, ptr %i.at, align 4
  %i.bl = zext i32 %.val4 to i64                  ; 3 uses
  %i.bm = icmp ugt i64 %i.e, %i.bl
  br i1 %i.bm, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit20, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit18
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit20: ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bj
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bl
  %i.bp = load i32, ptr %i.bn, align 4, !noundef !4 ; 2 uses
  %i.bq = load i32, ptr %i.bo, align 4, !noundef !4 ; 2 uses
  %i.br = ashr i32 %i.bp, 31
  %i.bs = lshr i32 %i.br, 1
  %i.bt = xor i32 %i.bs, %i.bp
  %i.bu = ashr i32 %i.bq, 31
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = xor i32 %i.bv, %i.bq
  %i.bx = icmp slt i32 %i.bt, %i.bw               ; 3 uses
  %i.by = select i1 %i.bx, ptr %i.ar, ptr %i.ap, !unpredictable !4
  %i.bz = select i1 %i.bi, ptr %i.am, ptr %i.by, !unpredictable !4 ; 3 uses
  %i.ca = select i1 %i.bi, ptr %i.ap, ptr %i.ar, !unpredictable !4
  %i.cb = select i1 %i.bx, ptr %i.at, ptr %i.ca, !unpredictable !4 ; 3 uses
  %.val2 = load i32, ptr %i.bz, align 4, !noundef !4
  %i.cc = zext i32 %.val2 to i64                  ; 3 uses
  %i.cd = icmp ugt i64 %i.e, %i.cc
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit20
  %.val1 = load i32, ptr %i.cb, align 4
  %i.ce = zext i32 %.val1 to i64                  ; 3 uses
  %i.cf = icmp ugt i64 %i.e, %i.ce
  br i1 %i.cf, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit22, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit20
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #34
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ce, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit22: ; preds = %bb.n
  %i.cg = select i1 %i.bx, ptr %i.ap, ptr %i.at, !unpredictable !4
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cc
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ce
  %i.cj = load i32, ptr %i.ch, align 4, !noundef !4 ; 2 uses
  %i.ck = load i32, ptr %i.ci, align 4, !noundef !4 ; 2 uses
  %i.cl = ashr i32 %i.cj, 31
  %i.cm = lshr i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, %i.cj
  %i.co = ashr i32 %i.ck, 31
  %i.cp = lshr i32 %i.co, 1
  %i.cq = xor i32 %i.cp, %i.ck
  %i.cr = icmp slt i32 %i.cn, %i.cq               ; 2 uses
  %i.cs = select i1 %i.cr, ptr %i.cb, ptr %i.bz, !unpredictable !4
  %i.ct = select i1 %i.cr, ptr %i.bz, ptr %i.cb, !unpredictable !4
  %i.cu = select i1 %i.bi, i32 %.val7, i32 %.val8
  store i32 %i.cu, ptr %1, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cw = load i32, ptr %i.cs, align 4
  store i32 %i.cw, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load i32, ptr %i.ct, align 4
  store i32 %i.cy, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.da = load i32, ptr %i.cg, align 4
  store i32 %i.da, ptr %i.cz, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtB20_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB24_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val14 = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.a = zext i32 %.val14 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 20 uses
  %i.f = icmp ugt i64 %i.e, %i.a
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.g, align 4
  %i.h = zext i32 %.val13 to i64                  ; 3 uses
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.a
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
  %i.l = load i32, ptr %i.j, align 4, !noundef !4 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !noundef !4 ; 2 uses
  %i.n = ashr i32 %i.l, 31
  %i.o = lshr i32 %i.n, 1
  %i.p = xor i32 %i.o, %i.l
  %i.q = ashr i32 %i.m, 31
  %i.r = lshr i32 %i.q, 1
  %i.s = xor i32 %i.r, %i.m
  %i.t = icmp slt i32 %i.p, %i.s                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.u, align 4, !noundef !4
  %i.v = zext i32 %.val11 to i64                  ; 3 uses
  %i.w = icmp ugt i64 %i.e, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.x, align 4
  %i.y = zext i32 %.val10 to i64                  ; 3 uses
  %i.z = icmp ugt i64 %i.e, %i.y
  br i1 %i.z, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit16, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #34
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit16: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y
  %i.ac = load i32, ptr %i.aa, align 4, !noundef !4 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !noundef !4 ; 2 uses
  %i.ae = ashr i32 %i.ac, 31
  %i.af = lshr i32 %i.ae, 1
  %i.ag = xor i32 %i.af, %i.ac
  %i.ah = ashr i32 %i.ad, 31
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = xor i32 %i.ai, %i.ad
  %i.ak = icmp slt i32 %i.ag, %i.aj               ; 2 uses
  %i.al = zext i1 %i.t to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = xor i1 %i.t, true
  %i.ao = zext i1 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao ; 4 uses
  %i.aq = select i1 %i.ak, i64 3, i64 2
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq ; 3 uses
  %i.as = select i1 %i.ak, i64 2, i64 3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as ; 3 uses
  %.val8 = load i32, ptr %i.am, align 4, !noundef !4 ; 2 uses
  %i.au = zext i32 %.val8 to i64                  ; 3 uses
  %i.av = icmp ugt i64 %i.e, %i.au
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit16
  %.val7 = load i32, ptr %i.ar, align 4           ; 2 uses
  %i.aw = zext i32 %.val7 to i64                  ; 3 uses
  %i.ax = icmp ugt i64 %i.e, %i.aw
  br i1 %i.ax, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit18, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit16
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #34
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit18: ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.au
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aw
  %i.ba = load i32, ptr %i.ay, align 4, !noundef !4 ; 2 uses
  %i.bb = load i32, ptr %i.az, align 4, !noundef !4 ; 2 uses
  %i.bc = ashr i32 %i.ba, 31
  %i.bd = lshr i32 %i.bc, 1
  %i.be = xor i32 %i.bd, %i.ba
  %i.bf = ashr i32 %i.bb, 31
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = xor i32 %i.bg, %i.bb
  %i.bi = icmp slt i32 %i.be, %i.bh               ; 3 uses
  %.val5 = load i32, ptr %i.ap, align 4, !noundef !4
  %i.bj = zext i32 %.val5 to i64                  ; 3 uses
  %i.bk = icmp ugt i64 %i.e, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit18
  %.val4 = load i32, ptr %i.at, align 4
  %i.bl = zext i32 %.val4 to i64                  ; 3 uses
  %i.bm = icmp ugt i64 %i.e, %i.bl
  br i1 %i.bm, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit20, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit18
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit20: ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bj
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bl
  %i.bp = load i32, ptr %i.bn, align 4, !noundef !4 ; 2 uses
  %i.bq = load i32, ptr %i.bo, align 4, !noundef !4 ; 2 uses
  %i.br = ashr i32 %i.bp, 31
  %i.bs = lshr i32 %i.br, 1
  %i.bt = xor i32 %i.bs, %i.bp
  %i.bu = ashr i32 %i.bq, 31
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = xor i32 %i.bv, %i.bq
  %i.bx = icmp slt i32 %i.bt, %i.bw               ; 3 uses
  %i.by = select i1 %i.bx, ptr %i.ar, ptr %i.ap, !unpredictable !4
  %i.bz = select i1 %i.bi, ptr %i.am, ptr %i.by, !unpredictable !4 ; 3 uses
  %i.ca = select i1 %i.bi, ptr %i.ap, ptr %i.ar, !unpredictable !4
  %i.cb = select i1 %i.bx, ptr %i.at, ptr %i.ca, !unpredictable !4 ; 3 uses
  %.val2 = load i32, ptr %i.bz, align 4, !noundef !4
  %i.cc = zext i32 %.val2 to i64                  ; 3 uses
  %i.cd = icmp ugt i64 %i.e, %i.cc
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit20
  %.val1 = load i32, ptr %i.cb, align 4
  %i.ce = zext i32 %.val1 to i64                  ; 3 uses
  %i.cf = icmp ugt i64 %i.e, %i.ce
  br i1 %i.cf, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit22, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit20
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #34
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ce, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtralNtBP_14SparseMoeBlockNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit22: ; preds = %bb.n
  %i.cg = select i1 %i.bx, ptr %i.ap, ptr %i.at, !unpredictable !4
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cc
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ce
  %i.cj = load i32, ptr %i.ch, align 4, !noundef !4 ; 2 uses
  %i.ck = load i32, ptr %i.ci, align 4, !noundef !4 ; 2 uses
  %i.cl = ashr i32 %i.cj, 31
  %i.cm = lshr i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, %i.cj
  %i.co = ashr i32 %i.ck, 31
  %i.cp = lshr i32 %i.co, 1
  %i.cq = xor i32 %i.cp, %i.ck
  %i.cr = icmp slt i32 %i.cn, %i.cq               ; 2 uses
  %i.cs = select i1 %i.cr, ptr %i.cb, ptr %i.bz, !unpredictable !4
  %i.ct = select i1 %i.cr, ptr %i.bz, ptr %i.cb, !unpredictable !4
  %i.cu = select i1 %i.bi, i32 %.val7, i32 %.val8
  store i32 %i.cu, ptr %1, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cw = load i32, ptr %i.cs, align 4
  store i32 %i.cw, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load i32, ptr %i.ct, align 4
  store i32 %i.cy, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.da = load i32, ptr %i.cg, align 4
  store i32 %i.da, ptr %i.cz, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergejNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtB24_15LogitsProcessor11sample_topp0E0EB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 2, 1152921504606846976) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #2 {
.lr.ph:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = add nsw i64 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.a

._crit_edge:                                      ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit24
  %i.g = getelementptr i8, ptr %i.bd, i64 8       ; 2 uses
  %i.h = getelementptr i8, ptr %i.bc, i64 8
  %i.i = and i64 %1, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.h

bb.a:                                             ; preds = %.lr.ph, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit24
  %.sroa.0.043 = phi ptr [ %2, %.lr.ph ], [ %i.ai, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit24 ] ; 2 uses
  %.sroa.04.042 = phi i64 [ 0, %.lr.ph ], [ %i.k, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit24 ]
  %.sroa.06.041 = phi ptr [ %0, %.lr.ph ], [ %i.ah, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit24 ] ; 2 uses
  %.sroa.011.040 = phi ptr [ %i.d, %.lr.ph ], [ %i.af, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit24 ] ; 2 uses
  %.sroa.015.039 = phi ptr [ %i.e, %.lr.ph ], [ %i.bd, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit24 ] ; 2 uses
  %.sroa.017.038 = phi ptr [ %i.c, %.lr.ph ], [ %i.bc, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit24 ] ; 2 uses
  %.sroa.019.037 = phi ptr [ %i.f, %.lr.ph ], [ %i.be, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit24 ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.04.042, 1         ; 2 uses
  %.sroa.011.0.val = load i64, ptr %.sroa.011.040, align 8, !noundef !4 ; 4 uses
  %.sroa.06.0.val = load i64, ptr %.sroa.06.041, align 8, !noundef !4 ; 4 uses
  %.val.i = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 4 uses
  %i.p = icmp ult i64 %.sroa.06.0.val, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %.sroa.011.0.val, %i.o
  br i1 %i.q, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.06.0.val, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.011.0.val, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.06.0.val
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.011.0.val
  %i.t = load i32, ptr %i.r, align 4, !noundef !4 ; 2 uses
  %i.u = load i32, ptr %i.s, align 4, !noundef !4 ; 2 uses
  %i.v = ashr i32 %i.t, 31
  %i.w = lshr i32 %i.v, 1
  %i.x = xor i32 %i.w, %i.t
  %i.y = ashr i32 %i.u, 31
  %i.z = lshr i32 %i.y, 1
  %i.aa = xor i32 %i.z, %i.u
  %i.ab = icmp slt i32 %i.x, %i.aa                ; 3 uses
  %i.ac = xor i1 %i.ab, true
  %i.ad = select i1 %i.ab, i64 %.sroa.011.0.val, i64 %.sroa.06.0.val
  store i64 %i.ad, ptr %.sroa.0.043, align 8, !noalias !3729
  %i.ae = zext i1 %i.ab to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.040, i64 %i.ae ; 4 uses
  %i.ag = zext i1 %i.ac to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.041, i64 %i.ag ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 8 ; 2 uses
  %.sroa.017.0.val = load i64, ptr %.sroa.017.038, align 8, !noundef !4 ; 4 uses
  %.sroa.015.0.val = load i64, ptr %.sroa.015.039, align 8, !noundef !4 ; 4 uses
  %.val.i23 = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i23, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i23, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !4 ; 4 uses
  %i.an = icmp ult i64 %.sroa.015.0.val, %i.am
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit
  %i.ao = icmp ult i64 %.sroa.017.0.val, %i.am
  br i1 %i.ao, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit24, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.015.0.val, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.017.0.val, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #34
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSj7sort_byNCNvMNtCs1dZk1kIfPhr_19candle_transformers10generationNtBM_15LogitsProcessor11sample_topp0E0BO_.exit24: ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.sroa.015.0.val
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.sroa.017.0.val
  %i.ar = load i32, ptr %i.ap, align 4, !noundef !4 ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !noundef !4 ; 2 uses
  %i.at = ashr i32 %i.ar, 31
  %i.au = lshr i32 %i.at, 1
  %i.av = xor i32 %i.au, %i.ar
  %i.aw = ashr i32 %i.as, 31
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = xor i32 %i.ax, %i.as
  %i.az = icmp slt i32 %i.av, %i.ay               ; 3 uses
  %i.ba = xor i1 %i.az, true
  %i.bb = select i1 %i.az, i64 %.sroa.015.0.val, i64 %.sroa.017.0.val
  store i64 %i.bb, ptr %.sroa.019.037, align 8, !noalias !3730
  %.neg.i = sext i1 %i.ba to i64
  %i.bc = getelementptr [8 x i8], ptr %.sroa.017.038, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %i.az to i64
  %i.bd = getelementptr [8 x i8], ptr %.sroa.015.039, i64 %.neg13.i ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.019.037, i64 -8
  %exitcond.not = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.a

bb.h:                                             ; preds = %._crit_edge
  %i.bf = icmp ult ptr %i.ah, %i.g                ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.bf, ptr %i.ah, ptr %i.af
  %i.bg = load i64, ptr %.sroa.06.0..sroa.011.0, align 8
  store i64 %i.bg, ptr %i.ai, align 8
  %i.bh = zext i1 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bh
  %i.bj = xor i1 %i.bf, true
  %i.bk = zext i1 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bk
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.011.1 = phi ptr [ %i.af, %._crit_edge ], [ %i.bl, %bb.h ]
  %.sroa.06.1 = phi ptr [ %i.ah, %._crit_edge ], [ %i.bi, %bb.h ]
  %i.bm = icmp ne ptr %.sroa.06.1, %i.g
  %i.bn = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bn, !prof !23
  br i1 %or.cond, label %bb.k, label %bb.j, !prof !23

bb.j:                                             ; preds = %bb.i
  ret void

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtB27_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0EB2b_(ptr noalias nofree noundef nonnull readonly align 4 captures(address) %0, i64 noundef range(i64 2, 2305843009213693952) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #2 {
.lr.ph:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = add nsw i64 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr [4 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.a

._crit_edge:                                      ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit24
  %i.g = getelementptr i8, ptr %i.bh, i64 4       ; 2 uses
  %i.h = getelementptr i8, ptr %i.bg, i64 4
  %i.i = and i64 %1, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.h

bb.a:                                             ; preds = %.lr.ph, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit24
  %.sroa.0.045 = phi ptr [ %2, %.lr.ph ], [ %i.ak, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit24 ] ; 2 uses
  %.sroa.04.044 = phi i64 [ 0, %.lr.ph ], [ %i.k, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit24 ]
  %.sroa.06.043 = phi ptr [ %0, %.lr.ph ], [ %i.aj, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit24 ] ; 2 uses
  %.sroa.011.042 = phi ptr [ %i.d, %.lr.ph ], [ %i.ah, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit24 ] ; 2 uses
  %.sroa.015.041 = phi ptr [ %i.e, %.lr.ph ], [ %i.bh, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit24 ] ; 2 uses
  %.sroa.017.040 = phi ptr [ %i.c, %.lr.ph ], [ %i.bg, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit24 ] ; 2 uses
  %.sroa.019.039 = phi ptr [ %i.f, %.lr.ph ], [ %i.bi, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit24 ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.04.044, 1         ; 2 uses
  %.sroa.06.0.val = load i32, ptr %.sroa.06.043, align 4, !noundef !4 ; 2 uses
  %.val.i = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.l = zext i32 %.sroa.06.0.val to i64          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 4 uses
  %i.q = icmp ugt i64 %i.p, %i.l
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.011.0.val = load i32, ptr %.sroa.011.042, align 4 ; 2 uses
  %i.r = zext i32 %.sroa.011.0.val to i64         ; 3 uses
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models15quantized_llamaNtBP_8MlpOrMoeNtCsltEA4u8Pgfu_11candle_core6Module7forward0E0BT_.exit, label %bb.d

end_hunk_0
