inline.NumInlined: 720
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvNtCsksn9slvsHfS_10image_webp8extended16read_alpha_chunkINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image:bb.a
  %i.ga = zext nneg i32 %narrow.i.i to i64
  %i.gb = shl nuw nsw i64 %i.ga, 2                ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !617
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.gb, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc63 unwind label %.loopexit.split-lp150.loopexit

.noexc63:                                         ; preds = %.thread232.i.i
  %i.gc = load i64, ptr %i.d, align 8, !range !117, !noalias !617, !noundef !4
  %i.gd = trunc nuw i64 %i.gc to i1
  %i.ge = load i64, ptr %i.cc, align 8, !range !118, !noalias !617, !noundef !4 ; 2 uses
  br i1 %i.gd, label %bb.ay, label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188.i.i, !prof !6

bb.ay:                                            ; preds = %.noexc63
  %i.gf = load i64, ptr %i.cd, align 8, !noalias !617
  br label %.invoke

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188.i.i: ; preds = %.noexc63
  %.sroa.5.0.extract.trunc.i163.i.i = trunc nuw nsw i32 %i.fv to i16
  %.sroa.5.0.extract.trunc.i158.i.i = trunc nuw nsw i32 %i.fz to i16
  %i.gg = load ptr, ptr %i.cd, align 8, !noalias !617, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !617
  store i64 %i.ge, ptr %i.o, align 8, !alias.scope !614, !noalias !566
  store ptr %i.gg, ptr %i.ce, align 8, !alias.scope !614, !noalias !566
  store i64 %i.gb, ptr %i.cf, align 8, !alias.scope !614, !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !566
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ab, i16 noundef %.sroa.5.0.extract.trunc.i163.i.i, i16 noundef %.sroa.5.0.extract.trunc.i158.i.i, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.gg, i64 noundef %i.gb)
          to label %bb.ba unwind label %bb.az, !noalias !577

bb.az:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188.i.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #24
          to label %.body unwind label %bb.ax, !noalias !577

bb.ba:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188.i.i
  %i.gi = load i8, ptr %i.n, align 8, !range !304, !noalias !566, !noundef !4 ; 2 uses
  %.not153.i.i = icmp eq i8 %i.gi, -1
  br i1 %.not153.i.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.sroa.15.0..sroa_idx182.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.15.0.copyload183.i = load i8, ptr %.sroa.15.0..sroa_idx182.i, align 1, !noalias !613
  %.sroa.21.0..sroa_idx186.i = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %.sroa.21.0.copyload187.i = load i16, ptr %.sroa.21.0..sroa_idx186.i, align 2, !noalias !613
  %.sroa.29.0..sroa_idx193.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.29.0..sroa_idx193.i, i64 28, i1 false), !noalias !567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !566
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit190.i.i unwind label %bb.bc, !noalias !577

bb.bc:                                            ; preds = %bb.bb
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.bd, !noalias !577

bb.bd:                                            ; preds = %bb.bc
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !577
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit190.i.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.noexc65 unwind label %.loopexit.split-lp150.loopexit.split-lp

.noexc65:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit190.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !566
  br label %.loopexit.i

bb.be:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.819.8..sroa_idx21.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !566
  br label %bb.aw

bb.bf:                                            ; preds = %.noexc59
  %i.gl = load i64, ptr %i.bz, align 8, !noalias !608
  br label %.invoke

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit191.i.i: ; preds = %.noexc59
  %i.gm = load ptr, ptr %i.bz, align 8, !noalias !608, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !608
  store i64 %i.eh, ptr %i.m, align 8, !alias.scope !605, !noalias !566
  store ptr %i.gm, ptr %i.ca, align 8, !alias.scope !605, !noalias !566
  store i64 %i.ee, ptr %i.cb, align 8, !alias.scope !605, !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !566
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ab, i16 noundef %i.ec, i16 noundef 1, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.gm, i64 noundef %i.ee)
          to label %bb.bh unwind label %.loopexit249.i.i, !noalias !577

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
          to label %.body unwind label %bb.ax, !noalias !577

bb.bh:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit191.i.i
  %i.gn = load i8, ptr %i.l, align 8, !range !304, !noalias !566, !noundef !4 ; 2 uses
  %.not151.i.i = icmp eq i8 %i.gn, -1
  br i1 %.not151.i.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.15.0.copyload.i = load i8, ptr %.sroa.15.0..sroa_idx.i, align 1, !noalias !613
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %.sroa.21.0.copyload.i = load i16, ptr %.sroa.21.0..sroa_idx.i, align 2, !noalias !613
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.29.0..sroa_idx.i, i64 28, i1 false), !noalias !567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !566
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit193.i.i unwind label %bb.bj, !noalias !577

bb.bj:                                            ; preds = %bb.bi
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.bk, !noalias !577

bb.bk:                                            ; preds = %bb.bj
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !577
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit193.i.i: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc67 unwind label %.loopexit.split-lp150.loopexit.split-lp

.noexc67:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit193.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !566
  br label %.loopexit.i

bb.bl:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !566
  %i.gq = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i.i.i, 2
  br i1 %i.gq, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gr = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i.i.i, 4
  br i1 %i.gr, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gs = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i.i.i, 16
  %..i.i = zext i1 %i.gs to i32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %.sroa.056.0.i.i = phi i32 [ 2, %bb.bm ], [ %..i.i, %bb.bn ], [ 3, %bb.bl ] ; 2 uses
  %i.gt = zext i16 %.sroa.058.0.i.i to i32
  %i.gu = shl nuw nsw i32 1, %.sroa.056.0.i.i
  %i.gv = add nsw i32 %i.gt, -1
  %i.gw = add nsw i32 %i.gv, %i.gu
  %i.gx = lshr i32 %i.gw, %.sroa.056.0.i.i        ; 2 uses
  %i.gy = icmp samesign ugt i32 %i.gx, 65535
  %i.gz = shl nuw i32 %i.gx, 16
  %.sroa.0139.0.insert.insert.i.i = select i1 %i.gy, i32 513, i32 %i.gz ; 2 uses
  %i.ha = trunc i32 %.sroa.0139.0.insert.insert.i.i to i1
  br i1 %i.ha, label %bb.bp, label %bb.bq, !prof !6

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !566
  store i8 2, ptr %i.k, align 1, !noalias !566
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #23
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !577

.noexc.i.i:                                       ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %.sroa.5.0.extract.shift.i.i.i = lshr i32 %.sroa.0139.0.insert.insert.i.i, 16
  %.sroa.5.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.5.0.extract.shift.i.i.i to i16
  %i.hb = load ptr, ptr %i.ca, align 8, !noalias !566, !nonnull !4, !noundef !4 ; 3 uses
  %i.hc = load i64, ptr %i.cb, align 8, !noalias !566, !noundef !4 ; 3 uses
  %i.hd = icmp samesign ugt i64 %i.hc, 4
  br i1 %i.hd, label %.lr.ph.preheader.i.i.i.preheader, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit.i.i

.lr.ph.preheader.i.i.i.preheader:                 ; preds = %bb.bq
  %i.he = add i64 %i.hc, -4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.he, 4
  br i1 %min.iters.check, label %.lr.ph.preheader.i.i.i.preheader542, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.preheader
  %n.vec = and i64 %i.he, -4                      ; 3 uses
  %i.hf = add i64 %n.vec, 4
  %load_initial = load <4 x i8>, ptr %i.hb, align 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %store_forwarded = phi <4 x i8> [ %load_initial, %vector.ph ], [ %i.hi, %vector.body ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 %index
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4 ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.hh, align 1, !alias.scope !618, !noalias !577
  %i.hi = add <4 x i8> %store_forwarded, %wide.load ; 2 uses
  store <4 x i8> %i.hi, ptr %i.hh, align 1, !alias.scope !618, !noalias !577
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.he, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit.i.i, label %.lr.ph.preheader.i.i.i.preheader542

.lr.ph.preheader.i.i.i.preheader542:              ; preds = %.lr.ph.preheader.i.i.i.preheader, %middle.block
  %.sroa.01.04.i.i.i.ph = phi i64 [ 4, %.lr.ph.preheader.i.i.i.preheader ], [ %i.hf, %middle.block ]
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.preheader.i.i.i.preheader542, %.lr.ph.preheader.i.i.i
  %.sroa.01.04.i.i.i = phi i64 [ %i.hl, %.lr.ph.preheader.i.i.i ], [ %.sroa.01.04.i.i.i.ph, %.lr.ph.preheader.i.i.i.preheader542 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.sroa.01.04.i.i.i ; 3 uses
  %i.hl = add nuw nsw i64 %.sroa.01.04.i.i.i, 1   ; 2 uses
  %i.hm = load i8, ptr %i.hk, align 1, !alias.scope !618, !noalias !577, !noundef !4
  %i.hn = getelementptr i8, ptr %i.hk, i64 -4
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !618, !noalias !577, !noundef !4
  %i.hp = add i8 %i.ho, %i.hm
  store i8 %i.hp, ptr %i.hk, align 1, !alias.scope !618, !noalias !577
  %exitcond.not.i.i.i = icmp eq i64 %i.hl, %i.hc
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit.i.i, label %.lr.ph.preheader.i.i.i, !llvm.loop !624

_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %middle.block, %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.819.8..sroa_idx21.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !566
  br label %bb.aw

bb.br:                                            ; preds = %bb.aw
  %i.hq = landingpad { ptr, i32 }
          cleanup
  store i8 %i.db, ptr %i.dd, align 8, !alias.scope !576, !noalias !577
  %.sroa.5209.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  store i8 %.sroa.517.1.i.i, ptr %.sroa.5209.0..sroa_idx.i.i, align 1, !alias.scope !576, !noalias !577
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  store i16 %.sroa.718.1.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 2, !alias.scope !576, !noalias !577
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.819.i.i, i64 28, i1 false), !noalias !577
  br label %.body

bb.bs:                                            ; preds = %bb.aw
  store i8 %i.db, ptr %i.dd, align 8, !alias.scope !576, !noalias !577
  %.sroa.5209.0..sroa_idx210.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  store i8 %.sroa.517.1.i.i, ptr %.sroa.5209.0..sroa_idx210.i.i, align 1, !alias.scope !576, !noalias !577
  %.sroa.6.0..sroa_idx212.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  store i16 %.sroa.718.1.i.i, ptr %.sroa.6.0..sroa_idx212.i.i, align 2, !alias.scope !576, !noalias !577
  %.sroa.7.0..sroa_idx214.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.0..sroa_idx214.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.819.i.i, i64 28, i1 false), !noalias !577
  br label %bb.t

.loopexit.i:                                      ; preds = %bb.an, %bb.aj, %bb.af, %.thread220.i.i, %bb.z, %bb.v, %.noexc67, %.noexc65, %.noexc62, %bb.ao, %bb.ak, %bb.ag, %bb.aa, %bb.w
  %.sroa.21.0.ph.i = phi i16 [ %.sroa.11.i.sroa.0.0.copyload.i, %bb.w ], [ %.sroa.21.0.copyload.i, %.noexc67 ], [ %.sroa.11197.i.sroa.0.0.copyload.i, %bb.aa ], [ %.sroa.21.0.copyload187.i, %.noexc65 ], [ %.sroa.11200.i.sroa.0.0.copyload.i, %bb.ag ], [ %.sroa.21.0.copyload189.i, %.noexc62 ], [ %.sroa.11203.i.sroa.0.0.copyload.i, %bb.ak ], [ %.sroa.9206.0.copyload.i.i, %bb.ao ], [ undef, %bb.v ], [ undef, %bb.z ], [ undef, %.thread220.i.i ], [ undef, %bb.af ], [ undef, %bb.aj ], [ undef, %bb.an ]
  %.sroa.15.0.ph.i = phi i8 [ %.sroa.8194.0.copyload.i.i, %bb.w ], [ %.sroa.15.0.copyload.i, %.noexc67 ], [ %.sroa.8196.0.copyload.i.i, %bb.aa ], [ %.sroa.15.0.copyload183.i, %.noexc65 ], [ %.sroa.8199.0.copyload.i.i, %bb.ag ], [ %.sroa.15.0.copyload185.i, %.noexc62 ], [ %.sroa.8202.0.copyload.i.i, %bb.ak ], [ %.sroa.8205.0.copyload.i.i, %bb.ao ], [ undef, %bb.v ], [ undef, %bb.z ], [ undef, %.thread220.i.i ], [ undef, %bb.af ], [ undef, %bb.aj ], [ undef, %bb.an ]
  %.sroa.0.0.ph.i = phi i8 [ %i.cm, %bb.w ], [ %i.gn, %.noexc67 ], [ %i.cu, %bb.aa ], [ %i.gi, %.noexc65 ], [ %i.dn, %bb.ag ], [ %i.fg, %.noexc62 ], [ %i.dr, %bb.ak ], [ %i.dv, %bb.ao ], [ 15, %bb.an ], [ 15, %bb.aj ], [ 15, %bb.af ], [ 16, %.thread220.i.i ], [ 15, %bb.z ], [ 15, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.819.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.i.i, i64 28, i1 false)
  br label %bb.cj

bb.bt:                                            ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.819.i.i)
  %i.hr = zext i16 %.sroa.058.0.i.i to i64
  %i.hs = load i16, ptr %i.bd, align 2, !alias.scope !548, !noalias !551, !noundef !4 ; 2 uses
  %i.ht = zext i16 %i.hs to i64
  %i.hu = shl nuw nsw i64 %i.hr, 2
  %i.hv = mul nuw nsw i64 %i.hu, %i.ht            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !567
  %.not173.i = icmp samesign ugt i64 %i.hv, %i.bh
  br i1 %.not173.i, label %.invoke443, label %bb.bu, !prof !46

bb.bu:                                            ; preds = %bb.bt
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ab, i16 noundef %.sroa.058.0.i.i, i16 noundef %i.hs, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %i.bv, i64 noundef %i.hv)
          to label %.noexc69 unwind label %.loopexit.split-lp150.loopexit.split-lp

.noexc69:                                         ; preds = %bb.bu
  %i.hw = load i8, ptr %i.s, align 8, !range !304, !noalias !567, !noundef !4 ; 2 uses
  %.not174.i = icmp eq i8 %i.hw, -1
  br i1 %.not174.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.noexc69
  %.sroa.9.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.9.0.copyload101 = load i8, ptr %.sroa.9.0..sroa_idx100, align 1, !noalias !625
  %.sroa.10.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.sroa.10.0.copyload105 = load i16, ptr %.sroa.10.0..sroa_idx104, align 2, !noalias !625
  %.sroa.11.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11.0..sroa_idx108, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !567
  br label %bb.cj

bb.bw:                                            ; preds = %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !567
  %i.hx = load ptr, ptr %.sroa.436.0..sroa_idx, align 8, !alias.scope !548, !noalias !551, !nonnull !4, !noundef !4 ; 2 uses
  %i.hy = load i64, ptr %.sroa.537.0..sroa_idx, align 8, !alias.scope !548, !noalias !551, !noundef !4 ; 2 uses
  %i.hz = icmp samesign eq i64 %i.hy, 0
  br i1 %i.hz, label %.loopexit154, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bw
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hy
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc72, %.lr.ph.preheader.i
  %.sroa.598.0302.i = phi ptr [ %i.ib, %.noexc72 ], [ %i.ia, %.lr.ph.preheader.i ]
  %.sroa.090.0301.i = phi i64 [ %.sroa.090.1.i, %.noexc72 ], [ %i.hv, %.lr.ph.preheader.i ] ; 12 uses
  %.sroa.084.0300.i = phi i16 [ %.sroa.084.1.i, %.noexc72 ], [ %.sroa.058.0.i.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.ib = getelementptr inbounds i8, ptr %.sroa.598.0302.i, i64 -1 ; 3 uses
  %i.ic = load i8, ptr %i.ib, align 1, !noalias !626, !noundef !4 ; 2 uses
  %i.id = zext i8 %i.ic to i64                    ; 2 uses
  %i.ie = icmp ult i8 %i.ic, 4
  br i1 %i.ie, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph.i
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.id ; 10 uses
  %i.ig = load i8, ptr %i.if, align 8, !range !479, !alias.scope !548, !noalias !551, !noundef !4
  switch i8 %i.ig, label %default.unreachable [
    i8 -1, label %bb.bz
    i8 0, label %bb.ca
    i8 1, label %bb.cb
    i8 2, label %bb.cc
    i8 3, label %bb.cd
  ], !prof !627

bb.by:                                            ; preds = %.lr.ph.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.id, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #23
          to label %.noexc70 unwind label %.loopexit.split-lp150.loopexit.split-lp

.noexc70:                                         ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #23
          to label %.noexc71 unwind label %.loopexit.split-lp150.loopexit.split-lp

.noexc71:                                         ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !567
  %.not178.i = icmp ugt i64 %.sroa.090.0301.i, %i.bh
  br i1 %.not178.i, label %.invoke443, label %bb.ce, !prof !46

bb.cb:                                            ; preds = %bb.bx
  %.not177.i = icmp ugt i64 %.sroa.090.0301.i, %i.bh
  br i1 %.not177.i, label %.invoke443, label %bb.ch, !prof !46

bb.cc:                                            ; preds = %bb.bx
  %.not176.i = icmp ugt i64 %.sroa.090.0301.i, %i.bh
  br i1 %.not176.i, label %.invoke443, label %bb.ci, !prof !46

bb.cd:                                            ; preds = %bb.bx
  %i.ih = load i16, ptr %i.bc, align 8, !alias.scope !548, !noalias !551, !noundef !4 ; 3 uses
  %i.ii = zext i16 %i.ih to i64
  %i.ij = load i16, ptr %i.bd, align 2, !alias.scope !548, !noalias !551, !noundef !4 ; 2 uses
  %i.ik = zext i16 %i.ij to i64
  %i.il = shl nuw nsw i64 %i.ii, 2
  %i.im = mul nuw nsw i64 %i.il, %i.ik
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  %i.io = load i16, ptr %i.in, align 2, !alias.scope !548, !noalias !551, !noundef !4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !548, !noalias !551, !nonnull !4, !noundef !4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !548, !noalias !551, !noundef !4
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform(ptr noalias nofree noundef nonnull %i.bv, i64 noundef range(i64 0, -9223372036854775808) %i.bh, i16 noundef %i.ih, i16 noundef %i.ij, i16 noundef %i.io, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.iq, i64 noundef %i.is)
          to label %.noexc72 unwind label %.loopexit149

bb.ce:                                            ; preds = %bb.ca
  %i.it = load i16, ptr %i.bd, align 2, !alias.scope !548, !noalias !551, !noundef !4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !alias.scope !548, !noalias !551, !noundef !4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !548, !noalias !551, !nonnull !4, !noundef !4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.iz = load i64, ptr %i.iy, align 8, !alias.scope !548, !noalias !551, !noundef !4
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform25apply_predictor_transform(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull %i.bv, i64 noundef %.sroa.090.0301.i, i16 noundef %.sroa.084.0300.i, i16 noundef %i.it, i8 noundef %i.iv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ix, i64 noundef %i.iz)
          to label %.noexc74 unwind label %.loopexit149

.noexc74:                                         ; preds = %bb.ce
  %i.ja = load i8, ptr %i.r, align 8, !range !304, !noalias !567, !noundef !4 ; 2 uses
  %.not179.i = icmp eq i8 %i.ja, -1
  br i1 %.not179.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.noexc74
  %.sroa.9.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.9.0.copyload103 = load i8, ptr %.sroa.9.0..sroa_idx102, align 1, !noalias !625
  %.sroa.10.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.sroa.10.0.copyload107 = load i16, ptr %.sroa.10.0..sroa_idx106, align 2, !noalias !625
  %.sroa.11.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11.0..sroa_idx109, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !567
  br label %bb.cj

bb.cg:                                            ; preds = %.noexc74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !567
  br label %.noexc72

.noexc72:                                         ; preds = %bb.ci, %bb.ch, %bb.cd, %bb.cg
  %.sroa.084.1.i = phi i16 [ %.sroa.084.0300.i, %bb.cg ], [ %i.ih, %bb.cd ], [ %.sroa.084.0300.i, %bb.ch ], [ %.sroa.084.0300.i, %bb.ci ]
  %.sroa.090.1.i = phi i64 [ %.sroa.090.0301.i, %bb.cg ], [ %i.im, %bb.cd ], [ %.sroa.090.0301.i, %bb.ch ], [ %.sroa.090.0301.i, %bb.ci ]
  %i.jb = icmp eq ptr %i.hx, %i.ib
  br i1 %i.jb, label %.loopexit154, label %.lr.ph.i

bb.ch:                                            ; preds = %bb.cb
  %i.jc = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !alias.scope !548, !noalias !551, !noundef !4
  %i.je = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !alias.scope !548, !noalias !551, !nonnull !4, !noundef !4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !548, !noalias !551, !noundef !4
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform21apply_color_transform(ptr noalias nofree noundef nonnull %i.bv, i64 noundef %.sroa.090.0301.i, i16 noundef %.sroa.084.0300.i, i8 noundef %i.jd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jf, i64 noundef %i.jh)
          to label %.noexc72 unwind label %.loopexit149

.invoke443:                                       ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bt
  %i.ji = phi i64 [ %i.hv, %bb.bt ], [ %.sroa.090.0301.i, %bb.ca ], [ %.sroa.090.0301.i, %bb.cb ], [ %.sroa.090.0301.i, %bb.cc ]
  %i.jj = phi ptr [ @57, %bb.bt ], [ @56, %bb.cc ], [ @55, %bb.cb ], [ @54, %bb.ca ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ji, i64 noundef range(i64 0, -9223372036854775808) %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jj) #23
          to label %.cont444 unwind label %.loopexit.split-lp150.loopexit.split-lp
end_hunk_0
begin_hunk_1_@_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE15read_transformsCsa5QsYiPB8Gl_5image:bb.a
  %i.dz = add nuw nsw i32 %i.du, %i.dy
  %i.ea = lshr i32 %i.dz, %i.ds                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %narrow = mul nuw nsw i32 %i.dw, %i.ea
  %i.eb = zext nneg i32 %narrow to i64
  %i.ec = shl nuw nsw i64 %i.eb, 2                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !810
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ec, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !810
  %i.ed = load i64, ptr %i.b, align 8, !range !117, !noalias !810, !noundef !4
  %i.ee = trunc nuw i64 %i.ed to i1
  %i.ef = load i64, ptr %i.ac, align 8, !range !118, !noalias !810, !noundef !4 ; 2 uses
  br i1 %i.ee, label %bb.ai, label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188, !prof !6

bb.ai:                                            ; preds = %.thread232
  %i.eg = load i64, ptr %i.ad, align 8, !noalias !810
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ef, i64 %i.eg) #26, !noalias !810
  unreachable

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188: ; preds = %.thread232
  %.sroa.5.0.extract.trunc.i163 = trunc nuw nsw i32 %i.dw to i16
  %.sroa.5.0.extract.trunc.i158 = trunc nuw nsw i32 %i.ea to i16
  %i.eh = load ptr, ptr %i.ad, align 8, !noalias !810, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !810
  store i64 %i.ef, ptr %i.m, align 8, !alias.scope !810
  store ptr %i.eh, ptr %i.ae, align 8, !alias.scope !810
  store i64 %i.ec, ptr %i.af, align 8, !alias.scope !810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef align 8 dereferenceable(200) %1, i16 noundef %.sroa.5.0.extract.trunc.i163, i16 noundef %.sroa.5.0.extract.trunc.i158, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.eh, i64 noundef %i.ec)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #24
          to label %common.resume unwind label %bb.ah

bb.ak:                                            ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit188
  %i.ej = load i8, ptr %i.l, align 8, !range !304, !noundef !4
  %.not153 = icmp eq i8 %i.ej, -1
  br i1 %.not153, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit190 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.el = landingpad { ptr, i32 }
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

.loopexit248:                                     ; preds = %bb.x, %bb.y
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
  %i.em = load i64, ptr %i.y, align 8, !noalias !804
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ci, i64 %i.em) #26, !noalias !804
  unreachable

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit191: ; preds = %.thread238
  %i.en = load ptr, ptr %i.y, align 8, !noalias !804, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !804
  store i64 %i.ci, ptr %i.k, align 8, !alias.scope !804
  store ptr %i.en, ptr %i.z, align 8, !alias.scope !804
  store i64 %i.cf, ptr %i.aa, align 8, !alias.scope !804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef align 8 dereferenceable(200) %1, i16 noundef %i.cd, i16 noundef 1, i1 noundef zeroext false, ptr noalias nofree noundef nonnull %i.en, i64 noundef %i.cf)
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
  %i.eo = load i8, ptr %i.j, align 8, !range !304, !noundef !4
  %.not151 = icmp eq i8 %i.eo, -1
  br i1 %.not151, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit193 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit193: ; preds = %bb.as
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bd

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.er = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i, 2
  br i1 %i.er, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.es = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i, 4
  br i1 %i.es, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.et = icmp samesign ult i16 %.sroa.519.0.extract.trunc.i, 16
  %. = zext i1 %i.et to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av
  %.sroa.056.0 = phi i32 [ 2, %bb.aw ], [ %., %bb.ax ], [ 3, %bb.av ] ; 2 uses
  %i.eu = zext i16 %.sroa.058.0 to i32
  %i.ev = shl nuw nsw i32 1, %.sroa.056.0
  %i.ew = add nsw i32 %i.eu, -1
  %i.ex = add nsw i32 %i.ew, %i.ev
  %i.ey = lshr i32 %i.ex, %.sroa.056.0            ; 2 uses
  %i.ez = icmp samesign ugt i32 %i.ey, 65535
  %i.fa = shl nuw i32 %i.ey, 16
  %.sroa.0139.0.insert.insert = select i1 %i.ez, i32 513, i32 %i.fa ; 2 uses
  %i.fb = trunc i32 %.sroa.0139.0.insert.insert to i1
  br i1 %i.fb, label %bb.az, label %bb.ba, !prof !6

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
  %i.fc = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.fd = load i64, ptr %i.aa, align 8, !noundef !4 ; 3 uses
  %i.fe = icmp samesign ugt i64 %i.fd, 4
  br i1 %i.fe, label %.lr.ph.preheader.i.preheader, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit

.lr.ph.preheader.i.preheader:                     ; preds = %bb.ba
  %i.ff = add i64 %i.fd, -4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ff, 4
  br i1 %min.iters.check, label %.lr.ph.preheader.i.preheader595, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.preheader
  %n.vec = and i64 %i.ff, -4                      ; 3 uses
  %i.fg = add i64 %n.vec, 4
  %load_initial = load <4 x i8>, ptr %i.fc, align 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %store_forwarded = phi <4 x i8> [ %load_initial, %vector.ph ], [ %i.fj, %vector.body ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 %index
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.fi, align 1, !alias.scope !813
  %i.fj = add <4 x i8> %store_forwarded, %wide.load ; 2 uses
  store <4 x i8> %i.fj, ptr %i.fi, align 1, !alias.scope !813
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !816

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ff, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.preheader.i.preheader595

.lr.ph.preheader.i.preheader595:                  ; preds = %.lr.ph.preheader.i.preheader, %middle.block
  %.sroa.01.04.i.ph = phi i64 [ 4, %.lr.ph.preheader.i.preheader ], [ %i.fg, %middle.block ]
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader595, %.lr.ph.preheader.i
  %.sroa.01.04.i = phi i64 [ %i.fm, %.lr.ph.preheader.i ], [ %.sroa.01.04.i.ph, %.lr.ph.preheader.i.preheader595 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.sroa.01.04.i ; 3 uses
  %i.fm = add nuw nsw i64 %.sroa.01.04.i, 1       ; 2 uses
  %i.fn = load i8, ptr %i.fl, align 1, !alias.scope !813, !noundef !4
  %i.fo = getelementptr i8, ptr %i.fl, i64 -4
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !813, !noundef !4
  %i.fq = add i8 %i.fp, %i.fn
  store i8 %i.fq, ptr %i.fl, align 1, !alias.scope !813
  %exitcond.not.i = icmp eq i64 %i.fm, %i.fd
  br i1 %exitcond.not.i, label %_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.preheader.i, !llvm.loop !817

_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE16adjust_color_mapCsa5QsYiPB8Gl_5image.exit: ; preds = %.lr.ph.preheader.i, %middle.block, %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.819.8..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ag

bb.bb:                                            ; preds = %bb.ag
  %i.fr = landingpad { ptr, i32 }
          cleanup
  store i8 %i.bc, ptr %i.be, align 8
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %.sroa.517.1, ptr %.sroa.5209.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 %.sroa.718.1, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.819, i64 28, i1 false)
  br label %common.resume

bb.bc:                                            ; preds = %bb.ag
  store i8 %i.bc, ptr %i.be, align 8
  %.sroa.5209.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %.sroa.517.1, ptr %.sroa.5209.0..sroa_idx210, align 1
  %.sroa.6.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 %.sroa.718.1, ptr %.sroa.6.0..sroa_idx212, align 2
  %.sroa.7.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.0..sroa_idx214, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.819, i64 28, i1 false)
  br label %bb.b

bb.bd:                                            ; preds = %.loopexit, %.loopexit248, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit193, %.loopexit250, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit190, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, %.loopexit251, %bb.m, %.loopexit247, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB15_6cursor6CursorRShEEE19decode_image_streamCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1, i16 noundef %2, i16 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.12190.i.i = alloca [28 x i8], align 4    ; 11 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.6.i.sroa.9.i = alloca [28 x i8], align 4 ; 6 uses
  %i.o = alloca [56 x i8], align 8                ; 14 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.12240.i = alloca [28 x i8], align 4      ; 4 uses
  %.sroa.8234.i = alloca [7 x i8], align 1        ; 4 uses
  %.sroa.12236.i = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.12.i = alloca [28 x i8], align 4         ; 4 uses
  %.sroa.11230.i = alloca [30 x i8], align 2      ; 4 uses
  %.sroa.11227.i = alloca [30 x i8], align 2      ; 4 uses
  %.sroa.11.i48 = alloca [30 x i8], align 2       ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.11180 = alloca [28 x i8], align 4        ; 5 uses
  %i.y = alloca [1 x i8], align 1                 ; 3 uses
  %i.z = alloca [4 x i8], align 4                 ; 4 uses
  %i.aa = alloca [4 x i8], align 4                ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %i.ac = alloca [4 x i8], align 4                ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [32 x i8], align 8               ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [4 x i8], align 4                ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.11129 = alloca [30 x i8], align 2        ; 2 uses
  %.sroa.11 = alloca [30 x i8], align 2           ; 2 uses
  %.sroa.040.i.sroa.6 = alloca [70 x i8], align 2 ; 7 uses
  %i.ap = alloca [280 x i8], align 8              ; 5 uses
  %.sroa.5136.sroa.6 = alloca [30 x i8], align 2  ; 5 uses
  %.sroa.6138 = alloca [16 x i8], align 8         ; 5 uses
  %i.aq = alloca [56 x i8], align 8               ; 23 uses
  %.sroa.634.i.sroa.8 = alloca [30 x i8], align 2 ; 6 uses
  %i.ar = alloca [280 x i8], align 8              ; 13 uses
  %i.as = alloca [24 x i8], align 8               ; 13 uses
  %i.at = alloca [48 x i8], align 8               ; 9 uses
  %i.au = alloca [24 x i8], align 8               ; 5 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 11 uses
  %i.ax = alloca [24 x i8], align 8               ; 16 uses
  %i.ay = alloca [4 x i8], align 4                ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [32 x i8], align 8               ; 8 uses
  %i.bb = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.1143.i.sroa.4 = alloca [29 x i8], align 1 ; 3 uses
  %i.bc = alloca [88 x i8], align 8               ; 18 uses
  %.sroa.18 = alloca [30 x i8], align 2           ; 10 uses
  %.sroa.20 = alloca [40 x i8], align 8           ; 5 uses
  %.sroa.613.sroa.8 = alloca [30 x i8], align 2   ; 7 uses
  %i.bd = alloca [32 x i8], align 8               ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 28 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 44 uses
  %i.bg = load i8, ptr %i.bf, align 8, !alias.scope !824, !noalias !825, !noundef !4 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !828
  call fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.be), !noalias !825
  %i.bi = load i8, ptr %i.bb, align 8, !range !304, !noalias !828, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bi, -1
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !828
  %.pre.i.i = load i8, ptr %i.bf, align 8, !alias.scope !824, !noalias !825 ; 2 uses
  %i.bj = icmp eq i8 %.pre.i.i, 0
  br i1 %i.bj, label %bb.i, label %.thread.i

bb.d:                                             ; preds = %bb.b
  %.sroa.839.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %.sroa.839.0.copyload.i = load i8, ptr %.sroa.839.0..sroa_idx.i, align 1, !noalias !829
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %.sroa.11.i.sroa.0.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx.i, align 2, !noalias !830
  %.sroa.11.i.sroa.4.0..sroa.11.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.1143.i.sroa.4, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.11.i.sroa.4.0..sroa.11.0..sroa_idx.i.sroa_idx, i64 29, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !828
  br label %bb.i

.thread.i:                                        ; preds = %bb.c, %bb.a
  %i.bk = phi i8 [ %.pre.i.i, %bb.c ], [ %i.bg, %bb.a ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 36 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !824, !noalias !825, !noundef !4 ; 2 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 2 uses
  store i64 %i.bn, ptr %i.bl, align 8, !alias.scope !824, !noalias !825
  %i.bo = add i8 %i.bk, -1                        ; 2 uses
  store i8 %i.bo, ptr %i.bf, align 8, !alias.scope !824, !noalias !825
  %i.bp = and i64 %i.bm, 1
  %.not.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.bq = icmp ult i8 %i.bk, 5
  br i1 %i.bq, label %bb.f, label %.thread49.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !834
  call fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.be), !noalias !836
  %i.br = load i8, ptr %i.ba, align 8, !range !304, !noalias !834, !noundef !4 ; 2 uses
  %.not.i36.i = icmp eq i8 %i.br, -1
  br i1 %.not.i36.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !834
  %.pre.i37.i = load i8, ptr %i.bf, align 8, !alias.scope !837, !noalias !836 ; 2 uses
  %i.bs = icmp ult i8 %.pre.i37.i, 4
  br i1 %i.bs, label %bb.i, label %..thread49_crit_edge.i

..thread49_crit_edge.i:                           ; preds = %bb.g
  %.pre.i = load i64, ptr %i.bl, align 8, !alias.scope !837, !noalias !836
  br label %.thread49.i

bb.h:                                             ; preds = %bb.f
  %.sroa.842.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %.sroa.842.0.copyload.i = load i8, ptr %.sroa.842.0..sroa_idx.i, align 1, !noalias !838
  %.sroa.1143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %.sroa.1143.i.sroa.0.0.copyload = load i8, ptr %.sroa.1143.0..sroa_idx.i, align 2, !noalias !830
  %.sroa.1143.i.sroa.4.0..sroa.1143.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.1143.i.sroa.4, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.1143.i.sroa.4.0..sroa.1143.0..sroa_idx.i.sroa_idx, i64 29, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !834
  br label %bb.i

.thread49.i:                                      ; preds = %..thread49_crit_edge.i, %bb.e
  %i.bt = phi i64 [ %.pre.i, %..thread49_crit_edge.i ], [ %i.bn, %bb.e ] ; 3 uses
  %i.bu = phi i8 [ %.pre.i37.i, %..thread49_crit_edge.i ], [ %i.bo, %bb.e ]
  %i.bv = lshr i64 %i.bt, 4
  store i64 %i.bv, ptr %i.bl, align 8, !alias.scope !837, !noalias !836
  %i.bw = add i8 %i.bu, -4
end_hunk_1
