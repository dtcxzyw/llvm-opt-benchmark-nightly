Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_library-626596e94cb6d705.typst_library.996bbf7c63fe4cae-cgu.0?download=true
inline.NumInlined: 84061
inline.NumDeleted: 35720
loop-unroll.NumCompletelyUnrolled: 240
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 371
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RINvNtNtCsbMQOdixSu6G_5image2io14free_functions14decoder_to_vechINtNtNtNtB6_6codecs4webp7decoder11WebPDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2x_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78769)
  %i.mh = load ptr, ptr %.val2.i.i.i.i.i, align 8, !alias.scope !78772, !noalias !78773, !nonnull !12, !noundef !12
  %i.mi = load ptr, ptr %i.lp, align 8, !alias.scope !78772, !noalias !78773, !nonnull !12, !align !219, !noundef !12 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load i64, ptr %i.mj, align 8, !range !1281, !invariant.load !12, !noalias !78774 ; 2 uses
  %i.ml = tail call i64 @llvm.umax.i64(i64 %i.mk, i64 16)
  %i.mm = add nsw i64 %i.ml, -1
  %i.mn = and i64 %i.mm, -16
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mn
  %i.mp = add nsw i64 %i.mk, -1
  %i.mq = and i64 %i.mp, -16
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mq
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8, !invariant.load !12, !noalias !78774, !nonnull !12
  %i.mv = invoke { ptr, i64 } %i.mu(ptr noundef nonnull %i.ms) #100
          to label %.noexc250.i.i unwind label %bb.bv, !noalias !78565, !inline_history !78765

.noexc250.i.i:                                    ; preds = %bb.ca
  %i.mw = extractvalue { ptr, i64 } %i.mv, 1
  store i64 %i.mw, ptr %i.lj, align 8, !alias.scope !78750, !noalias !78751
  br label %bb.fl

bb.cb:                                            ; preds = %.noexc249.i.i
  %i.mx = extractvalue { ptr, i64 } %i.md, 0
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %..i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %i.my, align 1, !alias.scope !78775, !noalias !78779
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  %.sroa.6.0.copyload.i.i.i.i = load i16, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 1, !alias.scope !78775, !noalias !78779
  %i.mz = zext i16 %.sroa.6.0.copyload.i.i.i.i to i32
  %i.na = add i64 %.val3.i.i.i.i.i, 3
  %i.nb = zext i8 %.sroa.0.0.copyload.i.i.i.i to i32
  store i64 %i.na, ptr %i.lj, align 8, !alias.scope !78750, !noalias !78751
  %i.nc = shl nuw nsw i32 %i.mz, 9
  %i.nd = shl nuw nsw i32 %i.nb, 1
  %i.ne = or disjoint i32 %i.nc, %i.nd            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !78742
  invoke fastcc void @_RINvNtCsbxRVbv72Bp5_10image_webp8extended12read_3_bytesINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1F_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef align 8 dereferenceable(16) %i.li)
          to label %.noexc251.i.i unwind label %bb.bv, !noalias !78565

.noexc251.i.i:                                    ; preds = %bb.cb
  %i.nf = load i8, ptr %i.z, align 8, !range !24355, !noalias !78742, !noundef !12 ; 2 uses
  %.not370.i.i.i = icmp eq i8 %i.nf, -1
  br i1 %.not370.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.noexc251.i.i
  %.sroa.4231.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %.sroa.0.sroa.27.sroa.0.0.copyload546.i.i = load i24, ptr %.sroa.4231.0..sroa_idx.i.i.i, align 1, !noalias !78743
  %.sroa.5232.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.5232.0.copyload.i.i.i = load i32, ptr %.sroa.5232.0..sroa_idx.i.i.i, align 4, !noalias !78742
  %.sroa.6233.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.46.8.copyload461.i.i = load i64, ptr %.sroa.6233.0..sroa_idx.i.i.i, align 8, !noalias !78743
  %.sroa.57.8..sroa.6233.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.57.8.copyload467.i.i = load i64, ptr %.sroa.57.8..sroa.6233.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !78743 ; 2 uses
  %.sroa.57.sroa.0.0.extract.trunc481.i.i = trunc i64 %.sroa.57.8.copyload467.i.i to i40
  %.sroa.57.sroa.17.0.extract.shift491.i.i = lshr i64 %.sroa.57.8.copyload467.i.i, 40
  %.sroa.57.sroa.17.0.extract.trunc492.i.i = trunc nuw i64 %.sroa.57.sroa.17.0.extract.shift491.i.i to i24
  %.sroa.65.8..sroa.6233.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.65.8.copyload475.i.i = load i64, ptr %.sroa.65.8..sroa.6233.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !78743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !78742
  br label %bb.fl

bb.cd:                                            ; preds = %.noexc251.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.nh = load i32, ptr %i.ng, align 4, !noalias !78742, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !78742
  %i.ni = shl i32 %i.nh, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !78742
  invoke fastcc void @_RINvNtCsbxRVbv72Bp5_10image_webp8extended12read_3_bytesINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1F_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef align 8 dereferenceable(16) %i.li)
          to label %.noexc252.i.i unwind label %bb.bv, !noalias !78565

.noexc252.i.i:                                    ; preds = %bb.cd
  %i.nj = load i8, ptr %i.y, align 8, !range !24355, !noalias !78742, !noundef !12 ; 2 uses
  %.not371.i.i.i = icmp eq i8 %i.nj, -1
  br i1 %.not371.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.noexc252.i.i
  %.sroa.4243.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.sroa.0.sroa.27.sroa.0.0.copyload551.i.i = load i24, ptr %.sroa.4243.0..sroa_idx.i.i.i, align 1, !noalias !78743
  %.sroa.5244.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.sroa.5244.0.copyload.i.i.i = load i32, ptr %.sroa.5244.0..sroa_idx.i.i.i, align 4, !noalias !78742
  %.sroa.6245.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.46.8.copyload462.i.i = load i64, ptr %.sroa.6245.0..sroa_idx.i.i.i, align 8, !noalias !78743
  %.sroa.57.8..sroa.6245.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.57.8.copyload468.i.i = load i64, ptr %.sroa.57.8..sroa.6245.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !78743 ; 2 uses
  %.sroa.57.sroa.0.0.extract.trunc482.i.i = trunc i64 %.sroa.57.8.copyload468.i.i to i40
  %.sroa.57.sroa.17.0.extract.shift493.i.i = lshr i64 %.sroa.57.8.copyload468.i.i, 40
  %.sroa.57.sroa.17.0.extract.trunc494.i.i = trunc nuw i64 %.sroa.57.sroa.17.0.extract.shift493.i.i to i24
  %.sroa.65.8..sroa.6245.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.65.8.copyload476.i.i = load i64, ptr %.sroa.65.8..sroa.6245.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !78743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !78742
  br label %bb.fl

bb.cf:                                            ; preds = %.noexc252.i.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !noalias !78742, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !78742
  %i.nm = add i32 %i.nl, 1                        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !78742
  invoke fastcc void @_RINvNtCsbxRVbv72Bp5_10image_webp8extended12read_3_bytesINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1F_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef align 8 dereferenceable(16) %i.li)
          to label %.noexc253.i.i unwind label %bb.bv, !noalias !78565

.noexc253.i.i:                                    ; preds = %bb.cf
  %i.nn = load i8, ptr %i.x, align 8, !range !24355, !noalias !78742, !noundef !12 ; 2 uses
  %.not372.i.i.i = icmp eq i8 %i.nn, -1
  br i1 %.not372.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.noexc253.i.i
  %.sroa.4255.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.sroa.0.sroa.27.sroa.0.0.copyload556.i.i = load i24, ptr %.sroa.4255.0..sroa_idx.i.i.i, align 1, !noalias !78743
  %.sroa.5256.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.5256.0.copyload.i.i.i = load i32, ptr %.sroa.5256.0..sroa_idx.i.i.i, align 4, !noalias !78742
  %.sroa.6257.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.46.8.copyload463.i.i = load i64, ptr %.sroa.6257.0..sroa_idx.i.i.i, align 8, !noalias !78743
  %.sroa.57.8..sroa.6257.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.57.8.copyload469.i.i = load i64, ptr %.sroa.57.8..sroa.6257.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !78743 ; 2 uses
  %.sroa.57.sroa.0.0.extract.trunc483.i.i = trunc i64 %.sroa.57.8.copyload469.i.i to i40
  %.sroa.57.sroa.17.0.extract.shift495.i.i = lshr i64 %.sroa.57.8.copyload469.i.i, 40
  %.sroa.57.sroa.17.0.extract.trunc496.i.i = trunc nuw i64 %.sroa.57.sroa.17.0.extract.shift495.i.i to i24
  %.sroa.65.8..sroa.6257.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.65.8.copyload477.i.i = load i64, ptr %.sroa.65.8..sroa.6257.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !78743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !78742
  br label %bb.fl

bb.ch:                                            ; preds = %.noexc253.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.np = load i32, ptr %i.no, align 4, !noalias !78742, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !78742
  %i.nq = add i32 %i.np, 1                        ; 10 uses
  %i.nr = icmp ugt i32 %i.nm, 16384
  %i.ns = icmp ugt i32 %i.nq, 16384
  %or.cond.i.i.i = or i1 %i.nr, %i.ns
  br i1 %or.cond.i.i.i, label %bb.fl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nt = add nuw nsw i32 %i.nm, %i.ne
  %i.nu = load i32, ptr %i.bz, align 8, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.nv = icmp ugt i32 %i.nt, %i.nu
  br i1 %i.nv, label %bb.fl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nw = add i32 %i.nq, %i.ni
  %i.nx = load i32, ptr %i.ca, align 4, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.ny = icmp ugt i32 %i.nw, %i.nx
  br i1 %i.ny, label %bb.fl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !78742
  invoke fastcc void @_RINvNtCsbxRVbv72Bp5_10image_webp8extended12read_3_bytesINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1F_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.w, ptr noalias nofree noundef align 8 dereferenceable(16) %i.li)
          to label %.noexc254.i.i unwind label %bb.bv, !noalias !78565

.noexc254.i.i:                                    ; preds = %bb.ck
  %i.nz = load i8, ptr %i.w, align 8, !range !24355, !noalias !78742, !noundef !12 ; 2 uses
  %.not373.i.i.i = icmp eq i8 %i.nz, -1
  br i1 %.not373.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.noexc254.i.i
  %.sroa.4267.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.0.sroa.27.sroa.0.0.copyload561.i.i = load i24, ptr %.sroa.4267.0..sroa_idx.i.i.i, align 1, !noalias !78743
  %.sroa.5268.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.5268.0.copyload.i.i.i = load i32, ptr %.sroa.5268.0..sroa_idx.i.i.i, align 4, !noalias !78742
  %.sroa.6269.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.46.8.copyload464.i.i = load i64, ptr %.sroa.6269.0..sroa_idx.i.i.i, align 8, !noalias !78743
  %.sroa.57.8..sroa.6269.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.57.8.copyload470.i.i = load i64, ptr %.sroa.57.8..sroa.6269.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !78743 ; 2 uses
  %.sroa.57.sroa.0.0.extract.trunc484.i.i = trunc i64 %.sroa.57.8.copyload470.i.i to i40
  %.sroa.57.sroa.17.0.extract.shift497.i.i = lshr i64 %.sroa.57.8.copyload470.i.i, 40
  %.sroa.57.sroa.17.0.extract.trunc498.i.i = trunc nuw i64 %.sroa.57.sroa.17.0.extract.shift497.i.i to i24
  %.sroa.65.8..sroa.6269.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.65.8.copyload478.i.i = load i64, ptr %.sroa.65.8..sroa.6269.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !78743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !78742
  br label %bb.fl

bb.cm:                                            ; preds = %.noexc254.i.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ob = load i32, ptr %i.oa, align 4, !noalias !78742, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !78742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !78742
  invoke fastcc void @_RNvYINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesENtNtCs3NgxqU9CSt5_14byteorder_lite2io12ReadBytesExt7read_u8BQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef align 8 dereferenceable(16) %i.li) #100
          to label %.noexc255.i.i unwind label %bb.bv, !noalias !78565

.noexc255.i.i:                                    ; preds = %bb.cm
  %i.oc = load i8, ptr %i.v, align 8, !range !2936, !noalias !78742, !noundef !12
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.noexc255.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !noalias !78742, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !78742
  %i.og = ptrtoint ptr %i.of to i64
  br label %bb.fl

bb.co:                                            ; preds = %.noexc255.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.oi = load i8, ptr %i.oh, align 1, !noalias !78742, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !78742
  %i.oj = and i8 %i.oi, 2
  %i.ok = icmp eq i8 %i.oj, 0
  %i.ol = load i8, ptr %.sroa.7356.0..sroa_idx.i.i, align 4, !range !2936, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.om = trunc nuw i8 %i.ol to i1
  %i.on = getelementptr inbounds nuw i8, ptr %i.ar, i64 68 ; 2 uses
  %.sroa.096.0.copyload.i.i.i = load i8, ptr %i.on, align 4, !alias.scope !78735, !noalias !78736
  %.sroa.398.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 69 ; 2 uses
  %.sroa.398.0.copyload.i.i.i = load i32, ptr %.sroa.398.0..sroa_idx.i.i.i, align 1, !alias.scope !78735, !noalias !78736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !78742
  invoke fastcc void @_RINvNtCsbxRVbv72Bp5_10image_webp7decoder17read_chunk_headerQINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1K_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef align 8 dereferenceable(16) %i.li)
          to label %.noexc256.i.i unwind label %bb.bv, !noalias !78565

.noexc256.i.i:                                    ; preds = %bb.co
  %i.oo = load i8, ptr %i.u, align 8, !range !24355, !noalias !78742, !noundef !12 ; 2 uses
  %.not374.i.i.i = icmp eq i8 %i.oo, -1
  br i1 %.not374.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.noexc256.i.i
  %.sroa.4285.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.0.sroa.27.sroa.0.0.copyload544.i.i = load i56, ptr %.sroa.4285.0..sroa_idx.i.i.i, align 1, !noalias !78743 ; 2 uses
  %.sroa.5286.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5286.0.copyload.i.i.i = load i64, ptr %.sroa.5286.0..sroa_idx.i.i.i, align 8, !noalias !78742
  %.sroa.6287.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.6287.sroa.0.0.copyload.i.i.i = load i8, ptr %.sroa.6287.0..sroa_idx.i.i.i, align 8, !noalias !78742
  %.sroa.6287.sroa.4.0..sroa.6287.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 17
  %.sroa.6287.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.6287.sroa.4.0..sroa.6287.0..sroa_idx.sroa_idx.i.i.i, align 1, !noalias !78742
  %.sroa.7288.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 21
  %.sroa.9.i.sroa.0.0.copyload.i.i = load i24, ptr %.sroa.7288.0..sroa_idx.i.i.i, align 1, !noalias !78742
  %.sroa.8289.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8289.0.copyload.i.i.i = load i64, ptr %.sroa.8289.0..sroa_idx.i.i.i, align 8, !noalias !78742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !78742
  %.sroa.57.sroa.0.0.insert.ext507.i.i = zext i8 %.sroa.6287.sroa.0.0.copyload.i.i.i to i40
  %.sroa.57.sroa.0.1.insert.ext.i.i = zext i32 %.sroa.6287.sroa.4.0.copyload.i.i.i to i40
  %.sroa.57.sroa.0.1.insert.shift.i.i = shl nuw i40 %.sroa.57.sroa.0.1.insert.ext.i.i, 8
  %.sroa.57.sroa.0.1.insert.insert.i.i = or disjoint i40 %.sroa.57.sroa.0.1.insert.shift.i.i, %.sroa.57.sroa.0.0.insert.ext507.i.i
  %extract.t641.i.i = trunc i56 %.sroa.0.sroa.27.sroa.0.0.copyload544.i.i to i24
  %extract662.i.i = lshr i56 %.sroa.0.sroa.27.sroa.0.0.copyload544.i.i, 24
  %extract.t663.i.i = trunc nuw i56 %extract662.i.i to i32
  br label %bb.fl

bb.cq:                                            ; preds = %.noexc256.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0274.0.copyload.i.i.i = load i64, ptr %i.op, align 8, !noalias !78742 ; 7 uses
  %.sroa.4275.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.4275.sroa.0.0.copyload.i.i.i = load i8, ptr %.sroa.4275.0..sroa_idx.i.i.i, align 8, !noalias !78742 ; 3 uses
  %.sroa.4275.sroa.4.0..sroa.4275.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 17
  %.sroa.4275.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4275.sroa.4.0..sroa.4275.0..sroa_idx.sroa_idx.i.i.i, align 1, !noalias !78742 ; 3 uses
  %.sroa.6277.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.6277.0.copyload.i.i.i = load i64, ptr %.sroa.6277.0..sroa_idx.i.i.i, align 8, !noalias !78742 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !78742
  %i.oq = add i64 %.sroa.6277.0.copyload.i.i.i, 24
  %i.or = icmp ugt i64 %i.oq, %.sroa.0196.0.copyload.i.i.i
  br i1 %i.or, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  switch i8 %.sroa.4275.sroa.0.0.copyload.i.i.i, label %bb.ct [
    i8 2, label %bb.cu
    i8 3, label %bb.cv
    i8 7, label %bb.cw
  ]

bb.cs:                                            ; preds = %bb.cq
  %.sroa.0358.0.insert.ext.i.i.i = zext i8 %.sroa.4275.sroa.0.0.copyload.i.i.i to i40
  %.sroa.0358.1.insert.ext.i.i.i = zext i32 %.sroa.4275.sroa.4.0.copyload.i.i.i to i40
  %.sroa.0358.1.insert.shift.i.i.i = shl nuw i40 %.sroa.0358.1.insert.ext.i.i.i, 8
  %.sroa.0358.1.insert.insert.i.i.i = or disjoint i40 %.sroa.0358.1.insert.shift.i.i.i, %.sroa.0358.0.insert.ext.i.i.i
  %i.os = tail call fastcc noundef i32 @_RNvMNtCsbxRVbv72Bp5_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc(i40 %.sroa.0358.1.insert.insert.i.i.i) ; 2 uses
  %extract.t.i.i = trunc i32 %i.os to i24
  %extract.i.i = lshr i32 %i.os, 24
  br label %bb.fl

bb.ct:                                            ; preds = %bb.cr
  %.sroa.0355.0.insert.ext.i.i.i = zext i8 %.sroa.4275.sroa.0.0.copyload.i.i.i to i40
  %.sroa.0355.1.insert.ext.i.i.i = zext i32 %.sroa.4275.sroa.4.0.copyload.i.i.i to i40
  %.sroa.0355.1.insert.shift.i.i.i = shl nuw i40 %.sroa.0355.1.insert.ext.i.i.i, 8
  %.sroa.0355.1.insert.insert.i.i.i = or disjoint i40 %.sroa.0355.1.insert.shift.i.i.i, %.sroa.0355.0.insert.ext.i.i.i
  %i.ot = tail call fastcc noundef i32 @_RNvMNtCsbxRVbv72Bp5_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc(i40 %.sroa.0355.1.insert.insert.i.i.i) ; 2 uses
  %extract.t634.i.i = trunc i32 %i.ot to i24
  %i.ou = lshr i32 %i.ot, 24
  br label %bb.fl

bb.cu:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !78742
  store ptr %i.li, ptr %i.t, align 8, !noalias !78742
  %i.ov = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.0274.0.copyload.i.i.i, ptr %i.ov, align 8, !noalias !78742
  %i.ow = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.0274.0.copyload.i.i.i, ptr %i.ow, align 8, !noalias !78742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !78742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !78742
  invoke fastcc void @_RNvMs0_NtCsbxRVbv72Bp5_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtBY_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE12decode_frameB20_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.r, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %.noexc257.i.i unwind label %bb.bv, !noalias !78565

.noexc257.i.i:                                    ; preds = %bb.cu
  %i.ox = load i64, ptr %i.r, align 8, !range !4638, !noalias !78742, !noundef !12 ; 2 uses
  %i.oy = icmp eq i64 %i.ox, -1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.6126.i.sroa.0.0.copyload587.i.i = load i64, ptr %i.oz, align 8, !noalias !78742 ; 4 uses
  %.sroa.6126.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6126.i.sroa.7.0.copyload589.i.i = load i64, ptr %.sroa.6126.i.sroa.7.0..sroa_idx.i.i, align 8, !noalias !78742 ; 2 uses
  %.sroa.6126.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.6126.i.sroa.8.0.copyload591.i.i = load i64, ptr %.sroa.6126.i.sroa.8.0..sroa_idx.i.i, align 8, !noalias !78742 ; 3 uses
  %.sroa.6126.i.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.6126.i.sroa.9.0.copyload593.i.i = load i64, ptr %.sroa.6126.i.sroa.9.0..sroa_idx.i.i, align 8, !noalias !78742 ; 2 uses
  br i1 %i.oy, label %bb.cx, label %bb.cy

bb.cv:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !78742
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78783)
  %i.pa = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  store ptr %i.li, ptr %i.pa, align 8, !alias.scope !78786, !noalias !78742
  %.sroa.5443.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  store i64 %.sroa.0274.0.copyload.i.i.i, ptr %.sroa.5443.0..sroa_idx.i.i.i, align 8, !alias.scope !78786, !noalias !78742
  %.sroa.6444.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store i64 %.sroa.0274.0.copyload.i.i.i, ptr %.sroa.6444.0..sroa_idx.i.i.i, align 8, !alias.scope !78786, !noalias !78742
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78788, !noalias !78789
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78788, !noalias !78789
  %i.pb = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 -1, ptr %i.pb, align 8, !alias.scope !78788, !noalias !78789
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i8 -1, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78788, !noalias !78789
  %.sroa.712.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i8 -1, ptr %.sroa.712.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78788, !noalias !78789
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store i8 -1, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78788, !noalias !78789
  store i64 0, ptr %i.p, align 8, !alias.scope !78788, !noalias !78789
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78788, !noalias !78789
  %.sroa.515.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.515.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78788, !noalias !78789
  %i.pc = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  store i16 0, ptr %i.pc, align 8, !alias.scope !78788, !noalias !78789
  %i.pd = getelementptr inbounds nuw i8, ptr %i.p, i64 194
  store i16 0, ptr %i.pd, align 2, !alias.scope !78788, !noalias !78789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !78742
  %narrow379.i.i.i = shl nuw nsw i32 %i.nm, 2
  %i.pe = mul nuw nsw i32 %narrow379.i.i.i, %i.nq
  %i.pf = zext nneg i32 %i.pe to i64
  invoke fastcc void @_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.o, i8 noundef 0, i64 noundef %i.pf)
          to label %bb.dj unwind label %bb.di, !noalias !78790

bb.cw:                                            ; preds = %bb.cr
  %i.pg = add i64 %.sroa.6277.0.copyload.i.i.i, 32
  %i.ph = icmp ugt i64 %i.pg, %.sroa.0196.0.copyload.i.i.i
  br i1 %i.ph, label %bb.dr, label %bb.dq

bb.cx:                                            ; preds = %.noexc257.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !78742
  %.sroa.0.sroa.0.0.extract.trunc517.i.i = trunc i64 %.sroa.6126.i.sroa.0.0.copyload587.i.i to i8
  %.sroa.0.sroa.27.0.extract.shift522.i.i = lshr i64 %.sroa.6126.i.sroa.0.0.copyload587.i.i, 8
  %.sroa.57.sroa.0.0.extract.trunc480.i.i = trunc i64 %.sroa.6126.i.sroa.8.0.copyload591.i.i to i40
  %.sroa.57.sroa.17.0.extract.shift489.i.i = lshr i64 %.sroa.6126.i.sroa.8.0.copyload591.i.i, 40
  %.sroa.57.sroa.17.0.extract.trunc490.i.i = trunc nuw i64 %.sroa.57.sroa.17.0.extract.shift489.i.i to i24
  %extract.t699.i.i = trunc i64 %.sroa.0.sroa.27.0.extract.shift522.i.i to i24
  %sum.shift702.i.i = lshr i64 %.sroa.6126.i.sroa.0.0.copyload587.i.i, 32
  %extract.t701.i.i = trunc nuw i64 %sum.shift702.i.i to i32
  br label %bb.dh

bb.cy:                                            ; preds = %.noexc257.i.i
  %.sroa.5298.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.5132.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5132.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5298.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !78742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !78742
  %.sroa.4131.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.6126.i.sroa.0.0.copyload587.i.i, ptr %.sroa.4131.0..sroa_idx.i.i.i, align 8, !noalias !78742
  %.sroa.6126.i.sroa.7.0..sroa.4131.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.6126.i.sroa.7.0.copyload589.i.i, ptr %.sroa.6126.i.sroa.7.0..sroa.4131.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !78742
  %.sroa.6126.i.sroa.8.0..sroa.4131.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %.sroa.6126.i.sroa.8.0.copyload591.i.i, ptr %.sroa.6126.i.sroa.8.0..sroa.4131.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !78742
  %.sroa.6126.i.sroa.9.0..sroa.4131.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %.sroa.6126.i.sroa.9.0.copyload593.i.i, ptr %.sroa.6126.i.sroa.9.0..sroa.4131.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !78742
  store i64 %i.ox, ptr %i.s, align 8, !noalias !78742
  %i.pi = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.pj = load i16, ptr %i.pi, align 8, !noalias !78742, !noundef !12
  %i.pk = zext i16 %i.pj to i32
  %i.pl = icmp ne i32 %i.nm, %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.s, i64 74
  %i.pn = load i16, ptr %i.pm, align 2, !noalias !78742
  %i.po = zext i16 %i.pn to i32
  %i.pp = icmp ne i32 %i.nq, %i.po
  %or.cond7.i.i.i = select i1 %i.pl, i1 true, i1 %i.pp
  br i1 %or.cond7.i.i.i, label %bb.dg, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !78742
  %narrow383.i.i.i = mul nuw nsw i32 %i.nm, 3
  %narrow384.i.i.i = mul nuw nsw i32 %narrow383.i.i.i, %i.nq
  %i.pq = zext nneg i32 %narrow384.i.i.i to i64
  invoke fastcc void @_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, i8 noundef 0, i64 noundef %i.pq)
          to label %bb.db unwind label %bb.da, !noalias !78790

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i: ; preds = %bb.dd, %bb.dc, %bb.da
  %.pn385.i.i.i = phi { ptr, i32 } [ %i.pr, %bb.da ], [ %i.pz, %bb.dc ], [ %i.pz, %bb.dd ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbxRVbv72Bp5_10image_webp3vp85FrameECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(88) %i.s) #101, !noalias !78790
  br label %.thread.i.i

bb.da:                                            ; preds = %bb.cz
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i

bb.db:                                            ; preds = %bb.cz
  %i.ps = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !78742, !nonnull !12, !noundef !12 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.pv = load i64, ptr %i.pu, align 8, !noalias !78742, !noundef !12 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsbMQOdixSu6G_5image2io14free_functions14decoder_to_vechINtNtNtNtB6_6codecs4webp7decoder11WebPDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2x_:bb.a
  store i64 %i.ri, ptr %i.j, align 8, !noalias !78742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !78742
  %narrow.i.i.i = shl nuw nsw i32 %i.nm, 2
  %i.rl = mul nuw nsw i32 %narrow.i.i.i, %i.nq
  %i.rm = zext nneg i32 %i.rl to i64
  invoke fastcc void @_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, i8 noundef 0, i64 noundef %i.rm)
          to label %bb.eg unwind label %bb.ef, !noalias !78790

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit416.i.i.i: ; preds = %bb.ei, %bb.eh, %bb.ef
  %.pn.i.i.i = phi { ptr, i32 } [ %i.rn, %bb.ef ], [ %lpad.phi.i.i.i, %bb.eh ], [ %lpad.phi.i.i.i, %bb.ei ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbxRVbv72Bp5_10image_webp3vp85FrameECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(88) %i.j) #101, !noalias !78790
  br label %bb.dt

bb.ef:                                            ; preds = %bb.ee
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit416.i.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.ro = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !noalias !78742, !nonnull !12, !noundef !12 ; 5 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !noalias !78742, !noundef !12 ; 5 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.rt = load i8, ptr %i.rs, align 8, !range !2936, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.ru = trunc nuw i8 %i.rt to i1
  invoke void @_RNvMs_NtCsbxRVbv72Bp5_10image_webp3vp8NtB4_5Frame9fill_rgba(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.j, ptr noalias nofree noundef nonnull %i.rp, i64 noundef %i.rr, i1 noundef zeroext %i.ru)
          to label %bb.ej unwind label %.loopexit.split-lp.i.i.i, !noalias !78790

.loopexit555.i.i.i:                               ; preds = %bb.ff
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

.loopexit.split-lp.i.i.i:                         ; preds = %.invoke.i.i.i, %bb.eg
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eh:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit555.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit555.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78809)
  %.val.i414.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !78809, !noalias !78742 ; 2 uses
  %i.rv = icmp eq i64 %.val.i414.i.i.i, 0
  br i1 %i.rv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit416.i.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rp, i64 noundef %.val.i414.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !78812
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit416.i.i.i

bb.ej:                                            ; preds = %bb.eg
  %i.rw = getelementptr inbounds nuw i8, ptr %i.j, i64 74
  %i.rx = load i16, ptr %i.rw, align 2, !noalias !78742, !noundef !12 ; 2 uses
  %.not563.i.i.i.a = icmp eq i16 %i.rx, 0
  br i1 %.not563.i.i.i.a, label %._crit_edge.i.i.i, label %.lr.ph561.i.i.i

.lr.ph561.i.i.i:                                  ; preds = %bb.ej
  %i.ry = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 3 uses
  %i.rz = load i16, ptr %i.ry, align 8, !noalias !78742, !noundef !12 ; 2 uses
  %.not564.i.i.i.a = icmp eq i16 %i.rz, 0
  br i1 %.not564.i.i.i.a, label %._crit_edge.i.i.i, label %.lr.ph561.split.preheader.i.i.i

.lr.ph561.split.preheader.i.i.i:                  ; preds = %.lr.ph561.i.i.i
  %wide.trip.count576.i.i.i = zext i16 %i.rx to i64
  br label %.lr.ph561.split.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.fi, %.lr.ph561.split.i.i.i
  %exitcond577.not.i.i.i = icmp eq i64 %indvars.iv.next574.i.i.i, %wide.trip.count576.i.i.i
  br i1 %exitcond577.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph561.splitthread-pre-split.i.i.i, !llvm.loop !78813

._crit_edge.i.i.i:                                ; preds = %.loopexit.i.i.i, %.lr.ph561.i.i.i, %bb.ej
  %.sroa.0480.0.copyload482.i.i.i = load i64, ptr %i.g, align 8, !noalias !78742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !78742
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbxRVbv72Bp5_10image_webp3vp85FrameECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(88) %i.j), !noalias !78790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !78742
  %i.sa = icmp eq i64 %.sroa.0513.0.copyload.i.i.i, 0
  br i1 %i.sa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbxRVbv72Bp5_10image_webp8extended10AlphaChunkECsdaEETE4DqmE_13typst_library.exit417.i.i.i, label %bb.ek

.lr.ph561.splitthread-pre-split.i.i.i:            ; preds = %.loopexit.i.i.i
  %.pr597.i.i.i = load i16, ptr %i.ry, align 8, !noalias !78742
  br label %.lr.ph561.split.i.i.i

.lr.ph561.split.i.i.i:                            ; preds = %.lr.ph561.splitthread-pre-split.i.i.i, %.lr.ph561.split.preheader.i.i.i
  %i.sb = phi i16 [ %.pr597.i.i.i, %.lr.ph561.splitthread-pre-split.i.i.i ], [ %i.rz, %.lr.ph561.split.preheader.i.i.i ] ; 2 uses
  %indvars.iv573.i.i.i = phi i64 [ %indvars.iv.next574.i.i.i, %.lr.ph561.splitthread-pre-split.i.i.i ], [ 0, %.lr.ph561.split.preheader.i.i.i ] ; 3 uses
  %indvars.iv.next574.i.i.i = add nuw nsw i64 %indvars.iv573.i.i.i, 1 ; 2 uses
  %.not565.i.i.i = icmp eq i16 %i.sb, 0
  br i1 %.not565.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph561.split.i.i.i
  %wide.trip.count.i.i.i = zext i16 %i.sb to i64
  br label %bb.ff

bb.ek:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4514.0.copyload.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4514.0.copyload.i.i.i, i64 noundef %.sroa.0513.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !78815
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbxRVbv72Bp5_10image_webp8extended10AlphaChunkECsdaEETE4DqmE_13typst_library.exit417.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbxRVbv72Bp5_10image_webp8extended10AlphaChunkECsdaEETE4DqmE_13typst_library.exit417.i.i.i: ; preds = %bb.ek, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !78742
  br label %bb.df

bb.el:                                            ; preds = %bb.er, %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !78736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.pr.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !78735, !noalias !78736
  %.not388.i.i.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not388.i.i.i, label %.invoke605.i.i.i, label %.thread.i.i.i, !prof !78818

bb.em:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !78742
  %i.sc = load i32, ptr %i.bz, align 8, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.sd = load i32, ptr %i.ca, align 4, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.se = shl i32 %i.sc, 2
  %i.sf = mul i32 %i.se, %i.sd
  %i.sg = zext i32 %i.sf to i64
  invoke fastcc void @_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, i8 noundef 0, i64 noundef %i.sg)
          to label %bb.ep unwind label %bb.eo, !noalias !78790

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit423.i.i.i: ; preds = %bb.et, %bb.es, %bb.eo
  %.pn392.i.i.i = phi { ptr, i32 } [ %i.si, %bb.eo ], [ %i.sm, %bb.et ], [ %i.sm, %bb.es ] ; 2 uses
  %i.sh = icmp eq i64 %.sroa.0480.0.i.i.i, 0
  br i1 %i.sh, label %.thread.i.i, label %bb.en

bb.en:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit423.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4483.0.i.i.i, i64 noundef %.sroa.0480.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !78819
  br label %.thread.i.i

bb.eo:                                            ; preds = %.invoke605.i.i.i, %.invoke603.i.i.i, %bb.fd, %bb.fa, %.thread.i.i.i, %bb.em
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit423.i.i.i

bb.ep:                                            ; preds = %bb.em
  %i.sj = load i8, ptr %i.on, align 4, !range !2936, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %bb.ev, %bb.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !78742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !78742
  %.val.i244.i.i = load i64, ptr %i.ar, align 8, !range !4638, !alias.scope !78735, !noalias !78736, !noundef !12 ; 2 uses
  %i.sl = icmp sgt i64 %.val.i244.i.i, 0
  br i1 %i.sl, label %bb.er, label %bb.el

bb.er:                                            ; preds = %bb.eq
  %.val396.i.i.i = load ptr, ptr %.sroa.6263.0..sroa_idx.i.i, align 8, !alias.scope !78735, !noalias !78736, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val396.i.i.i, i64 noundef %.val.i244.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !78822
  br label %bb.el

bb.es:                                            ; preds = %bb.eu
  %i.sm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78825)
  %.val.i421.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !78825, !noalias !78742 ; 2 uses
  %i.sn = icmp eq i64 %.val.i421.i.i.i, 0
  br i1 %i.sn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit423.i.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sp, i64 noundef %.val.i421.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !78828
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit423.i.i.i

bb.eu:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !78742
  %i.so = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.sp = load ptr, ptr %i.so, align 8, !noalias !78742, !nonnull !12, !noundef !12 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.sr = load i64, ptr %i.sq, align 8, !noalias !78742, !noundef !12 ; 2 uses
  %i.ss = and i64 %i.sr, 3
  %i.st = and i64 %i.sr, -4                       ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.st
  %i.sv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.sp, ptr %i.sv, align 8, !alias.scope !78829, !noalias !78832
  %i.sw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.st, ptr %i.sw, align 8, !alias.scope !78829, !noalias !78832
  store ptr %i.su, ptr %i.d, align 8, !alias.scope !78829, !noalias !78832
  %i.sx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ss, ptr %i.sx, align 8, !alias.scope !78829, !noalias !78832
  %i.sy = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 4, ptr %i.sy, align 8, !alias.scope !78829, !noalias !78832
  invoke fastcc void @_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBW_8for_each4callQShNCNvMs1_NtCsbxRVbv72Bp5_10image_webp7decoderINtB2g_11WebPDecoderINtNtNtBa_2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEE10read_frame0E0EB3I_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %.sroa.398.0..sroa_idx.i.i.i)
          to label %bb.ev unwind label %bb.es, !noalias !78790

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !78742
  br label %bb.eq

.thread.i.i.i:                                    ; preds = %bb.el, %bb.df
  %i.sz = load ptr, ptr %.sroa.6263.0..sroa_idx.i.i, align 8, !alias.scope !78735, !noalias !78736, !nonnull !12, !noundef !12
  %i.ta = load i64, ptr %.sroa.7266.0..sroa_idx.i.i, align 8, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.tb = load i32, ptr %i.bz, align 8, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.tc = load i32, ptr %i.ca, align 4, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.td = load i32, ptr %.sroa.6355.0..sroa_idx.i.i, align 4, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.te = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 8, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ar, i64 44 ; 2 uses
  %i.th = load i32, ptr %i.tg, align 4, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 8, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.tk = zext i8 %.sroa.096.0.copyload.i.i.i to i40
  %i.tl = zext i32 %.sroa.398.0.copyload.i.i.i to i40
  %i.tm = shl nuw i40 %i.tl, 8
  %2 = or disjoint i40 %i.tm, %i.tk
  %.sroa.0344.1.insert.insert.i.i.i = select i1 %i.om, i40 %2, i40 0
  invoke void @_RNvNtCsbxRVbv72Bp5_10image_webp8extended15composite_frame(ptr noalias nofree noundef nonnull %i.sz, i64 noundef %i.ta, i32 noundef %i.tb, i32 noundef %i.tc, i40 %.sroa.0344.1.insert.insert.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4483.0.i.i.i, i64 noundef %.sroa.5488.0.i.i.i, i32 noundef %i.ne, i32 noundef %i.ni, i32 noundef %i.nm, i32 noundef %i.nq, i1 noundef zeroext %.sroa.0328.0.i.i.i, i1 noundef zeroext %i.ok, i32 noundef %i.td, i32 noundef %i.tf, i32 noundef %i.th, i32 noundef %i.tj)
          to label %bb.ex unwind label %bb.eo, !noalias !78790

bb.ew:                                            ; preds = %bb.fd
  unreachable

bb.ex:                                            ; preds = %.thread.i.i.i
  store i32 %i.nm, ptr %.sroa.6355.0..sroa_idx.i.i, align 4, !alias.scope !78735, !noalias !78736
  store i32 %i.nq, ptr %i.te, align 8, !alias.scope !78735, !noalias !78736
  store i32 %i.ne, ptr %i.tg, align 4, !alias.scope !78735, !noalias !78736
  store i32 %i.ni, ptr %i.ti, align 8, !alias.scope !78735, !noalias !78736
  %i.tn = and i8 %i.oi, 1
  store i8 %i.tn, ptr %.sroa.7356.0..sroa_idx.i.i, align 4, !alias.scope !78735, !noalias !78736
  %i.to = add i64 %.sroa.0196.0.copyload.i.i.i, 8
  %i.tp = load i64, ptr %.sroa.4353.0..sroa_idx.i.i, align 8, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.tq = add i64 %i.to, %i.tp
  store i64 %i.tq, ptr %.sroa.4353.0..sroa_idx.i.i, align 8, !alias.scope !78735, !noalias !78736
  %i.tr = load i32, ptr %.sroa.5354.0..sroa_idx.i.i, align 8, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.ts = add i32 %i.tr, 1
  store i32 %i.ts, ptr %.sroa.5354.0..sroa_idx.i.i, align 8, !alias.scope !78735, !noalias !78736
  %.val399.i.i.i = load i8, ptr %i.ce, align 1, !range !2936, !alias.scope !78735, !noalias !78736, !noundef !12
  %i.tt = trunc nuw i8 %.val399.i.i.i to i1
  br i1 %i.tt, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.tu = load i64, ptr %i.ar, align 8, !range !4638, !alias.scope !78735, !noalias !78736, !noundef !12
  %.not391.i.i.i = icmp eq i64 %i.tu, -1
  br i1 %.not391.i.i.i, label %.invoke605.i.i.i, label %bb.fe, !prof !37

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78742
  %i.tv = urem i64 %i.ba, 3                       ; 2 uses
  %i.tw = sub nuw nsw i64 %i.ba, %i.tv            ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.bx, ptr %i.ty, align 8, !alias.scope !78835, !noalias !78838
  %i.tz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.tw, ptr %i.tz, align 8, !alias.scope !78835, !noalias !78838
  store ptr %i.tx, ptr %i.b, align 8, !alias.scope !78835, !noalias !78838
  %i.ua = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.tv, ptr %i.ua, align 8, !alias.scope !78835, !noalias !78838
  %i.ub = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 3, ptr %i.ub, align 8, !alias.scope !78835, !noalias !78838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78742
  %i.uc = load i64, ptr %i.ar, align 8, !range !4638, !alias.scope !78735, !noalias !78736, !noundef !12
  %.not389.i.i.i = icmp eq i64 %i.uc, -1
  br i1 %.not389.i.i.i, label %.invoke605.i.i.i, label %bb.fa, !prof !37

bb.fa:                                            ; preds = %bb.ez
  %i.ud = load ptr, ptr %.sroa.6263.0..sroa_idx.i.i, align 8, !alias.scope !78735, !noalias !78736, !nonnull !12, !noundef !12 ; 2 uses
  %i.ue = load i64, ptr %.sroa.7266.0..sroa_idx.i.i, align 8, !alias.scope !78735, !noalias !78736, !noundef !12 ; 2 uses
  %i.uf = and i64 %i.ue, 3
  %i.ug = and i64 %i.ue, -4                       ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.ug
  store ptr %i.ud, ptr %i.a, align 8, !alias.scope !78841, !noalias !78844
  %i.ui = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ug, ptr %i.ui, align 8, !alias.scope !78841, !noalias !78844
  %i.uj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.uh, ptr %i.uj, align 8, !alias.scope !78841, !noalias !78844
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.uf, ptr %i.uk, align 8, !alias.scope !78841, !noalias !78844
  %i.ul = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 4, ptr %i.ul, align 8, !alias.scope !78841, !noalias !78844
  invoke fastcc void @_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.fb unwind label %bb.eo, !noalias !78565

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78742
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !78742 ; 4 uses
  %.sroa.4495.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.4495.0.copyload.i.i.i = load i64, ptr %.sroa.4495.0..sroa_idx.i.i.i, align 8, !noalias !78742 ; 2 uses
  %.sroa.5496.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.5496.0.copyload.i.i.i = load ptr, ptr %.sroa.5496.0..sroa_idx.i.i.i, align 8, !noalias !78742 ; 4 uses
  %.sroa.6498.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.6498.0.copyload.i.i.i = load i64, ptr %.sroa.6498.0..sroa_idx.i.i.i, align 8, !noalias !78742 ; 5 uses
  %.sroa.7499.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.7499.0.copyload.i.i.i = load i64, ptr %.sroa.7499.0..sroa_idx.i.i.i, align 8, !noalias !78742 ; 7 uses
  %.sroa.9500.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.9500.0.copyload.i.i.i = load i64, ptr %.sroa.9500.0..sroa_idx.i.i.i, align 8, !noalias !78742 ; 4 uses
  %i.um = icmp ult i64 %.sroa.7499.0.copyload.i.i.i, %.sroa.9500.0.copyload.i.i.i
  br i1 %i.um, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.i.i.i, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.thread.i.i.i

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.i.i.i: ; preds = %bb.fb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5496.0.copyload.i.i.i) ]
  %.not390.i.i.i = icmp eq ptr %.sroa.3.0.copyload.i.i.i, null
  %.not.i.i243.i.i = icmp eq i64 %.sroa.4495.0.copyload.i.i.i, 3
  br i1 %.not390.i.i.i, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.thread.i.i.i, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.split.i.i.i

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.split.i.i.i: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.i.i.i
  %i.un = icmp ugt i64 %.sroa.6498.0.copyload.i.i.i, 2
  br i1 %i.un, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.split.split.i.i.i, label %bb.fd, !prof !211

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.split.split.i.i.i: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.split.i.i.i
  br i1 %.not.i.i243.i.i, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.preheader, label %.invoke603.i.i.i, !prof !211

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.split.split.i.i.i
  %i.uo = sub i64 %.sroa.9500.0.copyload.i.i.i, %.sroa.7499.0.copyload.i.i.i
  %.neg185 = add i64 %.sroa.7499.0.copyload.i.i.i, 1
  %xtraiter183 = and i64 %i.uo, 1
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.prol

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.preheader
  %i.up = add nuw i64 %.sroa.7499.0.copyload.i.i.i, 1
  %i.uq = mul i64 %.sroa.7499.0.copyload.i.i.i, 3
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i, i64 %i.uq
  %i.us = mul i64 %.sroa.7499.0.copyload.i.i.i, %.sroa.6498.0.copyload.i.i.i
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.5496.0.copyload.i.i.i, i64 %i.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ur, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ut, i64 range(i64 0, -9223372036854775808) 3, i1 false), !alias.scope !78846, !noalias !78850
  br label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.prol.loopexit

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.prol, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.preheader
  %.sroa.7499.0562.i.i.i.unr = phi i64 [ %.sroa.7499.0.copyload.i.i.i, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.preheader ], [ %i.up, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.prol ]
  %i.uu = icmp eq i64 %.sroa.9500.0.copyload.i.i.i, %.neg185
  br i1 %i.uu, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.thread.i.i.i, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i
  %.sroa.7499.0562.i.i.i = phi i64 [ %i.va, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i ], [ %.sroa.7499.0562.i.i.i.unr, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.prol.loopexit ] ; 4 uses
  %i.uv = add nuw i64 %.sroa.7499.0562.i.i.i, 1   ; 2 uses
  %i.uw = mul i64 %.sroa.7499.0562.i.i.i, 3
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i, i64 %i.uw
  %i.uy = mul i64 %.sroa.7499.0562.i.i.i, %.sroa.6498.0.copyload.i.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.5496.0.copyload.i.i.i, i64 %i.uy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ux, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.uz, i64 range(i64 0, -9223372036854775808) 3, i1 false), !alias.scope !78846, !noalias !78850
  %i.va = add nuw i64 %.sroa.7499.0562.i.i.i, 2   ; 2 uses
  %i.vb = mul i64 %i.uv, 3
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i, i64 %i.vb
  %i.vd = mul i64 %i.uv, %.sroa.6498.0.copyload.i.i.i
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.5496.0.copyload.i.i.i, i64 %i.vd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.vc, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ve, i64 range(i64 0, -9223372036854775808) 3, i1 false), !alias.scope !78846, !noalias !78850
  %exitcond578.not.i.i.i.1 = icmp eq i64 %i.va, %.sroa.9500.0.copyload.i.i.i
  br i1 %exitcond578.not.i.i.i.1, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.thread.i.i.i, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.thread.i.i.i: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsdaEETE4DqmE_13typst_library.exit435.i.i.i, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.i.i.i, %bb.fb
  %i.vf = icmp eq i64 %.sroa.0480.0.i.i.i, 0
  br i1 %i.vf, label %bb.fl, label %bb.fc

bb.fc:                                            ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.thread.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4483.0.i.i.i, i64 noundef %.sroa.0480.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !78852
  br label %bb.fl

bb.fd:                                            ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.split.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %.sroa.6498.0.copyload.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5057) #99
          to label %bb.ew unwind label %bb.eo, !noalias !78565

bb.fe:                                            ; preds = %bb.ey
  %i.vg = load i64, ptr %.sroa.7266.0..sroa_idx.i.i, align 8, !alias.scope !78735, !noalias !78736, !noundef !12 ; 2 uses
  %.not.i433.i.i.i = icmp eq i64 %i.ba, %i.vg
  br i1 %.not.i433.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsdaEETE4DqmE_13typst_library.exit435.i.i.i, label %.invoke603.i.i.i, !prof !211

.invoke603.i.i.i:                                 ; preds = %bb.fe, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.split.split.i.i.i
  %i.vh = phi i64 [ %.sroa.4495.0.copyload.i.i.i, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.split.split.i.i.i ], [ %i.ba, %bb.fe ]
  %i.vi = phi i64 [ 3, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.split.split.i.i.i ], [ %i.vg, %bb.fe ]
  %i.vj = phi ptr [ @5058, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.lr.ph.split.split.i.i.i ], [ @5060, %bb.fe ]
  invoke void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %i.vh, i64 noundef %i.vi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vj) #104
          to label %.cont604.i.i.i unwind label %bb.eo, !noalias !78565

.cont604.i.i.i:                                   ; preds = %.invoke603.i.i.i
  unreachable

_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsdaEETE4DqmE_13typst_library.exit435.i.i.i: ; preds = %bb.fe
  %i.vk = load ptr, ptr %.sroa.6263.0..sroa_idx.i.i, align 8, !alias.scope !78735, !noalias !78736, !nonnull !12, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 1 %i.vk, i64 range(i64 0, -9223372036854775808) %i.ba, i1 false), !alias.scope !78855, !noalias !78859
  br label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsdaEETE4DqmE_13typst_library.exit.thread.i.i.i

.invoke605.i.i.i:                                 ; preds = %bb.ez, %bb.ey, %bb.el
  %i.vl = phi ptr [ @5056, %bb.ez ], [ @5055, %bb.el ], [ @5059, %bb.ey ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vl) #99
          to label %.cont606.i.i.i unwind label %bb.eo, !noalias !78565

.cont606.i.i.i:                                   ; preds = %.invoke605.i.i.i
  unreachable

bb.ff:                                            ; preds = %bb.fi, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.fi ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.vm = load i16, ptr %i.ry, align 8, !noalias !78742, !noundef !12
  %i.vn = zext i16 %i.vm to i64                   ; 2 uses
  %i.vo = invoke noundef i8 @_RNvNtCsbxRVbv72Bp5_10image_webp8extended19get_alpha_predictor(i64 noundef %indvars.iv.i.i.i, i64 noundef %indvars.iv573.i.i.i, i64 noundef %i.vn, i8 noundef %.sroa.7517.0.copyload.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rp, i64 noundef %i.rr)
          to label %bb.fg unwind label %.loopexit555.i.i.i, !noalias !78790

bb.fg:                                            ; preds = %bb.ff
  %i.vp = mul nuw nsw i64 %indvars.iv573.i.i.i, %i.vn
  %i.vq = add nuw nsw i64 %i.vp, %indvars.iv.i.i.i ; 4 uses
  %i.vr = shl nuw nsw i64 %i.vq, 2
  %i.vs = or disjoint i64 %i.vr, 3                ; 3 uses
  %i.vt = icmp ult i64 %i.vq, %.sroa.5515.0.copyload.i.i.i
  br i1 %i.vt, label %bb.fh, label %.invoke.i.i.i

bb.fh:                                            ; preds = %bb.fg
  %i.vu = icmp ult i64 %i.vs, %i.rr
  br i1 %i.vu, label %bb.fi, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.fh, %bb.fg
  %i.vv = phi i64 [ %i.vq, %bb.fg ], [ %i.vs, %bb.fh ]
  %i.vw = phi i64 [ %.sroa.5515.0.copyload.i.i.i, %bb.fg ], [ %i.rr, %bb.fh ]
  %i.vx = phi ptr [ @5061, %bb.fg ], [ @5062, %bb.fh ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.vv, i64 noundef %i.vw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vx) #99
end_hunk_1
