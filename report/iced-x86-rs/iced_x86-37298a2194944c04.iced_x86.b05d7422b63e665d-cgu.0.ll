Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder11try_with_ip:bb.a
  %i.ao = insertelement <4 x i1> poison, i1 %.sroa.0.0, i64 0
  %i.ap = shufflevector <4 x i1> %i.ao, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.aq = select <4 x i1> %i.ap, <4 x i32> <i32 128, i32 15, i32 224, i32 240>, <4 x i32> <i32 0, i32 7, i32 0, i32 0>
  store <4 x i32> %i.aq, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 %1, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 452
  store <4 x i8> %i.f, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i8 %.sroa.07.0, ptr %.sroa.50.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 457
  store i8 %.sroa.05.0, ptr %.sroa.51.0..sroa_idx, align 1
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 458
  store i8 0, ptr %.sroa.52.0..sroa_idx, align 2
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 459
  store i8 0, ptr %.sroa.53.0..sroa_idx, align 1
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i8 0, ptr %.sroa.54.0..sroa_idx, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.ar, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @352, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 13, ptr %.sroa.584.0..sroa_idx, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %bb.u, %_RNvNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB7_7Decoder11try_with_ip12get_handlers.exit109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder13read_op_mem_0(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) initializes((35, 36)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(464) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = load i8, ptr %i.a, align 4, !range !44, !noundef !21
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !noundef !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load i32, ptr %i.f, align 4, !noundef !21
  %i.h = add i32 %i.g, %i.e
  %i.i = trunc i32 %i.h to i8
  %. = select i1 %i.c, i8 53, i8 37
  %i.j = add i8 %., %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.j, ptr %i.k, align 1
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder13read_op_mem_1(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) initializes((37, 38)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) initializes((460, 461)) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.e = trunc i64 %i.c to i8
  store i8 %i.e, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.g = load i64, ptr %i.f, align 8, !noundef !21
  %i.h = icmp ult i64 %i.c, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !noundef !21
  %i.k = or i32 %i.j, 16448
  store i32 %i.k, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = add nuw i64 %i.c, 1
  %i.m = inttoptr i64 %i.c to ptr
  %i.n = load i8, ptr %i.m, align 1, !noundef !21
  store i64 %i.l, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i8, ptr %i.o, align 4, !range !44, !noundef !21
  %i.q = icmp eq i8 %i.p, 2
  %i.r = sext i8 %i.n to i64                      ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret i1 false

bb.e:                                             ; preds = %bb.c
  %i.s = and i64 %i.r, 4294967295
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i32, ptr %i.u, align 8, !noundef !21
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.x = load i32, ptr %i.w, align 4, !noundef !21
  %i.y = add i32 %i.x, %i.v
  %i.z = trunc i32 %i.y to i8
  %i.aa = add i8 %i.z, 37
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.aa, ptr %i.ab, align 1
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !21
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !noundef !21
  %i.ah = add i32 %i.ag, %i.ae
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = add i8 %i.ai, 53
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.aj, ptr %i.ak, align 1
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder13read_op_mem_2(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) initializes((460, 461)) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.d = trunc i64 %i.b to i8
  store i8 %i.d, ptr %i.c, align 4
  %i.e = add i64 %i.b, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.g = load i64, ptr %i.f, align 8, !noundef !21
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !noundef !21
  %i.k = or i32 %i.j, 16448
  store i32 %i.k, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = add i64 %i.b, 4
  %i.m = inttoptr i64 %i.b to ptr
  %.sroa.01.0.copyload = load i32, ptr %i.m, align 1 ; 2 uses
  store i64 %i.l, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.o = load i8, ptr %i.n, align 4, !range !44, !noundef !21
  %i.p = icmp eq i8 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 35 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret i1 false

bb.e:                                             ; preds = %bb.c
  %i.v = zext i32 %.sroa.01.0.copyload to i64
  store i64 %i.v, ptr %i.q, align 8
  store i8 3, ptr %i.r, align 1
  %i.w = load i32, ptr %i.s, align 8, !noundef !21
  %i.x = load i32, ptr %i.t, align 4, !noundef !21
  %i.y = add i32 %i.x, %i.w
  %i.z = trunc i32 %i.y to i8
  %i.aa = add i8 %i.z, 37
  store i8 %i.aa, ptr %i.u, align 1
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.ab = sext i32 %.sroa.01.0.copyload to i64
  store i64 %i.ab, ptr %i.q, align 8
  store i8 4, ptr %i.r, align 1
  %i.ac = load i32, ptr %i.s, align 8, !noundef !21
  %i.ad = load i32, ptr %i.t, align 4, !noundef !21
  %i.ae = add i32 %i.ad, %i.ac
  %i.af = trunc i32 %i.ae to i8
  %i.ag = add i8 %i.af, 53
  store i8 %i.ag, ptr %i.u, align 1
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder14decode_out_ptr(ptr noalias nofree noundef align 8 dereferenceable(464) initializes((0, 4), (24, 52), (68, 72), (408, 424)) %0, ptr noundef initializes((0, 40)) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 38 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store i32 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 453
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 458
  %2 = load <1 x i16>, ptr %i.e, align 1
  %3 = load <1 x i16>, ptr %i.h, align 2
  %4 = shufflevector <1 x i16> %2, <1 x i16> %3, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %4, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 6 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !21 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %i.j, ptr %i.k, align 8
  %i.l = add i64 %i.j, 15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !21
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %i.l) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  store i64 %..i, ptr %i.o, align 8
  %i.p = icmp ult i64 %i.j, %..i
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 16448, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = add nuw i64 %i.j, 1                      ; 2 uses
  %i.r = inttoptr i64 %i.j to ptr
  %i.s = load i8, ptr %i.r, align 1, !noundef !21
  %i.t = zext i8 %i.s to i64
  store i64 %i.q, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = phi i32 [ 0, %bb.c ], [ 16448, %bb.b ]
  %i.v = phi i64 [ %i.q, %bb.c ], [ %i.j, %bb.b ] ; 5 uses
  %.sroa.01.0 = phi i64 [ %i.t, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.sroa.01.0 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !21, !noundef !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !21, !noundef !21
  %i.ac = trunc nuw nsw i64 %.sroa.01.0 to i32    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !21
  %i.af = and i32 %i.ae, %i.ac
  %i.ag = icmp eq i32 %i.af, 64
  br i1 %i.ag, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp ult i64 %i.v, %..i
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = add nuw i64 %i.v, 1                     ; 2 uses
  %i.aj = inttoptr i64 %i.v to ptr
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !21
  %i.al = zext i8 %i.ak to i64
  store i64 %i.ai, ptr %i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.am = phi i64 [ %i.ai, %bb.f ], [ %i.v, %bb.e ]
  %i.an = phi i32 [ %i.u, %bb.f ], [ 16448, %bb.e ] ; 2 uses
  %.sroa.08.0 = phi i64 [ %i.al, %bb.f ], [ 0, %bb.e ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.sroa.08.0 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !21, !noundef !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !21, !noundef !21
  %i.as = or i32 %i.an, 8
  %i.at = and i64 %.sroa.01.0, 8
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = or i32 %i.an, 136
  store i8 2, ptr %i.g, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.011.0 = phi i32 [ %i.as, %bb.g ], [ %i.av, %bb.h ] ; 2 uses
  store i32 %.sroa.011.0, ptr %i.d, align 8
  %i.aw = shl nuw nsw i32 %i.ac, 1
  %i.ax = and i32 %i.aw, 8
  store i32 %i.ax, ptr %i.a, align 8
  %i.ay = shl nuw nsw i32 %i.ac, 2
  %i.az = and i32 %i.ay, 8
  store i32 %i.az, ptr %i.b, align 4
  %i.ba = shl nuw nsw i32 %i.ac, 3
  %i.bb = and i32 %i.ba, 8
  store i32 %i.bb, ptr %i.c, align 8
  %i.bc = or i32 %.sroa.011.0, 16448
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %i.bd = phi i32 [ %i.bc, %bb.i ], [ 16448, %bb.d ]
  %i.be = phi i64 [ %i.am, %bb.i ], [ %i.v, %bb.d ] ; 3 uses
  %.sroa.07.0 = phi ptr [ %i.ap, %bb.i ], [ %i.z, %bb.d ]
  %.sroa.3.0 = phi ptr [ %i.ar, %bb.i ], [ %i.ab, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9799)
  %i.bf = load i8, ptr %.sroa.3.0, align 1, !range !27, !alias.scope !9799, !noundef !21
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.k, label %_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder13decode_table2.exit

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp ult i64 %i.be, %..i
  br i1 %i.bh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.bd, ptr %i.d, align 8, !alias.scope !9798
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bi = add nuw i64 %i.be, 1
  %i.bj = inttoptr i64 %i.be to ptr
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !9800, !noundef !21
  store i64 %i.bi, ptr %i.i, align 8, !alias.scope !9798
  %i.bl = zext i8 %i.bk to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.bl, %bb.m ], [ 0, %bb.l ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.i, ptr %i.bm, align 8, !alias.scope !9798
  %i.bn = lshr i32 %.sroa.0.0.i, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = and i32 %i.bn, 7
  store i32 %i.bp, ptr %i.bo, align 8, !alias.scope !9798
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.br = lshr i32 %.sroa.0.0.i, 6                ; 2 uses
  store i32 %i.br, ptr %i.bq, align 4, !alias.scope !9798
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bt = and i32 %.sroa.0.0.i, 7                 ; 2 uses
  store i32 %i.bt, ptr %i.bs, align 4, !alias.scope !9798
  %i.bu = shl nuw nsw i32 %i.br, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bw = or disjoint i32 %i.bu, %i.bt
  store i32 %i.bw, ptr %i.bv, align 4, !alias.scope !9798
  br label %_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder13decode_table2.exit

_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder13decode_table2.exit: ; preds = %bb.j, %bb.n
  tail call void %.sroa.07.0(ptr noundef nonnull readonly dereferenceable(1) %.sroa.3.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !inline_history !9797
  %i.bx = load i64, ptr %i.i, align 8, !noundef !21
  %i.by = trunc i64 %i.bx to i32
  %i.bz = trunc i64 %i.j to i32                   ; 2 uses
  %i.ca = sub i32 %i.by, %i.bz                    ; 2 uses
  %i.cb = trunc i32 %i.ca to i8                   ; 2 uses
  store i8 %i.cb, ptr %.sroa.14.0..sroa_idx, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !21 ; 2 uses
  %i.ce = zext i32 %i.ca to i64
  %i.cf = add i64 %i.cd, %i.ce                    ; 5 uses
  store i64 %i.cf, ptr %i.cc, align 8
  store i64 %i.cf, ptr %1, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 457
  %i.ch = load i8, ptr %i.cg, align 1, !range !40, !noundef !21
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 18               ; 2 uses
  %i.ck = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !noundef !21
  %i.cl = or i32 %i.cj, %i.ck
  store i32 %i.cl, ptr %.sroa.6.0..sroa_idx, align 4
  %i.cm = load i32, ptr %i.d, align 8, !noundef !21 ; 11 uses
  %i.cn = and i32 %i.cm, 4163
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder13decode_table2.exit
  %i.cp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !21 ; 2 uses
  %i.cq = add i64 %i.cp, %i.cf                    ; 2 uses
  store i64 %i.cq, ptr %.sroa.4.0..sroa_idx, align 8
  %i.cr = and i32 %i.cm, 4161
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = and i32 %i.cm, 3
  %.not = icmp eq i32 %i.ct, 1
  br i1 %.not, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.w, %bb.t, %bb.o, %_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder13decode_table2.exit
  ret void

bb.r:                                             ; preds = %bb.p
  %i.cu = and i32 %i.cm, 2
  %.not55 = icmp eq i32 %i.cu, 0
  %i.cv = and i32 %i.cm, 1
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = select i1 %i.cw, i64 %i.cp, i64 %i.cq   ; 2 uses
  %i.cy = add i64 %i.cx, %i.cf
  %i.cz = and i64 %i.cy, 4294967295
  %simplifycfg.merge = select i1 %.not55, i64 %i.cx, i64 %i.cz
  store i64 %simplifycfg.merge, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %i.da = and i32 %i.cm, 64
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = and i32 %i.cm, 12288
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.de = load i32, ptr %i.dd, align 4, !noundef !21
  %i.df = and i32 %i.dc, %i.de
  %i.dg = icmp eq i32 %i.df, 4096
  br i1 %i.dg, label %bb.u, label %bb.q
end_hunk_0
