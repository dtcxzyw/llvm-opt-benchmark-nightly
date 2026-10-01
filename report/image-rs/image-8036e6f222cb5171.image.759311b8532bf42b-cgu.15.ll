Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvXs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderINtB5_10HdrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder16read_image_boxedBb_:bb.a
  %lcmp.mod502 = icmp ne i64 %xtraiter499, 0
  call void @llvm.assume(i1 %lcmp.mod502)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.061.0144.i.i.epil = phi i64 [ %i.lv, %.lr.ph.i.i.epil ], [ %.sroa.061.0144.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter500 = phi i64 [ %epil.iter500.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.lv = add nuw nsw i64 %.sroa.061.0144.i.i.epil, 1
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %.sroa.061.0144.i.i.epil
  %i.lw = getelementptr inbounds nuw i8, ptr %gep.i.epil, i64 3
  store i8 %i.lc, ptr %i.lw, align 1, !alias.scope !1665, !noalias !1679
  %epil.iter500.next = add i64 %epil.iter500, 1   ; 2 uses
  %epil.iter500.cmp.not = icmp eq i64 %epil.iter500.next, %xtraiter499
  br i1 %epil.iter500.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !1537

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit401.unr-lcssa, %.lr.ph.i.i.epil, %_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i, %bb.cm, %bb.cj
  %i.lx = phi i64 [ %i.mg, %bb.cm ], [ %i.ld, %bb.cj ], [ %i.mi, %_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i ], [ %i.ld, %.lr.ph.i.i.epil ], [ %i.ld, %.loopexit.i.i.loopexit401.unr-lcssa ]
  %.sroa.024.0.i.i = phi i64 [ 0, %bb.cm ], [ 0, %bb.cj ], [ %i.ky, %_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i ], [ %i.kv, %.lr.ph.i.i.epil ], [ %i.kv, %.loopexit.i.i.loopexit401.unr-lcssa ]
  %i.ly = add nuw nsw i64 %.sroa.024.0.i.i, %.sroa.0.0148.i.i ; 4 uses
  %i.lz = icmp samesign ult i64 %i.ly, %i.dc
  br i1 %i.lz, label %bb.cc, label %bb.cb

bb.ck:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1666
  store i64 %i.kz, ptr %i.cv, align 8, !noalias !1666
  store i64 %i.dc, ptr %i.cw, align 8, !noalias !1666
  store i8 9, ptr %i.c, align 8, !noalias !1666
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc76.i unwind label %.loopexit.i, !noalias !1561

.noexc76.i:                                       ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1666
  br label %.noexc57.i

bb.cl:                                            ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  %i.ma = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ks ; 2 uses
  %i.mb = sub nuw nsw i64 %.val1.i.i.i.i, %i.ks
  call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  %i.mc = icmp ult i64 %i.mb, %i.ky
  br i1 %i.mc, label %.noexc57.thread.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i86.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i86.i.i: ; preds = %bb.cl
  %i.md = icmp eq i8 %i.kr, 1
  br i1 %i.md, label %.thread.i.i, label %bb.cm

.thread.i.i:                                      ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i86.i.i
  %i.me = load i8, ptr %i.ma, align 1, !noalias !1683, !noundef !5
  store i8 %i.me, ptr %i.d, align 1, !alias.scope !1684, !noalias !1685
  %i.mf = add i64 %i.ks, %i.ky                    ; 2 uses
  store i64 %i.mf, ptr %i.bu, align 8, !alias.scope !1686, !noalias !1687
  br label %.lr.ph147.preheader.i.i

bb.cm:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i86.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %i.ma, i64 range(i64 0, -9223372036854775808) %i.ky, i1 false), !alias.scope !1688, !noalias !1689
  %i.mg = add i64 %i.ks, %i.ky                    ; 3 uses
  store i64 %i.mg, ptr %i.bu, align 8, !alias.scope !1686, !noalias !1687
  %i.mh = icmp eq i8 %i.kr, 0
  br i1 %i.mh, label %.loopexit.i.i, label %.lr.ph147.preheader.i.i

.lr.ph147.preheader.i.i:                          ; preds = %bb.cm, %.thread.i.i
  %i.mi = phi i64 [ %i.mf, %.thread.i.i ], [ %i.mg, %bb.cm ]
  %i.mj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ky
  %i.mk = sub nuw i64 %i.dc, %.sroa.0.0148.i.i
  br label %.lr.ph147.i.i

.lr.ph147.i.i:                                    ; preds = %_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i, %.lr.ph147.preheader.i.i
  %.sroa.092.0146.i.i = phi ptr [ %i.mo, %_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i ], [ %i.d, %.lr.ph147.preheader.i.i ] ; 2 uses
  %.sroa.7.0145.i.i = phi i64 [ %i.mn, %_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i ], [ 0, %.lr.ph147.preheader.i.i ] ; 3 uses
  %i.ml = add nuw nsw i64 %.sroa.7.0145.i.i, %.sroa.0.0148.i.i ; 2 uses
  %exitcond164.not.i.i = icmp eq i64 %.sroa.7.0145.i.i, %i.mk
  br i1 %exitcond164.not.i.i, label %.invoke.i, label %_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i

_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i: ; preds = %.lr.ph147.i.i
  %i.mm = load i8, ptr %.sroa.092.0146.i.i, align 1, !noalias !1666, !noundef !5
  %i.mn = add nuw nsw i64 %.sroa.7.0145.i.i, 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.092.0146.i.i, i64 1 ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ml
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 3
  store i8 %i.mm, ptr %i.mq, align 1, !alias.scope !1665, !noalias !1679
  %i.mr = icmp eq ptr %i.mo, %i.mj
  br i1 %i.mr, label %.loopexit.i.i, label %.lr.ph147.i.i

.noexc57.thread.i:                                ; preds = %bb.cl, %bb.ch, %bb.cc
  store i64 %.val1.i.i.i.i, ptr %i.bu, align 8, !alias.scope !1669, !noalias !1670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1666
  br label %.loopexit160.i

.noexc57.i:                                       ; preds = %.noexc76.i, %.noexc74.i, %.noexc73.i
  %.pr.i = load i8, ptr %i.u, align 8, !noalias !1575 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1666
  %.not21.i.i = icmp eq i8 %.pr.i, -1
  br i1 %.not21.i.i, label %bb.cn, label %.loopexit160.loopexit.i

.loopexit160.loopexit.i:                          ; preds = %.noexc57.i
  %.sroa.1289.0..sroa_idx98.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.1289.0.copyload99.pre.i = load ptr, ptr %.sroa.1289.0..sroa_idx98.phi.trans.insert.i, align 8, !noalias !1602
  br label %.loopexit160.i

.loopexit160.i:                                   ; preds = %.loopexit160.loopexit.i, %.noexc57.thread.i
  %.sroa.1289.0.copyload99.i = phi ptr [ @18, %.noexc57.thread.i ], [ %.sroa.1289.0.copyload99.pre.i, %.loopexit160.loopexit.i ]
  %i.ms = phi i8 [ 9, %.noexc57.thread.i ], [ %.pr.i, %.loopexit160.loopexit.i ]
  %.sroa.12.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx88.i, i64 7, i1 false), !noalias !1558
  %.sroa.13.0..sroa_idx104.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx104.i, i64 48, i1 false), !noalias !1558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1575
  br label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread145.i

bb.cn:                                            ; preds = %.noexc57.i, %.noexc57.thread139.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1575
  br label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i

bb.co:                                            ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.i._crit_edge.i, %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread89.i.i
  %.sroa.1289.0.copyload91.i = phi ptr [ %.sroa.1289.0.copyload91.pre.i, %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.i._crit_edge.i ], [ @18, %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread89.i.i ]
  %.sroa.078.0.copyload79.i = phi i8 [ %.pr87.i.i, %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.i._crit_edge.i ], [ 9, %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread89.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx84.i, i64 7, i1 false), !noalias !1558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx100.i, i64 48, i1 false), !noalias !1558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1575
  br label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread145.i

_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i.i: ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.i.i, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1575
  br label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit39.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1558
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_.exit27.i unwind label %bb.cp, !noalias !1556

bb.cp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit39.i
  %i.mt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %bb.cx unwind label %bb.cq, !noalias !1556

bb.cq:                                            ; preds = %bb.cp
  %i.mu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1556
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_.exit27.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit39.i, %bb.k
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %bb.cw unwind label %bb.cv

_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread145.i: ; preds = %bb.co, %.loopexit160.i, %bb.ca, %bb.bn, %bb.ba, %bb.ab
  %.sroa.078.0150.i = phi i8 [ 9, %bb.ab ], [ %i.ms, %.loopexit160.i ], [ %.sroa.078.0.copyload81.i, %bb.bn ], [ %.sroa.078.0.copyload79.i, %bb.co ], [ %.sroa.078.0.copyload80.i, %bb.ba ], [ %.sroa.078.0.copyload82.i, %bb.ca ]
  %.sroa.1289.0149.i = phi ptr [ @18, %bb.ab ], [ %.sroa.1289.0.copyload99.i, %.loopexit160.i ], [ %.sroa.1289.0.copyload95.i, %bb.bn ], [ %.sroa.1289.0.copyload91.i, %bb.co ], [ %.sroa.1289.0.copyload93.i, %bb.ba ], [ %.sroa.1289.0.copyload97.i, %bb.ca ]
  store i8 %.sroa.078.0150.i, ptr %0, align 8, !alias.scope !1556, !noalias !1562
  %.sroa.4131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4131.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i, i64 7, i1 false), !noalias !1562
  %.sroa.5132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.1289.0149.i, ptr %.sroa.5132.0..sroa_idx.i, align 8, !alias.scope !1556, !noalias !1562
  %.sroa.6133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6133.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.i, i64 48, i1 false), !noalias !1562
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.cs unwind label %bb.cr, !noalias !1561

bb.cr:                                            ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread145.i
  %i.mv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body29.i unwind label %bb.ct, !noalias !1561

bb.cs:                                            ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread145.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit65.i unwind label %bb.d, !noalias !1561

bb.ct:                                            ; preds = %bb.cr
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1561
  unreachable

_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i: ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i.i, %bb.cn
  %i.mx = getelementptr inbounds nuw [12 x i8], ptr %.sroa.44.0253.i, i64 %i.ai
  %i.my = load ptr, ptr %i.br, align 8, !noalias !1558, !nonnull !5, !noundef !5 ; 2 uses
  %i.mz = load i64, ptr %i.bs, align 8, !noalias !1558, !noundef !5
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.mz
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAhjc_EINtBZ_4IterNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEINtB5_7ZipImplBW_B1v_E3newB1O_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noundef nonnull %.sroa.44.0253.i, ptr noundef nonnull %i.mx, ptr noundef nonnull %i.my, ptr noundef nonnull %i.na)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutAhjc_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IterNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1U_.exit.i unwind label %.loopexit.i, !noalias !1561

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutAhjc_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IterNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1U_.exit.i: ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i
  %.sroa.0108.0.copyload.i = load ptr, ptr %i.aa, align 8, !noalias !1558 ; 5 uses
  %.sroa.4110.0.copyload.i = load ptr, ptr %.sroa.4110.0..sroa_idx.i, align 8, !noalias !1558 ; 5 uses
  %.sroa.5112.0.copyload.i = load i64, ptr %.sroa.5112.0..sroa_idx.i, align 8, !noalias !1558 ; 8 uses
  %.sroa.7113.0.copyload.i = load i64, ptr %.sroa.7113.0..sroa_idx.i, align 8, !noalias !1558 ; 5 uses
  %i.nb = icmp ult i64 %.sroa.5112.0.copyload.i, %.sroa.7113.0.copyload.i
  br i1 %i.nb, label %.lr.ph.i, label %.thread151.loopexit.i

.lr.ph.i:                                         ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutAhjc_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IterNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1U_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0108.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4110.0.copyload.i) ]
  %i.nc = sub nuw i64 %.sroa.7113.0.copyload.i, %.sroa.5112.0.copyload.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.nc, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.nd = mul nuw i64 %.sroa.5112.0.copyload.i, 12
  %scevgep = getelementptr i8, ptr %.sroa.0108.0.copyload.i, i64 %i.nd
  %i.ne = mul i64 %.sroa.7113.0.copyload.i, 12
  %scevgep388 = getelementptr i8, ptr %.sroa.0108.0.copyload.i, i64 %i.ne
  %i.nf = shl nuw i64 %.sroa.5112.0.copyload.i, 2
  %scevgep389 = getelementptr i8, ptr %.sroa.4110.0.copyload.i, i64 %i.nf
  %i.ng = shl i64 %.sroa.7113.0.copyload.i, 2
  %scevgep390 = getelementptr i8, ptr %.sroa.4110.0.copyload.i, i64 %i.ng
  %bound0 = icmp ult ptr %scevgep, %scevgep390
  %bound1 = icmp ult ptr %scevgep389, %scevgep388
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nc, -4                      ; 3 uses
  %i.nh = add i64 %.sroa.5112.0.copyload.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ni = add nuw i64 %.sroa.5112.0.copyload.i, %index ; 2 uses
  %i.nj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0108.0.copyload.i, i64 %i.ni
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4110.0.copyload.i, i64 %i.ni
  %wide.load = load <4 x i32>, ptr %i.nk, align 1, !alias.scope !1690, !noalias !1561 ; 5 uses
  %i.nl = lshr <4 x i32> %wide.load, splat (i32 24) ; 2 uses
  %i.nm = icmp ugt <4 x i32> %wide.load, splat (i32 33554431)
  %i.nn = shl nuw nsw <4 x i32> %i.nl, splat (i32 23)
  %i.no = add nuw <4 x i32> %i.nn, splat (i32 2139095040)
  %i.np = and <4 x i32> %i.no, splat (i32 2139095040)
  %i.nq = shl nuw nsw <4 x i32> %i.nl, splat (i32 22)
  %i.nr = select <4 x i1> %i.nm, <4 x i32> %i.np, <4 x i32> %i.nq
  %i.ns = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.nt = trunc <4 x i32> %i.ns to <4 x i8>
  %i.nu = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.nv = bitcast <4 x i32> %i.nr to <4 x float>
  %i.nw = fmul <4 x float> %i.nv, splat (float 3.906250e-03) ; 2 uses
  %i.nx = uitofp <4 x i8> %i.nt to <4 x float>
  %i.ny = fmul <4 x float> %i.nw, %i.nx
  %i.nz = shufflevector <4 x float> %i.nw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oa = shufflevector <4 x i32> %wide.load, <4 x i32> %i.nu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ob = trunc <8 x i32> %i.oa to <8 x i8>
  %i.oc = uitofp <8 x i8> %i.ob to <8 x float>
  %i.od = fmul <8 x float> %i.nz, %i.oc
  %i.oe = shufflevector <4 x float> %i.ny, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.od, <8 x float> %i.oe, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.nj, align 1, !alias.scope !1691, !noalias !1692
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.of = icmp eq i64 %index.next, %n.vec
  br i1 %i.of, label %middle.block, label %vector.body, !llvm.loop !1554

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nc, %n.vec
  br i1 %cmp.n, label %.thread151.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.5112.0249.i.ph = phi i64 [ %.sroa.5112.0.copyload.i, %vector.memcheck ], [ %.sroa.5112.0.copyload.i, %.lr.ph.i ], [ %i.nh, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.5112.0249.i = phi i64 [ %i.oi, %scalar.ph ], [ %.sroa.5112.0249.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0108.0.copyload.i, i64 %.sroa.5112.0249.i ; 3 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4110.0.copyload.i, i64 %.sroa.5112.0249.i
  %i.oi = add nuw i64 %.sroa.5112.0249.i, 1       ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %i.oh, align 1, !noalias !1561 ; 5 uses
  %.sroa.6.0.extract.shift.i.i = lshr i32 %.sroa.011.0.copyload.i, 24 ; 2 uses
  %i.oj = icmp ugt i32 %.sroa.011.0.copyload.i, 33554431
  %i.ok = shl nuw nsw i32 %.sroa.6.0.extract.shift.i.i, 23
  %i.ol = add nuw i32 %i.ok, 2139095040
  %i.om = and i32 %i.ol, 2139095040
  %i.on = shl nuw nsw i32 %.sroa.6.0.extract.shift.i.i, 22
  %.sroa.03.0.i.i = select i1 %i.oj, i32 %i.om, i32 %i.on
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.011.0.copyload.i, 16
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.42.0.extract.shift.i.i = lshr i32 %.sroa.011.0.copyload.i, 8
  %.sroa.42.0.extract.trunc.i.i = trunc i32 %.sroa.42.0.extract.shift.i.i to i8
  %.sroa.01.0.extract.trunc.i.i = trunc i32 %.sroa.011.0.copyload.i to i8
  %i.oo = bitcast i32 %.sroa.03.0.i.i to float
  %i.op = fmul float %i.oo, 3.906250e-03          ; 3 uses
  %i.oq = uitofp i8 %.sroa.01.0.extract.trunc.i.i to float
  %i.or = fmul float %i.op, %i.oq
  %i.os = uitofp i8 %.sroa.42.0.extract.trunc.i.i to float
  %i.ot = fmul float %i.op, %i.os
  %i.ou = uitofp i8 %.sroa.5.0.extract.trunc.i.i to float
  %i.ov = fmul float %i.op, %i.ou
  store float %i.or, ptr %i.og, align 1, !alias.scope !1691, !noalias !1692
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  store float %i.ot, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !1691, !noalias !1692
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store float %i.ov, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !1691, !noalias !1692
  %exitcond.not.i = icmp eq i64 %i.oi, %.sroa.7113.0.copyload.i
  br i1 %exitcond.not.i, label %.thread151.loopexit.i, label %scalar.ph, !llvm.loop !1555

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit65.i: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1558
  br label %bb.k

bb.cu:                                            ; preds = %bb.t, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder11HdrMetadataEBJ_.exit.i.i
  %i.ow = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.cu, %bb.s, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1556
  unreachable

bb.cv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_.exit27.i
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_.exit27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 96, i64 noundef 8) #30
  ret void

bb.cx:                                            ; preds = %bb.cv, %bb.cp, %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder11HdrMetadataEBJ_.exit.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ox, %bb.cv ], [ %i.mt, %bb.cp ], [ %i.ax, %bb.l ], [ %.pn.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder11HdrMetadataEBJ_.exit.i.i ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 96, i64 noundef 8) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1v_6cursor6CursorRShEEEENtNtNtNtB1x_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1702, !noalias !1703, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1702, !noalias !1703, !noundef !5
  %.not.i.not.i = icmp eq i64 %i.d, %i.b
  br i1 %.not.i.not.i, label %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1U_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byte0ECsa5QsYiPB8Gl_5image.exit.i, label %bb.b

_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1U_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byte0ECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.a
  tail call void @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4util24uninlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1G_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) #33
  br label %_RNvXs3_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1c_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byteCsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !alias.scope !1702, !noalias !1703, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  %.val2.i.i = load i8, ptr %i.f, align 1, !noalias !1704, !noundef !5
  %i.g = add i64 %i.b, 1
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !1702, !noalias !1703
  store i8 0, ptr %0, align 8, !alias.scope !1699, !noalias !1700
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val2.i.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !1699, !noalias !1700
  br label %_RNvXs3_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1c_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byteCsa5QsYiPB8Gl_5image.exit

_RNvXs3_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1c_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byteCsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1U_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byte0ECsa5QsYiPB8Gl_5image.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtB5_5BytesQDNtNtB7_4read4ReadEL_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1716
  store i8 0, ptr %i.b, align 1, !noalias !1716
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !noalias !1717, !nonnull !5 ; 2 uses
  %i.f = call { i64, ptr } %i.e(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull %i.b, i64 noundef 1) #34, !noalias !1716, !inline_history !1711 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %i.i = trunc nuw i64 %i.g to i1
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i.i, %.lr.ph.i.i
  %i.k = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i.i ] ; 8 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.m = and i64 %i.l, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %.split2.i.i
    i64 0, label %.split3.i.i
    i64 1, label %.split.i.i
  ], !prof !16

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i unwind label %bb.f, !noalias !1716

.noexc.i.i:                                       ; preds = %bb.c
  %i.o = lshr i64 %i.l, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1716, !nonnull !5, !noundef !5
  %i.s = invoke noundef zeroext i1 %i.r(i32 noundef %i.p)
end_hunk_0
