Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17hd0a5c367cceed3c5E:bb.a
  store i32 %i.et, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = trunc i32 %.sroa.075.0 to i16
  store i16 %i.ew, ptr %i.ev, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 6
  %i.ey = trunc i32 %.sroa.077.0 to i16
  store i16 %i.ey, ptr %i.ex, align 2
  %i.ez = zext i32 %.sroa.027.1154 to i64         ; 2 uses
  %.not38 = icmp ugt i32 %.sroa.027.1154, %i.m
  br i1 %.not38, label %.invoke, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ez
  %i.fb = add nuw nsw i32 %.sroa.027.1154, 1
  %exitcond270.not = icmp eq i32 %.sroa.027.1154, %i.aw
  store i64 -1, ptr %i.fa, align 4
  br i1 %exitcond270.not, label %._crit_edge158, label %.lr.ph157

bb.av:                                            ; preds = %.lr.ph148
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.fd = load i32, ptr %i.fc, align 4, !noundef !45 ; 3 uses
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.ay
  %.sroa.027.2 = phi i32 [ %.sroa.027.0146, %bb.av ], [ %i.fj, %bb.ay ] ; 11 uses
  %i.ff = icmp eq i64 %i.n, 0
  br i1 %i.ff, label %._crit_edge149, label %.lr.ph148

bb.ax:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.fg = zext i32 %.sroa.027.0146 to i64         ; 3 uses
  %.not25 = icmp samesign ult i64 %i.g, %i.fg
  br i1 %.not25, label %.invoke.loopexit473.split.loop.exit499, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.sroa.024.0. = tail call i32 @llvm.umax.i32(i32 %i.fd, i32 %.sroa.024.0)
  %i.fh = trunc nuw nsw i64 %i.n to i16
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fg ; 3 uses
  store i32 %.sroa.024.0., ptr %i.fi, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i16 -1, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 6
  store i16 %i.fh, ptr %.sroa.5.0..sroa_idx, align 2
  %i.fj = add i32 %.sroa.027.0146, 1
  br label %bb.aw

.loopexit44:                                      ; preds = %._crit_edge158
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp, %.loopexit44
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  tail call void @mi_free(ptr noundef nonnull %i.j) #38
  resume { ptr, i32 } %lpad.phi

bb.ba:                                            ; preds = %._crit_edge.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  store i8 0, ptr %i.fk, align 1
  %i.fl = icmp ult i64 %i.e, %7
  br i1 %i.fl, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %._crit_edge.thread
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1665) #43
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.e
  store i16 0, ptr %i.fm, align 2
  br label %.loopexit41

bb.bd:                                            ; preds = %bb.ba
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1666) #43
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.a, %.lr.ph
  %.sroa.020.0136458 = phi i64 [ %.sroa.020.1, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.sroa.010.0137457 = phi i64 [ %i.fr, %.lr.ph ], [ 0, %bb.a ] ; 8 uses
  %.sroa.0.0138456 = phi i64 [ %.sroa.0.1, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.010.0137457
  %i.fo = load i32, ptr %i.fn, align 4, !noundef !45 ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1667) #43
  unreachable

bb.bf:                                            ; preds = %.lr.ph.preheader
  %i.fq = icmp ult i64 %.sroa.0.0138456, 4
  br i1 %i.fq, label %bb.bh, label %bb.bi

bb.bg:                                            ; preds = %.lr.ph.preheader, %bb.bi
  %.sroa.020.1 = phi i64 [ %.sroa.020.0136458, %.lr.ph.preheader ], [ %i.fw, %bb.bi ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0138456, %.lr.ph.preheader ], [ %i.fu, %bb.bi ] ; 8 uses
  %i.fr = add nuw nsw i64 %.sroa.010.0137457, 1   ; 8 uses
  %i.fs = icmp eq i64 %.sroa.020.1, 0
  br i1 %i.fs, label %._crit_edge, label %.lr.ph

bb.bh:                                            ; preds = %bb.bf
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0.0138456
  store i64 %.sroa.010.0137457, ptr %i.ft, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %i.fu = add i64 %.sroa.0.0138456, 1
  %i.fv = zext i32 %i.fo to i64
  %i.fw = sub i64 %.sroa.020.0136458, %i.fv
  br label %bb.bg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17compress_fragment22compress_fragment_fast17h6c0d553cad315c42E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 1 %7, ptr noalias noundef nonnull align 2 %8, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %11, align 8, !noundef !45 ; 2 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %6, i1 false)
  %switch.tableidx = add nsw i64 %i.c, -48        ; 3 uses
  %i.d = icmp ult i64 %switch.tableidx, 7
  %switch.maskindex = trunc i64 %switch.tableidx to i8
  %switch.shifted = lshr i8 85, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

.sink.split:                                      ; preds = %bb.a, %bb.f
  tail call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  tail call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.e = load i64, ptr %11, align 8, !noundef !45
  %i.f = add i64 %i.e, 7
  %i.g = and i64 %i.f, 4294967288
  store i64 %i.g, ptr %11, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.f
  ret void

switch.lookup:                                    ; preds = %bb.b
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6brotli3enc17compress_fragment22compress_fragment_fast17h6c0d553cad315c42E, i64 %switch.tableidx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  tail call fastcc void @_ZN6brotli3enc17compress_fragment27compress_fragment_fast_impl17hd0d02f7715f5873dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias noundef nonnull align 4 %4, i64 noundef %5, i64 noundef %switch.ext, ptr noalias noundef nonnull align 1 %7, ptr noalias noundef nonnull align 2 %8, ptr noalias noundef align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, ptr noalias noundef align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %switch.lookup
  %i.h = load i64, ptr %11, align 8, !noundef !45
  %i.i = sub i64 %i.h, %i.a
  %i.j = shl i64 %2, 3
  %i.k = add i64 %i.j, 31
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6brotli3enc17compress_fragment25EmitUncompressedMetaBlock17hf552acd2bee8cbffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  br i1 %3, label %.sink.split, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17compress_fragment27compress_fragment_fast_impl17hd0d02f7715f5873dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef %5, i64 noundef range(i64 9, 16) %6, ptr noalias noundef nonnull align 1 %7, ptr noalias noundef nonnull align 2 %8, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [512 x i8], align 2               ; 8 uses
  %i.d = alloca [256 x i8], align 1               ; 9 uses
  %i.e = alloca [512 x i8], align 4               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.e, i8 0, i64 512, i1 false)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %11, align 8, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.c, i8 0, i64 512, i1 false)
  %i.g = sub nuw nsw i64 64, %6                   ; 11 uses
  tail call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  tail call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.h = call fastcc noundef i64 @_ZN6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCode17h8fa20e6563afe892E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull align 1 %i.d, ptr noalias noundef nonnull align 2 %i.c, ptr noalias noundef align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.i = load i64, ptr %9, align 8, !noundef !45  ; 5 uses
  %i.j = icmp ugt i64 %i.i, 7
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge:                                      ; preds = %.lr.ph.preheader
  %i.k = lshr i64 %i.i, 3                         ; 2 uses
  %i.l = icmp samesign ult i64 %i.i, 4096
  br i1 %i.l, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %14 = add nuw nsw i64 %.sroa.065.0522419, 8
  %i.m = icmp samesign ult i64 %.sroa.065.0522419, 4088
  br i1 %i.m, label %.lr.ph.preheader, label %bb.cu

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.n = phi i64 [ %i.k, %._crit_edge ], [ 0, %bb.a ]
  %i.o = and i64 %i.i, 7
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !noundef !45
  %i.r = zext i8 %i.q to i64
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef %i.o, i64 noundef %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.cs, %._crit_edge.thread
  %.sroa.0.01119.ph = phi i64 [ %.sroa.0.2.jt2, %bb.cs ], [ %2, %._crit_edge.thread ]
  %.sroa.016.01114.ph = phi i64 [ %.sroa.016.6.jt2, %bb.cs ], [ 0, %._crit_edge.thread ]
  %.sroa.044.01108.ph = phi i64 [ %.sroa.0.0.i212, %bb.cs ], [ %.sroa.0.0.i, %._crit_edge.thread ] ; 2 uses
  %.sroa.047.01106.ph.in = phi i64 [ %i.jd, %bb.cs ], [ %i.f, %._crit_edge.thread ] ; 3 uses
  %.sroa.050.01104.ph = phi i64 [ %i.jh, %bb.cs ], [ %i.h, %._crit_edge.thread ] ; 2 uses
  %.sroa.052.01101.ph = phi i64 [ %.sroa.052.2.jt2, %bb.cs ], [ 0, %._crit_edge.thread ] ; 9 uses
  %.sroa.047.01106.ph = add i64 %.sroa.047.01106.ph.in, 3
  %i.v = icmp ugt i64 %.sroa.050.01104.ph, 980
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.k, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1669) #43
  unreachable

bb.c:                                             ; preds = %.outer, %bb.cd
  %.sroa.0.01119 = phi i64 [ %i.ie, %bb.cd ], [ %.sroa.0.01119.ph, %.outer ] ; 3 uses
  %.sroa.016.01114 = phi i64 [ %.sroa.016.6.jt0, %bb.cd ], [ %.sroa.016.01114.ph, %.outer ] ; 3 uses
  %.sroa.030.01110 = phi i64 [ %.sroa.0.0.i211, %bb.cd ], [ %.sroa.044.01108.ph, %.outer ] ; 5 uses
  %.sroa.044.01108 = phi i64 [ %i.if, %bb.cd ], [ %.sroa.044.01108.ph, %.outer ]
  %.sroa.052.01101 = phi i64 [ %i.id, %bb.cd ], [ %.sroa.052.01101.ph, %.outer ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.e, ptr noundef nonnull align 4 dereferenceable(512) @_ZN6brotli3enc17compress_fragment13kCmdHistoSeed17he90956d4a1e1dba6E, i64 512, i1 false), !alias.scope !36302, !noalias !36303
  %i.w = add i64 %.sroa.030.01110, %.sroa.052.01101 ; 8 uses
  %i.x = icmp samesign ugt i64 %.sroa.030.01110, 15
  br i1 %i.x, label %bb.d, label %.thread22.loopexit

bb.d:                                             ; preds = %bb.c
  %i.y = add nsw i64 %.sroa.030.01110, -5
  %i.z = add i64 %.sroa.0.01119, -16
  %.sroa.0.0.i210 = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.y)
  %i.aa = add i64 %.sroa.0.0.i210, %.sroa.052.01101 ; 5 uses
  %i.ab = add i64 %.sroa.052.01101, 1             ; 5 uses
  %i.ac = icmp ugt i64 %i.ab, %1
  br i1 %i.ac, label %bb.f, label %bb.e, !prof !47

bb.e:                                             ; preds = %bb.d
  %i.ad = sub nuw i64 %1, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.af = call noundef i32 @_ZN6brotli3enc17compress_fragment4Hash17h93c93efbd25e78c7E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.ad, i64 noundef %i.g)
  %i.ag = add i64 %.sroa.052.01101, 2             ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, %i.aa
  br i1 %i.ah, label %.thread22.loopexit, label %.lr.ph526.lr.ph

.lr.ph526.lr.ph:                                  ; preds = %bb.e
  %i.ai = add i64 %i.w, -5                        ; 2 uses
  br label %.lr.ph526

bb.f:                                             ; preds = %bb.d
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ab, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1697) #43
  unreachable

.lr.ph526:                                        ; preds = %.lr.ph526.lr.ph, %bb.bw
  %i.aj = phi i64 [ %i.ag, %.lr.ph526.lr.ph ], [ %i.ib, %bb.bw ]
  %.sroa.016.2543 = phi i64 [ %.sroa.016.01114, %.lr.ph526.lr.ph ], [ %.sroa.016.4532, %bb.bw ] ; 7 uses
  %.sroa.062.0542 = phi i32 [ -1, %.lr.ph526.lr.ph ], [ %.sroa.062.2531, %bb.bw ] ; 3 uses
  %.sroa.075.0541 = phi i64 [ %i.ab, %.lr.ph526.lr.ph ], [ %i.hw, %bb.bw ]
  %.sroa.0114.0540 = phi i32 [ %i.af, %.lr.ph526.lr.ph ], [ %i.ia, %bb.bw ]
  %i.ak = sext i32 %.sroa.062.0542 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph526, %.backedge
  %i.al = phi i64 [ %i.aj, %.lr.ph526 ], [ %i.bn, %.backedge ] ; 6 uses
  %i.am = phi i32 [ 33, %.lr.ph526 ], [ %i.bl, %.backedge ] ; 2 uses
  %.sroa.0114.1524 = phi i32 [ %.sroa.0114.0540, %.lr.ph526 ], [ %i.aq, %.backedge ]
  %.sroa.0117.0523 = phi i64 [ %.sroa.075.0541, %.lr.ph526 ], [ %i.al, %.backedge ] ; 17 uses
  %i.an = icmp ugt i64 %i.al, %1
  br i1 %i.an, label %bb.i, label %bb.h, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.ao = sub nuw i64 %1, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.aq = call noundef i32 @_ZN6brotli3enc17compress_fragment4Hash17h93c93efbd25e78c7E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %i.ao, i64 noundef %i.g)
  %i.ar = sub i64 %.sroa.0117.0523, %i.ak         ; 6 uses
  %i.as = icmp ugt i64 %.sroa.0117.0523, %1
  br i1 %i.as, label %bb.k, label %bb.j, !prof !47

bb.i:                                             ; preds = %bb.g
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.al, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1675) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.at = sub nuw i64 %1, %.sroa.0117.0523        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0117.0523 ; 2 uses
  %i.av = icmp ugt i64 %i.ar, %1
  br i1 %i.av, label %bb.m, label %bb.l, !prof !47

bb.k:                                             ; preds = %bb.h
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0117.0523, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1674) #43
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = sub nuw i64 %1, %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.ay = call noundef zeroext i1 @_ZN6brotli3enc17compress_fragment7IsMatch17h82dabcf47fb1ff5aE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.au, i64 noundef %i.at, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %i.aw)
  %i.az = icmp ult i64 %i.ar, %.sroa.0117.0523
  %or.cond208 = select i1 %i.ay, i1 %i.az, i1 false
  %i.ba = zext i32 %.sroa.0114.1524 to i64        ; 5 uses
  %i.bb = icmp ugt i64 %5, %i.ba                  ; 2 uses
  br i1 %or.cond208, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ar, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1673) #43
  unreachable

bb.n:                                             ; preds = %bb.l
  br i1 %i.bb, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.l
  br i1 %i.bb, label %bb.u, label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ba ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !45
  %i.be = sext i32 %i.bd to i64                   ; 5 uses
  %i.bf = trunc i64 %.sroa.0117.0523 to i32
  store i32 %i.bf, ptr %i.bc, align 4
  %i.bg = icmp ult i64 %1, %i.be
  br i1 %i.bg, label %bb.s, label %bb.r, !prof !47

bb.q:                                             ; preds = %bb.n
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ba, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1670) #43
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bh = sub nuw i64 %1, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %i.bj = call noundef zeroext i1 @_ZN6brotli3enc17compress_fragment7IsMatch17h82dabcf47fb1ff5aE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.au, i64 noundef %i.at, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bi, i64 noundef %i.bh)
  br i1 %i.bj, label %bb.t, label %.backedge

.backedge:                                        ; preds = %bb.r, %bb.t
  %i.bk = lshr i32 %i.am, 5
  %i.bl = add i32 %i.am, 1
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = add i64 %i.al, %i.bm                    ; 2 uses
  %i.bo = icmp ugt i64 %i.bn, %i.aa
  br i1 %i.bo, label %.thread22.loopexit, label %bb.g

bb.s:                                             ; preds = %bb.p
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.be, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1671) #43
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.u
  %.sroa.0120.1 = phi i64 [ %i.be, %bb.r ], [ %i.ar, %bb.u ] ; 2 uses
  %i.bp = sub i64 %.sroa.0117.0523, %.sroa.0120.1 ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 262128
  br i1 %i.bq, label %.backedge, label %bb.w

bb.u:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ba
  %i.bs = trunc i64 %.sroa.0117.0523 to i32
  store i32 %i.bs, ptr %i.br, align 4
  br label %bb.t

bb.v:                                             ; preds = %bb.o
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ba, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1672) #43
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bt = add i64 %.sroa.0120.1, 5                ; 4 uses
  %i.bu = icmp ugt i64 %i.bt, %1
  br i1 %i.bu, label %bb.y, label %bb.x, !prof !47

bb.x:                                             ; preds = %bb.w
  %i.bv = add i64 %.sroa.0117.0523, 5             ; 4 uses
  %i.bw = icmp ugt i64 %i.bv, %1
  br i1 %i.bw, label %bb.aa, label %bb.z, !prof !47

bb.y:                                             ; preds = %bb.w
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bt, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1696) #43
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt
  %i.by = sub nuw i64 %1, %i.bt
  %i.bz = sub nuw i64 %1, %i.bv
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %i.cb = sub i64 %i.ai, %.sroa.0117.0523
  %i.cc = call noundef i64 @_ZN6brotli3enc11static_dict24FindMatchLengthWithLimit17h50d1a297b15ad288E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bx, i64 noundef %i.by, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ca, i64 noundef %i.bz, i64 noundef %i.cb)
  %i.cd = add i64 %i.cc, 5                        ; 2 uses
  %i.ce = trunc nuw nsw i64 %i.bp to i32          ; 2 uses
  %i.cf = sub i64 %.sroa.0117.0523, %.sroa.016.2543 ; 5 uses
  %i.cg = add i64 %i.cd, %.sroa.0117.0523         ; 9 uses
  %i.ch = icmp ult i64 %i.cf, 6210
  br i1 %i.ch, label %bb.ac, label %bb.ab

end_hunk_0
begin_hunk_1_@_ZN6brotli3enc17compress_fragment27compress_fragment_fast_impl17hd0d02f7715f5873dE:bb.a

bb.bn:                                            ; preds = %_ZN6brotli3enc11static_dict23BROTLI_UNALIGNED_LOAD6417h566427f88e0b8659E.exit
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.gw
  %i.hc = trunc i64 %i.fw to i32
  store i32 %i.hc, ptr %i.hb, align 4
  %i.hd = shl nuw i64 %i.gt, 16
  %i.he = and i64 %i.hd, -16777216
  %i.hf = mul i64 %i.he, 506832829
  %i.hg = lshr i64 %i.hf, %i.g                    ; 3 uses
  %i.hh = icmp ult i64 %i.hg, %5
  br i1 %i.hh, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %_ZN6brotli3enc11static_dict23BROTLI_UNALIGNED_LOAD6417h566427f88e0b8659E.exit
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.gw, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1683) #43
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hg
  %i.hj = trunc i64 %i.ft to i32                  ; 3 uses
  %i.hk = add i32 %i.hj, -2
  store i32 %i.hk, ptr %i.hi, align 4
  %i.hl = shl i64 %i.gu, 8
  %i.hm = and i64 %i.hl, -16777216
  %i.hn = mul i64 %i.hm, 506832829
  %i.ho = lshr i64 %i.hn, %i.g                    ; 3 uses
  %i.hp = icmp ult i64 %i.ho, %5
  br i1 %i.hp, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bn
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.hg, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1684) #43
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ho
  %i.hr = add i32 %i.hj, -1
  store i32 %i.hr, ptr %i.hq, align 4
  %i.hs = icmp ult i64 %i.gz, %5
  br i1 %i.hs, label %bb.bt, label %bb.bu

bb.bs:                                            ; preds = %bb.bp
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ho, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685) #43
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.gz ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !noundef !45
  store i32 %i.hj, ptr %i.ht, align 4
  %i.hv = icmp ugt i64 %i.ft, %1
  br i1 %i.hv, label %._crit_edge536, label %.lr.ph535, !prof !116

bb.bu:                                            ; preds = %bb.br
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.gz, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1686) #43
  unreachable

bb.bv:                                            ; preds = %bb.be, %bb.az
  %i.hw = add i64 %.sroa.016.4532, 1              ; 5 uses
  %i.hx = icmp ugt i64 %i.hw, %1
  br i1 %i.hx, label %bb.bx, label %bb.bw, !prof !47

bb.bw:                                            ; preds = %bb.bv
  %i.hy = sub nuw i64 %1, %i.hw
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 %i.hw
  %i.ia = call noundef i32 @_ZN6brotli3enc17compress_fragment4Hash17h93c93efbd25e78c7E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hz, i64 noundef %i.hy, i64 noundef %i.g)
  %i.ib = add i64 %.sroa.016.4532, 2              ; 2 uses
  %i.ic = icmp ugt i64 %i.ib, %i.aa
  br i1 %i.ic, label %.thread22.loopexit, label %.lr.ph526

bb.bx:                                            ; preds = %bb.bv
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.hw, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1688) #43
  unreachable

.thread22.loopexit:                               ; preds = %bb.aj, %bb.bw, %.backedge, %bb.bg, %bb.c, %bb.e
  %.sroa.016.6.jt0 = phi i64 [ %.sroa.016.2543, %.backedge ], [ %.sroa.016.01114, %bb.c ], [ %i.ft, %bb.bg ], [ %.sroa.016.01114, %bb.e ], [ %i.cg, %bb.aj ], [ %.sroa.016.4532, %bb.bw ] ; 12 uses
  %i.id = add i64 %.sroa.030.01110, %.sroa.052.01101 ; 9 uses
  %i.ie = sub i64 %.sroa.0.01119, %.sroa.030.01110 ; 7 uses
  %.sroa.0.0.i211 = call noundef i64 @llvm.umin.i64(i64 %i.ie, i64 65536) ; 3 uses
  %.not205 = icmp eq i64 %i.ie, 0
  br i1 %.not205, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.thread22.loopexit
  %i.if = add i64 %.sroa.0.0.i211, %.sroa.044.01108 ; 3 uses
  %i.ig = icmp ult i64 %i.if, 1048577
  br i1 %i.ig, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.cb, %bb.by, %.thread22.loopexit
  %i.ih = icmp ult i64 %.sroa.016.6.jt0, %i.w
  br i1 %i.ih, label %bb.ce, label %bb.cn

bb.ca:                                            ; preds = %bb.by
  %i.ii = icmp ugt i64 %i.id, %1
  br i1 %i.ii, label %bb.cc, label %bb.cb, !prof !47

bb.cb:                                            ; preds = %bb.ca
  %i.ij = sub nuw i64 %1, %i.id
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 %i.id
  %i.il = call noundef zeroext i1 @_ZN6brotli3enc17compress_fragment16ShouldMergeBlock17h5da24065734805d9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ik, i64 noundef %i.ij, i64 noundef %.sroa.0.0.i211, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 256)
  br i1 %i.il, label %bb.cd, label %bb.bz

bb.cc:                                            ; preds = %bb.ca
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.id, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1700) #43
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.im = trunc nuw nsw i64 %i.if to i32
  %i.in = add nsw i32 %i.im, -1
  call void @_ZN6brotli3enc17compress_fragment10UpdateBits17h343d2cbfde6d6c6aE(i64 noundef 20, i32 noundef %i.in, i64 noundef %.sroa.047.01106.ph, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.c

bb.ce:                                            ; preds = %bb.bz
  %i.io = sub nuw i64 %i.w, %.sroa.016.6.jt0      ; 6 uses
  %i.ip = icmp ult i64 %i.io, 6210
  br i1 %i.ip, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.iq = sub i64 %.sroa.016.6.jt0, %.sroa.052.01101.ph
  %i.ir = mul i64 %i.iq, 50
  %i.is = icmp ule i64 %i.ir, %i.io
  %i.it = icmp ugt i64 %.sroa.050.01104.ph, 980
  %.sroa.0137.0 = and i1 %i.is, %i.it
  br i1 %.sroa.0137.0, label %bb.ck, label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  call void @_ZN6brotli3enc17compress_fragment13EmitInsertLen17hc865696edf8ee003E(i64 noundef %i.io, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef 128, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %8, i64 noundef 128, ptr noalias noundef nonnull align 4 %i.e, i64 noundef 128, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.iu = icmp ugt i64 %.sroa.016.6.jt0, %1
  br i1 %i.iu, label %bb.cm, label %bb.cl, !prof !47

bb.ch:                                            ; preds = %bb.cf
  call void @_ZN6brotli3enc17compress_fragment17EmitLongInsertLen17h926919f4cf778e23E(i64 noundef %i.io, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef 128, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %8, i64 noundef 128, ptr noalias noundef nonnull align 4 %i.e, i64 noundef 128, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.iv = icmp ugt i64 %.sroa.016.6.jt0, %1
  br i1 %i.iv, label %bb.cj, label %bb.ci, !prof !47

bb.ci:                                            ; preds = %bb.ch
  %i.iw = sub nuw i64 %1, %.sroa.016.6.jt0
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.016.6.jt0
  call void @_ZN6brotli3enc17compress_fragment12EmitLiterals17h61dcf3f796eecca3E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ix, i64 noundef %i.iw, i64 noundef %i.io, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.c, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.cn

bb.cj:                                            ; preds = %bb.ch
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.016.6.jt0, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1698) #43
  unreachable

bb.ck:                                            ; preds = %bb.cf
  %i.iy = sub nuw i64 %1, %.sroa.052.01101.ph
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.052.01101.ph
  %i.ja = sub i64 %i.w, %.sroa.052.01101.ph
  call void @_ZN6brotli3enc17compress_fragment25EmitUncompressedMetaBlock17hf552acd2bee8cbffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.iz, i64 noundef %i.iy, i64 noundef %i.ja, i64 noundef %.sroa.047.01106.ph.in, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.cn

bb.cl:                                            ; preds = %bb.cg
  %i.jb = sub nuw i64 %1, %.sroa.016.6.jt0
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.016.6.jt0
  call void @_ZN6brotli3enc17compress_fragment12EmitLiterals17h61dcf3f796eecca3E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jc, i64 noundef %i.jb, i64 noundef %i.io, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.c, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cg
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.016.6.jt0, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1699) #43
  unreachable

bb.cn:                                            ; preds = %bb.ck, %bb.cl, %bb.bz, %bb.af, %bb.ci
  %.sroa.052.2.jt2 = phi i64 [ %.sroa.0117.0523, %bb.af ], [ %i.id, %bb.ci ], [ %i.id, %bb.ck ], [ %i.id, %bb.bz ], [ %i.id, %bb.cl ] ; 5 uses
  %.sroa.016.6.jt2 = phi i64 [ %.sroa.0117.0523, %bb.af ], [ %i.w, %bb.ci ], [ %i.w, %bb.ck ], [ %i.w, %bb.bz ], [ %i.w, %bb.cl ]
  %.sroa.0.2.jt2 = phi i64 [ %i.cp, %bb.af ], [ %i.ie, %bb.ci ], [ %i.ie, %bb.ck ], [ %i.ie, %bb.bz ], [ %i.ie, %bb.cl ] ; 3 uses
  %.not = icmp eq i64 %.sroa.0.2.jt2, 0
  br i1 %.not, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  br i1 %3, label %bb.cq, label %bb.cr

bb.cp:                                            ; preds = %bb.cn
  %.sroa.0.0.i212 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.2.jt2, i64 98304) ; 3 uses
  %i.jd = load i64, ptr %11, align 8, !noundef !45
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i212, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.je = icmp ugt i64 %.sroa.052.2.jt2, %1
  br i1 %i.je, label %bb.ct, label %bb.cs, !prof !47

bb.cq:                                            ; preds = %bb.cr, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.cr:                                            ; preds = %bb.co
  store i8 0, ptr %10, align 1
  store i64 0, ptr %9, align 8
  call void @_ZN6brotli3enc17compress_fragment30BuildAndStoreCommandPrefixCode17hc381a64e1a470e02E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.e, i64 noundef 128, ptr noalias noundef nonnull align 1 %7, i64 noundef 128, ptr noalias noundef nonnull align 2 %8, i64 noundef 128, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef 512)
  br label %bb.cq

bb.cs:                                            ; preds = %bb.cp
  %i.jf = sub nuw i64 %1, %.sroa.052.2.jt2
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.052.2.jt2
  %i.jh = call fastcc noundef i64 @_ZN6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCode17h8fa20e6563afe892E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jg, i64 noundef %i.jf, i64 noundef %.sroa.0.0.i212, ptr noalias noundef nonnull align 1 %i.d, ptr noalias noundef nonnull align 2 %i.c, ptr noalias noundef align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc17compress_fragment30BuildAndStoreCommandPrefixCode17hc381a64e1a470e02E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.e, i64 noundef 128, ptr noalias noundef nonnull align 1 %7, i64 noundef 128, ptr noalias noundef nonnull align 2 %8, i64 noundef 128, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %.outer

bb.ct:                                            ; preds = %bb.cp
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.052.2.jt2, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1701) #43
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.a, %.lr.ph
  %.sroa.065.0522419 = phi i64 [ %14, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.ji = lshr exact i64 %.sroa.065.0522419, 3
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !noundef !45
  %i.jl = zext i8 %i.jk to i64
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 8, i64 noundef %i.jl, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.jm = add nuw nsw i64 %.sroa.065.0522419, 15
  %i.jn = icmp ult i64 %i.jm, %i.i
  br i1 %i.jn, label %.lr.ph, label %._crit_edge

bb.cu:                                            ; preds = %.lr.ph
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 512, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1702) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_ZN6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCode17h8fa20e6563afe892E(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull align 1 %3, ptr noalias noundef nonnull align 2 %4, ptr noalias noundef nonnull align 8 dereferenceable(8) %5, ptr noalias noundef nonnull align 1 %6, i64 noundef %7) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 4              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.b = icmp ult i64 %2, 32768
  br i1 %i.b, label %.preheader1, label %.preheader3

.preheader1:                                      ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %vector.ph7, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader1
  %i.c = add i64 %1, 1
  br label %.lr.ph

vector.ph:                                        ; preds = %bb.c
  %i.d = add i64 %2, 28
  %i.e = udiv i64 %i.d, 29
  %i.f = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.e, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.f, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi5 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %wide.load = load <2 x i32>, ptr %i.g, align 4  ; 2 uses
  %wide.load6 = load <2 x i32>, ptr %i.h, align 4 ; 2 uses
  %i.i = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load, <2 x i32> splat (i32 11))
  %i.j = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load6, <2 x i32> splat (i32 11))
  %i.k = shl nuw nsw <2 x i32> %i.i, splat (i32 1)
  %i.l = shl nuw nsw <2 x i32> %i.j, splat (i32 1)
  %i.m = or disjoint <2 x i32> %i.k, splat (i32 1) ; 2 uses
  %i.n = or disjoint <2 x i32> %i.l, splat (i32 1) ; 2 uses
  %i.o = add <2 x i32> %i.m, %wide.load
  %i.p = add <2 x i32> %i.n, %wide.load6
  store <2 x i32> %i.o, ptr %i.g, align 4
  store <2 x i32> %i.p, ptr %i.h, align 4
  %i.q = zext nneg <2 x i32> %i.m to <2 x i64>
  %i.r = zext nneg <2 x i32> %i.n to <2 x i64>
  %i.s = add <2 x i64> %vec.phi, %i.q             ; 2 uses
  %i.t = add <2 x i64> %vec.phi5, %i.r            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, 256
  br i1 %i.u, label %.loopexit.loopexit1, label %vector.body, !llvm.loop !36310

.preheader3:                                      ; preds = %bb.a, %bb.c
  %.sroa.04.06 = phi i64 [ %i.ad, %bb.c ], [ 0, %bb.a ] ; 4 uses
  %i.v = icmp ult i64 %.sroa.04.06, %1
  br i1 %i.v, label %bb.c, label %bb.b

.loopexit.loopexit1:                              ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.t, %i.s
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit1, %middle.block15
  %bin.rdx.sink = phi <2 x i64> [ %bin.rdx, %.loopexit.loopexit1 ], [ %bin.rdx16, %middle.block15 ]
  %i.w = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx.sink) ; 3 uses
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17hd0a5c367cceed3c5E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.a, i64 noundef 256, i64 noundef %i.w, i64 noundef 8, ptr noalias noundef nonnull align 1 %3, i64 noundef 256, ptr noalias noundef nonnull align 2 %4, i64 noundef 256, ptr noalias noundef align 8 dereferenceable(8) %5, ptr noalias noundef nonnull align 1 %6, i64 noundef %7)
  br label %bb.g

bb.b:                                             ; preds = %.preheader3
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.04.06, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1703) #43
  unreachable

bb.c:                                             ; preds = %.preheader3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !45
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !45
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4
  %i.ad = add i64 %.sroa.04.06, 29                ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %2
  br i1 %i.ae, label %.preheader3, label %vector.ph

vector.ph7:                                       ; preds = %bb.m, %.preheader1
  %i.af = insertelement <2 x i64> <i64 poison, i64 0>, i64 %2, i64 0
  br label %vector.body8

vector.body8:                                     ; preds = %vector.body8, %vector.ph7
  %index9 = phi i64 [ 0, %vector.ph7 ], [ %index.next14, %vector.body8 ] ; 2 uses
  %vec.phi10 = phi <2 x i64> [ %i.af, %vector.ph7 ], [ %i.aq, %vector.body8 ]
  %vec.phi11 = phi <2 x i64> [ zeroinitializer, %vector.ph7 ], [ %i.ar, %vector.body8 ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index9 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %wide.load12 = load <2 x i32>, ptr %i.ag, align 4 ; 2 uses
  %wide.load13 = load <2 x i32>, ptr %i.ah, align 4 ; 2 uses
  %i.ai = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load12, <2 x i32> splat (i32 11))
  %i.aj = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load13, <2 x i32> splat (i32 11))
  %i.ak = shl nuw nsw <2 x i32> %i.ai, splat (i32 1) ; 2 uses
  %i.al = shl nuw nsw <2 x i32> %i.aj, splat (i32 1) ; 2 uses
  %i.am = add <2 x i32> %i.ak, %wide.load12
  %i.an = add <2 x i32> %i.al, %wide.load13
  store <2 x i32> %i.am, ptr %i.ag, align 4
  store <2 x i32> %i.an, ptr %i.ah, align 4
  %i.ao = zext nneg <2 x i32> %i.ak to <2 x i64>
  %i.ap = zext nneg <2 x i32> %i.al to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi10, %i.ao         ; 2 uses
  %i.ar = add <2 x i64> %vec.phi11, %i.ap         ; 2 uses
  %index.next14 = add nuw i64 %index9, 4          ; 2 uses
  %i.as = icmp eq i64 %index.next14, 256
  br i1 %i.as, label %middle.block15, label %vector.body8, !llvm.loop !36311

middle.block15:                                   ; preds = %vector.body8
  %bin.rdx16 = add <2 x i64> %i.ar, %i.aq
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %i.at = phi i64 [ %i.by, %bb.m ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %.sroa.022.09 = phi i64 [ %i.at, %bb.m ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %exitcond18.not = icmp eq i64 %i.at, %i.c
  br i1 %exitcond18.not, label %bb.l, label %bb.m

bb.d:                                             ; preds = %bb.j
  %i.au = icmp eq i64 %i.w, 0
  br i1 %i.au, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = mul i64 %.sroa.017.1.1, 125
  %i.aw = udiv i64 %i.av, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.aw

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1704) #43
  unreachable

bb.g:                                             ; preds = %bb.j, %.loopexit
  %i.ax = phi i64 [ 1, %.loopexit ], [ %i.bl, %bb.j ] ; 4 uses
  %.sroa.017.013 = phi i64 [ 0, %.loopexit ], [ %.sroa.017.1.1, %bb.j ] ; 2 uses
  %.sroa.024.012 = phi i64 [ 0, %.loopexit ], [ %i.bb, %bb.j ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.024.012
  %i.az = load i32, ptr %i.ay, align 4, !noundef !45 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.k
  %.sroa.017.1 = phi i64 [ %.sroa.017.013, %bb.g ], [ %i.br, %bb.k ] ; 2 uses
  %i.bb = add nuw nsw i64 %i.ax, 1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !45 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %i.ax
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !45
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul i32 %i.bd, %i.bh
  %i.bj = zext i32 %i.bi to i64
  %i.bk = add i64 %.sroa.017.1, %i.bj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.017.1.1 = phi i64 [ %.sroa.017.1, %bb.h ], [ %i.bk, %bb.i ] ; 2 uses
  %i.bl = add nuw nsw i64 %i.ax, 2                ; 2 uses
  %exitcond21.not.1 = icmp eq i64 %i.bl, 257
  br i1 %exitcond21.not.1, label %bb.d, label %bb.g

bb.k:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.024.012
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !45
  %i.bo = zext i8 %i.bn to i32
  %i.bp = mul i32 %i.az, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = add i64 %.sroa.017.013, %i.bq
  br label %bb.h

bb.l:                                             ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.022.09, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1705) #43
  unreachable

bb.m:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.022.09
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !45
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !noundef !45
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4
  %i.by = add nuw i64 %i.at, 1
  %exitcond19.not = icmp eq i64 %i.at, %2
  br i1 %exitcond19.not, label %vector.ph7, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_ZN6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH1017h1a8db7e0f3094503E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %9, i64 noundef %10) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
end_hunk_1
