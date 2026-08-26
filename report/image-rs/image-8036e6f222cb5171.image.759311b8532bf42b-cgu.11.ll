Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.11?download=true
inline.NumInlined: 1166
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE12decode_frameCsa5QsYiPB8Gl_5image:bb.a

bb.cs:                                            ; preds = %.noexc106.i
  %i.jo = load i64, ptr %i.jl, align 8, !noalias !696
  br label %.invoke2469.i

bb.ct:                                            ; preds = %.noexc106.i
  %i.jp = load ptr, ptr %i.jl, align 8, !noalias !696, !nonnull !5, !noundef !5 ; 2 uses
  %i.jq = icmp samesign ugt i64 %i.jk, 18
  call void @llvm.assume(i1 %i.jq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.jp, ptr noundef nonnull align 1 dereferenceable(19) @97, i64 19, i1 false), !noalias !695
  br label %.noexc92.i

bb.cu:                                            ; preds = %bb.bt
  unreachable

bb.cv:                                            ; preds = %.noexc108.i
  %.sroa.23.0..sroa_idx275.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.sroa.23.0.copyload276.i = load i8, ptr %.sroa.23.0..sroa_idx275.i, align 1, !noalias !710
  %.sroa.25.0..sroa_idx284.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.sroa.25.sroa.0.0.copyload1717.i = load i16, ptr %.sroa.25.0..sroa_idx284.i, align 2, !noalias !710
  %.sroa.25.sroa.11.0..sroa.25.0..sroa_idx284.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.sroa.25.sroa.11.0.copyload1723.i = load i32, ptr %.sroa.25.sroa.11.0..sroa.25.0..sroa_idx284.sroa_idx.i, align 4, !noalias !710
  %.sroa.25287.0..sroa_idx294.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.25287.0.copyload295.i = load i64, ptr %.sroa.25287.0..sroa_idx294.i, align 8, !noalias !710
  %.sroa.32.0..sroa_idx306.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.32.0.copyload307.i = load ptr, ptr %.sroa.32.0..sroa_idx306.i, align 8, !noalias !710
  %.sroa.34.0..sroa_idx318.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.34.0.copyload319.i = load i64, ptr %.sroa.34.0..sroa_idx318.i, align 8, !noalias !710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !696
  br label %.noexc92.i

bb.cw:                                            ; preds = %.noexc108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !696
  %i.jr = invoke noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dm, i8 noundef 1)
          to label %.noexc110.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

.noexc110.i:                                      ; preds = %bb.cw
  %i.js = icmp eq i8 %i.jr, 1
  br i1 %i.js, label %bb.cx, label %.noexc111.i

bb.cx:                                            ; preds = %.noexc110.i
  %i.jt = invoke noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dm, i8 noundef 8)
          to label %.noexc111.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

.noexc111.i:                                      ; preds = %bb.cx, %.noexc110.i
  %.sroa.048.0.i.i = phi i8 [ 0, %.noexc110.i ], [ 1, %bb.cx ]
  %.sroa.549.0.i.i = phi i8 [ undef, %.noexc110.i ], [ %i.jt, %bb.cx ]
  store i8 %.sroa.048.0.i.i, ptr %i.ea, align 4, !alias.scope !694, !noalias !695
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bm, i64 853 ; 2 uses
  store i8 %.sroa.549.0.i.i, ptr %i.ju, align 1, !alias.scope !694, !noalias !695
  %i.jv = load i8, ptr %i.iv, align 1, !alias.scope !694, !noalias !695, !noundef !5
  %i.jw = icmp eq i8 %i.jv, -14
  br i1 %i.jw, label %.noexc92.i, label %bb.cy

bb.cy:                                            ; preds = %.noexc111.i
  %i.jx = load i8, ptr %i.eh, align 4, !range !40, !alias.scope !694, !noalias !695, !noundef !5
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.dg, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i8 0, ptr %i.dz, align 4, !alias.scope !694, !noalias !695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !696
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, i64 noundef 19, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc112.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

.noexc112.i:                                      ; preds = %bb.cz
  %i.jz = load i64, ptr %i.z, align 8, !range !155, !noalias !696, !noundef !5
  %i.ka = trunc nuw i64 %i.jz to i1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !range !179, !noalias !696, !noundef !5 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  br i1 %i.ka, label %bb.da, label %bb.db, !prof !154

bb.da:                                            ; preds = %.noexc112.i
  %i.ke = load i64, ptr %i.kd, align 8, !noalias !696
  br label %.invoke2469.i

bb.db:                                            ; preds = %.noexc112.i
  %i.kf = load ptr, ptr %i.kd, align 8, !noalias !696, !nonnull !5, !noundef !5 ; 2 uses
  %i.kg = icmp samesign ugt i64 %i.kc, 18
  call void @llvm.assume(i1 %i.kg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.kf, ptr noundef nonnull align 1 dereferenceable(19) @97, i64 19, i1 false), !noalias !695
  br label %.noexc92.i

.noexc92.i:                                       ; preds = %bb.db, %.noexc111.i, %bb.cv, %bb.ct, %bb.co, %bb.cm, %bb.cj, %.noexc102.i, %bb.cf, %.noexc96.i, %bb.bz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.25.sroa.11.0.i = phi i32 [ undef, %.noexc102.i ], [ undef, %.noexc111.i ], [ undef, %bb.db ], [ %.sroa.25.sroa.11.0.copyload1723.i, %bb.cv ], [ undef, %bb.ct ], [ %.sroa.25.sroa.11.0.copyload1722.i, %bb.co ], [ %.sroa.25.sroa.11.0.copyload1721.i, %bb.cm ], [ %.sroa.25.sroa.11.0.copyload1724.i, %bb.cj ], [ %.sroa.25.sroa.11.0.copyload1725.i, %bb.cf ], [ undef, %.noexc96.i ], [ %.sroa.25.sroa.11.0.copyload.i, %bb.bz ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit.i.i ]
  %.sroa.25.sroa.0.0.i = phi i16 [ undef, %.noexc102.i ], [ undef, %.noexc111.i ], [ undef, %bb.db ], [ %.sroa.25.sroa.0.0.copyload1717.i, %bb.cv ], [ undef, %bb.ct ], [ %.sroa.25.sroa.0.0.copyload1716.i, %bb.co ], [ %.sroa.25.sroa.0.0.copyload1715.i, %bb.cm ], [ %.sroa.25.sroa.0.0.copyload1718.i, %bb.cj ], [ %.sroa.25.sroa.0.0.copyload1719.i, %bb.cf ], [ undef, %.noexc96.i ], [ %.sroa.25.sroa.0.0.copyload.i, %bb.bz ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit.i.i ]
  %.sroa.34.0.i = phi i64 [ undef, %.noexc102.i ], [ undef, %.noexc111.i ], [ 19, %bb.db ], [ %.sroa.34.0.copyload319.i, %bb.cv ], [ 19, %bb.ct ], [ %.sroa.34.0.copyload317.i, %bb.co ], [ %.sroa.34.0.copyload315.i, %bb.cm ], [ %.sroa.34.0.copyload321.i, %bb.cj ], [ %.sroa.34.0.copyload323.i, %bb.cf ], [ undef, %.noexc96.i ], [ %.sroa.34.0.copyload313.i, %bb.bz ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit.i.i ]
  %.sroa.32.0.i = phi ptr [ undef, %.noexc102.i ], [ undef, %.noexc111.i ], [ %i.kf, %bb.db ], [ %.sroa.32.0.copyload307.i, %bb.cv ], [ %i.jp, %bb.ct ], [ %.sroa.32.0.copyload305.i, %bb.co ], [ %.sroa.32.0.copyload303.i, %bb.cm ], [ %.sroa.32.0.copyload309.i, %bb.cj ], [ %.sroa.32.0.copyload311.i, %bb.cf ], [ undef, %.noexc96.i ], [ %.sroa.32.0.copyload301.i, %bb.bz ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit.i.i ]
  %.sroa.25287.0.i = phi i64 [ undef, %.noexc102.i ], [ undef, %.noexc111.i ], [ %i.kc, %bb.db ], [ %.sroa.25287.0.copyload295.i, %bb.cv ], [ %i.jk, %bb.ct ], [ %.sroa.25287.0.copyload293.i, %bb.co ], [ %.sroa.25287.0.copyload291.i, %bb.cm ], [ %.sroa.25287.0.copyload297.i, %bb.cj ], [ %.sroa.25287.0.copyload299.i, %bb.cf ], [ undef, %.noexc96.i ], [ %.sroa.25287.0.copyload289.i, %bb.bz ], [ %i.ia, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit.i.i ]
  %.sroa.23.0.i = phi i8 [ undef, %.noexc102.i ], [ undef, %.noexc111.i ], [ undef, %bb.db ], [ %.sroa.23.0.copyload276.i, %bb.cv ], [ undef, %bb.ct ], [ %.sroa.23.0.copyload274.i, %bb.co ], [ %.sroa.23.0.copyload272.i, %bb.cm ], [ %.sroa.23.0.copyload278.i, %bb.cj ], [ %.sroa.23.0.copyload280.i, %bb.cf ], [ %i.ig, %.noexc96.i ], [ %.sroa.23.0.copyload270.i, %bb.bz ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit.i.i ]
  %.sroa.0.0.i = phi i8 [ 15, %.noexc102.i ], [ 15, %.noexc111.i ], [ 24, %bb.db ], [ %i.jn, %bb.cv ], [ 24, %bb.ct ], [ %i.je, %bb.co ], [ %i.jd, %bb.cm ], [ %i.iy, %bb.cj ], [ %i.it, %bb.cf ], [ 19, %.noexc96.i ], [ %i.ib, %bb.bz ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !696
  br label %bb.df

bb.dc:                                            ; preds = %bb.bt, %bb.bs, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemAhj4_NtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #24
          to label %.body.i unwind label %bb.dd, !noalias !695

bb.dd:                                            ; preds = %bb.dc
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !695
  unreachable

bb.de:                                            ; preds = %bb.at, %bb.ar, %bb.aq, %bb.an
  %.sroa.25.sroa.0.1.i = phi i16 [ undef, %bb.at ], [ undef, %bb.ar ], [ %i.fj, %bb.aq ], [ undef, %bb.an ]
  %.sroa.25287.1.i = phi i64 [ %i.fn, %bb.at ], [ %i.fl, %bb.ar ], [ undef, %bb.aq ], [ %i.ff, %bb.an ]
  %.sroa.23.1.i = phi i8 [ undef, %bb.at ], [ undef, %bb.ar ], [ %i.fk, %bb.aq ], [ undef, %bb.an ]
  %.sroa.0.1.i = phi i8 [ 0, %bb.at ], [ 0, %bb.ar ], [ 17, %bb.aq ], [ 0, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !696
  br label %bb.df

.body.i:                                          ; preds = %.body155.i, %.body147.i, %.body140.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit476.i, %bb.dc, %bb.bw, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.av
  %.pn68.i = phi { ptr, i32 } [ %eh.lpad-body141.i, %.body140.i ], [ %eh.lpad-body156.i, %.body155.i ], [ %eh.lpad-body148.i, %.body147.i ], [ %i.gk, %bb.az ], [ %i.hy, %bb.bw ], [ %lpad.thr_comm.split-lp.i.i, %bb.dc ], [ %i.ft, %bb.av ], [ %i.hu, %bb.bp ], [ %i.hs, %bb.bn ], [ %i.hn, %bb.bl ], [ %i.hl, %bb.bj ], [ %i.hg, %bb.bh ], [ %i.he, %bb.bf ], [ %i.ha, %bb.bd ], [ %i.gs, %bb.bb ], [ %lpad.loopexit.i, %.loopexit476.i ], [ %lpad.loopexit477.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit480.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit482.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit485.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit487.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit491.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit494.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp495.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsksn9slvsHfS_10image_webp3vp810Vp8DecoderINtNtNtB4_2io4util4TakeQINtNtB1r_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %i.bm) #24
          to label %common.resume unwind label %bb.ed, !noalias !681

.loopexit476.i:                                   ; preds = %bb.ee
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc260.i, %.noexc259.i, %bb.jw
  %lpad.loopexit477.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.jh
  %lpad.loopexit480.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.iq, %bb.io, %bb.im, %bb.ij, %bb.ih, %bb.if, %bb.id, %bb.ib, %bb.hz, %bb.hv, %bb.ht, %bb.hr
  %lpad.loopexit482.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.hp, %bb.hn, %bb.hl, %bb.hi, %bb.hg, %bb.he, %bb.hb, %bb.gz, %bb.gx, %bb.gu, %bb.gs, %bb.gq
  %lpad.loopexit485.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.fq, %bb.fp, %bb.fn, %bb.fm, %bb.fk, %bb.fj, %bb.fh, %bb.fg
  %lpad.loopexit487.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.jy, %.noexc253.i, %.noexc252.i, %.noexc251.i, %.noexc250.i, %.noexc249.i, %.noexc248.i, %.noexc247.i, %.noexc246.i, %.noexc245.i, %.loopexit.i233.i, %.noexc243.i, %bb.jr, %.noexc241.i, %bb.jq, %.noexc239.i, %bb.jp, %.noexc237.i, %bb.jo, %.noexc235.i, %bb.jn, %bb.je, %.noexc223.i, %.noexc222.i, %.noexc221.i, %.noexc220.i, %.noexc219.i, %.noexc218.i, %.noexc217.i, %.noexc216.i, %.noexc215.i, %.noexc214.i, %.noexc213.i, %.noexc212.i, %.noexc211.i, %.noexc210.i, %.noexc209.i, %.loopexit.i202.i, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %.thread.i160.i, %bb.gm, %bb.fc, %.loopexit.i.i, %bb.ex, %.thread.i.i, %bb.eq, %bb.eo, %bb.en, %bb.el
  %lpad.loopexit491.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit149.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i, %._crit_edge.i, %bb.ei
  %lpad.loopexit494.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke2471.i, %.invoke.i, %.invoke2467.i, %.invoke2469.i, %bb.es, %bb.eh, %bb.cz, %bb.cx, %bb.cw, %.noexc107.i, %bb.cr, %bb.cq, %bb.cn, %bb.cl, %bb.ci, %bb.ch, %bb.ce, %.noexc99.i, %.noexc98.i, %.noexc97.i, %bb.cd, %.noexc95.i, %bb.cc, %bb.cb, %bb.by, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %.noexc82.i, %bb.ax, %bb.au, %bb.as, %bb.ap, %bb.am, %bb.ak, %bb.aj, %_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE3newCsa5QsYiPB8Gl_5image.exit
  %lpad.loopexit.split-lp495.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.df:                                            ; preds = %bb.de, %.noexc92.i, %bb.ai
  %.sroa.25.sroa.11.1.i = phi i32 [ %.sroa.25.sroa.11.0.i, %.noexc92.i ], [ undef, %bb.de ], [ undef, %bb.ai ]
  %.sroa.25.sroa.0.2.i = phi i16 [ %.sroa.25.sroa.0.0.i, %.noexc92.i ], [ %.sroa.25.sroa.0.1.i, %bb.de ], [ undef, %bb.ai ]
  %.sroa.34.1.ph.i = phi i64 [ %.sroa.34.0.i, %.noexc92.i ], [ undef, %bb.de ], [ undef, %bb.ai ]
  %.sroa.32.1.ph.i = phi ptr [ %.sroa.32.0.i, %.noexc92.i ], [ undef, %bb.de ], [ undef, %bb.ai ]
  %.sroa.25287.2.ph.i = phi i64 [ %.sroa.25287.0.i, %.noexc92.i ], [ %.sroa.25287.1.i, %bb.de ], [ %i.ef, %bb.ai ]
  %.sroa.23.2.ph.i = phi i8 [ %.sroa.23.0.i, %.noexc92.i ], [ %.sroa.23.1.i, %bb.de ], [ undef, %bb.ai ]
  %.sroa.0.2.ph.i = phi i8 [ %.sroa.0.0.i, %.noexc92.i ], [ %.sroa.0.1.i, %bb.de ], [ 0, %bb.ai ]
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.2.ph.i, ptr %i.ki, align 8, !alias.scope !681, !noalias !684
  %.sroa.4397.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.23.2.ph.i, ptr %.sroa.4397.0..sroa_idx.i, align 1, !alias.scope !681, !noalias !684
  %.sroa.5398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.25.sroa.0.2.i, ptr %.sroa.5398.0..sroa_idx.i, align 2, !alias.scope !681, !noalias !684
  %.sroa.5398.sroa.4.0..sroa.5398.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.25.sroa.11.1.i, ptr %.sroa.5398.sroa.4.0..sroa.5398.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !681, !noalias !684
  %.sroa.6399.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.25287.2.ph.i, ptr %.sroa.6399.0..sroa_idx.i, align 8, !alias.scope !681, !noalias !684
  %.sroa.7400.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.32.1.ph.i, ptr %.sroa.7400.0..sroa_idx.i, align 8, !alias.scope !681, !noalias !684
  %.sroa.8401.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.34.1.ph.i, ptr %.sroa.8401.0..sroa_idx.i, align 8, !alias.scope !681, !noalias !684
  store i64 -1, ptr %0, align 8, !alias.scope !681, !noalias !684
  br label %bb.ki

bb.dg:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !696
  %i.kj = load i16, ptr %i.do, align 2, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.kk = zext i16 %i.kj to i64
  %.not.i = icmp eq i16 %i.kj, 0
  br i1 %.not.i, label %._crit_edge1055.i, label %.lr.ph1047.i

.lr.ph1047.i:                                     ; preds = %bb.dg
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 858 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.kn = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.ko = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.kp = getelementptr inbounds nuw i8, ptr %i.q, i64 29 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 4 uses
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.kt = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.17329.1..sroa_idx331.i = getelementptr inbounds nuw i8, ptr %i.q, i64 7
  %.sroa.18.1..sroa_idx334.i = getelementptr inbounds nuw i8, ptr %i.q, i64 15
  %.sroa.19.1..sroa_idx338.i = getelementptr inbounds nuw i8, ptr %i.q, i64 23
  %.sroa.4416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 17 uses
  %.sroa.5417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 7
  %.sroa.6418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 15
  %.sroa.7419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 23
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ax, i64 3 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.kw = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.la = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.lb = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.lc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ld = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.le = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.lf = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.lg = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.lh = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  %i.li = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.lj = getelementptr inbounds nuw i8, ptr %i.m, i64 448
  %i.lk = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.lm = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.ln = getelementptr inbounds nuw i8, ptr %i.m, i64 576
  %i.lo = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.lp = getelementptr inbounds nuw i8, ptr %i.m, i64 640
  %i.lq = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.lr = getelementptr inbounds nuw i8, ptr %i.m, i64 704
  %i.ls = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.lt = getelementptr inbounds nuw i8, ptr %i.m, i64 768
  %i.lu = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.lv = getelementptr inbounds nuw i8, ptr %i.m, i64 832
  %i.lw = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.lx = getelementptr inbounds nuw i8, ptr %i.m, i64 896
  %i.ly = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.lz = getelementptr inbounds nuw i8, ptr %i.m, i64 960
  %i.ma = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 5 uses
  %.sroa.10.4..sroa_idx342.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.14.4..sroa_idx344.i = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %.sroa.17346.4..sroa_idx347.i = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %.sroa.20.4..sroa_idx348.i = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %.sroa.4433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.sroa.5434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  %.sroa.6435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  %.sroa.7436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.me = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.mf = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  %i.mg = getelementptr inbounds nuw i8, ptr %i.aw, i64 256
  %i.mh = getelementptr inbounds nuw i8, ptr %i.aw, i64 320
  %i.mi = getelementptr inbounds nuw i8, ptr %i.aw, i64 384
  %i.mj = getelementptr inbounds nuw i8, ptr %i.aw, i64 448
  %i.mk = getelementptr inbounds nuw i8, ptr %i.aw, i64 512
  %i.ml = getelementptr inbounds nuw i8, ptr %i.aw, i64 576
  %i.mm = getelementptr inbounds nuw i8, ptr %i.aw, i64 640
  %i.mn = getelementptr inbounds nuw i8, ptr %i.aw, i64 704
  %i.mo = getelementptr inbounds nuw i8, ptr %i.aw, i64 768
  %i.mp = getelementptr inbounds nuw i8, ptr %i.aw, i64 832
  %i.mq = getelementptr inbounds nuw i8, ptr %i.aw, i64 896
  %i.mr = getelementptr inbounds nuw i8, ptr %i.aw, i64 960
  %i.ms = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.mt = getelementptr inbounds nuw i8, ptr %i.h, i64 37
  %i.mu = getelementptr inbounds nuw i8, ptr %i.h, i64 58
  %i.mv = getelementptr inbounds nuw i8, ptr %i.h, i64 79
  %i.mw = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.mx = getelementptr inbounds nuw i8, ptr %i.h, i64 121
  %i.my = getelementptr inbounds nuw i8, ptr %i.h, i64 142
  %i.mz = getelementptr inbounds nuw i8, ptr %i.h, i64 163
  %i.na = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.nb = getelementptr inbounds nuw i8, ptr %i.h, i64 205
  %i.nc = getelementptr inbounds nuw i8, ptr %i.h, i64 226
  %i.nd = getelementptr inbounds nuw i8, ptr %i.h, i64 247
  %i.ne = getelementptr inbounds nuw i8, ptr %i.h, i64 268
  %i.nf = getelementptr inbounds nuw i8, ptr %i.h, i64 289
  %i.ng = getelementptr inbounds nuw i8, ptr %i.h, i64 310
  %i.nh = getelementptr inbounds nuw i8, ptr %i.h, i64 331
  %i.ni = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.nj = getelementptr inbounds nuw i8, ptr %i.h, i64 337
  %i.nk = getelementptr inbounds nuw i8, ptr %i.h, i64 353
  %.sroa.455.0..sroa_idx.i200.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.557.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.758.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.nm = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %.sroa.461.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.764.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.no = getelementptr inbounds nuw i8, ptr %i.aw, i64 1024
  %i.np = getelementptr inbounds nuw i8, ptr %i.aw, i64 1280
  %i.nq = getelementptr inbounds nuw i8, ptr %i.aw, i64 1088
  %i.nr = getelementptr inbounds nuw i8, ptr %i.aw, i64 1344
  %i.ns = getelementptr inbounds nuw i8, ptr %i.aw, i64 1152
  %i.nt = getelementptr inbounds nuw i8, ptr %i.aw, i64 1408
  %i.nu = getelementptr inbounds nuw i8, ptr %i.aw, i64 1216
  %i.nv = getelementptr inbounds nuw i8, ptr %i.aw, i64 1472
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.ny = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %i.nz = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.74.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.85.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.96.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.oa = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bm, i64 160 ; 5 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bm, i64 208 ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.bm, i64 256 ; 5 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.bm, i64 875
  %i.om = getelementptr inbounds nuw i8, ptr %i.bm, i64 876
  %i.on = getelementptr inbounds nuw i8, ptr %i.bm, i64 877
  %i.oo = getelementptr inbounds nuw i8, ptr %i.bm, i64 878
  %i.op = getelementptr inbounds nuw i8, ptr %i.bm, i64 879
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bm, i64 880
  %i.or = getelementptr inbounds nuw i8, ptr %i.bm, i64 881
  %i.os = getelementptr inbounds nuw i8, ptr %i.bm, i64 882
  br label %bb.dh

._crit_edge1048.i:                                ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit157.i
  %.pre.i = load i16, ptr %i.do, align 2, !alias.scope !684, !noalias !681 ; 2 uses
  %i.ot = zext i16 %.pre.i to i64
  %.not1057.i = icmp eq i16 %.pre.i, 0
  %i.ou = load i16, ptr %i.dn, align 4            ; 2 uses
  %i.ov = icmp eq i16 %i.ou, 0
  %or.cond = select i1 %.not1057.i, i1 true, i1 %i.ov
  br i1 %or.cond, label %._crit_edge1055.i, label %.lr.ph1054.i

bb.dh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit157.i, %.lr.ph1047.i
  %.sroa.025.01045.i = phi i64 [ 0, %.lr.ph1047.i ], [ %i.ow, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit157.i ] ; 8 uses
  %.sroa.11.01044.i = phi i8 [ undef, %.lr.ph1047.i ], [ %.sroa.11.1.lcssa.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit157.i ] ; 2 uses
  %.sroa.17329.01043.i = phi i64 [ undef, %.lr.ph1047.i ], [ %.sroa.17329.1.lcssa.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit157.i ] ; 2 uses
  %.sroa.18.01042.i = phi ptr [ undef, %.lr.ph1047.i ], [ %.sroa.18.1.lcssa.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit157.i ] ; 2 uses
  %.sroa.19.01041.i = phi i64 [ undef, %.lr.ph1047.i ], [ %.sroa.19.1.lcssa.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit157.i ] ; 2 uses
  %i.ow = add nuw nsw i64 %.sroa.025.01045.i, 1   ; 2 uses
  %i.ox = load i8, ptr %i.dw, align 1, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.oy = icmp eq i8 %i.ox, 0
  br i1 %i.oy, label %bb.eh, label %bb.ei

.loopexit.i:                                      ; preds = %bb.eg, %.lr.ph1054.i
  %exitcond1714.not.i = icmp eq i64 %i.pd, %i.ot
  br i1 %exitcond1714.not.i, label %._crit_edge1055.i, label %.lr.ph1054.ithread-pre-split, !llvm.loop !711

._crit_edge1055.i:                                ; preds = %.loopexit.i, %._crit_edge1048.i, %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.dp, i64 88, i1 false), !alias.scope !713
  %i.oz = getelementptr inbounds nuw i8, ptr %i.bm, i64 376
  %.val71.i = load i64, ptr %i.oz, align 8, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.pa = icmp eq i64 %.val71.i, 0
  br i1 %i.pa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit.i6, label %bb.di

bb.di:                                            ; preds = %._crit_edge1055.i
  %.val.i5 = load ptr, ptr %i.dm, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  %i.pb = shl nuw nsw i64 %.val71.i, 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5, i64 noundef range(i64 1, 0) %i.pb, i64 noundef 1) #27, !noalias !681
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit.i6

.lr.ph1054.ithread-pre-split:                     ; preds = %.loopexit.i
  %.pr = load i16, ptr %i.dn, align 4, !alias.scope !684, !noalias !681
  br label %.lr.ph1054.i

.lr.ph1054.i:                                     ; preds = %._crit_edge1048.i, %.lr.ph1054.ithread-pre-split
  %i.pc = phi i16 [ %.pr, %.lr.ph1054.ithread-pre-split ], [ %i.ou, %._crit_edge1048.i ] ; 2 uses
  %.sroa.040.01052.i = phi i64 [ %i.pd, %.lr.ph1054.ithread-pre-split ], [ 0, %._crit_edge1048.i ] ; 3 uses
  %i.pd = add nuw nsw i64 %.sroa.040.01052.i, 1   ; 2 uses
  %i.pe = zext i16 %i.pc to i64
  %.not1058.i = icmp eq i16 %i.pc, 0
  br i1 %.not1058.i, label %.loopexit.i, label %.lr.ph1051.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit.i6: ; preds = %bb.di, %._crit_edge1055.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %i.bm)
          to label %bb.dk unwind label %bb.dj, !noalias !681

bb.dj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit.i6
  %i.pf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueANtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderj8_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(384) %i.dv) #24, !noalias !681
  %.val73.i = load ptr, ptr %i.dy, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val73.i, i64 noundef 4224, i64 noundef 1) #27, !noalias !681
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eb) #24
          to label %bb.dl unwind label %bb.ed, !noalias !681

bb.dk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit.i6
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueANtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderj8_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(384) %i.dv), !noalias !681
  %.val72.i = load ptr, ptr %i.dy, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72.i, i64 noundef 4224, i64 noundef 1) #27, !noalias !681
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eb)
          to label %bb.dn unwind label %bb.dm, !noalias !681

bb.dl:                                            ; preds = %bb.dm, %bb.dj
  %.pn54.i = phi { ptr, i32 } [ %i.pg, %bb.dm ], [ %i.pf, %bb.dj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ed) #24
          to label %bb.do unwind label %bb.ed, !noalias !681

bb.dm:                                            ; preds = %bb.dk
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dn:                                            ; preds = %bb.dk
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ed)
          to label %bb.dq unwind label %bb.dp, !noalias !681

bb.do:                                            ; preds = %bb.dp, %bb.dl
  %.pn56.i = phi { ptr, i32 } [ %i.pi, %bb.dp ], [ %.pn54.i, %bb.dl ]
  %i.ph = getelementptr inbounds nuw i8, ptr %i.bm, i64 160
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ph) #24
          to label %bb.dr unwind label %bb.ed, !noalias !681

bb.dp:                                            ; preds = %bb.dn
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dq:                                            ; preds = %bb.dn
  %i.pj = getelementptr inbounds nuw i8, ptr %i.bm, i64 160
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pj)
          to label %bb.dt unwind label %bb.ds, !noalias !681

bb.dr:                                            ; preds = %bb.ds, %bb.do
  %.pn58.i = phi { ptr, i32 } [ %i.pl, %bb.ds ], [ %.pn56.i, %bb.do ]
  %i.pk = getelementptr inbounds nuw i8, ptr %i.bm, i64 184
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pk) #24
          to label %bb.du unwind label %bb.ed, !noalias !681

bb.ds:                                            ; preds = %bb.dq
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dt:                                            ; preds = %bb.dq
  %i.pm = getelementptr inbounds nuw i8, ptr %i.bm, i64 184
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pm)
          to label %bb.dw unwind label %bb.dv, !noalias !681

bb.du:                                            ; preds = %bb.dv, %bb.dr
  %.pn60.i = phi { ptr, i32 } [ %i.po, %bb.dv ], [ %.pn58.i, %bb.dr ]
  %i.pn = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pn) #24
          to label %bb.dx unwind label %bb.ed, !noalias !681

bb.dv:                                            ; preds = %bb.dt
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dw:                                            ; preds = %bb.dt
  %i.pp = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pp)
          to label %bb.dz unwind label %bb.dy, !noalias !681

bb.dx:                                            ; preds = %bb.dy, %bb.du
  %.pn62.i = phi { ptr, i32 } [ %i.pr, %bb.dy ], [ %.pn60.i, %bb.du ]
  %i.pq = getelementptr inbounds nuw i8, ptr %i.bm, i64 232
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pq) #24
          to label %bb.ea unwind label %bb.ed, !noalias !681

bb.dy:                                            ; preds = %bb.dw
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dz:                                            ; preds = %bb.dw
  %i.ps = getelementptr inbounds nuw i8, ptr %i.bm, i64 232
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ps)
          to label %bb.ec unwind label %bb.eb, !noalias !681

bb.ea:                                            ; preds = %bb.eb, %bb.dx
  %.pn64.i = phi { ptr, i32 } [ %i.pu, %bb.eb ], [ %.pn62.i, %bb.dx ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.bm, i64 256
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pt) #24
          to label %common.resume unwind label %bb.ed, !noalias !681

bb.eb:                                            ; preds = %bb.dz
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ec:                                            ; preds = %bb.dz
  %i.pv = getelementptr inbounds nuw i8, ptr %i.bm, i64 256
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pv), !noalias !681
  br label %_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE13decode_frame_Csa5QsYiPB8Gl_5image.exit

bb.ed:                                            ; preds = %bb.ea, %bb.dx, %bb.du, %bb.dr, %bb.do, %bb.dl, %bb.dj, %.body.i
  %i.pw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !681
  unreachable

.lr.ph1051.i:                                     ; preds = %.lr.ph1054.i, %bb.eg
  %.sroa.042.01049.i = phi i64 [ %i.px, %bb.eg ], [ 0, %.lr.ph1054.i ] ; 3 uses
  %i.px = add nuw nsw i64 %.sroa.042.01049.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !713
  %i.py = load i16, ptr %i.dn, align 4, !alias.scope !684, !noalias !681, !noundef !5
  %i.pz = zext i16 %i.py to i64
  %i.qa = mul nuw nsw i64 %.sroa.040.01052.i, %i.pz
  %i.qb = add nuw nsw i64 %i.qa, %.sroa.042.01049.i ; 3 uses
  %i.qc = load i64, ptr %i.oa, align 8, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.qd = icmp ult i64 %i.qb, %i.qc
  br i1 %i.qd, label %bb.ee, label %.invoke2471.i

bb.ee:                                            ; preds = %.lr.ph1051.i
  %i.qe = load ptr, ptr %i.ob, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  %i.qf = getelementptr inbounds nuw [30 x i8], ptr %i.qe, i64 %i.qb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.av, ptr noundef nonnull align 1 dereferenceable(30) %i.qf, i64 30, i1 false), !noalias !681
  invoke fastcc void @_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE11loop_filterCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %i.bm, i64 noundef %.sroa.042.01049.i, i64 noundef %.sroa.040.01052.i, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(30) %i.av)
          to label %bb.eg unwind label %.loopexit476.i, !noalias !681

bb.ef:                                            ; preds = %bb.eh
  unreachable

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !713
  %exitcond1713.not.i = icmp eq i64 %i.px, %i.pe
  br i1 %exitcond1713.not.i, label %.loopexit.i, label %.lr.ph1051.i

bb.eh:                                            ; preds = %bb.dh
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #28
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

bb.ei:                                            ; preds = %bb.dh
  %i.qg = zext i8 %i.ox to i64
  %i.qh = urem i64 %.sroa.025.01045.i, %i.qg      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !713
  invoke void @_RNvXsW_NtCsj6eKBz9Db1c_4core5arrayAhj9_NtNtB7_7default7Default7defaultCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([9 x i8]) align 1 captures(none) dereferenceable(9) %i.au)
          to label %bb.ej unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !684, !noalias !681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(9) %i.au, i64 9, i1 false), !noalias !681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !713
  store i32 0, ptr %i.ec, align 2, !alias.scope !684, !noalias !681
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 1, !alias.scope !684, !noalias !681
  %i.qi = load i16, ptr %i.dn, align 4, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.qj = zext i16 %i.qi to i64
  %.not1056.i = icmp eq i16 %i.qi, 0
  br i1 %.not1056.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ej
  %i.qk = icmp ne i64 %.sroa.025.01045.i, 0       ; 3 uses
  %i.ql = shl nuw nsw i64 %.sroa.025.01045.i, 4
  %i.qm = shl nuw nsw i64 %.sroa.025.01045.i, 3
  br label %bb.el

._crit_edge.i:                                    ; preds = %bb.jz, %bb.ej
  %.sroa.19.1.lcssa.i = phi i64 [ %.sroa.19.01041.i, %bb.ej ], [ %.sroa.19.1.insert.insert.i, %bb.jz ]
  %.sroa.18.1.lcssa.i = phi ptr [ %.sroa.18.01042.i, %bb.ej ], [ %.sroa.18.1.copyload335.i, %bb.jz ]
  %.sroa.17329.1.lcssa.i = phi i64 [ %.sroa.17329.01043.i, %bb.ej ], [ %.sroa.17329.1.copyload332.i, %bb.jz ]
  %.sroa.11.1.lcssa.i = phi i8 [ %.sroa.11.01044.i, %bb.ej ], [ %.sroa.0.0.i.i, %bb.jz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !714
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc114.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

.noexc114.i:                                      ; preds = %._crit_edge.i
  %i.qn = load i64, ptr %i.u, align 8, !range !155, !noalias !714, !noundef !5
  %i.qo = trunc nuw i64 %i.qn to i1
  %i.qp = load i64, ptr %i.oc, align 8, !range !179, !noalias !714, !noundef !5 ; 4 uses
  br i1 %i.qo, label %bb.ek, label %bb.fr, !prof !154

bb.ek:                                            ; preds = %.noexc114.i
  %i.qq = load i64, ptr %i.od, align 8, !noalias !714
  br label %.invoke2469.i

bb.el:                                            ; preds = %bb.jz, %.lr.ph.i
  %.sroa.027.01037.i = phi i64 [ 0, %.lr.ph.i ], [ %i.qr, %bb.jz ] ; 127 uses
  %.sroa.11.11036.i = phi i8 [ %.sroa.11.01044.i, %.lr.ph.i ], [ %.sroa.0.0.i.i, %bb.jz ] ; 2 uses
  %.sroa.17329.11035.i = phi i64 [ %.sroa.17329.01043.i, %.lr.ph.i ], [ %.sroa.17329.1.copyload332.i, %bb.jz ] ; 7 uses
  %.sroa.18.11034.i = phi ptr [ %.sroa.18.01042.i, %.lr.ph.i ], [ %.sroa.18.1.copyload335.i, %bb.jz ] ; 7 uses
  %.sroa.19.11033.i = phi i64 [ %.sroa.19.01041.i, %.lr.ph.i ], [ %.sroa.19.1.insert.insert.i, %bb.jz ] ; 8 uses
  %i.qr = add nuw nsw i64 %.sroa.027.01037.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !713
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !713
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kl, i8 0, i64 16, i1 false), !noalias !720
  invoke void @_RNvXsW_NtCsj6eKBz9Db1c_4core5arrayAhj9_NtNtB7_7default7Default7defaultCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([9 x i8]) align 1 captures(none) dereferenceable(9) %i.km)
          to label %.noexc116.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

.noexc116.i:                                      ; preds = %bb.el
  store i8 0, ptr %i.kp, align 1, !noalias !720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kq, i8 0, i64 3, i1 false), !noalias !720
  %i.qs = load i8, ptr %i.dq, align 8, !range !40, !alias.scope !722, !noalias !723, !noundef !5
  %i.qt = trunc nuw i8 %i.qs to i1
  %i.qu = load i8, ptr %i.dr, align 1, !range !40, !alias.scope !722, !noalias !723
  %i.qv = trunc nuw i8 %i.qu to i1
  %or.cond.i.i = select i1 %i.qt, i1 %i.qv, i1 false
  br i1 %or.cond.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.noexc117.i, %.noexc116.i
  %i.qw = load i8, ptr %i.ea, align 4, !range !40, !alias.scope !722, !noalias !723, !noundef !5
  %i.qx = trunc nuw i8 %i.qw to i1
  br i1 %i.qx, label %bb.eo, label %bb.ep

bb.en:                                            ; preds = %.noexc116.i
  %.sroa.063.0.copyload.i.i = load i32, ptr %i.dx, align 8, !alias.scope !722, !noalias !723
  %i.qy = invoke noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder30read_with_tree_with_first_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef 3, i32 noundef %.sroa.063.0.copyload.i.i) #30
          to label %.noexc117.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

.noexc117.i:                                      ; preds = %bb.en
  store i8 %i.qy, ptr %i.kp, align 1, !noalias !720
  br label %bb.em

bb.eo:                                            ; preds = %bb.em
  %i.qz = load i8, ptr %i.ju, align 1, !alias.scope !722, !noalias !723, !noundef !5
  %i.ra = invoke noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dm, i8 noundef %i.qz) #30
          to label %.noexc118.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

.noexc118.i:                                      ; preds = %bb.eo
  %i.rb = zext i1 %i.ra to i8
  br label %bb.ep

bb.ep:                                            ; preds = %.noexc118.i, %bb.em
  %.sroa.0.0.i.i = phi i8 [ %i.rb, %.noexc118.i ], [ 0, %bb.em ] ; 5 uses
  store i8 %.sroa.0.0.i.i, ptr %i.q, align 1, !noalias !720
  %i.rc = load i8, ptr %i.eh, align 4, !range !40, !alias.scope !722, !noalias !723, !noundef !5
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %.thread.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.re = load i8, ptr %i.dz, align 4, !alias.scope !722, !noalias !723, !noundef !5
  %i.rf = invoke noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dm, i8 noundef %i.re) #30
          to label %.noexc119.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

.noexc119.i:                                      ; preds = %bb.eq
  br i1 %i.rf, label %bb.es, label %bb.er

bb.er:                                            ; preds = %.noexc119.i
  %.pre.i.i = load i8, ptr %i.eh, align 4, !range !40, !alias.scope !722, !noalias !723
  %i.rg = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.rg, label %.thread.i.i, label %bb.ev

bb.es:                                            ; preds = %.noexc119.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !720
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc120.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

.noexc120.i:                                      ; preds = %bb.es
  %i.rh = load i64, ptr %i.p, align 8, !range !155, !noalias !720, !noundef !5
  %i.ri = trunc nuw i64 %i.rh to i1
  %i.rj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.rk = load i64, ptr %i.rj, align 8, !range !179, !noalias !720, !noundef !5 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.ri, label %bb.et, label %bb.eu, !prof !154

bb.et:                                            ; preds = %.noexc120.i
  %i.rm = load i64, ptr %i.rl, align 8, !noalias !720
  br label %.invoke2469.i

bb.eu:                                            ; preds = %.noexc120.i
  %i.rn = load ptr, ptr %i.rl, align 8, !noalias !720, !nonnull !5, !noundef !5 ; 2 uses
  %i.ro = icmp samesign ugt i64 %i.rk, 19
  call void @llvm.assume(i1 %i.ro)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.rn, ptr noundef nonnull align 1 dereferenceable(20) @120, i64 20, i1 false), !noalias !723
  br label %.loopexit490.i

bb.ev:                                            ; preds = %.noexc125.i, %bb.er
  %i.rp = phi i8 [ %i.rt, %.noexc125.i ], [ 0, %bb.er ]
  %i.rq = phi i8 [ %i.ru, %.noexc125.i ], [ 0, %bb.er ]
  %i.rr = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !722, !noalias !723, !noundef !5 ; 2 uses
  %i.rs = icmp ult i64 %.sroa.027.01037.i, %i.rr
  br i1 %i.rs, label %bb.fd, label %.invoke2467.i

.thread.i.i:                                      ; preds = %bb.er, %bb.ep
  %i.rt = invoke noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder30read_with_tree_with_first_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 4, i32 noundef 9503108) #30
          to label %.noexc122.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681 ; 7 uses

.noexc122.i:                                      ; preds = %.thread.i.i
  %switch.i.i = icmp ult i8 %i.rt, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !720
  br i1 %switch.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %.noexc122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !720
  br label %.loopexit490.i

bb.ex:                                            ; preds = %.noexc122.i
  store i8 %i.rt, ptr %i.kr, align 1, !noalias !720
  store i8 20, ptr %i.t, align 8, !noalias !720
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t)
          to label %.noexc123.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

.noexc123.i:                                      ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !720
  store i8 %i.rt, ptr %i.kn, align 1, !noalias !720
  switch i8 %i.rt, label %default.unreachable [
    i8 0, label %.loopexit.loopexit.i.i
    i8 1, label %bb.ey
    i8 2, label %bb.ez
    i8 3, label %bb.fa
    i8 4, label %.preheader.i.i
  ]

default.unreachable:                              ; preds = %.noexc203.i, %.noexc123.i
  unreachable

bb.ey:                                            ; preds = %.noexc123.i
  br label %.loopexit.loopexit.i.i

bb.ez:                                            ; preds = %.noexc123.i
  br label %.loopexit.loopexit.i.i

bb.fa:                                            ; preds = %.noexc123.i
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.fa, %bb.ez, %bb.ey, %.noexc123.i
  %.sroa.083.0.i.i = phi i8 [ 1, %bb.fa ], [ 2, %bb.ey ], [ 3, %bb.ez ], [ %i.rt, %.noexc123.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %scevgep.i.i, i8 %.sroa.083.0.i.i, i64 4, i1 false), !noalias !720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(4) %.sroa.7.0..sroa_idx.i, i8 %.sroa.083.0.i.i, i64 4, i1 false), !alias.scope !722, !noalias !723
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit141.i.i, %.loopexit.loopexit.i.i
  %i.ru = invoke noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder30read_with_tree_with_first_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 3, i32 noundef 9306496) #30
          to label %.noexc124.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681 ; 5 uses

.noexc124.i:                                      ; preds = %.loopexit.i.i
  %switch139.i.i = icmp ult i8 %i.ru, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !720
  br i1 %switch139.i.i, label %bb.fc, label %bb.fb

.preheader.i.i:                                   ; preds = %.noexc123.i, %.loopexit141.i.i
  %.sroa.087.0149.i.i = phi i64 [ %i.rv, %.loopexit141.i.i ], [ 0, %.noexc123.i ] ; 3 uses
  %i.rv = add nuw nsw i64 %.sroa.087.0149.i.i, 1  ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx.i, i64 %.sroa.087.0149.i.i ; 5 uses
  %i.rx = shl nuw nsw i64 %.sroa.087.0149.i.i, 2
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.rx ; 4 uses
  %i.ry = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !722, !noalias !723, !noundef !5 ; 2 uses
  %i.rz = icmp ult i64 %.sroa.027.01037.i, %i.ry
  br i1 %i.rz, label %bb.fg, label %.invoke2467.i

bb.fb:                                            ; preds = %.noexc124.i
end_hunk_0
