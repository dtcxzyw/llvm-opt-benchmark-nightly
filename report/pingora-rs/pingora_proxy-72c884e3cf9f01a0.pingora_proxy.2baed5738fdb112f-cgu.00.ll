Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_proxy-72c884e3cf9f01a0.pingora_proxy.2baed5738fdb112f-cgu.00?download=true
inline.NumInlined: 281
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter11filter_body:bb.a
          to label %.noexc45.i unwind label %.loopexit.split-lp132.i, !noalias !295

.noexc45.i:                                       ; preds = %bb.bh
  unreachable

.loopexit131.i:                                   ; preds = %bb.bf
  %lpad.loopexit133.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp132.i:                          ; preds = %bb.bh
  %lpad.loopexit.split-lp134.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.split-lp132.i, %.loopexit131.i
  %lpad.phi135.i = phi { ptr, i32 } [ %lpad.loopexit133.i, %.loopexit131.i ], [ %lpad.loopexit.split-lp134.i, %.loopexit.split-lp132.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.he = load ptr, ptr %i.ed, align 8, !alias.scope !346, !noalias !298, !noundef !5
  %i.hf = load ptr, ptr %i.x, align 8, !alias.scope !346, !noalias !298, !nonnull !5, !align !12, !noundef !5
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !347, !nonnull !5, !noundef !5
  invoke void %i.hh(ptr noundef %i.he, ptr noundef %i.gq, i64 noundef %i.gr)
          to label %.body35.i unwind label %bb.bx, !noalias !295, !inline_history !182

bb.bj:                                            ; preds = %bb.bg
  %i.hi = add i64 %i.ha, %i.gr
  store i64 %i.hi, ptr %i.cz, align 8, !alias.scope !341, !noalias !342
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.hj = load ptr, ptr %i.ed, align 8, !alias.scope !350, !noalias !298, !noundef !5
  %i.hk = load ptr, ptr %i.x, align 8, !alias.scope !350, !noalias !298, !nonnull !5, !align !12, !noundef !5
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !351, !nonnull !5, !noundef !5
  invoke void %i.hm(ptr noundef %i.hj, ptr noundef %i.gq, i64 noundef %i.gr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit50.i unwind label %.loopexit.i, !noalias !295, !inline_history !182

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit50.i: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !298
  br label %bb.ao

bb.bk:                                            ; preds = %bb.aq
  %i.hn = add i64 %i.fv, %.sroa.8.sroa.6.1.i
  store i64 %i.hn, ptr %i.cz, align 8, !alias.scope !325, !noalias !326
  %i.ho = icmp ugt i64 %i.em, %i.ca
  %i.hp = icmp ule i64 %i.em, %i.cd
  %or.cond3.i = and i1 %i.ho, %i.hp
  br i1 %or.cond3.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.by, %bb.bk
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.075.1.i, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !352, !nonnull !5, !noundef !5
  invoke void %i.hr(ptr noundef %.sroa.8.sroa.7.1.i, ptr noundef %.sroa.8.sroa.0.1.i, i64 noundef %.sroa.8.sroa.6.1.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit52.i unwind label %.thread123.loopexit.i, !noalias !295, !inline_history !182

bb.bm:                                            ; preds = %bb.bk
  %i.hs = load i64, ptr %i.dm, align 8, !noalias !295, !noundef !5
  %i.ht = icmp eq i64 %i.ek, %i.hs
  br i1 %i.ht, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.hu = load i64, ptr %i.ee, align 8, !noalias !295, !noundef !5
  %i.hv = icmp eq i64 %i.em, %i.hu
  br i1 %i.hv, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit64.i, %bb.bn, %bb.bm
  %i.hw = load i64, ptr %1, align 8, !range !9, !alias.scope !296, !noalias !308, !noundef !5
  %i.hx = trunc nuw i64 %i.hw to i1
  br i1 %i.hx, label %bb.by, label %bb.bz, !prof !13

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !298
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !298
  store ptr %i.ef, ptr %i.i, align 8, !noalias !354
  %i.hy = load i64, ptr %i.ad, align 8, !range !14, !alias.scope !355, !noalias !356, !noundef !5 ; 2 uses
  %i.hz = icmp ne i64 %i.hy, -9223372036854775806
  call void @llvm.assume(i1 %i.hz)
  %i.ia = icmp sgt i64 %i.hy, -1
  br i1 %i.ia, label %.split.i.i, label %.thread126.i

.split.i.i:                                       ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !354
  store ptr %i.i, ptr %i.g, align 8, !noalias !354
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCs3Kwrwkha1e5_13pingora_proxy, ptr %.sroa.42.0..sroa_idx.i53.i, align 8, !noalias !354
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @25, ptr noundef nonnull %i.g)
          to label %.noexc54.i unwind label %.loopexit.i, !noalias !295

.noexc54.i:                                       ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !354
  invoke void @_RNvXsH_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %bb.bq unwind label %.loopexit.i, !noalias !295

.thread126.i:                                     ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !298
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit64.i

bb.bq:                                            ; preds = %.noexc54.i
  %.pr.i = load ptr, ptr %i.w, align 8, !noalias !298 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !298
  %.not19.i = icmp eq ptr %.pr.i, null
  br i1 %.not19.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit64.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.sroa.592.0.copyload.i = load ptr, ptr %.sroa.592.0..sroa_idx.i, align 8, !noalias !298 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !298 ; 8 uses
  %.sroa.11.0.copyload.i = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !298 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.ib = load i64, ptr %i.cz, align 8, !alias.scope !357, !noalias !358, !noundef !5 ; 2 uses
  %i.ic = load i64, ptr %i.da, align 8, !alias.scope !357, !noalias !358, !noundef !5
  %i.id = sub i64 %i.ic, %i.ib
  %.not.i56.i = icmp ugt i64 %.sroa.8.0.copyload.i, %i.id
  br i1 %.not.i56.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ie = invoke noundef zeroext i1 @_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.copyload.i, i1 noundef zeroext true)
          to label %.noexc58.i unwind label %.loopexit136.i, !noalias !295 ; 0 uses

.noexc58.i:                                       ; preds = %bb.bs
  %.pre.i57.i = load i64, ptr %i.cz, align 8, !alias.scope !357, !noalias !358
  br label %bb.bt

bb.bt:                                            ; preds = %.noexc58.i, %bb.br
  %i.if = phi i64 [ %i.ib, %bb.br ], [ %.pre.i57.i, %.noexc58.i ]
  %i.ig = load ptr, ptr %i.z, align 8, !alias.scope !357, !noalias !358, !nonnull !5, !noundef !5
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.if
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 1 %.sroa.592.0.copyload.i, i64 range(i64 0, -9223372036854775808) %.sroa.8.0.copyload.i, i1 false), !noalias !295
  %i.ii = load i64, ptr %i.da, align 8, !alias.scope !357, !noalias !358, !noundef !5
  %i.ij = load i64, ptr %i.cz, align 8, !alias.scope !357, !noalias !358, !noundef !5 ; 2 uses
  %i.ik = sub i64 %i.ii, %i.ij                    ; 2 uses
  %i.il = icmp ugt i64 %.sroa.8.0.copyload.i, %i.ik
  br i1 %i.il, label %bb.bu, label %bb.bw, !prof !10

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !359
  store i64 %.sroa.8.0.copyload.i, ptr %i.f, align 8, !noalias !359
  %i.im = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ik, ptr %i.im, align 8, !noalias !359
  invoke void @_RNvCs1eA6bChxBZF_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f) #26
          to label %.noexc59.i unwind label %.loopexit.split-lp137.i, !noalias !295

.noexc59.i:                                       ; preds = %bb.bu
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit64.i: ; preds = %bb.bw, %bb.bq, %.thread126.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !298
  br label %bb.bo

.loopexit136.i:                                   ; preds = %bb.bs
  %lpad.loopexit138.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp137.i:                          ; preds = %bb.bu
  %lpad.loopexit.split-lp139.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit.split-lp137.i, %.loopexit136.i
  %lpad.phi140.i = phi { ptr, i32 } [ %lpad.loopexit138.i, %.loopexit136.i ], [ %lpad.loopexit.split-lp139.i, %.loopexit.split-lp137.i ]
  %i.in = getelementptr inbounds nuw i8, ptr %.pr.i, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !noalias !360, !nonnull !5, !noundef !5
  invoke void %i.io(ptr noundef %.sroa.11.0.copyload.i, ptr noundef %.sroa.592.0.copyload.i, i64 noundef %.sroa.8.0.copyload.i)
          to label %.body35.i unwind label %bb.bx, !noalias !295, !inline_history !182

bb.bw:                                            ; preds = %bb.bt
  %i.ip = add i64 %i.ij, %.sroa.8.0.copyload.i
  store i64 %i.ip, ptr %i.cz, align 8, !alias.scope !357, !noalias !358
  %i.iq = getelementptr inbounds nuw i8, ptr %.pr.i, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !361, !nonnull !5, !noundef !5
  invoke void %i.ir(ptr noundef %.sroa.11.0.copyload.i, ptr noundef %.sroa.592.0.copyload.i, i64 noundef %.sroa.8.0.copyload.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit64.i unwind label %.loopexit.i, !noalias !295, !inline_history !182

bb.bx:                                            ; preds = %.thread117.i, %bb.bv, %bb.bi, %.body35.i, %.thread120.i
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !295
  unreachable

bb.by:                                            ; preds = %bb.bo
  %i.it = load i64, ptr %i.de, align 8, !alias.scope !296, !noalias !308
  %i.iu = add i64 %i.it, 1
  store i64 1, ptr %1, align 8, !alias.scope !296, !noalias !308
  store i64 %i.iu, ptr %i.de, align 8, !alias.scope !296, !noalias !308
  br label %bb.bl

bb.bz:                                            ; preds = %bb.bo
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #26
          to label %bb.z unwind label %.loopexit.split-lp.i, !noalias !295

_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter17filter_range_data.exit.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy.exit52.i, %_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter17filter_range_data.exit.i, %bb.ad
  %i.iv = load i64, ptr %i.cz, align 8, !noalias !298, !noundef !5 ; 3 uses
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %bb.cg, label %bb.ca

bb.ca:                                            ; preds = %_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter17filter_range_data.exit.i._crit_edge
  %.sroa.0108.0.copyload.i = load ptr, ptr %i.z, align 8, !noalias !298 ; 4 uses
  %.sroa.8113.0.copyload.i = load ptr, ptr %i.db, align 8, !noalias !298 ; 2 uses
  %i.ix = ptrtoint ptr %.sroa.8113.0.copyload.i to i64 ; 2 uses
  %i.iy = and i64 %i.ix, 1
  %.not.i65.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i65.i, label %3, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.sroa.7112.0.copyload.i = load i64, ptr %i.da, align 8, !noalias !298
  %i.iz = lshr i64 %i.ix, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !362
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0108.0.copyload.i) ]
  %i.ja = sub nsw i64 0, %i.iz
  %i.jb = getelementptr inbounds i8, ptr %.sroa.0108.0.copyload.i, i64 %i.ja
  %i.jc = add i64 %i.iz, %i.iv
  %i.jd = add i64 %.sroa.7112.0.copyload.i, %i.iz ; 2 uses
  %i.je = icmp sgt i64 %i.jd, -1
  call void @llvm.assume(i1 %i.je)
  store i64 %i.jd, ptr %i.e, align 8, !noalias !362
  %i.jf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.jb, ptr %i.jf, align 8, !noalias !362
  %i.jg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.jc, ptr %i.jg, align 8, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !362
  invoke void @_RNvXsE_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc67.i unwind label %bb.y, !noalias !295

.noexc67.i:                                       ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !362
  store i64 %i.iz, ptr %i.c, align 8, !noalias !364
  %i.jh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !363, !noalias !362, !noundef !5 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.iz, %i.ji
  br i1 %.not.i.i.i, label %bb.cc, label %bb.ce, !prof !10

bb.cc:                                            ; preds = %.noexc67.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !364
  store i64 %i.ji, ptr %i.b, align 8, !noalias !364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !364
  store ptr %i.c, ptr %i.a, align 8, !noalias !364
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !364
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.jj, align 8, !noalias !364
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !364
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #24
          to label %.noexc.i.i unwind label %bb.cd, !noalias !365

.noexc.i.i:                                       ; preds = %bb.cc
  unreachable

3:                                                ; preds = %bb.ca
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0108.0.copyload.i) ]
  br label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.cd:                                            ; preds = %bb.cc
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8, !alias.scope !368, !noalias !362, !noundef !5
  %i.jn = load ptr, ptr %i.d, align 8, !alias.scope !368, !noalias !362, !nonnull !5, !align !12, !noundef !5
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !369, !nonnull !5, !noundef !5
  %i.jq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !alias.scope !368, !noalias !362, !noundef !5
  invoke void %i.jp(ptr noundef %i.jm, ptr noundef %i.jr, i64 noundef %i.ji)
          to label %.thread120.i unwind label %bb.cf, !noalias !365, !inline_history !182

bb.ce:                                            ; preds = %.noexc67.i
  %i.js = sub nuw i64 %i.ji, %i.iz
  %i.jt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !alias.scope !363, !noalias !362, !noundef !5
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !362
  %.sroa.098.0.copyload99.i = load ptr, ptr %i.d, align 8, !noalias !370
  %.sroa.7.0..sroa_idx106.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7.0.copyload107.i = load ptr, ptr %.sroa.7.0..sroa_idx106.i, align 8, !noalias !370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !362
  br label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !365
  unreachable

bb.cg:                                            ; preds = %_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter17filter_range_data.exit.i._crit_edge
  store ptr null, ptr %0, align 8, !alias.scope !295, !noalias !309
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit72.i unwind label %bb.t, !noalias !295

_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.ce, %3
  %.sroa.7.0.i = phi ptr [ %.sroa.8113.0.copyload.i, %3 ], [ %.sroa.7.0.copyload107.i, %bb.ce ]
  %.sroa.6103.0.i = phi i64 [ %i.iv, %3 ], [ %i.js, %bb.ce ]
  %.sroa.5100.0.i = phi ptr [ %.sroa.0108.0.copyload.i, %3 ], [ %i.jv, %bb.ce ]
  %.sroa.098.0.i = phi ptr [ @_RNvNtCs1eA6bChxBZF_5bytes9bytes_mut13SHARED_VTABLE, %3 ], [ %.sroa.098.0.copyload99.i, %bb.ce ]
  store ptr %.sroa.098.0.i, ptr %0, align 8, !alias.scope !295, !noalias !309
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5100.0.i, ptr %.sroa.5100.0..sroa_idx.i, align 8, !alias.scope !295, !noalias !309
  %.sroa.6103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6103.0.i, ptr %.sroa.6103.0..sroa_idx.i, align 8, !alias.scope !295, !noalias !309
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !295, !noalias !309
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit72.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit72.i: ; preds = %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !298
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.jx = load ptr, ptr %i.dn, align 8, !alias.scope !373, !noalias !304, !noundef !5
  %i.jy = load ptr, ptr %i.ac, align 8, !alias.scope !373, !noalias !304, !nonnull !5, !align !12, !noundef !5
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !374, !nonnull !5, !noundef !5
  %i.kb = load ptr, ptr %.sroa.510.0..sroa_idx, align 8, !alias.scope !373, !noalias !304, !noundef !5
  %i.kc = load i64, ptr %i.cb, align 8, !alias.scope !373, !noalias !304, !noundef !5
  call void %i.ka(ptr noundef %i.jx, ptr noundef %i.kb, i64 noundef %i.kc), !inline_history !275
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECs3Kwrwkha1e5_13pingora_proxy.exit

.thread117.i:                                     ; preds = %.body35.i, %bb.ai, %.thread123.loopexit.split-lp.i, %.thread123.loopexit.i
  %.pn21116.i = phi { ptr, i32 } [ %i.ev, %bb.ai ], [ %.pn.i, %.body35.i ], [ %lpad.loopexit.i, %.thread123.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread123.loopexit.split-lp.i ]
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.thread120.i unwind label %bb.bx, !noalias !295

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs3Kwrwkha1e5_13pingora_proxy.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !298
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !377, !noalias !304, !noundef !5
  %i.kf = load ptr, ptr %i.ac, align 8, !alias.scope !377, !noalias !304, !nonnull !5, !align !12, !noundef !5
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !378, !nonnull !5, !noundef !5
  %i.ki = load ptr, ptr %.sroa.510.0..sroa_idx, align 8, !alias.scope !377, !noalias !304, !noundef !5
  %i.kj = load i64, ptr %i.cb, align 8, !alias.scope !377, !noalias !304, !noundef !5
  call void %i.kh(ptr noundef %i.ke, ptr noundef %i.ki, i64 noundef %i.kj), !inline_history !275
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECs3Kwrwkha1e5_13pingora_proxy.exit

bb.ch:                                            ; preds = %bb.e
  store ptr null, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECs3Kwrwkha1e5_13pingora_proxy.exit

.body:                                            ; preds = %bb.l, %.thread120.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.l ], [ %.pn23.i, %.thread120.i ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter26next_cache_multipart_range(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !range !14, !noundef !5 ; 2 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775806
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp sgt i64 %i.d, -1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !9, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = trunc nuw i64 %i.h to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull inttoptr (i64 107 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !noundef !5
  %i.l = add i64 %i.k, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 1, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %storemerge = phi i64 [ 0, %bb.e ], [ %i.l, %bb.d ] ; 6 uses
  store i64 %storemerge, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %storemerge, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  store i64 %i.p, ptr %i.a, align 8
  %i.q = icmp eq i64 %i.p, %storemerge
  br i1 %i.q, label %bb.j, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @20, ptr nonnull inttoptr (i64 155 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #24
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 2 uses
  %i.t = icmp ult i64 %storemerge, %i.s
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %storemerge ; 2 uses
  %.val = load i64, ptr %i.w, align 8, !alias.scope !383, !noundef !5
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val7 = load i64, ptr %i.x, align 8, !alias.scope !384, !noundef !5
  %i.y = insertvalue { i64, i64 } poison, i64 %.val, 0
  %i.z = insertvalue { i64, i64 } %i.y, i64 %.val7, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.z

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %storemerge, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter3set(ptr noalias nofree noundef align 8 dereferenceable(120) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !14, !noundef !5 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp sgt i64 %i.a, -1
  %. = zext i1 %i.c to i64
  store i64 %., ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter9RangeTypeEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter8finalize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !range !14, !noundef !5 ; 2 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775806
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp sgt i64 %i.e, -1
  br i1 %i.g, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCs3Kwrwkha1e5_13pingora_proxy, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsH_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %.split, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter9new_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 120)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 7 uses
  %i.b = load i64, ptr %1, align 8, !range !14, !noundef !5 ; 2 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775806
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp sgt i64 %i.b, -1
  %. = zext i1 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
end_hunk_0
