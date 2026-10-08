Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.09?download=true
inline.NumInlined: 1385
inline.NumDeleted: 492
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCsa5QsYiPB8Gl_5image2io17image_reader_typeINtB2_11ImageReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE6decodeB6_:bb.a
bb.cg:                                            ; preds = %bb.cf
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gc, i64 10
  %i.is = load i8, ptr %i.ir, align 1, !noalias !1386, !noundef !4
  %i.it = icmp eq i8 %i.is, 80
  br i1 %i.it, label %bb.ch, label %bb.bx

bb.ch:                                            ; preds = %bb.cg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fh)
          to label %bb.cj unwind label %bb.ci, !noalias !1387

bb.ci:                                            ; preds = %bb.ch
  %i.iu = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.fh, align 8, !alias.scope !1384, !noalias !1385
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  store i64 0, ptr %i.fh, align 8, !alias.scope !1384, !noalias !1385
  store ptr inttoptr (i64 1 to ptr), ptr %.sink85.i.i.sroa.gep2.i.i.i, align 8, !alias.scope !1384, !noalias !1385
  store i64 0, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1384, !noalias !1385
  br label %bb.bx

bb.ck:                                            ; preds = %bb.cv, %bb.ci
  %.sink85.i.i.sroa.phi.i.i.i = phi ptr [ %.sink85.i.i.sroa.gep.i.i.i, %bb.cv ], [ %.sink85.i.i.sroa.gep2.i.i.i, %bb.ci ]
  %.sink.i.i.sroa.phi.i.i.i = phi ptr [ %.sink.i.i.sroa.gep.i.i.i, %bb.cv ], [ %.sink.i.i.sroa.gep3.i.i.i, %bb.ci ]
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.jw, %bb.cv ], [ %i.iu, %bb.ci ]
  store ptr inttoptr (i64 1 to ptr), ptr %.sink85.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1384, !noalias !1385
  store i64 0, ptr %.sink.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1384, !noalias !1385
  br label %.body.i.i.i.i

bb.cl:                                            ; preds = %bb.bn
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.iw = load i8, ptr %i.iv, align 1, !noalias !1386, !noundef !4
  %i.ix = icmp eq i8 %i.iw, 67
  br i1 %i.ix, label %bb.cm, label %bb.bx

bb.cm:                                            ; preds = %bb.cl
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gc, i64 3
  %i.iz = load i8, ptr %i.iy, align 1, !noalias !1386, !noundef !4
  %i.ja = icmp eq i8 %i.iz, 82
  br i1 %i.ja, label %bb.cn, label %bb.bx

bb.cn:                                            ; preds = %bb.cm
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.jc = load i8, ptr %i.jb, align 1, !noalias !1386, !noundef !4
  %i.jd = icmp eq i8 %i.jc, 71
  br i1 %i.jd, label %bb.co, label %bb.bx

bb.co:                                            ; preds = %bb.cn
  %i.je = getelementptr inbounds nuw i8, ptr %i.gc, i64 5
  %i.jf = load i8, ptr %i.je, align 1, !noalias !1386, !noundef !4
  %i.jg = icmp eq i8 %i.jf, 66
  br i1 %i.jg, label %bb.cp, label %bb.bx

bb.cp:                                            ; preds = %bb.co
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gc, i64 6
  %i.ji = load i8, ptr %i.jh, align 1, !noalias !1386, !noundef !4
  %i.jj = icmp eq i8 %i.ji, 71
  br i1 %i.jj, label %bb.cq, label %bb.bx

bb.cq:                                            ; preds = %bb.cp
  %i.jk = getelementptr inbounds nuw i8, ptr %i.gc, i64 7
  %i.jl = load i8, ptr %i.jk, align 1, !noalias !1386, !noundef !4
  %i.jm = icmp eq i8 %i.jl, 49
  br i1 %i.jm, label %bb.cr, label %bb.bx

bb.cr:                                            ; preds = %bb.cq
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.jo = load i8, ptr %i.jn, align 1, !noalias !1386, !noundef !4
  %i.jp = icmp eq i8 %i.jo, 48
  br i1 %i.jp, label %bb.cs, label %bb.bx

bb.cs:                                            ; preds = %bb.cr
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gc, i64 9
  %i.jr = load i8, ptr %i.jq, align 1, !noalias !1386, !noundef !4
  %i.js = icmp eq i8 %i.jr, 49
  br i1 %i.js, label %bb.ct, label %bb.bx

bb.ct:                                            ; preds = %bb.cs
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gc, i64 10
  %i.ju = load i8, ptr %i.jt, align 1, !noalias !1386, !noundef !4
  %i.jv = icmp eq i8 %i.ju, 50
  br i1 %i.jv, label %bb.cu, label %bb.bx

bb.cu:                                            ; preds = %bb.ct
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fi)
          to label %bb.cw unwind label %bb.cv, !noalias !1387

bb.cv:                                            ; preds = %bb.cu
  %i.jw = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.fi, align 8, !alias.scope !1384, !noalias !1385
  br label %bb.ck

bb.cw:                                            ; preds = %bb.cu
  store i64 0, ptr %i.fi, align 8, !alias.scope !1384, !noalias !1385
  store ptr inttoptr (i64 1 to ptr), ptr %.sink85.i.i.sroa.gep.i.i.i, align 8, !alias.scope !1384, !noalias !1385
  store i64 0, ptr %.sink.i.i.sroa.gep.i.i.i, align 8, !alias.scope !1384, !noalias !1385
  br label %bb.bx

bb.cx:                                            ; preds = %bb.cz, %bb.cy, %bb.bg
  store i8 4, ptr %i.fg, align 8, !alias.scope !1384, !noalias !1385
  br label %bb.bj

bb.cy:                                            ; preds = %bb.bg
  %i.jx = load i8, ptr %i.gc, align 1, !noalias !1386, !noundef !4
  %i.jy = icmp eq i8 %i.jx, 1
  %i.jz = icmp eq i64 %i.gd, 3
  %or.cond.i.i.i.i.i = and i1 %i.jz, %i.jy
  br i1 %or.cond.i.i.i.i.i, label %bb.cz, label %bb.cx

bb.cz:                                            ; preds = %bb.cy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %.sroa.026.0.copyload.i.i.i.i.i = load i16, ptr %i.ka, align 1, !noalias !1386 ; 2 uses
  %i.kb = icmp eq i16 %.sroa.026.0.copyload.i.i.i.i.i, 0
  %..i.i.i.i.i = zext i1 %i.kb to i16
  store i16 %..i.i.i.i.i, ptr %i.fc, align 8, !alias.scope !1384, !noalias !1385
  store i16 %.sroa.026.0.copyload.i.i.i.i.i, ptr %i.fd, align 2, !alias.scope !1384, !noalias !1385
  br label %bb.cx

bb.da:                                            ; preds = %bb.bh
  %i.kc = add i64 %i.gd, 1                        ; 2 uses
  %i.kd = load i64, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1388, !noalias !1389, !noundef !4 ; 4 uses
  %i.ke = icmp sgt i64 %i.kd, -1
  call void @llvm.assume(i1 %i.ke)
  %i.kf = add i64 %i.kd, %i.kc                    ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %i.kd
  br i1 %i.kg, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i, !prof !7

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i: ; preds = %bb.da
  %.val38.i.i.i.i.i = load i64, ptr %i.fa, align 8, !alias.scope !1384, !noalias !1385 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %.val38.i.i.i.i.i, 0
  %.not57.i.i.i.i.i.i = icmp ugt i64 %i.kf, %.val38.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i, %.not57.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RNvMNtCsvKatKEpids_3gif6readerNtB2_11MemoryLimit11try_reserve.exit.i.i.i.i.i

_RNvMNtCsvKatKEpids_3gif6readerNtB2_11MemoryLimit11try_reserve.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i
  %i.kh = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fh, i64 noundef %i.kd, i64 noundef %i.kc, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1379

.noexc.i.i.i.i:                                   ; preds = %_RNvMNtCsvKatKEpids_3gif6readerNtB2_11MemoryLimit11try_reserve.exit.i.i.i.i.i
  %i.ki = extractvalue { i64, i64 } %i.kh, 0
  %.not58.i.i.i.i.i.i = icmp eq i64 %i.ki, -1
  br i1 %.not58.i.i.i.i.i.i, label %bb.db, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i

bb.db:                                            ; preds = %.noexc.i.i.i.i
  %i.kj = trunc i64 %i.gd to i8
  %i.kk = load i64, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1390, !noalias !1385, !noundef !4 ; 3 uses
  %i.kl = load i64, ptr %i.fh, align 8, !range !13, !alias.scope !1390, !noalias !1385, !noundef !4
  %i.km = icmp eq i64 %i.kk, %i.kl
  br i1 %i.km, label %bb.dc, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i

bb.dc:                                            ; preds = %bb.db
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fh) #32
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1379

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i: ; preds = %bb.dc, %bb.db
  %i.kn = load ptr, ptr %.sink85.i.i.sroa.gep2.i.i.i, align 8, !alias.scope !1390, !noalias !1385, !nonnull !4, !noundef !4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kk
  store i8 %i.kj, ptr %i.ko, align 1, !noalias !1387
  %i.kp = add i64 %i.kk, 1
  store i64 %i.kp, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1390, !noalias !1385
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fh, i64 noundef %i.gd)
          to label %.noexc66.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1379

.noexc66.i.i.i.i:                                 ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i
  %i.kq = load i64, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1391, !noalias !1385, !noundef !4 ; 3 uses
  %i.kr = icmp sgt i64 %i.kq, -1
  call void @llvm.assume(i1 %i.kr)
  %.not.i39.i.i.i.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not.i39.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %.noexc66.i.i.i.i
  %i.ks = load ptr, ptr %.sink85.i.i.sroa.gep2.i.i.i, align 8, !alias.scope !1391, !noalias !1385, !nonnull !4, !noundef !4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kt, ptr nonnull readonly align 1 %i.gc, i64 %i.gd, i1 false), !noalias !1387
  %.pre.i.i.i.i.i.i = load i64, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1391, !noalias !1385
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i: ; preds = %bb.dd, %.noexc66.i.i.i.i
  %i.ku = phi i64 [ %.pre.i.i.i.i.i.i, %bb.dd ], [ %i.kq, %.noexc66.i.i.i.i ]
  %i.kv = add i64 %i.ku, %i.gd                    ; 4 uses
  store i64 %i.kv, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1391, !noalias !1385
  br i1 %i.gb, label %bb.de, label %.backedge.i.i.i.i

bb.de:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i
  %i.kw = icmp sgt i64 %i.kv, -1
  call void @llvm.assume(i1 %i.kw)
  %i.kx = icmp samesign ugt i64 %i.kv, 256
  br i1 %i.kx, label %bb.df, label %.noexc70.i.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.ky = load ptr, ptr %.sink85.i.i.sroa.gep2.i.i.i, align 8, !alias.scope !1384, !noalias !1385, !nonnull !4, !noundef !4
  %i.kz = invoke noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ky, i64 noundef %i.kv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 4)
          to label %.noexc67.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1379

.noexc67.i.i.i.i:                                 ; preds = %bb.df
  br i1 %i.kz, label %bb.dg, label %.noexc70.i.i.i.i

bb.dg:                                            ; preds = %.noexc67.i.i.i.i
  %i.la = load i64, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1384, !noalias !1385, !noundef !4 ; 5 uses
  %i.lb = icmp sgt i64 %i.la, -1
  call void @llvm.assume(i1 %i.lb)
  %2 = add nsw i64 %i.la, -257                    ; 2 uses
  %i.lc = icmp samesign ult i64 %i.la, 257
  br i1 %i.lc, label %bb.di, label %bb.dh, !prof !7

bb.dh:                                            ; preds = %bb.dg
  %i.ld = load ptr, ptr %.sink85.i.i.sroa.gep2.i.i.i, align 8, !alias.scope !1384, !noalias !1385, !nonnull !4, !noundef !4
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %2
  %i.lf = invoke noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.le, i64 noundef 257, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 2)
          to label %.noexc68.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1379

.noexc68.i.i.i.i:                                 ; preds = %bb.dh
  br i1 %i.lf, label %bb.dj, label %.noexc70.i.i.i.i

bb.di:                                            ; preds = %bb.dg
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.la, i64 noundef %i.la, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #34
          to label %.noexc69.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !1379

.noexc69.i.i.i.i:                                 ; preds = %bb.di
  unreachable

bb.dj:                                            ; preds = %.noexc68.i.i.i.i
  %i.lg = load i64, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1384, !noalias !1385, !noundef !4 ; 2 uses
  %i.lh = icmp sgt i64 %i.lg, -1
  call void @llvm.assume(i1 %i.lh)
  %i.li = add nsw i64 %i.lg, -257
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fh, i64 noundef %i.li)
          to label %.noexc70.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1379

.noexc70.i.i.i.i:                                 ; preds = %bb.dj, %.noexc68.i.i.i.i, %.noexc67.i.i.i.i, %bb.de, %bb.bj
  store i8 0, ptr %i.fg, align 8, !alias.scope !1384, !noalias !1385
  br label %.backedge.i.i.i.i

bb.dk:                                            ; preds = %bb.bi
  %i.lj = load i64, ptr %.sink.i.i.sroa.gep.i.i.i, align 8, !alias.scope !1392, !noalias !1393, !noundef !4 ; 4 uses
  %i.lk = icmp sgt i64 %i.lj, -1
  call void @llvm.assume(i1 %i.lk)
  %i.ll = add i64 %i.lj, %i.gd                    ; 2 uses
  %i.lm = icmp ult i64 %i.ll, %i.lj
  br i1 %i.lm, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i40.i.i.i.i.i, !prof !7

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i40.i.i.i.i.i: ; preds = %bb.dk
  %.val.i.i.i.i221.i = load i64, ptr %i.fa, align 8, !alias.scope !1384, !noalias !1385 ; 2 uses
  %.not.i41.i.i.i.i.i = icmp ne i64 %.val.i.i.i.i221.i, 0
  %.not57.i42.i.i.i.i.i = icmp ugt i64 %i.ll, %.val.i.i.i.i221.i
  %or.cond.i43.i.i.i.i.i = and i1 %.not.i41.i.i.i.i.i, %.not57.i42.i.i.i.i.i
  br i1 %or.cond.i43.i.i.i.i.i, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RNvMNtCsvKatKEpids_3gif6readerNtB2_11MemoryLimit11try_reserve.exit47.i.i.i.i.i

_RNvMNtCsvKatKEpids_3gif6readerNtB2_11MemoryLimit11try_reserve.exit47.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i40.i.i.i.i.i
  %i.ln = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fi, i64 noundef %i.lj, i64 noundef %i.gd, i64 noundef 1, i64 noundef 1)
          to label %.noexc71.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1379

.noexc71.i.i.i.i:                                 ; preds = %_RNvMNtCsvKatKEpids_3gif6readerNtB2_11MemoryLimit11try_reserve.exit47.i.i.i.i.i
  %i.lo = extractvalue { i64, i64 } %i.ln, 0
  %.not58.i44.i.i.i.i.i = icmp eq i64 %i.lo, -1
  br i1 %.not58.i44.i.i.i.i.i, label %bb.dl, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i

bb.dl:                                            ; preds = %.noexc71.i.i.i.i
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fi, i64 noundef %i.gd)
          to label %.noexc72.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1379

.noexc72.i.i.i.i:                                 ; preds = %bb.dl
  %i.lp = load i64, ptr %.sink.i.i.sroa.gep.i.i.i, align 8, !alias.scope !1394, !noalias !1385, !noundef !4 ; 3 uses
  %i.lq = icmp sgt i64 %i.lp, -1
  call void @llvm.assume(i1 %i.lq)
  %.not.i48.i.i.i.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not.i48.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit50.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %.noexc72.i.i.i.i
  %i.lr = load ptr, ptr %.sink85.i.i.sroa.gep.i.i.i, align 8, !alias.scope !1394, !noalias !1385, !nonnull !4, !noundef !4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ls, ptr nonnull readonly align 1 %i.gc, i64 %i.gd, i1 false), !noalias !1387
  %.pre.i49.i.i.i.i.i = load i64, ptr %.sink.i.i.sroa.gep.i.i.i, align 8, !alias.scope !1394, !noalias !1385
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit50.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit50.i.i.i.i.i: ; preds = %bb.dm, %.noexc72.i.i.i.i
  %i.lt = phi i64 [ %.pre.i49.i.i.i.i.i, %bb.dm ], [ %i.lp, %.noexc72.i.i.i.i ]
  %i.lu = add i64 %i.lt, %i.gd
  store i64 %i.lu, ptr %.sink.i.i.sroa.gep.i.i.i, align 8, !alias.scope !1394, !noalias !1385
  br label %bb.bj

bb.dn:                                            ; preds = %.body.i.i.i.i
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31, !noalias !1379
  unreachable

_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.bd, %bb.bc, %bb.az
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 8, !alias.scope !1395, !noalias !1396 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !1395, !noalias !1396 ; 5 uses
  %.sroa.9.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.9.0.copyload.i.i to i8
  %.sroa.9.sroa.9.0.extract.shift.i.i = lshr i64 %.sroa.9.0.copyload.i.i, 8
  %.sroa.9.sroa.9.0.extract.trunc.i.i = trunc i64 %.sroa.9.sroa.9.0.extract.shift.i.i to i8
  %.sroa.9.sroa.10.0.extract.shift.i.i = lshr i64 %.sroa.9.0.copyload.i.i, 16
  %.sroa.9.sroa.10.0.extract.trunc.i.i = trunc i64 %.sroa.9.sroa.10.0.extract.shift.i.i to i8
  %.sroa.9.sroa.11.0.extract.shift.i.i = lshr i64 %.sroa.9.0.copyload.i.i, 24
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.17.0.copyload.i.i = load ptr, ptr %.sroa.17.0..sroa_idx.i.i, align 8, !alias.scope !1395, !noalias !1396 ; 2 uses
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.18.0.copyload.i.i = load i64, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !alias.scope !1395, !noalias !1396 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %.sroa.19.i.i, ptr noundef nonnull align 8 dereferenceable(424) %i.fk, i64 424, i1 false), !alias.scope !1395, !noalias !1396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1369
  %i.lw = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.lw, label %bb.ek, label %bb.el

bb.do:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.639.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !1365
  invoke void @_RNvMNtNtNtCsa5QsYiPB8Gl_5image6codecs4webp7decoderINtB2_11WebPDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB8_(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.ao, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.an)
          to label %.noexc68 unwind label %bb.f

.noexc68:                                         ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1347
  %i.lx = load i64, ptr %i.ao, align 8, !range !16, !noalias !1347, !noundef !4 ; 2 uses
  %i.ly = icmp eq i64 %i.lx, -2
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.639.i, ptr noundef nonnull align 8 dereferenceable(64) %i.lz, i64 64, i1 false), !noalias !1347
  br i1 %i.ly, label %bb.ep, label %bb.eq

bb.dp:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.691.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !1365
  invoke void @_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newBb_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %.noexc69 unwind label %bb.f

.noexc69:                                         ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1347
  %i.ma = load i64, ptr %i.t, align 8, !range !16, !noalias !1347, !noundef !4 ; 2 uses
  %i.mb = icmp eq i64 %i.ma, -2
  %i.mc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.691.i, ptr noundef nonnull align 8 dereferenceable(64) %i.mc, i64 64, i1 false), !noalias !1347
  br i1 %i.mb, label %bb.eu, label %bb.ev

bb.dq:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.645.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !1365
  invoke void @_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB2_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB6_(ptr noalias nofree noundef nonnull sret([512 x i8]) align 8 captures(none) dereferenceable(512) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ak)
          to label %.noexc70 unwind label %bb.f

.noexc70:                                         ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1347
  %i.md = load i64, ptr %i.al, align 8, !range !1397, !noalias !1347, !noundef !4 ; 2 uses
  %i.me = icmp eq i64 %i.md, -1
  %i.mf = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.645.i, ptr noundef nonnull align 8 dereferenceable(64) %i.mf, i64 64, i1 false), !noalias !1347
  br i1 %i.me, label %bb.ez, label %bb.fa

bb.dr:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.651.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !1365
  invoke void @_RNvMs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoderINtB5_10TgaDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newBb_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ah)
          to label %.noexc71 unwind label %bb.f

.noexc71:                                         ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1347
  %i.mg = load i64, ptr %i.ai, align 8, !range !16, !noalias !1347, !noundef !4 ; 2 uses
  %i.mh = icmp eq i64 %i.mg, -2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.651.i, ptr noundef nonnull align 8 dereferenceable(64) %i.mi, i64 64, i1 false), !noalias !1347
  br i1 %i.mh, label %bb.fe, label %bb.ff

bb.ds:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !1365
  invoke void @_RNvMs4_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsINtB5_10DdsDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB9_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.af)
          to label %.noexc72 unwind label %bb.f

.noexc72:                                         ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1347
  %i.mj = load i8, ptr %i.n, align 8, !range !40, !noalias !1347, !noundef !4 ; 2 uses
  %.not196.i = icmp eq i8 %i.mj, -1
  br i1 %.not196.i, label %bb.fk, label %bb.fj

bb.dt:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.667.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1347
  invoke void @_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newBb_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bh)
          to label %.noexc73 unwind label %bb.f

.noexc73:                                         ; preds = %bb.dt
  %i.mk = load i64, ptr %i.ae, align 8, !range !16, !noalias !1347, !noundef !4 ; 2 uses
  %i.ml = icmp eq i64 %i.mk, -2
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.667.i, ptr noundef nonnull align 8 dereferenceable(64) %i.mm, i64 64, i1 false), !noalias !1347
  br i1 %i.ml, label %bb.fl, label %bb.fm

bb.du:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.673.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !1365
  invoke void @_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newBb_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab)
          to label %.noexc74 unwind label %bb.f

.noexc74:                                         ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1347
  %i.mn = load i64, ptr %i.ac, align 8, !range !1398, !noalias !1347, !noundef !4 ; 2 uses
  %i.mo = icmp eq i64 %i.mn, -3
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.673.i, ptr noundef nonnull align 8 dereferenceable(64) %i.mp, i64 64, i1 false), !noalias !1347
  br i1 %i.mo, label %bb.fq, label %bb.fr

bb.dv:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.679.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !1365
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7encoder18written_pixel_info:bb.a
  %i.e = phi <2 x i32> [ <i32 40, i32 1>, %bb.f ], [ <i32 40, i32 1>, %bb.i ], [ <i32 108, i32 4>, %bb.e ], [ <i32 40, i32 3>, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x i32> %i.e, ptr %i.f, align 4
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.6.0, ptr %.sroa.557.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 8, ptr %i.g, align 1
  store i8 0, ptr %i.a, align 8
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newReEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.672.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 40)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 5, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.h = trunc nuw i64 %.76 to i32
  br label %bb.g

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs4jpeg7encoder17build_jfif_header(ptr noalias nofree noundef align 8 dereferenceable(24) initializes((16, 24)) %0, i48 %1) unnamed_addr #0 {
bb.a:
  %.sroa.01.0.extract.trunc = trunc i48 %1 to i16
  %.sroa.01.2.extract.shift = lshr i48 %1, 16
  %.sroa.01.2.extract.trunc = trunc i48 %.sroa.01.2.extract.shift to i16
  %.sroa.01.4.extract.shift = lshr i48 %1, 32
  %.sroa.01.4.extract.trunc = trunc i48 %.sroa.01.4.extract.shift to i8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  store i64 0, ptr %i.a, align 8
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4)
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1597, !noundef !4 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1597, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  store i32 1179207242, ptr %i.f, align 1
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !1597
  %i.g = add i64 %.pre.i, 4
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !1597
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4)
  %i.h = load i64, ptr %i.a, align 8, !alias.scope !1598, !noundef !4 ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = load ptr, ptr %i.d, align 8, !alias.scope !1598, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h ; 4 uses
  store i8 0, ptr %i.k, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 2, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %.sroa.01.4.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 1
  %.pre.i2 = load i64, ptr %i.a, align 8, !alias.scope !1598
  %i.l = add i64 %.pre.i2, 4
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !1598
  %i.m = tail call i16 @llvm.bswap.i16(i16 %.sroa.01.0.extract.trunc)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %i.n = load i64, ptr %i.a, align 8, !alias.scope !1599, !noundef !4 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = load ptr, ptr %i.d, align 8, !alias.scope !1599, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i16 %i.m, ptr %i.q, align 1
  %.pre.i3 = load i64, ptr %i.a, align 8, !alias.scope !1599
  %i.r = add i64 %.pre.i3, 2
  store i64 %i.r, ptr %i.a, align 8, !alias.scope !1599
  %i.s = tail call i16 @llvm.bswap.i16(i16 %.sroa.01.2.extract.trunc)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %i.t = load i64, ptr %i.a, align 8, !alias.scope !1600, !noundef !4 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %i.d, align 8, !alias.scope !1600, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i16 %i.s, ptr %i.w, align 1
  %.pre.i4 = load i64, ptr %i.a, align 8, !alias.scope !1600
  %i.x = add i64 %.pre.i4, 2
  store i64 %i.x, ptr %i.a, align 8, !alias.scope !1600
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %i.y = load i64, ptr %i.a, align 8, !alias.scope !1601, !noundef !4 ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load ptr, ptr %i.d, align 8, !alias.scope !1601, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i16 0, ptr %i.ab, align 1
  %.pre.i5 = load i64, ptr %i.a, align 8, !alias.scope !1601
  %i.ac = add i64 %.pre.i5, 2
  store i64 %i.ac, ptr %i.a, align 8, !alias.scope !1601
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs4jpeg7encoder17build_scan_header(ptr noalias nofree noundef align 8 dereferenceable(24) initializes((16, 24)) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %1, i64 noundef range(i64 0, 768614336404564651) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store i64 0, ptr %i.a, align 8
  %i.b = trunc i64 %2 to i8
  %i.c = load i64, ptr %0, align 8, !range !13, !alias.scope !1608, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #32
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1608, !nonnull !4, !noundef !4
  store i8 %i.b, ptr %i.f, align 1
  store i64 1, ptr %i.a, align 8, !alias.scope !1608
  %.idx = mul nuw nsw i64 %2, 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.i, %.lr.ph ], [ %1, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 4
  %i.k = load i8, ptr %i.j, align 4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.m = load i8, ptr %i.l, align 4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 9
  %i.o = load i8, ptr %i.n, align 1, !noundef !4
  %i.p = shl i8 %i.m, 4
  %i.q = or i8 %i.p, %i.o
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %i.r = load i64, ptr %i.a, align 8, !alias.scope !1609, !noundef !4 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = load ptr, ptr %i.e, align 8, !alias.scope !1609, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 2 uses
  store i8 %i.k, ptr %i.u, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.q, ptr %.sroa.4.0..sroa_idx, align 1
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !1609
  %i.v = add i64 %.pre.i, 2
  store i64 %i.v, ptr %i.a, align 8, !alias.scope !1609
  %i.w = icmp eq ptr %i.i, %i.g
  br i1 %i.w, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 3)
  %i.x = load i64, ptr %i.a, align 8, !alias.scope !1610, !noundef !4 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load ptr, ptr %i.e, align 8, !alias.scope !1610, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aa, ptr noundef nonnull align 1 dereferenceable(3) @73, i64 3, i1 false)
  %.pre.i2 = load i64, ptr %i.a, align 8, !alias.scope !1610
  %i.ab = add i64 %.pre.i2, 3
  store i64 %i.ab, ptr %i.a, align 8, !alias.scope !1610
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs4jpeg7encoder18build_frame_header(ptr noalias nofree noundef align 8 dereferenceable(24) initializes((16, 24)) %0, i8 noundef %1, i16 noundef %2, i16 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %4, i64 noundef range(i64 0, 768614336404564651) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store i64 0, ptr %i.a, align 8
  %i.b = load i64, ptr %0, align 8, !range !13, !alias.scope !1621, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #32
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1621, !nonnull !4, !noundef !4
  store i8 %1, ptr %i.e, align 1
  store i64 1, ptr %i.a, align 8, !alias.scope !1621
  %i.f = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %i.g = load i64, ptr %i.a, align 8, !alias.scope !1622, !noundef !4 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !1622, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i16 %i.f, ptr %i.j, align 1
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !1622
  %i.k = add i64 %.pre.i, 2
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !1622
  %i.l = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %i.m = load i64, ptr %i.a, align 8, !alias.scope !1623, !noundef !4 ; 2 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = load ptr, ptr %i.d, align 8, !alias.scope !1623, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i16 %i.l, ptr %i.p, align 1
  %.pre.i2 = load i64, ptr %i.a, align 8, !alias.scope !1623 ; 2 uses
  %i.q = add i64 %.pre.i2, 2                      ; 3 uses
  store i64 %i.q, ptr %i.a, align 8, !alias.scope !1623
  %i.r = trunc i64 %5 to i8
  %i.s = load i64, ptr %0, align 8, !range !13, !alias.scope !1624, !noundef !4
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit3

bb.c:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #32
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit3

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit3: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit, %bb.c
  %i.u = load ptr, ptr %i.d, align 8, !alias.scope !1624, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  store i8 %i.r, ptr %i.v, align 1
  %i.w = add i64 %.pre.i2, 3
  store i64 %i.w, ptr %i.a, align 8, !alias.scope !1624
  %.idx = mul nuw nsw i64 %5, 12
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %i.y = icmp eq i64 %5, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit3, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.z, %.lr.ph ], [ %4, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit3 ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 12 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 6
  %i.af = load i8, ptr %i.ae, align 2, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 7
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !4
  %i.ai = shl i8 %i.ad, 4
  %i.aj = or i8 %i.ai, %i.af
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 3)
  %i.ak = load i64, ptr %i.a, align 8, !alias.scope !1625, !noundef !4 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !1625, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak ; 3 uses
  store i8 %i.ab, ptr %i.an, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %i.aj, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i8 %i.ah, ptr %.sroa.5.0..sroa_idx, align 1
  %.pre.i4 = load i64, ptr %i.a, align 8, !alias.scope !1625
  %i.ao = add i64 %.pre.i4, 3
  store i64 %i.ao, ptr %i.a, align 8, !alias.scope !1625
  %i.ap = icmp eq ptr %i.z, %i.x
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit3
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs4jpeg7encoder21build_huffman_segment(ptr noalias nofree noundef align 8 dereferenceable(24) initializes((16, 24)) %0, i8 noundef %1, i8 noundef %2, ptr noalias nofree noundef readonly captures(none) dereferenceable(16) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store i64 0, ptr %i.c, align 8
  %i.d = shl i8 %1, 4
  %i.e = or i8 %i.d, %2
  %i.f = load i64, ptr %0, align 8, !range !13, !alias.scope !1632, !noundef !4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #32
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1632, !nonnull !4, !noundef !4
  store i8 %i.e, ptr %i.i, align 1
  store i64 1, ptr %i.c, align 8, !alias.scope !1632
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16)
  %i.j = load i64, ptr %i.c, align 8, !alias.scope !1633, !noundef !4 ; 2 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !1633, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(16) %3, i64 16, i1 false)
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !1633
  %i.n = add i64 %.pre.i, 16
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !1633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i = load i8, ptr %3, align 1, !noundef !4
  %i.o = zext i8 %.val.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.val.i.1 = load i8, ptr %i.p, align 1, !noundef !4
  %i.q = zext i8 %.val.i.1 to i64
  %i.r = add nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.val.i.2 = load i8, ptr %i.s, align 1, !noundef !4
  %i.t = zext i8 %.val.i.2 to i64
  %i.u = add nuw nsw i64 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.val.i.3 = load i8, ptr %i.v, align 1, !noundef !4
  %i.w = zext i8 %.val.i.3 to i64
  %i.x = add nuw nsw i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val.i.4 = load i8, ptr %i.y, align 1, !noundef !4
  %i.z = zext i8 %.val.i.4 to i64
  %i.aa = add nuw nsw i64 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.val.i.5 = load i8, ptr %i.ab, align 1, !noundef !4
  %i.ac = zext i8 %.val.i.5 to i64
  %i.ad = add nuw nsw i64 %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.val.i.6 = load i8, ptr %i.ae, align 1, !noundef !4
  %i.af = zext i8 %.val.i.6 to i64
  %i.ag = add nuw nsw i64 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 7
  %.val.i.7 = load i8, ptr %i.ah, align 1, !noundef !4
  %i.ai = zext i8 %.val.i.7 to i64
  %i.aj = add nuw nsw i64 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i.8 = load i8, ptr %i.ak, align 1, !noundef !4
  %i.al = zext i8 %.val.i.8 to i64
  %i.am = add nuw nsw i64 %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 9
  %.val.i.9 = load i8, ptr %i.an, align 1, !noundef !4
  %i.ao = zext i8 %.val.i.9 to i64
  %i.ap = add nuw nsw i64 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.val.i.10 = load i8, ptr %i.aq, align 1, !noundef !4
  %i.ar = zext i8 %.val.i.10 to i64
  %i.as = add nuw nsw i64 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 11
  %.val.i.11 = load i8, ptr %i.at, align 1, !noundef !4
  %i.au = zext i8 %.val.i.11 to i64
  %i.av = add nuw nsw i64 %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.val.i.12 = load i8, ptr %i.aw, align 1, !noundef !4
  %i.ax = zext i8 %.val.i.12 to i64
  %i.ay = add nuw nsw i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 13
  %.val.i.13 = load i8, ptr %i.az, align 1, !noundef !4
  %i.ba = zext i8 %.val.i.13 to i64
  %i.bb = add nuw nsw i64 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 14
  %.val.i.14 = load i8, ptr %i.bc, align 1, !noundef !4
  %i.bd = zext i8 %.val.i.14 to i64
  %i.be = add nuw nsw i64 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 15
  %.val.i.15 = load i8, ptr %i.bf, align 1, !noundef !4
  %i.bg = zext i8 %.val.i.15 to i64
  %i.bh = add nuw nsw i64 %i.be, %i.bg            ; 2 uses
  store i64 %i.bh, ptr %i.b, align 8
  store i64 %5, ptr %i.a, align 8
  %i.bi = icmp eq i64 %i.bh, %5
  br i1 %i.bi, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #34
  unreachable

bb.d:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5)
  %i.bj = load i64, ptr %i.c, align 8, !alias.scope !1634, !noundef !4 ; 3 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  tail call void @llvm.assume(i1 %i.bk)
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %i.h, align 8, !alias.scope !1634, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %4, i64 %5, i1 false)
  %.pre.i1 = load i64, ptr %i.c, align 8, !alias.scope !1634
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %bb.e
  %i.bn = phi i64 [ %.pre.i1, %bb.e ], [ %i.bj, %bb.d ]
  %i.bo = add i64 %i.bn, %5
  store i64 %i.bo, ptr %i.c, align 8, !alias.scope !1634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs4jpeg7encoder26build_quantization_segment(ptr noalias nofree noundef align 8 dereferenceable(24) initializes((16, 24)) %0, i8 noundef %1, i8 noundef %2, ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.a, align 8
  %i.b = icmp eq i8 %1, 8
  %i.c = or i8 %2, 16
  %.sroa.0.0 = select i1 %i.b, i8 %2, i8 %i.c
  %i.d = load i64, ptr %0, align 8, !range !13, !alias.scope !1639, !noundef !4
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #32
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1639, !nonnull !4, !noundef !4
  store i8 %.sroa.0.0, ptr %i.g, align 1
  store i64 1, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit3
  ret void

bb.d:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit3
  %i.h = phi i64 [ 1, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit ], [ %i.q, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit3 ] ; 3 uses
  %.sroa.01.0.idx4 = phi i64 [ 0, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit ], [ %.sroa.01.0.add, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit3 ] ; 2 uses
  %.sroa.01.0.ptr = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs4jpeg7encoder8UNZIGZAG, i64 %.sroa.01.0.idx4
  %i.i = load i8, ptr %.sroa.01.0.ptr, align 1, !noundef !4
end_hunk_1
