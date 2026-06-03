inline.NumInlined: 10475
inline.NumDeleted: 2844
begin_hunk_0_@_RINvNtCseqDwI8vvjGQ_10serde_json4read20parse_unicode_escapeINtB2_6IoReadRShEECs14kWLkQVSKO_14deltalake_core:bb.a
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 23, ptr %i.h, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i64, ptr %i.bg, align 8, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val16 = load i64, ptr %i.bh, align 8, !noundef !3
  %i.bi = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.val, i64 noundef %.val16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadRShEECs14kWLkQVSKO_14deltalake_core.exit28: ; preds = %.thread18.i23, %.thread.i27
  %i.bj = phi i8 [ %i.av, %.thread.i27 ], [ %i.az, %.thread18.i23 ]
  %i.bk = icmp eq i8 %i.bj, 117
  br i1 %i.bk, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadRShEECs14kWLkQVSKO_14deltalake_core.exit28
  store i8 0, ptr %i.v, align 8, !alias.scope !2850
  %i.bl = load i64, ptr %0, align 8, !range !4, !alias.scope !2850 ; 2 uses
  %.not.i29.not = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %.not.i29.not, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core.exit32, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !2853, !noundef !3 ; 3 uses
  %i.bo = icmp eq i64 %i.bn, %i.bl
  br i1 %i.bo, label %bb.r, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i31

bb.r:                                             ; preds = %bb.q
  call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i31

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i31: ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !2853, !nonnull !3, !noundef !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn
  store i8 117, ptr %i.br, align 1
  %i.bs = add i64 %i.bn, 1
  store i64 %i.bs, ptr %i.bm, align 8, !alias.scope !2853
  br label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core.exit32

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core.exit32: ; preds = %bb.p, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read17decode_hex_escapeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef align 8 dereferenceable(72) %0)
  %i.bt = load i16, ptr %i.f, align 8, !range !2811, !noundef !3
  %i.bu = trunc nuw i16 %i.bt to i1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadRShEECs14kWLkQVSKO_14deltalake_core.exit28
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 23, ptr %i.g, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val17 = load i64, ptr %i.bv, align 8, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val18 = load i64, ptr %i.bw, align 8, !noundef !3
  %i.bx = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.val17, i64 noundef %.val18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.t:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core.exit32
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !3, !align !65, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.u:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core.exit32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.cb = load i16, ptr %i.ca, align 2, !noundef !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cc = add i16 %i.cb, 8192
  %or.cond = icmp ult i16 %i.cc, -1024
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = add nsw i16 %i.p, 10240
  %i.ce = zext nneg i16 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 10
  %i.cg = add nsw i16 %i.cb, 9216
  %i.ch = zext nneg i16 %i.cg to i32
  %i.ci = or disjoint i32 %i.cf, %i.ch            ; 2 uses
  %i.cj = add nuw nsw i32 %i.ci, 65536            ; 2 uses
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !2856, !nonnull !3, !noundef !3
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !2856, !noundef !3 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, -1
  call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cn
  %i.cq = lshr i32 %i.cj, 18
  %i.cr = lshr i32 %i.cj, 12
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = lshr i32 %i.ci, 6
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = trunc i16 %i.cb to i8
  %i.cw = trunc nuw nsw i32 %i.cq to i8
  %i.cx = insertelement <4 x i8> poison, i8 %i.cw, i64 0
  %i.cy = insertelement <4 x i8> %i.cx, i8 %i.cs, i64 1
  %i.cz = insertelement <4 x i8> %i.cy, i8 %i.cu, i64 2
  %i.da = insertelement <4 x i8> %i.cz, i8 %i.cv, i64 3
  %i.db = and <4 x i8> %i.da, <i8 -1, i8 63, i8 63, i8 63>
  %i.dc = or disjoint <4 x i8> %i.db, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.dc, ptr %i.cp, align 1
  %i.dd = load i64, ptr %i.cm, align 8, !alias.scope !2856, !noundef !3 ; 2 uses
  %i.de = icmp sgt i64 %i.dd, -1
  call void @llvm.assume(i1 %i.de)
  %i.df = add nuw i64 %i.dd, 4
  store i64 %i.df, ptr %i.cm, align 8, !alias.scope !2856
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 20, ptr %i.e, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val19 = load i64, ptr %i.dg, align 8, !noundef !3
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val20 = load i64, ptr %i.dh, align 8, !noundef !3
  %i.di = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.val19, i64 noundef %.val20)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit: ; preds = %bb.m, %bb.n, %bb.h, %bb.i, %bb.ad, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i34, %bb.o, %bb.s, %bb.t, %bb.v, %bb.w, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.n, %bb.b ], [ %i.t, %bb.d ], [ %i.bi, %bb.o ], [ null, %bb.ad ], [ %i.aj, %bb.i ], [ %i.bz, %bb.t ], [ %i.di, %bb.w ], [ null, %bb.v ], [ %i.bx, %bb.s ], [ null, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i34 ], [ %i.ag, %bb.h ], [ %i.bc, %bb.m ], [ %i.bf, %bb.n ]
  ret ptr %.sroa.0.0

bb.x:                                             ; preds = %bb.e
  %i.dj = icmp ult i16 %i.p, 128
  br i1 %i.dj, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !2859, !nonnull !3, !noundef !3
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !2859, !noundef !3 ; 2 uses
  %i.do = icmp sgt i64 %i.dn, -1
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dn ; 3 uses
  %i.dq = icmp ult i16 %i.p, 2048
  br i1 %i.dq, label %bb.ab, label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.dr = trunc nuw nsw i16 %i.p to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !2862, !noundef !3 ; 3 uses
  %i.du = load i64, ptr %1, align 8, !range !112, !alias.scope !2862, !noundef !3
  %i.dv = icmp eq i64 %i.dt, %i.du
  br i1 %i.dv, label %bb.aa, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i34

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i34

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i34: ; preds = %bb.aa, %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !2862, !nonnull !3, !noundef !3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dt
  store i8 %i.dr, ptr %i.dy, align 1
  %i.dz = add i64 %i.dt, 1
  store i64 %i.dz, ptr %i.ds, align 8, !alias.scope !2862
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.ab:                                            ; preds = %bb.y
  %i.ea = lshr i16 %i.p, 6
  %i.eb = trunc nuw nsw i16 %i.ea to i8
  %i.ec = or disjoint i8 %i.eb, -64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.ee = lshr i16 %i.p, 12
  %i.ef = trunc nuw nsw i16 %i.ee to i8
  %i.eg = or disjoint i8 %i.ef, -32
  %i.eh = lshr i16 %i.p, 6
  %i.ei = trunc i16 %i.eh to i8
  %i.ej = and i8 %i.ei, 63
  %i.ek = or disjoint i8 %i.ej, -128
  store i8 %i.ek, ptr %i.ed, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink = phi i8 [ %i.ec, %bb.ab ], [ %i.eg, %bb.ac ]
  %.sroa.0.0.i = phi i64 [ 2, %bb.ab ], [ 3, %bb.ac ] ; 2 uses
  store i8 %.sink, ptr %i.dp, align 1
  %i.el = getelementptr i8, ptr %i.dp, i64 %.sroa.0.0.i
  %i.em = getelementptr i8, ptr %i.el, i64 -1
  %i.en = trunc i16 %i.p to i8
  %i.eo = and i8 %i.en, 63
  %i.ep = or disjoint i8 %i.eo, -128
  store i8 %i.ep, ptr %i.em, align 1
  %i.eq = load i64, ptr %i.dm, align 8, !alias.scope !2859, !noundef !3 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, -1
  tail call void @llvm.assume(i1 %i.er)
  %i.es = add nuw i64 %i.eq, %.sroa.0.0.i
  store i64 %i.es, ptr %i.dm, align 8, !alias.scope !2859
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1h_6marker4SyncNtB1O_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2865
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %0, ptr %i.c, align 8, !noalias !2865
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %1, ptr %i.d, align 8, !noalias !2865
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !2865
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !2868
  %i.e = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 144, i64 noundef range(i64 1, 17) 8) #48, !noalias !2868 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1q_6marker4SyncNtB1X_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #55
          to label %.noexc7.i unwind label %bb.c, !noalias !2865

.noexc7.i:                                        ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5InnerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a) #54
          to label %bb.e unwind label %bb.d, !noalias !2865

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56, !noalias !2865
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1q_6marker4SyncNtB1X_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2865
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs2pqxYH9ZEk8_3std2io4copy17stack_buffer_copyINtB4_4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEQINtNtNtB16_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [8192 x i8], align 1              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8192, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !65
  br label %.outer

.outer:                                           ; preds = %bb.e, %bb.a
  %.sroa.02.0.ph = phi i64 [ %i.q, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.f = call noundef ptr @_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not51 = icmp eq ptr %i.f, null
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.j
  %i.g = phi ptr [ %i.aa, %bb.j ], [ %i.f, %.outer ] ; 9 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.i
    i64 0, label %bb.g
    i64 1, label %bb.h
  ], !prof !2200

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.j, %.outer
  %i.j = load i64, ptr %i.e, align 8, !noundef !3 ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = inttoptr i64 %.sroa.02.0.ph to ptr
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.m = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.n = call noundef ptr @_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 1, -9223372036854775808) %i.j) ; 2 uses
  %.not11 = icmp eq ptr %i.n, null
  br i1 %.not11, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %.loopexit, %bb.b
  %.sroa.4.0 = phi ptr [ %.sroa.4.1.in, %.loopexit ], [ %i.l, %bb.b ]
  %.sroa.0.0 = phi i64 [ 1, %.loopexit ], [ 0, %bb.b ]
  %i.o = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.p = insertvalue { i64, ptr } %i.o, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.p

bb.e:                                             ; preds = %bb.c
  %i.q = add i64 %i.j, %.sroa.02.0.ph
  store i64 0, ptr %i.e, align 8
  br label %.outer

.loopexit:                                        ; preds = %bb.c, %bb.i, %bb.f, %bb.h, %bb.g
  %.sroa.4.1.in = phi ptr [ %i.g, %bb.i ], [ %i.g, %bb.g ], [ %i.g, %bb.h ], [ %i.g, %bb.f ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.f:                                             ; preds = %.lr.ph
  %.mask44 = and i64 %i.h, -4294967296
  %i.r = icmp eq i64 %.mask44, 17179869184
  br i1 %i.r, label %bb.j, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !2871, !noundef !3
  %i.u = icmp eq i8 %i.t, 35
  br i1 %i.u, label %bb.j, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %i.g, i64 15
  %i.w = load i8, ptr %i.v, align 8, !range !2871, !noundef !3
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %bb.j, label %.loopexit

bb.i:                                             ; preds = %.lr.ph
  %i.y = icmp ult ptr %i.g, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.y)
  %.mask = and i64 %i.h, -4294967296
  %i.z = icmp eq i64 %.mask, 150323855360
  br i1 %i.z, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = call noundef ptr @_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs2pqxYH9ZEk8_3std2io4copy17stack_buffer_copyINtB4_4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEQINtNtNtB16_4file6writer12TrackedWriteNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEEB2T_(ptr noalias noundef align 8 dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [8192 x i8], align 1              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8192, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !65
  br label %.outer

.outer:                                           ; preds = %bb.e, %bb.a
  %.sroa.02.0.ph = phi i64 [ %i.q, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.f = call noundef ptr @_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not51 = icmp eq ptr %i.f, null
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.j
  %i.g = phi ptr [ %i.aa, %bb.j ], [ %i.f, %.outer ] ; 9 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.i
    i64 0, label %bb.g
    i64 1, label %bb.h
  ], !prof !2200

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.j, %.outer
  %i.j = load i64, ptr %i.e, align 8, !noundef !3 ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = inttoptr i64 %.sroa.02.0.ph to ptr
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.m = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.n = call noundef ptr @_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allB16_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 1, -9223372036854775808) %i.j) ; 2 uses
  %.not11 = icmp eq ptr %i.n, null
  br i1 %.not11, label %bb.e, label %.loopexit
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE9pop_frontCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.sroa.0.0 = sub nuw i64 %i.f, %i.h
  store i64 %.sroa.0.0, ptr %i.d, align 8
  %i.i = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE13push_back_mutCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !112, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.e = phi i64 [ %.pre6, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  %i.j = add i64 %i.i, %i.f                       ; 2 uses
  %.not = icmp ult i64 %i.j, %i.e
  %i.k = select i1 %.not, i64 0, i64 %i.e
  %.sroa.0.0 = sub nuw i64 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.0.0 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret ptr %i.n

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4growCsgO6CtM78C4N_7reqwest(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %._crit_edge unwind label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8
  %.pre6 = load i64, ptr %0, align 8, !range !112
  br label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29542)
  %i.p = load ptr, ptr %1, align 8, !alias.scope !29545, !nonnull !3, !align !65, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !29545, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !29545, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !29545, !noundef !3
  invoke void %i.r(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.u, i64 noundef %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e, !inline_history !707

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %.val = load i64, ptr %1, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCsbvkFyIu7lgC_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs14kWLkQVSKO_14deltalake_core(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17), !noalias !29546 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val2                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.0.0.i = sub nuw i64 %i.i, %i.j           ; 4 uses
  %i.k = sub i64 %.val, %.sroa.0.0.i              ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.0.0.i, %i.g
  br label %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.5.0
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.11.0
  store ptr %i.p, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.u, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9pop_frontCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load i64, ptr %1, align 8, !range !112, !noundef !3 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.g
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.sroa.0.0 = sub nuw i64 %i.f, %i.h
  store i64 %.sroa.0.0, ptr %i.d, align 8
  %i.i = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringjEE9pop_frontCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load i64, ptr %1, align 8, !range !112, !noundef !3 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.g
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.sroa.0.0 = sub nuw i64 %i.f, %i.h
  store i64 %.sroa.0.0, ptr %i.d, align 8
  %i.i = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 728, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxEE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 464, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 632, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxEE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 368, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 368) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdIBx_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1F_6marker4SyncNtB2Y_4SendEL_EINtNtB1F_4hash18BuildHasherDefaultNtB2g_8IdHasherEEE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 32, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 328, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(2688) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 2688, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2688) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14WindowFunctionE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(288) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 288, i64 noundef range(i64 1, 17) 16) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 288) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(352) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 352, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 352) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 112, i64 noundef range(i64 1, 17) 16) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 112, i64 noundef range(i64 1, 17) 16) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 112, i64 noundef range(i64 1, 17) 16) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 144, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 64, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 48, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 24, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 64, i64 noundef range(i64 1, 17) 16) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(616) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 616, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 616) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1152) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 1152, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1152) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 640, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(400) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 400, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 400) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 72, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 1400, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 48, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(2432) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 2432, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2432) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(2696) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 2696, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2696) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 56, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 104, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1680) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 1680, i64 noundef range(i64 1, 17) 8) #48 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1680) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12binary_to_df(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 6 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [112 x i8], align 16              ; 6 uses
  %i.d = alloca [112 x i8], align 16              ; 4 uses
  %i.e = alloca [112 x i8], align 16              ; 6 uses
  %i.f = alloca [112 x i8], align 16              ; 4 uses
  %i.g = alloca [112 x i8], align 16              ; 6 uses
  %i.h = alloca [112 x i8], align 16              ; 4 uses
  %i.i = alloca [112 x i8], align 16              ; 7 uses
  %i.j = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.67 = alloca [40 x i8], align 8           ; 6 uses
  %.sroa.828 = alloca [40 x i8], align 8          ; 8 uses
  %.sroa.9 = alloca [64 x i8], align 16           ; 8 uses
  %i.k = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.l = alloca [112 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.m = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  call void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion18to_datafusion_expr(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.k, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.n = load i64, ptr %i.k, align 16, !range !4244, !noundef !3 ; 2 uses
  %i.o = icmp eq i64 %i.n, 37
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.618.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 %i.n, ptr %i.l, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.828)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  invoke void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion18to_datafusion_expr(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.j, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.j, align 16, !range !4244, !noundef !3 ; 5 uses
  %i.u = icmp eq i64 %i.t, 37
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false)
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.828)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.l)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.621.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.828, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !852, !noundef !3
  switch i8 %i.y, label %default.unreachable40 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

default.unreachable40:                            ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.h, ptr noundef nonnull align 16 dereferenceable(112) %i.l, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.t, ptr %i.g, align 16
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.828.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.828, i64 40, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9, i64 64, i1 false)
  call void @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr9operationNtNtB4_4expr4ExprNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Add3add(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.f, ptr noundef nonnull align 16 dereferenceable(112) %i.l, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.t, ptr %i.e, align 16
  %.sroa.828.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.828.0..sroa_idx29, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.828, i64 40, i1 false)
  %.sroa.9.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.0..sroa_idx32, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9, i64 64, i1 false)
  call void @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr9operationNtNtB6_4expr4ExprNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.d, ptr noundef nonnull align 16 dereferenceable(112) %i.l, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.t, ptr %i.c, align 16
  %.sroa.828.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.828.0..sroa_idx30, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.828, i64 40, i1 false)
  %.sroa.9.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.0..sroa_idx33, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9, i64 64, i1 false)
  call void @_RNvXs0_NtCs8VI8w5SIoU4_15datafusion_expr9operationNtNtB7_4expr4ExprNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Mul3mul(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.l, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 16
  %.sroa.828.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.828.0..sroa_idx31, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.828, i64 40, i1 false)
  %.sroa.9.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.0..sroa_idx34, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9, i64 64, i1 false)
  call void @_RNvXs1_NtCs8VI8w5SIoU4_15datafusion_expr9operationNtNtB7_4expr4ExprNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Div3div(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.i, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.828)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.m:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.n:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.aa

bb.o:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.l) #54
          to label %bb.n unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion14junction_to_df(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 5 uses
  %i.e = alloca [112 x i8], align 16              ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [112 x i8], align 16              ; 8 uses
end_hunk_1
begin_hunk_2_@_RNvYDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data7GetDataEL_INtB5_12TypedGetDataxE3getCs14kWLkQVSKO_14deltalake_core:bb.a
  store i64 %i.j, ptr %.sroa.319.0..sroa_idx, align 16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.k = trunc nuw i64 %i.h to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.l, align 8
  store i64 -9223372036854775743, ptr %0, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34051
  store ptr %i.d, ptr %i.a, align 8, !noalias !34051
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !34051
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @74, ptr noundef nonnull %i.a), !noalias !34055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34051
  store i64 -9223372036854775771, ptr %i.b, align 16, !noalias !34051
  call void @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB2_5Error14with_backtrace(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34051
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtB7_7FlatMapINtNtB9_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB2r_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtB2v_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEEIB3_IB1e_INtNtB4R_9into_iter8IntoIterB55_EENCNCNCNCNvMs7_B57_NtB57_9MergePlan7execute0000ENCB6Y_0ENCB6Y_s_0ENtB7_9StreamExt5boxedB5b_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !34056
  %i.a = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 184, i64 noundef range(i64 1, 17) 8) #48, !noalias !34056 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtBJ_7FlatMapINtNtBL_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtB4_6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB33_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtB4_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEEIBF_IB1Q_INtNtB5c_9into_iter8IntoIterB5p_EENCNCNCNCNvMs7_B5r_NtB5r_9MergePlan7execute0000ENCB7i_0ENCB7i_s_0EE3newB5v_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #55
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtBL_7FlatMapINtNtBN_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB35_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtB39_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEEIBH_IB1S_INtNtB5v_9into_iter8IntoIterB5J_EENCNCNCNCNvMs7_B5L_NtB5L_9MergePlan7execute0000ENCB7C_0ENCB7C_s_0EEB5P_(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) #54
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtBJ_7FlatMapINtNtBL_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtB4_6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB33_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtB4_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEEIBF_IB1Q_INtNtB5c_9into_iter8IntoIterB5p_EENCNCNCNCNvMs7_B5r_NtB5r_9MergePlan7execute0000ENCB7i_0ENCB7i_s_0EE3newB5v_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr noundef nonnull align 8 dereferenceable(184) %0, i64 184, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @1734, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENcNtINtNtCsbvkFyIu7lgC_4core6result6ResultB25_NtB29_5ErrorE2Ok0ENtB7_9StreamExt5boxedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !34059
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 32, i64 noundef range(i64 1, 17) 8) #48, !noalias !34059 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtBL_4iter4IterINtNtNtB4_3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENcNtINtNtCsbvkFyIu7lgC_4core6result6ResultB2q_NtB2u_5ErrorE2Ok0EE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #55
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtBN_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENcNtINtNtB4_6result6ResultB2J_NtB2N_5ErrorE2Ok0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtBN_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENcNtINtNtB4_6result6ResultB2J_NtB2N_5ErrorE2Ok0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtBL_4iter4IterINtNtNtB4_3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENcNtINtNtCsbvkFyIu7lgC_4core6result6ResultB2q_NtB2u_5ErrorE2Ok0EE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @1735, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB2z_3ops5range5RangeyEEEEENCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl00ENtB7_9StreamExt8bufferedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB34_3ops5range5RangeyEEEEENCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl00EE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB2d_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEENCNCNCNvMs7_B4C_NtB4C_9MergePlan7execute00s0_0ENtB7_9StreamExt5boxedB4G_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !34062
  %i.a = tail call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 160, i64 noundef range(i64 1, 17) 8) #48, !noalias !34062 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtBL_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtB4_6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB2P_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEENCNCNCNvMs7_B4X_NtB4X_9MergePlan7execute00s0_0EE3newB51_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #55
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtBN_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB2R_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEENCNCNCNvMs7_B5g_NtB5g_9MergePlan7execute00s0_0EEB5k_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0) #54
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtBL_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtB4_6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB2P_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEENCNCNCNvMs7_B4X_NtB4X_9MergePlan7execute00s0_0EE3newB51_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @1736, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEENCNCNvMs0_B2V_NtB2V_11DeltaWriter5close00ENtB7_9StreamExt8bufferedB31_(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEENCNCNvMs0_B3q_NtB3q_11DeltaWriter5close00EE3newB3w_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEEENCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5d_10get_ranges00ENtB7_9StreamExt8bufferedB3o_(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterINtNtNtB1V_3ops5range5RangeyEEEENCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5I_10get_ranges00EE3newB3T_(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB3j_11ObjectStore10get_ranges00ENtB7_9StreamExt8bufferedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterINtNtNtB1V_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB3O_11ObjectStore10get_ranges00EE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3j_11ObjectStore10get_ranges00ENtB7_9StreamExt8bufferedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterINtNtNtB1V_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3O_11ObjectStore10get_ranges00EE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3j_11ObjectStore10get_ranges00ENtB7_9StreamExt8bufferedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterINtNtNtB1V_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3O_11ObjectStore10get_ranges00EE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB3j_11ObjectStore10get_ranges00ENtB7_9StreamExt8bufferedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterINtNtNtB1V_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB3O_11ObjectStore10get_ranges00EE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1o_6option6OptionQIB23_hEEEE9call_onceCs14kWLkQVSKO_14deltalake_core(ptr noalias readnone captures(none) %0) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noalias noundef nonnull ptr @_RNvYNCNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !34065
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 16, i64 noundef range(i64 1, 17) 8) #48, !noalias !34065 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNCNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER0B5_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #55, !noalias !34065
  unreachable

_RNCNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER0B5_.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34071)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !alias.scope !34074, !noundef !3 ; 3 uses
  %i.c = icmp ugt i8 %i.b, 64
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i64 %1 to i128
  %i.e = zext nneg i8 %i.b to i128
  %i.f = shl nuw i128 %i.d, %i.e
  %i.g = load i128, ptr %0, align 16, !alias.scope !34074, !noundef !3
  %i.h = or i128 %i.g, %i.f
  %i.i = add nuw i8 %i.b, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usize.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i128, ptr %0, align 16, !alias.scope !34074, !noundef !3 ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = lshr i128 %i.j, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !34074, !noundef !3
  %i.p = xor i64 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !alias.scope !34074, !nonnull !3, !align !65, !noundef !3
  %i.s = load i64, ptr %i.r, align 8, !noalias !34074, !noundef !3
  %i.t = xor i64 %i.s, %i.m
  %i.u = zext i64 %i.p to i128
  %i.v = zext i64 %i.t to i128
  %i.w = mul nuw i128 %i.v, %i.u                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64
  store i64 %i.z, ptr %i.n, align 8, !alias.scope !34074
  %i.aa = zext i64 %1 to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usize.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i128 [ %i.aa, %bb.c ], [ %i.h, %bb.b ]
  %storemerge.i.i = phi i8 [ 64, %bb.c ], [ %i.i, %bb.b ]
  store i128 %.sink, ptr %0, align 16, !alias.scope !34074
  store i8 %storemerge.i.i, ptr %i.a, align 16, !alias.scope !34074
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34078)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !34075, !noalias !34078, !noundef !3 ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshr.i64(i64 %i.b, i64 %i.b, i64 %2) ; 6 uses
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !34075, !noalias !34078
  %i.d = icmp samesign ult i64 %2, 17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !alias.scope !34075, !noalias !34078, !nonnull !3, !align !65, !noundef !3 ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.b, !prof !696

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f) #58, !noalias !34075
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34083)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !34083, !noalias !34085, !noundef !3 ; 4 uses
  %i.j = icmp samesign ugt i64 %2, 7
  br i1 %i.j, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %2, 3
  br i1 %i.k, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  %.sroa.014.0.copyload.i.i = load i64, ptr %1, align 1, !alias.scope !34086, !noalias !34087
  %i.l = xor i64 %.sroa.014.0.copyload.i.i, %i.c
  %i.m = getelementptr i8, ptr %1, i64 %2
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %.sroa.016.0.copyload.i.i = load i64, ptr %i.n, align 1, !alias.scope !34086, !noalias !34087
  %i.o = xor i64 %.sroa.016.0.copyload.i.i, %i.i
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i, label %bb.f

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.p = getelementptr i8, ptr %1, i64 %2
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %.sroa.019.0.copyload.i.i = load i32, ptr %i.q, align 1, !alias.scope !34086, !noalias !34087
  %.sroa.018.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !34086, !noalias !34087
  %i.r = zext i32 %.sroa.018.0.copyload.i.i to i64
  %i.s = xor i64 %i.c, %i.r
  %i.t = zext i32 %.sroa.019.0.copyload.i.i to i64
  %i.u = xor i64 %i.i, %i.t
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %1, align 1, !alias.scope !34086, !noalias !34087, !noundef !3
  %i.w = lshr i64 %2, 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !34086, !noalias !34087, !noundef !3
  %i.z = getelementptr i8, ptr %1, i64 %2
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !34086, !noalias !34087, !noundef !3
  %i.ac = zext i8 %i.v to i64
  %i.ad = xor i64 %i.c, %i.ac
  %i.ae = zext i8 %i.ab to i64
  %i.af = shl nuw nsw i64 %i.ae, 8
  %i.ag = zext i8 %i.y to i64
  %i.ah = or disjoint i64 %i.af, %i.ag
  %i.ai = xor i64 %i.ah, %i.i
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i: ; preds = %bb.f, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.e, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.04.0.i.i = phi i64 [ %i.o, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.u, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ai, %bb.f ], [ %i.i, %bb.e ]
  %.sroa.0.0.i.i = phi i64 [ %i.l, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.s, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ad, %bb.f ], [ %i.c, %bb.e ]
  %i.aj = zext i64 %.sroa.0.0.i.i to i128
  %i.ak = zext i64 %.sroa.04.0.i.i to i128
  %i.al = mul nuw i128 %i.aj, %i.ak               ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = xor i128 %i.am, %i.al
  %i.ao = trunc i128 %i.an to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit: ; preds = %bb.b, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i
  %storemerge.i = phi i64 [ %i.g, %bb.b ], [ %i.ao, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i ] ; 2 uses
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !34075, !noalias !34078
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34091)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 16, !alias.scope !34094, !noundef !3 ; 3 uses
  %i.ar = icmp ugt i8 %i.aq, 120
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit
  %i.as = zext nneg i8 %i.aq to i128
  %i.at = shl nuw i128 255, %i.as
  %i.au = load i128, ptr %0, align 16, !alias.scope !34094, !noundef !3
  %i.av = or i128 %i.au, %i.at
  %i.aw = add nuw i8 %i.aq, 8
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

bb.h:                                             ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit
  %i.ax = load i128, ptr %0, align 16, !alias.scope !34094, !noundef !3 ; 2 uses
  %i.ay = trunc i128 %i.ax to i64
  %i.az = lshr i128 %i.ax, 64
  %i.ba = trunc nuw i128 %i.az to i64
  %i.bb = xor i64 %storemerge.i, %i.ay
  %i.bc = load i64, ptr %i.f, align 8, !noalias !34094, !noundef !3
  %i.bd = xor i64 %i.bc, %i.ba
  %i.be = zext i64 %i.bb to i128
  %i.bf = zext i64 %i.bd to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64
  store i64 %i.bj, ptr %i.a, align 8, !alias.scope !34094
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit: ; preds = %bb.g, %bb.h
  %.sink = phi i128 [ 255, %bb.h ], [ %i.av, %bb.g ]
  %storemerge.i.i = phi i8 [ 8, %bb.h ], [ %i.aw, %bb.g ]
  store i128 %.sink, ptr %0, align 16, !alias.scope !34094
  store i8 %storemerge.i.i, ptr %i.ap, align 16, !alias.scope !34094
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs2xb0BKvnu80_21datafusion_datasource16file_scan_config14FileScanConfigNtNtB6_6source10DataSource10statisticsCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtCs2xb0BKvnu80_21datafusion_datasource16file_scan_configNtB5_14FileScanConfigNtNtB7_6source10DataSource20partition_statistics(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1, i64 noundef 0, i64 undef)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs2xb0BKvnu80_21datafusion_datasource4sink12DataSinkExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan10statisticsCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(416) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_2
