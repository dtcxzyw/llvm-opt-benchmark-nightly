Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.02?download=true
inline.NumInlined: 155
inline.NumDeleted: 89
begin_hunk_0_@_RNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB4_17PythonVersionInfo8from_str22split_and_parse_number:bb.a
bb.q:                                             ; preds = %.lr.ph.preheader.i19
  %i.co = icmp eq i64 %.sroa.15.0.i8, 1
  %i.cp = trunc nuw nsw i32 %i.cm to i8           ; 2 uses
  br i1 %i.co, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit, label %.lr.ph.i20

.preheader57.i11:                                 ; preds = %bb.t
  %.not53.not.i15 = icmp eq i64 %i.cr, 0
  br i1 %.not53.not.i15, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit, label %.preheader57.i11.preheader

.preheader57.i11.preheader:                       ; preds = %thread-pre-split.i24, %.preheader57.i11
  %.sroa.0.1.i14113 = phi ptr [ %i.cq, %.preheader57.i11 ], [ %.sroa.0.0.i10, %thread-pre-split.i24 ] ; 2 uses
  %.sroa.15.1.i13112 = phi i64 [ %i.cr, %.preheader57.i11 ], [ %.sroa.15.0.i8, %thread-pre-split.i24 ]
  %.sroa.043.0.i12111 = phi i8 [ %i.dc, %.preheader57.i11 ], [ 0, %thread-pre-split.i24 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i14113, i64 1
  %i.cr = add nsw i64 %.sroa.15.1.i13112, -1      ; 2 uses
  %i.cs = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.043.0.i12111, i8 10) ; 2 uses
  %i.ct = extractvalue { i8, i1 } %i.cs, 0        ; 2 uses
  %i.cu = extractvalue { i8, i1 } %i.cs, 1
  %i.cv = load i8, ptr %.sroa.0.1.i14113, align 1, !alias.scope !98, !noundef !6 ; 2 uses
  br i1 %i.cu, label %bb.s, label %bb.r, !prof !9

bb.r:                                             ; preds = %.preheader57.i11.preheader
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 10
  br i1 %i.cy, label %bb.t, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37

bb.s:                                             ; preds = %.preheader57.i11.preheader
  %i.cz = add i8 %i.cv, -48
  %i.da = icmp ult i8 %i.cz, 10
  %spec.select.i16 = select i1 %i.da, i8 2, i8 1
  br label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37

bb.t:                                             ; preds = %bb.r
  %i.db = trunc nuw nsw i32 %i.cx to i8
  %i.dc = add i8 %i.ct, %i.db                     ; 3 uses
  %i.dd = icmp ult i8 %i.dc, %i.ct
  br i1 %i.dd, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37, label %.preheader57.i11, !prof !9

.lr.ph.i20:                                       ; preds = %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i10, i64 1
  %.pre = load i8, ptr %i.de, align 1, !alias.scope !98
  %i.df = zext i8 %.pre to i32
  %i.dg = add nsw i32 %i.df, -48                  ; 2 uses
  %i.dh = icmp ugt i32 %i.dg, 9
  br i1 %i.dh, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.loopexit.loopexit

_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37: ; preds = %bb.r, %bb.t, %.lr.ph.preheader.i19, %.lr.ph.i20, %bb.e, %bb.p, %bb.p, %bb.s
  %.sroa.8.0.i5.ph = phi i8 [ %spec.select.i16, %bb.s ], [ 1, %bb.p ], [ 1, %.lr.ph.preheader.i19 ], [ 0, %bb.e ], [ 1, %bb.p ], [ 1, %.lr.ph.i20 ], [ 2, %bb.t ], [ 1, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99
  store i8 %.sroa.8.0.i5.ph, ptr %i.b, align 1, !noalias !99
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #22
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.loopexit.loopexit: ; preds = %.lr.ph.i20
  %i.di = mul nuw nsw i8 %i.cp, 10
  %i.dj = trunc nuw nsw i32 %i.dg to i8
  %i.dk = add nuw nsw i8 %i.di, %i.dj
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %.preheader57.i11, %bb.q, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.loopexit.loopexit, %.preheader.i17
  %.sroa.8.0.i5 = phi i8 [ 0, %.preheader.i17 ], [ %i.dk, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.loopexit.loopexit ], [ %i.cp, %bb.q ], [ %i.dc, %.preheader57.i11 ]
  store i8 %.sroa.8.0.i5, ptr %0, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cg, ptr %i.dm, align 8
  br label %bb.o

bb.u:                                             ; preds = %bb.g, %.split3.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3ffi5c_str4CStrNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXs1_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStrNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs2_NtCsdc6yCHiM2ZJ_4pyo37versionNtB5_17PythonVersionInfoINtNtCskKLDkoKarTP_4core3cmp10PartialOrdThhhEE11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !noundef !6  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.d = load i8, ptr %i.c, align 2, !noundef !6
  %.val12.i = load i8, ptr %1, align 1, !alias.scope !102, !noundef !6 ; 2 uses
  %i.e = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %i.b, i8 %.val12.i)
  %i.f = icmp eq i8 %i.b, %.val12.i
  br i1 %i.f, label %bb.b, label %_RNvXsm_NtCskKLDkoKarTP_4core5tupleThhhENtNtB7_3cmp10PartialOrd11partial_cmpCsdc6yCHiM2ZJ_4pyo3.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.h = load i8, ptr %i.g, align 1, !noundef !6  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val10.i = load i8, ptr %i.i, align 1, !alias.scope !102, !noundef !6 ; 2 uses
  %i.j = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %i.h, i8 %.val10.i)
  %i.k = icmp eq i8 %i.h, %.val10.i
  br i1 %i.k, label %bb.c, label %_RNvXsm_NtCskKLDkoKarTP_4core5tupleThhhENtNtB7_3cmp10PartialOrd11partial_cmpCsdc6yCHiM2ZJ_4pyo3.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val8.i = load i8, ptr %i.l, align 1, !alias.scope !102, !noundef !6
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %i.d, i8 %.val8.i)
  br label %_RNvXsm_NtCskKLDkoKarTP_4core5tupleThhhENtNtB7_3cmp10PartialOrd11partial_cmpCsdc6yCHiM2ZJ_4pyo3.exit

_RNvXsm_NtCskKLDkoKarTP_4core5tupleThhhENtNtB7_3cmp10PartialOrd11partial_cmpCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.m, %bb.c ], [ %i.j, %bb.b ], [ %i.e, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs2_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std6stringcNtNtBb_10conversion12IntoPyObject13into_pyobject(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %0, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %0, 2048
  %i.d = trunc i32 %0 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %0, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %0, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %0, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %0 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !105
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !105
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !105
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %0, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !105
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !105
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !105
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !105
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !105
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !105
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull readonly %i.a, i64 noundef %.sroa.0.05.i) #19 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString3new.exit, !prof !9

bb.h:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
  unreachable

_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString3new.exit: ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.ab
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std7cstringRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtBb_10conversion12FromPyObject7extract(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RINvNvMsb_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6string8PyStringEBa_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noundef nonnull %1)
  %i.k = load ptr, ptr %i.j, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m)
  store i64 1, ptr %0, align 8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.o = call noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.m, ptr noundef nonnull %i.i) #19 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.i, align 8, !noundef !6
  %i.r = add i64 %i.q, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs3_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.r)
  %i.s = load i64, ptr %i.g, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %3 = load i64, ptr %2, align 8                  ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f)
  %i.v = load i64, ptr %i.f, align 8, !range !5, !noundef !6
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.q, label %bb.r, !prof !4

bb.f:                                             ; preds = %bb.d
  %4 = load i64, ptr %i.u, align 8, !range !5, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %4, ptr %i.e, align 8, !noalias !113
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %3, ptr %5, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !114
  store i64 0, ptr %i.c, align 8, !noalias !114
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !114
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.x, align 8, !noalias !114
  store ptr %i.c, ptr %i.b, align 8, !noalias !114
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @27, ptr %i.y, align 8, !noalias !114
  %i.z = invoke noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core3ffi5c_strNtB2_21FromBytesWithNulErrorNtNtB6_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !115

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #21
          to label %common.resume.i unwind label %bb.j, !noalias !115

bb.h:                                             ; preds = %bb.f
  br i1 %i.z, label %bb.i, label %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCskKLDkoKarTP_4core3ffi5c_str21FromBytesWithNulErrorNtB5_12SpecToString14spec_to_stringCsdc6yCHiM2ZJ_4pyo3.exit.i, !prof !9

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #22
          to label %.noexc.i.i unwind label %bb.g, !noalias !115

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !115
  unreachable

common.resume.i:                                  ; preds = %bb.l, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.ae, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCskKLDkoKarTP_4core3ffi5c_str21FromBytesWithNulErrorNtB5_12SpecToString14spec_to_stringCsdc6yCHiM2ZJ_4pyo3.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !116
  %i.ac = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 25) 24, i64 noundef 8) #19, !noalias !116 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.k, label %_RNCNvXs3_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std7cstringRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtBd_10conversion12FromPyObject7extract0Bd_.exit, !prof !9

bb.k:                                             ; preds = %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCskKLDkoKarTP_4core3ffi5c_str21FromBytesWithNulErrorNtB5_12SpecToString14spec_to_stringCsdc6yCHiM2ZJ_4pyo3.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc.i unwind label %bb.l, !noalias !113

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBJ_5PyErr3newNtNtBL_10exceptions12PyValueErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0EBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #21
          to label %common.resume.i unwind label %bb.m, !noalias !113

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !113
  unreachable

_RNCNvXs3_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std7cstringRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtBd_10conversion12FromPyObject7extract0Bd_.exit: ; preds = %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCskKLDkoKarTP_4core3ffi5c_str21FromBytesWithNulErrorNtB5_12SpecToString14spec_to_stringCsdc6yCHiM2ZJ_4pyo3.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !113
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @3, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.aj, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNCNvXs3_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std7cstringRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtBd_10conversion12FromPyObject7extract0Bd_.exit
  %storemerge = phi i64 [ 0, %bb.n ], [ 1, %_RNCNvXs3_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std7cstringRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtBd_10conversion12FromPyObject7extract0Bd_.exit ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.s, %bb.o
  ret void

bb.q:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.e
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std6stringReNtNtBb_10conversion12FromPyObject7extract(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNvMsb_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6string8PyStringEBa_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull %1)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d)
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance8BorrowedNtB5_8PyStringE6to_str(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std6stringcNtNtBb_10conversion12FromPyObject7extract(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.5 = alloca [48 x i8], align 8            ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNvMsb_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6string8PyStringEBa_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull %1)
  %i.d = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f)
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance8BorrowedNtB5_8PyStringE6to_cow(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %i.f)
  %i.h = load i64, ptr %i.b, align 8, !range !5, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  store i32 1, ptr %0, align 8
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 4 uses
  %.not52 = icmp samesign eq i64 %i.o, 0
  br i1 %.not52, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.m, align 1, !noalias !123, !noundef !6 ; 5 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.g, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i: ; preds = %bb.f
  %i.t = and i8 %i.r, 31
  %i.u = zext nneg i8 %i.t to i32                 ; 3 uses
  %i.v = icmp samesign ne i64 %i.o, 1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  %i.x = load i8, ptr %i.q, align 1, !noalias !123, !noundef !6
  %i.y = shl nuw nsw i32 %i.u, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32                ; 2 uses
  %i.ab = or disjoint i32 %i.y, %i.aa
  %i.ac = icmp samesign ugt i8 %i.r, -33
  br i1 %i.ac, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ad = zext nneg i8 %i.r to i32
  br label %bb.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i
  %i.ae = icmp samesign ne i64 %i.o, 2
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 3 ; 2 uses
  %i.ag = load i8, ptr %i.w, align 1, !noalias !123, !noundef !6
  %i.ah = shl nuw nsw i32 %i.aa, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj            ; 2 uses
  %i.al = shl nuw nsw i32 %i.u, 12
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = icmp samesign ugt i8 %i.r, -17
  br i1 %i.an, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i, label %bb.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i
  %i.ao = icmp samesign ne i64 %i.o, 3
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.aq = load i8, ptr %i.af, align 1, !noalias !123, !noundef !6
  %i.ar = shl nuw nsw i32 %i.u, 18
  %i.as = and i32 %i.ar, 1835008
  %i.at = shl nuw nsw i32 %i.ak, 6
  %i.au = and i8 %i.aq, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = or disjoint i32 %i.aw, %i.as
  br label %bb.i

bb.h:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #21
          to label %common.resume unwind label %bb.r

bb.i:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i, %bb.g, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i
  %spec.select = phi i32 [ %i.ab, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i ], [ %i.ad, %bb.g ], [ %i.ax, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i ], [ %i.am, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i ]
  %.sroa.0.0 = phi ptr [ %i.w, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i ], [ %i.q, %bb.g ], [ %i.ap, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i ], [ %i.af, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i ] ; 5 uses
  %i.az = icmp eq ptr %.sroa.0.0, %i.p
  br i1 %i.az, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %.sroa.0.0, align 1, !noalias !124, !noundef !6 ; 3 uses
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %.thread, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i40

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i40: ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1
  %i.bd = icmp ne ptr %i.bc, %i.p
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp samesign ugt i8 %i.ba, -33
  br i1 %i.be, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i43, label %.thread

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i43: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i40
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2
  %i.bg = icmp ne ptr %i.bf, %i.p
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp samesign ugt i8 %i.ba, -17
  br i1 %i.bh, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i44, label %.thread

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i44: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i43
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3
  %i.bj = icmp ne ptr %i.bi, %i.p
  tail call void @llvm.assume(i1 %i.bj)
  br label %.thread
end_hunk_0
