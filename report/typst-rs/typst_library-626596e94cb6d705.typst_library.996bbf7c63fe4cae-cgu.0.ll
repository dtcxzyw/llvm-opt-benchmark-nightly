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
  %i.om = trunc nuw i8 %i.ol to i1                ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ar, i64 68 ; 2 uses
  %.sroa.096.0.copyload.i.i.i = load i8, ptr %i.on, align 4, !alias.scope !78735, !noalias !78736
  %.sroa.398.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 69 ; 2 uses
  %.sroa.398.0.copyload.i.i.i = load i32, ptr %.sroa.398.0..sroa_idx.i.i.i, align 1, !alias.scope !78735, !noalias !78736
  %.sroa.096.0.i.i.i = select i1 %i.om, i8 %.sroa.096.0.copyload.i.i.i, i8 0
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
  %i.tk = zext i8 %.sroa.096.0.i.i.i to i40
  %i.tl = zext i32 %.sroa.398.0.copyload.i.i.i to i40
  %i.tm = shl nuw i40 %i.tl, 8
  %.sroa.0344.1.insert.shift.i.i.i = select i1 %i.om, i40 %i.tm, i40 0
  %.sroa.0344.1.insert.insert.i.i.i = or disjoint i40 %.sroa.0344.1.insert.shift.i.i.i, %i.tk
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
begin_hunk_2_@_RNCNvMNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image6rasterNtB4_11RasterImage8new_impl0Ba_:bb.a
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.0.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 17, i1 false), !alias.scope !103062, !noalias !103076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(192) %i.dh, i64 192, i1 false), !alias.scope !103077, !noalias !103078
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 192
  store ptr %i.ln, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 200
  store i64 8192, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.0.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 232
  store ptr %i.ez, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.0.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 240
  store i64 0, ptr %.sroa.0.sroa.9.0..sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 248
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %i.lr = getelementptr inbounds nuw i8, ptr %i.di, i64 256 ; 2 uses
  store i64 0, ptr %i.lr, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.01.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 264
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.01.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.01.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 272
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.01.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 280 ; 2 uses
  store i64 -1, ptr %.sroa.01.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.52.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 304
  store i8 0, ptr %.sroa.52.0..sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %i.ls = getelementptr inbounds nuw i8, ptr %i.di, i64 424 ; 3 uses
  store i64 50000000, ptr %i.ls, align 8, !alias.scope !103062, !noalias !103076
  %i.lt = getelementptr inbounds nuw i8, ptr %i.di, i64 436 ; 4 uses
  store i8 0, ptr %i.lt, align 4, !alias.scope !103062, !noalias !103076
  %i.lu = getelementptr inbounds nuw i8, ptr %i.di, i64 432 ; 2 uses
  store i16 0, ptr %i.lu, align 8, !alias.scope !103062, !noalias !103076
  %i.lv = getelementptr inbounds nuw i8, ptr %i.di, i64 434 ; 2 uses
  store i16 0, ptr %i.lv, align 2, !alias.scope !103062, !noalias !103076
  %i.lw = getelementptr inbounds nuw i8, ptr %i.di, i64 312
  store i64 -1, ptr %i.lw, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.04.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 336
  store i64 -1, ptr %.sroa.04.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.04.sroa.5.sroa.4.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 344
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.04.sroa.5.sroa.4.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.04.sroa.5.sroa.5.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 352
  store i64 0, ptr %.sroa.04.sroa.5.sroa.5.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 360
  store i8 0, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !103062, !noalias !103076
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 362
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 374
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.sroa.7.0..sroa_idx.i.i.i, i8 0, i64 12, i1 false), !alias.scope !103062, !noalias !103076
  store i8 1, ptr %.sroa.14.0..sroa_idx.i.i.i, align 2, !alias.scope !103062, !noalias !103076
  %i.lx = getelementptr inbounds nuw i8, ptr %i.di, i64 438
  store i8 0, ptr %i.lx, align 2, !alias.scope !103062, !noalias !103076
  %i.ly = getelementptr inbounds nuw i8, ptr %i.di, i64 440 ; 5 uses
  store i8 0, ptr %i.ly, align 8, !alias.scope !103062, !noalias !103076
  %i.lz = getelementptr inbounds nuw i8, ptr %i.di, i64 376 ; 8 uses
  store i64 -1, ptr %i.lz, align 8, !alias.scope !103062, !noalias !103076
  %i.ma = getelementptr inbounds nuw i8, ptr %i.di, i64 400 ; 5 uses
  store i64 -1, ptr %i.ma, align 8, !alias.scope !103062, !noalias !103076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !103057
  call void @llvm.experimental.noalias.scope.decl(metadata !103079)
  call void @llvm.experimental.noalias.scope.decl(metadata !103082)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.436.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 9
  %.sroa.537.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 10
  %.sroa.638.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 11
  %.sroa.739.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %.sroa.840.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.me = getelementptr inbounds nuw i8, ptr %i.di, i64 416 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.di, i64 408 ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.di, i64 392 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.di, i64 384 ; 7 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.di, i64 437 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  br label %bb.bu

bb.bu:                                            ; preds = %.backedge.i.i.i, %_RNvMs2_NtCsbohjDqD9uES_3gif6readerINtB5_7DecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEE12with_no_initB1y_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !103084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !103084
  store i64 2, ptr %i.df, align 8, !noalias !103084
  invoke void @_RNvMs1_NtCsbohjDqD9uES_3gif6readerINtB5_11ReadDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEE11decode_nextB1D_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dg, ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %i.di, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %bb.bw unwind label %.loopexit.i.i.i, !noalias !103085

.loopexit.i.i.i:                                  ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i, %bb.eg, %bb.cb, %bb.bu
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp.i.i.i:                         ; preds = %bb.bz
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbohjDqD9uES_3gif6reader7DecoderINtNtNtB4_2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %i.di) #101
          to label %.critedge.thread807 unwind label %bb.eq, !noalias !103085

bb.bw:                                            ; preds = %bb.bu
  %i.mn = load i64, ptr %i.dg, align 8, !range !287, !noalias !103084, !noundef !12
  %i.mo = trunc nuw i64 %i.mn to i1
  %.sroa.047.0.copyload.i.i.i = load i8, ptr %i.mb, align 8, !noalias !103084 ; 2 uses
  %.sroa.448.0.copyload.i.i.i = load i8, ptr %.sroa.436.0..sroa_idx.i.i.i, align 1, !noalias !103084 ; 3 uses
  %.sroa.549.0.copyload.i.i.i = load i8, ptr %.sroa.537.0..sroa_idx.i.i.i, align 2, !noalias !103084 ; 2 uses
  br i1 %i.mo, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %.sroa.9.sroa.11.sroa.0.0.copyload.i = load i40, ptr %.sroa.638.0..sroa_idx.i.i.i, align 1, !noalias !103086
  %.sroa.751.0.copyload.i.i.i = load ptr, ptr %.sroa.739.0..sroa_idx.i.i.i, align 8, !noalias !103084
  %.sroa.852.0.copyload.i.i.i = load i64, ptr %.sroa.840.0..sroa_idx.i.i.i, align 8, !noalias !103084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !103084
  %i.mp = zext i40 %.sroa.9.sroa.11.sroa.0.0.copyload.i to i64
  br label %_RINvMs0_NtCsbohjDqD9uES_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1P_.exit.thread.i

bb.by:                                            ; preds = %bb.bw
  %.sroa.739.0.copyload.i.i.i = load ptr, ptr %.sroa.739.0..sroa_idx.i.i.i, align 8, !noalias !103084 ; 2 uses
  %.sroa.840.0.copyload.i.i.i = load i64, ptr %.sroa.840.0..sroa_idx.i.i.i, align 8, !noalias !103084 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !103084
  switch i8 %.sroa.047.0.copyload.i.i.i, label %.backedge.i.i.i [
    i8 -1, label %bb.bz
    i8 1, label %bb.cb
    i8 2, label %bb.cc
    i8 3, label %bb.cd
    i8 5, label %bb.ce
  ], !prof !74464

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !103084
  invoke void @_RNvMs0_NtNtCsbohjDqD9uES_3gif6reader7decoderNtB5_13DecodingError6format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5111, i64 noundef 36)
          to label %bb.ca unwind label %.loopexit.split-lp.i.i.i, !noalias !103085

bb.ca:                                            ; preds = %bb.bz
  %.sroa.9.8.copyload26.i = load i64, ptr %i.dd, align 8, !noalias !103086 ; 4 uses
  %.sroa.9.sroa.0.0.extract.trunc37.i = trunc i64 %.sroa.9.8.copyload26.i to i8
  %.sroa.9.sroa.9.0.extract.shift44.i = lshr i64 %.sroa.9.8.copyload26.i, 8
  %.sroa.9.sroa.9.0.extract.trunc45.i = trunc i64 %.sroa.9.sroa.9.0.extract.shift44.i to i8
  %.sroa.9.sroa.10.0.extract.shift52.i = lshr i64 %.sroa.9.8.copyload26.i, 16
  %.sroa.9.sroa.10.0.extract.trunc53.i = trunc i64 %.sroa.9.sroa.10.0.extract.shift52.i to i8
  %.sroa.9.sroa.11.0.extract.shift60.i = lshr i64 %.sroa.9.8.copyload26.i, 24
  %.sroa.17.8..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.17.8.copyload29.i = load ptr, ptr %.sroa.17.8..sroa_idx28.i, align 8, !noalias !103086
  %.sroa.18.8..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.sroa.18.8.copyload32.i = load i64, ptr %.sroa.18.8..sroa_idx31.i, align 8, !noalias !103086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !103084
  br label %_RINvMs0_NtCsbohjDqD9uES_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1P_.exit.thread.i

_RINvMs0_NtCsbohjDqD9uES_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1P_.exit.thread.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i50.i.i.i.i, %bb.el, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i, %bb.eb, %bb.eo, %bb.ee, %bb.ca, %bb.bx
  %.sroa.9.sroa.11.sroa.0.0.i = phi i64 [ %i.mp, %bb.bx ], [ %.sroa.9.sroa.11.0.extract.shift60.i, %bb.ca ], [ 0, %bb.eo ], [ 0, %bb.ee ], [ 0, %bb.eb ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i ], [ 0, %bb.el ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i50.i.i.i.i ]
  %.sroa.9.sroa.10.0.i = phi i8 [ %.sroa.549.0.copyload.i.i.i, %bb.bx ], [ %.sroa.9.sroa.10.0.extract.trunc53.i, %bb.ca ], [ 0, %bb.eo ], [ 0, %bb.ee ], [ 0, %bb.eb ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i ], [ 0, %bb.el ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i50.i.i.i.i ]
  %.sroa.9.sroa.9.0.i = phi i8 [ %.sroa.448.0.copyload.i.i.i, %bb.bx ], [ %.sroa.9.sroa.9.0.extract.trunc45.i, %bb.ca ], [ 0, %bb.eo ], [ 0, %bb.ee ], [ 0, %bb.eb ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i ], [ 0, %bb.el ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i50.i.i.i.i ]
  %.sroa.9.sroa.0.0.i = phi i8 [ %.sroa.047.0.copyload.i.i.i, %bb.bx ], [ %.sroa.9.sroa.0.0.extract.trunc37.i, %bb.ca ], [ 0, %bb.eo ], [ 0, %bb.ee ], [ 1, %bb.eb ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i ], [ 1, %bb.el ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i50.i.i.i.i ]
  %.sroa.18.0.i = phi i64 [ %.sroa.852.0.copyload.i.i.i, %bb.bx ], [ %.sroa.18.8.copyload32.i, %bb.ca ], [ undef, %bb.eo ], [ undef, %bb.ee ], [ undef, %bb.eb ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i ], [ undef, %bb.el ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i50.i.i.i.i ]
  %.sroa.17.0.i = phi ptr [ %.sroa.751.0.copyload.i.i.i, %bb.bx ], [ %.sroa.17.8.copyload29.i, %bb.ca ], [ undef, %bb.eo ], [ undef, %bb.ee ], [ undef, %bb.eb ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i ], [ undef, %bb.el ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbohjDqD9uES_3gif6reader7decoder13DecodingErrorECsdaEETE4DqmE_13typst_library.exit.i50.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !103084
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbohjDqD9uES_3gif6reader7DecoderINtNtNtB4_2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %i.di)
          to label %.noexc182 unwind label %.critedge.thread841

.noexc182:                                        ; preds = %_RINvMs0_NtCsbohjDqD9uES_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1P_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !103057
  br label %bb.er

.backedge.i.i.i:                                  ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8truncateCsdaEETE4DqmE_13typst_library.exit.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsdaEETE4DqmE_13typst_library.exit.i.i.i.i, %bb.cn, %bb.cf, %bb.ce, %bb.cc, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !103084
  br label %bb.bu

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !103084
  %i.mq = icmp sgt i64 %.sroa.840.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.mq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.739.0.copyload.i.i.i) ]
  store i64 %.sroa.840.0.copyload.i.i.i, ptr %i.de, align 8, !noalias !103084
  store ptr %.sroa.739.0.copyload.i.i.i, ptr %i.ml, align 8, !noalias !103084
  store i64 %.sroa.840.0.copyload.i.i.i, ptr %i.mm, align 8, !noalias !103084
  invoke void @_RNvMNtNtCsbohjDqD9uES_3gif6reader9converterNtB2_14PixelConverter18set_global_palette(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.lr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.de)
          to label %bb.cf unwind label %.loopexit.i.i.i, !noalias !103085

bb.cc:                                            ; preds = %bb.by
  store i8 1, ptr %i.lt, align 4, !alias.scope !103082, !noalias !103087
  store i8 %.sroa.448.0.copyload.i.i.i, ptr %i.mk, align 1, !alias.scope !103082, !noalias !103087
  br label %.backedge.i.i.i

bb.cd:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !103084
  %i.mr = load i64, ptr %.sroa.01.sroa.6.0..sroa_idx.i.i.i, align 8, !range !4638, !alias.scope !103082, !noalias !103087, !noundef !12
  %.not63.i.i.i = icmp eq i64 %i.mr, -1
  br i1 %.not63.i.i.i, label %_RINvMs0_NtCsbohjDqD9uES_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1P_.exit.i, label %bb.cg

bb.ce:                                            ; preds = %bb.by
  %i.ms = icmp eq i8 %.sroa.448.0.copyload.i.i.i, -1
  br i1 %i.ms, label %bb.ci, label %.backedge.i.i.i

bb.cf:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !103084
  br label %.backedge.i.i.i

bb.cg:                                            ; preds = %bb.cd
  %i.mt = getelementptr inbounds nuw i8, ptr %i.di, i64 296
  %i.mu = load i64, ptr %i.mt, align 8, !alias.scope !103082, !noalias !103087, !noundef !12
  %i.mv = load i8, ptr %i.lt, align 4, !range !2936, !alias.scope !103082, !noalias !103087, !noundef !12
  %i.mw = trunc nuw i8 %i.mv to i1
  %i.mx = load i8, ptr %i.mk, align 1, !alias.scope !103082, !noalias !103087
  %narrow.i.i.i = select i1 %i.mw, i8 %i.mx, i8 0
  %.sroa.031.0.i.i.i = zext i8 %narrow.i.i.i to i64
  %i.my = udiv i64 %i.mu, 3
  %.not64.i.i.i = icmp samesign ugt i64 %i.my, %.sroa.031.0.i.i.i
  br i1 %.not64.i.i.i, label %_RINvMs0_NtCsbohjDqD9uES_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1P_.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i8 0, ptr %i.lt, align 4, !alias.scope !103082, !noalias !103087
  br label %_RINvMs0_NtCsbohjDqD9uES_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEB1P_.exit.i

bb.ci:                                            ; preds = %bb.ce
  %i.mz = trunc nuw i8 %.sroa.549.0.copyload.i.i.i to i1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103088)
  %i.na = load ptr, ptr %i.mc, align 8, !alias.scope !103091, !noalias !103092, !nonnull !12, !noundef !12 ; 35 uses
  %i.nb = load i64, ptr %i.md, align 8, !alias.scope !103091, !noalias !103092, !noundef !12 ; 15 uses
  %i.nc = load i8, ptr %i.ly, align 8, !range !5642, !alias.scope !103091, !noalias !103092, !noundef !12
  switch i8 %i.nc, label %default.unreachable [
    i8 0, label %bb.cj
    i8 1, label %bb.ck
    i8 2, label %bb.cl
    i8 3, label %bb.cm
    i8 4, label %bb.cn
  ]

default.unreachable:                              ; preds = %bb.ci, %bb.xv, %bb.uz, %bb.tc, %bb.ju
  unreachable

bb.cj:                                            ; preds = %bb.ci
  %i.nd = icmp eq i64 %i.nb, 11
  br i1 %i.nd, label %bb.co, label %bb.db

bb.ck:                                            ; preds = %bb.ci
  %.not36.i.i.i.i = icmp eq i64 %i.nb, 0
  br i1 %.not36.i.i.i.i, label %bb.dy, label %bb.dz

bb.cl:                                            ; preds = %bb.ci
  %i.ne = load i64, ptr %i.lz, align 8, !range !4638, !alias.scope !103091, !noalias !103092, !noundef !12 ; 5 uses
  %.not34.i.i.i.i = icmp eq i64 %i.ne, -1
  br i1 %.not34.i.i.i.i, label %bb.cn, label %bb.eb

bb.cm:                                            ; preds = %bb.ci
  %i.nf = load i64, ptr %i.ma, align 8, !range !4638, !alias.scope !103091, !noalias !103092, !noundef !12 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.nf, -1
  br i1 %.not.i.i.i.i, label %bb.cn, label %bb.el

bb.cn:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsdaEETE4DqmE_13typst_library.exit65.i.i.i.i, %bb.dy, %bb.db, %bb.cm, %bb.cl, %bb.ci
  br i1 %i.mz, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8truncateCsdaEETE4DqmE_13typst_library.exit.i.i.i.i, label %.backedge.i.i.i

bb.co:                                            ; preds = %bb.cj
  %i.ng = load i8, ptr %i.na, align 1, !noalias !103094, !noundef !12
  switch i8 %i.ng, label %bb.db [
    i8 78, label %bb.cp
    i8 88, label %bb.cq
    i8 73, label %bb.cr
  ]

bb.cp:                                            ; preds = %bb.co
  %i.nh = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  %i.ni = load i8, ptr %i.nh, align 1, !noalias !103094, !noundef !12
  %i.nj = icmp eq i8 %i.ni, 69
  br i1 %i.nj, label %bb.cs, label %bb.db

bb.cq:                                            ; preds = %bb.co
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  %i.nl = load i8, ptr %i.nk, align 1, !noalias !103094, !noundef !12
  %i.nm = icmp eq i8 %i.nl, 77
  br i1 %i.nm, label %bb.dc, label %bb.db

bb.cr:                                            ; preds = %bb.co
  %i.nn = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  %i.no = load i8, ptr %i.nn, align 1, !noalias !103094, !noundef !12
  %i.np = icmp eq i8 %i.no, 67
  br i1 %i.np, label %bb.dn, label %bb.db

bb.cs:                                            ; preds = %bb.cp
  %i.nq = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  %i.nr = load i8, ptr %i.nq, align 1, !noalias !103094, !noundef !12
  %i.ns = icmp eq i8 %i.nr, 84
  br i1 %i.ns, label %bb.ct, label %bb.db

bb.ct:                                            ; preds = %bb.cs
  %i.nt = getelementptr inbounds nuw i8, ptr %i.na, i64 3
  %i.nu = load i8, ptr %i.nt, align 1, !noalias !103094, !noundef !12
  %i.nv = icmp eq i8 %i.nu, 83
  br i1 %i.nv, label %bb.cu, label %bb.db

bb.cu:                                            ; preds = %bb.ct
  %i.nw = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.nx = load i8, ptr %i.nw, align 1, !noalias !103094, !noundef !12
  %i.ny = icmp eq i8 %i.nx, 67
  br i1 %i.ny, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %bb.cu
  %i.nz = getelementptr inbounds nuw i8, ptr %i.na, i64 5
  %i.oa = load i8, ptr %i.nz, align 1, !noalias !103094, !noundef !12
  %i.ob = icmp eq i8 %i.oa, 65
  br i1 %i.ob, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %bb.cv
  %i.oc = getelementptr inbounds nuw i8, ptr %i.na, i64 6
  %i.od = load i8, ptr %i.oc, align 1, !noalias !103094, !noundef !12
  %i.oe = icmp eq i8 %i.od, 80
  br i1 %i.oe, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  %i.of = getelementptr inbounds nuw i8, ptr %i.na, i64 7
  %i.og = load i8, ptr %i.of, align 1, !noalias !103094, !noundef !12
  %i.oh = icmp eq i8 %i.og, 69
  br i1 %i.oh, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.oi = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.oj = load i8, ptr %i.oi, align 1, !noalias !103094, !noundef !12
  %i.ok = icmp eq i8 %i.oj, 50
  br i1 %i.ok, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ol = getelementptr inbounds nuw i8, ptr %i.na, i64 9
  %i.om = load i8, ptr %i.ol, align 1, !noalias !103094, !noundef !12
  %i.on = icmp eq i8 %i.om, 46
  br i1 %i.on, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.oo = getelementptr inbounds nuw i8, ptr %i.na, i64 10
  %i.op = load i8, ptr %i.oo, align 1, !noalias !103094, !noundef !12
  %i.oq = icmp eq i8 %i.op, 48
  %spec.select.i.i.i.i = select i1 %i.oq, i8 1, i8 4
  br label %bb.db

bb.db:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsdaEETE4DqmE_13typst_library.exit45.i.i.i.i, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cj
  %.sroa.0.0.i.i.i.i170 = phi i8 [ 3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsdaEETE4DqmE_13typst_library.exit45.i.i.i.i ], [ 4, %bb.cj ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i ], [ 4, %bb.dv ], [ 4, %bb.du ], [ 4, %bb.dt ], [ 4, %bb.ds ], [ 4, %bb.dr ], [ 4, %bb.dq ], [ 4, %bb.dp ], [ 4, %bb.do ], [ 4, %bb.dn ], [ 4, %bb.dk ], [ 4, %bb.dj ], [ 4, %bb.di ], [ 4, %bb.dh ], [ 4, %bb.dg ], [ 4, %bb.df ], [ 4, %bb.de ], [ 4, %bb.dd ], [ 4, %bb.dc ], [ %spec.select.i.i.i.i, %bb.da ], [ 4, %bb.cz ], [ 4, %bb.cy ], [ 4, %bb.cx ], [ 4, %bb.cw ], [ 4, %bb.cv ], [ 4, %bb.cu ], [ 4, %bb.ct ], [ 4, %bb.cs ], [ 4, %bb.cr ], [ 4, %bb.cq ], [ 4, %bb.cp ], [ 4, %bb.co ]
  store i8 %.sroa.0.0.i.i.i.i170, ptr %i.ly, align 8, !alias.scope !103091, !noalias !103092
  br label %bb.cn

bb.dc:                                            ; preds = %bb.cq
  %i.or = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  %i.os = load i8, ptr %i.or, align 1, !noalias !103094, !noundef !12
  %i.ot = icmp eq i8 %i.os, 80
  br i1 %i.ot, label %bb.dd, label %bb.db

bb.dd:                                            ; preds = %bb.dc
  %i.ou = getelementptr inbounds nuw i8, ptr %i.na, i64 3
  %i.ov = load i8, ptr %i.ou, align 1, !noalias !103094, !noundef !12
  %i.ow = icmp eq i8 %i.ov, 32
  br i1 %i.ow, label %bb.de, label %bb.db

bb.de:                                            ; preds = %bb.dd
  %i.ox = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.oy = load i8, ptr %i.ox, align 1, !noalias !103094, !noundef !12
  %i.oz = icmp eq i8 %i.oy, 68
  br i1 %i.oz, label %bb.df, label %bb.db

bb.df:                                            ; preds = %bb.de
  %i.pa = getelementptr inbounds nuw i8, ptr %i.na, i64 5
  %i.pb = load i8, ptr %i.pa, align 1, !noalias !103094, !noundef !12
  %i.pc = icmp eq i8 %i.pb, 97
  br i1 %i.pc, label %bb.dg, label %bb.db

bb.dg:                                            ; preds = %bb.df
  %i.pd = getelementptr inbounds nuw i8, ptr %i.na, i64 6
  %i.pe = load i8, ptr %i.pd, align 1, !noalias !103094, !noundef !12
  %i.pf = icmp eq i8 %i.pe, 116
  br i1 %i.pf, label %bb.dh, label %bb.db

bb.dh:                                            ; preds = %bb.dg
  %i.pg = getelementptr inbounds nuw i8, ptr %i.na, i64 7
  %i.ph = load i8, ptr %i.pg, align 1, !noalias !103094, !noundef !12
  %i.pi = icmp eq i8 %i.ph, 97
  br i1 %i.pi, label %bb.di, label %bb.db

bb.di:                                            ; preds = %bb.dh
  %i.pj = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.pk = load i8, ptr %i.pj, align 1, !noalias !103094, !noundef !12
  %i.pl = icmp eq i8 %i.pk, 88
  br i1 %i.pl, label %bb.dj, label %bb.db

bb.dj:                                            ; preds = %bb.di
  %i.pm = getelementptr inbounds nuw i8, ptr %i.na, i64 9
  %i.pn = load i8, ptr %i.pm, align 1, !noalias !103094, !noundef !12
  %i.po = icmp eq i8 %i.pn, 77
  br i1 %i.po, label %bb.dk, label %bb.db

bb.dk:                                            ; preds = %bb.dj
  %i.pp = getelementptr inbounds nuw i8, ptr %i.na, i64 10
  %i.pq = load i8, ptr %i.pp, align 1, !noalias !103094, !noundef !12
  %i.pr = icmp eq i8 %i.pq, 80
  br i1 %i.pr, label %bb.dl, label %bb.db

bb.dl:                                            ; preds = %bb.dk
  %.val39.i.i.i.i = load i64, ptr %i.lz, align 8, !range !4638, !alias.scope !103091, !noalias !103092, !noundef !12 ; 2 uses
  %i.ps = icmp sgt i64 %.val39.i.i.i.i, 0
  br i1 %i.ps, label %bb.dm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %.val40.i.i.i.i = load ptr, ptr %i.mi, align 8, !alias.scope !103091, !noalias !103092, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i.i.i, i64 noundef %.val39.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !103095
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i: ; preds = %bb.dm, %bb.dl
  store i64 0, ptr %i.lz, align 8, !alias.scope !103091, !noalias !103092
  store ptr inttoptr (i64 1 to ptr), ptr %i.mi, align 8, !alias.scope !103091, !noalias !103092
  store i64 0, ptr %i.mh, align 8, !alias.scope !103091, !noalias !103092
  br label %bb.db

end_hunk_2
begin_hunk_3_@_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsdzMx6SIMJXZ_12regex_syntax3ast12ClassSetItemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library:bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdzMx6SIMJXZ_12regex_syntax3ast12ClassSetItemECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(160) %i.m) #101
          to label %bb.c unwind label %bb.e, !inline_history !258718

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102, !inline_history !258718
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdzMx6SIMJXZ_12regex_syntax3ast12ClassSetItemECsdaEETE4DqmE_13typst_library.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsdzMx6SIMJXZ_12regex_syntax3ast3AstENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdzMx6SIMJXZ_12regex_syntax3ast3AstECsdaEETE4DqmE_13typst_library.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdzMx6SIMJXZ_12regex_syntax3ast3AstECsdaEETE4DqmE_13typst_library.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdzMx6SIMJXZ_12regex_syntax3ast3AstECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !258719

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdzMx6SIMJXZ_12regex_syntax3ast3AstECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m) #101
          to label %bb.c unwind label %bb.e, !inline_history !258719

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102, !inline_history !258719
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdzMx6SIMJXZ_12regex_syntax3ast3AstECsdaEETE4DqmE_13typst_library.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBH_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBH_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i1 ; 3 uses
  %i.g = add nuw i64 %.sroa.0.0.i1, 1             ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !1307, !alias.scope !258720, !noundef !12 ; 3 uses
  %i.i = icmp ne i64 %i.h, 33
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -32
  %i.k = icmp samesign ugt i64 %i.h, 31
  %i.l = select i1 %i.k, i64 %i.j, i64 1
  switch i64 %i.l, label %bb.b [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBH_.exit.i
    i64 1, label %bb.c
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBH_.exit.i
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBH_.exit.i unwind label %bb.e, !inline_history !258725

bb.c:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBH_.exit.i unwind label %bb.e, !inline_history !258725

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBH_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph, %.lr.ph
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBI_.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph7
  %i.o = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph7

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.g, %i.d
  br i1 %i.r, label %._crit_edge, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i6 = phi i64 [ %i.o, %bb.d ], [ %i.g, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.s) #101
          to label %bb.d unwind label %bb.f, !inline_history !258726

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.q

bb.f:                                             ; preds = %.lr.ph7
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102, !inline_history !258726
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBI_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBH_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCsdaEETE4DqmE_13typst_library4diagNtB5_9LoadErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBZ_3str5error9Utf8ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load i64, ptr %1, align 8, !noundef !12  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !2936, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.j = load i8, ptr %i.i, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258727)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @16661, ptr %i.e, align 8, !noalias !258727
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 27, ptr %i.k, align 8, !noalias !258727
  store ptr @10648, ptr %i.d, align 8, !noalias !258727
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 23, ptr %i.l, align 8, !noalias !258727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !258727
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, i8 0, i64 15, i1 false), !noalias !258727
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i, align 1, !noalias !258727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !258727
  store ptr %i.e, ptr %i.b, align 8, !noalias !258727
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsdaEETE4DqmE_13typst_library, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !258727
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.m, align 8, !noalias !258727
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsdaEETE4DqmE_13typst_library, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !258727
  %i.n = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @354, ptr noundef nonnull @790, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.b, !noalias !258727

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #101
          to label %bb.f unwind label %bb.e, !noalias !258727

bb.c:                                             ; preds = %bb.a
  br i1 %i.n, label %bb.d, label %_RINvMso_NtCsdaEETE4DqmE_13typst_library4diagNtB6_9LoadError4textINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEReB1I_EB8_.exit, !prof !37

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4137, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4157, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @791) #104
          to label %.noexc.i unwind label %bb.b, !noalias !258727

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102, !noalias !258727
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.o

_RINvMso_NtCsdaEETE4DqmE_13typst_library4diagNtB6_9LoadError4textINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEReB1I_EB8_.exit: ; preds = %bb.c
  %i.q = trunc nuw i8 %i.h to i1
  %narrow = select i1 %i.q, i8 %i.j, i8 0
  %.sroa.0.0 = zext i8 %narrow to i64
  %i.r = add i64 %i.f, %.sroa.0.0                 ; 2 uses
  %.not5.i.i.i = icmp ult i64 %i.r, 4294967296
  %i.s = trunc nuw i64 %i.r to i32
  %.sroa.02.0.i.i.i = select i1 %.not5.i.i.i, i32 %i.s, i32 -1
  %.not.i.i.i = icmp ult i64 %i.f, 4294967296
  %i.t = trunc nuw i64 %i.f to i32
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.t, i32 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !258727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !258727
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.u, align 8, !alias.scope !258727
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %spec.select.i.i.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !alias.scope !258727
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.02.0.i.i.i, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !258727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtNtCsdaEETE4DqmE_13typst_library11foundations3intyNtNtB7_4cast9FromValue10from_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.val = load i64, ptr %1, align 8, !range !613, !noundef !12 ; 2 uses
  %i.d = icmp ne i64 %.val, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %.val, 5
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258730
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvNvXs_NtNtCsdaEETE4DqmE_13typst_library11foundations3intxNtNtB8_2ty10NativeType4data4DATA, ptr %i.f, align 8, !alias.scope !258733, !noalias !258730
  store i64 34, ptr %i.a, align 8, !alias.scope !258733, !noalias !258730
  %i.g = invoke { ptr, i64 } @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations4castNtB5_8CastInfo5error(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.f unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #101
          to label %.body.thread unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsr_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuexNtNtB7_4cast9FromValue10from_value(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %i.c, align 8, !noundef !12 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258730
  %i.m = extractvalue { ptr, i64 } %i.g, 0
  %i.n = extractvalue { ptr, i64 } %i.g, 1
  store ptr %i.m, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  store ptr %i.j, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.p, align 8
  br label %bb.g

bb.i:                                             ; preds = %bb.e
  %i.q = icmp sgt i64 %i.l, -1
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.r, align 8
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.k:                                             ; preds = %bb.i
  %i.s = call fastcc { ptr, i64 } @_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4078, i64 noundef 28) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  store ptr %i.t, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8
  br label %bb.g

bb.l:                                             ; preds = %.body.thread
  resume { ptr, i32 } %i.h

.body.thread:                                     ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #101
          to label %bb.l unwind label %bb.m

bb.m:                                             ; preds = %.body.thread
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB5_11ArgumentKeyNtNtB7_4cast9FromValue10from_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val18 = load i64, ptr %1, align 8, !range !613, !noundef !12 ; 4 uses
  %i.h = icmp ne i64 %.val18, 30
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %.val18, 5
  br i1 %i.i, label %bb.b, label %bb.c

.body.thread24:                                   ; preds = %bb.k, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsr_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuexNtNtB7_4cast9FromValue10from_value(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.j = load ptr, ptr %i.g, align 8, !noundef !12 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.not, label %bb.s, label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i64 %.val18, 1
  %i.n = add nsw i64 %.val18, -15
  %i.o = and i64 %i.n, -3
  %switch.selectcmp1.i = icmp eq i64 %i.o, 0
  %switch.selectcmp.i = and i1 %i.m, %switch.selectcmp1.i
  br i1 %switch.selectcmp.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !258736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !258739
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvNvXs_NtNtCsdaEETE4DqmE_13typst_library11foundations3intxNtNtB8_2ty10NativeType4data4DATA, ptr %i.p, align 8, !alias.scope !258742, !noalias !258739
  store i64 34, ptr %i.b, align 8, !alias.scope !258742, !noalias !258739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258739
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvNvXso_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB7_3StrNtNtB9_2ty10NativeType4data4DATA, ptr %i.q, align 8, !alias.scope !258745, !noalias !258739
  store i64 34, ptr %i.a, align 8, !alias.scope !258745, !noalias !258739
  invoke void @_RNvXsl_NtNtCsdaEETE4DqmE_13typst_library11foundations4castNtB5_8CastInfoNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
          to label %.noexc unwind label %.body.thread24, !inline_history !258748

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !258739
  %i.r = invoke { ptr, i64 } @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations4castNtB5_8CastInfo5error(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e, !inline_history !258748 ; 2 uses

bb.e:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #101
          to label %.body.thread unwind label %bb.l, !inline_history !258748

bb.f:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !258749)
  %i.t = load i64, ptr %i.c, align 8, !range !1307, !alias.scope !258749, !noalias !258736, !noundef !12 ; 3 uses
  %i.u = icmp ne i64 %i.t, 33
  call void @llvm.assume(i1 %i.u)
  %i.v = add nsw i64 %i.t, -32
  %i.w = icmp samesign ugt i64 %i.t, 31
  %i.x = select i1 %i.w, i64 %i.v, i64 1
  switch i64 %i.x, label %bb.g [
    i64 0, label %bb.n
    i64 1, label %bb.k
    i64 2, label %bb.n
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
end_hunk_3
