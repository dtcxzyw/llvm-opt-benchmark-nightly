Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/tiff-4b5be56027a37dfb.tiff.3ad9e5d77a66128f-cgu.10?download=true
inline.NumInlined: 55
inline.NumDeleted: 37
begin_hunk_0_@_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_file_range:bb.a

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -9223372036854775805, ptr %i.i, align 8
  store i64 -9223372036854775792, ptr %i.b, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = icmp ugt i64 %i.k, %i.e
  br i1 %i.l, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775792, ptr %0, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 -9223372036854775805 to ptr), ptr %.sroa.462.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -9223372036854775805, ptr %i.q, align 8
  store i64 -9223372036854775792, ptr %i.a, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = load i64, ptr %i.o, align 8, !noundef !5
  %i.s = load i64, ptr %i.p, align 8, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16readout_for_size(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image9colortype(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1)
  %i.g = load i64, ptr %i.f, align 8, !range !39, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0163.0.copyload = load i32, ptr %i.h, align 8 ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5172.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5169.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.g, ptr %0, align 8
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0163.0.copyload, ptr %.sroa.4171.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 0, ptr %i.i, align 2
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.414.0.extract.shift = lshr i32 %.sroa.0163.0.copyload, 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.k = load i16, ptr %i.j, align 4, !range !15, !noundef !5 ; 2 uses
  %i.l = icmp eq i16 %i.k, 1                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  %.sroa.015.0 = select i1 %i.l, i16 %i.n, i16 1  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.p = load i8, ptr %i.o, align 1, !noundef !5  ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.k

bb.d:                                             ; preds = %bb.e
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.011.0.extract.trunc = trunc i32 %.sroa.0163.0.copyload to i8
  switch i8 %.sroa.011.0.extract.trunc, label %bb.d [
    i8 0, label %bb.k
    i8 1, label %bb.f
    i8 2, label %bb.k
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.f
    i8 8, label %bb.f
    i8 9, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.e
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.q = zext nneg i32 %.sroa.414.0.extract.shift to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.e, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.017.0 = phi i64 [ 1, %bb.c ], [ 3, %bb.f ], [ 1, %bb.e ], [ 2, %bb.g ], [ 4, %bb.h ], [ 1, %bb.e ], [ 5, %bb.i ], [ %i.q, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 198
  %i.s = load i8, ptr %i.r, align 2, !range !23, !alias.scope !40, !noalias !43, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !36, !alias.scope !40, !noalias !43, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !37

bb.m:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.y = load i32, ptr %i.x, align 8, !range !38, !alias.scope !40, !noalias !43, !noundef !5
  %i.z = trunc nuw i32 %i.y to i1
  br i1 %i.z, label %bb.n, label %bb.o, !prof !37

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ac = load i32, ptr %i.ab, align 8, !alias.scope !40, !noalias !43, !noundef !5
  %i.ad = load i32, ptr %i.aa, align 4, !alias.scope !40, !noalias !43, !noundef !5
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #12, !noalias !45
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !40, !noalias !43, !noundef !5 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 4294967295
  br i1 %i.ag, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit, label %bb.r

bb.q:                                             ; preds = %bb.l
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #12, !noalias !45
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !40, !noalias !43, !noundef !5 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 4294967295
  br i1 %i.aj, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = trunc nuw i64 %i.af to i32
  %i.al = trunc nuw i64 %i.ai to i32
  br label %bb.t

_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit: ; preds = %bb.r, %bb.p
  store i64 -9223372036854775788, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 0, ptr %i.am, align 2
  br label %bb.ah

bb.t:                                             ; preds = %bb.s, %bb.n
  %.sroa.9.0.ph = phi i32 [ %i.ad, %bb.n ], [ %i.al, %bb.s ] ; 2 uses
  %.sroa.6.0.ph = phi i32 [ %i.ac, %bb.n ], [ %i.ak, %bb.s ] ; 5 uses
  %narrow = select i1 %i.l, i16 1, i16 %i.n       ; 2 uses
  %.sroa.032.0 = zext i16 %narrow to i32
  %i.an = zext i32 %.sroa.6.0.ph to i64
  %i.ao = zext i8 %i.p to i64                     ; 2 uses
  %i.ap = mul nuw nsw i64 %i.an, %i.ao            ; 2 uses
  %i.aq = zext i16 %.sroa.015.0 to i64
  %i.ar = mul nuw nsw i64 %i.ap, %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 -9223372036854775789, ptr %i.e, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.as = add nuw nsw i64 %i.ar, 7
  %.sroa.054.0 = lshr i64 %i.as, 3
  %i.at = mul nuw nsw i64 %i.ap, %.sroa.017.0     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -9223372036854775789, ptr %i.d, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %4 = lshr i64 %i.at, 3
  %i.au = and i64 %i.at, 7
  %.not248 = icmp eq i64 %i.au, 0                 ; 2 uses
  %not..not248 = xor i1 %.not248, true
  %5 = zext i1 %not..not248 to i64
  %.sroa.077.0 = add nuw nsw i64 %4, %5
  %i.av = zext i32 %2 to i64
  %i.aw = mul nuw nsw i64 %i.ao, %i.av
  %i.ax = mul nuw nsw i64 %i.aw, %.sroa.017.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -9223372036854775789, ptr %i.c, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = add nuw nsw i64 %i.ax, 7
  %.sroa.0100.0 = lshr i64 %i.ay, 3               ; 4 uses
  %i.az = zext i32 %.sroa.9.0.ph to i64
  %i.ba = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0100.0, i64 %i.az) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 0
  %i.bc = extractvalue { i64, i1 } %i.ba, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.bc, label %bb.v, label %bb.u, !prof !14

bb.u:                                             ; preds = %bb.t
  store i64 -9223372036854775789, ptr %i.b, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = zext i32 %3 to i64
  %i.be = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0100.0, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 0
  %i.bg = extractvalue { i64, i1 } %i.be, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %i.bg, label %bb.x, label %bb.w, !prof !14

bb.v:                                             ; preds = %bb.t
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4222.0.copyload = load i64, ptr %.sroa.4222.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775789, ptr %0, align 8
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4222.0.copyload, ptr %.sroa.4231.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 0, ptr %i.bh, align 2
  br label %bb.ah

bb.w:                                             ; preds = %bb.u
  store i64 -9223372036854775789, ptr %i.a, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = icmp eq i32 %.sroa.6.0.ph, 0
  br i1 %i.bi, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.u
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4234.0.copyload = load i64, ptr %.sroa.4234.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775789, ptr %0, align 8
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4234.0.copyload, ptr %.sroa.4243.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 0, ptr %i.bj, align 2
  br label %bb.ah

bb.y:                                             ; preds = %bb.w
  %i.bk = udiv i32 %2, %.sroa.6.0.ph
  %i.bl = urem i32 %2, %.sroa.6.0.ph
  %.not250 = icmp ne i32 %i.bl, 0
  %i.bm = zext i1 %.not250 to i32
  %.sroa.0147.0 = add i32 %i.bk, %i.bm            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 1152921504606846976
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp eq i16 %narrow, 0
  br i1 %i.bq, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #12
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.br = trunc i64 %i.bo to i32
  %i.bs = udiv i32 %i.br, %.sroa.032.0
  %i.bt = icmp ult i32 %.sroa.0147.0, 2
  %or.cond = or i1 %.not248, %i.bt
  br i1 %or.cond, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.y
  call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #12
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %.sroa.011.0.extract.trunc.mask = and i32 %.sroa.0163.0.copyload, 255
  %i.bu = icmp eq i32 %.sroa.011.0.extract.trunc.mask, 7
  br i1 %i.bu, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  store i64 -9223372036854775793, ptr %0, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 0, ptr %i.bv, align 2
  br label %bb.ah

bb.ae:                                            ; preds = %bb.af, %bb.ac
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %.sroa.0100.0, ptr %0, align 8
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0100.0, ptr %.sroa.4158.0..sroa_idx, align 8
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.077.0, ptr %.sroa.5159.0..sroa_idx, align 8
  %.sroa.6160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bb, ptr %.sroa.6160.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bf, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.6.0.ph, ptr %.sroa.8161.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.054.0, ptr %.sroa.10162.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.0147.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.bs, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.0163.0.copyload, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bx = load <2 x i16>, ptr %i.bw, align 8
  store <2 x i16> %i.bx, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i16 %.sroa.015.0, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 %i.k, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.p, ptr %.sroa.20.0..sroa_idx, align 4
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bz = load i16, ptr %i.by, align 8, !noundef !5
  %i.ca = icmp eq i16 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = icmp eq i16 %i.cc, 1
  %or.cond4.not265 = select i1 %i.ca, i1 %i.cd, i1 false
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.cf = load i16, ptr %i.ce, align 4, !range !46
  %i.cg = icmp eq i16 %i.cf, 7
  %or.cond253 = select i1 %or.cond4.not265, i1 true, i1 %i.cg
  br i1 %or.cond253, label %bb.ae, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 -9223372036854775794, ptr %0, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 0, ptr %i.ch, align 2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.b, %bb.x, %bb.ag, %bb.ad, %bb.v, %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image17readout_for_image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  tail call void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16readout_for_size(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1, i32 noundef %i.b, i32 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image21chunk_data_dimensions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 198
  %i.c = load i8, ptr %i.b, align 2, !range !23, !alias.scope !47, !noalias !50, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !range !36, !alias.scope !47, !noalias !50, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !37

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.i = load i32, ptr %i.h, align 8, !range !38, !alias.scope !47, !noalias !50, !noundef !5
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %bb.g, label %bb.d, !prof !37

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #12, !noalias !52
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !47, !noalias !50, !noundef !5 ; 8 uses
  %i.m = icmp ugt i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i64, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp ugt i64 %i.o, 4294967295
  %or.cond103 = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond103, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit, label %bb.n

end_hunk_0
