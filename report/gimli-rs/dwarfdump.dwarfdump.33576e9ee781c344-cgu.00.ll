Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.00?download=true
inline.NumInlined: 930
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvCs4phXRVW1pDQ_9dwarfdump15dump_range_listINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBM_12endian_slice11EndianSliceNtNtBO_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2_:bb.a
  %i.bd = trunc i32 %.sroa.095.0.copyload to i8   ; 4 uses
  br i1 %i.bc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4101.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.bw

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(132) %i.aq, i64 132, i1 false)
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 133
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.599.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %i.ar, ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0, i64 132, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 132
  store i8 %i.bb, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.be = icmp ult i32 %.sroa.095.0.copyload, 327680 ; 2 uses
  %spec.select = select i1 %i.be, ptr @153, ptr @152
  %spec.select516 = select i1 %i.be, i64 13, i64 15
  store ptr %spec.select, ptr %i.ap, align 8, !captures !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %spec.select516, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.ap, ptr %i.ao, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs4phXRVW1pDQ_9dwarfdump, ptr %.sroa.4105.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.as, ptr %i.bg, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.4109.0..sroa_idx, align 8
  %i.bh = call noundef ptr @_RNvYINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @154, ptr noundef nonnull %i.ao) ; 4 uses
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1697
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bj = and i64 %i.bi, 3
  switch i64 %i.bj, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit
    i64 3, label %bb.e
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit
    i64 1, label %bb.f
  ], !prof !11

default.unreachable:                              ; preds = %bb.p, %bb.k, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.bk = icmp ult ptr %i.bh, inttoptr (i64 188978561024 to ptr)
  %i.bl = and i64 %i.bi, 1095216660480
  %i.bm = icmp ne i64 %i.bl, 1095216660480
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.assume(i1 %i.bm)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit

bb.f:                                             ; preds = %bb.d
  %i.bn = getelementptr i8, ptr %i.bh, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !alias.scope !1698, !noalias !1697
  store i8 3, ptr %i.b, align 8, !alias.scope !1698, !noalias !1697
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bo), !noalias !1697
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit: ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1697
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.bw

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i32 0, ptr %i.an, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_14RawRngListIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2J_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bp)
  %i.bq = load i64, ptr %i.am, align 8, !range !37, !noundef !7 ; 2 uses
  %i.br = icmp eq i64 %i.bq, -2
  br i1 %i.br, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4111.sroa.4.0..sroa.4111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.4177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br label %bb.h

._crit_edge:                                      ; preds = %bb.z, %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load <2 x i64>, ptr %i.cf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i64 0, ptr %0, align 8
  store <2 x i64> %i.cg, ptr %.sroa.4113.0..sroa_idx, align 8
  br label %bb.bv

bb.h:                                             ; preds = %.lr.ph, %bb.z
  %i.ch = phi i64 [ %i.bq, %.lr.ph ], [ %i.db, %bb.z ] ; 4 uses
  %.sroa.4111.sroa.0.0.copyload = load i64, ptr %.sroa.4111.0..sroa_idx, align 8 ; 12 uses
  %.sroa.4111.sroa.4.0.copyload = load i64, ptr %.sroa.4111.sroa.4.0..sroa.4111.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.not239 = icmp eq i64 %i.ch, -1
  br i1 %.not239, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.an, ptr %i.al, align 8
  store ptr @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4117.0..sroa_idx, align 8
  %i.ci = call noundef ptr @_RNvYINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @155, ptr noundef nonnull %i.al) ; 4 uses
  %.not240 = icmp eq ptr %i.ci, null
  br i1 %.not240, label %bb.n, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.bw

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1699
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = and i64 %i.cj, 3
  switch i64 %i.ck, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit263
    i64 3, label %bb.l
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit263
    i64 1, label %bb.m
  ], !prof !11

bb.l:                                             ; preds = %bb.k
  %i.cl = icmp ult ptr %i.ci, inttoptr (i64 188978561024 to ptr)
  %i.cm = and i64 %i.cj, 1095216660480
  %i.cn = icmp ne i64 %i.cm, 1095216660480
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 %i.cn)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit263

bb.m:                                             ; preds = %bb.k
  %i.co = getelementptr i8, ptr %i.ci, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !1700, !noalias !1699
  store i8 3, ptr %i.a, align 8, !alias.scope !1700, !noalias !1699
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp), !noalias !1699
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit263

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit263: ; preds = %bb.k, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1699
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bv

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.cq = load i32, ptr %i.an, align 4, !noundef !7
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.an, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %.off = add nsw i64 %i.ch, -1
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit, label %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit.sink.split

_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit.sink.split: ; preds = %bb.n
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %.sink4.i.sroa.gep296, align 8, !alias.scope !1701
  br label %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit

_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.n, %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit.sink.split
  %.sink4.i.sroa.phi = phi ptr [ %.sink4.i.sroa.gep, %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit.sink.split ], [ %.sink4.i.sroa.gep296, %bb.n ]
  %.sink2.i = phi i64 [ %.sroa.4111.sroa.4.0.copyload, %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit.sink.split ], [ %.sroa.4111.sroa.0.0.copyload, %bb.n ]
  store i64 %.sink2.i, ptr %.sink4.i.sroa.phi, align 8, !alias.scope !1701
  store i64 %i.ch, ptr %i.aj, align 8, !alias.scope !1701
  call void @_RNvMsd_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE11convert_rawB2G_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.cs = load i64, ptr %i.ak, align 8, !range !20, !noundef !7 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4119.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4121.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bv

bb.p:                                             ; preds = %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit
  store i64 %i.cs, ptr %i.ai, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  switch i64 %i.ch, label %default.unreachable [
    i64 0, label %bb.w
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.s
    i64 4, label %bb.t
    i64 5, label %bb.w
    i64 6, label %bb.u
    i64 7, label %bb.v
  ]

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ah, ptr %i.ag, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4133.0..sroa_idx, align 8
  %i.cu = call noundef ptr @_RNvYINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @156, ptr noundef nonnull %i.ag) ; 2 uses
  %.not258 = icmp eq ptr %i.cu, null
  br i1 %.not258, label %bb.y, label %bb.x

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read4addrINtB2_9DebugAddrINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE11get_addressB2w_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, i8 noundef %i.bd, i64 noundef %i.az, i64 noundef %.sroa.4111.sroa.0.0.copyload)
  %i.cv = load i8, ptr %i.ad, align 8, !range !15, !noundef !7 ; 2 uses
  %.not256 = icmp eq i8 %i.cv, -1
  br i1 %.not256, label %bb.ab, label %bb.aa

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %.sroa.4111.sroa.4.0.copyload, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read4addrINtB2_9DebugAddrINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE11get_addressB2w_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, i8 noundef %i.bd, i64 noundef %i.az, i64 noundef %.sroa.4111.sroa.0.0.copyload)
  %i.cw = load i8, ptr %i.y, align 8, !range !15, !noundef !7 ; 2 uses
  %.not251 = icmp eq i8 %i.cw, -1
  br i1 %.not251, label %bb.ag, label %bb.af

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.sroa.4111.sroa.4.0.copyload, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read4addrINtB2_9DebugAddrINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE11get_addressB2w_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, i8 noundef %i.bd, i64 noundef %i.az, i64 noundef %.sroa.4111.sroa.0.0.copyload)
  %i.cx = load i8, ptr %i.q, align 8, !range !15, !noundef !7 ; 2 uses
  %.not247 = icmp eq i8 %i.cx, -1
  br i1 %.not247, label %bb.as, label %bb.ar

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.4111.sroa.4.0.copyload, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4129.0..sroa_idx, align 8
  store ptr %i.i, ptr %i.bt, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4233.0..sroa_idx, align 8
  %i.cy = call noundef ptr @_RNvYINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @111, ptr noundef nonnull %i.h) ; 2 uses
  %.not244 = icmp eq ptr %i.cy, null
  br i1 %.not244, label %bb.bi, label %bb.bh

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.4111.sroa.4.0.copyload, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4125.0..sroa_idx, align 8
  store ptr %i.e, ptr %i.bs, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4237.0..sroa_idx, align 8
  %i.cz = call noundef ptr @_RNvYINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @112, ptr noundef nonnull %i.d) ; 2 uses
  %.not241 = icmp eq ptr %i.cz, null
  br i1 %.not241, label %bb.bp, label %bb.bo

bb.w:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.sroa.4111.sroa.4.0.copyload, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4225.0..sroa_idx, align 8
  store ptr %i.m, ptr %i.ce, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4229.0..sroa_idx, align 8
  %i.da = call noundef ptr @_RNvYINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @109, ptr noundef nonnull %i.l) ; 2 uses
  %.not259 = icmp eq ptr %i.da, null
  br i1 %.not259, label %bb.bb, label %bb.ba

bb.x:                                             ; preds = %bb.q
  call void @_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.bv

bb.y:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.z

bb.z:                                             ; preds = %bb.bt, %bb.bm, %bb.bf, %bb.ay, %bb.ao, %bb.ad, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_14RawRngListIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2J_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bp)
  %i.db = load i64, ptr %i.am, align 8, !range !37, !noundef !7 ; 2 uses
  %i.dc = icmp eq i64 %i.db, -2
  br i1 %i.dc, label %._crit_edge, label %bb.h

bb.aa:                                            ; preds = %bb.r
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5149.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4138.0..sroa_idx, i64 7, i1 false)
  %.sroa.5139.0.copyload = load i64, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 0, ptr %0, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cv, ptr %.sroa.4148.0..sroa_idx, align 8
  %.sroa.6150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5139.0.copyload, ptr %.sroa.6150.0..sroa_idx, align 8
  br label %bb.ae

bb.ab:                                            ; preds = %bb.r
  %i.dd = load i64, ptr %i.cc, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.dd, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.af, ptr %i.ac, align 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4143.0..sroa_idx, align 8
  store ptr %i.ae, ptr %i.cd, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4154.0..sroa_idx, align 8
  %i.de = call noundef ptr @_RNvYINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @157, ptr noundef nonnull %i.ac) ; 2 uses
  %.not257 = icmp eq ptr %i.de, null
  br i1 %.not257, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.z

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bv

bb.af:                                            ; preds = %bb.s
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5166.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4159.0..sroa_idx, i64 7, i1 false)
  %.sroa.5160.0.copyload = load i64, ptr %i.bx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i64 0, ptr %0, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cw, ptr %.sroa.4165.0..sroa_idx, align 8
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5160.0.copyload, ptr %.sroa.6167.0..sroa_idx, align 8
  br label %bb.aq
end_hunk_0
begin_hunk_1_@_RINvCs4phXRVW1pDQ_9dwarfdump15dump_range_listINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBM_12endian_slice11EndianSliceNtNtBO_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_:bb.a
  %i.bd = trunc i32 %.sroa.095.0.copyload to i8   ; 4 uses
  br i1 %i.bc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4101.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.bw

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(132) %i.aq, i64 132, i1 false)
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 133
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.599.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %i.ar, ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0, i64 132, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 132
  store i8 %i.bb, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.be = icmp ult i32 %.sroa.095.0.copyload, 327680 ; 2 uses
  %spec.select = select i1 %i.be, ptr @153, ptr @152
  %spec.select516 = select i1 %i.be, i64 13, i64 15
  store ptr %spec.select, ptr %i.ap, align 8, !captures !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %spec.select516, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.ap, ptr %i.ao, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs4phXRVW1pDQ_9dwarfdump, ptr %.sroa.4105.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.as, ptr %i.bg, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.4109.0..sroa_idx, align 8
  %i.bh = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @154, ptr noundef nonnull %i.ao) ; 4 uses
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1712
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bj = and i64 %i.bi, 3
  switch i64 %i.bj, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit
    i64 3, label %bb.e
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit
    i64 1, label %bb.f
  ], !prof !11

default.unreachable:                              ; preds = %bb.p, %bb.k, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.bk = icmp ult ptr %i.bh, inttoptr (i64 188978561024 to ptr)
  %i.bl = and i64 %i.bi, 1095216660480
  %i.bm = icmp ne i64 %i.bl, 1095216660480
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.assume(i1 %i.bm)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit

bb.f:                                             ; preds = %bb.d
  %i.bn = getelementptr i8, ptr %i.bh, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !alias.scope !1713, !noalias !1712
  store i8 3, ptr %i.b, align 8, !alias.scope !1713, !noalias !1712
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bo), !noalias !1712
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit: ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1712
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.bw

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i32 0, ptr %i.an, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_14RawRngListIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2J_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bp)
  %i.bq = load i64, ptr %i.am, align 8, !range !37, !noundef !7 ; 2 uses
  %i.br = icmp eq i64 %i.bq, -2
  br i1 %i.br, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4111.sroa.4.0..sroa.4111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.4177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br label %bb.h

._crit_edge:                                      ; preds = %bb.z, %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load <2 x i64>, ptr %i.cf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i64 0, ptr %0, align 8
  store <2 x i64> %i.cg, ptr %.sroa.4113.0..sroa_idx, align 8
  br label %bb.bv

bb.h:                                             ; preds = %.lr.ph, %bb.z
  %i.ch = phi i64 [ %i.bq, %.lr.ph ], [ %i.db, %bb.z ] ; 4 uses
  %.sroa.4111.sroa.0.0.copyload = load i64, ptr %.sroa.4111.0..sroa_idx, align 8 ; 12 uses
  %.sroa.4111.sroa.4.0.copyload = load i64, ptr %.sroa.4111.sroa.4.0..sroa.4111.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.not239 = icmp eq i64 %i.ch, -1
  br i1 %.not239, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.an, ptr %i.al, align 8
  store ptr @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4117.0..sroa_idx, align 8
  %i.ci = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @155, ptr noundef nonnull %i.al) ; 4 uses
  %.not240 = icmp eq ptr %i.ci, null
  br i1 %.not240, label %bb.n, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.bw

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1714
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = and i64 %i.cj, 3
  switch i64 %i.ck, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit263
    i64 3, label %bb.l
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit263
    i64 1, label %bb.m
  ], !prof !11

bb.l:                                             ; preds = %bb.k
  %i.cl = icmp ult ptr %i.ci, inttoptr (i64 188978561024 to ptr)
  %i.cm = and i64 %i.cj, 1095216660480
  %i.cn = icmp ne i64 %i.cm, 1095216660480
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 %i.cn)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit263

bb.m:                                             ; preds = %bb.k
  %i.co = getelementptr i8, ptr %i.ci, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !1715, !noalias !1714
  store i8 3, ptr %i.a, align 8, !alias.scope !1715, !noalias !1714
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp), !noalias !1714
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit263

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit263: ; preds = %bb.k, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1714
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bv

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.cq = load i32, ptr %i.an, align 4, !noundef !7
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.an, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %.off = add nsw i64 %i.ch, -1
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit, label %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit.sink.split

_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit.sink.split: ; preds = %bb.n
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %.sink4.i.sroa.gep296, align 8, !alias.scope !1716
  br label %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit

_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.n, %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit.sink.split
  %.sink4.i.sroa.phi = phi ptr [ %.sink4.i.sroa.gep, %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit.sink.split ], [ %.sink4.i.sroa.gep296, %bb.n ]
  %.sink2.i = phi i64 [ %.sroa.4111.sroa.4.0.copyload, %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit.sink.split ], [ %.sroa.4111.sroa.0.0.copyload, %bb.n ]
  store i64 %.sink2.i, ptr %.sink4.i.sroa.phi, align 8, !alias.scope !1716
  store i64 %i.ch, ptr %i.aj, align 8, !alias.scope !1716
  call void @_RNvMsd_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE11convert_rawB2G_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.cs = load i64, ptr %i.ak, align 8, !range !20, !noundef !7 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4119.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4121.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bv

bb.p:                                             ; preds = %_RNvXsB_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_15RawRngListEntryjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4phXRVW1pDQ_9dwarfdump.exit
  store i64 %i.cs, ptr %i.ai, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  switch i64 %i.ch, label %default.unreachable [
    i64 0, label %bb.w
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.s
    i64 4, label %bb.t
    i64 5, label %bb.w
    i64 6, label %bb.u
    i64 7, label %bb.v
  ]

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ah, ptr %i.ag, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4133.0..sroa_idx, align 8
  %i.cu = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @156, ptr noundef nonnull %i.ag) ; 2 uses
  %.not258 = icmp eq ptr %i.cu, null
  br i1 %.not258, label %bb.y, label %bb.x

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read4addrINtB2_9DebugAddrINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE11get_addressB2w_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, i8 noundef %i.bd, i64 noundef %i.az, i64 noundef %.sroa.4111.sroa.0.0.copyload)
  %i.cv = load i8, ptr %i.ad, align 8, !range !15, !noundef !7 ; 2 uses
  %.not256 = icmp eq i8 %i.cv, -1
  br i1 %.not256, label %bb.ab, label %bb.aa

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %.sroa.4111.sroa.4.0.copyload, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read4addrINtB2_9DebugAddrINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE11get_addressB2w_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, i8 noundef %i.bd, i64 noundef %i.az, i64 noundef %.sroa.4111.sroa.0.0.copyload)
  %i.cw = load i8, ptr %i.y, align 8, !range !15, !noundef !7 ; 2 uses
  %.not251 = icmp eq i8 %i.cw, -1
  br i1 %.not251, label %bb.ag, label %bb.af

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.sroa.4111.sroa.4.0.copyload, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read4addrINtB2_9DebugAddrINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE11get_addressB2w_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, i8 noundef %i.bd, i64 noundef %i.az, i64 noundef %.sroa.4111.sroa.0.0.copyload)
  %i.cx = load i8, ptr %i.q, align 8, !range !15, !noundef !7 ; 2 uses
  %.not247 = icmp eq i8 %i.cx, -1
  br i1 %.not247, label %bb.as, label %bb.ar

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.4111.sroa.4.0.copyload, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4129.0..sroa_idx, align 8
  store ptr %i.i, ptr %i.bt, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4233.0..sroa_idx, align 8
  %i.cy = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @111, ptr noundef nonnull %i.h) ; 2 uses
  %.not244 = icmp eq ptr %i.cy, null
  br i1 %.not244, label %bb.bi, label %bb.bh

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.4111.sroa.4.0.copyload, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4125.0..sroa_idx, align 8
  store ptr %i.e, ptr %i.bs, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4237.0..sroa_idx, align 8
  %i.cz = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @112, ptr noundef nonnull %i.d) ; 2 uses
  %.not241 = icmp eq ptr %i.cz, null
  br i1 %.not241, label %bb.bp, label %bb.bo

bb.w:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.4111.sroa.0.0.copyload, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.sroa.4111.sroa.4.0.copyload, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4225.0..sroa_idx, align 8
  store ptr %i.m, ptr %i.ce, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4229.0..sroa_idx, align 8
  %i.da = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @109, ptr noundef nonnull %i.l) ; 2 uses
  %.not259 = icmp eq ptr %i.da, null
  br i1 %.not259, label %bb.bb, label %bb.ba

bb.x:                                             ; preds = %bb.q
  call void @_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.bv

bb.y:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.z

bb.z:                                             ; preds = %bb.bt, %bb.bm, %bb.bf, %bb.ay, %bb.ao, %bb.ad, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_14RawRngListIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2J_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bp)
  %i.db = load i64, ptr %i.am, align 8, !range !37, !noundef !7 ; 2 uses
  %i.dc = icmp eq i64 %i.db, -2
  br i1 %i.dc, label %._crit_edge, label %bb.h

bb.aa:                                            ; preds = %bb.r
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5149.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4138.0..sroa_idx, i64 7, i1 false)
  %.sroa.5139.0.copyload = load i64, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 0, ptr %0, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cv, ptr %.sroa.4148.0..sroa_idx, align 8
  %.sroa.6150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5139.0.copyload, ptr %.sroa.6150.0..sroa_idx, align 8
  br label %bb.ae

bb.ab:                                            ; preds = %bb.r
  %i.dd = load i64, ptr %i.cc, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.dd, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.af, ptr %i.ac, align 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4143.0..sroa_idx, align 8
  store ptr %i.ae, ptr %i.cd, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4154.0..sroa_idx, align 8
  %i.de = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @157, ptr noundef nonnull %i.ac) ; 2 uses
  %.not257 = icmp eq ptr %i.de, null
  br i1 %.not257, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.z

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bv

bb.af:                                            ; preds = %bb.s
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5166.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4159.0..sroa_idx, i64 7, i1 false)
  %.sroa.5160.0.copyload = load i64, ptr %i.bx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i64 0, ptr %0, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cw, ptr %.sroa.4165.0..sroa_idx, align 8
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5160.0.copyload, ptr %.sroa.6167.0..sroa_idx, align 8
  br label %bb.aq
end_hunk_1
begin_hunk_2_@_RINvCs4phXRVW1pDQ_9dwarfdump19dump_pub_set_headerINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_:bb.a
  %i.y = and i64 %i.x, 3
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit31
    i64 3, label %bb.i
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit31
    i64 1, label %bb.j
  ], !prof !11

bb.i:                                             ; preds = %bb.h
  %i.z = icmp ult ptr %i.v, inttoptr (i64 188978561024 to ptr)
  %i.aa = and i64 %i.x, 1095216660480
  %i.ab = icmp ne i64 %i.aa, 1095216660480
  call void @llvm.assume(i1 %i.z)
  call void @llvm.assume(i1 %i.ab)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit31

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %i.v, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !1838, !noalias !1837
  store i8 3, ptr %i.b, align 8, !alias.scope !1838, !noalias !1837
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad), !noalias !1837
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit31

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit31: ; preds = %bb.h, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1837
  store i64 2, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit33, %bb.k, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit31, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit
  ret void

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1839
  %i.ae = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.af = and i64 %i.ae, 3
  switch i64 %i.af, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit33
    i64 3, label %bb.n
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit33
    i64 1, label %bb.o
  ], !prof !11

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp ult ptr %i.w, inttoptr (i64 188978561024 to ptr)
  %i.ah = and i64 %i.ae, 1095216660480
  %i.ai = icmp ne i64 %i.ah, 1095216660480
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.assume(i1 %i.ai)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit33

bb.o:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %i.w, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !1840, !noalias !1839
  store i8 3, ptr %i.a, align 8, !alias.scope !1840, !noalias !1839
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak), !noalias !1839
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit33

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit33: ; preds = %bb.m, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1839
  store i64 2, ptr %0, align 8
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump20dump_names_by_bucketINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(936) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [2 x i8], align 2                 ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [48 x i8], align 8               ; 16 uses
  %.sroa.765 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.470 = alloca [24 x i8], align 8          ; 2 uses
  %i.ad = alloca [48 x i8], align 8               ; 10 uses
  %i.ae = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.054 = alloca [64 x i8], align 8          ; 7 uses
  %i.af = alloca [72 x i8], align 8               ; 8 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.650 = alloca [16 x i8], align 8          ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 15 uses
  %i.aj = alloca [8 x i8], align 8                ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.030.sroa.0 = alloca [32 x i8], align 8   ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [4 x i8], align 4                ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 12 uses
  %i.aq = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.04 = alloca [48 x i8], align 8           ; 4 uses
  %.sroa.4 = alloca [23 x i8], align 1            ; 2 uses
  %i.ar = alloca [72 x i8], align 8               ; 8 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [4 x i8], align 4                ; 6 uses
  %i.au = alloca [4 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i32 1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 484
  %i.aw = load i32, ptr %i.av, align 4, !noundef !7 ; 2 uses
  %.not564 = icmp eq i32 %i.aw, 0
  br i1 %.not564, label %._crit_edge563, label %.lr.ph562

.lr.ph562:                                        ; preds = %bb.a
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 49
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 49
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 536
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.0164.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.0164.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.4188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.5191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 65
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 65
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.4210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %bb.b

._crit_edge563:                                   ; preds = %bb.dz, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph562, %bb.dz
  %.sroa.0116.0560 = phi i32 [ 0, %.lr.ph562 ], [ %i.bh, %bb.dz ] ; 2 uses
  %i.bh = add nuw i32 %.sroa.0116.0560, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i32 %.sroa.0116.0560, ptr %i.at, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.at, ptr %i.as, align 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4121.0..sroa_idx, align 8
  %i.bi = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @255, ptr noundef nonnull %i.as) ; 4 uses
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.ea, %._crit_edge563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1909
  %i.bj = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bk = and i64 %i.bj, 3
  switch i64 %i.bk, label %default.unreachable1597 [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit
    i64 3, label %bb.e
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit
    i64 1, label %bb.f
  ], !prof !11

default.unreachable1597:                          ; preds = %bb.dw, %bb.dt, %bb.cr, %bb.cm, %bb.cf, %bb.bz, %bb.bt, %bb.bm, %bb.bd, %bb.ay, %bb.at, %bb.ao, %bb.ac, %bb.v, %bb.r, %bb.d
  unreachable

default.unreachable832:                           ; preds = %bb.bh
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.bl = icmp ult ptr %i.bi, inttoptr (i64 188978561024 to ptr)
  %i.bm = and i64 %i.bj, 1095216660480
  %i.bn = icmp ne i64 %i.bm, 1095216660480
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.assume(i1 %i.bn)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit

bb.f:                                             ; preds = %bb.d
  %i.bo = getelementptr i8, ptr %i.bi, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !alias.scope !1910, !noalias !1909
  store i8 3, ptr %i.p, align 8, !alias.scope !1910, !noalias !1909
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp), !noalias !1909
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit: ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1909
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.ea

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.bq = load i32, ptr %i.at, align 4, !noundef !7
  call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_14NameBucketIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE3newB2G_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2, i32 noundef %i.bq)
  %i.br = load i8, ptr %i.ax, align 8, !range !14, !noundef !7 ; 3 uses
  %i.bs = icmp eq i8 %i.br, -1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4126.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.ea

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5124.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.not230 = icmp eq i8 %i.br, 2
  br i1 %.not230, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04, i64 48, i1 false)
  store i8 %i.br, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_14NameBucketIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2G_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.aq)
  %i.bt = load i8, ptr %i.ap, align 8, !range !15, !noundef !7 ; 2 uses
  %.not232554 = icmp eq i8 %i.bt, -1
  br i1 %.not232554, label %.lr.ph556, label %._crit_edge557

bb.k:                                             ; preds = %bb.i
  %i.bu = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @266, ptr noundef nonnull inttoptr (i64 21 to ptr)) ; 4 uses
  %.not231 = icmp eq ptr %i.bu, null
  br i1 %.not231, label %bb.ds, label %bb.dt

._crit_edge557:                                   ; preds = %bb.j, %bb.dk
  %.lcssa394 = phi i8 [ %i.hr, %bb.dk ], [ %i.bt, %bb.j ]
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5147.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4136.0..sroa_idx, i64 3, i1 false)
  %.sroa.7139.0.copyload = load i32, ptr %.sroa.5129.0..sroa_idx, align 4
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bv = load <2 x i32>, ptr %i.ay, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i64 0, ptr %0, align 8
  store i8 %.lcssa394, ptr %.sroa.4146.0..sroa_idx, align 8
  store <2 x i32> %i.bv, ptr %.sroa.6148.0..sroa_idx, align 4
  %.sroa.8150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.7139.0.copyload, ptr %.sroa.8150.0..sroa_idx, align 4
  br label %bb.dr

.lr.ph556:                                        ; preds = %bb.j, %bb.dk
  %.sroa.0127.0.copyload = load i32, ptr %i.ay, align 4
  %.sroa.4128.0.copyload = load i32, ptr %.sroa.4128.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5129.0.copyload = load i32, ptr %.sroa.5129.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.bw = trunc i32 %.sroa.0127.0.copyload to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i32 %.sroa.5129.0.copyload, ptr %i.ao, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE18name_string_offsetB2A_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2, i32 noundef %.sroa.4128.0.copyload)
  %i.bx = load i8, ptr %i.an, align 8, !range !15, !noundef !7 ; 2 uses
  %.not234 = icmp eq i8 %i.bx, -1
  br i1 %.not234, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.lr.ph556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ds

bb.n:                                             ; preds = %bb.l
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5162.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4155.0..sroa_idx, i64 7, i1 false)
  %.sroa.5156.0.copyload = load i64, ptr %i.az, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  store i64 0, ptr %0, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bx, ptr %.sroa.4161.0..sroa_idx, align 8
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5156.0.copyload, ptr %.sroa.6163.0..sroa_idx, align 8
  br label %bb.dq

bb.o:                                             ; preds = %bb.l
  %i.by = load i64, ptr %i.az, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.030.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read3strINtB4_8DebugStrINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE7get_strB2w_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ba, i64 noundef %i.by)
  %i.bz = load i8, ptr %i.bb, align 8, !range !10, !noundef !7
  %i.ca = icmp eq i8 %i.bz, 2
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.030.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4172.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.030.sroa.0, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.030.sroa.0)
  br label %bb.dq

bb.q:                                             ; preds = %bb.o
  %.sroa.0164.sroa.4.0.copyload = load ptr, ptr %.sroa.0164.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0164.sroa.5.0.copyload = load i64, ptr %.sroa.0164.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.030.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.au, ptr %i.al, align 8
  store ptr @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4170.0..sroa_idx, align 8
  %i.cb = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @256, ptr noundef nonnull %i.al) ; 4 uses
  %.not235 = icmp eq ptr %i.cb, null
  br i1 %.not235, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1911
  %i.cc = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cd = and i64 %i.cc, 3
  switch i64 %i.cd, label %default.unreachable1597 [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit254
    i64 3, label %bb.s
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit254
    i64 1, label %bb.t
  ], !prof !11

bb.s:                                             ; preds = %bb.r
  %i.ce = icmp ult ptr %i.cb, inttoptr (i64 188978561024 to ptr)
  %i.cf = and i64 %i.cc, 1095216660480
  %i.cg = icmp ne i64 %i.cf, 1095216660480
  call void @llvm.assume(i1 %i.ce)
  call void @llvm.assume(i1 %i.cg)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit254

bb.t:                                             ; preds = %bb.r
  %i.ch = getelementptr i8, ptr %i.cb, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.ch, ptr %i.ci, align 8, !alias.scope !1912, !noalias !1911
  store i8 3, ptr %i.o, align 8, !alias.scope !1912, !noalias !1911
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ci), !noalias !1911
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit254

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit254: ; preds = %bb.r, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1911
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.dq

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.ao, ptr %i.ak, align 8
  store ptr @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt, ptr %.sroa.4176.0..sroa_idx, align 8
  %i.cj = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @257, ptr noundef nonnull %i.ak) ; 4 uses
  %.not236 = icmp eq ptr %i.cj, null
  br i1 %.not236, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1913
  %i.ck = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cl = and i64 %i.ck, 3
  switch i64 %i.cl, label %default.unreachable1597 [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit256
    i64 3, label %bb.w
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit256
    i64 1, label %bb.x
  ], !prof !11

bb.w:                                             ; preds = %bb.v
  %i.cm = icmp ult ptr %i.cj, inttoptr (i64 188978561024 to ptr)
  %i.cn = and i64 %i.ck, 1095216660480
  %i.co = icmp ne i64 %i.cn, 1095216660480
  call void @llvm.assume(i1 %i.cm)
  call void @llvm.assume(i1 %i.co)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit256

bb.x:                                             ; preds = %bb.v
  %i.cp = getelementptr i8, ptr %i.cj, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.cp, ptr %i.cq, align 8, !alias.scope !1914, !noalias !1913
  store i8 3, ptr %i.n, align 8, !alias.scope !1914, !noalias !1913
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cq), !noalias !1913
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit256

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit256: ; preds = %bb.v, %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1913
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.dq

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 %i.by, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.650)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0164.sroa.4.0.copyload) ]
  call void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0164.sroa.4.0.copyload, i64 noundef %.sroa.0164.sroa.5.0.copyload)
  %i.cr = load i64, ptr %i.ah, align 8, !range !9, !noundef !7 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.650, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4178.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br i1 %i.cs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4184.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.650, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs4phXRVW1pDQ_9dwarfdump.exit293

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.453.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.650, i64 16, i1 false)
  store i64 %i.cr, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.aj, ptr %i.ag, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4182.0..sroa_idx, align 8
  store ptr %i.ai, ptr %i.bc, align 8
  store ptr @_RNvXsb_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs4phXRVW1pDQ_9dwarfdump, ptr %.sroa.4188.0..sroa_idx, align 8
  %i.ct = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @258, ptr noundef nonnull %i.ag)
          to label %bb.ab unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %bb.ae
  %lpad.loopexit.split-lp1325 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #21
          to label %common.resume unwind label %bb.di

bb.ab:                                            ; preds = %bb.aa
  %.not237 = icmp eq ptr %i.ct, null
  br i1 %.not237, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1915
  %i.cu = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cv = and i64 %i.cu, 3
  switch i64 %i.cv, label %default.unreachable1597 [
    i64 2, label %bb.dm
    i64 3, label %bb.ad
    i64 0, label %bb.dm
    i64 1, label %bb.ae
  ], !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.cw = icmp ult ptr %i.ct, inttoptr (i64 188978561024 to ptr)
  %i.cx = and i64 %i.cu, 1095216660480
  %i.cy = icmp ne i64 %i.cx, 1095216660480
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.assume(i1 %i.cy)
  br label %bb.dm

bb.ae:                                            ; preds = %bb.ac
  %i.cz = getelementptr i8, ptr %i.ct, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.cz, ptr %i.da, align 8, !alias.scope !1916, !noalias !1915
  store i8 3, ptr %i.m, align 8, !alias.scope !1916, !noalias !1915
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %bb.dm unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.db = load i64, ptr %i.ai, align 8, !range !13, !alias.scope !1917, !noundef !7
  %i.dc = icmp eq i64 %i.db, -1
  br i1 %i.dc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs4phXRVW1pDQ_9dwarfdump.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.do, %bb.dc, %bb.cx, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.hu, %bb.do ], [ %i.dd, %bb.ah ], [ %i.hi, %bb.cx ], [ %i.hk, %bb.dc ], [ %lpad.loopexit.split-lp1325, %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1322, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i: ; preds = %bb.ag
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs4phXRVW1pDQ_9dwarfdump.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.af, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.650)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @_RNvMsd_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_13NameEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE3newB2F_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2, i32 noundef %.sroa.4128.0.copyload)
  %i.df = load i8, ptr %i.bd, align 8, !range !10, !noundef !7 ; 2 uses
  %i.dg = icmp eq i8 %i.df, 2
  br i1 %i.dg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs4phXRVW1pDQ_9dwarfdump.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.054, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4193.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.054, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.054)
  br label %bb.dl

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs4phXRVW1pDQ_9dwarfdump.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.054, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.562.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5191.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.054, i64 64, i1 false)
  store i8 %i.df, ptr %.sroa.461.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMsd_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_13NameEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2F_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.af)
  %i.dh = load i64, ptr %i.ad, align 8, !range !9, !noundef !7 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -2
  br i1 %i.di, label %._crit_edge552, label %.lr.ph551

._crit_edge552:                                   ; preds = %bb.ak, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB33_.exit290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.765, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4195.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4198.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.765, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.dl

.lr.ph551:                                        ; preds = %bb.ak, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB33_.exit290
  %i.dj = phi i64 [ %i.hm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB33_.exit290 ], [ %i.dh, %bb.ak ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.765, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4195.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.470, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5196.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.not238 = icmp eq i64 %i.dj, -1
  br i1 %.not238, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %i.dj, ptr %i.ac, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.369.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.765, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.470.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.470, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %.sroa.470.0..sroa_idx, ptr %i.ab, align 8
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.4202.0..sroa_idx, align 8
  %i.dk = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @259, ptr noundef nonnull %i.ab)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.am:                                            ; preds = %.lr.ph551
  %i.dl = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 13 to ptr)) ; 2 uses
  %.not239 = icmp eq ptr %i.dl, null
  br i1 %.not239, label %bb.dk, label %bb.dj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.bi, %bb.br, %.thread, %bb.bx, %.thread332.thread, %bb.ck, %._crit_edge, %bb.aw, %bb.ar, %bb.al, %bb.ct, %bb.co, %bb.ch, %bb.cb, %bb.bv, %bb.bo, %bb.bf, %bb.ba, %bb.av, %bb.aq, %bb.da
  %lpad.loopexit.split-lp1322 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB33_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ac) #21
          to label %common.resume unwind label %bb.di

bb.an:                                            ; preds = %bb.al
  %.not240 = icmp eq ptr %i.dk, null
  br i1 %.not240, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1918
  %i.dm = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dn = and i64 %i.dm, 3
  switch i64 %i.dn, label %default.unreachable1597 [
    i64 2, label %bb.dh
    i64 3, label %bb.ap
    i64 0, label %bb.dh
    i64 1, label %bb.aq
  ], !prof !11

bb.ap:                                            ; preds = %bb.ao
  %i.do = icmp ult ptr %i.dk, inttoptr (i64 188978561024 to ptr)
  %i.dp = and i64 %i.dm, 1095216660480
  %i.dq = icmp ne i64 %i.dp, 1095216660480
  call void @llvm.assume(i1 %i.do)
  call void @llvm.assume(i1 %i.dq)
  br label %bb.dh

bb.aq:                                            ; preds = %bb.ao
  %i.dr = getelementptr i8, ptr %i.dk, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.dr, ptr %i.ds, align 8, !alias.scope !1919, !noalias !1918
  store i8 3, ptr %i.l, align 8, !alias.scope !1919, !noalias !1918
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.be, ptr %i.aa, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4206.0..sroa_idx, align 8
  %i.dt = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @260, ptr noundef nonnull %i.aa)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.as:                                            ; preds = %bb.ar
  %.not241 = icmp eq ptr %i.dt, null
  br i1 %.not241, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1920
  %i.du = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dv = and i64 %i.du, 3
  switch i64 %i.dv, label %default.unreachable1597 [
    i64 2, label %bb.dg
    i64 3, label %bb.au
    i64 0, label %bb.dg
    i64 1, label %bb.av
  ], !prof !11

bb.au:                                            ; preds = %bb.at
  %i.dw = icmp ult ptr %i.dt, inttoptr (i64 188978561024 to ptr)
  %i.dx = and i64 %i.du, 1095216660480
  %i.dy = icmp ne i64 %i.dx, 1095216660480
  call void @llvm.assume(i1 %i.dw)
  call void @llvm.assume(i1 %i.dy)
  br label %bb.dg

bb.av:                                            ; preds = %bb.at
  %i.dz = getelementptr i8, ptr %i.dt, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dz) ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.dz, ptr %i.ea, align 8, !alias.scope !1921, !noalias !1920
  store i8 3, ptr %i.k, align 8, !alias.scope !1921, !noalias !1920
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.bf, ptr %i.z, align 8
  store ptr @_RNvXs10_NtCsi68uqYEhoRA_5gimli9constantsNtB6_5DwTagNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4210.0..sroa_idx, align 8
  %i.eb = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @261, ptr noundef nonnull %i.z)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ax:                                            ; preds = %bb.aw
  %.not242 = icmp eq ptr %i.eb, null
  br i1 %.not242, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1922
  %i.ec = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ed = and i64 %i.ec, 3
  switch i64 %i.ed, label %default.unreachable1597 [
    i64 2, label %bb.df
    i64 3, label %bb.az
    i64 0, label %bb.df
    i64 1, label %bb.ba
  ], !prof !11

bb.az:                                            ; preds = %bb.ay
  %i.ee = icmp ult ptr %i.eb, inttoptr (i64 188978561024 to ptr)
  %i.ef = and i64 %i.ec, 1095216660480
  %i.eg = icmp ne i64 %i.ef, 1095216660480
  call void @llvm.assume(i1 %i.ee)
  call void @llvm.assume(i1 %i.eg)
  br label %bb.df

bb.ba:                                            ; preds = %bb.ay
  %i.eh = getelementptr i8, ptr %i.eb, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.eh, ptr %i.ei, align 8, !alias.scope !1923, !noalias !1922
  store i8 3, ptr %i.j, align 8, !alias.scope !1923, !noalias !1922
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ej = load ptr, ptr %.sroa.369.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ek = load i64, ptr %i.bg, align 8, !noundef !7 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ek, 24
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx
  %i.em = icmp eq i64 %i.ek, 0
  br i1 %i.em, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb, %.backedge
  %.sroa.080.0549 = phi ptr [ %i.en, %.backedge ], [ %i.ej, %bb.bb ] ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.080.0549, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.080.0549, i64 16 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 8, !noundef !7
  store i16 %i.ep, ptr %i.y, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.y, ptr %i.x, align 8
  store ptr @_RNvXs4i_NtCsi68uqYEhoRA_5gimli9constantsNtB6_5DwIdxNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4214.0..sroa_idx, align 8
  %i.eq = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @262, ptr noundef nonnull %i.x)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

._crit_edge:                                      ; preds = %.backedge, %bb.bb
  %i.er = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @265, ptr noundef nonnull inttoptr (i64 17 to ptr))
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bc:                                            ; preds = %.lr.ph
  %.not243 = icmp eq ptr %i.eq, null
  br i1 %.not243, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1924
  %i.es = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.et = and i64 %i.es, 3
  switch i64 %i.et, label %default.unreachable1597 [
    i64 2, label %bb.cv
    i64 3, label %bb.be
    i64 0, label %bb.cv
    i64 1, label %bb.bf
  ], !prof !11

bb.be:                                            ; preds = %bb.bd
  %i.eu = icmp ult ptr %i.eq, inttoptr (i64 188978561024 to ptr)
  %i.ev = and i64 %i.es, 1095216660480
  %i.ew = icmp ne i64 %i.ev, 1095216660480
  call void @llvm.assume(i1 %i.eu)
  call void @llvm.assume(i1 %i.ew)
  br label %bb.cv

bb.bf:                                            ; preds = %bb.bd
  %i.ex = getelementptr i8, ptr %i.eq, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ex, ptr %i.ey, align 8, !alias.scope !1925, !noalias !1924
  store i8 3, ptr %i.i, align 8, !alias.scope !1925, !noalias !1924
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ey)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ez = load i16, ptr %i.eo, align 8, !noundef !7
  %i.fa = icmp eq i16 %i.ez, 4
  %i.fb = load i8, ptr %.sroa.080.0549, align 8   ; 2 uses
  br i1 %i.fa, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  switch i8 %i.fb, label %default.unreachable832 [
    i8 1, label %bb.bi
    i8 2, label %bb.bj
    i8 0, label %.thread
  ]

default.unreachable:                              ; preds = %bb.bk
  unreachable

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.080.0549, i64 8
  store ptr %i.fc, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.w, ptr %i.v, align 8
  store ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRjNtB6_8LowerHex3fmtCs4phXRVW1pDQ_9dwarfdump, ptr %.sroa.4218.0..sroa_idx, align 8
  %i.fd = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @263, ptr noundef nonnull %i.v)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bj:                                            ; preds = %bb.bh
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.080.0549, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !range !31, !noundef !7
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.br, label %.thread332.thread

bb.bk:                                            ; preds = %bb.bg
  switch i8 %i.fb, label %default.unreachable [
    i8 0, label %.thread
    i8 1, label %bb.bx
    i8 2, label %.thread332
  ]

bb.bl:                                            ; preds = %bb.bi
  %.not249 = icmp eq ptr %i.fd, null
  br i1 %.not249, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1926
  %i.fh = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.fi = and i64 %i.fh, 3
  switch i64 %i.fi, label %default.unreachable1597 [
    i64 2, label %bb.bq
    i64 3, label %bb.bn
    i64 0, label %bb.bq
    i64 1, label %bb.bo
  ], !prof !11

bb.bn:                                            ; preds = %bb.bm
  %i.fj = icmp ult ptr %i.fd, inttoptr (i64 188978561024 to ptr)
  %i.fk = and i64 %i.fh, 1095216660480
  %i.fl = icmp ne i64 %i.fk, 1095216660480
  call void @llvm.assume(i1 %i.fj)
  call void @llvm.assume(i1 %i.fl)
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.fm = getelementptr i8, ptr %i.fd, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fm) ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.fm, ptr %i.fn, align 8, !alias.scope !1927, !noalias !1926
  store i8 3, ptr %i.h, align 8, !alias.scope !1927, !noalias !1926
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.backedge

.backedge:                                        ; preds = %bb.cc, %bb.ci, %bb.cl, %bb.cq, %bb.bp, %bb.bs
  %i.fo = icmp eq ptr %i.en, %i.el
  br i1 %i.fo, label %._crit_edge, label %.lr.ph

bb.bq:                                            ; preds = %bb.bn, %bb.bm, %bb.bm, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1926
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.cw

bb.br:                                            ; preds = %bb.bj
  %i.fp = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @264, ptr noundef nonnull inttoptr (i64 43 to ptr))
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bs:                                            ; preds = %bb.br
  %.not248 = icmp eq ptr %i.fp, null
  br i1 %.not248, label %.backedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1928
  %i.fq = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fr = and i64 %i.fq, 3
  switch i64 %i.fr, label %default.unreachable1597 [
    i64 2, label %bb.bw
    i64 3, label %bb.bu
    i64 0, label %bb.bw
    i64 1, label %bb.bv
  ], !prof !11

bb.bu:                                            ; preds = %bb.bt
  %i.fs = icmp ult ptr %i.fp, inttoptr (i64 188978561024 to ptr)
  %i.ft = and i64 %i.fq, 1095216660480
  %i.fu = icmp ne i64 %i.ft, 1095216660480
  call void @llvm.assume(i1 %i.fs)
  call void @llvm.assume(i1 %i.fu)
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.fv = getelementptr i8, ptr %i.fp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fv) ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.fv, ptr %i.fw, align 8, !alias.scope !1929, !noalias !1928
  store i8 3, ptr %i.g, align 8, !alias.scope !1929, !noalias !1928
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fw)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.bt, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1928
  store i64 2, ptr %0, align 8
  br label %bb.cw

.thread:                                          ; preds = %bb.bh, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.080.0549, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !7
  store i64 %i.fy, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.u, ptr %i.t, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4226.0..sroa_idx, align 8
  %i.fz = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @123, ptr noundef nonnull %i.t)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bx:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.080.0549, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !noundef !7
  store i64 %i.gb, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.4222.0..sroa_idx, align 8
  %i.gc = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @123, ptr noundef nonnull %i.r)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.thread332:                                       ; preds = %bb.bk
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.080.0549, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !31
  %i.gd = trunc nuw i8 %.pre to i1
  br i1 %i.gd, label %bb.ck, label %.thread332.thread

bb.by:                                            ; preds = %.thread
  %.not247 = icmp eq ptr %i.fz, null
  br i1 %.not247, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1930
  %i.ge = ptrtoint ptr %i.fz to i64               ; 2 uses
  %i.gf = and i64 %i.ge, 3
  switch i64 %i.gf, label %default.unreachable1597 [
    i64 2, label %bb.cd
    i64 3, label %bb.ca
    i64 0, label %bb.cd
    i64 1, label %bb.cb
  ], !prof !11

bb.ca:                                            ; preds = %bb.bz
  %i.gg = icmp ult ptr %i.fz, inttoptr (i64 188978561024 to ptr)
  %i.gh = and i64 %i.ge, 1095216660480
  %i.gi = icmp ne i64 %i.gh, 1095216660480
  call void @llvm.assume(i1 %i.gg)
  call void @llvm.assume(i1 %i.gi)
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %i.gj = getelementptr i8, ptr %i.fz, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gj) ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.gj, ptr %i.gk, align 8, !alias.scope !1931, !noalias !1930
  store i8 3, ptr %i.f, align 8, !alias.scope !1931, !noalias !1930
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gk)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.backedge

bb.cd:                                            ; preds = %bb.ca, %bb.bz, %bb.bz, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1930
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.cw

bb.ce:                                            ; preds = %bb.bx
  %.not246 = icmp eq ptr %i.gc, null
  br i1 %.not246, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1932
  %i.gl = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.gm = and i64 %i.gl, 3
  switch i64 %i.gm, label %default.unreachable1597 [
    i64 2, label %bb.cj
    i64 3, label %bb.cg
    i64 0, label %bb.cj
    i64 1, label %bb.ch
  ], !prof !11

bb.cg:                                            ; preds = %bb.cf
  %i.gn = icmp ult ptr %i.gc, inttoptr (i64 188978561024 to ptr)
  %i.go = and i64 %i.gl, 1095216660480
  %i.gp = icmp ne i64 %i.go, 1095216660480
  call void @llvm.assume(i1 %i.gn)
  call void @llvm.assume(i1 %i.gp)
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cf
  %i.gq = getelementptr i8, ptr %i.gc, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gq) ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.gq, ptr %i.gr, align 8, !alias.scope !1933, !noalias !1932
  store i8 3, ptr %i.e, align 8, !alias.scope !1933, !noalias !1932
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gr)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.backedge

bb.cj:                                            ; preds = %bb.cg, %bb.cf, %bb.cf, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1932
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.cw

.thread332.thread:                                ; preds = %bb.bj, %.thread332
  %i.gs = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @127, ptr noundef nonnull inttoptr (i64 7 to ptr))
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ck:                                            ; preds = %.thread332
  %i.gt = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @128, ptr noundef nonnull inttoptr (i64 9 to ptr))
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.cl:                                            ; preds = %.thread332.thread
  %.not244 = icmp eq ptr %i.gs, null
  br i1 %.not244, label %.backedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1934
  %i.gu = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.gv = and i64 %i.gu, 3
  switch i64 %i.gv, label %default.unreachable1597 [
    i64 2, label %bb.cp
    i64 3, label %bb.cn
    i64 0, label %bb.cp
    i64 1, label %bb.co
  ], !prof !11

bb.cn:                                            ; preds = %bb.cm
  %i.gw = icmp ult ptr %i.gs, inttoptr (i64 188978561024 to ptr)
  %i.gx = and i64 %i.gu, 1095216660480
  %i.gy = icmp ne i64 %i.gx, 1095216660480
  call void @llvm.assume(i1 %i.gw)
  call void @llvm.assume(i1 %i.gy)
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.gz = getelementptr i8, ptr %i.gs, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gz) ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.gz, ptr %i.ha, align 8, !alias.scope !1935, !noalias !1934
  store i8 3, ptr %i.d, align 8, !alias.scope !1935, !noalias !1934
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ha)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %bb.cn, %bb.cm, %bb.cm, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1934
  store i64 2, ptr %0, align 8
  br label %bb.cw

bb.cq:                                            ; preds = %bb.ck
  %.not245 = icmp eq ptr %i.gt, null
  br i1 %.not245, label %.backedge, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1936
  %i.hb = ptrtoint ptr %i.gt to i64               ; 2 uses
  %i.hc = and i64 %i.hb, 3
  switch i64 %i.hc, label %default.unreachable1597 [
    i64 2, label %bb.cu
    i64 3, label %bb.cs
    i64 0, label %bb.cu
    i64 1, label %bb.ct
  ], !prof !11

bb.cs:                                            ; preds = %bb.cr
  %i.hd = icmp ult ptr %i.gt, inttoptr (i64 188978561024 to ptr)
  %i.he = and i64 %i.hb, 1095216660480
  %i.hf = icmp ne i64 %i.he, 1095216660480
  call void @llvm.assume(i1 %i.hd)
  call void @llvm.assume(i1 %i.hf)
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %i.hg = getelementptr i8, ptr %i.gt, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hg) ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.hg, ptr %i.hh, align 8, !alias.scope !1937, !noalias !1936
  store i8 3, ptr %i.c, align 8, !alias.scope !1937, !noalias !1936
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hh)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %bb.cs, %bb.cr, %bb.cr, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1936
  store i64 2, ptr %0, align 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.be, %bb.bd, %bb.bd, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1924
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cd, %bb.cj, %bb.cp, %bb.cu, %bb.cv, %bb.bw, %bb.bq, %bb.dh, %bb.dg, %bb.df, %bb.de
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBK_8relocate14RelocateReaderINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB33_.exit unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %common.resume unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB33_.exit: ; preds = %bb.cw
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.dl

bb.cz:                                            ; preds = %._crit_edge
  %.not250 = icmp eq ptr %i.er, null
  br i1 %.not250, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull %i.er)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.cz
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBK_8relocate14RelocateReaderINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB33_.exit290 unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %common.resume unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB33_.exit290: ; preds = %bb.db
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMsd_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_13NameEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2F_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.af)
  %i.hm = load i64, ptr %i.ad, align 8, !range !9, !noundef !7 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, -2
  br i1 %i.hn, label %._crit_edge552, label %.lr.ph551

bb.de:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cw

bb.df:                                            ; preds = %bb.az, %bb.ay, %bb.ay, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1922
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cw

bb.dg:                                            ; preds = %bb.au, %bb.at, %bb.at, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1920
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.cw

bb.dh:                                            ; preds = %bb.ap, %bb.ao, %bb.ao, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1918
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.cw

bb.di:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.dj:                                            ; preds = %bb.am
  call void @_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.dl)
  br label %bb.dl

bb.dk:                                            ; preds = %bb.am
  %i.hp = load i32, ptr %i.au, align 4, !noundef !7
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.au, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_14NameBucketIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2G_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.aq)
  %i.hr = load i8, ptr %i.ap, align 8, !range !15, !noundef !7 ; 2 uses
  %.not232 = icmp eq i8 %i.hr, -1
  br i1 %.not232, label %.lr.ph556, label %._crit_edge557

bb.dl:                                            ; preds = %._crit_edge552, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB33_.exit, %bb.dj, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.dq

bb.dm:                                            ; preds = %bb.ad, %bb.ac, %bb.ac, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1915
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.hs = load i64, ptr %i.ai, align 8, !range !13, !alias.scope !1938, !noundef !7
  %i.ht = icmp eq i64 %i.hs, -1
  br i1 %i.ht, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs4phXRVW1pDQ_9dwarfdump.exit293, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i292 unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i292: ; preds = %bb.dn
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs4phXRVW1pDQ_9dwarfdump.exit293

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs4phXRVW1pDQ_9dwarfdump.exit293: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i292, %bb.dm, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.650)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.dq

bb.dq:                                            ; preds = %bb.p, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit254, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs4phXRVW1pDQ_9dwarfdump.exit293, %bb.dl, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %._crit_edge557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ea

bb.ds:                                            ; preds = %bb.k, %bb.m
  %i.hw = call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @29, ptr noundef nonnull inttoptr (i64 9 to ptr)) ; 4 uses
  %.not233 = icmp eq ptr %i.hw, null
  br i1 %.not233, label %bb.dz, label %bb.dw

bb.dt:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1939
  %i.hx = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.hy = and i64 %i.hx, 3
  switch i64 %i.hy, label %default.unreachable1597 [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit295
    i64 3, label %bb.du
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit295
    i64 1, label %bb.dv
  ], !prof !11

bb.du:                                            ; preds = %bb.dt
  %i.hz = icmp ult ptr %i.bu, inttoptr (i64 188978561024 to ptr)
  %i.ia = and i64 %i.hx, 1095216660480
  %i.ib = icmp ne i64 %i.ia, 1095216660480
  call void @llvm.assume(i1 %i.hz)
  call void @llvm.assume(i1 %i.ib)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit295

bb.dv:                                            ; preds = %bb.dt
  %i.ic = getelementptr i8, ptr %i.bu, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ic) ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ic, ptr %i.id, align 8, !alias.scope !1940, !noalias !1939
  store i8 3, ptr %i.b, align 8, !alias.scope !1940, !noalias !1939
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.id), !noalias !1939
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit295

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit295: ; preds = %bb.dt, %bb.dt, %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1939
  store i64 2, ptr %0, align 8
  br label %bb.ea

bb.dw:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1941
  %i.ie = ptrtoint ptr %i.hw to i64               ; 2 uses
  %i.if = and i64 %i.ie, 3
  switch i64 %i.if, label %default.unreachable1597 [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit297
    i64 3, label %bb.dx
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit297
    i64 1, label %bb.dy
  ], !prof !11

bb.dx:                                            ; preds = %bb.dw
  %i.ig = icmp ult ptr %i.hw, inttoptr (i64 188978561024 to ptr)
  %i.ih = and i64 %i.ie, 1095216660480
  %i.ii = icmp ne i64 %i.ih, 1095216660480
  call void @llvm.assume(i1 %i.ig)
  call void @llvm.assume(i1 %i.ii)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit297

bb.dy:                                            ; preds = %bb.dw
  %i.ij = getelementptr i8, ptr %i.hw, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ij) ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ij, ptr %i.ik, align 8, !alias.scope !1942, !noalias !1941
  store i8 3, ptr %i.a, align 8, !alias.scope !1942, !noalias !1941
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ik), !noalias !1941
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit297

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit297: ; preds = %bb.dw, %bb.dw, %bb.dx, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1941
  store i64 2, ptr %0, align 8
  br label %bb.ea

bb.dz:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %exitcond.not = icmp eq i32 %i.bh, %i.aw
  br i1 %exitcond.not, label %._crit_edge563, label %bb.b

bb.ea:                                            ; preds = %bb.h, %bb.dr, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit295, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit297, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump21dump_cfi_instructionsINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBS_12endian_slice11EndianSliceNtNtBU_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %2, i1 noundef zeroext %3, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [2 x i8], align 2                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [2 x i8], align 2                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [2 x i8], align 2                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [2 x i8], align 2                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [2 x i8], align 2                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [2 x i8], align 2                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [2 x i8], align 2                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [2 x i8], align 2                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [2 x i8], align 2                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [2 x i8], align 2                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [2 x i8], align 2                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [2 x i8], align 2                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [2 x i8], align 2                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 14 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 14 uses
  %i.ay = alloca [16 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 14 uses
  %i.ba = alloca [32 x i8], align 8               ; 8 uses
  %i.bb = alloca [24 x i8], align 8               ; 14 uses
  %i.bc = alloca [24 x i8], align 8               ; 14 uses
  %i.bd = alloca [32 x i8], align 8               ; 8 uses
  %i.be = alloca [24 x i8], align 8               ; 14 uses
  %i.bf = alloca [8 x i8], align 8                ; 5 uses
  %i.bg = alloca [32 x i8], align 8               ; 8 uses
  %i.bh = alloca [24 x i8], align 8               ; 14 uses
  %i.bi = alloca [8 x i8], align 8                ; 5 uses
  %i.bj = alloca [32 x i8], align 8               ; 8 uses
  %i.bk = alloca [24 x i8], align 8               ; 14 uses
  %i.bl = alloca [8 x i8], align 8                ; 5 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [24 x i8], align 8               ; 14 uses
  %i.bo = alloca [8 x i8], align 8                ; 5 uses
  %i.bp = alloca [16 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 14 uses
  %i.br = alloca [16 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 14 uses
  %i.bt = alloca [16 x i8], align 8               ; 6 uses
  %i.bu = alloca [8 x i8], align 8                ; 5 uses
  %i.bv = alloca [16 x i8], align 8               ; 6 uses
  %i.bw = alloca [8 x i8], align 8                ; 5 uses
  %i.bx = alloca [16 x i8], align 8               ; 6 uses
  %i.by = alloca [24 x i8], align 8               ; 14 uses
  %i.bz = alloca [32 x i8], align 8               ; 8 uses
  %i.ca = alloca [24 x i8], align 8               ; 14 uses
  %i.cb = alloca [8 x i8], align 8                ; 5 uses
  %i.cc = alloca [32 x i8], align 8               ; 8 uses
  %i.cd = alloca [24 x i8], align 8               ; 14 uses
  %i.ce = alloca [8 x i8], align 8                ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 6 uses
  %i.cg = alloca [4 x i8], align 4                ; 5 uses
  %i.ch = alloca [16 x i8], align 8               ; 6 uses
  %i.ci = alloca [8 x i8], align 8                ; 5 uses
  %i.cj = alloca [16 x i8], align 8               ; 6 uses
  %i.ck = alloca [16 x i8], align 8               ; 4 uses
  %i.cl = alloca [24 x i8], align 8               ; 8 uses
  br i1 %3, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cm = tail call noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @267, ptr noundef nonnull inttoptr (i64 33 to ptr)) ; 4 uses
  %.not = icmp eq ptr %i.cm, null
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a, %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.45.0..sroa_idx.i288 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.45.0..sroa_idx.i284 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.45.0..sroa_idx.i280 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.45.0..sroa_idx.i271 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.45.0..sroa_idx.i275 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.45.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.45.0..sroa_idx.i263 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.45.0..sroa_idx.i259 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.45.0..sroa_idx.i255 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.45.0..sroa_idx.i251 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.45.0..sroa_idx.i247 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.by, i64 16
end_hunk_2
