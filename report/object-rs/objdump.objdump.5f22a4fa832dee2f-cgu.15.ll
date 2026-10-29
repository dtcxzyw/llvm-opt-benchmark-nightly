Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.15?download=true
inline.NumInlined: 288
inline.NumDeleted: 102
begin_hunk_0_@_RINvYNtNtCseHTIzroA4w0_6object2pe16ImageNtHeaders64NtNtNtNtB7_4read2pe4file14ImageNtHeaders5parseRShECs8aoZCP6pRcV_7objdump:bb.a

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.b, i64 24
  %.val33 = load i16, ptr %i.h, align 1
  %i.i = tail call noundef i16 @_RNvMs7_NtCseHTIzroA4w0_6object6endianINtB5_3U16NtB5_12LittleEndianE3getCs8aoZCP6pRcV_7objdump(i16 noundef %.val33)
  %i.j = icmp eq i16 %i.i, 523
  br i1 %i.j, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @45, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 16, ptr %i.l, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @42, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 32, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.032.0.copyload = load i16, ptr %i.o, align 1 ; 2 uses
  %i.p = icmp ult i16 %.sroa.032.0.copyload, 112
  br i1 %i.p, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.f, %bb.e, %bb.b
  ret void

bb.i:                                             ; preds = %bb.g
  %i.q = zext i16 %.sroa.032.0.copyload to i64
  %i.r = add nsw i64 %i.q, -112
  %i.s = tail call { ptr, i64 } @_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0        ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @44, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 36, ptr %i.w, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @43, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 31, ptr %i.y, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.l:                                             ; preds = %bb.i
  %i.z = extractvalue { ptr, i64 } %i.s, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = getelementptr i8, ptr %i.b, i64 132
  %.val34 = load i32, ptr %i.aa, align 1
  %i.ab = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_12LittleEndianE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val34)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe14data_directoryNtB2_15DataDirectories5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.z, i32 noundef %i.ab)
  %i.ac = load i64, ptr %i.a, align 8, !range !8, !noundef !6
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.aj, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.n:                                             ; preds = %bb.l
  store ptr %i.b, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %.sroa.531.0..sroa_idx, align 8
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYNtNtCseHTIzroA4w0_6object5macho9FatArch32NtNtNtNtB7_4read5macho3fat7FatArch4dataRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(20) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val3 = load i32, ptr %i.a, align 1            ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %.val3)
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp eq i32 %.val3, 0
  br i1 %i.d, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i32, ptr %i.e, align 1
  %i.f = tail call noundef i32 @llvm.bswap.i32(i32 %.val)
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp samesign ult i64 %3, %i.g
  %i.i = sub nuw nsw i64 %3, %i.g
  %.not.i = icmp samesign ult i64 %i.i, %i.c
  %or.cond = select i1 %i.h, i1 true, i1 %.not.i
  br i1 %or.cond, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  br label %select.unfold

select.unfold:                                    ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i.sink = phi ptr [ @47, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.j, %bb.c ]
  %.sink = phi i64 [ 31, %bb.b ], [ %i.c, %bb.a ], [ %i.c, %bb.c ]
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.sink, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.l, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYNtNtCseHTIzroA4w0_6object5macho9FatArch64NtNtNtNtB7_4read5macho3fat7FatArch4dataRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.a, align 1            ; 2 uses
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %.val3) ; 3 uses
  %i.c = icmp eq i64 %.val3, 0
  br i1 %i.c, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 1
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %.val) ; 3 uses
  %i.f = icmp ult i64 %3, %i.e
  %i.g = sub nuw nsw i64 %3, %i.e
  %.not.i = icmp ugt i64 %i.b, %i.g
  %or.cond = select i1 %i.f, i1 true, i1 %.not.i
  br i1 %or.cond, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  br label %select.unfold

select.unfold:                                    ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i.sink = phi ptr [ @47, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.h, %bb.c ]
  %.sink = phi i64 [ 31, %bb.b ], [ %i.b, %bb.a ], [ %i.b, %bb.c ]
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.sink, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.j, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsb_NtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheINtNtBb_5macho15DyldCacheHeaderNtNtBb_6endian10EndiannessE11parse_magicCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 10)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(552) %1) unnamed_addr #1 {
bb.a:
  %i.a = load <8 x i8>, ptr %1, align 1
  %.fr = freeze <8 x i8> %i.a
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.b = icmp eq i64 %.fr.scalar, 2319765435151317348
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  store ptr @48, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 29, ptr %i.c, align 8
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 1, !noundef !6
  switch i8 %i.e, label %bb.b [
    i8 32, label %bb.d
    i8 120, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.g = load i8, ptr %i.f, align 1, !noundef !6
  switch i8 %i.g, label %bb.b [
    i8 32, label %bb.f
    i8 120, label %bb.g
    i8 97, label %bb.h
  ]

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.i = load <4 x i8>, ptr %i.h, align 1
  %.fr99 = freeze <4 x i8> %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.k = load i8, ptr %i.j, align 1
  %.fr102 = freeze i8 %i.k
  %i.l = icmp eq i8 %.fr102, 52
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.n = load i8, ptr %i.m, align 1
  %.fr100 = freeze i8 %i.n
  %i.o = icmp eq i8 %.fr100, 104
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 0
  %.fr99.scalar = bitcast <4 x i8> %.fr99 to i32
  %i.s = icmp eq i32 %.fr99.scalar, 912209464
  %op.rdx96 = and i1 %i.s, %i.l
  %2 = and i1 %op.rdx96, %i.o
  %op.rdx98 = select i1 %2, i1 %i.r, i1 false
  br i1 %op.rdx98, label %bb.m, label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.u = load i8, ptr %i.t, align 1, !noundef !6
  switch i8 %i.u, label %bb.b [
    i8 32, label %bb.i
    i8 97, label %bb.j
  ]

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.w = load <4 x i8>, ptr %i.v, align 1
  %.fr103 = freeze <4 x i8> %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.y = load i8, ptr %i.x, align 1
  %.fr105 = freeze i8 %i.y
  %i.z = icmp eq i8 %.fr105, 52
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 0
  %.fr103.scalar = bitcast <4 x i8> %.fr103 to i32
  %i.ad = icmp eq i32 %.fr103.scalar, 912209464
  %op.rdx = and i1 %i.ad, %i.z
  %op.rdx95 = select i1 %op.rdx, i1 %i.ac, i1 false
  br i1 %op.rdx95, label %bb.m, label %bb.b

bb.h:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !noundef !6
  %i.ag = icmp eq i8 %i.af, 114
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 109
  %or.cond62 = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %or.cond62, label %bb.s, label %bb.b

bb.i:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !noundef !6
  switch i8 %i.al, label %bb.b [
    i8 105, label %bb.k
    i8 32, label %bb.l
  ]

bb.j:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.an = load i8, ptr %i.am, align 1, !noundef !6
  %i.ao = icmp eq i8 %i.an, 114
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, 109
  %or.cond41 = select i1 %i.ao, i1 %i.ar, i1 false
  br i1 %or.cond41, label %bb.n, label %bb.b

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.at = load <4 x i8>, ptr %i.as, align 1
  %.fr107 = freeze <4 x i8> %i.at
  %.fr107.scalar = bitcast <4 x i8> %.fr107 to i32
  %i.au = icmp eq i32 %.fr107.scalar, 3553331
  br i1 %i.au, label %bb.m, label %bb.b

bb.l:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aw = load <4 x i8>, ptr %i.av, align 1
  %.fr106 = freeze <4 x i8> %i.aw
  %.fr106.scalar = bitcast <4 x i8> %.fr106 to i32
  %i.ax = icmp eq i32 %.fr106.scalar, 6516848
  br i1 %i.ax, label %bb.m, label %bb.b

bb.m:                                             ; preds = %bb.e, %bb.u, %bb.y, %bb.x, %bb.w, %bb.g, %bb.p, %bb.r, %bb.q, %bb.l, %bb.k
  %.sroa.094.0 = phi i8 [ 0, %bb.u ], [ 0, %bb.k ], [ 1, %bb.l ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.g ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.e ]
  %.sroa.093.0 = phi i8 [ 1, %bb.u ], [ 10, %bb.k ], [ 23, %bb.l ], [ 4, %bb.q ], [ 4, %bb.r ], [ 1, %bb.p ], [ 11, %bb.g ], [ 4, %bb.w ], [ 4, %bb.x ], [ 4, %bb.y ], [ 11, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.093.0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.094.0, ptr %i.az, align 1
  store ptr null, ptr %0, align 8
  br label %bb.z

bb.n:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !6
  switch i8 %i.bb, label %bb.b [
    i8 118, label %bb.o
    i8 54, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !6
  switch i8 %i.bd, label %bb.b [
    i8 54, label %bb.q
    i8 55, label %bb.r
  ]

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bf = load i8, ptr %i.be, align 1, !noundef !6
  %i.bg = icmp eq i8 %i.bf, 52
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 0
  %or.cond44 = select i1 %i.bg, i1 %i.bj, i1 false
  br i1 %or.cond44, label %bb.m, label %bb.b

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !6
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %bb.b

bb.r:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !6
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.m, label %bb.b

bb.s:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.br = load i8, ptr %i.bq, align 1, !noundef !6
  switch i8 %i.br, label %bb.b [
    i8 118, label %bb.t
    i8 54, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !6
  %i.bu = icmp eq i8 %i.bt, 55
  br i1 %i.bu, label %bb.v, label %bb.b

bb.u:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !6
  %i.bx = icmp eq i8 %i.bw, 52
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = icmp eq i8 %i.bz, 101
  %or.cond65 = select i1 %i.bx, i1 %i.ca, i1 false
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = icmp eq i8 %i.cc, 0
  %or.cond68 = select i1 %or.cond65, i1 %i.cd, i1 false
  br i1 %or.cond68, label %bb.m, label %bb.b

bb.v:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !6
  switch i8 %i.cf, label %bb.b [
    i8 102, label %bb.w
    i8 115, label %bb.x
    i8 107, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !6
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.m, label %bb.b

bb.x:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !6
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.m, label %bb.b

bb.y:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !6
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.m, label %bb.b

bb.z:                                             ; preds = %bb.m, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMss_NtCseHTIzroA4w0_6object5machoINtB5_10RelocationNtNtB7_6endian10EndiannessE4infoCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.0.4.extract.shift = lshr i64 %1, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32 ; 5 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.4.extract.trunc) ; 3 uses
  %i.b = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0.extract.trunc)
  %i.c = lshr i32 %i.a, 8
  %i.d = and i32 %i.a, 128
  %i.e = icmp ne i32 %i.d, 0
  %i.f = trunc i32 %i.a to i8                     ; 3 uses
  %i.g = lshr i8 %i.f, 5
  %i.h = and i8 %i.f, 15
  %i.i = zext i1 %i.e to i8
  %i.j = lshr i8 %i.f, 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = and i32 %.sroa.0.4.extract.trunc, 16777215
  %i.l = lshr i32 %.sroa.0.4.extract.trunc, 25
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = lshr i32 %.sroa.0.4.extract.trunc, 28
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = lshr i64 %1, 56
  %i.q = trunc nuw i64 %i.p to i8
  %i.r = and i8 %i.q, 1
  %i.s = lshr i32 %.sroa.0.4.extract.trunc, 27
  %i.t = trunc nuw nsw i32 %i.s to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i32 [ %.sroa.0.0.extract.trunc, %bb.c ], [ %i.b, %bb.b ]
  %.sink10 = phi i32 [ %i.k, %bb.c ], [ %i.c, %bb.b ]
  %.sink9 = phi i8 [ %i.r, %bb.c ], [ %i.i, %bb.b ]
  %.sink8.in = phi i8 [ %i.m, %bb.c ], [ %i.g, %bb.b ]
  %.sink7.in = phi i8 [ %i.t, %bb.c ], [ %i.j, %bb.b ]
  %.sink = phi i8 [ %i.o, %bb.c ], [ %i.h, %bb.b ]
  %.sink7 = and i8 %.sink7.in, 1
  %.sink8 = and i8 %.sink8.in, 3
  store i32 %.sroa.03.0.i, ptr %0, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink10, ptr %i.u, align 4
end_hunk_0
