Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.09?download=true
inline.NumInlined: 13234
inline.NumDeleted: 6507
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1S_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
.thread.i:                                        ; preds = %bb.u
  %i.ca = and i64 %.sroa.082.0.copyload.i, 15, !dbg !88864
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !88864
  br i1 %i.cb, label %bb.z, label %bb.x, !dbg !88865

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBc_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB25_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #33, !dbg !88866, !noalias !88699
  %i.cc = load <2 x i64>, ptr %i.n, align 16, !dbg !88867, !noalias !88695
  store <2 x i64> %i.cc, ptr %i.ak, align 16, !dbg !88868, !alias.scope !88693, !noalias !88696
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !88868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bc, i64 56, i1 false), !dbg !88868, !noalias !88696
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !88869

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !88870, !noalias !88696
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !88871

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.r) #29
          to label %common.resume unwind label %bb.aq, !dbg !88872, !noalias !88693

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !88873
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !88874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !88875, !noalias !88695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !88876, !noalias !88695
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !dbg !88877, !alias.scope !88713, !noalias !88695
  call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.q, i64 noundef %.sroa.0.0.i.i), !dbg !88878, !noalias !88699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !88879, !noalias !88695
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !88880
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !88880, !noalias !88695, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !88881
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !88881, !noalias !88695, !noundef !2617
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !88882   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !88883, !noalias !88695
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !88884, !noalias !88693

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.m, align 16, !dbg !88885, !range !2834, !noalias !88695, !noundef !2617 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !88885
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !88886
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !88886, !noalias !88695 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !88887

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !88888
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !88889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !88889, !noalias !88695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !88888, !noalias !88695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !88890, !noalias !88695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !88889, !noalias !88695
  store i8 %i.ck, ptr %i.k, align 16, !dbg !88889, !noalias !88695
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !88889
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !88889, !noalias !88695
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBc_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB25_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !88889, !noalias !88693

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !88890, !noalias !88695
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !88891

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !88892, !noalias !88695
  %i.cn = load i64, ptr %i.bf, align 8, !dbg !88893, !alias.scope !88694, !noalias !88698, !noundef !2617 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !88894
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !88894, !prof !2700

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !88895, !noalias !88695
  %i.cp = load i64, ptr %i.bf, align 8, !dbg !88896, !alias.scope !88694, !noalias !88698, !noundef !2617 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !88897
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !88897, !prof !2700

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bt, align 8, !dbg !88898, !alias.scope !88694, !noalias !88698, !nonnull !2617, !noundef !2617
  %i.cs = add i64 %i.cn, -8, !dbg !88899
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !88900
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !88892, !noalias !88693

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.p, align 8, !dbg !88901, !range !2852, !noalias !88695, !noundef !2617
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !88901
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !88902

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !88903, !noalias !88696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !88904, !noalias !88695
  br label %bb.ak, !dbg !88905

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !88904, !noalias !88695
  br label %bb.aj, !dbg !88906

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !88907
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !dbg !88908, !noalias !88696
  store i64 18, ptr %i.ak, align 16, !dbg !88907, !alias.scope !88693, !noalias !88696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !88872, !noalias !88695
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !88909

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.r), !dbg !88872, !noalias !88693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !88872, !noalias !88695
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !88910

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bt, align 8, !dbg !88911, !alias.scope !88694, !noalias !88698, !nonnull !2617, !noundef !2617
  %i.cx = add i64 %i.cp, -8, !dbg !88912
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !88913
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !88895, !noalias !88693

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #30
          to label %.cont.i unwind label %bb.y, !dbg !88914, !noalias !88693

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.o, align 8, !dbg !88915, !range !2852, !noalias !88695, !noundef !2617
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !88915
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !88916

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !88917, !noalias !88696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !88918, !noalias !88695
  br label %bb.ak, !dbg !88905

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !88918, !noalias !88695
  br label %bb.aj, !dbg !88919

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !88920, !noalias !88695
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !88921, !noalias !88695
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !88921
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !88921, !noalias !88695
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !88921
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 9, !dbg !88922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !88921, !noalias !88696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !88923, !noalias !88695
  store i64 %.sroa.050.0.copyload.i, ptr %i.ak, align 16, !dbg !88922, !alias.scope !88693, !noalias !88696
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !88922
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !88922, !alias.scope !88693, !noalias !88696
  br label %bb.ak, !dbg !88924

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !88925, !noalias !88693
  unreachable, !dbg !88925

common.resume:                                    ; preds = %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %i.fh, %bb.bs ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !88926

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8, !dbg !88927 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !88928
  %i.df = and i64 %i.de, 7, !dbg !88929
  %i.dg = icmp eq i64 %i.df, 0, !dbg !88930
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !88930

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !88931, !noalias !88699
  unreachable, !dbg !88931

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.au, -8, !dbg !88932
  %i.di = lshr exact i64 %i.dh, 4, !dbg !88933
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !88934
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #33, !dbg !88935, !noalias !88700
  store i64 18, ptr %i.ak, align 16, !dbg !88934, !alias.scope !88693, !noalias !88696
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !88910

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB23_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !88909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !88909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !88909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !88909
  %i.dk = load i64, ptr %i.ak, align 16, !dbg !88936, !range !2852, !noundef !2617 ; 2 uses
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !88936
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !88937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false), !dbg !88937
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !88938

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !88749
  call void @llvm.experimental.noalias.scope.decl(metadata !88742), !dbg !88749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !88939
  %i.dm = shl i64 %2, 4, !dbg !88939              ; 3 uses
  %i.dn = icmp ugt i64 %2, 1152921504606846975, !dbg !88939
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB25_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !88940, !prof !2700

bb.av:                                            ; preds = %bb.au
  %i.do = icmp ugt i64 %i.dm, %i.au, !dbg !88941
  br i1 %i.do, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB25_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !88941, !prof !2714

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !88942, !noalias !88743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !88943, !noalias !88743
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !88944, !alias.scope !88744, !noalias !88743
  call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.f, i64 noundef %2), !dbg !88945, !noalias !88742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !88946, !noalias !88743
  br i1 %5, label %bb.bu, label %bb.ax, !dbg !88947

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB25_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dm, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !88948, !noalias !88743
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !88948
  store i64 %2, ptr %i.dp, align 8, !dbg !88948, !noalias !88743
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !88948
  store ptr @38, ptr %i.dq, align 16, !dbg !88948, !noalias !88743
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !88948
  store i64 43, ptr %i.dr, align 8, !dbg !88948, !noalias !88743
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !88948
  store i64 %.sroa.03.038.i, ptr %i.ds, align 16, !dbg !88948, !noalias !88743
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !88948
  store i64 %i.au, ptr %i.dt, align 8, !dbg !88948, !noalias !88743
  store i64 26, ptr %i.i, align 16, !dbg !88948, !noalias !88743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !88949, !noalias !88743
  store ptr %i.i, ptr %i.h, align 8, !dbg !88949, !noalias !88743
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !88949
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !88949, !noalias !88743
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !88950, !noalias !88746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !88951, !noalias !88743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !88951, !noalias !88743
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !88951
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !88952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !88953
  br label %bb.cb, !dbg !88954

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !88955
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !88955
  %.val16.i = load ptr, ptr %i.du, align 8, !dbg !88955, !noalias !88743 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !88955
  %.val17.i = load i64, ptr %i.dv, align 8, !dbg !88955, !noalias !88743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !88956, !noalias !88750
  store i64 0, ptr %i.d, align 8, !dbg !88957, !noalias !88750
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !88957 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dw, align 8, !dbg !88957, !noalias !88750
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !88957 ; 3 uses
  store i64 0, ptr %i.dx, align 8, !dbg !88957, !noalias !88750
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dm, i8 noundef 0)
          to label %bb.az unwind label %.loopexit.split-lp.i.i, !dbg !88958, !noalias !88751

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
          to label %.body.i unwind label %bb.bm, !dbg !88959, !noalias !88752

bb.az:                                            ; preds = %bb.ax
  %i.dy = load ptr, ptr %i.dw, align 8, !dbg !88960, !noalias !88750, !nonnull !2617, !noundef !2617
  %i.dz = load i64, ptr %i.dx, align 8, !dbg !88961, !noalias !88750, !noundef !2617
  %i.ea = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.dy, i64 noundef %i.dz)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !88962, !noalias !88752 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %.not.i.i = icmp eq ptr %i.ea, null, !dbg !88963
  br i1 %.not.i.i, label %bb.bc, label %bb.bb, !dbg !88964

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !88965, !noalias !88750
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.ea)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !88965, !noalias !88752

bb.bc:                                            ; preds = %bb.ba
  %i.eb = load ptr, ptr %i.dw, align 8, !dbg !88966, !noalias !88750, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ec = load i64, ptr %i.dx, align 8, !dbg !88967, !noalias !88750, !noundef !2617 ; 2 uses
  %i.ed = and i64 %i.ec, 15, !dbg !88968
  %i.ee = and i64 %i.ec, -16, !dbg !88969         ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ee, !dbg !88970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !88971, !noalias !88750
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !88972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88973, !noalias !88756
  store ptr %i.eb, ptr %i.a, align 8, !dbg !88974, !alias.scope !88757, !noalias !88758
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88974
  store i64 %i.ee, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !88974, !alias.scope !88757, !noalias !88758
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88974
  store ptr %i.ef, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !88974, !alias.scope !88757, !noalias !88758
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !88974
  store i64 %i.ed, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !88974, !alias.scope !88757, !noalias !88758
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !88974
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !88974, !alias.scope !88757, !noalias !88758
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !88975, !noalias !88752

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88976, !noalias !88756
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ej = load i64, ptr %i.eh, align 8, !dbg !88977, !alias.scope !88759, !noalias !88760, !noundef !2617 ; 2 uses
  %i.ek = load i64, ptr %i.ei, align 8, !dbg !88978, !alias.scope !88759, !noalias !88760, !noundef !2617
  %i.el = icmp ult i64 %i.ej, %i.ek, !dbg !88977
  br i1 %i.el, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !88977

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.be, !dbg !88977

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.en = phi i64 [ %i.ej, %.lr.ph.i.i.i ], [ %i.ex, %bb.bg ] ; 3 uses
  %i.eo = add nuw i64 %i.en, 1, !dbg !88979
  store i64 %i.eo, ptr %i.eh, align 8, !dbg !88979, !alias.scope !88759, !noalias !88760
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !88980, !alias.scope !88759, !noalias !88760, !nonnull !2617, !noundef !2617
  %i.ep = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.em, i64 noundef %i.en)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !88981, !noalias !88752 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.be
  %i.eq = extractvalue { ptr, i64 } %i.ep, 1, !dbg !88982
  %i.er = icmp eq i64 %i.eq, 16, !dbg !88983
  br i1 %i.er, label %bb.bg, label %bb.bf, !dbg !88983

bb.bf:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !88984, !noalias !88752

.noexc6.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.es = extractvalue { ptr, i64 } %i.ep, 0, !dbg !88982 ; 4 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.en, !dbg !88985 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.es, align 1, !dbg !88986, !alias.scope !88761, !noalias !88762
  %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 4, !dbg !88986
  %.sroa.4.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i.i, align 1, !dbg !88986, !alias.scope !88761, !noalias !88762
  %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !88986
  %.sroa.4.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i.i, align 1, !dbg !88986, !alias.scope !88761, !noalias !88762
  %i.eu = call i32 @llvm.bswap.i32(i32 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !88987
  %i.ev = call i32 @llvm.bswap.i32(i32 %.sroa.4.sroa.4.0.copyload.i.i.i.i.i), !dbg !88988
  %i.ew = call i64 @llvm.bswap.i64(i64 %.sroa.4.sroa.5.0.copyload.i.i.i.i.i), !dbg !88989
  store i32 %i.eu, ptr %i.et, align 8, !dbg !88990, !noalias !88762
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 4, !dbg !88990
  store i32 %i.ev, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 4, !dbg !88990, !noalias !88762
  %.sroa.5.0..sroa_idx.i.i3.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8, !dbg !88990
  store i64 %i.ew, ptr %.sroa.5.0..sroa_idx.i.i3.i.i.i, align 8, !dbg !88990, !noalias !88762
  %i.ex = load i64, ptr %i.eh, align 8, !dbg !88977, !alias.scope !88759, !noalias !88760, !noundef !2617 ; 2 uses
  %i.ey = load i64, ptr %i.ei, align 8, !dbg !88978, !alias.scope !88759, !noalias !88760, !noundef !2617
  %i.ez = icmp ult i64 %i.ex, %i.ey, !dbg !88977
  br i1 %i.ez, label %bb.be, label %.loopexit12.i.i, !dbg !88977

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !88991, !noalias !88750
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bh, !dbg !88992, !noalias !88752

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bi, !dbg !88993, !noalias !88752

bb.bi:                                            ; preds = %bb.bh
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !88992, !noalias !88752
  unreachable, !dbg !88992

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !88994 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bo unwind label %bb.bn, !dbg !88995, !noalias !88742

bb.bj:                                            ; preds = %bb.bb
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !88996, !noalias !88770
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !88996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !88996, !noalias !88770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !88997, !noalias !88750
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bk, !dbg !88998, !noalias !88752

bb.bk:                                            ; preds = %bb.bj
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bl, !dbg !88999, !noalias !88752

bb.bl:                                            ; preds = %bb.bk
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1P_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
.thread.i:                                        ; preds = %bb.u
  %i.ca = and i64 %.sroa.082.0.copyload.i, 15, !dbg !89713
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !89713
  br i1 %i.cb, label %bb.z, label %bb.x, !dbg !89714

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBc_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB22_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #33, !dbg !89715, !noalias !89551
  %i.cc = load <2 x i64>, ptr %i.n, align 16, !dbg !89716, !noalias !89547
  store <2 x i64> %i.cc, ptr %i.ak, align 16, !dbg !89717, !alias.scope !89545, !noalias !89548
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !89717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bc, i64 56, i1 false), !dbg !89717, !noalias !89548
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !89718

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !89719, !noalias !89548
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !89720

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.r) #29
          to label %common.resume unwind label %bb.aq, !dbg !89721, !noalias !89545

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !89722
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !89723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !89724, !noalias !89547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !89725, !noalias !89547
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !dbg !89726, !alias.scope !89565, !noalias !89547
  call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.q, i64 noundef %.sroa.0.0.i.i), !dbg !89727, !noalias !89551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !89728, !noalias !89547
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !89729
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !89729, !noalias !89547, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !89730
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !89730, !noalias !89547, !noundef !2617
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !89731   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !89732, !noalias !89547
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !89733, !noalias !89545

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.m, align 16, !dbg !89734, !range !2834, !noalias !89547, !noundef !2617 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !89734
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !89735
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !89735, !noalias !89547 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !89736

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !89737
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !89738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !89738, !noalias !89547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !89737, !noalias !89547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !89739, !noalias !89547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !89738, !noalias !89547
  store i8 %i.ck, ptr %i.k, align 16, !dbg !89738, !noalias !89547
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !89738
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !89738, !noalias !89547
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBc_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB22_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !89738, !noalias !89545

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !89739, !noalias !89547
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !89740

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !89741, !noalias !89547
  %i.cn = load i64, ptr %i.bf, align 8, !dbg !89742, !alias.scope !89546, !noalias !89550, !noundef !2617 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !89743
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !89743, !prof !2700

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !89744, !noalias !89547
  %i.cp = load i64, ptr %i.bf, align 8, !dbg !89745, !alias.scope !89546, !noalias !89550, !noundef !2617 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !89746
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !89746, !prof !2700

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bt, align 8, !dbg !89747, !alias.scope !89546, !noalias !89550, !nonnull !2617, !noundef !2617
  %i.cs = add i64 %i.cn, -8, !dbg !89748
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !89749
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !89741, !noalias !89545

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.p, align 8, !dbg !89750, !range !2852, !noalias !89547, !noundef !2617
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !89750
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !89751

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !89752, !noalias !89548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !89753, !noalias !89547
  br label %bb.ak, !dbg !89754

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !89753, !noalias !89547
  br label %bb.aj, !dbg !89755

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !89756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !dbg !89757, !noalias !89548
  store i64 18, ptr %i.ak, align 16, !dbg !89756, !alias.scope !89545, !noalias !89548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !89721, !noalias !89547
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !89758

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.r), !dbg !89721, !noalias !89545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !89721, !noalias !89547
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !89759

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bt, align 8, !dbg !89760, !alias.scope !89546, !noalias !89550, !nonnull !2617, !noundef !2617
  %i.cx = add i64 %i.cp, -8, !dbg !89761
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !89762
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !89744, !noalias !89545

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #30
          to label %.cont.i unwind label %bb.y, !dbg !89763, !noalias !89545

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.o, align 8, !dbg !89764, !range !2852, !noalias !89547, !noundef !2617
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !89764
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !89765

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !89766, !noalias !89548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !89767, !noalias !89547
  br label %bb.ak, !dbg !89754

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !89767, !noalias !89547
  br label %bb.aj, !dbg !89768

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !89769, !noalias !89547
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !89770, !noalias !89547
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !89770
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !89770, !noalias !89547
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !89770
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 9, !dbg !89771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !89770, !noalias !89548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !89772, !noalias !89547
  store i64 %.sroa.050.0.copyload.i, ptr %i.ak, align 16, !dbg !89771, !alias.scope !89545, !noalias !89548
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !89771
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !89771, !alias.scope !89545, !noalias !89548
  br label %bb.ak, !dbg !89773

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !89774, !noalias !89545
  unreachable, !dbg !89774

common.resume:                                    ; preds = %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %i.ff, %bb.bs ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !89775

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8, !dbg !89776 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !89777
  %i.df = and i64 %i.de, 3, !dbg !89778
  %i.dg = icmp eq i64 %i.df, 0, !dbg !89779
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !89779

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !89780, !noalias !89551
  unreachable, !dbg !89780

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.au, -8, !dbg !89781
  %i.di = lshr exact i64 %i.dh, 4, !dbg !89782
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !89783
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #33, !dbg !89784, !noalias !89552
  store i64 18, ptr %i.ak, align 16, !dbg !89783, !alias.scope !89545, !noalias !89548
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !89759

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB20_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !89758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !89758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !89758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !89758
  %i.dk = load i64, ptr %i.ak, align 16, !dbg !89785, !range !2852, !noundef !2617 ; 2 uses
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !89785
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !89786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false), !dbg !89786
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !89787

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !89604
  call void @llvm.experimental.noalias.scope.decl(metadata !89597), !dbg !89604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !89788
  %i.dm = shl i64 %2, 4, !dbg !89788              ; 3 uses
  %i.dn = icmp ugt i64 %2, 1152921504606846975, !dbg !89788
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB22_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !89789, !prof !2700

bb.av:                                            ; preds = %bb.au
  %i.do = icmp ugt i64 %i.dm, %i.au, !dbg !89790
  br i1 %i.do, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB22_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !89790, !prof !2714

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !89791, !noalias !89598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !89792, !noalias !89598
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !89793, !alias.scope !89599, !noalias !89598
  call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.f, i64 noundef %2), !dbg !89794, !noalias !89597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !89795, !noalias !89598
  br i1 %5, label %bb.bu, label %bb.ax, !dbg !89796

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB22_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dm, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !89797, !noalias !89598
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !89797
  store i64 %2, ptr %i.dp, align 8, !dbg !89797, !noalias !89598
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !89797
  store ptr @39, ptr %i.dq, align 16, !dbg !89797, !noalias !89598
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !89797
  store i64 40, ptr %i.dr, align 8, !dbg !89797, !noalias !89598
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !89797
  store i64 %.sroa.03.038.i, ptr %i.ds, align 16, !dbg !89797, !noalias !89598
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !89797
  store i64 %i.au, ptr %i.dt, align 8, !dbg !89797, !noalias !89598
  store i64 26, ptr %i.i, align 16, !dbg !89797, !noalias !89598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !89798, !noalias !89598
  store ptr %i.i, ptr %i.h, align 8, !dbg !89798, !noalias !89598
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !89798
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !89798, !noalias !89598
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !89799, !noalias !89601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !89800, !noalias !89598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !89800, !noalias !89598
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !89800
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !89801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !89802
  br label %bb.cb, !dbg !89803

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !89804
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !89804
  %.val16.i = load ptr, ptr %i.du, align 8, !dbg !89804, !noalias !89598 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !89804
  %.val17.i = load i64, ptr %i.dv, align 8, !dbg !89804, !noalias !89598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !89805, !noalias !89605
  store i64 0, ptr %i.d, align 8, !dbg !89806, !noalias !89605
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !89806 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dw, align 8, !dbg !89806, !noalias !89605
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !89806 ; 3 uses
  store i64 0, ptr %i.dx, align 8, !dbg !89806, !noalias !89605
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dm, i8 noundef 0)
          to label %bb.az unwind label %.loopexit.split-lp.i.i, !dbg !89807, !noalias !89606

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
          to label %.body.i unwind label %bb.bm, !dbg !89808, !noalias !89607

bb.az:                                            ; preds = %bb.ax
  %i.dy = load ptr, ptr %i.dw, align 8, !dbg !89809, !noalias !89605, !nonnull !2617, !noundef !2617
  %i.dz = load i64, ptr %i.dx, align 8, !dbg !89810, !noalias !89605, !noundef !2617
  %i.ea = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.dy, i64 noundef %i.dz)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !89811, !noalias !89607 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %.not.i.i = icmp eq ptr %i.ea, null, !dbg !89812
  br i1 %.not.i.i, label %bb.bc, label %bb.bb, !dbg !89813

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !89814, !noalias !89605
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.ea)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !89814, !noalias !89607

bb.bc:                                            ; preds = %bb.ba
  %i.eb = load ptr, ptr %i.dw, align 8, !dbg !89815, !noalias !89605, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ec = load i64, ptr %i.dx, align 8, !dbg !89816, !noalias !89605, !noundef !2617 ; 2 uses
  %i.ed = and i64 %i.ec, 15, !dbg !89817
  %i.ee = and i64 %i.ec, -16, !dbg !89818         ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ee, !dbg !89819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !89820, !noalias !89605
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !89821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !89822, !noalias !89611
  store ptr %i.eb, ptr %i.a, align 8, !dbg !89823, !alias.scope !89612, !noalias !89613
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !89823
  store i64 %i.ee, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !89823, !alias.scope !89612, !noalias !89613
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !89823
  store ptr %i.ef, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !89823, !alias.scope !89612, !noalias !89613
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !89823
  store i64 %i.ed, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !89823, !alias.scope !89612, !noalias !89613
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !89823
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !89823, !alias.scope !89612, !noalias !89613
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2o_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !89824, !noalias !89607

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !89825, !noalias !89611
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ej = load i64, ptr %i.eh, align 8, !dbg !89826, !alias.scope !89614, !noalias !89615, !noundef !2617 ; 2 uses
  %i.ek = load i64, ptr %i.ei, align 8, !dbg !89827, !alias.scope !89614, !noalias !89615, !noundef !2617
  %i.el = icmp ult i64 %i.ej, %i.ek, !dbg !89826
  br i1 %i.el, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !89826

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.be, !dbg !89826

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.en = phi i64 [ %i.ej, %.lr.ph.i.i.i ], [ %i.ev, %bb.bg ] ; 3 uses
  %i.eo = add nuw i64 %i.en, 1, !dbg !89828
  store i64 %i.eo, ptr %i.eh, align 8, !dbg !89828, !alias.scope !89614, !noalias !89615
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !89829, !alias.scope !89614, !noalias !89615, !nonnull !2617, !noundef !2617
  %i.ep = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.em, i64 noundef %i.en)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !89830, !noalias !89607 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.be
  %i.eq = extractvalue { ptr, i64 } %i.ep, 1, !dbg !89831
  %i.er = icmp eq i64 %i.eq, 16, !dbg !89832
  br i1 %i.er, label %bb.bg, label %bb.bf, !dbg !89832

bb.bf:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !89833, !noalias !89607

.noexc6.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.es = extractvalue { ptr, i64 } %i.ep, 0, !dbg !89831 ; 2 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.en, !dbg !89834
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.es, align 1, !dbg !89835, !alias.scope !89616, !noalias !89617
  %i.eu = call i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !89836
  store i128 %i.eu, ptr %i.et, align 4, !dbg !89837, !noalias !89617
  %i.ev = load i64, ptr %i.eh, align 8, !dbg !89826, !alias.scope !89614, !noalias !89615, !noundef !2617 ; 2 uses
  %i.ew = load i64, ptr %i.ei, align 8, !dbg !89827, !alias.scope !89614, !noalias !89615, !noundef !2617
  %i.ex = icmp ult i64 %i.ev, %i.ew, !dbg !89826
  br i1 %i.ex, label %bb.be, label %.loopexit12.i.i, !dbg !89826

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !89838, !noalias !89605
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bh, !dbg !89839, !noalias !89607

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bi, !dbg !89840, !noalias !89607

bb.bi:                                            ; preds = %bb.bh
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !89839, !noalias !89607
  unreachable, !dbg !89839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !89841 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bo unwind label %bb.bn, !dbg !89842, !noalias !89597

bb.bj:                                            ; preds = %bb.bb
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !89843, !noalias !89619
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !89843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !89843, !noalias !89619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !89844, !noalias !89605
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bk, !dbg !89845, !noalias !89607

bb.bk:                                            ; preds = %bb.bj
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bl, !dbg !89846, !noalias !89607

bb.bl:                                            ; preds = %bb.bk
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !89845, !noalias !89607
  unreachable, !dbg !89845

bb.bm:                                            ; preds = %bb.ay
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !89847, !noalias !89607
  unreachable, !dbg !89847
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !91351
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !91352

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 7, !dbg !91351
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !91351
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !91352

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !91353, !noalias !91188
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !91354, !noalias !91184
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !91355, !alias.scope !91182, !noalias !91185
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !91355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !91355, !noalias !91185
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !91356

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !91357, !noalias !91185
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !91358

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !91359, !noalias !91182

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !91360
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !91361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !91362, !noalias !91184
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !91363
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !91364
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !91364, !noalias !91184, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !91365
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !91365, !noalias !91184, !noundef !2617
  %i.ci = shl nuw nsw i64 %i.ch, 3, !dbg !91366   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !91367, !noalias !91184
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !91368, !noalias !91182

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !91369, !range !2834, !noalias !91184, !noundef !2617 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !91369
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !91370
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !91370, !noalias !91184 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !91371

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !91372
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !91373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !91373, !noalias !91184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !91372, !noalias !91184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !91374, !noalias !91184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !91373, !noalias !91184
  store i8 %i.cj, ptr %i.k, align 16, !dbg !91373, !noalias !91184
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !91373
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !91373, !noalias !91184
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !91373, !noalias !91182

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !91374, !noalias !91184
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !91375

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !91376, !noalias !91184
  %i.cm = load i64, ptr %i.be, align 8, !dbg !91377, !alias.scope !91183, !noalias !91187, !noundef !2617 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !91378
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !91378, !prof !2700

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !91379, !noalias !91184
  %i.co = load i64, ptr %i.be, align 8, !dbg !91380, !alias.scope !91183, !noalias !91187, !noundef !2617 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !91381
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !91381, !prof !2700

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !91382, !alias.scope !91183, !noalias !91187, !nonnull !2617, !noundef !2617
  %i.cr = add i64 %i.cm, -8, !dbg !91383
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !91384
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !91376, !noalias !91182

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !91385, !range !2852, !noalias !91184, !noundef !2617
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !91385
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !91386

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !91387, !noalias !91185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !91388, !noalias !91184
  br label %bb.ak, !dbg !91389

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !91388, !noalias !91184
  br label %bb.aj, !dbg !91390

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !91391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !91392, !noalias !91185
  store i64 18, ptr %i.aj, align 16, !dbg !91391, !alias.scope !91182, !noalias !91185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !91359, !noalias !91184
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !91393

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !91359, !noalias !91182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !91359, !noalias !91184
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !91394

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !91395, !alias.scope !91183, !noalias !91187, !nonnull !2617, !noundef !2617
  %i.cw = add i64 %i.co, -8, !dbg !91396
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !91397
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !91379, !noalias !91182

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !91398, !noalias !91182

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !91399, !range !2852, !noalias !91184, !noundef !2617
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !91399
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !91400

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !91401, !noalias !91185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !91402, !noalias !91184
  br label %bb.ak, !dbg !91389

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !91402, !noalias !91184
  br label %bb.aj, !dbg !91403

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !91404, !noalias !91184
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !91405, !noalias !91184
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !91405
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !91405, !noalias !91184
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !91405
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !91406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !91405, !noalias !91185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !91407, !noalias !91184
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !91406, !alias.scope !91182, !noalias !91185
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !91406
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !91406, !alias.scope !91182, !noalias !91185
  br label %bb.ak, !dbg !91408

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !91409, !noalias !91182
  unreachable, !dbg !91409

common.resume:                                    ; preds = %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fl, %bb.bt ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !91410

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !91411 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !91412
  %i.de = and i64 %i.dd, 7, !dbg !91413
  %i.df = icmp eq i64 %i.de, 0, !dbg !91414
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !91414

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !91415, !noalias !91188
  unreachable, !dbg !91415

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !91416
  %i.dh = lshr exact i64 %i.dg, 3, !dbg !91417
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !91418
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !91419, !noalias !91189
  store i64 18, ptr %i.aj, align 16, !dbg !91418, !alias.scope !91182, !noalias !91185
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !91394

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !91393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !91393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !91393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !91393
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !91420, !range !2852, !noundef !2617 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !91420
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !91421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !91421
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !91422

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !91238
  call void @llvm.experimental.noalias.scope.decl(metadata !91229), !dbg !91238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !91423
  %i.dl = shl i64 %2, 3, !dbg !91423              ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !91423
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !91424, !prof !2700

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !91425
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !91425, !prof !2714

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !91426, !noalias !91230
  call void @llvm.experimental.noalias.scope.decl(metadata !91231), !dbg !91427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !91428, !noalias !91232
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !91428, !noalias !91233
  %i.do = load i64, ptr %i.e, align 8, !dbg !91428, !range !2703, !noalias !91232, !noundef !2617
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !91429
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !91430
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !91430, !range !2756, !noalias !91232, !noundef !2617 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !91430 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !91429, !prof !2700

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !91431, !noalias !91232
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !91432, !noalias !91233
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !91433, !noalias !91232, !nonnull !2617, !noundef !2617 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !91434, !noalias !91232
  store i64 %i.dr, ptr %i.g, align 8, !dbg !91435, !alias.scope !91231, !noalias !91230
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !91435
  store ptr %i.du, ptr %i.dv, align 8, !dbg !91435, !alias.scope !91231, !noalias !91230
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !91435
  store i64 %2, ptr %i.dw, align 8, !dbg !91435, !alias.scope !91231, !noalias !91230
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !91436

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !91437, !noalias !91230
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !91437
  store i64 %2, ptr %i.dx, align 8, !dbg !91437, !noalias !91230
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !91437
  store ptr @41, ptr %i.dy, align 16, !dbg !91437, !noalias !91230
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !91437
  store i64 3, ptr %i.dz, align 8, !dbg !91437, !noalias !91230
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !91437
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !91437, !noalias !91230
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !91437
  store i64 %i.at, ptr %i.eb, align 8, !dbg !91437, !noalias !91230
  store i64 26, ptr %i.i, align 16, !dbg !91437, !noalias !91230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !91438, !noalias !91230
  store ptr %i.i, ptr %i.h, align 8, !dbg !91438, !noalias !91230
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !91438
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !91438, !noalias !91230
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !91439, !noalias !91235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !91440, !noalias !91230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !91440, !noalias !91230
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !91440
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !91441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !91442
  br label %bb.cc, !dbg !91443

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !91444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !91445, !noalias !91239
  store i64 0, ptr %i.d, align 8, !dbg !91446, !noalias !91239
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !91446 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !91446, !noalias !91239
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !91446 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !91446, !noalias !91239
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !91447, !noalias !91240

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
          to label %.body.i unwind label %bb.bn, !dbg !91448, !noalias !91241

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !91449, !noalias !91239, !nonnull !2617, !noundef !2617
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !91450, !noalias !91239, !noundef !2617
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !91451, !noalias !91241 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !91452
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !91453

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !91454, !noalias !91239
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !91454, !noalias !91241

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !91455, !noalias !91239, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !91456, !noalias !91239, !noundef !2617 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !91457
  %i.ek = and i64 %i.ei, -8, !dbg !91458          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !91459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !91460, !noalias !91239
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !91461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !91462, !noalias !91245
  store ptr %i.eh, ptr %i.a, align 8, !dbg !91463, !alias.scope !91246, !noalias !91247
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !91463
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !91463, !alias.scope !91246, !noalias !91247
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !91463
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !91463, !alias.scope !91246, !noalias !91247
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !91463
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !91463, !alias.scope !91246, !noalias !91247
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !91463
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !91463, !alias.scope !91246, !noalias !91247
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutdEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !91464, !noalias !91241

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !91465, !noalias !91245
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !91466, !alias.scope !91248, !noalias !91249, !noundef !2617 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !91467, !alias.scope !91248, !noalias !91249, !noundef !2617
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !91466
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !91466

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !91466

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !91468
  store i64 %i.eu, ptr %i.en, align 8, !dbg !91468, !alias.scope !91248, !noalias !91249
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !91469, !alias.scope !91248, !noalias !91249, !nonnull !2617, !noundef !2617
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !91470, !noalias !91241 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !91471
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !91472
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !91472

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !91473, !noalias !91241

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !91471 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !91474
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !91475, !alias.scope !91250, !noalias !91251
  %i.fa = call i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !91476
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !91477, !noalias !91256
  %i.fb = load i64, ptr %i.en, align 8, !dbg !91466, !alias.scope !91248, !noalias !91249, !noundef !2617 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !91467, !alias.scope !91248, !noalias !91249, !noundef !2617
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !91466
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !91466

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !91478, !noalias !91239
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bi, !dbg !91479, !noalias !91241

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bj, !dbg !91480, !noalias !91241

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !91479, !noalias !91241
  unreachable, !dbg !91479

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !91481 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bp unwind label %bb.bo, !dbg !91482, !noalias !91229

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !91483, !noalias !91257
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !91483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !91483, !noalias !91257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !91484, !noalias !91239
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bl, !dbg !91485, !noalias !91241

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !92178
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !92179

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 3, !dbg !92178
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !92178
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !92179

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !92180, !noalias !92016
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !92181, !noalias !92012
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !92182, !alias.scope !92010, !noalias !92013
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !92182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !92182, !noalias !92013
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !92183

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !92184, !noalias !92013
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !92185

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !92186, !noalias !92010

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !92187
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !92188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !92189, !noalias !92012
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !92190
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !92191
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !92191, !noalias !92012, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !92192
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !92192, !noalias !92012, !noundef !2617
  %i.ci = shl nuw nsw i64 %i.ch, 2, !dbg !92193   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !92194, !noalias !92012
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !92195, !noalias !92010

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !92196, !range !2834, !noalias !92012, !noundef !2617 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !92196
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !92197
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !92197, !noalias !92012 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !92198

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !92199
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !92200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !92200, !noalias !92012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !92199, !noalias !92012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !92201, !noalias !92012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !92200, !noalias !92012
  store i8 %i.cj, ptr %i.k, align 16, !dbg !92200, !noalias !92012
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !92200
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !92200, !noalias !92012
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !92200, !noalias !92010

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !92201, !noalias !92012
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !92202

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !92203, !noalias !92012
  %i.cm = load i64, ptr %i.be, align 8, !dbg !92204, !alias.scope !92011, !noalias !92015, !noundef !2617 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !92205
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !92205, !prof !2700

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !92206, !noalias !92012
  %i.co = load i64, ptr %i.be, align 8, !dbg !92207, !alias.scope !92011, !noalias !92015, !noundef !2617 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !92208
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !92208, !prof !2700

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !92209, !alias.scope !92011, !noalias !92015, !nonnull !2617, !noundef !2617
  %i.cr = add i64 %i.cm, -8, !dbg !92210
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !92211
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !92203, !noalias !92010

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !92212, !range !2852, !noalias !92012, !noundef !2617
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !92212
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !92213

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !92214, !noalias !92013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !92215, !noalias !92012
  br label %bb.ak, !dbg !92216

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !92215, !noalias !92012
  br label %bb.aj, !dbg !92217

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !92218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !92219, !noalias !92013
  store i64 18, ptr %i.aj, align 16, !dbg !92218, !alias.scope !92010, !noalias !92013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !92186, !noalias !92012
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !92220

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !92186, !noalias !92010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !92186, !noalias !92012
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !92221

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !92222, !alias.scope !92011, !noalias !92015, !nonnull !2617, !noundef !2617
  %i.cw = add i64 %i.co, -8, !dbg !92223
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !92224
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !92206, !noalias !92010

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !92225, !noalias !92010

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !92226, !range !2852, !noalias !92012, !noundef !2617
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !92226
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !92227

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !92228, !noalias !92013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !92229, !noalias !92012
  br label %bb.ak, !dbg !92216

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !92229, !noalias !92012
  br label %bb.aj, !dbg !92230

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !92231, !noalias !92012
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !92232, !noalias !92012
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !92232
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !92232, !noalias !92012
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !92232
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !92233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !92232, !noalias !92013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !92234, !noalias !92012
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !92233, !alias.scope !92010, !noalias !92013
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !92233
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !92233, !alias.scope !92010, !noalias !92013
  br label %bb.ak, !dbg !92235

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !92236, !noalias !92010
  unreachable, !dbg !92236

common.resume:                                    ; preds = %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fk, %bb.bs ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !92237

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !92238 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !92239
  %i.de = and i64 %i.dd, 3, !dbg !92240
  %i.df = icmp eq i64 %i.de, 0, !dbg !92241
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !92241

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !92242, !noalias !92016
  unreachable, !dbg !92242

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !92243
  %i.dh = lshr exact i64 %i.dg, 2, !dbg !92244
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !92245
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !92246, !noalias !92017
  store i64 18, ptr %i.aj, align 16, !dbg !92245, !alias.scope !92010, !noalias !92013
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !92221

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !92220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !92220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !92220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !92220
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !92247, !range !2852, !noundef !2617 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !92247
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !92248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !92248
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !92249

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !92066
  call void @llvm.experimental.noalias.scope.decl(metadata !92057), !dbg !92066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !92250
  %i.dl = shl i64 %2, 2, !dbg !92250              ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !92250
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !92251, !prof !2700

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !92252
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !92252, !prof !2714

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !92253, !noalias !92058
  call void @llvm.experimental.noalias.scope.decl(metadata !92059), !dbg !92254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !92255, !noalias !92060
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !92255, !noalias !92061
  %i.do = load i64, ptr %i.e, align 8, !dbg !92255, !range !2703, !noalias !92060, !noundef !2617
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !92256
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !92257
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !92257, !range !2756, !noalias !92060, !noundef !2617 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !92257 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !92256, !prof !2700

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !92258, !noalias !92060
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !92259, !noalias !92061
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !92260, !noalias !92060, !nonnull !2617, !noundef !2617 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !92261, !noalias !92060
  store i64 %i.dr, ptr %i.g, align 8, !dbg !92262, !alias.scope !92059, !noalias !92058
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !92262
  store ptr %i.du, ptr %i.dv, align 8, !dbg !92262, !alias.scope !92059, !noalias !92058
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !92262
  store i64 %2, ptr %i.dw, align 8, !dbg !92262, !alias.scope !92059, !noalias !92058
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !92263

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !92264, !noalias !92058
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !92264
  store i64 %2, ptr %i.dx, align 8, !dbg !92264, !noalias !92058
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !92264
  store ptr @42, ptr %i.dy, align 16, !dbg !92264, !noalias !92058
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !92264
  store i64 3, ptr %i.dz, align 8, !dbg !92264, !noalias !92058
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !92264
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !92264, !noalias !92058
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !92264
  store i64 %i.at, ptr %i.eb, align 8, !dbg !92264, !noalias !92058
  store i64 26, ptr %i.i, align 16, !dbg !92264, !noalias !92058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !92265, !noalias !92058
  store ptr %i.i, ptr %i.h, align 8, !dbg !92265, !noalias !92058
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !92265
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !92265, !noalias !92058
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !92266, !noalias !92063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !92267, !noalias !92058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !92267, !noalias !92058
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !92267
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !92268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !92269
  br label %bb.cb, !dbg !92270

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !92271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !92272, !noalias !92067
  store i64 0, ptr %i.d, align 8, !dbg !92273, !noalias !92067
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !92273 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !92273, !noalias !92067
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !92273 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !92273, !noalias !92067
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !92274, !noalias !92068

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
          to label %.body.i unwind label %bb.bm, !dbg !92275, !noalias !92069

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !92276, !noalias !92067, !nonnull !2617, !noundef !2617
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !92277, !noalias !92067, !noundef !2617
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !92278, !noalias !92069 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !92279
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !92280

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !92281, !noalias !92067
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !92281, !noalias !92069

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !92282, !noalias !92067, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !92283, !noalias !92067, !noundef !2617 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !92284
  %i.ek = and i64 %i.ei, -4, !dbg !92285          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !92286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !92287, !noalias !92067
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !92288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92289, !noalias !92073
  store ptr %i.eh, ptr %i.a, align 8, !dbg !92290, !alias.scope !92074, !noalias !92075
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !92290
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !92290, !alias.scope !92074, !noalias !92075
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !92290
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !92290, !alias.scope !92074, !noalias !92075
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !92290
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !92290, !alias.scope !92074, !noalias !92075
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !92290
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !92290, !alias.scope !92074, !noalias !92075
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !92291, !noalias !92069

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92292, !noalias !92073
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !92293, !alias.scope !92076, !noalias !92077, !noundef !2617 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !92294, !alias.scope !92076, !noalias !92077, !noundef !2617
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !92293
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !92293

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !92293

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !92295
  store i64 %i.eu, ptr %i.en, align 8, !dbg !92295, !alias.scope !92076, !noalias !92077
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !92296, !alias.scope !92076, !noalias !92077, !nonnull !2617, !noundef !2617
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !92297, !noalias !92069 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !92298
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !92299
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !92299

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !92300, !noalias !92069

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !92298 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !92301
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !92302, !alias.scope !92078, !noalias !92079
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !92303
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !92304, !noalias !92079
  %i.fa = load i64, ptr %i.en, align 8, !dbg !92293, !alias.scope !92076, !noalias !92077, !noundef !2617 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !92294, !alias.scope !92076, !noalias !92077, !noundef !2617
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !92293
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !92293

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !92305, !noalias !92067
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bh, !dbg !92306, !noalias !92069

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bi, !dbg !92307, !noalias !92069

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !92306, !noalias !92069
  unreachable, !dbg !92306

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !92308 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bo unwind label %bb.bn, !dbg !92309, !noalias !92057

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !92310, !noalias !92084
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !92310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !92310, !noalias !92084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92311, !noalias !92067
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bk, !dbg !92312, !noalias !92069

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !93459
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !93460

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 3, !dbg !93459
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !93459
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !93460

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !93461, !noalias !93300
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !93462, !noalias !93296
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !93463, !alias.scope !93294, !noalias !93297
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !93463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !93463, !noalias !93297
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !93464

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !93465, !noalias !93297
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !93466

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !93467, !noalias !93294

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !93468
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !93469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !93470, !noalias !93296
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !93471
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !93472
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !93472, !noalias !93296, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !93473
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !93473, !noalias !93296, !noundef !2617
  %i.ci = shl nuw nsw i64 %i.ch, 2, !dbg !93474   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !93475, !noalias !93296
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !93476, !noalias !93294

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !93477, !range !2834, !noalias !93296, !noundef !2617 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !93477
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !93478
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !93478, !noalias !93296 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !93479

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !93480
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !93481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !93481, !noalias !93296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !93480, !noalias !93296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !93482, !noalias !93296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !93481, !noalias !93296
  store i8 %i.cj, ptr %i.k, align 16, !dbg !93481, !noalias !93296
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !93481
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !93481, !noalias !93296
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !93481, !noalias !93294

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !93482, !noalias !93296
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !93483

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !93484, !noalias !93296
  %i.cm = load i64, ptr %i.be, align 8, !dbg !93485, !alias.scope !93295, !noalias !93299, !noundef !2617 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !93486
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !93486, !prof !2700

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !93487, !noalias !93296
  %i.co = load i64, ptr %i.be, align 8, !dbg !93488, !alias.scope !93295, !noalias !93299, !noundef !2617 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !93489
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !93489, !prof !2700

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !93490, !alias.scope !93295, !noalias !93299, !nonnull !2617, !noundef !2617
  %i.cr = add i64 %i.cm, -8, !dbg !93491
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !93492
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !93484, !noalias !93294

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !93493, !range !2852, !noalias !93296, !noundef !2617
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !93493
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !93494

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !93495, !noalias !93297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !93496, !noalias !93296
  br label %bb.ak, !dbg !93497

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !93496, !noalias !93296
  br label %bb.aj, !dbg !93498

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !93499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !93500, !noalias !93297
  store i64 18, ptr %i.aj, align 16, !dbg !93499, !alias.scope !93294, !noalias !93297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !93467, !noalias !93296
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !93501

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !93467, !noalias !93294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !93467, !noalias !93296
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !93502

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !93503, !alias.scope !93295, !noalias !93299, !nonnull !2617, !noundef !2617
  %i.cw = add i64 %i.co, -8, !dbg !93504
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !93505
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !93487, !noalias !93294

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !93506, !noalias !93294

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !93507, !range !2852, !noalias !93296, !noundef !2617
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !93507
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !93508

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !93509, !noalias !93297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !93510, !noalias !93296
  br label %bb.ak, !dbg !93497

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !93510, !noalias !93296
  br label %bb.aj, !dbg !93511

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !93512, !noalias !93296
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !93513, !noalias !93296
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !93513
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !93513, !noalias !93296
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !93513
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !93514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !93513, !noalias !93297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !93515, !noalias !93296
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !93514, !alias.scope !93294, !noalias !93297
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !93514
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !93514, !alias.scope !93294, !noalias !93297
  br label %bb.ak, !dbg !93516

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !93517, !noalias !93294
  unreachable, !dbg !93517

common.resume:                                    ; preds = %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fk, %bb.bs ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !93518

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !93519 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !93520
  %i.de = and i64 %i.dd, 3, !dbg !93521
  %i.df = icmp eq i64 %i.de, 0, !dbg !93522
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !93522

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !93523, !noalias !93300
  unreachable, !dbg !93523

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !93524
  %i.dh = lshr exact i64 %i.dg, 2, !dbg !93525
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !93526
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !93527, !noalias !93301
  store i64 18, ptr %i.aj, align 16, !dbg !93526, !alias.scope !93294, !noalias !93297
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !93502

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !93501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !93501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !93501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !93501
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !93528, !range !2852, !noundef !2617 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !93528
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !93529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !93529
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !93530

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !93350
  call void @llvm.experimental.noalias.scope.decl(metadata !93341), !dbg !93350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !93531
  %i.dl = shl i64 %2, 2, !dbg !93531              ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !93531
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !93532, !prof !2700

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !93533
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !93533, !prof !2714

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !93534, !noalias !93342
  call void @llvm.experimental.noalias.scope.decl(metadata !93343), !dbg !93535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !93536, !noalias !93344
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !93536, !noalias !93345
  %i.do = load i64, ptr %i.e, align 8, !dbg !93536, !range !2703, !noalias !93344, !noundef !2617
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !93537
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !93538
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !93538, !range !2756, !noalias !93344, !noundef !2617 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !93538 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !93537, !prof !2700

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !93539, !noalias !93344
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !93540, !noalias !93345
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !93541, !noalias !93344, !nonnull !2617, !noundef !2617 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !93542, !noalias !93344
  store i64 %i.dr, ptr %i.g, align 8, !dbg !93543, !alias.scope !93343, !noalias !93342
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !93543
  store ptr %i.du, ptr %i.dv, align 8, !dbg !93543, !alias.scope !93343, !noalias !93342
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !93543
  store i64 %2, ptr %i.dw, align 8, !dbg !93543, !alias.scope !93343, !noalias !93342
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !93544

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !93545, !noalias !93342
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !93545
  store i64 %2, ptr %i.dx, align 8, !dbg !93545, !noalias !93342
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !93545
  store ptr @44, ptr %i.dy, align 16, !dbg !93545, !noalias !93342
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !93545
  store i64 3, ptr %i.dz, align 8, !dbg !93545, !noalias !93342
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !93545
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !93545, !noalias !93342
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !93545
  store i64 %i.at, ptr %i.eb, align 8, !dbg !93545, !noalias !93342
  store i64 26, ptr %i.i, align 16, !dbg !93545, !noalias !93342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !93546, !noalias !93342
  store ptr %i.i, ptr %i.h, align 8, !dbg !93546, !noalias !93342
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !93546
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !93546, !noalias !93342
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !93547, !noalias !93347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !93548, !noalias !93342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !93548, !noalias !93342
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !93548
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !93549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !93550
  br label %bb.cb, !dbg !93551

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !93552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !93553, !noalias !93351
  store i64 0, ptr %i.d, align 8, !dbg !93554, !noalias !93351
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !93554 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !93554, !noalias !93351
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !93554 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !93554, !noalias !93351
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !93555, !noalias !93352

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
          to label %.body.i unwind label %bb.bm, !dbg !93556, !noalias !93353

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !93557, !noalias !93351, !nonnull !2617, !noundef !2617
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !93558, !noalias !93351, !noundef !2617
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !93559, !noalias !93353 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !93560
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !93561

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !93562, !noalias !93351
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !93562, !noalias !93353

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !93563, !noalias !93351, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !93564, !noalias !93351, !noundef !2617 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !93565
  %i.ek = and i64 %i.ei, -4, !dbg !93566          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !93567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !93568, !noalias !93351
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !93569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !93570, !noalias !93357
  store ptr %i.eh, ptr %i.a, align 8, !dbg !93571, !alias.scope !93358, !noalias !93359
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !93571
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !93571, !alias.scope !93358, !noalias !93359
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !93571
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !93571, !alias.scope !93358, !noalias !93359
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !93571
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !93571, !alias.scope !93358, !noalias !93359
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !93571
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !93571, !alias.scope !93358, !noalias !93359
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutlEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !93572, !noalias !93353

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !93573, !noalias !93357
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !93574, !alias.scope !93360, !noalias !93361, !noundef !2617 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !93575, !alias.scope !93360, !noalias !93361, !noundef !2617
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !93574
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !93574

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !93574

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !93576
  store i64 %i.eu, ptr %i.en, align 8, !dbg !93576, !alias.scope !93360, !noalias !93361
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !93577, !alias.scope !93360, !noalias !93361, !nonnull !2617, !noundef !2617
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !93578, !noalias !93353 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !93579
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !93580
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !93580

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !93581, !noalias !93353

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !93579 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !93582
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !93583, !alias.scope !93362, !noalias !93363
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !93584
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !93585, !noalias !93363
  %i.fa = load i64, ptr %i.en, align 8, !dbg !93574, !alias.scope !93360, !noalias !93361, !noundef !2617 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !93575, !alias.scope !93360, !noalias !93361, !noundef !2617
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !93574
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !93574

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !93586, !noalias !93351
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bh, !dbg !93587, !noalias !93353

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bi, !dbg !93588, !noalias !93353

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !93587, !noalias !93353
  unreachable, !dbg !93587

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !93589 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bo unwind label %bb.bn, !dbg !93590, !noalias !93341

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !93591, !noalias !93365
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !93591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !93591, !noalias !93365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !93592, !noalias !93351
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bk, !dbg !93593, !noalias !93353

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !94281
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !94282

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 3, !dbg !94281
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !94281
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !94282

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !94283, !noalias !94122
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !94284, !noalias !94118
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !94285, !alias.scope !94116, !noalias !94119
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !94285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !94285, !noalias !94119
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94286

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !94287, !noalias !94119
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94288

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !94289, !noalias !94116

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !94290
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !94291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !94292, !noalias !94118
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !94293
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !94294
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !94294, !noalias !94118, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !94295
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !94295, !noalias !94118, !noundef !2617
  %i.ci = shl nuw nsw i64 %i.ch, 2, !dbg !94296   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !94297, !noalias !94118
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !94298, !noalias !94116

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !94299, !range !2834, !noalias !94118, !noundef !2617 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !94299
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !94300
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !94300, !noalias !94118 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !94301

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !94302
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !94303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !94303, !noalias !94118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !94302, !noalias !94118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !94304, !noalias !94118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !94303, !noalias !94118
  store i8 %i.cj, ptr %i.k, align 16, !dbg !94303, !noalias !94118
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !94303
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !94303, !noalias !94118
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !94303, !noalias !94116

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !94304, !noalias !94118
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !94305

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !94306, !noalias !94118
  %i.cm = load i64, ptr %i.be, align 8, !dbg !94307, !alias.scope !94117, !noalias !94121, !noundef !2617 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !94308
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !94308, !prof !2700

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !94309, !noalias !94118
  %i.co = load i64, ptr %i.be, align 8, !dbg !94310, !alias.scope !94117, !noalias !94121, !noundef !2617 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !94311
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !94311, !prof !2700

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !94312, !alias.scope !94117, !noalias !94121, !nonnull !2617, !noundef !2617
  %i.cr = add i64 %i.cm, -8, !dbg !94313
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !94314
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !94306, !noalias !94116

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !94315, !range !2852, !noalias !94118, !noundef !2617
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !94315
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !94316

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !94317, !noalias !94119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !94318, !noalias !94118
  br label %bb.ak, !dbg !94319

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !94318, !noalias !94118
  br label %bb.aj, !dbg !94320

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !94321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !94322, !noalias !94119
  store i64 18, ptr %i.aj, align 16, !dbg !94321, !alias.scope !94116, !noalias !94119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !94289, !noalias !94118
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94323

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !94289, !noalias !94116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !94289, !noalias !94118
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94324

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !94325, !alias.scope !94117, !noalias !94121, !nonnull !2617, !noundef !2617
  %i.cw = add i64 %i.co, -8, !dbg !94326
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !94327
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !94309, !noalias !94116

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !94328, !noalias !94116

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !94329, !range !2852, !noalias !94118, !noundef !2617
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !94329
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !94330

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !94331, !noalias !94119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !94332, !noalias !94118
  br label %bb.ak, !dbg !94319

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !94332, !noalias !94118
  br label %bb.aj, !dbg !94333

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !94334, !noalias !94118
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !94335, !noalias !94118
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !94335
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !94335, !noalias !94118
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !94335
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !94336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !94335, !noalias !94119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !94337, !noalias !94118
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !94336, !alias.scope !94116, !noalias !94119
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !94336
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !94336, !alias.scope !94116, !noalias !94119
  br label %bb.ak, !dbg !94338

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !94339, !noalias !94116
  unreachable, !dbg !94339

common.resume:                                    ; preds = %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fk, %bb.bs ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !94340

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !94341 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !94342
  %i.de = and i64 %i.dd, 3, !dbg !94343
  %i.df = icmp eq i64 %i.de, 0, !dbg !94344
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !94344

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !94345, !noalias !94122
  unreachable, !dbg !94345

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !94346
  %i.dh = lshr exact i64 %i.dg, 2, !dbg !94347
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !94348
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !94349, !noalias !94123
  store i64 18, ptr %i.aj, align 16, !dbg !94348, !alias.scope !94116, !noalias !94119
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94324

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !94323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !94323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !94323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !94323
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !94350, !range !2852, !noundef !2617 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !94350
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !94351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !94351
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !94352

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !94172
  call void @llvm.experimental.noalias.scope.decl(metadata !94163), !dbg !94172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !94353
  %i.dl = shl i64 %2, 2, !dbg !94353              ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !94353
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !94354, !prof !2700

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !94355
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !94355, !prof !2714

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !94356, !noalias !94164
  call void @llvm.experimental.noalias.scope.decl(metadata !94165), !dbg !94357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !94358, !noalias !94166
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !94358, !noalias !94167
  %i.do = load i64, ptr %i.e, align 8, !dbg !94358, !range !2703, !noalias !94166, !noundef !2617
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !94359
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !94360
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !94360, !range !2756, !noalias !94166, !noundef !2617 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !94360 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !94359, !prof !2700

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !94361, !noalias !94166
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !94362, !noalias !94167
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !94363, !noalias !94166, !nonnull !2617, !noundef !2617 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !94364, !noalias !94166
  store i64 %i.dr, ptr %i.g, align 8, !dbg !94365, !alias.scope !94165, !noalias !94164
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !94365
  store ptr %i.du, ptr %i.dv, align 8, !dbg !94365, !alias.scope !94165, !noalias !94164
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !94365
  store i64 %2, ptr %i.dw, align 8, !dbg !94365, !alias.scope !94165, !noalias !94164
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !94366

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !94367, !noalias !94164
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !94367
  store i64 %2, ptr %i.dx, align 8, !dbg !94367, !noalias !94164
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !94367
  store ptr @45, ptr %i.dy, align 16, !dbg !94367, !noalias !94164
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !94367
  store i64 3, ptr %i.dz, align 8, !dbg !94367, !noalias !94164
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !94367
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !94367, !noalias !94164
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !94367
  store i64 %i.at, ptr %i.eb, align 8, !dbg !94367, !noalias !94164
  store i64 26, ptr %i.i, align 16, !dbg !94367, !noalias !94164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !94368, !noalias !94164
  store ptr %i.i, ptr %i.h, align 8, !dbg !94368, !noalias !94164
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !94368
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !94368, !noalias !94164
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !94369, !noalias !94169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !94370, !noalias !94164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !94370, !noalias !94164
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !94370
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !94371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !94372
  br label %bb.cb, !dbg !94373

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !94374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !94375, !noalias !94173
  store i64 0, ptr %i.d, align 8, !dbg !94376, !noalias !94173
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !94376 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !94376, !noalias !94173
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !94376 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !94376, !noalias !94173
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !94377, !noalias !94174

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
          to label %.body.i unwind label %bb.bm, !dbg !94378, !noalias !94175

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !94379, !noalias !94173, !nonnull !2617, !noundef !2617
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !94380, !noalias !94173, !noundef !2617
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !94381, !noalias !94175 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !94382
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !94383

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !94384, !noalias !94173
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !94384, !noalias !94175

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !94385, !noalias !94173, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !94386, !noalias !94173, !noundef !2617 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !94387
  %i.ek = and i64 %i.ei, -4, !dbg !94388          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !94389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !94390, !noalias !94173
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !94391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !94392, !noalias !94179
  store ptr %i.eh, ptr %i.a, align 8, !dbg !94393, !alias.scope !94180, !noalias !94181
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !94393
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !94393, !alias.scope !94180, !noalias !94181
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !94393
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !94393, !alias.scope !94180, !noalias !94181
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !94393
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !94393, !alias.scope !94180, !noalias !94181
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !94393
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !94393, !alias.scope !94180, !noalias !94181
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !94394, !noalias !94175

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !94395, !noalias !94179
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !94396, !alias.scope !94182, !noalias !94183, !noundef !2617 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !94397, !alias.scope !94182, !noalias !94183, !noundef !2617
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !94396
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !94396

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !94396

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !94398
  store i64 %i.eu, ptr %i.en, align 8, !dbg !94398, !alias.scope !94182, !noalias !94183
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !94399, !alias.scope !94182, !noalias !94183, !nonnull !2617, !noundef !2617
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !94400, !noalias !94175 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !94401
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !94402
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !94402

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !94403, !noalias !94175

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !94401 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !94404
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !94405, !alias.scope !94184, !noalias !94185
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !94406
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !94407, !noalias !94185
  %i.fa = load i64, ptr %i.en, align 8, !dbg !94396, !alias.scope !94182, !noalias !94183, !noundef !2617 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !94397, !alias.scope !94182, !noalias !94183, !noundef !2617
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !94396
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !94396

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !94408, !noalias !94173
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bh, !dbg !94409, !noalias !94175

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bi, !dbg !94410, !noalias !94175

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !94409, !noalias !94175
  unreachable, !dbg !94409

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !94411 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bo unwind label %bb.bn, !dbg !94412, !noalias !94163

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !94413, !noalias !94187
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !94413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !94413, !noalias !94187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !94414, !noalias !94173
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bk, !dbg !94415, !noalias !94175

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 8, !dbg !95107
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !95108

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 15, !dbg !95107
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !95107
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !95108

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !95109, !noalias !94947
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !95110, !noalias !94943
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !95111, !alias.scope !94941, !noalias !94944
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !95111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !95111, !noalias !94944
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !95112

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !95113, !noalias !94944
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !95114

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !95115, !noalias !94941

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !95116
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !95117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !95118, !noalias !94943
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !95119
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !95120
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !95120, !noalias !94943, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !95121
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !95121, !noalias !94943, !noundef !2617
  %i.ci = shl nuw nsw i64 %i.ch, 4, !dbg !95122   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !95123, !noalias !94943
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !95124, !noalias !94941

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !95125, !range !2834, !noalias !94943, !noundef !2617 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !95125
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !95126
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !95126, !noalias !94943 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !95127

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !95128
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !95129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !95129, !noalias !94943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !95128, !noalias !94943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !95130, !noalias !94943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !95129, !noalias !94943
  store i8 %i.cj, ptr %i.k, align 16, !dbg !95129, !noalias !94943
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !95129
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !95129, !noalias !94943
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !95129, !noalias !94941

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !95130, !noalias !94943
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !95131

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !95132, !noalias !94943
  %i.cm = load i64, ptr %i.be, align 8, !dbg !95133, !alias.scope !94942, !noalias !94946, !noundef !2617 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !95134
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !95134, !prof !2700

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !95135, !noalias !94943
  %i.co = load i64, ptr %i.be, align 8, !dbg !95136, !alias.scope !94942, !noalias !94946, !noundef !2617 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !95137
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !95137, !prof !2700

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !95138, !alias.scope !94942, !noalias !94946, !nonnull !2617, !noundef !2617
  %i.cr = add i64 %i.cm, -8, !dbg !95139
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !95140
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !95132, !noalias !94941

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !95141, !range !2852, !noalias !94943, !noundef !2617
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !95141
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !95142

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !95143, !noalias !94944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !95144, !noalias !94943
  br label %bb.ak, !dbg !95145

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !95144, !noalias !94943
  br label %bb.aj, !dbg !95146

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !95147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !95148, !noalias !94944
  store i64 18, ptr %i.aj, align 16, !dbg !95147, !alias.scope !94941, !noalias !94944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !95115, !noalias !94943
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !95149

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !95115, !noalias !94941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !95115, !noalias !94943
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !95150

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !95151, !alias.scope !94942, !noalias !94946, !nonnull !2617, !noundef !2617
  %i.cw = add i64 %i.co, -8, !dbg !95152
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !95153
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !95135, !noalias !94941

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !95154, !noalias !94941

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !95155, !range !2852, !noalias !94943, !noundef !2617
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !95155
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !95156

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !95157, !noalias !94944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !95158, !noalias !94943
  br label %bb.ak, !dbg !95145

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !95158, !noalias !94943
  br label %bb.aj, !dbg !95159

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !95160, !noalias !94943
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !95161, !noalias !94943
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !95161
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !95161, !noalias !94943
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !95161
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !95162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !95161, !noalias !94944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !95163, !noalias !94943
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !95162, !alias.scope !94941, !noalias !94944
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !95162
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !95162, !alias.scope !94941, !noalias !94944
  br label %bb.ak, !dbg !95164

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !95165, !noalias !94941
  unreachable, !dbg !95165

common.resume:                                    ; preds = %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fl, %bb.bt ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !95166

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !95167 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !95168
  %i.de = and i64 %i.dd, 15, !dbg !95169
  %i.df = icmp eq i64 %i.de, 0, !dbg !95170
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !95170

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !95171, !noalias !94947
  unreachable, !dbg !95171

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !95172
  %i.dh = lshr exact i64 %i.dg, 4, !dbg !95173
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !95174
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_innNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !95175, !noalias !94948
  store i64 18, ptr %i.aj, align 16, !dbg !95174, !alias.scope !94941, !noalias !94944
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !95150

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !95149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !95149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !95149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !95149
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !95176, !range !2852, !noundef !2617 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !95176
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !95177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !95177
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !95178

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !94997
  call void @llvm.experimental.noalias.scope.decl(metadata !94988), !dbg !94997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !95179
  %i.dl = shl i64 %2, 4, !dbg !95179              ; 4 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !95179
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !95180, !prof !2700

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !95181
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !95181, !prof !2714

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !95182, !noalias !94989
  call void @llvm.experimental.noalias.scope.decl(metadata !94990), !dbg !95183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !95184, !noalias !94991
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !95184, !noalias !94992
  %i.do = load i64, ptr %i.e, align 8, !dbg !95184, !range !2703, !noalias !94991, !noundef !2617
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !95185
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !95186
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !95186, !range !2756, !noalias !94991, !noundef !2617 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !95186 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !95185, !prof !2700

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !95187, !noalias !94991
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !95188, !noalias !94992
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !95189, !noalias !94991, !nonnull !2617, !noundef !2617 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !95190, !noalias !94991
  store i64 %i.dr, ptr %i.g, align 8, !dbg !95191, !alias.scope !94990, !noalias !94989
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !95191
  store ptr %i.du, ptr %i.dv, align 8, !dbg !95191, !alias.scope !94990, !noalias !94989
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !95191
  store i64 %2, ptr %i.dw, align 8, !dbg !95191, !alias.scope !94990, !noalias !94989
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !95192

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !95193, !noalias !94989
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !95193
  store i64 %2, ptr %i.dx, align 8, !dbg !95193, !noalias !94989
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !95193
  store ptr @46, ptr %i.dy, align 16, !dbg !95193, !noalias !94989
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !95193
  store i64 4, ptr %i.dz, align 8, !dbg !95193, !noalias !94989
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !95193
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !95193, !noalias !94989
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !95193
  store i64 %i.at, ptr %i.eb, align 8, !dbg !95193, !noalias !94989
  store i64 26, ptr %i.i, align 16, !dbg !95193, !noalias !94989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !95194, !noalias !94989
  store ptr %i.i, ptr %i.h, align 8, !dbg !95194, !noalias !94989
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !95194
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !95194, !noalias !94989
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !95195, !noalias !94994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !95196, !noalias !94989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !95196, !noalias !94989
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !95196
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !95197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !95198
  br label %bb.cc, !dbg !95199

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !95200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !95201, !noalias !94998
  store i64 0, ptr %i.d, align 8, !dbg !95202, !noalias !94998
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !95202 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !95202, !noalias !94998
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !95202 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !95202, !noalias !94998
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !95203, !noalias !94999

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
          to label %.body.i unwind label %bb.bn, !dbg !95204, !noalias !95000

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !95205, !noalias !94998, !nonnull !2617, !noundef !2617
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !95206, !noalias !94998, !noundef !2617
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !95207, !noalias !95000 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !95208
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !95209

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !95210, !noalias !94998
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !95210, !noalias !95000

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !95211, !noalias !94998, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !95212, !noalias !94998, !noundef !2617 ; 2 uses
  %i.ej = and i64 %i.ei, 15, !dbg !95213
  %i.ek = and i64 %i.ei, -16, !dbg !95214         ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !95215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !95216, !noalias !94998
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %2, !dbg !95217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !95218, !noalias !95004
  store ptr %i.eh, ptr %i.a, align 8, !dbg !95219, !alias.scope !95005, !noalias !95006
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !95219
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !95219, !alias.scope !95005, !noalias !95006
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !95219
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !95219, !alias.scope !95005, !noalias !95006
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !95219
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !95219, !alias.scope !95005, !noalias !95006
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !95219
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !95219, !alias.scope !95005, !noalias !95006
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutnEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !95220, !noalias !95000

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !95221, !noalias !95004
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !95222, !alias.scope !95007, !noalias !95008, !noundef !2617 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !95223, !alias.scope !95007, !noalias !95008, !noundef !2617
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !95222
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !95222

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !95222

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !95224
  store i64 %i.eu, ptr %i.en, align 8, !dbg !95224, !alias.scope !95007, !noalias !95008
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !95225, !alias.scope !95007, !noalias !95008, !nonnull !2617, !noundef !2617
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !95226, !noalias !95000 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !95227
  %i.ex = icmp eq i64 %i.ew, 16, !dbg !95228
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !95228

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !95229, !noalias !95000

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !95227 ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !95230
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.ey, align 1, !dbg !95231, !alias.scope !95009, !noalias !95010
  %i.fa = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !95232
  store i128 %i.fa, ptr %i.ez, align 16, !dbg !95233, !noalias !95010
  %i.fb = load i64, ptr %i.en, align 8, !dbg !95222, !alias.scope !95007, !noalias !95008, !noundef !2617 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !95223, !alias.scope !95007, !noalias !95008, !noundef !2617
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !95222
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !95222

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !95234, !noalias !94998
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bi, !dbg !95235, !noalias !95000

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bj, !dbg !95236, !noalias !95000

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !95235, !noalias !95000
  unreachable, !dbg !95235

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !95237 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bp unwind label %bb.bo, !dbg !95238, !noalias !94988

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !95239, !noalias !95013
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !95239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !95239, !noalias !95013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !95240, !noalias !94998
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bl, !dbg !95241, !noalias !95000

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 8, !dbg !95930
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !95931

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 15, !dbg !95930
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !95930
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !95931

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !95932, !noalias !95771
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !95933, !noalias !95767
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !95934, !alias.scope !95765, !noalias !95768
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !95934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !95934, !noalias !95768
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !95935

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !95936, !noalias !95768
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !95937

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !95938, !noalias !95765

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !95939
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !95940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !95941, !noalias !95767
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !95942
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !95943
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !95943, !noalias !95767, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !95944
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !95944, !noalias !95767, !noundef !2617
  %i.ci = shl nuw nsw i64 %i.ch, 4, !dbg !95945   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !95946, !noalias !95767
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !95947, !noalias !95765

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !95948, !range !2834, !noalias !95767, !noundef !2617 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !95948
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !95949
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !95949, !noalias !95767 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !95950

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !95951
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !95952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !95952, !noalias !95767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !95951, !noalias !95767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !95953, !noalias !95767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !95952, !noalias !95767
  store i8 %i.cj, ptr %i.k, align 16, !dbg !95952, !noalias !95767
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !95952
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !95952, !noalias !95767
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !95952, !noalias !95765

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !95953, !noalias !95767
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !95954

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !95955, !noalias !95767
  %i.cm = load i64, ptr %i.be, align 8, !dbg !95956, !alias.scope !95766, !noalias !95770, !noundef !2617 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !95957
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !95957, !prof !2700

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !95958, !noalias !95767
  %i.co = load i64, ptr %i.be, align 8, !dbg !95959, !alias.scope !95766, !noalias !95770, !noundef !2617 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !95960
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !95960, !prof !2700

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !95961, !alias.scope !95766, !noalias !95770, !nonnull !2617, !noundef !2617
  %i.cr = add i64 %i.cm, -8, !dbg !95962
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !95963
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !95955, !noalias !95765

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !95964, !range !2852, !noalias !95767, !noundef !2617
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !95964
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !95965

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !95966, !noalias !95768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !95967, !noalias !95767
  br label %bb.ak, !dbg !95968

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !95967, !noalias !95767
  br label %bb.aj, !dbg !95969

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !95970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !95971, !noalias !95768
  store i64 18, ptr %i.aj, align 16, !dbg !95970, !alias.scope !95765, !noalias !95768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !95938, !noalias !95767
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !95972

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !95938, !noalias !95765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !95938, !noalias !95767
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !95973

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !95974, !alias.scope !95766, !noalias !95770, !nonnull !2617, !noundef !2617
  %i.cw = add i64 %i.co, -8, !dbg !95975
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !95976
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !95958, !noalias !95765

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !95977, !noalias !95765

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !95978, !range !2852, !noalias !95767, !noundef !2617
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !95978
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !95979

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !95980, !noalias !95768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !95981, !noalias !95767
  br label %bb.ak, !dbg !95968

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !95981, !noalias !95767
  br label %bb.aj, !dbg !95982

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !95983, !noalias !95767
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !95984, !noalias !95767
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !95984
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !95984, !noalias !95767
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !95984
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !95985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !95984, !noalias !95768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !95986, !noalias !95767
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !95985, !alias.scope !95765, !noalias !95768
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !95985
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !95985, !alias.scope !95765, !noalias !95768
  br label %bb.ak, !dbg !95987

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !95988, !noalias !95765
  unreachable, !dbg !95988

common.resume:                                    ; preds = %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fl, %bb.bt ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !95989

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !95990 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !95991
  %i.de = and i64 %i.dd, 15, !dbg !95992
  %i.df = icmp eq i64 %i.de, 0, !dbg !95993
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !95993

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !95994, !noalias !95771
  unreachable, !dbg !95994

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !95995
  %i.dh = lshr exact i64 %i.dg, 4, !dbg !95996
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !95997
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inoNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !95998, !noalias !95772
  store i64 18, ptr %i.aj, align 16, !dbg !95997, !alias.scope !95765, !noalias !95768
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !95973

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !95972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !95972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !95972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !95972
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !95999, !range !2852, !noundef !2617 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !95999
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !96000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !96000
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !96001

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !95821
  call void @llvm.experimental.noalias.scope.decl(metadata !95812), !dbg !95821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !96002
  %i.dl = shl i64 %2, 4, !dbg !96002              ; 4 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !96002
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !96003, !prof !2700

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !96004
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !96004, !prof !2714

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !96005, !noalias !95813
  call void @llvm.experimental.noalias.scope.decl(metadata !95814), !dbg !96006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !96007, !noalias !95815
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !96007, !noalias !95816
  %i.do = load i64, ptr %i.e, align 8, !dbg !96007, !range !2703, !noalias !95815, !noundef !2617
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !96008
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !96009
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !96009, !range !2756, !noalias !95815, !noundef !2617 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !96009 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !96008, !prof !2700

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !96010, !noalias !95815
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !96011, !noalias !95816
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !96012, !noalias !95815, !nonnull !2617, !noundef !2617 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !96013, !noalias !95815
  store i64 %i.dr, ptr %i.g, align 8, !dbg !96014, !alias.scope !95814, !noalias !95813
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !96014
  store ptr %i.du, ptr %i.dv, align 8, !dbg !96014, !alias.scope !95814, !noalias !95813
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !96014
  store i64 %2, ptr %i.dw, align 8, !dbg !96014, !alias.scope !95814, !noalias !95813
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !96015

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !96016, !noalias !95813
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !96016
  store i64 %2, ptr %i.dx, align 8, !dbg !96016, !noalias !95813
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !96016
  store ptr @47, ptr %i.dy, align 16, !dbg !96016, !noalias !95813
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !96016
  store i64 4, ptr %i.dz, align 8, !dbg !96016, !noalias !95813
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !96016
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !96016, !noalias !95813
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !96016
  store i64 %i.at, ptr %i.eb, align 8, !dbg !96016, !noalias !95813
  store i64 26, ptr %i.i, align 16, !dbg !96016, !noalias !95813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !96017, !noalias !95813
  store ptr %i.i, ptr %i.h, align 8, !dbg !96017, !noalias !95813
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !96017
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !96017, !noalias !95813
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !96018, !noalias !95818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !96019, !noalias !95813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !96019, !noalias !95813
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !96019
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !96020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !96021
  br label %bb.cc, !dbg !96022

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !96023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !96024, !noalias !95822
  store i64 0, ptr %i.d, align 8, !dbg !96025, !noalias !95822
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !96025 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !96025, !noalias !95822
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !96025 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !96025, !noalias !95822
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !96026, !noalias !95823

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
          to label %.body.i unwind label %bb.bn, !dbg !96027, !noalias !95824

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !96028, !noalias !95822, !nonnull !2617, !noundef !2617
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !96029, !noalias !95822, !noundef !2617
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !96030, !noalias !95824 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !96031
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !96032

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !96033, !noalias !95822
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !96033, !noalias !95824

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !96034, !noalias !95822, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !96035, !noalias !95822, !noundef !2617 ; 2 uses
  %i.ej = and i64 %i.ei, 15, !dbg !96036
  %i.ek = and i64 %i.ei, -16, !dbg !96037         ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !96038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !96039, !noalias !95822
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %2, !dbg !96040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !96041, !noalias !95828
  store ptr %i.eh, ptr %i.a, align 8, !dbg !96042, !alias.scope !95829, !noalias !95830
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !96042
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !96042, !alias.scope !95829, !noalias !95830
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !96042
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !96042, !alias.scope !95829, !noalias !95830
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !96042
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !96042, !alias.scope !95829, !noalias !95830
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !96042
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !96042, !alias.scope !95829, !noalias !95830
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !96043, !noalias !95824

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !96044, !noalias !95828
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !96045, !alias.scope !95831, !noalias !95832, !noundef !2617 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !96046, !alias.scope !95831, !noalias !95832, !noundef !2617
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !96045
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !96045

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !96045

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !96047
  store i64 %i.eu, ptr %i.en, align 8, !dbg !96047, !alias.scope !95831, !noalias !95832
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !96048, !alias.scope !95831, !noalias !95832, !nonnull !2617, !noundef !2617
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !96049, !noalias !95824 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !96050
  %i.ex = icmp eq i64 %i.ew, 16, !dbg !96051
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !96051

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !96052, !noalias !95824

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !96050 ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !96053
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.ey, align 1, !dbg !96054, !alias.scope !95833, !noalias !95834
  %i.fa = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !96055
  store i128 %i.fa, ptr %i.ez, align 16, !dbg !96056, !noalias !95834
  %i.fb = load i64, ptr %i.en, align 8, !dbg !96045, !alias.scope !95831, !noalias !95832, !noundef !2617 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !96046, !alias.scope !95831, !noalias !95832, !noundef !2617
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !96045
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !96045

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !96057, !noalias !95822
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bi, !dbg !96058, !noalias !95824

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bj, !dbg !96059, !noalias !95824

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !96058, !noalias !95824
  unreachable, !dbg !96058

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !96060 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bp unwind label %bb.bo, !dbg !96061, !noalias !95812

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !96062, !noalias !95836
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !96062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !96062, !noalias !95836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !96063, !noalias !95822
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bl, !dbg !96064, !noalias !95824

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !98403
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !98404

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 7, !dbg !98403
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !98403
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !98404

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !98405, !noalias !98243
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !98406, !noalias !98239
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !98407, !alias.scope !98237, !noalias !98240
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !98407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !98407, !noalias !98240
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !98408

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !98409, !noalias !98240
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !98410

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !98411, !noalias !98237

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !98412
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !98413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !98414, !noalias !98239
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !98415
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !98416
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !98416, !noalias !98239, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !98417
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !98417, !noalias !98239, !noundef !2617
  %i.ci = shl nuw nsw i64 %i.ch, 3, !dbg !98418   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !98419, !noalias !98239
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !98420, !noalias !98237

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !98421, !range !2834, !noalias !98239, !noundef !2617 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !98421
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !98422
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !98422, !noalias !98239 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !98423

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !98424
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !98425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !98425, !noalias !98239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !98424, !noalias !98239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !98426, !noalias !98239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !98425, !noalias !98239
  store i8 %i.cj, ptr %i.k, align 16, !dbg !98425, !noalias !98239
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !98425
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !98425, !noalias !98239
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !98425, !noalias !98237

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !98426, !noalias !98239
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !98427

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !98428, !noalias !98239
  %i.cm = load i64, ptr %i.be, align 8, !dbg !98429, !alias.scope !98238, !noalias !98242, !noundef !2617 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !98430
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !98430, !prof !2700

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !98431, !noalias !98239
  %i.co = load i64, ptr %i.be, align 8, !dbg !98432, !alias.scope !98238, !noalias !98242, !noundef !2617 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !98433
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !98433, !prof !2700

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !98434, !alias.scope !98238, !noalias !98242, !nonnull !2617, !noundef !2617
  %i.cr = add i64 %i.cm, -8, !dbg !98435
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !98436
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !98428, !noalias !98237

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !98437, !range !2852, !noalias !98239, !noundef !2617
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !98437
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !98438

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !98439, !noalias !98240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !98440, !noalias !98239
  br label %bb.ak, !dbg !98441

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !98440, !noalias !98239
  br label %bb.aj, !dbg !98442

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !98443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !98444, !noalias !98240
  store i64 18, ptr %i.aj, align 16, !dbg !98443, !alias.scope !98237, !noalias !98240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !98411, !noalias !98239
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !98445

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !98411, !noalias !98237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !98411, !noalias !98239
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !98446

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !98447, !alias.scope !98238, !noalias !98242, !nonnull !2617, !noundef !2617
  %i.cw = add i64 %i.co, -8, !dbg !98448
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !98449
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !98431, !noalias !98237

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !98450, !noalias !98237

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !98451, !range !2852, !noalias !98239, !noundef !2617
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !98451
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !98452

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !98453, !noalias !98240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !98454, !noalias !98239
  br label %bb.ak, !dbg !98441

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !98454, !noalias !98239
  br label %bb.aj, !dbg !98455

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !98456, !noalias !98239
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !98457, !noalias !98239
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !98457
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !98457, !noalias !98239
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !98457
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !98458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !98457, !noalias !98240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !98459, !noalias !98239
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !98458, !alias.scope !98237, !noalias !98240
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !98458
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !98458, !alias.scope !98237, !noalias !98240
  br label %bb.ak, !dbg !98460

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !98461, !noalias !98237
  unreachable, !dbg !98461

common.resume:                                    ; preds = %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fl, %bb.bt ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !98462

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !98463 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !98464
  %i.de = and i64 %i.dd, 7, !dbg !98465
  %i.df = icmp eq i64 %i.de, 0, !dbg !98466
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !98466

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !98467, !noalias !98243
  unreachable, !dbg !98467

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !98468
  %i.dh = lshr exact i64 %i.dg, 3, !dbg !98469
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !98470
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inxNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !98471, !noalias !98244
  store i64 18, ptr %i.aj, align 16, !dbg !98470, !alias.scope !98237, !noalias !98240
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !98446

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !98445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !98445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !98445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !98445
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !98472, !range !2852, !noundef !2617 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !98472
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !98473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !98473
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !98474

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !98293
  call void @llvm.experimental.noalias.scope.decl(metadata !98284), !dbg !98293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !98475
  %i.dl = shl i64 %2, 3, !dbg !98475              ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !98475
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !98476, !prof !2700

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !98477
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !98477, !prof !2714

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !98478, !noalias !98285
  call void @llvm.experimental.noalias.scope.decl(metadata !98286), !dbg !98479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !98480, !noalias !98287
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !98480, !noalias !98288
  %i.do = load i64, ptr %i.e, align 8, !dbg !98480, !range !2703, !noalias !98287, !noundef !2617
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !98481
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !98482
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !98482, !range !2756, !noalias !98287, !noundef !2617 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !98482 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !98481, !prof !2700

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !98483, !noalias !98287
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !98484, !noalias !98288
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !98485, !noalias !98287, !nonnull !2617, !noundef !2617 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !98486, !noalias !98287
  store i64 %i.dr, ptr %i.g, align 8, !dbg !98487, !alias.scope !98286, !noalias !98285
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !98487
  store ptr %i.du, ptr %i.dv, align 8, !dbg !98487, !alias.scope !98286, !noalias !98285
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !98487
  store i64 %2, ptr %i.dw, align 8, !dbg !98487, !alias.scope !98286, !noalias !98285
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !98488

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !98489, !noalias !98285
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !98489
  store i64 %2, ptr %i.dx, align 8, !dbg !98489, !noalias !98285
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !98489
  store ptr @50, ptr %i.dy, align 16, !dbg !98489, !noalias !98285
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !98489
  store i64 3, ptr %i.dz, align 8, !dbg !98489, !noalias !98285
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !98489
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !98489, !noalias !98285
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !98489
  store i64 %i.at, ptr %i.eb, align 8, !dbg !98489, !noalias !98285
  store i64 26, ptr %i.i, align 16, !dbg !98489, !noalias !98285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !98490, !noalias !98285
  store ptr %i.i, ptr %i.h, align 8, !dbg !98490, !noalias !98285
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !98490
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !98490, !noalias !98285
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !98491, !noalias !98290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !98492, !noalias !98285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !98492, !noalias !98285
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !98492
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !98493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !98494
  br label %bb.cc, !dbg !98495

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !98496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !98497, !noalias !98294
  store i64 0, ptr %i.d, align 8, !dbg !98498, !noalias !98294
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !98498 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !98498, !noalias !98294
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !98498 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !98498, !noalias !98294
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !98499, !noalias !98295

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
          to label %.body.i unwind label %bb.bn, !dbg !98500, !noalias !98296

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !98501, !noalias !98294, !nonnull !2617, !noundef !2617
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !98502, !noalias !98294, !noundef !2617
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !98503, !noalias !98296 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !98504
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !98505

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !98506, !noalias !98294
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !98506, !noalias !98296

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !98507, !noalias !98294, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !98508, !noalias !98294, !noundef !2617 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !98509
  %i.ek = and i64 %i.ei, -8, !dbg !98510          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !98511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !98512, !noalias !98294
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !98513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !98514, !noalias !98300
  store ptr %i.eh, ptr %i.a, align 8, !dbg !98515, !alias.scope !98301, !noalias !98302
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !98515
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !98515, !alias.scope !98301, !noalias !98302
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !98515
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !98515, !alias.scope !98301, !noalias !98302
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !98515
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !98515, !alias.scope !98301, !noalias !98302
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !98515
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !98515, !alias.scope !98301, !noalias !98302
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutxEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !98516, !noalias !98296

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !98517, !noalias !98300
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !98518, !alias.scope !98303, !noalias !98304, !noundef !2617 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !98519, !alias.scope !98303, !noalias !98304, !noundef !2617
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !98518
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !98518

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !98518

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !98520
  store i64 %i.eu, ptr %i.en, align 8, !dbg !98520, !alias.scope !98303, !noalias !98304
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !98521, !alias.scope !98303, !noalias !98304, !nonnull !2617, !noundef !2617
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !98522, !noalias !98296 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !98523
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !98524
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !98524

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !98525, !noalias !98296

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !98523 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !98526
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !98527, !alias.scope !98305, !noalias !98306
  %i.fa = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !98528
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !98529, !noalias !98308
  %i.fb = load i64, ptr %i.en, align 8, !dbg !98518, !alias.scope !98303, !noalias !98304, !noundef !2617 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !98519, !alias.scope !98303, !noalias !98304, !noundef !2617
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !98518
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !98518

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !98530, !noalias !98294
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bi, !dbg !98531, !noalias !98296

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bj, !dbg !98532, !noalias !98296

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !98531, !noalias !98296
  unreachable, !dbg !98531

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !98533 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bp unwind label %bb.bo, !dbg !98534, !noalias !98284

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !98535, !noalias !98309
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !98535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !98535, !noalias !98309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !98536, !noalias !98294
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bl, !dbg !98537, !noalias !98296

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1h_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.by = icmp eq i64 %i.bx, 0, !dbg !99227
  br i1 %i.by, label %bb.ar, label %bb.x, !dbg !99228

.thread.i:                                        ; preds = %bb.u
  %i.bz = and i64 %.sroa.082.0.copyload.i, 7, !dbg !99227
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !99227
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !99228

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEE0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #33, !dbg !99229, !noalias !99067
  %i.cb = load <2 x i64>, ptr %i.n, align 16, !dbg !99230, !noalias !99063
  store <2 x i64> %i.cb, ptr %i.aj, align 16, !dbg !99231, !alias.scope !99061, !noalias !99064
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !99231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bb, i64 56, i1 false), !dbg !99231, !noalias !99064
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !99232

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @25, i64 72, i1 false), !dbg !99233, !noalias !99064
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !99234

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.aq, !dbg !99235, !noalias !99061

bb.z:                                             ; preds = %.thread.i
  %i.cd = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !99236
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %2), !dbg !99237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !99238, !noalias !99063
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %.sroa.0.0.i.i) #33, !dbg !99239
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !99240
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !99240, !noalias !99063, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !99241
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !99241, !noalias !99063, !noundef !2617
  %i.ci = shl nuw nsw i64 %i.ch, 3, !dbg !99242   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !99243, !noalias !99063
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !99244, !noalias !99061

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.m, align 16, !dbg !99245, !range !2834, !noalias !99063, !noundef !2617 ; 2 uses
  %.not142.i = icmp eq i8 %i.cj, 9, !dbg !99245
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !99246
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !99246, !noalias !99063 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !99247

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !99248
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !99249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !99249, !noalias !99063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !99248, !noalias !99063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !99250, !noalias !99063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !99249, !noalias !99063
  store i8 %i.cj, ptr %i.k, align 16, !dbg !99249, !noalias !99063
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !99249
  store i8 %i.cl, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !99249, !noalias !99063
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.k)
          to label %bb.ap unwind label %bb.y, !dbg !99249, !noalias !99061

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !99250, !noalias !99063
  switch i8 %i.cl, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !99251

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !99252, !noalias !99063
  %i.cm = load i64, ptr %i.be, align 8, !dbg !99253, !alias.scope !99062, !noalias !99066, !noundef !2617 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !99254
  br i1 %i.cn, label %.invoke.i, label %bb.af, !dbg !99254, !prof !2700

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !99255, !noalias !99063
  %i.co = load i64, ptr %i.be, align 8, !dbg !99256, !alias.scope !99062, !noalias !99066, !noundef !2617 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 8, !dbg !99257
  br i1 %i.cp, label %.invoke.i, label %bb.al, !dbg !99257, !prof !2700

bb.af:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bs, align 8, !dbg !99258, !alias.scope !99062, !noalias !99066, !nonnull !2617, !noundef !2617
  %i.cr = add i64 %i.cm, -8, !dbg !99259
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !99260
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cr, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.ag unwind label %bb.y, !dbg !99252, !noalias !99061

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.p, align 8, !dbg !99261, !range !2852, !noalias !99063, !noundef !2617
  %.not144.i = icmp eq i64 %i.ct, 18, !dbg !99261
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !99262

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !99263, !noalias !99064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !99264, !noalias !99063
  br label %bb.ak, !dbg !99265

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !99264, !noalias !99063
  br label %bb.aj, !dbg !99266

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !99267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !99268, !noalias !99064
  store i64 18, ptr %i.aj, align 16, !dbg !99267, !alias.scope !99061, !noalias !99064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !99235, !noalias !99063
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !99269

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.q), !dbg !99235, !noalias !99061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !99235, !noalias !99063
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !99270

bb.al:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.bs, align 8, !dbg !99271, !alias.scope !99062, !noalias !99066, !nonnull !2617, !noundef !2617
  %i.cw = add i64 %i.co, -8, !dbg !99272
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !99273
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cw, ptr noalias noundef nonnull %i.cf, i64 noundef %i.ci)
          to label %bb.am unwind label %bb.y, !dbg !99255, !noalias !99061

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cy = phi i64 [ %i.cm, %bb.ad ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cz = phi ptr [ @26, %bb.ad ], [ @27, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cy, i64 noundef %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont.i unwind label %bb.y, !dbg !99274, !noalias !99061

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.o, align 8, !dbg !99275, !range !2852, !noalias !99063, !noundef !2617
  %.not145.i = icmp eq i64 %i.da, 18, !dbg !99275
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !99276

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !99277, !noalias !99064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !99278, !noalias !99063
  br label %bb.ak, !dbg !99265

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !99278, !noalias !99063
  br label %bb.aj, !dbg !99279

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !99280, !noalias !99063
  %.sroa.050.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !99281, !noalias !99063
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !99281
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !99281, !noalias !99063
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9, !dbg !99281
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !99282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !99281, !noalias !99064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !99283, !noalias !99063
  store i64 %.sroa.050.0.copyload.i, ptr %i.aj, align 16, !dbg !99282, !alias.scope !99061, !noalias !99064
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !99282
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !99282, !alias.scope !99061, !noalias !99064
  br label %bb.ak, !dbg !99284

bb.aq:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !99285, !noalias !99061
  unreachable, !dbg !99285

common.resume:                                    ; preds = %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.fl, %bb.bt ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !99286

bb.ar:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !99287 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !dbg !99288
  %i.de = and i64 %i.dd, 7, !dbg !99289
  %i.df = icmp eq i64 %i.de, 0, !dbg !99290
  br i1 %i.df, label %bb.at, label %bb.as, !dbg !99290

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 10, i8 noundef 0) #27, !dbg !99291, !noalias !99067
  unreachable, !dbg !99291

bb.at:                                            ; preds = %bb.ar
  %i.dg = add nsw i64 %i.at, -8, !dbg !99292
  %i.dh = lshr exact i64 %i.dg, 3, !dbg !99293
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !99294
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inyNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dc, i64 noundef %i.dh) #33, !dbg !99295, !noalias !99068
  store i64 18, ptr %i.aj, align 16, !dbg !99294, !alias.scope !99061, !noalias !99064
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !99270

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1s_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %.split.i, %bb.w, %bb.x, %bb.aj, %bb.ak, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !99269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !99269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !99269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !99269
  %i.dj = load i64, ptr %i.aj, align 16, !dbg !99296, !range !2852, !noundef !2617 ; 2 uses
  %.not132 = icmp eq i64 %i.dj, 18, !dbg !99296
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !99297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !99297
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !99298

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !99117
  call void @llvm.experimental.noalias.scope.decl(metadata !99108), !dbg !99117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !99299
  %i.dl = shl i64 %2, 3, !dbg !99299              ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !99299
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.av, !dbg !99300, !prof !2700

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.at, !dbg !99301
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141, label %bb.aw, !dbg !99301, !prof !2714

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !99302, !noalias !99109
  call void @llvm.experimental.noalias.scope.decl(metadata !99110), !dbg !99303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !99304, !noalias !99111
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !99304, !noalias !99112
  %i.do = load i64, ptr %i.e, align 8, !dbg !99304, !range !2703, !noalias !99111, !noundef !2617
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !99305
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !99306
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !99306, !range !2756, !noalias !99111, !noundef !2617 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !99306 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !99305, !prof !2700

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !99307, !noalias !99111
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !99308, !noalias !99112
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !99309, !noalias !99111, !nonnull !2617, !noundef !2617 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !99310, !noalias !99111
  store i64 %i.dr, ptr %i.g, align 8, !dbg !99311, !alias.scope !99110, !noalias !99109
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !99311
  store ptr %i.du, ptr %i.dv, align 8, !dbg !99311, !alias.scope !99110, !noalias !99109
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !99311
  store i64 %2, ptr %i.dw, align 8, !dbg !99311, !alias.scope !99110, !noalias !99109
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !99312

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1u_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan.exit.thread141: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !99313, !noalias !99109
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !99313
  store i64 %2, ptr %i.dx, align 8, !dbg !99313, !noalias !99109
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !99313
  store ptr @51, ptr %i.dy, align 16, !dbg !99313, !noalias !99109
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !99313
  store i64 3, ptr %i.dz, align 8, !dbg !99313, !noalias !99109
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !99313
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !99313, !noalias !99109
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !99313
  store i64 %i.at, ptr %i.eb, align 8, !dbg !99313, !noalias !99109
  store i64 26, ptr %i.i, align 16, !dbg !99313, !noalias !99109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !99314, !noalias !99109
  store ptr %i.i, ptr %i.h, align 8, !dbg !99314, !noalias !99109
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !99314
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !99314, !noalias !99109
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.h), !dbg !99315, !noalias !99114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !99316, !noalias !99109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !99316, !noalias !99109
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !99316
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37), !dbg !99317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !99318
  br label %bb.cc, !dbg !99319

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !99320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !99321, !noalias !99118
  store i64 0, ptr %i.d, align 8, !dbg !99322, !noalias !99118
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !99322 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !99322, !noalias !99118
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !99322 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !99322, !noalias !99118
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !99323, !noalias !99119

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
          to label %.body.i unwind label %bb.bn, !dbg !99324, !noalias !99120

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !99325, !noalias !99118, !nonnull !2617, !noundef !2617
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !99326, !noalias !99118, !noundef !2617
  %i.eg = invoke noundef ptr @_RNvYINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5_6cursor6CursorQRShEENtB5_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !99327, !noalias !99120 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !99328
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !99329

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !99330, !noalias !99118
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !99330, !noalias !99120

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !99331, !noalias !99118, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !99332, !noalias !99118, !noundef !2617 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !99333
  %i.ek = and i64 %i.ei, -8, !dbg !99334          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !99335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !99336, !noalias !99118
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !99337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !99338, !noalias !99124
  store ptr %i.eh, ptr %i.a, align 8, !dbg !99339, !alias.scope !99125, !noalias !99126
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !99339
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !99339, !alias.scope !99125, !noalias !99126
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !99339
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !99339, !alias.scope !99125, !noalias !99126
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !99339
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !99339, !alias.scope !99125, !noalias !99126
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !99339
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !99339, !alias.scope !99125, !noalias !99126
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !99340, !noalias !99120

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !99341, !noalias !99124
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !99342, !alias.scope !99127, !noalias !99128, !noundef !2617 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !99343, !alias.scope !99127, !noalias !99128, !noundef !2617
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !99342
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !99342

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.bf, !dbg !99342

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !99344
  store i64 %i.eu, ptr %i.en, align 8, !dbg !99344, !alias.scope !99127, !noalias !99128
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !99345, !alias.scope !99127, !noalias !99128, !nonnull !2617, !noundef !2617
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !99346, !noalias !99120 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !99347
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !99348
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !99348

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #30
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !99349, !noalias !99120

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !99347 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !99350
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !99351, !alias.scope !99129, !noalias !99130
  %i.fa = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !99352
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !99353, !noalias !99132
  %i.fb = load i64, ptr %i.en, align 8, !dbg !99342, !alias.scope !99127, !noalias !99128, !noundef !2617 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !99343, !alias.scope !99127, !noalias !99128, !noundef !2617
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !99342
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !99342

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !99354, !noalias !99118
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bi, !dbg !99355, !noalias !99120

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.bj, !dbg !99356, !noalias !99120

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !99355, !noalias !99120
  unreachable, !dbg !99355

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !99357 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bp unwind label %bb.bo, !dbg !99358, !noalias !99108

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.b, align 8, !dbg !99359, !noalias !99133
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !99359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !99359, !noalias !99133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !99360, !noalias !99118
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit8.i.i unwind label %bb.bl, !dbg !99361, !noalias !99120

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_9
