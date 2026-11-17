Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.13?download=true
inline.NumInlined: 1673
inline.NumDeleted: 501
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout21is_fortran_contiguous:bb.a
  br i1 %or.cond.not.i, label %bb.c, label %_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape21is_fortran_contiguous.exit

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterjEBW_EINtB5_7ZipImplBW_BW_E4nextCsltEA4u8Pgfu_11candle_core.exit.i
  %i.t = add nuw i64 %.sroa.610.015.i, 1          ; 2 uses
  %i.u = mul i64 %i.q, %.sroa.02.016.i
  %exitcond.not.i = icmp eq i64 %i.t, %.sroa.8.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape21is_fortran_contiguous.exit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterjEBW_EINtB5_7ZipImplBW_BW_E4nextCsltEA4u8Pgfu_11candle_core.exit.i

_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape21is_fortran_contiguous.exit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterjEBW_EINtB5_7ZipImplBW_BW_E4nextCsltEA4u8Pgfu_11candle_core.exit.i, %bb.c, %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %or.cond.not.i, %bb.c ], [ %or.cond.not.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterjEBW_EINtB5_7ZipImplBW_BW_E4nextCsltEA4u8Pgfu_11candle_core.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout6narrow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 10 uses
  %i.e = alloca [80 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !8 ; 5 uses
  %.not = icmp ult i64 %2, %i.i
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %4, %3
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2
  %i.l = load i64, ptr %i.k, align 8, !noundef !8
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.o = trunc i64 %2 to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @32, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 6, ptr %i.r, align 8
  store i64 -9223372036854775805, ptr %i.e, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.s = load i64, ptr %i.a, align 8, !range !9, !noundef !8
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !10, !noundef !8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g, !prof !11

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %2, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %3, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %4, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @31, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 21, ptr %i.ac, align 8
  store i64 -9223372036854775794, ptr %i.d, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ad = load i64, ptr %i.w, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.ad) #33
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.w, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.af = icmp ule i64 %i.i, %i.v
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.g, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %2
  store i64 %4, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.v, ptr %i.c, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ae, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.i, ptr %.sroa.513.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %bb.m
  unreachable

bb.i:                                             ; preds = %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.n ], [ %i.aj, %bb.j ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %bb.q unwind label %bb.p

bb.j:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !noundef !8 ; 2 uses
  %i.am = icmp ult i64 %2, %i.al
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %2
  %i.as = load i64, ptr %i.ar, align 8, !noundef !8
  %i.at = mul i64 %i.as, %3
  %i.au = add i64 %i.at, %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.au, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #33
          to label %bb.h unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #34
          to label %bb.i unwind label %bb.p

bb.o:                                             ; preds = %bb.l, %bb.e, %bb.c
  ret void

bb.p:                                             ; preds = %bb.n, %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.q:                                             ; preds = %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout7permute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.05 = alloca [48 x i8], align 8           ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !8 ; 3 uses
  %i.l = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %3, %i.k
  br i1 %i.m, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %.not41 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not41, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.n = and i64 %3, 1152921504606846968          ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %3, 3
  %.idx = and i64 %i.p, 56                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not.i.i.i.i91.a = icmp eq i64 %i.n, 0
  %.not.not.not.i.not.not.i.not.i.i.i94.a = icmp samesign eq i64 %.idx, 0
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB1h_6Layout7permute0E0B1j_.exit.i, %.lr.ph.i
  %i.r = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB1h_6Layout7permute0E0B1j_.exit.i ] ; 10 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  br i1 %.not.i.i.i.i91.a, label %.preheader.i.preheader.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i

bb.d:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i93, i64 64
  %i.u = add nsw i64 %.sroa.5.0.i.i.i.i92, -8     ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %.preheader.i.preheader.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i

.preheader.i.preheader.a:                         ; preds = %bb.d, %bb.c
  br i1 %.not.not.not.i.not.not.i.not.i.i.i94.a, label %.split, label %.lr.ph95

.preheader.i.a:                                   ; preds = %.lr.ph95
  %4 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.i.i.a = icmp eq ptr %4, %i.q
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.a, label %.split, label %.lr.ph95

.lr.ph95:                                         ; preds = %.preheader.i.preheader.a, %.preheader.i.a
  %5 = phi ptr [ %4, %.preheader.i.a ], [ %i.o, %.preheader.i.preheader.a ] ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %5, align 8, !alias.scope !1897, !noalias !1898, !noundef !8
  %i.v = icmp eq i64 %.val2.i.i.i.i.i, %i.r
  br i1 %i.v, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB1h_6Layout7permute0E0B1j_.exit.i, label %.preheader.i.a

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.05.i.i.i.i93 = phi ptr [ %i.t, %bb.d ], [ %2, %bb.c ] ; 9 uses
  %.sroa.5.0.i.i.i.i92 = phi i64 [ %i.u, %bb.d ], [ %i.n, %bb.c ]
  %.val11.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i93, align 8, !alias.scope !1897, !noalias !1899, !noundef !8
  %i.w = icmp eq i64 %.val11.i.i.i.i.i, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i93, i64 8
  %.val11.i.1.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !1897, !noalias !1899, !noundef !8
  %i.y = icmp eq i64 %.val11.i.1.i.i.i.i, %i.r
  %i.z = or i1 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i93, i64 16
  %.val11.i.2.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !1897, !noalias !1899, !noundef !8
  %i.ab = icmp eq i64 %.val11.i.2.i.i.i.i, %i.r
  %i.ac = or i1 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i93, i64 24
  %.val11.i.3.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !1897, !noalias !1899, !noundef !8
  %i.ae = icmp eq i64 %.val11.i.3.i.i.i.i, %i.r
  %i.af = or i1 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i93, i64 32
  %.val11.i.4.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !1897, !noalias !1899, !noundef !8
  %i.ah = icmp eq i64 %.val11.i.4.i.i.i.i, %i.r
  %i.ai = or i1 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i93, i64 40
  %.val11.i.5.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !1897, !noalias !1899, !noundef !8
  %i.ak = icmp eq i64 %.val11.i.5.i.i.i.i, %i.r
  %i.al = or i1 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i93, i64 48
  %.val11.i.6.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !1897, !noalias !1899, !noundef !8
  %i.an = icmp eq i64 %.val11.i.6.i.i.i.i, %i.r
  %i.ao = or i1 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i93, i64 56
  %.val11.i.7.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !1897, !noalias !1899, !noundef !8
  %i.aq = icmp eq i64 %.val11.i.7.i.i.i.i, %i.r
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB1h_6Layout7permute0E0B1j_.exit.i, label %bb.d

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB1h_6Layout7permute0E0B1j_.exit.i: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i, %.lr.ph95
  %exitcond.not.i = icmp eq i64 %i.s, %3
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c

.split:                                           ; preds = %.preheader.i.preheader.a, %.preheader.i.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !8, !noundef !8
  store ptr %i.at, ptr %i.f, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.k, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRSjNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core, ptr %.sroa.48.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.av, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRSjNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core, ptr %.sroa.412.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noundef nonnull @33, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -9223372036854775766, ptr %i.g, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB1h_6Layout7permute0E0B1j_.exit.i, %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !noundef !8 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ba, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.bd = load i64, ptr %i.b, align 8, !range !9, !noundef !8
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !10, !noundef !8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.be, label %bb.f, label %bb.g, !prof !11

bb.e:                                             ; preds = %._crit_edge, %.split
  ret void

bb.f:                                             ; preds = %.loopexit
  %i.bi = load i64, ptr %i.bh, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #33
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.bj = load ptr, ptr %i.bh, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.bk = icmp ule i64 %i.ba, %i.bg
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.bg, ptr %i.d, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bj, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.bm, align 8
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bn = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 8 %i.ay, i64 %i.bn, i1 false)
  store i64 %i.ba, ptr %i.bm, align 8
  br label %bb.h

bb.j:                                             ; preds = %bb.o, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.k ], [ %i.cb, %bb.o ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #34
          to label %bb.v unwind label %bb.u

bb.k:                                             ; preds = %bb.m, %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.h
  %i.bp = load i64, ptr %i.a, align 8, !range !9, !noundef !8
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !10, !noundef !8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bq, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.bu = load i64, ptr %i.bt, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bs, i64 %i.bu) #33
          to label %bb.q unwind label %bb.k

bb.n:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr %i.bt, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.bw = icmp samesign ule i64 %3, %i.bs
  tail call void @llvm.assume(i1 %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.bs, ptr %i.c, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bv, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.by, align 8
  br i1 %.not41, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.bz = shl nuw nsw i64 %3, 3                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr nonnull align 8 %i.bc, i64 %i.bz, i1 false)
  store i64 %3, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bz
  br label %.lr.ph

bb.o:                                             ; preds = %.invoke
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %bb.j unwind label %bb.u

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %.sroa.7.055 = phi i64 [ %i.cd, %bb.t ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %.sroa.033.054 = phi ptr [ %i.cc, %bb.t ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.033.054, i64 8 ; 2 uses
  %i.cd = add nuw nsw i64 %.sroa.7.055, 1
  %i.ce = load i64, ptr %.sroa.033.054, align 8, !noundef !8 ; 6 uses
  %i.cf = icmp ult i64 %i.ce, %i.ba
  br i1 %i.cf, label %bb.p, label %.invoke

._crit_edge:                                      ; preds = %bb.t, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.05.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ch, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.p:                                             ; preds = %.lr.ph
  %i.cj = icmp ult i64 %.sroa.7.055, %i.ba
  br i1 %i.cj, label %bb.r, label %.invoke

bb.q:                                             ; preds = %bb.m
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ce
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sroa.7.055
  store i64 %i.cl, ptr %i.cm, align 8
  %i.cn = icmp ult i64 %i.ce, %3
  br i1 %i.cn, label %bb.s, label %.invoke

bb.s:                                             ; preds = %bb.r
  %i.co = icmp samesign ult i64 %.sroa.7.055, %3
  br i1 %i.co, label %bb.t, label %.invoke

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ce
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.sroa.7.055
  store i64 %i.cq, ptr %i.cr, align 8
  %i.cs = icmp eq ptr %i.cc, %i.ca
  br i1 %i.cs, label %._crit_edge, label %.lr.ph

.invoke:                                          ; preds = %bb.s, %bb.r, %bb.p, %.lr.ph
  %i.ct = phi i64 [ %i.ce, %bb.r ], [ %.sroa.7.055, %bb.p ], [ %i.ce, %.lr.ph ], [ %.sroa.7.055, %bb.s ]
  %i.cu = phi i64 [ %3, %bb.r ], [ %i.ba, %bb.p ], [ %i.ba, %.lr.ph ], [ %3, %bb.s ]
  %i.cv = phi ptr [ @36, %bb.r ], [ @35, %bb.p ], [ @34, %.lr.ph ], [ @37, %bb.s ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ct, i64 noundef %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv) #33
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %bb.o, %bb.j
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.v:                                             ; preds = %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout9is_scalar(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsz_NtCsltEA4u8Pgfu_11candle_core5shapeTjjjjuENtB5_16ShapeWithOneHole10into_shape:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = mul i64 %i.d, %i.b
  %i.j = mul i64 %i.i, %i.f
  %i.k = mul i64 %i.j, %i.h
  call fastcc void @_RNvNtCsltEA4u8Pgfu_11candle_core5shape9hole_size(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.a, i64 noundef %2, i64 noundef %i.k, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111)
  %i.l = load i64, ptr %i.a, align 8, !range !34, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.511.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2683
  %i.o = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 97) 40, i64 noundef 8) #32, !noalias !2683 ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %_RNvXsI_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromTjjjjjEE4from.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #33, !noalias !2683
  unreachable

_RNvXsI_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromTjjjjjEE4from.exit: ; preds = %bb.c
  store i64 %i.b, ptr %i.o, align 8, !noalias !2683
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.d, ptr %i.q, align 8, !noalias !2683
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.f, ptr %i.r, align 8, !noalias !2683
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %i.h, ptr %i.s, align 8, !noalias !2683
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.n, ptr %i.t, align 8, !noalias !2683
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 5, ptr %.sroa.515.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsI_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromTjjjjjEE4from.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtCscWUIX17zZnI_3zip4read7readers12CryptoReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtBZ_4read4Read8read_bufCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtNtCscWUIX17zZnI_3zip4read7readers12CryptoReaderINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtB2_4Read8read_buf0ECsltEA4u8Pgfu_11candle_core(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtCsf3Ta7LF998c_4core2io4util4TakeQINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtBN_4read4Read10read_exactCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtNtCsf3Ta7LF998c_4core2io4util4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtCsltEA4u8Pgfu_11candle_core8backprop25CANDLE_GRAD_DO_NOT_DETACH0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1m_6option6OptionQIB21_bEEEE9call_onceBa_(ptr noalias nofree noundef captures(address_is_null) dereferenceable_or_null(1) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsltEA4u8Pgfu_11candle_core8backprop25CANDLE_GRAD_DO_NOT_DETACH0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !16, !noalias !2688, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNtCsltEA4u8Pgfu_11candle_core8backprop25CANDLE_GRAD_DO_NOT_DETACH0s_0B7_.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StoragebzE16get_or_init_slowNvNvNtCsltEA4u8Pgfu_11candle_core8backprop25CANDLE_GRAD_DO_NOT_DETACH27___rust_std_internal_init_fnEB1F_(ptr noundef nonnull %i.a, ptr noalias nofree noundef dereferenceable_or_null(1) %0) ; 0 uses
  br label %_RNCNKNvNtCsltEA4u8Pgfu_11candle_core8backprop25CANDLE_GRAD_DO_NOT_DETACH0s_0B7_.exit

_RNCNKNvNtCsltEA4u8Pgfu_11candle_core8backprop25CANDLE_GRAD_DO_NOT_DETACH0s_0B7_.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !16, !noalias !2693, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsltEA4u8Pgfu_11candle_core.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsltEA4u8Pgfu_11candle_core(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) ; 0 uses
  br label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsltEA4u8Pgfu_11candle_core.exit

_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs2_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRSjNtNtCsltEA4u8Pgfu_11candle_core5shape4Dims10to_indexesB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 8 uses
  %i.i = alloca [80 x i8], align 8                ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2701
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !2701
  %i.k = load i64, ptr %i.a, align 8, !range !9, !noalias !2701, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !10, !noalias !2701, !noundef !8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8, !noalias !2701
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #33, !noalias !2701
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !noalias !2701, !nonnull !8, !noundef !8 ; 6 uses
  %i.r = icmp samesign ule i64 %2, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2701
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvXsb_NtCsltEA4u8Pgfu_11candle_core5shapeRSjNtB5_4Dims19to_indexes_internal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %1, i64 %i.s, i1 false), !noalias !2702
  br label %_RNvXsb_NtCsltEA4u8Pgfu_11candle_core5shapeRSjNtB5_4Dims19to_indexes_internal.exit

_RNvXsb_NtCsltEA4u8Pgfu_11candle_core5shapeRSjNtB5_4Dims19to_indexes_internal.exit: ; preds = %bb.d, %bb.c
  store i64 %i.n, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %2, ptr %.sroa.547.0..sroa_idx, align 8
  %.idx = shl nuw nsw i64 %2, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp ult i64 %i.v, 1152921504606846976
  %i.x = icmp eq i64 %2, 0
  br i1 %i.x, label %._crit_edge86, label %.lr.ph85

bb.e:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  %i.y = icmp eq ptr %i.ab, %i.t
  br i1 %i.y, label %._crit_edge86, label %.lr.ph85

bb.f:                                             ; preds = %bb.r, %bb.g
  %.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.bo, %bb.r ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #34
          to label %common.resume unwind label %bb.v

bb.g:                                             ; preds = %bb.s, %bb.l, %bb.k, %.loopexit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

._crit_edge86:                                    ; preds = %bb.e, %_RNvXsb_NtCsltEA4u8Pgfu_11candle_core5shapeRSjNtB5_4Dims19to_indexes_internal.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.u, %._crit_edge86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.lr.ph85:                                         ; preds = %_RNvXsb_NtCsltEA4u8Pgfu_11candle_core5shapeRSjNtB5_4Dims19to_indexes_internal.exit, %bb.e
  %.sroa.033.084 = phi ptr [ %i.ab, %bb.e ], [ %i.q, %_RNvXsb_NtCsltEA4u8Pgfu_11candle_core5shapeRSjNtB5_4Dims19to_indexes_internal.exit ] ; 2 uses
  %.sroa.835.083 = phi i64 [ %i.ac, %bb.e ], [ 0, %_RNvXsb_NtCsltEA4u8Pgfu_11candle_core5shapeRSjNtB5_4Dims19to_indexes_internal.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.033.084, i64 8 ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.835.083, 1
  %i.ad = load i64, ptr %.sroa.033.084, align 8, !noundef !8 ; 11 uses
  %i.ae = and i64 %.sroa.835.083, 1152921504606846968 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ae ; 2 uses
  %.not.i2678 = icmp eq i64 %i.ae, 0
  br i1 %.not.i2678, label %._crit_edge, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i

bb.i:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i80, i64 64
  %i.ah = add nsw i64 %.sroa.5.0.i79, -8          ; 2 uses
  %.not.i26 = icmp eq i64 %i.ah, 0
  br i1 %.not.i26, label %._crit_edge, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i

._crit_edge:                                      ; preds = %bb.i, %.lr.ph85
  %i.ai = shl i64 %.sroa.835.083, 3
  %.idx87 = and i64 %i.ai, 56                     ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx87
  %.not.not.not.i.not.not.i81 = icmp samesign eq i64 %.idx87, 0
  br i1 %.not.not.not.i.not.not.i81, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.a

bb.j:                                             ; preds = %.lr.ph.a
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.a = icmp eq ptr %i.aj, %6
  br i1 %.not.not.not.i.not.not.i.a, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %._crit_edge, %bb.j
  %7 = phi ptr [ %i.aj, %bb.j ], [ %i.af, %._crit_edge ] ; 2 uses
  %.val2.i.i.a = load i64, ptr %7, align 8, !alias.scope !2703, !noalias !2704, !noundef !8
  %i.ak = icmp eq i64 %.val2.i.i.a, %i.ad
  br i1 %i.ak, label %.loopexit, label %bb.j

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i: ; preds = %.lr.ph85, %bb.i
  %.sroa.0.05.i80 = phi ptr [ %i.ag, %bb.i ], [ %i.q, %.lr.ph85 ] ; 9 uses
  %.sroa.5.0.i79 = phi i64 [ %i.ah, %bb.i ], [ %i.ae, %.lr.ph85 ]
  %.val11.i.i = load i64, ptr %.sroa.0.05.i80, align 8, !alias.scope !2703, !noundef !8
  %i.al = icmp eq i64 %.val11.i.i, %i.ad
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i80, i64 8
  %.val11.i.1.i = load i64, ptr %i.am, align 8, !alias.scope !2703, !noundef !8
  %i.an = icmp eq i64 %.val11.i.1.i, %i.ad
  %i.ao = or i1 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i80, i64 16
  %.val11.i.2.i = load i64, ptr %i.ap, align 8, !alias.scope !2703, !noundef !8
  %i.aq = icmp eq i64 %.val11.i.2.i, %i.ad
  %i.ar = or i1 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i80, i64 24
  %.val11.i.3.i = load i64, ptr %i.as, align 8, !alias.scope !2703, !noundef !8
  %i.at = icmp eq i64 %.val11.i.3.i, %i.ad
  %i.au = or i1 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i80, i64 32
  %.val11.i.4.i = load i64, ptr %i.av, align 8, !alias.scope !2703, !noundef !8
  %i.aw = icmp eq i64 %.val11.i.4.i, %i.ad
  %i.ax = or i1 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i80, i64 40
  %.val11.i.5.i = load i64, ptr %i.ay, align 8, !alias.scope !2703, !noundef !8
  %i.az = icmp eq i64 %.val11.i.5.i, %i.ad
  %i.ba = or i1 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i80, i64 48
  %.val11.i.6.i = load i64, ptr %i.bb, align 8, !alias.scope !2703, !noundef !8
  %i.bc = icmp eq i64 %.val11.i.6.i, %i.ad
  %i.bd = or i1 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i80, i64 56
  %.val11.i.7.i = load i64, ptr %i.be, align 8, !alias.scope !2703, !noundef !8
  %i.bf = icmp eq i64 %.val11.i.7.i, %i.ad
  %i.bg = or i1 %i.bd, %i.bf
  br i1 %i.bg, label %.loopexit, label %bb.i

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.j, %._crit_edge
  tail call void @llvm.assume(i1 %i.w)
  %.not24 = icmp ult i64 %i.ad, %i.v
  br i1 %.not24, label %bb.e, label %bb.k

.loopexit:                                        ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i, %.lr.ph.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.q unwind label %bb.g

bb.k:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bi = trunc i64 %i.ad to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %4, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %5, ptr %i.bl, align 8
  store i64 -9223372036854775805, ptr %i.d, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.d)
          to label %bb.m unwind label %bb.g

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.m
  %.sink = phi ptr [ %i.i, %bb.t ], [ %i.e, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sink, i64 80, i1 false)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.u unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %bb.o ], [ %.pn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #34
          to label %bb.f unwind label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %4, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %5, ptr %i.bs, align 8
  store i64 -9223372036854775804, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.h)
          to label %bb.t unwind label %bb.g

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.u:                                             ; preds = %bb.n
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.h

bb.v:                                             ; preds = %bb.r, %bb.f
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYSdINtNtCs7fP0opQOXdx_5rayon5slice13ParallelSlicedE16par_chunks_exactCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @112, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtNtCs7fP0opQOXdx_5rayon5slice6chunksINtB5_11ChunksExactdE3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYSfINtNtCs7fP0opQOXdx_5rayon5slice13ParallelSlicefE16par_chunks_exactCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @112, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtNtCs7fP0opQOXdx_5rayon5slice6chunksINtB5_11ChunksExactfE3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYShINtNtCs7fP0opQOXdx_5rayon5slice13ParallelSlicehE16par_chunks_exactCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @112, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtNtCs7fP0opQOXdx_5rayon5slice6chunksINtB5_11ChunksExacthE3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYSlINtNtCs7fP0opQOXdx_5rayon5slice13ParallelSlicelE16par_chunks_exactCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @112, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtNtCs7fP0opQOXdx_5rayon5slice6chunksINtB5_11ChunksExactlE3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYSmINtNtCs7fP0opQOXdx_5rayon5slice13ParallelSlicemE16par_chunks_exactCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @112, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtNtCs7fP0opQOXdx_5rayon5slice6chunksINtB5_11ChunksExactmE3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYSmINtNtCs7fP0opQOXdx_5rayon5slice16ParallelSliceMutmE20par_chunks_exact_mutCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @112, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMsc_NtNtCs7fP0opQOXdx_5rayon5slice6chunksINtB5_14ChunksExactMutmE3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %3, ptr noalias nofree noundef nonnull align 4 %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYSsINtNtCs7fP0opQOXdx_5rayon5slice13ParallelSlicesE16par_chunks_exactCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @112, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtNtCs7fP0opQOXdx_5rayon5slice6chunksINtB5_11ChunksExactsE3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}
end_hunk_1
