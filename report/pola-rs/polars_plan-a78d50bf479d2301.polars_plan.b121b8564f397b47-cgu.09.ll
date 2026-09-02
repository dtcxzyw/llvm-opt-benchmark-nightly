Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.09?download=true
inline.NumInlined: 13234
inline.NumDeleted: 6507
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1S_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
.thread.i:                                        ; preds = %bb.u
  %i.ca = and i64 %.sroa.082.0.copyload.i, 15, !dbg !87046
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !87046
  br i1 %i.cb, label %bb.z, label %bb.x, !dbg !87050

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBc_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB25_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #33, !dbg !87051, !noalias !86942
  %i.cc = load <2 x i64>, ptr %i.n, align 16, !dbg !87055, !noalias !86919
  store <2 x i64> %i.cc, ptr %i.ak, align 16, !dbg !87056, !alias.scope !86914, !noalias !86929
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !87056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bc, i64 56, i1 false), !dbg !87056, !noalias !86929
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !87063

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !87065, !noalias !86929
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !87066

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.r) #29
          to label %common.resume unwind label %bb.aq, !dbg !87068, !noalias !86914

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !87071
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !87072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !87081, !noalias !86919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !87082, !noalias !86919
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !dbg !87083, !alias.scope !87087, !noalias !86919
  call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.q, i64 noundef %.sroa.0.0.i.i), !dbg !87090, !noalias !86942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !87093, !noalias !86919
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !87094
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !87094, !noalias !86919, !nonnull !13, !noundef !13 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !87112
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !87112, !noalias !86919, !noundef !13
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !87113   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !87122, !noalias !86919
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !87126, !noalias !86914

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.m, align 16, !dbg !87127, !range !70618, !noalias !86919, !noundef !13 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !87127
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !87130
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !87130, !noalias !86919 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !87131

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !87132
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !87133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !87133, !noalias !86919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !87132, !noalias !86919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !87137, !noalias !86919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !87133, !noalias !86919
  store i8 %i.ck, ptr %i.k, align 16, !dbg !87133, !noalias !86919
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !87133
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !87133, !noalias !86919
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBc_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB25_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !87133, !noalias !86914

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !87137, !noalias !86919
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !87138

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !87141, !noalias !86919
  %i.cn = load i64, ptr %i.bf, align 8, !dbg !87143, !alias.scope !86917, !noalias !86936, !noundef !13 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !87150
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !87150, !prof !17871

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !87156, !noalias !86919
  %i.cp = load i64, ptr %i.bf, align 8, !dbg !87157, !alias.scope !86917, !noalias !86936, !noundef !13 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !87163
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !87163, !prof !17871

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bt, align 8, !dbg !87167, !alias.scope !86917, !noalias !86936, !nonnull !13, !noundef !13
  %i.cs = add i64 %i.cn, -8, !dbg !87176
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !87177
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !87141, !noalias !86914

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.p, align 8, !dbg !87183, !range !74037, !noalias !86919, !noundef !13
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !87183
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !87186

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !87187, !noalias !86929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !87188, !noalias !86919
  br label %bb.ak, !dbg !87189

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !87188, !noalias !86919
  br label %bb.aj, !dbg !87191

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !87192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !dbg !87193, !noalias !86929
  store i64 18, ptr %i.ak, align 16, !dbg !87192, !alias.scope !86914, !noalias !86929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !87068, !noalias !86919
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !87194

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.r), !dbg !87068, !noalias !86914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !87068, !noalias !86919
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !87195

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bt, align 8, !dbg !87197, !alias.scope !86917, !noalias !86936, !nonnull !13, !noundef !13
  %i.cx = add i64 %i.cp, -8, !dbg !87206
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !87207
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !87156, !noalias !86914

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #30
          to label %.cont.i unwind label %bb.y, !dbg !87212, !noalias !86914

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.o, align 8, !dbg !87216, !range !74037, !noalias !86919, !noundef !13
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !87216
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !87218

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !87219, !noalias !86929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !87220, !noalias !86919
  br label %bb.ak, !dbg !87189

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !87220, !noalias !86919
  br label %bb.aj, !dbg !87221

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !87222, !noalias !86919
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !87223, !noalias !86919
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !87223
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !87223, !noalias !86919
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !87223
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 9, !dbg !87224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !87223, !noalias !86929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !87230, !noalias !86919
  store i64 %.sroa.050.0.copyload.i, ptr %i.ak, align 16, !dbg !87224, !alias.scope !86914, !noalias !86929
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !87224
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !87224, !alias.scope !86914, !noalias !86929
  br label %bb.ak, !dbg !87231

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !87233, !noalias !86914
  unreachable, !dbg !87233

common.resume:                                    ; preds = %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %i.fh, %bb.bs ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !87234

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8, !dbg !87235 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !87244
  %i.df = and i64 %i.de, 7, !dbg !87254
  %i.dg = icmp eq i64 %i.df, 0, !dbg !87255
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !87255

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !87256, !noalias !86942
  unreachable, !dbg !87256

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.au, -8, !dbg !87258
  %i.di = lshr exact i64 %i.dh, 4, !dbg !87259
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !87260
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #33, !dbg !87261, !noalias !86955
  store i64 18, ptr %i.ak, align 16, !dbg !87260, !alias.scope !86914, !noalias !86929
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !87195

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !87194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !87194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !87194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !87194
  %i.dk = load i64, ptr %i.ak, align 16, !dbg !87266, !range !74037, !noundef !13 ; 2 uses
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !87266
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !87268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false), !dbg !87268
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !87269

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !87270
  call void @llvm.experimental.noalias.scope.decl(metadata !87271), !dbg !87270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !87274
  %i.dm = shl nuw i64 %2, 4, !dbg !87274          ; 3 uses
  %i.dn = icmp ugt i64 %2, 1152921504606846975, !dbg !87274
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB25_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !87283, !prof !17871

bb.av:                                            ; preds = %bb.au
  %i.do = icmp ugt i64 %i.dm, %i.au, !dbg !87287
  br i1 %i.do, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB25_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !87287, !prof !18008

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !87289, !noalias !87290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !87292, !noalias !87290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !87293, !alias.scope !87295, !noalias !87290
  call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.f, i64 noundef %2), !dbg !87298, !noalias !87271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !87301, !noalias !87290
  br i1 %5, label %bb.bu, label %bb.ax, !dbg !87302

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB25_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dm, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !87304, !noalias !87290
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !87304
  store i64 %2, ptr %i.dp, align 8, !dbg !87304, !noalias !87290
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !87304
  store ptr @38, ptr %i.dq, align 16, !dbg !87304, !noalias !87290
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !87304
  store i64 43, ptr %i.dr, align 8, !dbg !87304, !noalias !87290
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !87304
  store i64 %.sroa.03.038.i, ptr %i.ds, align 16, !dbg !87304, !noalias !87290
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !87304
  store i64 %i.au, ptr %i.dt, align 8, !dbg !87304, !noalias !87290
  store i64 26, ptr %i.i, align 16, !dbg !87304, !noalias !87290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !87305, !noalias !87290
  store ptr %i.i, ptr %i.h, align 8, !dbg !87305, !noalias !87290
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !87305
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !87305, !noalias !87290
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !87308, !noalias !87314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !87317, !noalias !87290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !87317, !noalias !87290
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !87317
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !87318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !87322
  br label %bb.cb, !dbg !87323

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !87324
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !87324
  %.val16.i = load ptr, ptr %i.du, align 8, !dbg !87324, !noalias !87290 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !87324
  %.val17.i = load i64, ptr %i.dv, align 8, !dbg !87324, !noalias !87290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !87325, !noalias !87329
  store i64 0, ptr %i.d, align 8, !dbg !87333, !noalias !87329
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !87333 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dw, align 8, !dbg !87333, !noalias !87329
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !87333 ; 3 uses
  store i64 0, ptr %i.dx, align 8, !dbg !87333, !noalias !87329
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dm, i8 noundef 0)
          to label %bb.az unwind label %.loopexit.split-lp.i.i, !dbg !87336, !noalias !87338

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp.i.i:                           ; preds = %bb.bf, %bb.bc, %bb.bb, %bb.az, %bb.ax
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.bm, !dbg !87339, !noalias !87340

bb.az:                                            ; preds = %bb.ax
  %i.dy = load ptr, ptr %i.dw, align 8, !dbg !87341, !noalias !87329, !nonnull !13, !noundef !13
  %i.dz = load i64, ptr %i.dx, align 8, !dbg !87354, !noalias !87329, !noundef !13
  %i.ea = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.dy, i64 noundef %i.dz)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !87355, !noalias !87340 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %.not.i.i = icmp eq ptr %i.ea, null, !dbg !87356
  br i1 %.not.i.i, label %bb.bc, label %bb.bb, !dbg !87359

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !87360, !noalias !87329
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.ea)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !87360, !noalias !87340

bb.bc:                                            ; preds = %bb.ba
  %i.eb = load ptr, ptr %i.dw, align 8, !dbg !87367, !noalias !87329, !nonnull !13, !noundef !13 ; 2 uses
  %i.ec = load i64, ptr %i.dx, align 8, !dbg !87379, !noalias !87329, !noundef !13 ; 2 uses
  %i.ed = and i64 %i.ec, 15, !dbg !87380
  %i.ee = and i64 %i.ec, -16, !dbg !87383         ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ee, !dbg !87384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !87387, !noalias !87329
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !87389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !87398, !noalias !87401
  store ptr %i.eb, ptr %i.a, align 8, !dbg !87405, !alias.scope !87407, !noalias !87411
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !87405
  store i64 %i.ee, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !87405, !alias.scope !87407, !noalias !87411
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !87405
  store ptr %i.ef, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !87405, !alias.scope !87407, !noalias !87411
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !87405
  store i64 %i.ed, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !87405, !alias.scope !87407, !noalias !87411
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !87405
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !87405, !alias.scope !87407, !noalias !87411
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !87412, !noalias !87340

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !87415, !noalias !87401
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ej = load i64, ptr %i.eh, align 8, !dbg !87416, !alias.scope !87427, !noalias !87434, !noundef !13 ; 2 uses
  %i.ek = load i64, ptr %i.ei, align 8, !dbg !87438, !alias.scope !87427, !noalias !87434, !noundef !13
  %i.el = icmp ult i64 %i.ej, %i.ek, !dbg !87416
  br i1 %i.el, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !87416

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.be, !dbg !87416

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.en = phi i64 [ %i.ej, %.lr.ph.i.i.i ], [ %i.ex, %bb.bg ] ; 3 uses
  %i.eo = add nuw i64 %i.en, 1, !dbg !87439
  store i64 %i.eo, ptr %i.eh, align 8, !dbg !87439, !alias.scope !87427, !noalias !87434
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !87441, !alias.scope !87427, !noalias !87434, !nonnull !13, !noundef !13
  %i.ep = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.em, i64 noundef %i.en)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !87442, !noalias !87340 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.be
  %i.eq = extractvalue { ptr, i64 } %i.ep, 1, !dbg !87443
  %i.er = icmp eq i64 %i.eq, 16, !dbg !87444
  br i1 %i.er, label %bb.bg, label %bb.bf, !dbg !87444

bb.bf:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !87458, !noalias !87340

.noexc6.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.es = extractvalue { ptr, i64 } %i.ep, 0, !dbg !87443 ; 4 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.en, !dbg !87459 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.es, align 1, !dbg !87464, !alias.scope !87467, !noalias !87471
  %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 4, !dbg !87464
  %.sroa.4.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i.i, align 1, !dbg !87464, !alias.scope !87467, !noalias !87471
  %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !87464
  %.sroa.4.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i.i, align 1, !dbg !87464, !alias.scope !87467, !noalias !87471
  %i.eu = call i32 @llvm.bswap.i32(i32 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !87478
  %i.ev = call i32 @llvm.bswap.i32(i32 %.sroa.4.sroa.4.0.copyload.i.i.i.i.i), !dbg !87496
  %i.ew = call i64 @llvm.bswap.i64(i64 %.sroa.4.sroa.5.0.copyload.i.i.i.i.i), !dbg !87504
  store i32 %i.eu, ptr %i.et, align 8, !dbg !87517, !noalias !87471
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 4, !dbg !87517
  store i32 %i.ev, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 4, !dbg !87517, !noalias !87471
  %.sroa.5.0..sroa_idx.i.i3.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8, !dbg !87517
  store i64 %i.ew, ptr %.sroa.5.0..sroa_idx.i.i3.i.i.i, align 8, !dbg !87517, !noalias !87471
  %i.ex = load i64, ptr %i.eh, align 8, !dbg !87416, !alias.scope !87427, !noalias !87434, !noundef !13 ; 2 uses
  %i.ey = load i64, ptr %i.ei, align 8, !dbg !87438, !alias.scope !87427, !noalias !87434, !noundef !13
  %i.ez = icmp ult i64 %i.ex, %i.ey, !dbg !87416
  br i1 %i.ez, label %bb.be, label %.loopexit12.i.i, !dbg !87416

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !87518, !noalias !87329
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bh, !dbg !87519, !noalias !87340

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bi, !dbg !87521, !noalias !87340

bb.bi:                                            ; preds = %bb.bh
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !87519, !noalias !87340
  unreachable, !dbg !87519

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !87523 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bo unwind label %bb.bn, !dbg !87524, !noalias !87271

bb.bj:                                            ; preds = %bb.bb
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !87527, !noalias !87528
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !87527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !87527, !noalias !87528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !87529, !noalias !87329
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bk, !dbg !87530, !noalias !87340

bb.bk:                                            ; preds = %bb.bj
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bl, !dbg !87532, !noalias !87340

bb.bl:                                            ; preds = %bb.bk
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1P_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
.thread.i:                                        ; preds = %bb.u
  %i.ca = and i64 %.sroa.082.0.copyload.i, 15, !dbg !87922
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !87922
  br i1 %i.cb, label %bb.z, label %bb.x, !dbg !87926

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBc_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB22_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #33, !dbg !87927, !noalias !87818
  %i.cc = load <2 x i64>, ptr %i.n, align 16, !dbg !87931, !noalias !87795
  store <2 x i64> %i.cc, ptr %i.ak, align 16, !dbg !87932, !alias.scope !87790, !noalias !87805
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !87932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bc, i64 56, i1 false), !dbg !87932, !noalias !87805
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !87939

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !87941, !noalias !87805
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !87942

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.r) #29
          to label %common.resume unwind label %bb.aq, !dbg !87944, !noalias !87790

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !87947
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !87948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !87957, !noalias !87795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !87958, !noalias !87795
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !dbg !87959, !alias.scope !87967, !noalias !87795
  call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.q, i64 noundef %.sroa.0.0.i.i), !dbg !87970, !noalias !87818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !87973, !noalias !87795
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !87974
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !87974, !noalias !87795, !nonnull !13, !noundef !13 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !87992
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !87992, !noalias !87795, !noundef !13
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !87993   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !88002, !noalias !87795
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !88006, !noalias !87790

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.m, align 16, !dbg !88007, !range !70618, !noalias !87795, !noundef !13 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !88007
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !88010
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !88010, !noalias !87795 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !88011

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !88012
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !88013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !88013, !noalias !87795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !88012, !noalias !87795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !88017, !noalias !87795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !88013, !noalias !87795
  store i8 %i.ck, ptr %i.k, align 16, !dbg !88013, !noalias !87795
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !88013
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !88013, !noalias !87795
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBc_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB22_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !88013, !noalias !87790

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !88017, !noalias !87795
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !88018

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !88021, !noalias !87795
  %i.cn = load i64, ptr %i.bf, align 8, !dbg !88023, !alias.scope !87793, !noalias !87812, !noundef !13 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !88030
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !88030, !prof !17871

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !88036, !noalias !87795
  %i.cp = load i64, ptr %i.bf, align 8, !dbg !88037, !alias.scope !87793, !noalias !87812, !noundef !13 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !88043
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !88043, !prof !17871

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bt, align 8, !dbg !88047, !alias.scope !87793, !noalias !87812, !nonnull !13, !noundef !13
  %i.cs = add i64 %i.cn, -8, !dbg !88056
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !88057
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !88021, !noalias !87790

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.p, align 8, !dbg !88063, !range !74037, !noalias !87795, !noundef !13
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !88063
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !88066

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !88067, !noalias !87805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !88068, !noalias !87795
  br label %bb.ak, !dbg !88069

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !88068, !noalias !87795
  br label %bb.aj, !dbg !88071

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !88072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !dbg !88073, !noalias !87805
  store i64 18, ptr %i.ak, align 16, !dbg !88072, !alias.scope !87790, !noalias !87805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !87944, !noalias !87795
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !88074

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.r), !dbg !87944, !noalias !87790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !87944, !noalias !87795
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !88075

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bt, align 8, !dbg !88077, !alias.scope !87793, !noalias !87812, !nonnull !13, !noundef !13
  %i.cx = add i64 %i.cp, -8, !dbg !88086
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !88087
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !88036, !noalias !87790

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #30
          to label %.cont.i unwind label %bb.y, !dbg !88092, !noalias !87790

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.o, align 8, !dbg !88096, !range !74037, !noalias !87795, !noundef !13
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !88096
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !88098

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !88099, !noalias !87805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !88100, !noalias !87795
  br label %bb.ak, !dbg !88069

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !88100, !noalias !87795
  br label %bb.aj, !dbg !88101

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !88102, !noalias !87795
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !88103, !noalias !87795
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !88103
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !88103, !noalias !87795
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !88103
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 9, !dbg !88104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !88103, !noalias !87805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !88110, !noalias !87795
  store i64 %.sroa.050.0.copyload.i, ptr %i.ak, align 16, !dbg !88104, !alias.scope !87790, !noalias !87805
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !88104
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !88104, !alias.scope !87790, !noalias !87805
  br label %bb.ak, !dbg !88111

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !88113, !noalias !87790
  unreachable, !dbg !88113

common.resume:                                    ; preds = %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %i.ff, %bb.bs ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !88114

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8, !dbg !88115 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !88124
  %i.df = and i64 %i.de, 3, !dbg !88134
  %i.dg = icmp eq i64 %i.df, 0, !dbg !88135
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !88135

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !88136, !noalias !87818
  unreachable, !dbg !88136

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.au, -8, !dbg !88138
  %i.di = lshr exact i64 %i.dh, 4, !dbg !88139
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !88140
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #33, !dbg !88141, !noalias !87831
  store i64 18, ptr %i.ak, align 16, !dbg !88140, !alias.scope !87790, !noalias !87805
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !88075

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !88074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !88074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !88074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !88074
  %i.dk = load i64, ptr %i.ak, align 16, !dbg !88146, !range !74037, !noundef !13 ; 2 uses
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !88146
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !88148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false), !dbg !88148
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !88149

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !88150
  call void @llvm.experimental.noalias.scope.decl(metadata !88151), !dbg !88150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !88154
  %i.dm = shl nuw i64 %2, 4, !dbg !88154          ; 3 uses
  %i.dn = icmp ugt i64 %2, 1152921504606846975, !dbg !88154
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB22_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !88163, !prof !17871

bb.av:                                            ; preds = %bb.au
  %i.do = icmp ugt i64 %i.dm, %i.au, !dbg !88167
  br i1 %i.do, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB22_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !88167, !prof !18008

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !88169, !noalias !88170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !88172, !noalias !88170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !88173, !alias.scope !88175, !noalias !88170
  call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.f, i64 noundef %2), !dbg !88178, !noalias !88151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !88181, !noalias !88170
  br i1 %5, label %bb.bu, label %bb.ax, !dbg !88182

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB22_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dm, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !88184, !noalias !88170
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !88184
  store i64 %2, ptr %i.dp, align 8, !dbg !88184, !noalias !88170
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !88184
  store ptr @39, ptr %i.dq, align 16, !dbg !88184, !noalias !88170
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !88184
  store i64 40, ptr %i.dr, align 8, !dbg !88184, !noalias !88170
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !88184
  store i64 %.sroa.03.038.i, ptr %i.ds, align 16, !dbg !88184, !noalias !88170
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !88184
  store i64 %i.au, ptr %i.dt, align 8, !dbg !88184, !noalias !88170
  store i64 26, ptr %i.i, align 16, !dbg !88184, !noalias !88170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !88185, !noalias !88170
  store ptr %i.i, ptr %i.h, align 8, !dbg !88185, !noalias !88170
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !88185
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !88185, !noalias !88170
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !88188, !noalias !88194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !88197, !noalias !88170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !88197, !noalias !88170
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !88197
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !88198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !88202
  br label %bb.cb, !dbg !88203

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !88204
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !88204
  %.val16.i = load ptr, ptr %i.du, align 8, !dbg !88204, !noalias !88170 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !88204
  %.val17.i = load i64, ptr %i.dv, align 8, !dbg !88204, !noalias !88170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !88205, !noalias !88209
  store i64 0, ptr %i.d, align 8, !dbg !88213, !noalias !88209
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !88213 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dw, align 8, !dbg !88213, !noalias !88209
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !88213 ; 3 uses
  store i64 0, ptr %i.dx, align 8, !dbg !88213, !noalias !88209
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dm, i8 noundef 0)
          to label %bb.az unwind label %.loopexit.split-lp.i.i, !dbg !88216, !noalias !88218

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp.i.i:                           ; preds = %bb.bf, %bb.bc, %bb.bb, %bb.az, %bb.ax
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.bm, !dbg !88219, !noalias !88220

bb.az:                                            ; preds = %bb.ax
  %i.dy = load ptr, ptr %i.dw, align 8, !dbg !88221, !noalias !88209, !nonnull !13, !noundef !13
  %i.dz = load i64, ptr %i.dx, align 8, !dbg !88234, !noalias !88209, !noundef !13
  %i.ea = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.dy, i64 noundef %i.dz)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !88235, !noalias !88220 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %.not.i.i = icmp eq ptr %i.ea, null, !dbg !88236
  br i1 %.not.i.i, label %bb.bc, label %bb.bb, !dbg !88239

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !88240, !noalias !88209
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.ea)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !88240, !noalias !88220

bb.bc:                                            ; preds = %bb.ba
  %i.eb = load ptr, ptr %i.dw, align 8, !dbg !88247, !noalias !88209, !nonnull !13, !noundef !13 ; 2 uses
  %i.ec = load i64, ptr %i.dx, align 8, !dbg !88259, !noalias !88209, !noundef !13 ; 2 uses
  %i.ed = and i64 %i.ec, 15, !dbg !88260
  %i.ee = and i64 %i.ec, -16, !dbg !88263         ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ee, !dbg !88264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !88267, !noalias !88209
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !88269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88278, !noalias !88281
  store ptr %i.eb, ptr %i.a, align 8, !dbg !88285, !alias.scope !88287, !noalias !88291
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88285
  store i64 %i.ee, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !88285, !alias.scope !88287, !noalias !88291
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88285
  store ptr %i.ef, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !88285, !alias.scope !88287, !noalias !88291
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !88285
  store i64 %i.ed, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !88285, !alias.scope !88287, !noalias !88291
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !88285
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !88285, !alias.scope !88287, !noalias !88291
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2o_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !88292, !noalias !88220

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88295, !noalias !88281
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ej = load i64, ptr %i.eh, align 8, !dbg !88296, !alias.scope !88307, !noalias !88314, !noundef !13 ; 2 uses
  %i.ek = load i64, ptr %i.ei, align 8, !dbg !88318, !alias.scope !88307, !noalias !88314, !noundef !13
  %i.el = icmp ult i64 %i.ej, %i.ek, !dbg !88296
  br i1 %i.el, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !88296

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.be, !dbg !88296

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.en = phi i64 [ %i.ej, %.lr.ph.i.i.i ], [ %i.ev, %bb.bg ] ; 3 uses
  %i.eo = add nuw i64 %i.en, 1, !dbg !88319
  store i64 %i.eo, ptr %i.eh, align 8, !dbg !88319, !alias.scope !88307, !noalias !88314
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !88321, !alias.scope !88307, !noalias !88314, !nonnull !13, !noundef !13
  %i.ep = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.em, i64 noundef %i.en)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !88322, !noalias !88220 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.be
  %i.eq = extractvalue { ptr, i64 } %i.ep, 1, !dbg !88323
  %i.er = icmp eq i64 %i.eq, 16, !dbg !88324
  br i1 %i.er, label %bb.bg, label %bb.bf, !dbg !88324

bb.bf:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !88335, !noalias !88220

.noexc6.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.es = extractvalue { ptr, i64 } %i.ep, 0, !dbg !88323 ; 2 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.en, !dbg !88336
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.es, align 1, !dbg !88341, !alias.scope !88343, !noalias !88347
  %i.eu = call i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !88354
  store i128 %i.eu, ptr %i.et, align 4, !dbg !88366, !noalias !88347
  %i.ev = load i64, ptr %i.eh, align 8, !dbg !88296, !alias.scope !88307, !noalias !88314, !noundef !13 ; 2 uses
  %i.ew = load i64, ptr %i.ei, align 8, !dbg !88318, !alias.scope !88307, !noalias !88314, !noundef !13
  %i.ex = icmp ult i64 %i.ev, %i.ew, !dbg !88296
  br i1 %i.ex, label %bb.be, label %.loopexit12.i.i, !dbg !88296

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !88367, !noalias !88209
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bh, !dbg !88368, !noalias !88220

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bi, !dbg !88370, !noalias !88220

bb.bi:                                            ; preds = %bb.bh
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !88368, !noalias !88220
  unreachable, !dbg !88368

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !88372 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bo unwind label %bb.bn, !dbg !88373, !noalias !88151

bb.bj:                                            ; preds = %bb.bb
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !88376, !noalias !88377
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !88376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !88376, !noalias !88377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !88378, !noalias !88209
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bk, !dbg !88379, !noalias !88220

bb.bk:                                            ; preds = %bb.bj
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bl, !dbg !88381, !noalias !88220

bb.bl:                                            ; preds = %bb.bk
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !88379, !noalias !88220
  unreachable, !dbg !88379

bb.bm:                                            ; preds = %bb.ay
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !88383, !noalias !88220
  unreachable, !dbg !88383
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !89590
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !89594

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 7, !dbg !89590
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !89590
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !89594

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !89595, !noalias !89486
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !89599, !noalias !89463
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !89600, !alias.scope !89458, !noalias !89473
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !89600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !89600, !noalias !89473
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !89607

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !89609, !noalias !89473
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !89610

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !89612, !noalias !89458

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !89615
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !89616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !89625, !noalias !89463
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !89626
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !89629
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !89629, !noalias !89463, !nonnull !13, !noundef !13 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !89647
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !89647, !noalias !89463, !noundef !13
  %i.ci = shl nuw nsw i64 %i.ch, 3, !dbg !89648   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !89657, !noalias !89463
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !89661, !noalias !89458

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !89662, !range !70618, !noalias !89463, !noundef !13 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !89662
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !89665
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !89665, !noalias !89463 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !89666

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !89667
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !89668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !89668, !noalias !89463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !89667, !noalias !89463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !89672, !noalias !89463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !89668, !noalias !89463
  store i8 %i.cj, ptr %i.k, align 16, !dbg !89668, !noalias !89463
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !89668
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !89668, !noalias !89463
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !89668, !noalias !89458

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !89672, !noalias !89463
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !89673

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !89676, !noalias !89463
  %i.cm = load i64, ptr %i.be, align 8, !dbg !89678, !alias.scope !89461, !noalias !89480, !noundef !13 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !89685
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !89685, !prof !17871

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !89691, !noalias !89463
  %i.co = load i64, ptr %i.be, align 8, !dbg !89692, !alias.scope !89461, !noalias !89480, !noundef !13 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !89698
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !89698, !prof !17871

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !89702, !alias.scope !89461, !noalias !89480, !nonnull !13, !noundef !13
  %i.cr = add i64 %i.cm, -8, !dbg !89711
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !89712
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !89676, !noalias !89458

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !89718, !range !74037, !noalias !89463, !noundef !13
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !89718
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !89721

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !89722, !noalias !89473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !89723, !noalias !89463
  br label %bb.ak, !dbg !89724

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !89723, !noalias !89463
  br label %bb.aj, !dbg !89726

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !89727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !89728, !noalias !89473
  store i64 18, ptr %i.aj, align 16, !dbg !89727, !alias.scope !89458, !noalias !89473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !89612, !noalias !89463
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !89729

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !89612, !noalias !89458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !89612, !noalias !89463
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !89730

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !89732, !alias.scope !89461, !noalias !89480, !nonnull !13, !noundef !13
  %i.cw = add i64 %i.co, -8, !dbg !89741
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !89742
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !89691, !noalias !89458

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !89747, !noalias !89458

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !89751, !range !74037, !noalias !89463, !noundef !13
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !89751
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !89753

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !89754, !noalias !89473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !89755, !noalias !89463
  br label %bb.ak, !dbg !89724

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !89755, !noalias !89463
  br label %bb.aj, !dbg !89756

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !89757, !noalias !89463
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !89758, !noalias !89463
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !89758
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !89758, !noalias !89463
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !89758
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !89759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !89758, !noalias !89473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !89765, !noalias !89463
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !89759, !alias.scope !89458, !noalias !89473
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !89759
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !89759, !alias.scope !89458, !noalias !89473
  br label %bb.ak, !dbg !89766

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !89768, !noalias !89458
  unreachable, !dbg !89768

common.resume:                                    ; preds = %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fl, %bb.bt ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !89769

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !89770 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !89779
  %i.de = and i64 %i.dd, 7, !dbg !89789
  %i.df = icmp eq i64 %i.de, 0, !dbg !89790
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !89790

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !89791, !noalias !89486
  unreachable, !dbg !89791

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !89793
  %i.dh = lshr exact i64 %i.dg, 3, !dbg !89794
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !89795
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !89796, !noalias !89499
  store i64 18, ptr %i.aj, align 16, !dbg !89795, !alias.scope !89458, !noalias !89473
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !89730

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !89729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !89729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !89729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !89729
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !89801, !range !74037, !noundef !13 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !89801
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !89803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !89803
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !89804

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !89805
  call void @llvm.experimental.noalias.scope.decl(metadata !89806), !dbg !89805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !89809
  %i.dl = shl nuw i64 %2, 3, !dbg !89809          ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !89809
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !89818, !prof !17871

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !89822
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !89822, !prof !18008

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !89824, !noalias !89825
  call void @llvm.experimental.noalias.scope.decl(metadata !89827), !dbg !89830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !89833, !noalias !89841
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !89833, !noalias !89842
  %i.do = load i64, ptr %i.e, align 8, !dbg !89833, !range !17915, !noalias !89841, !noundef !13
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !89843
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !89844
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !89844, !range !42896, !noalias !89841, !noundef !13 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !89844 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !89843, !prof !17871

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !89845, !noalias !89841
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !89846, !noalias !89842
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !89848, !noalias !89841, !nonnull !13, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !89849, !noalias !89841
  store i64 %i.dr, ptr %i.g, align 8, !dbg !89850, !alias.scope !89827, !noalias !89825
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !89850
  store ptr %i.du, ptr %i.dv, align 8, !dbg !89850, !alias.scope !89827, !noalias !89825
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !89850
  store i64 %2, ptr %i.dw, align 8, !dbg !89850, !alias.scope !89827, !noalias !89825
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !89851

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !89853, !noalias !89825
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !89853
  store i64 %2, ptr %i.dx, align 8, !dbg !89853, !noalias !89825
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !89853
  store ptr @41, ptr %i.dy, align 16, !dbg !89853, !noalias !89825
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !89853
  store i64 3, ptr %i.dz, align 8, !dbg !89853, !noalias !89825
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !89853
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !89853, !noalias !89825
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !89853
  store i64 %i.at, ptr %i.eb, align 8, !dbg !89853, !noalias !89825
  store i64 26, ptr %i.i, align 16, !dbg !89853, !noalias !89825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !89854, !noalias !89825
  store ptr %i.i, ptr %i.h, align 8, !dbg !89854, !noalias !89825
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !89854
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !89854, !noalias !89825
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !89857, !noalias !89863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !89866, !noalias !89825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !89866, !noalias !89825
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !89866
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !89867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !89871
  br label %bb.cc, !dbg !89872

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !89873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !89874, !noalias !89878
  store i64 0, ptr %i.d, align 8, !dbg !89882, !noalias !89878
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !89882 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !89882, !noalias !89878
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !89882 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !89882, !noalias !89878
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !89885, !noalias !89887

.loopexit.i.i:                                    ; preds = %bb.bf
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %bb.bg, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.bn, !dbg !89888, !noalias !89889

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !89890, !noalias !89878, !nonnull !13, !noundef !13
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !89903, !noalias !89878, !noundef !13
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !89904, !noalias !89889 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !89905
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !89908

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !89909, !noalias !89878
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !89909, !noalias !89889

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !89916, !noalias !89878, !nonnull !13, !noundef !13 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !89928, !noalias !89878, !noundef !13 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !89929
  %i.ek = and i64 %i.ei, -8, !dbg !89932          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !89933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !89936, !noalias !89878
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !89938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !89947, !noalias !89950
  store ptr %i.eh, ptr %i.a, align 8, !dbg !89954, !alias.scope !89956, !noalias !89960
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !89954
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !89954, !alias.scope !89956, !noalias !89960
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !89954
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !89954, !alias.scope !89956, !noalias !89960
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !89954
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !89954, !alias.scope !89956, !noalias !89960
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !89954
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !89954, !alias.scope !89956, !noalias !89960
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutdEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !89961, !noalias !89889

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !89964, !noalias !89950
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !89965, !alias.scope !89976, !noalias !89983, !noundef !13 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !89987, !alias.scope !89976, !noalias !89983, !noundef !13
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !89965
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !89965

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !89965

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !89988
  store i64 %i.eu, ptr %i.en, align 8, !dbg !89988, !alias.scope !89976, !noalias !89983
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !89990, !alias.scope !89976, !noalias !89983, !nonnull !13, !noundef !13
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !89991, !noalias !89889 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !89992
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !89993
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !89993

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !90007, !noalias !89889

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !89992 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !90008
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !90013, !alias.scope !90016, !noalias !90019
  %i.fa = call i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !90027
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !90043, !noalias !90044
  %i.fb = load i64, ptr %i.en, align 8, !dbg !89965, !alias.scope !89976, !noalias !89983, !noundef !13 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !89987, !alias.scope !89976, !noalias !89983, !noundef !13
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !89965
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !89965

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !90045, !noalias !89878
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bi, !dbg !90046, !noalias !89889

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bj, !dbg !90048, !noalias !89889

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !90046, !noalias !89889
  unreachable, !dbg !90046

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !90050 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bp unwind label %bb.bo, !dbg !90051, !noalias !89806

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !90054, !noalias !90055
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !90054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !90054, !noalias !90055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !90056, !noalias !89878
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bl, !dbg !90057, !noalias !89889

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !90428
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !90432

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 3, !dbg !90428
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !90428
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !90432

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !90433, !noalias !90324
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !90437, !noalias !90301
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !90438, !alias.scope !90296, !noalias !90311
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !90438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !90438, !noalias !90311
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !90445

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !90447, !noalias !90311
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !90448

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !90450, !noalias !90296

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !90453
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !90454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !90463, !noalias !90301
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !90464
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !90467
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !90467, !noalias !90301, !nonnull !13, !noundef !13 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !90485
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !90485, !noalias !90301, !noundef !13
  %i.ci = shl nuw nsw i64 %i.ch, 2, !dbg !90486   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !90495, !noalias !90301
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !90499, !noalias !90296

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !90500, !range !70618, !noalias !90301, !noundef !13 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !90500
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !90503
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !90503, !noalias !90301 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !90504

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !90505
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !90506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !90506, !noalias !90301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !90505, !noalias !90301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !90510, !noalias !90301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !90506, !noalias !90301
  store i8 %i.cj, ptr %i.k, align 16, !dbg !90506, !noalias !90301
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !90506
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !90506, !noalias !90301
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !90506, !noalias !90296

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !90510, !noalias !90301
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !90511

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !90514, !noalias !90301
  %i.cm = load i64, ptr %i.be, align 8, !dbg !90516, !alias.scope !90299, !noalias !90318, !noundef !13 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !90523
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !90523, !prof !17871

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !90529, !noalias !90301
  %i.co = load i64, ptr %i.be, align 8, !dbg !90530, !alias.scope !90299, !noalias !90318, !noundef !13 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !90536
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !90536, !prof !17871

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !90540, !alias.scope !90299, !noalias !90318, !nonnull !13, !noundef !13
  %i.cr = add i64 %i.cm, -8, !dbg !90549
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !90550
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !90514, !noalias !90296

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !90556, !range !74037, !noalias !90301, !noundef !13
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !90556
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !90559

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !90560, !noalias !90311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !90561, !noalias !90301
  br label %bb.ak, !dbg !90562

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !90561, !noalias !90301
  br label %bb.aj, !dbg !90564

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !90565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !90566, !noalias !90311
  store i64 18, ptr %i.aj, align 16, !dbg !90565, !alias.scope !90296, !noalias !90311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !90450, !noalias !90301
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !90567

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !90450, !noalias !90296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !90450, !noalias !90301
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !90568

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !90570, !alias.scope !90299, !noalias !90318, !nonnull !13, !noundef !13
  %i.cw = add i64 %i.co, -8, !dbg !90579
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !90580
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !90529, !noalias !90296

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !90585, !noalias !90296

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !90589, !range !74037, !noalias !90301, !noundef !13
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !90589
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !90591

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !90592, !noalias !90311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !90593, !noalias !90301
  br label %bb.ak, !dbg !90562

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !90593, !noalias !90301
  br label %bb.aj, !dbg !90594

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !90595, !noalias !90301
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !90596, !noalias !90301
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !90596
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !90596, !noalias !90301
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !90596
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !90597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !90596, !noalias !90311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !90603, !noalias !90301
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !90597, !alias.scope !90296, !noalias !90311
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !90597
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !90597, !alias.scope !90296, !noalias !90311
  br label %bb.ak, !dbg !90604

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !90606, !noalias !90296
  unreachable, !dbg !90606

common.resume:                                    ; preds = %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fk, %bb.bs ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !90607

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !90608 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !90617
  %i.de = and i64 %i.dd, 3, !dbg !90627
  %i.df = icmp eq i64 %i.de, 0, !dbg !90628
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !90628

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !90629, !noalias !90324
  unreachable, !dbg !90629

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !90631
  %i.dh = lshr exact i64 %i.dg, 2, !dbg !90632
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !90633
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !90634, !noalias !90337
  store i64 18, ptr %i.aj, align 16, !dbg !90633, !alias.scope !90296, !noalias !90311
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !90568

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !90567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !90567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !90567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !90567
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !90639, !range !74037, !noundef !13 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !90639
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !90641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !90641
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !90642

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !90643
  call void @llvm.experimental.noalias.scope.decl(metadata !90644), !dbg !90643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !90647
  %i.dl = shl nuw i64 %2, 2, !dbg !90647          ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !90647
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !90656, !prof !17871

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !90660
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !90660, !prof !18008

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !90662, !noalias !90663
  call void @llvm.experimental.noalias.scope.decl(metadata !90665), !dbg !90668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !90671, !noalias !90678
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !90671, !noalias !90679
  %i.do = load i64, ptr %i.e, align 8, !dbg !90671, !range !17915, !noalias !90678, !noundef !13
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !90680
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !90681
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !90681, !range !42896, !noalias !90678, !noundef !13 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !90681 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !90680, !prof !17871

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !90682, !noalias !90678
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !90683, !noalias !90679
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !90685, !noalias !90678, !nonnull !13, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !90686, !noalias !90678
  store i64 %i.dr, ptr %i.g, align 8, !dbg !90687, !alias.scope !90665, !noalias !90663
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !90687
  store ptr %i.du, ptr %i.dv, align 8, !dbg !90687, !alias.scope !90665, !noalias !90663
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !90687
  store i64 %2, ptr %i.dw, align 8, !dbg !90687, !alias.scope !90665, !noalias !90663
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !90688

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !90690, !noalias !90663
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !90690
  store i64 %2, ptr %i.dx, align 8, !dbg !90690, !noalias !90663
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !90690
  store ptr @42, ptr %i.dy, align 16, !dbg !90690, !noalias !90663
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !90690
  store i64 3, ptr %i.dz, align 8, !dbg !90690, !noalias !90663
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !90690
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !90690, !noalias !90663
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !90690
  store i64 %i.at, ptr %i.eb, align 8, !dbg !90690, !noalias !90663
  store i64 26, ptr %i.i, align 16, !dbg !90690, !noalias !90663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !90691, !noalias !90663
  store ptr %i.i, ptr %i.h, align 8, !dbg !90691, !noalias !90663
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !90691
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !90691, !noalias !90663
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !90694, !noalias !90700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !90703, !noalias !90663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !90703, !noalias !90663
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !90703
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !90704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !90708
  br label %bb.cb, !dbg !90709

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !90710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !90711, !noalias !90715
  store i64 0, ptr %i.d, align 8, !dbg !90719, !noalias !90715
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !90719 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !90719, !noalias !90715
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !90719 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !90719, !noalias !90715
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !90722, !noalias !90724

.loopexit.i.i:                                    ; preds = %bb.bf
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %.critedge.i.i.i.i.i, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.bm, !dbg !90725, !noalias !90726

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !90727, !noalias !90715, !nonnull !13, !noundef !13
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !90740, !noalias !90715, !noundef !13
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !90741, !noalias !90726 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !90742
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !90745

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !90746, !noalias !90715
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !90746, !noalias !90726

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !90753, !noalias !90715, !nonnull !13, !noundef !13 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !90765, !noalias !90715, !noundef !13 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !90766
  %i.ek = and i64 %i.ei, -4, !dbg !90769          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !90770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !90773, !noalias !90715
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !90775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !90784, !noalias !90787
  store ptr %i.eh, ptr %i.a, align 8, !dbg !90791, !alias.scope !90793, !noalias !90797
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !90791
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !90791, !alias.scope !90793, !noalias !90797
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !90791
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !90791, !alias.scope !90793, !noalias !90797
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !90791
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !90791, !alias.scope !90793, !noalias !90797
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !90791
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !90791, !alias.scope !90793, !noalias !90797
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !90798, !noalias !90726

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !90801, !noalias !90787
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !90802, !alias.scope !90813, !noalias !90820, !noundef !13 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !90824, !alias.scope !90813, !noalias !90820, !noundef !13
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !90802
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !90802

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !90802

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !90825
  store i64 %i.eu, ptr %i.en, align 8, !dbg !90825, !alias.scope !90813, !noalias !90820
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !90827, !alias.scope !90813, !noalias !90820, !nonnull !13, !noundef !13
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !90828, !noalias !90726 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !90829
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !90830
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !90830

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !90844, !noalias !90726

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !90829 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !90845
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !90850, !alias.scope !90853, !noalias !90856
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !90863
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !90879, !noalias !90856
  %i.fa = load i64, ptr %i.en, align 8, !dbg !90802, !alias.scope !90813, !noalias !90820, !noundef !13 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !90824, !alias.scope !90813, !noalias !90820, !noundef !13
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !90802
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !90802

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !90880, !noalias !90715
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bh, !dbg !90881, !noalias !90726

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bi, !dbg !90883, !noalias !90726

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !90881, !noalias !90726
  unreachable, !dbg !90881

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !90885 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bo unwind label %bb.bn, !dbg !90886, !noalias !90644

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !90889, !noalias !90890
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !90889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !90889, !noalias !90890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !90891, !noalias !90715
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bk, !dbg !90892, !noalias !90726

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !91725
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !91729

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 3, !dbg !91725
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !91725
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !91729

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !91730, !noalias !91621
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !91734, !noalias !91598
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !91735, !alias.scope !91593, !noalias !91608
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !91735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !91735, !noalias !91608
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !91742

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !91744, !noalias !91608
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !91745

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !91747, !noalias !91593

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !91750
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !91751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !91760, !noalias !91598
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !91761
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !91764
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !91764, !noalias !91598, !nonnull !13, !noundef !13 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !91782
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !91782, !noalias !91598, !noundef !13
  %i.ci = shl nuw nsw i64 %i.ch, 2, !dbg !91783   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !91792, !noalias !91598
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !91796, !noalias !91593

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !91797, !range !70618, !noalias !91598, !noundef !13 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !91797
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !91800
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !91800, !noalias !91598 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !91801

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !91802
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !91803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !91803, !noalias !91598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !91802, !noalias !91598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !91807, !noalias !91598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !91803, !noalias !91598
  store i8 %i.cj, ptr %i.k, align 16, !dbg !91803, !noalias !91598
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !91803
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !91803, !noalias !91598
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !91803, !noalias !91593

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !91807, !noalias !91598
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !91808

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !91811, !noalias !91598
  %i.cm = load i64, ptr %i.be, align 8, !dbg !91813, !alias.scope !91596, !noalias !91615, !noundef !13 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !91820
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !91820, !prof !17871

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !91826, !noalias !91598
  %i.co = load i64, ptr %i.be, align 8, !dbg !91827, !alias.scope !91596, !noalias !91615, !noundef !13 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !91833
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !91833, !prof !17871

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !91837, !alias.scope !91596, !noalias !91615, !nonnull !13, !noundef !13
  %i.cr = add i64 %i.cm, -8, !dbg !91846
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !91847
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !91811, !noalias !91593

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !91853, !range !74037, !noalias !91598, !noundef !13
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !91853
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !91856

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !91857, !noalias !91608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !91858, !noalias !91598
  br label %bb.ak, !dbg !91859

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !91858, !noalias !91598
  br label %bb.aj, !dbg !91861

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !91862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !91863, !noalias !91608
  store i64 18, ptr %i.aj, align 16, !dbg !91862, !alias.scope !91593, !noalias !91608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !91747, !noalias !91598
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !91864

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !91747, !noalias !91593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !91747, !noalias !91598
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !91865

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !91867, !alias.scope !91596, !noalias !91615, !nonnull !13, !noundef !13
  %i.cw = add i64 %i.co, -8, !dbg !91876
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !91877
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !91826, !noalias !91593

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !91882, !noalias !91593

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !91886, !range !74037, !noalias !91598, !noundef !13
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !91886
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !91888

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !91889, !noalias !91608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !91890, !noalias !91598
  br label %bb.ak, !dbg !91859

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !91890, !noalias !91598
  br label %bb.aj, !dbg !91891

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !91892, !noalias !91598
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !91893, !noalias !91598
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !91893
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !91893, !noalias !91598
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !91893
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !91894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !91893, !noalias !91608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !91900, !noalias !91598
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !91894, !alias.scope !91593, !noalias !91608
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !91894
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !91894, !alias.scope !91593, !noalias !91608
  br label %bb.ak, !dbg !91901

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !91903, !noalias !91593
  unreachable, !dbg !91903

common.resume:                                    ; preds = %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fk, %bb.bs ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !91904

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !91905 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !91914
  %i.de = and i64 %i.dd, 3, !dbg !91924
  %i.df = icmp eq i64 %i.de, 0, !dbg !91925
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !91925

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !91926, !noalias !91621
  unreachable, !dbg !91926

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !91928
  %i.dh = lshr exact i64 %i.dg, 2, !dbg !91929
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !91930
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !91931, !noalias !91634
  store i64 18, ptr %i.aj, align 16, !dbg !91930, !alias.scope !91593, !noalias !91608
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !91865

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !91864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !91864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !91864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !91864
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !91936, !range !74037, !noundef !13 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !91936
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !91938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !91938
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !91939

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !91940
  call void @llvm.experimental.noalias.scope.decl(metadata !91941), !dbg !91940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !91944
  %i.dl = shl nuw i64 %2, 2, !dbg !91944          ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !91944
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !91953, !prof !17871

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !91957
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !91957, !prof !18008

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !91959, !noalias !91960
  call void @llvm.experimental.noalias.scope.decl(metadata !91962), !dbg !91965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !91968, !noalias !91975
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !91968, !noalias !91976
  %i.do = load i64, ptr %i.e, align 8, !dbg !91968, !range !17915, !noalias !91975, !noundef !13
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !91977
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !91978
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !91978, !range !42896, !noalias !91975, !noundef !13 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !91978 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !91977, !prof !17871

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !91979, !noalias !91975
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !91980, !noalias !91976
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !91982, !noalias !91975, !nonnull !13, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !91983, !noalias !91975
  store i64 %i.dr, ptr %i.g, align 8, !dbg !91984, !alias.scope !91962, !noalias !91960
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !91984
  store ptr %i.du, ptr %i.dv, align 8, !dbg !91984, !alias.scope !91962, !noalias !91960
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !91984
  store i64 %2, ptr %i.dw, align 8, !dbg !91984, !alias.scope !91962, !noalias !91960
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !91985

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !91987, !noalias !91960
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !91987
  store i64 %2, ptr %i.dx, align 8, !dbg !91987, !noalias !91960
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !91987
  store ptr @44, ptr %i.dy, align 16, !dbg !91987, !noalias !91960
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !91987
  store i64 3, ptr %i.dz, align 8, !dbg !91987, !noalias !91960
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !91987
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !91987, !noalias !91960
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !91987
  store i64 %i.at, ptr %i.eb, align 8, !dbg !91987, !noalias !91960
  store i64 26, ptr %i.i, align 16, !dbg !91987, !noalias !91960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !91988, !noalias !91960
  store ptr %i.i, ptr %i.h, align 8, !dbg !91988, !noalias !91960
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !91988
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !91988, !noalias !91960
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !91991, !noalias !91997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !92000, !noalias !91960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !92000, !noalias !91960
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !92000
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !92001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !92005
  br label %bb.cb, !dbg !92006

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !92007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !92008, !noalias !92012
  store i64 0, ptr %i.d, align 8, !dbg !92016, !noalias !92012
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !92016 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !92016, !noalias !92012
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !92016 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !92016, !noalias !92012
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !92019, !noalias !92021

.loopexit.i.i:                                    ; preds = %bb.bf
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %.critedge.i.i.i.i.i, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.bm, !dbg !92022, !noalias !92023

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !92024, !noalias !92012, !nonnull !13, !noundef !13
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !92037, !noalias !92012, !noundef !13
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !92038, !noalias !92023 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !92039
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !92042

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !92043, !noalias !92012
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !92043, !noalias !92023

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !92050, !noalias !92012, !nonnull !13, !noundef !13 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !92062, !noalias !92012, !noundef !13 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !92063
  %i.ek = and i64 %i.ei, -4, !dbg !92066          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !92067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !92070, !noalias !92012
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !92072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92081, !noalias !92084
  store ptr %i.eh, ptr %i.a, align 8, !dbg !92088, !alias.scope !92090, !noalias !92094
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !92088
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !92088, !alias.scope !92090, !noalias !92094
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !92088
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !92088, !alias.scope !92090, !noalias !92094
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !92088
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !92088, !alias.scope !92090, !noalias !92094
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !92088
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !92088, !alias.scope !92090, !noalias !92094
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutlEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !92095, !noalias !92023

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92098, !noalias !92084
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !92099, !alias.scope !92110, !noalias !92117, !noundef !13 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !92121, !alias.scope !92110, !noalias !92117, !noundef !13
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !92099
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !92099

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !92099

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !92122
  store i64 %i.eu, ptr %i.en, align 8, !dbg !92122, !alias.scope !92110, !noalias !92117
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !92124, !alias.scope !92110, !noalias !92117, !nonnull !13, !noundef !13
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !92125, !noalias !92023 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !92126
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !92127
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !92127

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !92138, !noalias !92023

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !92126 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !92139
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !92144, !alias.scope !92146, !noalias !92149
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !92156
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !92169, !noalias !92149
  %i.fa = load i64, ptr %i.en, align 8, !dbg !92099, !alias.scope !92110, !noalias !92117, !noundef !13 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !92121, !alias.scope !92110, !noalias !92117, !noundef !13
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !92099
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !92099

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !92170, !noalias !92012
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bh, !dbg !92171, !noalias !92023

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bi, !dbg !92173, !noalias !92023

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !92171, !noalias !92023
  unreachable, !dbg !92171

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !92175 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bo unwind label %bb.bn, !dbg !92176, !noalias !91941

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !92179, !noalias !92180
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !92179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !92179, !noalias !92180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92181, !noalias !92012
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bk, !dbg !92182, !noalias !92023

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !92553
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !92557

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 3, !dbg !92553
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !92553
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !92557

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !92558, !noalias !92449
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !92562, !noalias !92426
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !92563, !alias.scope !92421, !noalias !92436
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !92563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !92563, !noalias !92436
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !92570

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !92572, !noalias !92436
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !92573

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !92575, !noalias !92421

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !92578
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !92579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !92588, !noalias !92426
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !92589
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !92592
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !92592, !noalias !92426, !nonnull !13, !noundef !13 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !92610
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !92610, !noalias !92426, !noundef !13
  %i.ci = shl nuw nsw i64 %i.ch, 2, !dbg !92611   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !92620, !noalias !92426
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !92624, !noalias !92421

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !92625, !range !70618, !noalias !92426, !noundef !13 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !92625
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !92628
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !92628, !noalias !92426 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !92629

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !92630
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !92631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !92631, !noalias !92426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !92630, !noalias !92426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !92635, !noalias !92426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !92631, !noalias !92426
  store i8 %i.cj, ptr %i.k, align 16, !dbg !92631, !noalias !92426
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !92631
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !92631, !noalias !92426
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !92631, !noalias !92421

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !92635, !noalias !92426
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !92636

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !92639, !noalias !92426
  %i.cm = load i64, ptr %i.be, align 8, !dbg !92641, !alias.scope !92424, !noalias !92443, !noundef !13 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !92648
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !92648, !prof !17871

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !92654, !noalias !92426
  %i.co = load i64, ptr %i.be, align 8, !dbg !92655, !alias.scope !92424, !noalias !92443, !noundef !13 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !92661
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !92661, !prof !17871

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !92665, !alias.scope !92424, !noalias !92443, !nonnull !13, !noundef !13
  %i.cr = add i64 %i.cm, -8, !dbg !92674
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !92675
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !92639, !noalias !92421

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !92681, !range !74037, !noalias !92426, !noundef !13
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !92681
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !92684

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !92685, !noalias !92436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !92686, !noalias !92426
  br label %bb.ak, !dbg !92687

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !92686, !noalias !92426
  br label %bb.aj, !dbg !92689

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !92690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !92691, !noalias !92436
  store i64 18, ptr %i.aj, align 16, !dbg !92690, !alias.scope !92421, !noalias !92436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !92575, !noalias !92426
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !92692

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !92575, !noalias !92421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !92575, !noalias !92426
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !92693

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !92695, !alias.scope !92424, !noalias !92443, !nonnull !13, !noundef !13
  %i.cw = add i64 %i.co, -8, !dbg !92704
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !92705
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !92654, !noalias !92421

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !92710, !noalias !92421

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !92714, !range !74037, !noalias !92426, !noundef !13
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !92714
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !92716

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !92717, !noalias !92436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !92718, !noalias !92426
  br label %bb.ak, !dbg !92687

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !92718, !noalias !92426
  br label %bb.aj, !dbg !92719

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !92720, !noalias !92426
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !92721, !noalias !92426
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !92721
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !92721, !noalias !92426
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !92721
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !92722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !92721, !noalias !92436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !92728, !noalias !92426
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !92722, !alias.scope !92421, !noalias !92436
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !92722
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !92722, !alias.scope !92421, !noalias !92436
  br label %bb.ak, !dbg !92729

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !92731, !noalias !92421
  unreachable, !dbg !92731

common.resume:                                    ; preds = %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fk, %bb.bs ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !92732

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !92733 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !92742
  %i.de = and i64 %i.dd, 3, !dbg !92752
  %i.df = icmp eq i64 %i.de, 0, !dbg !92753
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !92753

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !92754, !noalias !92449
  unreachable, !dbg !92754

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !92756
  %i.dh = lshr exact i64 %i.dg, 2, !dbg !92757
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !92758
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !92759, !noalias !92462
  store i64 18, ptr %i.aj, align 16, !dbg !92758, !alias.scope !92421, !noalias !92436
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !92693

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !92692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !92692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !92692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !92692
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !92764, !range !74037, !noundef !13 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !92764
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !92766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !92766
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !92767

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !92768
  call void @llvm.experimental.noalias.scope.decl(metadata !92769), !dbg !92768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !92772
  %i.dl = shl nuw i64 %2, 2, !dbg !92772          ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !92772
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !92781, !prof !17871

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !92785
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !92785, !prof !18008

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !92787, !noalias !92788
  call void @llvm.experimental.noalias.scope.decl(metadata !92790), !dbg !92793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !92796, !noalias !92803
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !92796, !noalias !92804
  %i.do = load i64, ptr %i.e, align 8, !dbg !92796, !range !17915, !noalias !92803, !noundef !13
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !92805
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !92806
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !92806, !range !42896, !noalias !92803, !noundef !13 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !92806 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !92805, !prof !17871

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !92807, !noalias !92803
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !92808, !noalias !92804
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !92810, !noalias !92803, !nonnull !13, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !92811, !noalias !92803
  store i64 %i.dr, ptr %i.g, align 8, !dbg !92812, !alias.scope !92790, !noalias !92788
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !92812
  store ptr %i.du, ptr %i.dv, align 8, !dbg !92812, !alias.scope !92790, !noalias !92788
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !92812
  store i64 %2, ptr %i.dw, align 8, !dbg !92812, !alias.scope !92790, !noalias !92788
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !92813

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !92815, !noalias !92788
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !92815
  store i64 %2, ptr %i.dx, align 8, !dbg !92815, !noalias !92788
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !92815
  store ptr @45, ptr %i.dy, align 16, !dbg !92815, !noalias !92788
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !92815
  store i64 3, ptr %i.dz, align 8, !dbg !92815, !noalias !92788
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !92815
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !92815, !noalias !92788
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !92815
  store i64 %i.at, ptr %i.eb, align 8, !dbg !92815, !noalias !92788
  store i64 26, ptr %i.i, align 16, !dbg !92815, !noalias !92788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !92816, !noalias !92788
  store ptr %i.i, ptr %i.h, align 8, !dbg !92816, !noalias !92788
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !92816
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !92816, !noalias !92788
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !92819, !noalias !92825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !92828, !noalias !92788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !92828, !noalias !92788
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !92828
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !92829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !92833
  br label %bb.cb, !dbg !92834

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !92835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !92836, !noalias !92840
  store i64 0, ptr %i.d, align 8, !dbg !92844, !noalias !92840
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !92844 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !92844, !noalias !92840
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !92844 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !92844, !noalias !92840
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !92847, !noalias !92849

.loopexit.i.i:                                    ; preds = %bb.bf
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %.critedge.i.i.i.i.i, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.bm, !dbg !92850, !noalias !92851

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !92852, !noalias !92840, !nonnull !13, !noundef !13
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !92865, !noalias !92840, !noundef !13
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !92866, !noalias !92851 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !92867
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !92870

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !92871, !noalias !92840
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !92871, !noalias !92851

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !92878, !noalias !92840, !nonnull !13, !noundef !13 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !92890, !noalias !92840, !noundef !13 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !92891
  %i.ek = and i64 %i.ei, -4, !dbg !92894          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !92895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !92898, !noalias !92840
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !92900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92909, !noalias !92912
  store ptr %i.eh, ptr %i.a, align 8, !dbg !92916, !alias.scope !92918, !noalias !92922
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !92916
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !92916, !alias.scope !92918, !noalias !92922
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !92916
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !92916, !alias.scope !92918, !noalias !92922
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !92916
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !92916, !alias.scope !92918, !noalias !92922
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !92916
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !92916, !alias.scope !92918, !noalias !92922
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !92923, !noalias !92851

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92926, !noalias !92912
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !92927, !alias.scope !92938, !noalias !92945, !noundef !13 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !92949, !alias.scope !92938, !noalias !92945, !noundef !13
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !92927
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !92927

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !92927

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !92950
  store i64 %i.eu, ptr %i.en, align 8, !dbg !92950, !alias.scope !92938, !noalias !92945
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !92952, !alias.scope !92938, !noalias !92945, !nonnull !13, !noundef !13
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !92953, !noalias !92851 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !92954
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !92955
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !92955

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !92966, !noalias !92851

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !92954 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !92967
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !92972, !alias.scope !92974, !noalias !92977
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !92984
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !92995, !noalias !92977
  %i.fa = load i64, ptr %i.en, align 8, !dbg !92927, !alias.scope !92938, !noalias !92945, !noundef !13 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !92949, !alias.scope !92938, !noalias !92945, !noundef !13
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !92927
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !92927

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !92996, !noalias !92840
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bh, !dbg !92997, !noalias !92851

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bi, !dbg !92999, !noalias !92851

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !92997, !noalias !92851
  unreachable, !dbg !92997

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !93001 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bo unwind label %bb.bn, !dbg !93002, !noalias !92769

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !93005, !noalias !93006
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !93005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !93005, !noalias !93006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !93007, !noalias !92840
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bk, !dbg !93008, !noalias !92851

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 8, !dbg !93379
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !93383

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 15, !dbg !93379
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !93379
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !93383

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !93384, !noalias !93275
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !93388, !noalias !93252
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !93389, !alias.scope !93247, !noalias !93262
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !93389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !93389, !noalias !93262
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !93396

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !93398, !noalias !93262
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !93399

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !93401, !noalias !93247

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !93404
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !93405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !93414, !noalias !93252
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !93415
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !93418
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !93418, !noalias !93252, !nonnull !13, !noundef !13 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !93436
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !93436, !noalias !93252, !noundef !13
  %i.ci = shl nuw nsw i64 %i.ch, 4, !dbg !93437   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !93446, !noalias !93252
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !93450, !noalias !93247

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !93451, !range !70618, !noalias !93252, !noundef !13 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !93451
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !93454
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !93454, !noalias !93252 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !93455

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !93456
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !93457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !93457, !noalias !93252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !93456, !noalias !93252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !93461, !noalias !93252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !93457, !noalias !93252
  store i8 %i.cj, ptr %i.k, align 16, !dbg !93457, !noalias !93252
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !93457
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !93457, !noalias !93252
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !93457, !noalias !93247

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !93461, !noalias !93252
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !93462

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !93465, !noalias !93252
  %i.cm = load i64, ptr %i.be, align 8, !dbg !93467, !alias.scope !93250, !noalias !93269, !noundef !13 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !93474
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !93474, !prof !17871

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !93480, !noalias !93252
  %i.co = load i64, ptr %i.be, align 8, !dbg !93481, !alias.scope !93250, !noalias !93269, !noundef !13 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !93487
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !93487, !prof !17871

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !93491, !alias.scope !93250, !noalias !93269, !nonnull !13, !noundef !13
  %i.cr = add i64 %i.cm, -8, !dbg !93500
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !93501
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !93465, !noalias !93247

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !93507, !range !74037, !noalias !93252, !noundef !13
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !93507
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !93510

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !93511, !noalias !93262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !93512, !noalias !93252
  br label %bb.ak, !dbg !93513

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !93512, !noalias !93252
  br label %bb.aj, !dbg !93515

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !93516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !93517, !noalias !93262
  store i64 18, ptr %i.aj, align 16, !dbg !93516, !alias.scope !93247, !noalias !93262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !93401, !noalias !93252
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !93518

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !93401, !noalias !93247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !93401, !noalias !93252
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !93519

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !93521, !alias.scope !93250, !noalias !93269, !nonnull !13, !noundef !13
  %i.cw = add i64 %i.co, -8, !dbg !93530
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !93531
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !93480, !noalias !93247

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !93536, !noalias !93247

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !93540, !range !74037, !noalias !93252, !noundef !13
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !93540
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !93542

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !93543, !noalias !93262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !93544, !noalias !93252
  br label %bb.ak, !dbg !93513

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !93544, !noalias !93252
  br label %bb.aj, !dbg !93545

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !93546, !noalias !93252
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !93547, !noalias !93252
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !93547
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !93547, !noalias !93252
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !93547
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !93548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !93547, !noalias !93262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !93554, !noalias !93252
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !93548, !alias.scope !93247, !noalias !93262
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !93548
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !93548, !alias.scope !93247, !noalias !93262
  br label %bb.ak, !dbg !93555

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !93557, !noalias !93247
  unreachable, !dbg !93557

common.resume:                                    ; preds = %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fl, %bb.bt ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !93558

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !93559 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !93568
  %i.de = and i64 %i.dd, 15, !dbg !93578
  %i.df = icmp eq i64 %i.de, 0, !dbg !93579
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !93579

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !93580, !noalias !93275
  unreachable, !dbg !93580

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !93582
  %i.dh = lshr exact i64 %i.dg, 4, !dbg !93583
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !93584
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_innNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !93585, !noalias !93288
  store i64 18, ptr %i.aj, align 16, !dbg !93584, !alias.scope !93247, !noalias !93262
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !93519

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !93518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !93518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !93518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !93518
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !93590, !range !74037, !noundef !13 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !93590
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !93592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !93592
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !93593

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !93594
  call void @llvm.experimental.noalias.scope.decl(metadata !93595), !dbg !93594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !93598
  %i.dl = shl nuw i64 %2, 4, !dbg !93598          ; 4 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !93598
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !93607, !prof !17871

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !93611
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !93611, !prof !18008

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !93613, !noalias !93614
  call void @llvm.experimental.noalias.scope.decl(metadata !93616), !dbg !93619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !93622, !noalias !93629
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !93622, !noalias !93630
  %i.do = load i64, ptr %i.e, align 8, !dbg !93622, !range !17915, !noalias !93629, !noundef !13
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !93631
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !93632
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !93632, !range !42896, !noalias !93629, !noundef !13 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !93632 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !93631, !prof !17871

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !93633, !noalias !93629
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !93634, !noalias !93630
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !93636, !noalias !93629, !nonnull !13, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !93637, !noalias !93629
  store i64 %i.dr, ptr %i.g, align 8, !dbg !93638, !alias.scope !93616, !noalias !93614
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !93638
  store ptr %i.du, ptr %i.dv, align 8, !dbg !93638, !alias.scope !93616, !noalias !93614
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !93638
  store i64 %2, ptr %i.dw, align 8, !dbg !93638, !alias.scope !93616, !noalias !93614
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !93639

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !93641, !noalias !93614
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !93641
  store i64 %2, ptr %i.dx, align 8, !dbg !93641, !noalias !93614
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !93641
  store ptr @46, ptr %i.dy, align 16, !dbg !93641, !noalias !93614
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !93641
  store i64 4, ptr %i.dz, align 8, !dbg !93641, !noalias !93614
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !93641
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !93641, !noalias !93614
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !93641
  store i64 %i.at, ptr %i.eb, align 8, !dbg !93641, !noalias !93614
  store i64 26, ptr %i.i, align 16, !dbg !93641, !noalias !93614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !93642, !noalias !93614
  store ptr %i.i, ptr %i.h, align 8, !dbg !93642, !noalias !93614
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !93642
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !93642, !noalias !93614
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !93645, !noalias !93651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !93654, !noalias !93614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !93654, !noalias !93614
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !93654
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !93655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !93659
  br label %bb.cc, !dbg !93660

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !93661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !93662, !noalias !93666
  store i64 0, ptr %i.d, align 8, !dbg !93670, !noalias !93666
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !93670 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !93670, !noalias !93666
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !93670 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !93670, !noalias !93666
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !93673, !noalias !93675

.loopexit.i.i:                                    ; preds = %bb.bf
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %bb.bg, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.bn, !dbg !93676, !noalias !93677

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !93678, !noalias !93666, !nonnull !13, !noundef !13
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !93691, !noalias !93666, !noundef !13
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !93692, !noalias !93677 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !93693
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !93696

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !93697, !noalias !93666
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !93697, !noalias !93677

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !93704, !noalias !93666, !nonnull !13, !noundef !13 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !93716, !noalias !93666, !noundef !13 ; 2 uses
  %i.ej = and i64 %i.ei, 15, !dbg !93717
  %i.ek = and i64 %i.ei, -16, !dbg !93720         ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !93721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !93724, !noalias !93666
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %2, !dbg !93726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !93735, !noalias !93738
  store ptr %i.eh, ptr %i.a, align 8, !dbg !93742, !alias.scope !93744, !noalias !93748
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !93742
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !93742, !alias.scope !93744, !noalias !93748
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !93742
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !93742, !alias.scope !93744, !noalias !93748
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !93742
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !93742, !alias.scope !93744, !noalias !93748
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !93742
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !93742, !alias.scope !93744, !noalias !93748
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutnEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !93749, !noalias !93677

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !93752, !noalias !93738
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !93753, !alias.scope !93764, !noalias !93771, !noundef !13 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !93775, !alias.scope !93764, !noalias !93771, !noundef !13
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !93753
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !93753

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !93753

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !93776
  store i64 %i.eu, ptr %i.en, align 8, !dbg !93776, !alias.scope !93764, !noalias !93771
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !93778, !alias.scope !93764, !noalias !93771, !nonnull !13, !noundef !13
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !93779, !noalias !93677 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !93780
  %i.ex = icmp eq i64 %i.ew, 16, !dbg !93781
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !93781

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !93792, !noalias !93677

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !93780 ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !93793
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.ey, align 1, !dbg !93798, !alias.scope !93800, !noalias !93804
  %i.fa = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !93811
  store i128 %i.fa, ptr %i.ez, align 16, !dbg !93825, !noalias !93804
  %i.fb = load i64, ptr %i.en, align 8, !dbg !93753, !alias.scope !93764, !noalias !93771, !noundef !13 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !93775, !alias.scope !93764, !noalias !93771, !noundef !13
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !93753
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !93753

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !93826, !noalias !93666
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bi, !dbg !93827, !noalias !93677

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bj, !dbg !93829, !noalias !93677

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !93827, !noalias !93677
  unreachable, !dbg !93827

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !93831 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bp unwind label %bb.bo, !dbg !93832, !noalias !93595

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !93835, !noalias !93836
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !93835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !93835, !noalias !93836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !93837, !noalias !93666
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bl, !dbg !93838, !noalias !93677

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 8, !dbg !94209
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !94213

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 15, !dbg !94209
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !94209
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !94213

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !94214, !noalias !94105
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !94218, !noalias !94082
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !94219, !alias.scope !94077, !noalias !94092
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !94219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !94219, !noalias !94092
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94226

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !94228, !noalias !94092
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94229

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !94231, !noalias !94077

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !94234
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !94235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !94244, !noalias !94082
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !94245
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !94248
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !94248, !noalias !94082, !nonnull !13, !noundef !13 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !94266
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !94266, !noalias !94082, !noundef !13
  %i.ci = shl nuw nsw i64 %i.ch, 4, !dbg !94267   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !94276, !noalias !94082
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !94280, !noalias !94077

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !94281, !range !70618, !noalias !94082, !noundef !13 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !94281
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !94284
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !94284, !noalias !94082 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !94285

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !94286
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !94287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !94287, !noalias !94082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !94286, !noalias !94082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !94291, !noalias !94082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !94287, !noalias !94082
  store i8 %i.cj, ptr %i.k, align 16, !dbg !94287, !noalias !94082
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !94287
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !94287, !noalias !94082
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !94287, !noalias !94077

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !94291, !noalias !94082
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !94292

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !94295, !noalias !94082
  %i.cm = load i64, ptr %i.be, align 8, !dbg !94297, !alias.scope !94080, !noalias !94099, !noundef !13 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !94304
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !94304, !prof !17871

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !94310, !noalias !94082
  %i.co = load i64, ptr %i.be, align 8, !dbg !94311, !alias.scope !94080, !noalias !94099, !noundef !13 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !94317
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !94317, !prof !17871

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !94321, !alias.scope !94080, !noalias !94099, !nonnull !13, !noundef !13
  %i.cr = add i64 %i.cm, -8, !dbg !94330
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !94331
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !94295, !noalias !94077

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !94337, !range !74037, !noalias !94082, !noundef !13
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !94337
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !94340

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !94341, !noalias !94092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !94342, !noalias !94082
  br label %bb.ak, !dbg !94343

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !94342, !noalias !94082
  br label %bb.aj, !dbg !94345

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !94346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !94347, !noalias !94092
  store i64 18, ptr %i.aj, align 16, !dbg !94346, !alias.scope !94077, !noalias !94092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !94231, !noalias !94082
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94348

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !94231, !noalias !94077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !94231, !noalias !94082
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94349

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !94351, !alias.scope !94080, !noalias !94099, !nonnull !13, !noundef !13
  %i.cw = add i64 %i.co, -8, !dbg !94360
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !94361
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !94310, !noalias !94077

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !94366, !noalias !94077

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !94370, !range !74037, !noalias !94082, !noundef !13
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !94370
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !94372

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !94373, !noalias !94092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !94374, !noalias !94082
  br label %bb.ak, !dbg !94343

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !94374, !noalias !94082
  br label %bb.aj, !dbg !94375

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !94376, !noalias !94082
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !94377, !noalias !94082
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !94377
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !94377, !noalias !94082
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !94377
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !94378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !94377, !noalias !94092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !94384, !noalias !94082
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !94378, !alias.scope !94077, !noalias !94092
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !94378
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !94378, !alias.scope !94077, !noalias !94092
  br label %bb.ak, !dbg !94385

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !94387, !noalias !94077
  unreachable, !dbg !94387

common.resume:                                    ; preds = %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fl, %bb.bt ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !94388

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !94389 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !94398
  %i.de = and i64 %i.dd, 15, !dbg !94408
  %i.df = icmp eq i64 %i.de, 0, !dbg !94409
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !94409

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !94410, !noalias !94105
  unreachable, !dbg !94410

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !94412
  %i.dh = lshr exact i64 %i.dg, 4, !dbg !94413
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !94414
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inoNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !94415, !noalias !94118
  store i64 18, ptr %i.aj, align 16, !dbg !94414, !alias.scope !94077, !noalias !94092
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94349

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !94348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !94348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !94348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !94348
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !94420, !range !74037, !noundef !13 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !94420
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !94422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !94422
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !94423

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !94424
  call void @llvm.experimental.noalias.scope.decl(metadata !94425), !dbg !94424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !94428
  %i.dl = shl nuw i64 %2, 4, !dbg !94428          ; 4 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !94428
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !94437, !prof !17871

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !94441
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !94441, !prof !18008

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !94443, !noalias !94444
  call void @llvm.experimental.noalias.scope.decl(metadata !94446), !dbg !94449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !94452, !noalias !94459
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !94452, !noalias !94460
  %i.do = load i64, ptr %i.e, align 8, !dbg !94452, !range !17915, !noalias !94459, !noundef !13
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !94461
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !94462
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !94462, !range !42896, !noalias !94459, !noundef !13 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !94462 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !94461, !prof !17871

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !94463, !noalias !94459
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !94464, !noalias !94460
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !94466, !noalias !94459, !nonnull !13, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !94467, !noalias !94459
  store i64 %i.dr, ptr %i.g, align 8, !dbg !94468, !alias.scope !94446, !noalias !94444
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !94468
  store ptr %i.du, ptr %i.dv, align 8, !dbg !94468, !alias.scope !94446, !noalias !94444
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !94468
  store i64 %2, ptr %i.dw, align 8, !dbg !94468, !alias.scope !94446, !noalias !94444
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !94469

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !94471, !noalias !94444
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !94471
  store i64 %2, ptr %i.dx, align 8, !dbg !94471, !noalias !94444
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !94471
  store ptr @47, ptr %i.dy, align 16, !dbg !94471, !noalias !94444
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !94471
  store i64 4, ptr %i.dz, align 8, !dbg !94471, !noalias !94444
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !94471
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !94471, !noalias !94444
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !94471
  store i64 %i.at, ptr %i.eb, align 8, !dbg !94471, !noalias !94444
  store i64 26, ptr %i.i, align 16, !dbg !94471, !noalias !94444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !94472, !noalias !94444
  store ptr %i.i, ptr %i.h, align 8, !dbg !94472, !noalias !94444
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !94472
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !94472, !noalias !94444
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !94475, !noalias !94481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !94484, !noalias !94444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !94484, !noalias !94444
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !94484
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !94485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !94489
  br label %bb.cc, !dbg !94490

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !94491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !94492, !noalias !94496
  store i64 0, ptr %i.d, align 8, !dbg !94500, !noalias !94496
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !94500 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !94500, !noalias !94496
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !94500 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !94500, !noalias !94496
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !94503, !noalias !94505

.loopexit.i.i:                                    ; preds = %bb.bf
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %bb.bg, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.bn, !dbg !94506, !noalias !94507

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !94508, !noalias !94496, !nonnull !13, !noundef !13
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !94521, !noalias !94496, !noundef !13
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !94522, !noalias !94507 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !94523
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !94526

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !94527, !noalias !94496
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !94527, !noalias !94507

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !94534, !noalias !94496, !nonnull !13, !noundef !13 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !94546, !noalias !94496, !noundef !13 ; 2 uses
  %i.ej = and i64 %i.ei, 15, !dbg !94547
  %i.ek = and i64 %i.ei, -16, !dbg !94550         ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !94551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !94554, !noalias !94496
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %2, !dbg !94556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !94565, !noalias !94568
  store ptr %i.eh, ptr %i.a, align 8, !dbg !94572, !alias.scope !94574, !noalias !94578
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !94572
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !94572, !alias.scope !94574, !noalias !94578
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !94572
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !94572, !alias.scope !94574, !noalias !94578
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !94572
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !94572, !alias.scope !94574, !noalias !94578
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !94572
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !94572, !alias.scope !94574, !noalias !94578
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !94579, !noalias !94507

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !94582, !noalias !94568
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !94583, !alias.scope !94594, !noalias !94601, !noundef !13 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !94605, !alias.scope !94594, !noalias !94601, !noundef !13
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !94583
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !94583

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !94583

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !94606
  store i64 %i.eu, ptr %i.en, align 8, !dbg !94606, !alias.scope !94594, !noalias !94601
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !94608, !alias.scope !94594, !noalias !94601, !nonnull !13, !noundef !13
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !94609, !noalias !94507 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !94610
  %i.ex = icmp eq i64 %i.ew, 16, !dbg !94611
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !94611

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !94622, !noalias !94507

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !94610 ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !94623
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.ey, align 1, !dbg !94628, !alias.scope !94630, !noalias !94634
  %i.fa = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !94641
  store i128 %i.fa, ptr %i.ez, align 16, !dbg !94652, !noalias !94634
  %i.fb = load i64, ptr %i.en, align 8, !dbg !94583, !alias.scope !94594, !noalias !94601, !noundef !13 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !94605, !alias.scope !94594, !noalias !94601, !noundef !13
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !94583
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !94583

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !94653, !noalias !94496
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bi, !dbg !94654, !noalias !94507

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bj, !dbg !94656, !noalias !94507

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !94654, !noalias !94507
  unreachable, !dbg !94654

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !94658 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bp unwind label %bb.bo, !dbg !94659, !noalias !94425

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !94662, !noalias !94663
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !94662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !94662, !noalias !94663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !94664, !noalias !94496
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bl, !dbg !94665, !noalias !94507

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !96691
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !96695

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 7, !dbg !96691
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !96691
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !96695

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !96696, !noalias !96587
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !96700, !noalias !96564
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !96701, !alias.scope !96559, !noalias !96574
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !96701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !96701, !noalias !96574
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !96708

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !96710, !noalias !96574
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !96711

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !96713, !noalias !96559

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !96716
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !96717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !96726, !noalias !96564
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !96727
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !96730
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !96730, !noalias !96564, !nonnull !13, !noundef !13 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !96748
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !96748, !noalias !96564, !noundef !13
  %i.ci = shl nuw nsw i64 %i.ch, 3, !dbg !96749   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !96758, !noalias !96564
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !96762, !noalias !96559

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !96763, !range !70618, !noalias !96564, !noundef !13 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !96763
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !96766
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !96766, !noalias !96564 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !96767

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !96768
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !96769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !96769, !noalias !96564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !96768, !noalias !96564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !96773, !noalias !96564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !96769, !noalias !96564
  store i8 %i.cj, ptr %i.k, align 16, !dbg !96769, !noalias !96564
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !96769
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !96769, !noalias !96564
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !96769, !noalias !96559

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !96773, !noalias !96564
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !96774

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !96777, !noalias !96564
  %i.cm = load i64, ptr %i.be, align 8, !dbg !96779, !alias.scope !96562, !noalias !96581, !noundef !13 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !96786
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !96786, !prof !17871

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !96792, !noalias !96564
  %i.co = load i64, ptr %i.be, align 8, !dbg !96793, !alias.scope !96562, !noalias !96581, !noundef !13 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !96799
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !96799, !prof !17871

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !96803, !alias.scope !96562, !noalias !96581, !nonnull !13, !noundef !13
  %i.cr = add i64 %i.cm, -8, !dbg !96812
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !96813
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !96777, !noalias !96559

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !96819, !range !74037, !noalias !96564, !noundef !13
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !96819
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !96822

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !96823, !noalias !96574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !96824, !noalias !96564
  br label %bb.ak, !dbg !96825

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !96824, !noalias !96564
  br label %bb.aj, !dbg !96827

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !96828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !96829, !noalias !96574
  store i64 18, ptr %i.aj, align 16, !dbg !96828, !alias.scope !96559, !noalias !96574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !96713, !noalias !96564
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !96830

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !96713, !noalias !96559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !96713, !noalias !96564
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !96831

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !96833, !alias.scope !96562, !noalias !96581, !nonnull !13, !noundef !13
  %i.cw = add i64 %i.co, -8, !dbg !96842
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !96843
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !96792, !noalias !96559

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !96848, !noalias !96559

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !96852, !range !74037, !noalias !96564, !noundef !13
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !96852
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !96854

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !96855, !noalias !96574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !96856, !noalias !96564
  br label %bb.ak, !dbg !96825

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !96856, !noalias !96564
  br label %bb.aj, !dbg !96857

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !96858, !noalias !96564
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !96859, !noalias !96564
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !96859
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !96859, !noalias !96564
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !96859
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !96860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !96859, !noalias !96574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !96866, !noalias !96564
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !96860, !alias.scope !96559, !noalias !96574
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !96860
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !96860, !alias.scope !96559, !noalias !96574
  br label %bb.ak, !dbg !96867

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !96869, !noalias !96559
  unreachable, !dbg !96869

common.resume:                                    ; preds = %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fl, %bb.bt ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !96870

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !96871 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !96880
  %i.de = and i64 %i.dd, 7, !dbg !96890
  %i.df = icmp eq i64 %i.de, 0, !dbg !96891
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !96891

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !96892, !noalias !96587
  unreachable, !dbg !96892

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !96894
  %i.dh = lshr exact i64 %i.dg, 3, !dbg !96895
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !96896
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inxNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !96897, !noalias !96600
  store i64 18, ptr %i.aj, align 16, !dbg !96896, !alias.scope !96559, !noalias !96574
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !96831

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !96830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !96830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !96830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !96830
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !96902, !range !74037, !noundef !13 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !96902
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !96904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !96904
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !96905

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !96906
  call void @llvm.experimental.noalias.scope.decl(metadata !96907), !dbg !96906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !96910
  %i.dl = shl nuw i64 %2, 3, !dbg !96910          ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !96910
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !96919, !prof !17871

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !96923
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !96923, !prof !18008

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !96925, !noalias !96926
  call void @llvm.experimental.noalias.scope.decl(metadata !96928), !dbg !96931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !96934, !noalias !96941
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !96934, !noalias !96942
  %i.do = load i64, ptr %i.e, align 8, !dbg !96934, !range !17915, !noalias !96941, !noundef !13
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !96943
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !96944
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !96944, !range !42896, !noalias !96941, !noundef !13 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !96944 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !96943, !prof !17871

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !96945, !noalias !96941
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !96946, !noalias !96942
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !96948, !noalias !96941, !nonnull !13, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !96949, !noalias !96941
  store i64 %i.dr, ptr %i.g, align 8, !dbg !96950, !alias.scope !96928, !noalias !96926
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !96950
  store ptr %i.du, ptr %i.dv, align 8, !dbg !96950, !alias.scope !96928, !noalias !96926
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !96950
  store i64 %2, ptr %i.dw, align 8, !dbg !96950, !alias.scope !96928, !noalias !96926
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !96951

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !96953, !noalias !96926
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !96953
  store i64 %2, ptr %i.dx, align 8, !dbg !96953, !noalias !96926
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !96953
  store ptr @50, ptr %i.dy, align 16, !dbg !96953, !noalias !96926
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !96953
  store i64 3, ptr %i.dz, align 8, !dbg !96953, !noalias !96926
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !96953
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !96953, !noalias !96926
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !96953
  store i64 %i.at, ptr %i.eb, align 8, !dbg !96953, !noalias !96926
  store i64 26, ptr %i.i, align 16, !dbg !96953, !noalias !96926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !96954, !noalias !96926
  store ptr %i.i, ptr %i.h, align 8, !dbg !96954, !noalias !96926
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !96954
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !96954, !noalias !96926
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !96957, !noalias !96963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !96966, !noalias !96926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !96966, !noalias !96926
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !96966
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !96967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !96971
  br label %bb.cc, !dbg !96972

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !96973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !96974, !noalias !96978
  store i64 0, ptr %i.d, align 8, !dbg !96982, !noalias !96978
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !96982 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !96982, !noalias !96978
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !96982 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !96982, !noalias !96978
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !96985, !noalias !96987

.loopexit.i.i:                                    ; preds = %bb.bf
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %bb.bg, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.bn, !dbg !96988, !noalias !96989

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !96990, !noalias !96978, !nonnull !13, !noundef !13
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !97003, !noalias !96978, !noundef !13
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !97004, !noalias !96989 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !97005
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !97008

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !97009, !noalias !96978
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !97009, !noalias !96989

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !97016, !noalias !96978, !nonnull !13, !noundef !13 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !97028, !noalias !96978, !noundef !13 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !97029
  %i.ek = and i64 %i.ei, -8, !dbg !97032          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !97033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !97036, !noalias !96978
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !97038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !97047, !noalias !97050
  store ptr %i.eh, ptr %i.a, align 8, !dbg !97054, !alias.scope !97056, !noalias !97060
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !97054
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !97054, !alias.scope !97056, !noalias !97060
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !97054
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !97054, !alias.scope !97056, !noalias !97060
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !97054
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !97054, !alias.scope !97056, !noalias !97060
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !97054
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !97054, !alias.scope !97056, !noalias !97060
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutxEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !97061, !noalias !96989

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !97064, !noalias !97050
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !97065, !alias.scope !97076, !noalias !97083, !noundef !13 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !97087, !alias.scope !97076, !noalias !97083, !noundef !13
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !97065
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !97065

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !97065

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !97088
  store i64 %i.eu, ptr %i.en, align 8, !dbg !97088, !alias.scope !97076, !noalias !97083
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !97090, !alias.scope !97076, !noalias !97083, !nonnull !13, !noundef !13
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !97091, !noalias !96989 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !97092
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !97093
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !97093

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !97104, !noalias !96989

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !97092 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !97105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !97110, !alias.scope !97112, !noalias !97115
  %i.fa = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !97123
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !97136, !noalias !97137
  %i.fb = load i64, ptr %i.en, align 8, !dbg !97065, !alias.scope !97076, !noalias !97083, !noundef !13 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !97087, !alias.scope !97076, !noalias !97083, !noundef !13
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !97065
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !97065

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !97138, !noalias !96978
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bi, !dbg !97139, !noalias !96989

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bj, !dbg !97141, !noalias !96989

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !97139, !noalias !96989
  unreachable, !dbg !97139

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !97143 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bp unwind label %bb.bo, !dbg !97144, !noalias !96907

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !97147, !noalias !97148
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !97147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !97147, !noalias !97148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !97149, !noalias !96978
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bl, !dbg !97150, !noalias !96989

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !97521
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !97525

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 7, !dbg !97521
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !97521
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !97525

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !97526, !noalias !97417
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !97530, !noalias !97394
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !97531, !alias.scope !97389, !noalias !97404
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !97531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !97531, !noalias !97404
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !97538

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !97540, !noalias !97404
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !97541

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !97543, !noalias !97389

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !97546
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !97547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !97556, !noalias !97394
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !97557
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !97560
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !97560, !noalias !97394, !nonnull !13, !noundef !13 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !97578
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !97578, !noalias !97394, !noundef !13
  %i.ci = shl nuw nsw i64 %i.ch, 3, !dbg !97579   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !97588, !noalias !97394
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !97592, !noalias !97389

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !97593, !range !70618, !noalias !97394, !noundef !13 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !97593
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !97596
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !97596, !noalias !97394 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !97597

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !97598
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !97599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !97599, !noalias !97394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !97598, !noalias !97394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !97603, !noalias !97394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !97599, !noalias !97394
  store i8 %i.cj, ptr %i.k, align 16, !dbg !97599, !noalias !97394
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !97599
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !97599, !noalias !97394
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !97599, !noalias !97389

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !97603, !noalias !97394
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !97604

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !97607, !noalias !97394
  %i.cm = load i64, ptr %i.be, align 8, !dbg !97609, !alias.scope !97392, !noalias !97411, !noundef !13 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !97616
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !97616, !prof !17871

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !97622, !noalias !97394
  %i.co = load i64, ptr %i.be, align 8, !dbg !97623, !alias.scope !97392, !noalias !97411, !noundef !13 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !97629
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !97629, !prof !17871

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !97633, !alias.scope !97392, !noalias !97411, !nonnull !13, !noundef !13
  %i.cr = add i64 %i.cm, -8, !dbg !97642
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !97643
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !97607, !noalias !97389

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !97649, !range !74037, !noalias !97394, !noundef !13
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !97649
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !97652

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !97653, !noalias !97404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !97654, !noalias !97394
  br label %bb.ak, !dbg !97655

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !97654, !noalias !97394
  br label %bb.aj, !dbg !97657

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !97658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !97659, !noalias !97404
  store i64 18, ptr %i.aj, align 16, !dbg !97658, !alias.scope !97389, !noalias !97404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !97543, !noalias !97394
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !97660

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !97543, !noalias !97389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !97543, !noalias !97394
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !97661

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !97663, !alias.scope !97392, !noalias !97411, !nonnull !13, !noundef !13
  %i.cw = add i64 %i.co, -8, !dbg !97672
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !97673
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !97622, !noalias !97389

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !97678, !noalias !97389

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !97682, !range !74037, !noalias !97394, !noundef !13
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !97682
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !97684

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !97685, !noalias !97404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !97686, !noalias !97394
  br label %bb.ak, !dbg !97655

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !97686, !noalias !97394
  br label %bb.aj, !dbg !97687

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !97688, !noalias !97394
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !97689, !noalias !97394
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !97689
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !97689, !noalias !97394
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !97689
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !97690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !97689, !noalias !97404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !97696, !noalias !97394
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !97690, !alias.scope !97389, !noalias !97404
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !97690
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !97690, !alias.scope !97389, !noalias !97404
  br label %bb.ak, !dbg !97697

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !97699, !noalias !97389
  unreachable, !dbg !97699

common.resume:                                    ; preds = %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fl, %bb.bt ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !97700

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !97701 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !97710
  %i.de = and i64 %i.dd, 7, !dbg !97720
  %i.df = icmp eq i64 %i.de, 0, !dbg !97721
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !97721

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !97722, !noalias !97417
  unreachable, !dbg !97722

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !97724
  %i.dh = lshr exact i64 %i.dg, 3, !dbg !97725
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !97726
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inyNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !97727, !noalias !97430
  store i64 18, ptr %i.aj, align 16, !dbg !97726, !alias.scope !97389, !noalias !97404
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !97661

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !97660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !97660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !97660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !97660
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !97732, !range !74037, !noundef !13 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !97732
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !97734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !97734
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !97735

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !97736
  call void @llvm.experimental.noalias.scope.decl(metadata !97737), !dbg !97736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !97740
  %i.dl = shl nuw i64 %2, 3, !dbg !97740          ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !97740
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !97749, !prof !17871

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !97753
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !97753, !prof !18008

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !97755, !noalias !97756
  call void @llvm.experimental.noalias.scope.decl(metadata !97758), !dbg !97761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !97764, !noalias !97771
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !97764, !noalias !97772
  %i.do = load i64, ptr %i.e, align 8, !dbg !97764, !range !17915, !noalias !97771, !noundef !13
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !97773
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !97774
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !97774, !range !42896, !noalias !97771, !noundef !13 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !97774 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !97773, !prof !17871

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !97775, !noalias !97771
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !97776, !noalias !97772
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !97778, !noalias !97771, !nonnull !13, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !97779, !noalias !97771
  store i64 %i.dr, ptr %i.g, align 8, !dbg !97780, !alias.scope !97758, !noalias !97756
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !97780
  store ptr %i.du, ptr %i.dv, align 8, !dbg !97780, !alias.scope !97758, !noalias !97756
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !97780
  store i64 %2, ptr %i.dw, align 8, !dbg !97780, !alias.scope !97758, !noalias !97756
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !97781

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !97783, !noalias !97756
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !97783
  store i64 %2, ptr %i.dx, align 8, !dbg !97783, !noalias !97756
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !97783
  store ptr @51, ptr %i.dy, align 16, !dbg !97783, !noalias !97756
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !97783
  store i64 3, ptr %i.dz, align 8, !dbg !97783, !noalias !97756
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !97783
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !97783, !noalias !97756
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !97783
  store i64 %i.at, ptr %i.eb, align 8, !dbg !97783, !noalias !97756
  store i64 26, ptr %i.i, align 16, !dbg !97783, !noalias !97756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !97784, !noalias !97756
  store ptr %i.i, ptr %i.h, align 8, !dbg !97784, !noalias !97756
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !97784
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !97784, !noalias !97756
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !97787, !noalias !97793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !97796, !noalias !97756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !97796, !noalias !97756
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !97796
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !97797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !97801
  br label %bb.cc, !dbg !97802

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !97803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !97804, !noalias !97808
  store i64 0, ptr %i.d, align 8, !dbg !97812, !noalias !97808
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !97812 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !97812, !noalias !97808
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !97812 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !97812, !noalias !97808
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !97815, !noalias !97817

.loopexit.i.i:                                    ; preds = %bb.bf
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %bb.bg, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.bn, !dbg !97818, !noalias !97819

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !97820, !noalias !97808, !nonnull !13, !noundef !13
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !97833, !noalias !97808, !noundef !13
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !97834, !noalias !97819 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !97835
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !97838

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !97839, !noalias !97808
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !97839, !noalias !97819

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !97846, !noalias !97808, !nonnull !13, !noundef !13 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !97858, !noalias !97808, !noundef !13 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !97859
  %i.ek = and i64 %i.ei, -8, !dbg !97862          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !97863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !97866, !noalias !97808
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !97868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !97877, !noalias !97880
  store ptr %i.eh, ptr %i.a, align 8, !dbg !97884, !alias.scope !97886, !noalias !97890
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !97884
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !97884, !alias.scope !97886, !noalias !97890
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !97884
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !97884, !alias.scope !97886, !noalias !97890
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !97884
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !97884, !alias.scope !97886, !noalias !97890
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !97884
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !97884, !alias.scope !97886, !noalias !97890
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !97891, !noalias !97819

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !97894, !noalias !97880
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !97895, !alias.scope !97906, !noalias !97913, !noundef !13 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !97917, !alias.scope !97906, !noalias !97913, !noundef !13
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !97895
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !97895

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !97895

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !97918
  store i64 %i.eu, ptr %i.en, align 8, !dbg !97918, !alias.scope !97906, !noalias !97913
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !97920, !alias.scope !97906, !noalias !97913, !nonnull !13, !noundef !13
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !97921, !noalias !97819 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !97922
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !97923
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !97923

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !97934, !noalias !97819

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !97922 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !97935
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !97940, !alias.scope !97942, !noalias !97945
  %i.fa = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !97953
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !97964, !noalias !97965
  %i.fb = load i64, ptr %i.en, align 8, !dbg !97895, !alias.scope !97906, !noalias !97913, !noundef !13 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !97917, !alias.scope !97906, !noalias !97913, !noundef !13
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !97895
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !97895

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !97966, !noalias !97808
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bi, !dbg !97967, !noalias !97819

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bj, !dbg !97969, !noalias !97819

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !97967, !noalias !97819
  unreachable, !dbg !97967

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !97971 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bp unwind label %bb.bo, !dbg !97972, !noalias !97737

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !97975, !noalias !97976
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !97975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !97975, !noalias !97976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !97977, !noalias !97808
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bl, !dbg !97978, !noalias !97819

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_9
