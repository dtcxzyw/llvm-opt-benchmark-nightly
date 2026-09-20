Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/usernames-38fc0eb963246ca5.usernames.897995bc461e8f6b-cgu.2?download=true
inline.NumInlined: 161
inline.NumDeleted: 95
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 21
  %i.an = add nuw nsw i32 %i.ah, %i.am            ; 3 uses
  %i.ao = icmp sgt i8 %i.ak, -1
  br i1 %i.ao, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25, !noalias !64
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ap = icmp samesign ult i32 %i.an, 268435456
  br i1 %i.ap, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.aq = zext nneg i32 %i.an to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.p:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.an, -268435456
  %i.as = zext nneg i32 %i.ar to i64              ; 5 uses
  %i.at = icmp samesign ugt i64 %.val1.i, 4
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 3 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.ah, label %bb.r

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #25, !noalias !64
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ax = zext i8 %i.av to i32
  %i.ay = add nsw i32 %i.ax, -128
  %i.az = icmp samesign ugt i64 %.val1.i, 5
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 7
  %i.be = or disjoint i32 %i.bd, %i.ay            ; 3 uses
  %i.bf = icmp sgt i8 %i.bb, -1
  br i1 %i.bf, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = icmp samesign ult i32 %i.be, 16384
  br i1 %i.bg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = add nsw i32 %i.be, -16384
  %i.bi = icmp samesign ugt i64 %.val1.i, 6
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i, i64 6
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 14
  %i.bn = or disjoint i32 %i.bm, %i.bh            ; 3 uses
  %i.bo = icmp sgt i8 %i.bk, -1
  br i1 %i.bo, label %bb.af, label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !noalias !64
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bp = icmp samesign ult i32 %i.bn, 2097152
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = add nsw i32 %i.bn, -2097152
  %i.br = icmp samesign ugt i64 %.val1.i, 7
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i, i64 7
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 21
  %i.bw = add nuw nsw i32 %i.bq, %i.bv            ; 3 uses
  %i.bx = icmp sgt i8 %i.bt, -1
  br i1 %i.bx, label %bb.ae, label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25, !noalias !64
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.by = icmp samesign ult i32 %i.bw, 268435456
  br i1 %i.by, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = add nsw i32 %i.bw, -268435456
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 28
  %i.cc = add nuw nsw i64 %i.cb, %i.as            ; 2 uses
  %i.cd = icmp samesign ugt i64 %.val1.i, 8
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 3 uses
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %bb.ad, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25, !noalias !64
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ch = icmp samesign ugt i64 %.val1.i, 9
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i, i64 9
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.ck = icmp ult i8 %i.cj, 2
  br i1 %i.ck, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.cl = zext nneg i8 %i.cj to i64
  %i.cm = shl nuw i64 %i.cl, 63
  %i.cn = and i8 %i.cf, 127
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 56
  %i.cq = add nuw nsw i64 %i.cp, %i.cc
  %i.cr = or disjoint i64 %i.cm, %i.cq
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ad:                                            ; preds = %bb.z
  %i.cs = zext nneg i8 %i.cf to i64
  %i.ct = shl nuw nsw i64 %i.cs, 56
  %i.cu = add nuw nsw i64 %i.ct, %i.cc
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ae:                                            ; preds = %bb.w
  %i.cv = zext nneg i32 %i.bw to i64
  %i.cw = shl nuw nsw i64 %i.cv, 28
  %i.cx = add nuw nsw i64 %i.cw, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.af:                                            ; preds = %bb.t
  %i.cy = zext nneg i32 %i.bn to i64
  %i.cz = shl nuw nsw i64 %i.cy, 28
  %i.da = add nuw nsw i64 %i.cz, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ag:                                            ; preds = %bb.r
  %i.db = zext nneg i32 %i.be to i64
  %i.dc = shl nuw nsw i64 %i.db, 28
  %i.dd = add nuw nsw i64 %i.dc, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ah:                                            ; preds = %bb.p
  %i.de = zext nneg i8 %i.av to i64
  %i.df = shl nuw nsw i64 %i.de, 28
  %i.dg = add nuw nsw i64 %i.df, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ai:                                            ; preds = %bb.d
  %i.dh = getelementptr i8, ptr %.val.i, i64 %.val1.i
  %i.di = getelementptr i8, ptr %i.dh, i64 -1
  %i.dj = load i8, ptr %i.di, align 1, !noundef !4
  %i.dk = icmp sgt i8 %i.dj, -1
  br i1 %i.dk, label %bb.e, label %bb.aj, !prof !9

bb.aj:                                            ; preds = %bb.ai
  %i.dl = tail call { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26 ; 2 uses
  %i.dm = extractvalue { i64, ptr } %i.dl, 0
  %i.dn = extractvalue { i64, ptr } %i.dl, 1
  %i.do = ptrtoint ptr %i.dn to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64
  store i64 -9223372036854775807, ptr %i.a, align 8, !noalias !64
  %i.dp = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a), !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64
  %i.dq = ptrtoint ptr %i.dp to i64
  br label %bb.al

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6: ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ad, %bb.ac, %bb.o, %bb.k, %bb.g
  %.sroa.18.0.ph = phi i64 [ 10, %bb.ac ], [ 9, %bb.ad ], [ 8, %bb.ae ], [ 7, %bb.af ], [ 6, %bb.ag ], [ 5, %bb.ah ], [ 4, %bb.o ], [ 3, %bb.k ], [ 2, %bb.g ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.cr, %bb.ac ], [ %i.cu, %bb.ad ], [ %i.cx, %bb.ae ], [ %i.da, %bb.af ], [ %i.dd, %bb.ag ], [ %i.dg, %bb.ah ], [ %i.aq, %bb.o ], [ %i.ag, %bb.k ], [ %i.w, %bb.g ]
  %i.dr = sub nuw i64 %.val1.i, %.sroa.18.0.ph
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.18.0.ph
  store ptr %i.ds, ptr %.val, align 8, !alias.scope !65, !captures !6
  store i64 %i.dr, ptr %i.c, align 8, !alias.scope !65
  br label %bb.al

bb.al:                                            ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6, %bb.aj, %bb.b, %bb.ak
  %.sroa.6.0 = phi i64 [ %i.f, %bb.b ], [ %i.l, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %i.dq, %bb.ak ], [ %.sroa.5.0.ph, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6 ], [ %i.do, %bb.aj ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ 1, %bb.ak ], [ 0, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6 ], [ %i.dm, %bb.aj ]
  %i.dt = inttoptr i64 %.sroa.6.0 to ptr
  %i.du = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.dv = insertvalue { i64, ptr } %i.du, ptr %i.dt, 1
  ret { i64, ptr } %i.dv
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val.i = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %.val.i, i64 10)
  %exitcond.not.a = icmp eq i64 %.val.i, 0
  br i1 %exitcond.not.a, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.d
  %1 = add nuw nsw i64 %.sroa.04.021, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %1, %.sroa.0.0.i
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775807, ptr %i.a, align 8
  %2 = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sroa.01.022 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.sroa.04.021 = phi i64 [ %1, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.d = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val) ; 3 uses
  %i.e = and i8 %i.d, 127
  %i.f = zext nneg i8 %i.e to i64
  %3 = mul nuw nsw i64 %.sroa.04.021, 7
  %i.g = shl i64 %i.f, %3
  %i.h = or i64 %i.g, %.sroa.01.022               ; 2 uses
  %i.i = icmp sgt i8 %i.d, -1
  br i1 %i.i, label %bb.f, label %bb.b

bb.e:                                             ; preds = %.thread, %bb.g, %bb.c
  %.sroa.4.0 = phi ptr [ %2, %bb.c ], [ %i.k, %bb.g ], [ %i.j, %.thread ]
  %.sroa.0.0 = phi i64 [ 1, %bb.c ], [ 1, %bb.g ], [ 0, %.thread ]
  %4 = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %5 = insertvalue { i64, ptr } %4, ptr %.sroa.4.0, 1
  ret { i64, ptr } %5

bb.f:                                             ; preds = %bb.d
  %6 = icmp eq i64 %.sroa.04.021, 9
  %7 = icmp samesign ugt i8 %i.d, 1
  %or.cond = and i1 %6, %7
  br i1 %or.cond, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.j = inttoptr i64 %i.h to ptr
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %i.b, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgxBkk5gSRhY_4core4iter8adapters11try_processINtNtB2_3map3MapNtNtNtB6_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEhINtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B2o_IB2m_INtNtCs6i54tJFfzR_5alloc3vec3VechEEINtNtNtB4_6traits7collect12FromIteratorIB2m_hEE9from_iterBQ_E0B3r_EB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  store ptr %1, ptr %i.a, align 8, !alias.scope !86, !noalias !87
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !86, !noalias !87
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx7, align 8, !alias.scope !86, !noalias !87
  call void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtCsgxBkk5gSRhY_4core4iter8adapters12GenericShuntINtNtB1j_3map3MapNtNtNtB1n_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEINtNtB1n_6option6OptionNtNtB1n_7convert10InfallibleEEE9from_iterB2S_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  %i.d = load i8, ptr %i.c, align 1, !range !10, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.g, %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !89
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.b, align 8, !range !7, !alias.scope !90, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %.val2.i, 0
  br i1 %i.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECsbNM6vbj4kjf_9usernames.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !91, !nonnull !4, !noundef !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !92
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECsbNM6vbj4kjf_9usernames.exit.i

bb.f:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %i.b, align 8, !range !7, !alias.scope !90, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %.val.i, 0
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !91, !nonnull !4, !noundef !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !93
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECsbNM6vbj4kjf_9usernames.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !7, !alias.scope !96, !noundef !4 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !96
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !96
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noalias !96, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !97, !noalias !96, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !96, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !96
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !96
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial10scalar_mul6strausNtB3_6StrausNtNtBb_6traits14MultiscalarMul15multiscalar_mulINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterNtNtBb_6scalar6ScalarEINtNtNtNtB2j_4iter8adapters3map3MapIB2d_NtNtBb_9ristretto14RistrettoPointENCINvXsq_B3U_B3S_B1r_15multiscalar_mulRSB2S_B3N_E0EECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [160 x i8], align 8               ; 4 uses
  %i.d = alloca [160 x i8], align 8               ; 4 uses
  %i.e = alloca [160 x i8], align 8               ; 4 uses
  %i.f = alloca [160 x i8], align 8               ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtBY_7backend6serial12curve_models20ProjectiveNielsPointEEINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapIB3e_INtNtNtB3m_5slice4iter4IterNtNtBY_9ristretto14RistrettoPointENCINvXsq_B4z_B4x_NtNtBY_6traits14MultiscalarMul15multiscalar_mulRSNtNtBY_6scalar6ScalarB46_E0ENCINvXNtNtB1S_10scalar_mul6strausNtB6H_6StrausB5m_15multiscalar_mulIB47_B69_EB41_E0EE9from_iterCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %3, ptr noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecAaj40_EINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtNtB1w_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENCINvXNtNtNtNtB2G_7backend6serial10scalar_mul6strausNtB3x_6StrausNtNtB2G_6traits14MultiscalarMul15multiscalar_mulB2b_IB1o_IB2c_NtNtB2G_9ristretto14RistrettoPointENCINvXsq_B5w_B5u_B4u_15multiscalar_mulRSB2C_B5p_E0EEs_0EE9from_iterCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noundef %2)
          to label %.split35 unwind label %bb.b

.body:                                            ; preds = %bb.f, %bb.g, %bb.b, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.j, %bb.b ], [ %i.u, %bb.g ], [ %i.u, %bb.f ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtB1c_7backend6serial12curve_models20ProjectiveNielsPointEEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #28
          to label %common.resume unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split35:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) @2, i64 40, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) @2, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

.loopexit:                                        ; preds = %bb.q, %.split
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  invoke void @_RNvXsd_CseNmJmsPJ47l_7zeroizeINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_ENtB5_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.split35, %.loopexit
  %.sroa.05.036 = phi i64 [ 64, %.split35 ], [ %i.t, %.loopexit ]
  %i.t = add nsw i64 %.sroa.05.036, -1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMsB_NtCsdRrpXuHtjOb_16curve25519_dalek7edwardsNtB5_12EdwardsPoint12mul_by_pow_2(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.g, i32 noundef 4)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit

.loopexit28:                                      ; preds = %.lr.ph, %bb.o, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc, %bb.n, %bb.d
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.c
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit28
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit28 ], [ %lpad.loopexit29, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #28
          to label %.body unwind label %bb.r

bb.e:                                             ; preds = %bb.c
end_hunk_0
