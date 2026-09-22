Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.05?download=true
inline.NumInlined: 720
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvNtCsksn9slvsHfS_10image_webp8extended16read_alpha_chunkINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image:bb.a

..thread220_crit_edge.i.i:                        ; preds = %bb.z
  %.pre.i.i = load i64, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !611, !noalias !612
  br label %.thread220.i.i

bb.aa:                                            ; preds = %.noexc54
  %.sroa.8196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.8196.0.copyload.i.i = load i8, ptr %.sroa.8196.0..sroa_idx.i.i, align 1, !noalias !613
  %.sroa.11197.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.11197.i.sroa.0.0.copyload.i = load i16, ptr %.sroa.11197.0..sroa_idx.i.i, align 2, !noalias !607
  %.sroa.11197.i.sroa.4.0..sroa.11197.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11197.i.sroa.4.0..sroa.11197.0..sroa_idx.i.sroa_idx.i, i64 28, i1 false), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !610
  br label %.loopexit.i

.thread220.i.i:                                   ; preds = %..thread220_crit_edge.i.i, %bb.x
  %i.cw = phi i64 [ %.pre.i.i, %..thread220_crit_edge.i.i ], [ %i.cq, %bb.x ] ; 3 uses
  %i.cx = phi i8 [ %.pre.i178.i.i, %..thread220_crit_edge.i.i ], [ %i.cr, %bb.x ]
  %i.cy = lshr i64 %i.cw, 2
  store i64 %i.cy, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !611, !noalias !612
  %i.cz = add i8 %i.cx, -2
  store i8 %i.cz, ptr %.sroa.520.0..sroa_idx, align 8, !alias.scope !611, !noalias !612
  %i.da = trunc i64 %i.cw to i8
  %i.db = and i8 %i.da, 3                         ; 4 uses
  %i.dc = and i64 %i.cw, 3
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.dc ; 10 uses
  %i.de = load i8, ptr %i.dd, align 8, !range !23, !alias.scope !614, !noalias !615, !noundef !6
  %.not149.i.i = icmp eq i8 %i.de, -1
  br i1 %.not149.i.i, label %bb.ab, label %.loopexit.i

bb.ab:                                            ; preds = %.thread220.i.i
  %i.df = load i64, ptr %.sroa.537.0..sroa_idx, align 8, !alias.scope !616, !noalias !615, !noundef !6 ; 3 uses
  %i.dg = load i64, ptr %i.ab, align 8, !range !16, !alias.scope !616, !noalias !615, !noundef !6
  %i.dh = icmp eq i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.ac, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ab) #29
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i unwind label %.loopexit.split-lp150.loopexit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.ac, %bb.ab
  %i.di = load ptr, ptr %.sroa.436.0..sroa_idx, align 8, !alias.scope !616, !noalias !615, !nonnull !6, !noundef !6
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  store i8 %i.db, ptr %i.dj, align 1, !noalias !615
  %i.dk = add i64 %i.df, 1
  store i64 %i.dk, ptr %.sroa.537.0..sroa_idx, align 8, !alias.scope !616, !noalias !615
  switch i8 %i.db, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i.unreachabledefault [
    i8 0, label %bb.ad
    i8 1, label %bb.ah
    i8 2, label %bb.aw
    i8 3, label %bb.al
  ], !prof !24

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i.unreachabledefault: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i
  unreachable

default.unreachable:                              ; preds = %bb.bx
  unreachable

bb.ad:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.dl = load i8, ptr %.sroa.520.0..sroa_idx, align 8, !alias.scope !618, !noalias !619, !noundef !6 ; 2 uses
  %i.dm = icmp ult i8 %i.dl, 3
  br i1 %i.dm, label %bb.ae, label %.thread226.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !620
  invoke fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB12_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.noexc56 unwind label %.loopexit.split-lp150.loopexit

.noexc56:                                         ; preds = %bb.ae
  %i.dn = load i8, ptr %i.h, align 8, !range !20, !noalias !620, !noundef !6 ; 2 uses
  %.not.i180.i.i = icmp eq i8 %i.dn, -1
  br i1 %.not.i180.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.noexc56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !620
  %.pre.i181.i.i = load i8, ptr %.sroa.520.0..sroa_idx, align 8, !alias.scope !618, !noalias !619 ; 2 uses
  %i.do = icmp ult i8 %.pre.i181.i.i, 3
  br i1 %i.do, label %.loopexit.i, label %.thread226.i.i

bb.ag:                                            ; preds = %.noexc56
  %.sroa.8199.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.8199.0.copyload.i.i = load i8, ptr %.sroa.8199.0..sroa_idx.i.i, align 1, !noalias !621
  %.sroa.11200.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.11200.i.sroa.0.0.copyload.i = load i16, ptr %.sroa.11200.0..sroa_idx.i.i, align 2, !noalias !607
  %.sroa.11200.i.sroa.4.0..sroa.11200.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11200.i.sroa.4.0..sroa.11200.0..sroa_idx.i.sroa_idx.i, i64 28, i1 false), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !620
  br label %.loopexit.i

bb.ah:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.dp = load i8, ptr %.sroa.520.0..sroa_idx, align 8, !alias.scope !623, !noalias !624, !noundef !6 ; 2 uses
  %i.dq = icmp ult i8 %i.dp, 3
  br i1 %i.dq, label %bb.ai, label %.thread232.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !625
  invoke fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB12_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.noexc57 unwind label %.loopexit.split-lp150.loopexit

.noexc57:                                         ; preds = %bb.ai
  %i.dr = load i8, ptr %i.g, align 8, !range !20, !noalias !625, !noundef !6 ; 2 uses
  %.not.i183.i.i = icmp eq i8 %i.dr, -1
  br i1 %.not.i183.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !625
  %.pre.i184.i.i = load i8, ptr %.sroa.520.0..sroa_idx, align 8, !alias.scope !623, !noalias !624 ; 2 uses
  %i.ds = icmp ult i8 %.pre.i184.i.i, 3
  br i1 %i.ds, label %.loopexit.i, label %.thread232.i.i

bb.ak:                                            ; preds = %.noexc57
  %.sroa.8202.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.8202.0.copyload.i.i = load i8, ptr %.sroa.8202.0..sroa_idx.i.i, align 1, !noalias !626
  %.sroa.11203.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.11203.i.sroa.0.0.copyload.i = load i16, ptr %.sroa.11203.0..sroa_idx.i.i, align 2, !noalias !607
  %.sroa.11203.i.sroa.4.0..sroa.11203.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11203.i.sroa.4.0..sroa.11203.0..sroa_idx.i.sroa_idx.i, i64 28, i1 false), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !625
  br label %.loopexit.i

bb.al:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.dt = load i8, ptr %.sroa.520.0..sroa_idx, align 8, !alias.scope !628, !noalias !629, !noundef !6 ; 2 uses
  %i.du = icmp ult i8 %i.dt, 8
  br i1 %i.du, label %bb.am, label %.thread238.i.i

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !630
  invoke fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB12_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.noexc58 unwind label %.loopexit.split-lp150.loopexit

.noexc58:                                         ; preds = %bb.am
  %i.dv = load i8, ptr %i.f, align 8, !range !20, !noalias !630, !noundef !6 ; 2 uses
  %.not.i186.i.i = icmp eq i8 %i.dv, -1
  br i1 %.not.i186.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.noexc58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !630
  %.pre.i187.i.i = load i8, ptr %.sroa.520.0..sroa_idx, align 8, !alias.scope !628, !noalias !629 ; 2 uses
  %i.dw = icmp ult i8 %.pre.i187.i.i, 8
  br i1 %i.dw, label %.loopexit.i, label %.thread238.i.i

bb.ao:                                            ; preds = %.noexc58
  %.sroa.8205.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.8205.0.copyload.i.i = load i8, ptr %.sroa.8205.0..sroa_idx.i.i, align 1, !noalias !631
  %.sroa.9206.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.9206.0.copyload.i.i = load i16, ptr %.sroa.9206.0..sroa_idx.i.i, align 2, !noalias !631
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.0..sroa_idx.i.i, i64 28, i1 false), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !630
  br label %.loopexit.i

.thread238.i.i:                                   ; preds = %bb.an, %bb.al
  %i.dx = phi i8 [ %.pre.i187.i.i, %bb.an ], [ %i.dt, %bb.al ]
  %i.dy = load i64, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !628, !noalias !629, !noundef !6 ; 2 uses
  %i.dz = lshr i64 %i.dy, 8
  store i64 %i.dz, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !628, !noalias !629
  %i.ea = add i8 %i.dx, -8
  store i8 %i.ea, ptr %.sroa.520.0..sroa_idx, align 8, !alias.scope !628, !noalias !629
  %i.eb = trunc i64 %i.dy to i16
  %.sroa.519.0.extract.trunc.i.i.i = and i16 %i.eb, 255 ; 4 uses
  %i.ec = add nuw nsw i16 %.sroa.519.0.extract.trunc.i.i.i, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !607
  %i.ed = shl nuw nsw i16 %i.ec, 2
  %i.ee = zext nneg i16 %i.ed to i64              ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !633
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ee, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc59 unwind label %.loopexit.split-lp150.loopexit

.noexc59:                                         ; preds = %.thread238.i.i
  %i.ef = load i64, ptr %i.c, align 8, !range !13, !noalias !633, !noundef !6
  %i.eg = trunc nuw i64 %i.ef to i1
  %i.eh = load i64, ptr %i.by, align 8, !range !14, !noalias !633, !noundef !6 ; 2 uses
  br i1 %i.eg, label %bb.bf, label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit191.i.i, !prof !8

.thread226.i.i:                                   ; preds = %bb.af, %bb.ad
  %i.ei = phi i8 [ %.pre.i181.i.i, %bb.af ], [ %i.dl, %bb.ad ]
  %i.ej = load i64, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !618, !noalias !619, !noundef !6 ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  store i64 %i.ek, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !618, !noalias !619
  %i.el = add i8 %i.ei, -3
  store i8 %i.el, ptr %.sroa.520.0..sroa_idx, align 8, !alias.scope !618, !noalias !619
  %i.em = trunc i64 %i.ej to i8
  %i.en = and i8 %i.em, 7
  %i.eo = add nuw nsw i8 %i.en, 2                 ; 2 uses
  %i.ep = zext nneg i8 %i.eo to i32               ; 3 uses
  %i.eq = zext i16 %.sroa.058.0.i.i to i32
  %notmask433.i.i = shl nsw i32 -1, %i.ep
  %i.er = xor i32 %notmask433.i.i, -1             ; 2 uses
  %i.es = add nuw nsw i32 %i.er, %i.eq
  %i.et = lshr i32 %i.es, %i.ep                   ; 2 uses
  %i.eu = load i16, ptr %i.bd, align 2, !alias.scope !614, !noalias !615, !noundef !6
  %i.ev = zext i16 %i.eu to i32
  %i.ew = add nuw nsw i32 %i.er, %i.ev
  %i.ex = lshr i32 %i.ew, %i.ep                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !607
  %narrow246.i.i = mul nuw nsw i32 %i.et, %i.ex
  %i.ey = zext nneg i32 %narrow246.i.i to i64
  %4 = shl nuw nsw i64 %i.ey, 2                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !635
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %4, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc60 unwind label %.loopexit.split-lp150.loopexit

.noexc60:                                         ; preds = %.thread226.i.i
  %i.ez = load i64, ptr %i.e, align 8, !range !13, !noalias !635, !noundef !6
  %i.fa = trunc nuw i64 %i.ez to i1
  %i.fb = load i64, ptr %i.cg, align 8, !range !14, !noalias !635, !noundef !6 ; 2 uses
  br i1 %i.fa, label %bb.ap, label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i.i, !prof !8

bb.ap:                                            ; preds = %.noexc60
  %i.fc = load i64, ptr %i.ch, align 8, !noalias !635
  br label %.invoke

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc60
  %.sroa.5.0.extract.trunc.i173.i.i = trunc nuw nsw i32 %i.et to i16
  %.sroa.5.0.extract.trunc.i168.i.i = trunc nuw nsw i32 %i.ex to i16
  %i.fd = load ptr, ptr %i.ch, align 8, !noalias !635, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !635
  store i64 %i.fb, ptr %i.q, align 8, !alias.scope !634, !noalias !607
  store ptr %i.fd, ptr %i.ci, align 8, !alias.scope !634, !noalias !607
  store i64 %4, ptr %i.cj, align 8, !alias.scope !634, !noalias !607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !607
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ab, i16 noundef %.sroa.5.0.extract.trunc.i173.i.i, i16 noundef %.sroa.5.0.extract.trunc.i168.i.i, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.fd, i64 noundef %4)
          to label %bb.ar unwind label %bb.aq, !noalias !615

bb.aq:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #24
          to label %.body unwind label %bb.ax, !noalias !615

bb.ar:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i.i
  %i.ff = load i8, ptr %i.p, align 8, !range !20, !noalias !607, !noundef !6 ; 2 uses
  %.not155.i.i = icmp eq i8 %i.ff, -1
  br i1 %.not155.i.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.15.0..sroa_idx184.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.15.0.copyload185.i = load i8, ptr %.sroa.15.0..sroa_idx184.i, align 1, !noalias !636
  %.sroa.21.0..sroa_idx188.i = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %.sroa.21.0.copyload189.i = load i16, ptr %.sroa.21.0..sroa_idx188.i, align 2, !noalias !636
  %.sroa.29.0..sroa_idx194.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.29.0..sroa_idx194.i, i64 28, i1 false), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !607
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.at, !noalias !615

bb.at:                                            ; preds = %bb.as
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body unwind label %bb.au, !noalias !615

bb.au:                                            ; preds = %bb.at
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !615
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.as
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc62 unwind label %.loopexit.split-lp150.loopexit.split-lp

.noexc62:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !607
  br label %.loopexit.i

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.819.8..sroa_idx21.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !607
  br label %bb.aw

bb.aw:                                            ; preds = %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit.i.i, %bb.be, %bb.av, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.058.1.i.i = phi i16 [ %.sroa.058.0.i.i, %bb.av ], [ %.sroa.058.0.i.i, %bb.be ], [ %.sroa.5.0.extract.trunc.i.i.i, %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.058.0.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i ]
  %.sroa.718.1.i.i = phi i16 [ %.sroa.718.0.i.i, %bb.av ], [ %.sroa.718.0.i.i, %bb.be ], [ %i.ec, %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.718.0.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i ] ; 3 uses
  %.sroa.517.1.i.i = phi i8 [ %i.eo, %bb.av ], [ %i.fp, %bb.be ], [ %.sroa.517.0.i.i, %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.517.0.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i ] ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsksn9slvsHfS_10image_webp18lossless_transform13TransformTypeEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dd)
          to label %bb.bs unwind label %bb.br, !noalias !615

bb.ax:                                            ; preds = %bb.bg, %bb.az, %bb.aq
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !615
  unreachable

.thread232.i.i:                                   ; preds = %bb.aj, %bb.ah
  %i.fj = phi i8 [ %.pre.i184.i.i, %bb.aj ], [ %i.dp, %bb.ah ]
  %i.fk = load i64, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !623, !noalias !624, !noundef !6 ; 2 uses
  %i.fl = lshr i64 %i.fk, 3
  store i64 %i.fl, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !623, !noalias !624
  %i.fm = add i8 %i.fj, -3
  store i8 %i.fm, ptr %.sroa.520.0..sroa_idx, align 8, !alias.scope !623, !noalias !624
  %i.fn = trunc i64 %i.fk to i8
  %i.fo = and i8 %i.fn, 7
  %i.fp = add nuw nsw i8 %i.fo, 2                 ; 2 uses
  %i.fq = zext nneg i8 %i.fp to i32               ; 3 uses
  %i.fr = zext i16 %.sroa.058.0.i.i to i32
  %notmask.i.i = shl nsw i32 -1, %i.fq
  %i.fs = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.ft = add nuw nsw i32 %i.fs, %i.fr
  %i.fu = lshr i32 %i.ft, %i.fq                   ; 2 uses
  %i.fv = load i16, ptr %i.bd, align 2, !alias.scope !614, !noalias !615, !noundef !6
  %i.fw = zext i16 %i.fv to i32
  %i.fx = add nuw nsw i32 %i.fs, %i.fw
  %i.fy = lshr i32 %i.fx, %i.fq                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !607
  %narrow.i.i = mul nuw nsw i32 %i.fu, %i.fy
  %i.fz = zext nneg i32 %narrow.i.i to i64
  %5 = shl nuw nsw i64 %i.fz, 2                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !638
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %5, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc63 unwind label %.loopexit.split-lp150.loopexit

.noexc63:                                         ; preds = %.thread232.i.i
  %i.ga = load i64, ptr %i.d, align 8, !range !13, !noalias !638, !noundef !6
  %i.gb = trunc nuw i64 %i.ga to i1
  %i.gc = load i64, ptr %i.cc, align 8, !range !14, !noalias !638, !noundef !6 ; 2 uses
  br i1 %i.gb, label %bb.ay, label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188.i.i, !prof !8

bb.ay:                                            ; preds = %.noexc63
  %i.gd = load i64, ptr %i.cd, align 8, !noalias !638
  br label %.invoke

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188.i.i: ; preds = %.noexc63
  %.sroa.5.0.extract.trunc.i163.i.i = trunc nuw nsw i32 %i.fu to i16
  %.sroa.5.0.extract.trunc.i158.i.i = trunc nuw nsw i32 %i.fy to i16
  %i.ge = load ptr, ptr %i.cd, align 8, !noalias !638, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !638
  store i64 %i.gc, ptr %i.o, align 8, !alias.scope !637, !noalias !607
  store ptr %i.ge, ptr %i.ce, align 8, !alias.scope !637, !noalias !607
  store i64 %5, ptr %i.cf, align 8, !alias.scope !637, !noalias !607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !607
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ab, i16 noundef %.sroa.5.0.extract.trunc.i163.i.i, i16 noundef %.sroa.5.0.extract.trunc.i158.i.i, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.ge, i64 noundef %5)
          to label %bb.ba unwind label %bb.az, !noalias !615

bb.az:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #24
          to label %.body unwind label %bb.ax, !noalias !615

bb.ba:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188.i.i
  %i.gg = load i8, ptr %i.n, align 8, !range !20, !noalias !607, !noundef !6 ; 2 uses
  %.not153.i.i = icmp eq i8 %i.gg, -1
  br i1 %.not153.i.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.sroa.15.0..sroa_idx182.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.15.0.copyload183.i = load i8, ptr %.sroa.15.0..sroa_idx182.i, align 1, !noalias !636
  %.sroa.21.0..sroa_idx186.i = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %.sroa.21.0.copyload187.i = load i16, ptr %.sroa.21.0..sroa_idx186.i, align 2, !noalias !636
  %.sroa.29.0..sroa_idx193.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.29.0..sroa_idx193.i, i64 28, i1 false), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !607
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit190.i.i unwind label %bb.bc, !noalias !615

bb.bc:                                            ; preds = %bb.bb
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.bd, !noalias !615

bb.bd:                                            ; preds = %bb.bc
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !615
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit190.i.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.noexc65 unwind label %.loopexit.split-lp150.loopexit.split-lp

.noexc65:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit190.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !607
  br label %.loopexit.i

bb.be:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.819.8..sroa_idx21.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !607
  br label %bb.aw

bb.bf:                                            ; preds = %.noexc59
  %i.gj = load i64, ptr %i.bz, align 8, !noalias !633
  br label %.invoke

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit191.i.i: ; preds = %.noexc59
  %i.gk = load ptr, ptr %i.bz, align 8, !noalias !633, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !633
  store i64 %i.eh, ptr %i.m, align 8, !alias.scope !632, !noalias !607
  store ptr %i.gk, ptr %i.ca, align 8, !alias.scope !632, !noalias !607
  store i64 %i.ee, ptr %i.cb, align 8, !alias.scope !632, !noalias !607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !607
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ab, i16 noundef %i.ec, i16 noundef 1, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.gk, i64 noundef %i.ee)
          to label %bb.bh unwind label %.loopexit249.i.i, !noalias !615

.loopexit249.i.i:                                 ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit191.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp.i.i:                           ; preds = %bb.bp
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit249.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit249.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #24
          to label %.body unwind label %bb.ax, !noalias !615

bb.bh:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit191.i.i
  %i.gl = load i8, ptr %i.l, align 8, !range !20, !noalias !607, !noundef !6 ; 2 uses
  %.not151.i.i = icmp eq i8 %i.gl, -1
  br i1 %.not151.i.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.15.0.copyload.i = load i8, ptr %.sroa.15.0..sroa_idx.i, align 1, !noalias !636
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %.sroa.21.0.copyload.i = load i16, ptr %.sroa.21.0..sroa_idx.i, align 2, !noalias !636
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.29.0..sroa_idx.i, i64 28, i1 false), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !607
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit193.i.i unwind label %bb.bj, !noalias !615

bb.bj:                                            ; preds = %bb.bi
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.bk, !noalias !615

bb.bk:                                            ; preds = %bb.bj
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !615
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit193.i.i: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc67 unwind label %.loopexit.split-lp150.loopexit.split-lp

.noexc67:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit193.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !607
  br label %.loopexit.i

bb.bl:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !607
  %i.go = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i.i.i, 2
  br i1 %i.go, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gp = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i.i.i, 4
  br i1 %i.gp, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gq = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i.i.i, 16
  %..i.i = zext i1 %i.gq to i32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %.sroa.056.0.i.i = phi i32 [ 2, %bb.bm ], [ %..i.i, %bb.bn ], [ 3, %bb.bl ] ; 2 uses
  %i.gr = zext i16 %.sroa.058.0.i.i to i32
  %i.gs = shl nuw nsw i32 1, %.sroa.056.0.i.i
  %i.gt = add nsw i32 %i.gr, -1
  %i.gu = add nsw i32 %i.gt, %i.gs
  %i.gv = lshr i32 %i.gu, %.sroa.056.0.i.i        ; 2 uses
  %i.gw = icmp samesign ugt i32 %i.gv, 65535
  %i.gx = shl nuw i32 %i.gv, 16
  %.sroa.0139.0.insert.insert.i.i = select i1 %i.gw, i32 513, i32 %i.gx ; 2 uses
  %i.gy = trunc i32 %.sroa.0139.0.insert.insert.i.i to i1
  br i1 %i.gy, label %bb.bp, label %bb.bq, !prof !8

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !607
  store i8 2, ptr %i.k, align 1, !noalias !607
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #23
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !615

.noexc.i.i:                                       ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %.sroa.5.0.extract.shift.i.i.i = lshr i32 %.sroa.0139.0.insert.insert.i.i, 16
  %.sroa.5.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.5.0.extract.shift.i.i.i to i16
  %i.gz = load ptr, ptr %i.ca, align 8, !noalias !607, !nonnull !6, !noundef !6 ; 3 uses
  %i.ha = load i64, ptr %i.cb, align 8, !noalias !607, !noundef !6 ; 3 uses
  %i.hb = icmp samesign ugt i64 %i.ha, 4
  br i1 %i.hb, label %.lr.ph.i.i.i.preheader, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.bq
  %i.hc = add i64 %i.ha, -4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.hc, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader542, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.hc, -4                      ; 3 uses
  %i.hd = add i64 %n.vec, 4
  %load_initial = load <4 x i8>, ptr %i.gz, align 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %store_forwarded = phi <4 x i8> [ %load_initial, %vector.ph ], [ %i.hg, %vector.body ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.he = getelementptr i8, ptr %i.gz, i64 %index
  %i.hf = getelementptr i8, ptr %i.he, i64 4      ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.hf, align 1, !alias.scope !639, !noalias !615
  %i.hg = add <4 x i8> %store_forwarded, %wide.load ; 2 uses
  store <4 x i8> %i.hg, ptr %i.hf, align 1, !alias.scope !639, !noalias !615
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !585

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hc, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit.i.i, label %.lr.ph.i.i.i.preheader542

.lr.ph.i.i.i.preheader542:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.01.04.i.i.i.ph = phi i64 [ 4, %.lr.ph.i.i.i.preheader ], [ %i.hd, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader542, %.lr.ph.i.i.i
  %.sroa.01.04.i.i.i = phi i64 [ %i.hj, %.lr.ph.i.i.i ], [ %.sroa.01.04.i.i.i.ph, %.lr.ph.i.i.i.preheader542 ] ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gz, i64 %.sroa.01.04.i.i.i ; 3 uses
  %i.hj = add nuw nsw i64 %.sroa.01.04.i.i.i, 1   ; 2 uses
  %i.hk = load i8, ptr %i.hi, align 1, !alias.scope !639, !noalias !615, !noundef !6
  %i.hl = getelementptr i8, ptr %i.hi, i64 -4
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !639, !noalias !615, !noundef !6
  %i.hn = add i8 %i.hm, %i.hk
  store i8 %i.hn, ptr %i.hi, align 1, !alias.scope !639, !noalias !615
  %exitcond.not.i.i.i = icmp eq i64 %i.hj, %i.ha
end_hunk_0
begin_hunk_1_@_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE15read_transformsCsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11197, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11197.0..sroa_idx, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !805
  br label %.loopexit247.a

bb.j:                                             ; preds = %.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.058.0, ptr %i.aw, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.bd

.loopexit247.a:                                   ; preds = %bb.h, %bb.i
  %.sroa.8196.0.ph = phi i8 [ %.sroa.8196.0.copyload, %bb.i ], [ undef, %bb.h ]
  %.sroa.0195.0.ph = phi i8 [ %i.au, %bb.i ], [ 15, %bb.h ]
  store i8 %.sroa.0195.0.ph, ptr %0, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.8196.0.ph, ptr %.sroa.479.0..sroa_idx, align 1
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.580.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11197, i64 30, i1 false)
  br label %bb.bd

.thread220:                                       ; preds = %..thread220_crit_edge, %bb.f
  %i.ax = phi i64 [ %.pre, %..thread220_crit_edge ], [ %i.aq, %bb.f ] ; 3 uses
  %i.ay = phi i8 [ %.pre.i178, %..thread220_crit_edge ], [ %i.ar, %bb.f ]
  %i.az = lshr i64 %i.ax, 2
  store i64 %i.az, ptr %i.t, align 8, !alias.scope !804, !noalias !806
  %i.ba = add i8 %i.ay, -2
  store i8 %i.ba, ptr %i.s, align 8, !alias.scope !804, !noalias !806
  %i.bb = trunc i64 %i.ax to i8
  %i.bc = and i8 %i.bb, 3                         ; 4 uses
  %i.bd = and i64 %i.ax, 3
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.bd ; 10 uses
  %i.bf = load i8, ptr %i.be, align 8, !range !23, !noundef !6
  %.not149 = icmp eq i8 %i.bf, -1
  br i1 %.not149, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.thread220
  %i.bg = load i64, ptr %i.v, align 8, !alias.scope !807, !noundef !6 ; 3 uses
  %i.bh = load i64, ptr %1, align 8, !range !16, !alias.scope !807, !noundef !6
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.l, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #29
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.k, %bb.l
  %i.bj = load ptr, ptr %i.w, align 8, !alias.scope !807, !nonnull !6, !noundef !6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg
  store i8 %i.bc, ptr %i.bk, align 1
  %i.bl = add i64 %i.bg, 1
  store i64 %i.bl, ptr %i.v, align 8, !alias.scope !807
  switch i8 %i.bc, label %default.unreachable432 [
    i8 0, label %bb.n
    i8 1, label %bb.r
    i8 2, label %bb.ag
    i8 3, label %bb.v
  ], !prof !24

bb.m:                                             ; preds = %.thread220
  store i8 16, ptr %0, align 8
  br label %bb.bd

default.unreachable432:                           ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit
  unreachable

bb.n:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.bm = load i8, ptr %i.s, align 8, !alias.scope !808, !noalias !809, !noundef !6 ; 2 uses
  %i.bn = icmp ult i8 %i.bm, 3
  br i1 %i.bn, label %bb.o, label %.thread226

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !810
  call fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r), !noalias !809
  %i.bo = load i8, ptr %i.f, align 8, !range !20, !noalias !810, !noundef !6 ; 2 uses
  %.not.i180 = icmp eq i8 %i.bo, -1
  br i1 %.not.i180, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !810
  %.pre.i181 = load i8, ptr %i.s, align 8, !alias.scope !808, !noalias !809 ; 2 uses
  %i.bp = icmp ult i8 %.pre.i181, 3
  br i1 %i.bp, label %.loopexit251, label %.thread226

bb.q:                                             ; preds = %bb.o
  %.sroa.8199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.8199.0.copyload = load i8, ptr %.sroa.8199.0..sroa_idx, align 1, !noalias !808
  %.sroa.11200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11200, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11200.0..sroa_idx, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !810
  br label %.loopexit251

bb.r:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.bq = load i8, ptr %i.s, align 8, !alias.scope !811, !noalias !812, !noundef !6 ; 2 uses
  %i.br = icmp ult i8 %i.bq, 3
  br i1 %i.br, label %bb.s, label %.thread232

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !813
  call fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r), !noalias !812
  %i.bs = load i8, ptr %i.e, align 8, !range !20, !noalias !813, !noundef !6 ; 2 uses
  %.not.i183 = icmp eq i8 %i.bs, -1
  br i1 %.not.i183, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !813
  %.pre.i184 = load i8, ptr %i.s, align 8, !alias.scope !811, !noalias !812 ; 2 uses
  %i.bt = icmp ult i8 %.pre.i184, 3
  br i1 %i.bt, label %.loopexit250, label %.thread232

bb.u:                                             ; preds = %bb.s
  %.sroa.8202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.8202.0.copyload = load i8, ptr %.sroa.8202.0..sroa_idx, align 1, !noalias !811
  %.sroa.11203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11203, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11203.0..sroa_idx, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !813
  br label %.loopexit250

bb.v:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.bu = load i8, ptr %i.s, align 8, !alias.scope !814, !noalias !815, !noundef !6 ; 2 uses
  %i.bv = icmp ult i8 %i.bu, 8
  br i1 %i.bv, label %bb.w, label %.thread238

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !816
  call fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r), !noalias !815
  %i.bw = load i8, ptr %i.d, align 8, !range !20, !noalias !816, !noundef !6 ; 2 uses
  %.not.i186 = icmp eq i8 %i.bw, -1
  br i1 %.not.i186, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !816
  %.pre.i187 = load i8, ptr %i.s, align 8, !alias.scope !814, !noalias !815 ; 2 uses
  %i.bx = icmp ult i8 %.pre.i187, 8
  br i1 %i.bx, label %.loopexit248.a, label %.thread238

bb.y:                                             ; preds = %bb.w
  %.sroa.8205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.8205.0.copyload = load i8, ptr %.sroa.8205.0..sroa_idx, align 1, !noalias !814
  %.sroa.9206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.9206.0.copyload = load i16, ptr %.sroa.9206.0..sroa_idx, align 2, !noalias !814
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !816
  br label %.loopexit248.a

.thread238:                                       ; preds = %bb.v, %bb.x
  %i.by = phi i8 [ %.pre.i187, %bb.x ], [ %i.bu, %bb.v ]
  %i.bz = load i64, ptr %i.t, align 8, !alias.scope !814, !noalias !815, !noundef !6 ; 2 uses
  %i.ca = lshr i64 %i.bz, 8
  store i64 %i.ca, ptr %i.t, align 8, !alias.scope !814, !noalias !815
  %i.cb = add i8 %i.by, -8
  store i8 %i.cb, ptr %i.s, align 8, !alias.scope !814, !noalias !815
  %i.cc = trunc i64 %i.bz to i16
  %.sroa.519.0.extract.trunc.i = and i16 %i.cc, 255 ; 4 uses
  %i.cd = add nuw nsw i16 %.sroa.519.0.extract.trunc.i, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ce = shl nuw nsw i16 %i.cd, 2
  %i.cf = zext nneg i16 %i.ce to i64              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !817
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.cf, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !817
  %i.cg = load i64, ptr %i.a, align 8, !range !13, !noalias !817, !noundef !6
  %i.ch = trunc nuw i64 %i.cg to i1
  %i.ci = load i64, ptr %i.x, align 8, !range !14, !noalias !817, !noundef !6 ; 2 uses
  br i1 %i.ch, label %bb.ap, label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit191, !prof !8

.loopexit251:                                     ; preds = %bb.p, %bb.q
  %.sroa.8199.0.ph = phi i8 [ %.sroa.8199.0.copyload, %bb.q ], [ undef, %bb.p ]
  %.sroa.0198.0.ph = phi i8 [ %i.bo, %bb.q ], [ 15, %bb.p ]
  store i8 %.sroa.0198.0.ph, ptr %0, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.8199.0.ph, ptr %.sroa.491.0..sroa_idx, align 1
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.592.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11200, i64 30, i1 false)
  br label %bb.bd

.thread226:                                       ; preds = %bb.n, %bb.p
  %i.cj = phi i8 [ %.pre.i181, %bb.p ], [ %i.bm, %bb.n ]
  %i.ck = load i64, ptr %i.t, align 8, !alias.scope !808, !noalias !809, !noundef !6 ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  store i64 %i.cl, ptr %i.t, align 8, !alias.scope !808, !noalias !809
  %i.cm = add i8 %i.cj, -3
  store i8 %i.cm, ptr %i.s, align 8, !alias.scope !808, !noalias !809
  %i.cn = trunc i64 %i.ck to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = add nuw nsw i8 %i.co, 2                 ; 2 uses
  %i.cq = zext nneg i8 %i.cp to i32               ; 3 uses
  %i.cr = zext i16 %.sroa.058.0 to i32
  %notmask433 = shl nsw i32 -1, %i.cq
  %i.cs = xor i32 %notmask433, -1                 ; 2 uses
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = lshr i32 %i.ct, %i.cq                   ; 2 uses
  %i.cv = load i16, ptr %i.ab, align 2, !noundef !6
  %i.cw = zext i16 %i.cv to i32
  %i.cx = add nuw nsw i32 %i.cs, %i.cw
  %i.cy = lshr i32 %i.cx, %i.cq                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %narrow246 = mul nuw nsw i32 %i.cu, %i.cy
  %i.cz = zext nneg i32 %narrow246 to i64
  %2 = shl nuw nsw i64 %i.cz, 2                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !818
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !818
  %i.da = load i64, ptr %i.c, align 8, !range !13, !noalias !818, !noundef !6
  %i.db = trunc nuw i64 %i.da to i1
  %i.dc = load i64, ptr %i.ag, align 8, !range !14, !noalias !818, !noundef !6 ; 2 uses
  br i1 %i.db, label %bb.z, label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, !prof !8

bb.z:                                             ; preds = %.thread226
  %i.dd = load i64, ptr %i.ah, align 8, !noalias !818
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.dc, i64 %i.dd) #26, !noalias !818
  unreachable

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit: ; preds = %.thread226
  %.sroa.5.0.extract.trunc.i173 = trunc nuw nsw i32 %i.cu to i16
  %.sroa.5.0.extract.trunc.i168 = trunc nuw nsw i32 %i.cy to i16
  %i.de = load ptr, ptr %i.ah, align 8, !noalias !818, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !818
  store i64 %i.dc, ptr %i.o, align 8, !alias.scope !818
  store ptr %i.de, ptr %i.ai, align 8, !alias.scope !818
  store i64 %2, ptr %i.aj, align 8, !alias.scope !818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef align 8 dereferenceable(200) %1, i16 noundef %.sroa.5.0.extract.trunc.i173, i16 noundef %.sroa.5.0.extract.trunc.i168, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.de, i64 noundef %2)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #24
          to label %common.resume unwind label %bb.ah

bb.ab:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit
  %i.dg = load i8, ptr %i.n, align 8, !range !20, !noundef !6
  %.not155 = icmp eq i8 %i.dg, -1
  br i1 %.not155, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.at, %bb.am, %bb.aa, %bb.aj, %bb.aq, %bb.bb, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.ei, %bb.am ], [ %i.dh, %bb.ad ], [ %i.eg, %bb.aj ], [ %lpad.phi, %bb.aq ], [ %i.fp, %bb.bb ], [ %i.df, %bb.aa ], [ %i.en, %bb.at ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.ac
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bd

bb.af:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.819.8..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit, %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit, %bb.ao, %bb.af
  %.sroa.058.1 = phi i16 [ %.sroa.058.0, %bb.af ], [ %.sroa.058.0, %bb.ao ], [ %.sroa.5.0.extract.trunc.i, %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit ], [ %.sroa.058.0, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit ]
  %.sroa.718.1 = phi i16 [ %.sroa.718.0, %bb.af ], [ %.sroa.718.0, %bb.ao ], [ %i.cd, %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit ], [ %.sroa.718.0, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit ] ; 3 uses
  %.sroa.517.1 = phi i8 [ %i.cp, %bb.af ], [ %i.dq, %bb.ao ], [ %.sroa.517.0, %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit ], [ %.sroa.517.0, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit ] ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsksn9slvsHfS_10image_webp18lossless_transform13TransformTypeEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.be)
          to label %bb.bc unwind label %bb.bb

bb.ah:                                            ; preds = %bb.aq, %bb.aj, %bb.aa
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

.loopexit250:                                     ; preds = %bb.t, %bb.u
  %.sroa.8202.0.ph = phi i8 [ %.sroa.8202.0.copyload, %bb.u ], [ undef, %bb.t ]
  %.sroa.0201.0.ph = phi i8 [ %i.bs, %bb.u ], [ 15, %bb.t ]
  store i8 %.sroa.0201.0.ph, ptr %0, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.8202.0.ph, ptr %.sroa.4106.0..sroa_idx, align 1
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5107.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11203, i64 30, i1 false)
  br label %bb.bd

.thread232:                                       ; preds = %bb.r, %bb.t
  %i.dk = phi i8 [ %.pre.i184, %bb.t ], [ %i.bq, %bb.r ]
  %i.dl = load i64, ptr %i.t, align 8, !alias.scope !811, !noalias !812, !noundef !6 ; 2 uses
  %i.dm = lshr i64 %i.dl, 3
  store i64 %i.dm, ptr %i.t, align 8, !alias.scope !811, !noalias !812
  %i.dn = add i8 %i.dk, -3
  store i8 %i.dn, ptr %i.s, align 8, !alias.scope !811, !noalias !812
  %i.do = trunc i64 %i.dl to i8
  %i.dp = and i8 %i.do, 7
  %i.dq = add nuw nsw i8 %i.dp, 2                 ; 2 uses
  %i.dr = zext nneg i8 %i.dq to i32               ; 3 uses
  %i.ds = zext i16 %.sroa.058.0 to i32
  %notmask = shl nsw i32 -1, %i.dr
  %i.dt = xor i32 %notmask, -1                    ; 2 uses
  %i.du = add nuw nsw i32 %i.dt, %i.ds
  %i.dv = lshr i32 %i.du, %i.dr                   ; 2 uses
  %i.dw = load i16, ptr %i.ab, align 2, !noundef !6
  %i.dx = zext i16 %i.dw to i32
  %i.dy = add nuw nsw i32 %i.dt, %i.dx
  %i.dz = lshr i32 %i.dy, %i.dr                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %narrow = mul nuw nsw i32 %i.dv, %i.dz
  %i.ea = zext nneg i32 %narrow to i64
  %3 = shl nuw nsw i64 %i.ea, 2                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !819
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %3, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !819
  %i.eb = load i64, ptr %i.b, align 8, !range !13, !noalias !819, !noundef !6
  %i.ec = trunc nuw i64 %i.eb to i1
  %i.ed = load i64, ptr %i.ac, align 8, !range !14, !noalias !819, !noundef !6 ; 2 uses
  br i1 %i.ec, label %bb.ai, label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188, !prof !8

bb.ai:                                            ; preds = %.thread232
  %i.ee = load i64, ptr %i.ad, align 8, !noalias !819
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ed, i64 %i.ee) #26, !noalias !819
  unreachable

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188: ; preds = %.thread232
  %.sroa.5.0.extract.trunc.i163 = trunc nuw nsw i32 %i.dv to i16
  %.sroa.5.0.extract.trunc.i158 = trunc nuw nsw i32 %i.dz to i16
  %i.ef = load ptr, ptr %i.ad, align 8, !noalias !819, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !819
  store i64 %i.ed, ptr %i.m, align 8, !alias.scope !819
  store ptr %i.ef, ptr %i.ae, align 8, !alias.scope !819
  store i64 %3, ptr %i.af, align 8, !alias.scope !819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef align 8 dereferenceable(200) %1, i16 noundef %.sroa.5.0.extract.trunc.i163, i16 noundef %.sroa.5.0.extract.trunc.i158, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.ef, i64 noundef %3)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #24
          to label %common.resume unwind label %bb.ah

bb.ak:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188
  %i.eh = load i8, ptr %i.l, align 8, !range !20, !noundef !6
  %.not153 = icmp eq i8 %i.eh, -1
  br i1 %.not153, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit190 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit190: ; preds = %bb.al
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bd

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.819.8..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ag

.loopexit248.a:                                   ; preds = %bb.x, %bb.y
  %.sroa.9206.1.ph = phi i16 [ %.sroa.9206.0.copyload, %bb.y ], [ undef, %bb.x ]
  %.sroa.8205.0.ph = phi i8 [ %.sroa.8205.0.copyload, %bb.y ], [ undef, %bb.x ]
  %.sroa.0204.0.ph = phi i8 [ %i.bw, %bb.y ], [ 15, %bb.x ]
  store i8 %.sroa.0204.0.ph, ptr %0, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.8205.0.ph, ptr %.sroa.4120.0..sroa_idx, align 1
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.9206.1.ph, ptr %.sroa.5121.0..sroa_idx, align 2
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6122.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12, i64 28, i1 false)
  br label %bb.bd

bb.ap:                                            ; preds = %.thread238
  %i.ek = load i64, ptr %i.y, align 8, !noalias !817
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ci, i64 %i.ek) #26, !noalias !817
  unreachable

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit191: ; preds = %.thread238
  %i.el = load ptr, ptr %i.y, align 8, !noalias !817, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !817
  store i64 %i.ci, ptr %i.k, align 8, !alias.scope !817
  store ptr %i.el, ptr %i.z, align 8, !alias.scope !817
  store i64 %i.cf, ptr %i.aa, align 8, !alias.scope !817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef align 8 dereferenceable(200) %1, i16 noundef %i.cd, i16 noundef 1, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.el, i64 noundef %i.cf)
          to label %bb.ar unwind label %.loopexit249

.loopexit249:                                     ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit191
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp:                               ; preds = %bb.az
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp, %.loopexit249
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit249 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #24
          to label %common.resume unwind label %bb.ah

bb.ar:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit191
  %i.em = load i8, ptr %i.j, align 8, !range !20, !noundef !6
  %.not151 = icmp eq i8 %i.em, -1
  br i1 %.not151, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit193 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit193: ; preds = %bb.as
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bd

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ep = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i, 2
  br i1 %i.ep, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eq = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i, 4
  br i1 %i.eq, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.er = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i, 16
  %. = zext i1 %i.er to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av
  %.sroa.056.0 = phi i32 [ 2, %bb.aw ], [ %., %bb.ax ], [ 3, %bb.av ] ; 2 uses
  %i.es = zext i16 %.sroa.058.0 to i32
  %i.et = shl nuw nsw i32 1, %.sroa.056.0
  %i.eu = add nsw i32 %i.es, -1
  %i.ev = add nsw i32 %i.eu, %i.et
  %i.ew = lshr i32 %i.ev, %.sroa.056.0            ; 2 uses
  %i.ex = icmp samesign ugt i32 %i.ew, 65535
  %i.ey = shl nuw i32 %i.ew, 16
  %.sroa.0139.0.insert.insert = select i1 %i.ex, i32 513, i32 %i.ey ; 2 uses
  %i.ez = trunc i32 %.sroa.0139.0.insert.insert to i1
  br i1 %i.ez, label %bb.az, label %bb.ba, !prof !8

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 2, ptr %i.i, align 1
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.0139.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  %i.fa = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.fb = load i64, ptr %i.aa, align 8, !noundef !6 ; 3 uses
  %i.fc = icmp samesign ugt i64 %i.fb, 4
  br i1 %i.fc, label %.lr.ph.i.preheader, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit

.lr.ph.i.preheader:                               ; preds = %bb.ba
  %i.fd = add i64 %i.fb, -4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.fd, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader595, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.fd, -4                      ; 3 uses
  %i.fe = add i64 %n.vec, 4
  %load_initial = load <4 x i8>, ptr %i.fa, align 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %store_forwarded = phi <4 x i8> [ %load_initial, %vector.ph ], [ %i.fh, %vector.body ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fa, i64 %index
  %i.fg = getelementptr i8, ptr %i.ff, i64 4      ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.fg, align 1, !alias.scope !820
  %i.fh = add <4 x i8> %store_forwarded, %wide.load ; 2 uses
  store <4 x i8> %i.fh, ptr %i.fg, align 1, !alias.scope !820
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !799

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fd, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i.preheader595

.lr.ph.i.preheader595:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.01.04.i.ph = phi i64 [ 4, %.lr.ph.i.preheader ], [ %i.fe, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader595, %.lr.ph.i
  %.sroa.01.04.i = phi i64 [ %i.fk, %.lr.ph.i ], [ %.sroa.01.04.i.ph, %.lr.ph.i.preheader595 ] ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fa, i64 %.sroa.01.04.i ; 3 uses
  %i.fk = add nuw nsw i64 %.sroa.01.04.i, 1       ; 2 uses
  %i.fl = load i8, ptr %i.fj, align 1, !alias.scope !820, !noundef !6
  %i.fm = getelementptr i8, ptr %i.fj, i64 -4
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !820, !noundef !6
  %i.fo = add i8 %i.fn, %i.fl
  store i8 %i.fo, ptr %i.fj, align 1, !alias.scope !820
  %exitcond.not.i = icmp eq i64 %i.fk, %i.fb
  br i1 %exitcond.not.i, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i, !llvm.loop !800

end_hunk_1
begin_hunk_2_@_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image:bb.a
  br i1 %4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread192, %bb.am, %bb.m
  %.sroa.022.0.i = phi i16 [ %.sroa.5.0.extract.trunc.i.i, %bb.am ], [ 1, %bb.m ], [ 1, %.thread192 ]
  %i.cl = phi i16 [ %.sroa.5.0.extract.trunc.i99.i, %bb.am ], [ 1, %bb.m ], [ 1, %.thread192 ] ; 2 uses
  %i.cm = phi i8 [ %i.dv, %bb.am ], [ 0, %bb.m ], [ 0, %.thread192 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !942
  store i64 0, ptr %i.as, align 8, !noalias !942
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8, !noalias !942
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i64 0, ptr %i.co, align 8, !noalias !942
  %i.cp = load i32, ptr %i.ay, align 4, !noalias !942, !noundef !6 ; 2 uses
  %.not388 = icmp eq i32 %i.cp, 0
  br i1 %.not388, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE18read_huffman_codesCsa5QsYiPB8Gl_5image.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.8224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.11.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %.sroa.8226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.11227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.sroa.8229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.11230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %.sroa.8232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 12 uses
  %.sroa.7178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.8179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.11180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.6152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 4 uses
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 9 ; 9 uses
  %.sroa.5151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 10 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.sroa.8234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.9235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.12236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.8238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.9239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.12240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %.sroa.6.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %.sroa.6.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.589.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %.sroa.6.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.8180.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.sroa.11.i.sroa.4.0..sroa.11.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.8182.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.11183.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.11183.i.sroa.4.0..sroa.11183.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.8185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.9186.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.4125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.6127.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.8188.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.9189.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.12190.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.27.8..sroa_idx246.i = getelementptr inbounds nuw i8, ptr %.sroa.12190.i.i, i64 4 ; 2 uses
  %.sroa.5163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.6164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  br label %bb.ao

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  %i.dc = load i8, ptr %i.bf, align 8, !alias.scope !943, !noalias !944, !noundef !6 ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.p, label %.thread192

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !945
  invoke fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.be)
          to label %.noexc86 unwind label %bb.s

.noexc86:                                         ; preds = %bb.p
  %i.de = load i8, ptr %i.c, align 8, !range !20, !noalias !945, !noundef !6 ; 2 uses
  %.not.i84 = icmp eq i8 %i.de, -1
  br i1 %.not.i84, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !945
  %.pre.i85 = load i8, ptr %i.bf, align 8, !alias.scope !943, !noalias !944 ; 2 uses
  %i.df = icmp eq i8 %.pre.i85, 0
  br i1 %i.df, label %bb.t, label %.thread192

bb.r:                                             ; preds = %.noexc86
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 1, !noalias !946
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11.0..sroa_idx, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !945
  br label %bb.t

.body43:                                          ; preds = %bb.af, %bb.s, %bb.et, %.body46, %bb.ab
  %.pn94.i = phi { ptr, i32 } [ %.pn.i, %bb.ab ], [ %.pn92.i, %.body46 ], [ %i.mt, %bb.et ], [ %i.dg, %bb.s ], [ %i.eq, %bb.af ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #24
          to label %.body unwind label %bb.an, !noalias !947, !inline_history !839

bb.s:                                             ; preds = %bb.ag, %bb.z, %.thread198, %bb.p, %bb.v, %bb.eu, %bb.al
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body43

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.8.0.ph = phi i8 [ undef, %bb.q ], [ %.sroa.8.0.copyload, %bb.r ]
  %.sroa.0126.0.ph = phi i8 [ 15, %bb.q ], [ %i.de, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.18, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11, i64 30, i1 false)
  br label %bb.ew

.thread192:                                       ; preds = %bb.o, %bb.q
  %i.dh = phi i8 [ %.pre.i85, %bb.q ], [ %i.dc, %bb.o ] ; 2 uses
  %i.di = load i64, ptr %i.bl, align 8, !alias.scope !943, !noalias !944, !noundef !6 ; 2 uses
  %i.dj = lshr i64 %i.di, 1                       ; 2 uses
  store i64 %i.dj, ptr %i.bl, align 8, !alias.scope !943, !noalias !944
  %i.dk = add i8 %i.dh, -1                        ; 2 uses
  store i8 %i.dk, ptr %i.bf, align 8, !alias.scope !943, !noalias !944
  %i.dl = and i64 %i.di, 1
  %.not = icmp eq i64 %i.dl, 0
  br i1 %.not, label %bb.n, label %bb.u

bb.u:                                             ; preds = %.thread192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.dm = icmp ult i8 %i.dh, 4
  br i1 %i.dm, label %bb.v, label %.thread198

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !949
  invoke fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.be)
          to label %.noexc83 unwind label %bb.s

.noexc83:                                         ; preds = %bb.v
  %i.dn = load i8, ptr %i.d, align 8, !range !20, !noalias !949, !noundef !6 ; 2 uses
  %.not.i81 = icmp eq i8 %i.dn, -1
  br i1 %.not.i81, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !949
  %.pre.i82 = load i8, ptr %i.bf, align 8, !alias.scope !948, !noalias !950 ; 2 uses
  %i.do = icmp ult i8 %.pre.i82, 3
  br i1 %i.do, label %bb.y, label %..thread198_crit_edge

..thread198_crit_edge:                            ; preds = %bb.w
  %.pre = load i64, ptr %i.bl, align 8, !alias.scope !948, !noalias !950
  br label %.thread198

bb.x:                                             ; preds = %.noexc83
  %.sroa.8128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.8128.0.copyload = load i8, ptr %.sroa.8128.0..sroa_idx, align 1, !noalias !951
  %.sroa.11129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11129, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11129.0..sroa_idx, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !949
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.8128.0.ph = phi i8 [ undef, %bb.w ], [ %.sroa.8128.0.copyload, %bb.x ]
  %.sroa.0127.0.ph = phi i8 [ 15, %bb.w ], [ %i.dn, %bb.x ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.18, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11129, i64 30, i1 false)
  br label %bb.ew

.thread198:                                       ; preds = %..thread198_crit_edge, %bb.u
  %i.dp = phi i64 [ %.pre, %..thread198_crit_edge ], [ %i.dj, %bb.u ] ; 2 uses
  %i.dq = phi i8 [ %.pre.i82, %..thread198_crit_edge ], [ %i.dk, %bb.u ]
  %i.dr = lshr i64 %i.dp, 3
  store i64 %i.dr, ptr %i.bl, align 8, !alias.scope !948, !noalias !950
  %i.ds = add i8 %i.dq, -3
  store i8 %i.ds, ptr %i.bf, align 8, !alias.scope !948, !noalias !950
  %i.dt = trunc i64 %i.dp to i8
  %i.du = and i8 %i.dt, 7
  %i.dv = add nuw nsw i8 %i.du, 2                 ; 2 uses
  %i.dw = zext nneg i8 %i.dv to i32               ; 3 uses
  %i.dx = zext i16 %2 to i32
  %notmask = shl nsw i32 -1, %i.dw
  %i.dy = xor i32 %notmask, -1                    ; 2 uses
  %i.dz = add nuw nsw i32 %i.dy, %i.dx
  %i.ea = lshr i32 %i.dz, %i.dw                   ; 2 uses
  %.sroa.5.0.extract.trunc.i99.i = trunc nuw nsw i32 %i.ea to i16 ; 2 uses
  %i.eb = zext i16 %3 to i32
  %i.ec = add nuw nsw i32 %i.dy, %i.eb
  %i.ed = lshr i32 %i.ec, %i.dw                   ; 2 uses
  %.sroa.5.0.extract.trunc.i.i = trunc nuw nsw i32 %i.ed to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !942
  %narrow = mul nuw nsw i32 %i.ea, %i.ed
  %i.ee = zext nneg i32 %narrow to i64
  %7 = shl nuw nsw i64 %i.ee, 2                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !953
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %7, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc807 unwind label %bb.s

.noexc807:                                        ; preds = %.thread198
  %i.ef = load i64, ptr %i.a, align 8, !range !13, !noalias !953, !noundef !6
  %i.eg = trunc nuw i64 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !range !14, !noalias !953, !noundef !6 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.eg, label %bb.z, label %bb.aa, !prof !8

bb.z:                                             ; preds = %.noexc807
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !953
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ei, i64 %i.ek) #26
          to label %.noexc808 unwind label %bb.s

.noexc808:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.noexc807
  %i.el = load ptr, ptr %i.ej, align 8, !noalias !953, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !953
  store i64 %i.ei, ptr %i.aw, align 8, !alias.scope !952, !noalias !947
  %i.em = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !alias.scope !952, !noalias !947
  %i.en = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  store i64 %7, ptr %i.en, align 8, !alias.scope !952, !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !942
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1, i16 noundef %.sroa.5.0.extract.trunc.i99.i, i16 noundef %.sroa.5.0.extract.trunc.i.i, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.el, i64 noundef %7)
          to label %bb.ad unwind label %bb.ac, !noalias !947, !inline_history !839

bb.ab:                                            ; preds = %bb.ak, %bb.ac
  %.pn.i = phi { ptr, i32 } [ %i.ey, %bb.ak ], [ %i.eo, %bb.ac ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #24
          to label %.body43 unwind label %bb.an, !noalias !947, !inline_history !839

bb.ac:                                            ; preds = %bb.ai, %bb.aa
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %bb.aa
  %i.ep = load i8, ptr %i.av, align 8, !range !20, !noalias !942, !noundef !6 ; 2 uses
  %.not87.i = icmp eq i8 %i.ep, -1
  br i1 %.not87.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %.sroa.4157.0.copyload = load i8, ptr %.sroa.4157.0..sroa_idx, align 1, !noalias !942
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.18, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5158.0..sroa_idx, i64 30, i1 false), !noalias !954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !942
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.ag unwind label %bb.af, !noalias !947

bb.af:                                            ; preds = %bb.ae
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body43 unwind label %bb.ah, !noalias !947

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit unwind label %bb.s

bb.ah:                                            ; preds = %bb.af
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !947
  unreachable

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !942
  %i.es = load ptr, ptr %i.em, align 8, !noalias !942, !nonnull !6, !noundef !6 ; 2 uses
  %i.et = load i64, ptr %i.en, align 8, !noalias !942, !noundef !6 ; 2 uses
  %i.eu = and i64 %i.et, 3
  %i.ev = and i64 %i.et, -4                       ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ev
  store ptr %i.es, ptr %i.at, align 8, !noalias !942
  %.sroa.4131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.ev, ptr %.sroa.4131.0..sroa_idx, align 8, !noalias !942
  %.sroa.5132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ew, ptr %.sroa.5132.0..sroa_idx, align 8, !noalias !942
  %.sroa.6133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.eu, ptr %.sroa.6133.0..sroa_idx, align 8, !noalias !942
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !942
  %i.ex = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %i.ay, ptr %i.ex, align 8, !noalias !942
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VectEINtB2_12SpecFromItertINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter11ChunksExacthENCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2L_15LosslessDecoderINtNtNtB1q_2io4util4TakeQINtNtB3P_6cursor6CursorRShEEE18read_huffman_codes0EE9from_iterCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.at)
          to label %bb.aj unwind label %bb.ac, !noalias !947, !inline_history !839

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !942
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax)
          to label %bb.al unwind label %bb.ak, !noalias !947, !inline_history !839

bb.ak:                                            ; preds = %bb.aj
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !942
  br label %bb.ab

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !942
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw)
          to label %bb.am unwind label %bb.s, !noalias !947, !inline_history !839

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !942
  br label %bb.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !942
  br label %bb.ew

bb.an:                                            ; preds = %.body, %.body79, %.body46, %bb.ab, %.body43
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !955, !inline_history !839
  unreachable

bb.ao:                                            ; preds = %.lr.ph, %bb.au
  %.sroa.071.0.i387 = phi i32 [ 0, %.lr.ph ], [ %i.fa, %bb.au ]
  %i.fa = add nuw i32 %.sroa.071.0.i387, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !942
  invoke void @_RNvXs10_NtCsj6eKBz9Db1c_4core5arrayANtNtCsksn9slvsHfS_10image_webp7huffman11HuffmanTreej5_NtNtB8_7default7Default7defaultCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(none) dereferenceable(280) %i.ar)
          to label %.preheader unwind label %bb.ap, !noalias !947, !inline_history !839

.body46:                                          ; preds = %bb.eo, %bb.ep, %bb.as, %bb.ap, %.body79
  %.pn92.i = phi { ptr, i32 } [ %i.ff, %bb.as ], [ %.pn90.i207, %.body79 ], [ %i.fb, %bb.ap ], [ %i.mo, %bb.ep ], [ %i.mo, %bb.eo ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecANtNtCsksn9slvsHfS_10image_webp7huffman11HuffmanTreej5_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as) #24
          to label %.body43 unwind label %bb.an, !noalias !947, !inline_history !839

bb.ap:                                            ; preds = %bb.ao
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.aq:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ap, ptr noundef nonnull align 8 dereferenceable(280) %i.ar, i64 280, i1 false), !noalias !942
  %i.fc = load i64, ptr %i.co, align 8, !alias.scope !956, !noalias !957, !noundef !6 ; 3 uses
  %i.fd = load i64, ptr %i.as, align 8, !range !16, !alias.scope !956, !noalias !957, !noundef !6
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecANtNtCsksn9slvsHfS_10image_webp7huffman11HuffmanTreej5_E8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.au unwind label %bb.as, !noalias !957

bb.as:                                            ; preds = %bb.ar
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueANtNtCsksn9slvsHfS_10image_webp7huffman11HuffmanTreej5_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.ap) #24
          to label %.body46 unwind label %bb.at, !noalias !947

bb.at:                                            ; preds = %bb.as
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !947
  unreachable

.preheader:                                       ; preds = %bb.ao, %bb.es
  %.sroa.073.0.i386 = phi i64 [ %i.fh, %bb.es ], [ 0, %bb.ao ] ; 4 uses
  %i.fh = add nuw nsw i64 %.sroa.073.0.i386, 1    ; 2 uses
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr @89, i64 %.sroa.073.0.i386
  %i.fj = load i16, ptr %i.fi, align 2, !noalias !942, !noundef !6 ; 2 uses
  %i.fk = icmp ne i64 %.sroa.073.0.i386, 0
  %i.fl = load i64, ptr %i.bd, align 8, !range !15, !alias.scope !941, !noalias !958
  %.not89.i = icmp eq i64 %i.fl, -1
  %or.cond.i = select i1 %i.fk, i1 true, i1 %.not89.i
  br i1 %or.cond.i, label %bb.av, label %bb.eh

.loopexit:                                        ; preds = %bb.aw, %bb.bb, %bb.be, %bb.bk, %bb.bo, %bb.cc, %.noexc213.i, %._crit_edge.i.i, %.thread296.i, %bb.dy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i, %bb.by
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body79

.loopexit.split-lp:                               ; preds = %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body79

bb.au:                                            ; preds = %bb.ar, %bb.aq
  %i.fm = load ptr, ptr %i.cn, align 8, !alias.scope !956, !noalias !957, !nonnull !6, !noundef !6
  %i.fn = getelementptr inbounds nuw [280 x i8], ptr %i.fm, i64 %i.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.fn, ptr noundef nonnull align 8 dereferenceable(280) %i.ap, i64 280, i1 false), !noalias !947
  %i.fo = add i64 %i.fc, 1
  store i64 %i.fo, ptr %i.co, align 8, !alias.scope !956, !noalias !957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !942
  %exitcond529.not = icmp eq i32 %i.fa, %i.cp
  br i1 %exitcond529.not, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE18read_huffman_codesCsa5QsYiPB8Gl_5image.exit, label %bb.ao

bb.av:                                            ; preds = %bb.eh, %.preheader
  %.sroa.029.0.i = phi i16 [ %i.fj, %.preheader ], [ %i.me, %bb.eh ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.634.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !942
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12190.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12240.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8234.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12236.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11230.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11227.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !961), !noalias !947
  %i.fp = load i8, ptr %i.bf, align 8, !alias.scope !962, !noalias !963, !noundef !6 ; 2 uses
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.aw, label %.thread.i49

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !964
  invoke fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.be)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.aw
  %i.fr = load i8, ptr %i.u, align 8, !range !20, !noalias !964, !noundef !6 ; 2 uses
  %.not.i.i61 = icmp eq i8 %i.fr, -1
  br i1 %.not.i.i61, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.noexc
end_hunk_2
begin_hunk_3_@_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image:bb.a
  br i1 %4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread192, %bb.am, %bb.m
  %.sroa.022.0.i = phi i16 [ %.sroa.5.0.extract.trunc.i.i, %bb.am ], [ 1, %bb.m ], [ 1, %.thread192 ]
  %i.cl = phi i16 [ %.sroa.5.0.extract.trunc.i99.i, %bb.am ], [ 1, %bb.m ], [ 1, %.thread192 ] ; 2 uses
  %i.cm = phi i8 [ %i.dv, %bb.am ], [ 0, %bb.m ], [ 0, %.thread192 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1185
  store i64 0, ptr %i.as, align 8, !noalias !1185
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8, !noalias !1185
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i64 0, ptr %i.co, align 8, !noalias !1185
  %i.cp = load i32, ptr %i.ay, align 4, !noalias !1185, !noundef !6 ; 2 uses
  %.not388 = icmp eq i32 %i.cp, 0
  br i1 %.not388, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE18read_huffman_codesCsa5QsYiPB8Gl_5image.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.8224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.11.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %.sroa.8226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.11227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.sroa.8229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.11230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %.sroa.8232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 12 uses
  %.sroa.7178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.8179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.11180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.6152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 4 uses
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 9 ; 9 uses
  %.sroa.5151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 10 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.sroa.8234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.9235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.12236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.8238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.9239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.12240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %.sroa.6.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %.sroa.6.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.589.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %.sroa.6.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.8180.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.sroa.11.i.sroa.4.0..sroa.11.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.8182.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.11183.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.11183.i.sroa.4.0..sroa.11183.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.8185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.9186.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.4125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.6127.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.8188.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.9189.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.12190.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.27.8..sroa_idx246.i = getelementptr inbounds nuw i8, ptr %.sroa.12190.i.i, i64 4 ; 2 uses
  %.sroa.5163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.6164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  br label %bb.ao

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.dc = load i8, ptr %i.bf, align 8, !alias.scope !1186, !noalias !1187, !noundef !6 ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.p, label %.thread192

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1188
  invoke fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB12_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.noexc86 unwind label %bb.s

.noexc86:                                         ; preds = %bb.p
  %i.de = load i8, ptr %i.c, align 8, !range !20, !noalias !1188, !noundef !6 ; 2 uses
  %.not.i84 = icmp eq i8 %i.de, -1
  br i1 %.not.i84, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1188
  %.pre.i85 = load i8, ptr %i.bf, align 8, !alias.scope !1186, !noalias !1187 ; 2 uses
  %i.df = icmp eq i8 %.pre.i85, 0
  br i1 %i.df, label %bb.t, label %.thread192

bb.r:                                             ; preds = %.noexc86
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 1, !noalias !1189
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11.0..sroa_idx, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1188
  br label %bb.t

.body43:                                          ; preds = %bb.af, %bb.s, %bb.et, %.body46, %bb.ab
  %.pn94.i = phi { ptr, i32 } [ %.pn.i, %bb.ab ], [ %.pn92.i, %.body46 ], [ %i.mt, %bb.et ], [ %i.dg, %bb.s ], [ %i.eq, %bb.af ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #24
          to label %.body unwind label %bb.an, !noalias !1190, !inline_history !1082

bb.s:                                             ; preds = %bb.ag, %bb.z, %.thread198, %bb.p, %bb.v, %bb.eu, %bb.al
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body43

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.8.0.ph = phi i8 [ undef, %bb.q ], [ %.sroa.8.0.copyload, %bb.r ]
  %.sroa.0126.0.ph = phi i8 [ 15, %bb.q ], [ %i.de, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.18, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11, i64 30, i1 false)
  br label %bb.ew

.thread192:                                       ; preds = %bb.o, %bb.q
  %i.dh = phi i8 [ %.pre.i85, %bb.q ], [ %i.dc, %bb.o ] ; 2 uses
  %i.di = load i64, ptr %i.bl, align 8, !alias.scope !1186, !noalias !1187, !noundef !6 ; 2 uses
  %i.dj = lshr i64 %i.di, 1                       ; 2 uses
  store i64 %i.dj, ptr %i.bl, align 8, !alias.scope !1186, !noalias !1187
  %i.dk = add i8 %i.dh, -1                        ; 2 uses
  store i8 %i.dk, ptr %i.bf, align 8, !alias.scope !1186, !noalias !1187
  %i.dl = and i64 %i.di, 1
  %.not = icmp eq i64 %i.dl, 0
  br i1 %.not, label %bb.n, label %bb.u

bb.u:                                             ; preds = %.thread192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  %i.dm = icmp ult i8 %i.dh, 4
  br i1 %i.dm, label %bb.v, label %.thread198

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1192
  invoke fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB12_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.noexc83 unwind label %bb.s

.noexc83:                                         ; preds = %bb.v
  %i.dn = load i8, ptr %i.d, align 8, !range !20, !noalias !1192, !noundef !6 ; 2 uses
  %.not.i81 = icmp eq i8 %i.dn, -1
  br i1 %.not.i81, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1192
  %.pre.i82 = load i8, ptr %i.bf, align 8, !alias.scope !1191, !noalias !1193 ; 2 uses
  %i.do = icmp ult i8 %.pre.i82, 3
  br i1 %i.do, label %bb.y, label %..thread198_crit_edge

..thread198_crit_edge:                            ; preds = %bb.w
  %.pre = load i64, ptr %i.bl, align 8, !alias.scope !1191, !noalias !1193
  br label %.thread198

bb.x:                                             ; preds = %.noexc83
  %.sroa.8128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.8128.0.copyload = load i8, ptr %.sroa.8128.0..sroa_idx, align 1, !noalias !1194
  %.sroa.11129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11129, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11129.0..sroa_idx, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1192
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.8128.0.ph = phi i8 [ undef, %bb.w ], [ %.sroa.8128.0.copyload, %bb.x ]
  %.sroa.0127.0.ph = phi i8 [ 15, %bb.w ], [ %i.dn, %bb.x ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.18, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.11129, i64 30, i1 false)
  br label %bb.ew

.thread198:                                       ; preds = %..thread198_crit_edge, %bb.u
  %i.dp = phi i64 [ %.pre, %..thread198_crit_edge ], [ %i.dj, %bb.u ] ; 2 uses
  %i.dq = phi i8 [ %.pre.i82, %..thread198_crit_edge ], [ %i.dk, %bb.u ]
  %i.dr = lshr i64 %i.dp, 3
  store i64 %i.dr, ptr %i.bl, align 8, !alias.scope !1191, !noalias !1193
  %i.ds = add i8 %i.dq, -3
  store i8 %i.ds, ptr %i.bf, align 8, !alias.scope !1191, !noalias !1193
  %i.dt = trunc i64 %i.dp to i8
  %i.du = and i8 %i.dt, 7
  %i.dv = add nuw nsw i8 %i.du, 2                 ; 2 uses
  %i.dw = zext nneg i8 %i.dv to i32               ; 3 uses
  %i.dx = zext i16 %2 to i32
  %notmask = shl nsw i32 -1, %i.dw
  %i.dy = xor i32 %notmask, -1                    ; 2 uses
  %i.dz = add nuw nsw i32 %i.dy, %i.dx
  %i.ea = lshr i32 %i.dz, %i.dw                   ; 2 uses
  %.sroa.5.0.extract.trunc.i99.i = trunc nuw nsw i32 %i.ea to i16 ; 2 uses
  %i.eb = zext i16 %3 to i32
  %i.ec = add nuw nsw i32 %i.dy, %i.eb
  %i.ed = lshr i32 %i.ec, %i.dw                   ; 2 uses
  %.sroa.5.0.extract.trunc.i.i = trunc nuw nsw i32 %i.ed to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1185
  %narrow = mul nuw nsw i32 %i.ea, %i.ed
  %i.ee = zext nneg i32 %narrow to i64
  %7 = shl nuw nsw i64 %i.ee, 2                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1196
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %7, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc807 unwind label %bb.s

.noexc807:                                        ; preds = %.thread198
  %i.ef = load i64, ptr %i.a, align 8, !range !13, !noalias !1196, !noundef !6
  %i.eg = trunc nuw i64 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !range !14, !noalias !1196, !noundef !6 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.eg, label %bb.z, label %bb.aa, !prof !8

bb.z:                                             ; preds = %.noexc807
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !1196
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ei, i64 %i.ek) #26
          to label %.noexc808 unwind label %bb.s

.noexc808:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.noexc807
  %i.el = load ptr, ptr %i.ej, align 8, !noalias !1196, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1196
  store i64 %i.ei, ptr %i.aw, align 8, !alias.scope !1195, !noalias !1190
  %i.em = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !alias.scope !1195, !noalias !1190
  %i.en = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  store i64 %7, ptr %i.en, align 8, !alias.scope !1195, !noalias !1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1185
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %1, i16 noundef %.sroa.5.0.extract.trunc.i99.i, i16 noundef %.sroa.5.0.extract.trunc.i.i, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.el, i64 noundef %7)
          to label %bb.ad unwind label %bb.ac, !noalias !1190, !inline_history !1082

bb.ab:                                            ; preds = %bb.ak, %bb.ac
  %.pn.i = phi { ptr, i32 } [ %i.ey, %bb.ak ], [ %i.eo, %bb.ac ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #24
          to label %.body43 unwind label %bb.an, !noalias !1190, !inline_history !1082

bb.ac:                                            ; preds = %bb.ai, %bb.aa
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %bb.aa
  %i.ep = load i8, ptr %i.av, align 8, !range !20, !noalias !1185, !noundef !6 ; 2 uses
  %.not87.i = icmp eq i8 %i.ep, -1
  br i1 %.not87.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %.sroa.4157.0.copyload = load i8, ptr %.sroa.4157.0..sroa_idx, align 1, !noalias !1185
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.18, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5158.0..sroa_idx, i64 30, i1 false), !noalias !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1185
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.ag unwind label %bb.af, !noalias !1190

bb.af:                                            ; preds = %bb.ae
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body43 unwind label %bb.ah, !noalias !1190

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit unwind label %bb.s

bb.ah:                                            ; preds = %bb.af
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !1190
  unreachable

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1185
  %i.es = load ptr, ptr %i.em, align 8, !noalias !1185, !nonnull !6, !noundef !6 ; 2 uses
  %i.et = load i64, ptr %i.en, align 8, !noalias !1185, !noundef !6 ; 2 uses
  %i.eu = and i64 %i.et, 3
  %i.ev = and i64 %i.et, -4                       ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ev
  store ptr %i.es, ptr %i.at, align 8, !noalias !1185
  %.sroa.4131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.ev, ptr %.sroa.4131.0..sroa_idx, align 8, !noalias !1185
  %.sroa.5132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ew, ptr %.sroa.5132.0..sroa_idx, align 8, !noalias !1185
  %.sroa.6133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.eu, ptr %.sroa.6133.0..sroa_idx, align 8, !noalias !1185
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1185
  %i.ex = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %i.ay, ptr %i.ex, align 8, !noalias !1185
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VectEINtB2_12SpecFromItertINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter11ChunksExacthENCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2L_15LosslessDecoderQINtNtNtB1q_2io4util4TakeQINtNtB3Q_6cursor6CursorRShEEE18read_huffman_codes0EE9from_iterCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.at)
          to label %bb.aj unwind label %bb.ac, !noalias !1190, !inline_history !1082

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1185
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax)
          to label %bb.al unwind label %bb.ak, !noalias !1190, !inline_history !1082

bb.ak:                                            ; preds = %bb.aj
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !1185
  br label %bb.ab

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1185
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw)
          to label %bb.am unwind label %bb.s, !noalias !1190, !inline_history !1082

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1185
  br label %bb.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1185
  br label %bb.ew

bb.an:                                            ; preds = %.body, %.body79, %.body46, %bb.ab, %.body43
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !1198, !inline_history !1082
  unreachable

bb.ao:                                            ; preds = %.lr.ph, %bb.au
  %.sroa.071.0.i387 = phi i32 [ 0, %.lr.ph ], [ %i.fa, %bb.au ]
  %i.fa = add nuw i32 %.sroa.071.0.i387, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1185
  invoke void @_RNvXs10_NtCsj6eKBz9Db1c_4core5arrayANtNtCsksn9slvsHfS_10image_webp7huffman11HuffmanTreej5_NtNtB8_7default7Default7defaultCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(none) dereferenceable(280) %i.ar)
          to label %.preheader unwind label %bb.ap, !noalias !1190, !inline_history !1082

.body46:                                          ; preds = %bb.eo, %bb.ep, %bb.as, %bb.ap, %.body79
  %.pn92.i = phi { ptr, i32 } [ %i.ff, %bb.as ], [ %.pn90.i207, %.body79 ], [ %i.fb, %bb.ap ], [ %i.mo, %bb.ep ], [ %i.mo, %bb.eo ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecANtNtCsksn9slvsHfS_10image_webp7huffman11HuffmanTreej5_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as) #24
          to label %.body43 unwind label %bb.an, !noalias !1190, !inline_history !1082

bb.ap:                                            ; preds = %bb.ao
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.aq:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ap, ptr noundef nonnull align 8 dereferenceable(280) %i.ar, i64 280, i1 false), !noalias !1185
  %i.fc = load i64, ptr %i.co, align 8, !alias.scope !1199, !noalias !1200, !noundef !6 ; 3 uses
  %i.fd = load i64, ptr %i.as, align 8, !range !16, !alias.scope !1199, !noalias !1200, !noundef !6
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecANtNtCsksn9slvsHfS_10image_webp7huffman11HuffmanTreej5_E8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.au unwind label %bb.as, !noalias !1200

bb.as:                                            ; preds = %bb.ar
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueANtNtCsksn9slvsHfS_10image_webp7huffman11HuffmanTreej5_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.ap) #24
          to label %.body46 unwind label %bb.at, !noalias !1190

bb.at:                                            ; preds = %bb.as
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !1190
  unreachable

.preheader:                                       ; preds = %bb.ao, %bb.es
  %.sroa.073.0.i386 = phi i64 [ %i.fh, %bb.es ], [ 0, %bb.ao ] ; 4 uses
  %i.fh = add nuw nsw i64 %.sroa.073.0.i386, 1    ; 2 uses
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr @89, i64 %.sroa.073.0.i386
  %i.fj = load i16, ptr %i.fi, align 2, !noalias !1185, !noundef !6 ; 2 uses
  %i.fk = icmp ne i64 %.sroa.073.0.i386, 0
  %i.fl = load i64, ptr %i.bd, align 8, !range !15, !alias.scope !1184, !noalias !1201
  %.not89.i = icmp eq i64 %i.fl, -1
  %or.cond.i = select i1 %i.fk, i1 true, i1 %.not89.i
  br i1 %or.cond.i, label %bb.av, label %bb.eh

.loopexit:                                        ; preds = %bb.aw, %bb.bb, %bb.be, %bb.bk, %bb.bo, %bb.cc, %.noexc213.i, %._crit_edge.i.i, %.thread296.i, %bb.dy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i, %bb.by
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body79

.loopexit.split-lp:                               ; preds = %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body79

bb.au:                                            ; preds = %bb.ar, %bb.aq
  %i.fm = load ptr, ptr %i.cn, align 8, !alias.scope !1199, !noalias !1200, !nonnull !6, !noundef !6
  %i.fn = getelementptr inbounds nuw [280 x i8], ptr %i.fm, i64 %i.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.fn, ptr noundef nonnull align 8 dereferenceable(280) %i.ap, i64 280, i1 false), !noalias !1190
  %i.fo = add i64 %i.fc, 1
  store i64 %i.fo, ptr %i.co, align 8, !alias.scope !1199, !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1185
  %exitcond529.not = icmp eq i32 %i.fa, %i.cp
  br i1 %exitcond529.not, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE18read_huffman_codesCsa5QsYiPB8Gl_5image.exit, label %bb.ao

bb.av:                                            ; preds = %bb.eh, %.preheader
  %.sroa.029.0.i = phi i16 [ %i.fj, %.preheader ], [ %i.me, %bb.eh ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.634.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1185
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12190.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12240.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8234.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12236.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11230.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11227.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !1204), !noalias !1190
  %i.fp = load i8, ptr %i.bf, align 8, !alias.scope !1205, !noalias !1206, !noundef !6 ; 2 uses
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.aw, label %.thread.i49

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1207
  invoke fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB12_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.aw
  %i.fr = load i8, ptr %i.u, align 8, !range !20, !noalias !1207, !noundef !6 ; 2 uses
  %.not.i.i61 = icmp eq i8 %i.fr, -1
  br i1 %.not.i.i61, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.noexc
end_hunk_3
