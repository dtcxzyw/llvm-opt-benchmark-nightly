Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/gimli-3e7b4f451eed5746.gimli.d2cf5f70e100ae54-cgu.08?download=true
inline.NumInlined: 198
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuB26_E0NCINvB1p_8get_hashB26_uE0E0B2c_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 65
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !275, !noalias !276, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 65
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !277, !noalias !278, !noundef !5
  %i.s = icmp eq i8 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 66
  %i.u = load i8, ptr %i.t, align 2, !alias.scope !275, !noalias !276, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 66
  %i.w = load i8, ptr %i.v, align 2, !alias.scope !277, !noalias !278, !noundef !5
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.z = load i8, ptr %i.y, align 8, !range !12, !alias.scope !275, !noalias !276, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ab = load i8, ptr %i.aa, align 8, !range !12, !alias.scope !277, !noalias !278, !noundef !5
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ae = load i8, ptr %i.ad, align 8, !alias.scope !275, !noalias !276, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ag = load i8, ptr %i.af, align 8, !alias.scope !277, !noalias !278, !noundef !5
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 58
  %i.aj = load i16, ptr %i.ai, align 2, !alias.scope !275, !noalias !276, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 58
  %i.al = load i16, ptr %i.ak, align 2, !alias.scope !277, !noalias !278, !noundef !5
  %i.am = icmp eq i16 %i.aj, %i.al
  br i1 %i.am, label %bb.g, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  %i.ao = load i8, ptr %i.an, align 1, !range !279, !alias.scope !275, !noalias !276, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !279, !alias.scope !277, !noalias !278, !noundef !5
  %i.ar = icmp eq i8 %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 62
  %i.at = load i16, ptr %i.as, align 2, !alias.scope !275, !noalias !276, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 62
  %i.av = load i16, ptr %i.au, align 2, !alias.scope !277, !noalias !278, !noundef !5
  %i.aw = icmp eq i16 %i.at, %i.av
  br i1 %i.aw, label %bb.i, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !280, !alias.scope !275, !noalias !276, !noundef !5 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ay, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !280, !alias.scope !277, !noalias !278, !noundef !5 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 2                    ; 2 uses
  br i1 %.not.i.i.i, label %.split6.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.bb, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit, label %bb.l

.split6.i.i.i:                                    ; preds = %bb.i
  br i1 %i.bb, label %bb.o, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.k:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !275, !noalias !276, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !277, !noalias !278, !noundef !5
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.o, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.l:                                             ; preds = %bb.j
  %i.bh = load i8, ptr %i.l, align 8, !alias.scope !275, !noalias !276, !noundef !5
  %i.bi = load i8, ptr %i.n, align 8, !alias.scope !277, !noalias !278, !noundef !5
  %i.bj = icmp eq i8 %i.bh, %i.bi
  %i.bk = icmp eq i64 %i.ay, %i.ba
  %or.cond.i.i.i = and i1 %i.bk, %i.bj
  br i1 %or.cond.i.i.i, label %bb.m, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.m:                                             ; preds = %bb.l
  %i.bl = trunc nuw i64 %i.ay to i1
  br i1 %i.bl, label %bb.n, label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !275, !noalias !276, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !277, !noalias !278, !noundef !5
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %.split.i.i.i, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

.split.i.i.i:                                     ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !275, !noalias !276, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !277, !noalias !278, !noundef !5
  %i.bv = icmp eq i64 %i.bs, %i.bu
  br i1 %i.bv, label %bb.o, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.o:                                             ; preds = %.split.i.i.i, %bb.k, %.split6.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.bx = load i8, ptr %i.bw, align 4, !range !12, !alias.scope !275, !noalias !276, !noundef !5
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 61
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.cb = load i8, ptr %i.ca, align 4, !range !12, !alias.scope !277, !noalias !278, !noundef !5
  %i.cc = trunc nuw i8 %i.cb to i1                ; 2 uses
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.cc, label %.split7.i.i.i, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.q:                                             ; preds = %bb.o
  br i1 %i.cc, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit, label %bb.r

.split7.i.i.i:                                    ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 61
  %i.ce = load i8, ptr %i.bz, align 1, !alias.scope !275, !noalias !276, !noundef !5
  %i.cf = load i8, ptr %i.cd, align 1, !alias.scope !277, !noalias !278, !noundef !5
  %i.cg = icmp eq i8 %i.ce, %i.cf
  br i1 %i.cg, label %bb.r, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.r:                                             ; preds = %.split7.i.i.i, %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 67
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !275, !noalias !276, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 67
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !277, !noalias !278, !noundef !5
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %bb.s, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !275, !noalias !276, !noundef !5 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !277, !noalias !278, !noundef !5
  %i.cq = icmp eq i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.t, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !277, !noalias !278, !nonnull !5, !noundef !5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !275, !noalias !276, !nonnull !5, !noundef !5
  %i.cv = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsi68uqYEhoRA_5gimli5write3cfi20CallFrameInstructionINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cs, i64 noundef %i.cn), !noalias !281
  br label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit

bb.u:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !270
  unreachable

_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuBL_E0BR_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %.split6.i.i.i, %bb.k, %bb.l, %bb.n, %.split.i.i.i, %bb.p, %bb.q, %.split7.i.i.i, %bb.r, %bb.s, %bb.t
  %.sroa.0.0.i.i.i = phi i1 [ %i.cv, %bb.t ], [ false, %bb.h ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.k ], [ false, %bb.s ], [ false, %.split.i.i.i ], [ false, %.split6.i.i.i ], [ false, %.split7.i.i.i ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuB26_E0NCINvB1p_8get_hashB26_uE0E0B2c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !8, !noundef !5
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.val = load i64, ptr %i.g, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !290, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %.val, %i.i
  br i1 %i.j, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !290, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !290, !nonnull !5, !align !8, !noundef !5
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.val ; 2 uses
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %.val.i = load ptr, ptr %i.o, align 8, !noalias !290 ; 2 uses
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !noalias !290, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val3.i = load ptr, ptr %i.q, align 8, !noalias !290 ; 2 uses
  %i.r = getelementptr i8, ptr %i.n, i64 16
  %.val4.i = load i64, ptr %i.r, align 8, !noalias !290, !noundef !5
  %i.s = icmp eq i64 %.val2.i, %.val4.i
  br i1 %i.s, label %bb.c, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.t = icmp eq i64 %.val2.i, 0
  br i1 %i.t, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit, label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %_RNvYNtNtNtCsi68uqYEhoRA_5gimli5write3loc8LocationNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neB8_.exit.i.i.i.i.i, %.split60.i.i.i.i.i, %.split62.i.i.i.i.i, %.split61.i.i.i.i.i, %.split.i.i.i.i.i, %.split63.i.i.i.i.i
  %i.u = add nuw i64 %.sroa.01.07.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.u, %.val2.i
  br i1 %exitcond.not.i.i.i.i.i, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.01.07.i.i.i.i.i = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.01.07.i.i.i.i.i ; 27 uses
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %.val3.i, i64 %.sroa.01.07.i.i.i.i.i ; 27 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.x = load i64, ptr %i.v, align 8, !range !16, !alias.scope !295, !noalias !296, !noundef !5 ; 5 uses
  %i.y = icmp ne i64 %i.x, 4
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nsw i64 %i.x, -2
  %.inv.i.i.i.i.i.i.i = icmp samesign ult i64 %i.x, 2
  %i.aa = select i1 %.inv.i.i.i.i.i.i.i, i64 2, i64 %i.z ; 2 uses
  %i.ab = load i64, ptr %i.w, align 8, !range !16, !alias.scope !297, !noalias !298, !noundef !5 ; 4 uses
  %i.ac = icmp ne i64 %i.ab, 4
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nsw i64 %i.ab, -2
  %.inv17.i.i.i.i.i.i.i = icmp samesign ult i64 %i.ab, 2
  %i.ae = select i1 %.inv17.i.i.i.i.i.i.i, i64 2, i64 %i.ad
  %i.af = icmp eq i64 %i.aa, %i.ae
  br i1 %i.af, label %bb.e, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  switch i64 %i.aa, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !14, !alias.scope !295, !noalias !296, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !14, !alias.scope !297, !noalias !298, !noundef !5
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.l, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.h:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.n, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.i:                                             ; preds = %bb.e
  %i.aq = icmp eq i64 %i.x, %i.ab
  br i1 %i.aq, label %bb.p, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.j:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.x, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.k:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !295, !noalias !296, !noundef !5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.ba = icmp eq i64 %i.ax, %i.az
  br i1 %i.ba, label %_RNvYNtNtNtCsi68uqYEhoRA_5gimli5write3loc8LocationNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neB8_.exit.i.i.i.i.i, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.l:                                             ; preds = %bb.g
  %i.bb = trunc nuw i64 %i.ah to i1
  br i1 %i.bb, label %bb.m, label %.split63.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %.split.i.i.i.i.i, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

.split63.i.i.i.i.i:                               ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.d, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

.split.i.i.i.i.i:                                 ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.d, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.n:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.bv = icmp eq i64 %i.bs, %i.bu
  br i1 %i.bv, label %bb.o, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !295, !noalias !296, !noundef !5 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.ca = icmp eq i64 %i.bx, %i.bz
  br i1 %i.ca, label %.split61.i.i.i.i.i, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

.split61.i.i.i.i.i:                               ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !297, !noalias !298, !nonnull !5, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !295, !noalias !296, !nonnull !5, !noundef !5
  %i.cf = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cc, i64 noundef %i.bx), !noalias !299
  br i1 %i.cf, label %bb.d, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.p:                                             ; preds = %bb.i
  %i.cg = trunc nuw i64 %i.x to i1
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.cl = icmp eq i64 %i.ci, %i.ck
  br i1 %i.cl, label %.split.i.i.i.i.i.i.i, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.r:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.co = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.cq = icmp eq i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.s, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

.split.i.i.i.i.i.i.i:                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.cv = icmp eq i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.s, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.s:                                             ; preds = %.split.i.i.i.i.i.i.i, %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !range !14, !alias.scope !295, !noalias !296, !noundef !5 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !range !14, !alias.scope !297, !noalias !298, !noundef !5
  %i.da = icmp eq i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.t, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.t:                                             ; preds = %bb.s
  %i.db = trunc nuw i64 %i.cx to i1
  br i1 %i.db, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.dg = icmp eq i64 %i.dd, %i.df
  br i1 %i.dg, label %.split18.i.i.i.i.i.i.i, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.v:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.dl = icmp eq i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.w, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

.split18.i.i.i.i.i.i.i:                           ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !295, !noalias !296, !noundef !5
  %i.do = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !297, !noalias !298, !noundef !5
  %i.dq = icmp eq i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.w, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuBL_E0BR_.exit

bb.w:                                             ; preds = %.split18.i.i.i.i.i.i.i, %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !295, !noalias !296, !noundef !5 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !297, !noalias !298, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4unit11UnitEntryIdE8grow_oneBS_:bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !396, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !396
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !396
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4unit25DebuggingInformationEntryE8grow_oneBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !399
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !399
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 80), !noalias !399
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !399, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !15, !noalias !399, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !399
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !399, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !399
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !399
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !399
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4unit9AttributeE8grow_oneBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !402
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !402
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 16, i64 noundef 48), !noalias !402
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !402, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !15, !noalias !402, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !402
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !402, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !402
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !402
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !402
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev22AttributeSpecificationE8grow_oneBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !405
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !405
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !405
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !405, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !15, !noalias !405, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !405
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !405, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !405
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !405
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !405
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsi68uqYEhoRA_5gimli5write3cfi5CieIdNtBP_21FrameDescriptionEntryEE8grow_oneBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !408
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !408
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 88), !noalias !408
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !408, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !15, !noalias !408, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !408
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !408, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !408
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !408
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !408
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmNtNtNtCsi68uqYEhoRA_5gimli5write3cfi20CallFrameInstructionEE8grow_oneBU_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !411
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !411
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !411
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !411, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !15, !noalias !411, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !411
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !411, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !411
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !411
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !411
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsi68uqYEhoRA_5gimli(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !18
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #25
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #25
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsi68uqYEhoRA_5gimli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !18
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #25
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEE13new_uninit_inB1B_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1432) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1432, i64 noundef range(i64 1, -9223372036854775807) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1432) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEE13new_uninit_inB1w_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1336) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1336, i64 noundef range(i64 1, -9223372036854775807) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1336) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_RNvMsb_NtCsiHO4aZxHxup_9hashbrown5tableINtB5_13OccupiedEntryjE12bucket_indexCsi68uqYEhoRA_5gimli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !8, !noundef !5
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  ret i64 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMsh_NtNtCsi68uqYEhoRA_5gimli4read5namesNtB5_17NameAbbreviations3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMsh_BS_NtBS_17NameAbbreviations3get0EBW_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMsh_BS_NtBS_17NameAbbreviations3get0EBW_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noalias !415, !noundef !5
  %i.l = icmp eq i64 %i.k, %1
  br i1 %i.l, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMsh_BS_NtBS_17NameAbbreviations3get0EBW_.exit, label %bb.b

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMsh_BS_NtBS_17NameAbbreviations3get0EBW_.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.i, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCsbbt5GHOb4oK_8indexmap6BucketINtNtB7_3vec3VechEuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi68uqYEhoRA_5gimli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !13, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsi68uqYEhoRA_5gimli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsi68uqYEhoRA_5gimli.exit

end_hunk_1
