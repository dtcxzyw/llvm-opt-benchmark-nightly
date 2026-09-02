Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.13?download=true
inline.NumInlined: 5868
inline.NumDeleted: 2281
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !28943, !alias.scope !28801, !noalias !28816
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !28943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !28943, !noalias !28816
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !28950

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !28952, !noalias !28816
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !28953

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v) #39
          to label %common.resume unwind label %bb.ao, !dbg !28955, !noalias !28801

bb.x:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !28958
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !28959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !28968, !noalias !28806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !28969, !noalias !28806
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !dbg !28970, !alias.scope !28974, !noalias !28806
  call fastcc void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %i.u, i64 noundef %.sroa.0.0.i.i), !dbg !28977, !noalias !28829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !28980, !noalias !28806
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !28981
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !28981, !noalias !28806, !nonnull !11, !noundef !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !28999
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !28999, !noalias !28806, !noundef !11
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !29000   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !29009, !noalias !28806
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !29013, !noalias !28801

bb.y:                                             ; preds = %bb.x
  %i.ck = load i8, ptr %i.q, align 16, !dbg !29014, !range !25810, !noalias !28806, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !29014
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !29017
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !29017, !noalias !28806 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !29018

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2, !dbg !29019
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !29020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !29020, !noalias !28806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !29019, !noalias !28806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !29024, !noalias !28806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !29020, !noalias !28806
  store i8 %i.ck, ptr %i.o, align 16, !dbg !29020, !noalias !28806
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !29020
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !29020, !noalias !28806
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBc_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.o)
          to label %bb.an unwind label %bb.w, !dbg !29020, !noalias !28801

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !29024, !noalias !28806
  switch i8 %i.cm, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !29025

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !29028, !noalias !28806
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !29030, !alias.scope !28804, !noalias !28823, !noundef !11 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !29037
  br i1 %i.co, label %.invoke.i, label %bb.ad, !dbg !29037, !prof !54

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !29043, !noalias !28806
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !29044, !alias.scope !28804, !noalias !28823, !noundef !11 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !29050
  br i1 %i.cq, label %.invoke.i, label %bb.aj, !dbg !29050, !prof !54

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !29054, !alias.scope !28804, !noalias !28823, !nonnull !11, !noundef !11
  %i.cs = add i64 %i.cn, -8, !dbg !29063
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !29064
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ae unwind label %bb.w, !dbg !29028, !noalias !28801

bb.ae:                                            ; preds = %bb.ad
  %i.cu = load i64, ptr %i.t, align 8, !dbg !29070, !range !475, !noalias !28806, !noundef !11
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !29070
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !29073

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !dbg !29074, !noalias !28816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !29075, !noalias !28806
  br label %bb.ai, !dbg !29076

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !29075, !noalias !28806
  br label %bb.ah, !dbg !29078

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !29079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !29080, !noalias !28816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !28955, !noalias !28806
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !28885

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v), !dbg !28955, !noalias !28801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !28955, !noalias !28806
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !29081

bb.aj:                                            ; preds = %bb.ac
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !29083, !alias.scope !28804, !noalias !28823, !nonnull !11, !noundef !11
  %i.cx = add i64 %i.cp, -8, !dbg !29092
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !29093
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ak unwind label %bb.w, !dbg !29043, !noalias !28801

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cz = phi i64 [ %i.cn, %bb.ab ], [ %i.cp, %bb.ac ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.w, !dbg !29098, !noalias !28801

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.db = load i64, ptr %i.s, align 8, !dbg !29102, !range !475, !noalias !28806, !noundef !11
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !29102
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !29104

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !29105, !noalias !28816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !29106, !noalias !28806
  br label %bb.ai, !dbg !29076

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !29106, !noalias !28806
  br label %bb.ah, !dbg !29107

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !29108, !noalias !28806
  %.sroa.050.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !29109, !noalias !28806
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !29109
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !29109, !noalias !28806
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 9, !dbg !29109
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 9, !dbg !29110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !29109, !noalias !28816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !29116, !noalias !28806
  store i64 %.sroa.050.0.copyload.i, ptr %i.ao, align 8, !dbg !29110, !alias.scope !28801, !noalias !28816
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !29110
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !29110, !alias.scope !28801, !noalias !28816
  br label %bb.ai, !dbg !29117

bb.ao:                                            ; preds = %bb.w
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !29119, !noalias !28801
  unreachable, !dbg !29119

common.resume:                                    ; preds = %bb.ci, %bb.cd, %bb.aw, %.body.i, %bb.bu, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gu, %bb.cd ], [ %i.cd, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fy, %bb.bu ], [ %i.dy, %bb.aw ], [ %i.hg, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !29120

bb.ap:                                            ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !29121 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !29130
  %i.df = and i64 %i.de, 7, !dbg !29140
  %i.dg = icmp eq i64 %i.df, 0, !dbg !29141
  br i1 %i.dg, label %bb.ar, label %bb.aq, !dbg !29141

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !29142, !noalias !28829
  unreachable, !dbg !29142

bb.ar:                                            ; preds = %bb.ap
  %i.dh = add nsw i64 %i.ay, -8, !dbg !29144
  %i.di = lshr exact i64 %i.dh, 4, !dbg !29145
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !29146
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !29147, !noalias !28842
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !29081

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.ao, align 8, !dbg !29152
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !28885

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !28885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !28885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !28885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !28885
  br label %bb.cb, !dbg !28886

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !29152 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !28885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !28885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !28885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !28885
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !29152
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !28886

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !29153
  call void @llvm.experimental.noalias.scope.decl(metadata !29154), !dbg !29153
  call void @llvm.experimental.noalias.scope.decl(metadata !29157), !dbg !29153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !29159
  %i.dl = shl i64 %2, 4, !dbg !29159              ; 3 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !29159
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !29168, !prof !54

bb.at:                                            ; preds = %bb.as
  %i.dn = icmp ugt i64 %i.dl, %i.ay, !dbg !29172
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !29172, !prof !27291

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !29174, !noalias !29175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !29176, !noalias !29181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !29185, !noalias !29181
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !29185, !noalias !29181
  %i.do = load i64, ptr %i.g, align 8, !dbg !29185, !range !499, !noalias !29181, !noundef !11
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !29191
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !29192
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !29192, !range !3414, !noalias !29181, !noundef !11 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !29192 ; 2 uses
  br i1 %i.dp, label %bb.av, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !29191, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !29193, !noalias !29181
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !29194, !noalias !29181
  unreachable, !dbg !29194

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.au
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !29195, !noalias !29181, !nonnull !11, !noundef !11
  %i.dv = icmp ule i64 %2, %i.dr, !dbg !29196
  call void @llvm.assume(i1 %i.dv), !dbg !29198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !29200, !noalias !29181
  store i64 %i.dr, ptr %i.i, align 8, !dbg !29201, !noalias !29181
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !29201
  store ptr %i.du, ptr %i.dw, align 8, !dbg !29201, !noalias !29181
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !29201
  store i64 0, ptr %i.dx, align 8, !dbg !29201, !noalias !29181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !29202, !noalias !29181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !dbg !29202, !noalias !29175
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsE11extend_withCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.h)
          to label %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.aw, !dbg !29204, !noalias !29181

bb.aw:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.i) #39
          to label %common.resume unwind label %bb.ax, !dbg !29205, !noalias !29181

bb.ax:                                            ; preds = %bb.aw
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !29206, !noalias !29181
  unreachable, !dbg !29206

_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !29207, !noalias !29181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !29208, !noalias !29209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !29205, !noalias !29181
  br i1 %5, label %bb.bw, label %bb.ay, !dbg !29210

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !29212, !noalias !29175
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !29212
  store i64 %2, ptr %i.ea, align 8, !dbg !29212, !noalias !29175
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !29212
  store ptr @95, ptr %i.eb, align 16, !dbg !29212, !noalias !29175
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !29212
  store i64 43, ptr %i.ec, align 8, !dbg !29212, !noalias !29175
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !29212
  store i64 %.sroa.03.038.i, ptr %i.ed, align 16, !dbg !29212, !noalias !29175
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !29212
  store i64 %i.ay, ptr %i.ee, align 8, !dbg !29212, !noalias !29175
  store i64 26, ptr %i.m, align 16, !dbg !29212, !noalias !29175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !29213, !noalias !29175
  store ptr %i.m, ptr %i.l, align 8, !dbg !29213, !noalias !29175
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !29213
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !29213, !noalias !29175
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @91, ptr noundef nonnull %i.l), !dbg !29216, !noalias !29175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !29222, !noalias !29175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !29222, !noalias !29175
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !29222
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !29223, !noalias !29157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !29227
  br label %bb.cf, !dbg !29228

bb.ay:                                            ; preds = %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !29229
  %i.ef = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !29229
  %.val16.i = load ptr, ptr %i.ef, align 8, !dbg !29229, !noalias !29175 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !29229
  %.val17.i = load i64, ptr %i.eg, align 8, !dbg !29229, !noalias !29175
  call void @llvm.experimental.noalias.scope.decl(metadata !29230), !dbg !29229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !29233, !noalias !29237
  store i64 0, ptr %i.f, align 8, !dbg !29239, !noalias !29237
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !29239 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.eh, align 8, !dbg !29239, !noalias !29237
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !29239 ; 3 uses
  store i64 0, ptr %i.ei, align 8, !dbg !29239, !noalias !29237
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !29242, !noalias !29237

.loopexit.i.i:                                    ; preds = %bb.bg
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %bb.bh, %bb.be, %bb.bd, %bb.bb, %bb.ay
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bo, !dbg !29244, !noalias !29237

bb.ba:                                            ; preds = %bb.ay
  %i.ej = load ptr, ptr %i.eh, align 8, !dbg !29245, !noalias !29237, !nonnull !11, !noundef !11 ; 2 uses
  %i.ek = load i64, ptr %i.ei, align 8, !dbg !29258, !noalias !29237, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29259), !dbg !29262
  call void @llvm.experimental.noalias.scope.decl(metadata !29263), !dbg !29262
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !29265, !alias.scope !29268, !noalias !29271, !nonnull !11, !noundef !11
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !29265
  %.val1.i.i.i.i = load i64, ptr %i.el, align 8, !dbg !29265, !alias.scope !29268, !noalias !29271, !noundef !11 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ba), !dbg !29273 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !29275 ; 2 uses
  %i.en = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !29280
  call void @llvm.experimental.noalias.scope.decl(metadata !29281), !dbg !29284
  %i.eo = icmp ugt i64 %i.ek, %i.en, !dbg !29285
  br i1 %i.eo, label %bb.bd, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !29285

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ba
  %i.ep = icmp eq i64 %i.ek, 1, !dbg !29287
  br i1 %i.ep, label %bb.bc, label %bb.bb, !dbg !29287

bb.bb:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.ej, i64 noundef range(i64 0, -9223372036854775808) %i.ek, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef range(i64 0, -9223372036854775808) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !29288, !noalias !29237

bb.bc:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.eq = load i8, ptr %i.em, align 1, !dbg !29290, !noalias !29291, !noundef !11
  store i8 %i.eq, ptr %i.ej, align 1, !dbg !29293, !alias.scope !29294, !noalias !29295
  br label %bb.be, !dbg !29296

bb.bd:                                            ; preds = %bb.ba
  store i64 %.val1.i.i.i.i, ptr %i.bb, align 8, !dbg !29297, !alias.scope !29298, !noalias !29299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !29300, !noalias !29237
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bl unwind label %.loopexit.split-lp.i.i, !dbg !29300, !noalias !29237

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.er = add i64 %i.ek, %i.ba, !dbg !29307
  store i64 %i.er, ptr %i.bb, align 8, !dbg !29297, !alias.scope !29298, !noalias !29299
  %i.es = load ptr, ptr %i.eh, align 8, !dbg !29308, !noalias !29237, !nonnull !11, !noundef !11 ; 2 uses
  %i.et = load i64, ptr %i.ei, align 8, !dbg !29320, !noalias !29237, !noundef !11 ; 2 uses
  %i.eu = and i64 %i.et, 15, !dbg !29321
  %i.ev = and i64 %i.et, -16, !dbg !29324         ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ev, !dbg !29325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !29328, !noalias !29237
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !29330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !29339, !noalias !29342
  store ptr %i.es, ptr %i.c, align 8, !dbg !29346, !alias.scope !29348, !noalias !29352
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !29346
  store i64 %i.ev, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !29346, !alias.scope !29348, !noalias !29352
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !29346
  store ptr %i.ew, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !29346, !alias.scope !29348, !noalias !29352
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !29346
  store i64 %i.eu, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !29346, !alias.scope !29348, !noalias !29352
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !29346
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !29346, !alias.scope !29348, !noalias !29352
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bf unwind label %.loopexit.split-lp.i.i, !dbg !29353, !noalias !29237

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !29356, !noalias !29342
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.fa = load i64, ptr %i.ey, align 8, !dbg !29357, !alias.scope !29368, !noalias !29375, !noundef !11 ; 2 uses
  %i.fb = load i64, ptr %i.ez, align 8, !dbg !29379, !alias.scope !29368, !noalias !29375, !noundef !11
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !29357
  br i1 %i.fc, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !29357

.lr.ph.i.i.i:                                     ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bg, !dbg !29357

bb.bg:                                            ; preds = %bb.bi, %.lr.ph.i.i.i
  %i.fe = phi i64 [ %i.fa, %.lr.ph.i.i.i ], [ %i.fo, %bb.bi ] ; 3 uses
  %i.ff = add nuw i64 %i.fe, 1, !dbg !29380
  store i64 %i.ff, ptr %i.ey, align 8, !dbg !29380, !alias.scope !29368, !noalias !29375
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !29382, !alias.scope !29368, !noalias !29375, !nonnull !11, !noundef !11
  %i.fg = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fd, i64 noundef %i.fe)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !29383, !noalias !29237 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.bg
  %i.fh = extractvalue { ptr, i64 } %i.fg, 1, !dbg !29384
  %i.fi = icmp eq i64 %i.fh, 16, !dbg !29385
  br i1 %i.fi, label %bb.bi, label %bb.bh, !dbg !29385

bb.bh:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !29955
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !29955, !alias.scope !29813, !noalias !29828
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !29955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !29955, !noalias !29828
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !29962

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !29964, !noalias !29828
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !29965

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v) #39
          to label %common.resume unwind label %bb.aq, !dbg !29967, !noalias !29813

bb.z:                                             ; preds = %.thread.i
  %i.ch = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !29970
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ch, i64 %2), !dbg !29971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !29980, !noalias !29818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !29981, !noalias !29818
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !dbg !29982, !alias.scope !29984, !noalias !29818
  call fastcc void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %i.u, i64 noundef %.sroa.0.0.i.i), !dbg !29987, !noalias !29841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !29990, !noalias !29818
  %i.ci = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !29991
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !29991, !noalias !29818, !nonnull !11, !noundef !11 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !30009
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !30009, !noalias !29818, !noundef !11
  %i.cm = shl nuw nsw i64 %i.cl, 4, !dbg !30010   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !30017, !noalias !29818
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !30021, !noalias !29813

bb.aa:                                            ; preds = %bb.z
  %i.cn = load i8, ptr %i.q, align 16, !dbg !30022, !range !25810, !noalias !29818, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.cn, 9, !dbg !30022
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !30025
  %i.cp = load i8, ptr %i.co, align 1, !dbg !30025, !noalias !29818 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !30026

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2, !dbg !30027
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !30028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !30028, !noalias !29818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !30027, !noalias !29818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !30032, !noalias !29818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !30028, !noalias !29818
  store i8 %i.cn, ptr %i.o, align 16, !dbg !30028, !noalias !29818
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !30028
  store i8 %i.cp, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !30028, !noalias !29818
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBc_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.o)
          to label %bb.ap unwind label %bb.y, !dbg !30028, !noalias !29813

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !30032, !noalias !29818
  switch i8 %i.cp, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !30033

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !30036, !noalias !29818
  %i.cq = load i64, ptr %i.bj, align 8, !dbg !30038, !alias.scope !29816, !noalias !29835, !noundef !11 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 8, !dbg !30045
  br i1 %i.cr, label %.invoke.i, label %bb.af, !dbg !30045, !prof !54

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !30051, !noalias !29818
  %i.cs = load i64, ptr %i.bj, align 8, !dbg !30052, !alias.scope !29816, !noalias !29835, !noundef !11 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 8, !dbg !30058
  br i1 %i.ct, label %.invoke.i, label %bb.al, !dbg !30058, !prof !54

bb.af:                                            ; preds = %bb.ad
  %i.cu = load ptr, ptr %i.bx, align 8, !dbg !30062, !alias.scope !29816, !noalias !29835, !nonnull !11, !noundef !11
  %i.cv = add i64 %i.cq, -8, !dbg !30071
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8, !dbg !30072
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef %i.cv, ptr noalias noundef nonnull %i.cj, i64 noundef %i.cm)
          to label %bb.ag unwind label %bb.y, !dbg !30036, !noalias !29813

bb.ag:                                            ; preds = %bb.af
  %i.cx = load i64, ptr %i.t, align 8, !dbg !30078, !range !475, !noalias !29818, !noundef !11
  %.not144.i = icmp eq i64 %i.cx, 18, !dbg !30078
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !30081

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !dbg !30082, !noalias !29828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !30083, !noalias !29818
  br label %bb.ak, !dbg !30084

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !30083, !noalias !29818
  br label %bb.aj, !dbg !30086

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !30087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !30088, !noalias !29828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !29967, !noalias !29818
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !29897

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v), !dbg !29967, !noalias !29813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !29967, !noalias !29818
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !30089

bb.al:                                            ; preds = %bb.ae
  %i.cz = load ptr, ptr %i.bx, align 8, !dbg !30091, !alias.scope !29816, !noalias !29835, !nonnull !11, !noundef !11
  %i.da = add i64 %i.cs, -8, !dbg !30100
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8, !dbg !30101
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef %i.da, ptr noalias noundef nonnull %i.cj, i64 noundef %i.cm)
          to label %bb.am unwind label %bb.y, !dbg !30051, !noalias !29813

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.dc = phi i64 [ %i.cq, %bb.ad ], [ %i.cs, %bb.ae ] ; 2 uses
  %i.dd = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.dc, i64 noundef %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd) #40
          to label %.cont.i unwind label %bb.y, !dbg !30106, !noalias !29813

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.de = load i64, ptr %i.s, align 8, !dbg !30110, !range !475, !noalias !29818, !noundef !11
  %.not145.i = icmp eq i64 %i.de, 18, !dbg !30110
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !30112

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !30113, !noalias !29828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !30114, !noalias !29818
  br label %bb.ak, !dbg !30084

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !30114, !noalias !29818
  br label %bb.aj, !dbg !30115

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !30116, !noalias !29818
  %.sroa.050.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !30117, !noalias !29818
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !30117
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !30117, !noalias !29818
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 9, !dbg !30117
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 9, !dbg !30118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !30117, !noalias !29828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !30124, !noalias !29818
  store i64 %.sroa.050.0.copyload.i, ptr %i.ao, align 8, !dbg !30118, !alias.scope !29813, !noalias !29828
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !30118
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !30118, !alias.scope !29813, !noalias !29828
  br label %bb.ak, !dbg !30125

bb.aq:                                            ; preds = %bb.y
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !30127, !noalias !29813
  unreachable, !dbg !30127

common.resume:                                    ; preds = %bb.ck, %bb.cf, %bb.ay, %.body.i, %bb.bv, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.gn, %bb.cf ], [ %i.cg, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fv, %bb.bv ], [ %i.eb, %bb.ay ], [ %i.gz, %bb.ck ]
  resume { ptr, i32 } %common.resume.op, !dbg !30128

bb.ar:                                            ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8, !dbg !30129 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64, !dbg !30138
  %i.di = and i64 %i.dh, 7, !dbg !30145
  %i.dj = icmp eq i64 %i.di, 0, !dbg !30146
  br i1 %i.dj, label %bb.at, label %bb.as, !dbg !30146

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !30147, !noalias !29841
  unreachable, !dbg !30147

bb.at:                                            ; preds = %bb.ar
  %i.dk = add nsw i64 %i.ay, -8, !dbg !30149
  %i.dl = lshr exact i64 %i.dk, 4, !dbg !30150
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !30151
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dg, i64 noundef %i.dl) #45, !dbg !30152, !noalias !29854
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !30089

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.ao, align 8, !dbg !30157
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !29897

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !29897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !29897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !29897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !29897
  br label %bb.cd, !dbg !29898

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dn = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !30157 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !29897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !29897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !29897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !29897
  %.not132 = icmp eq i64 %i.dn, 18, !dbg !30157
  br i1 %.not132, label %bb.cd, label %bb.cc, !dbg !29898

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !30158
  call void @llvm.experimental.noalias.scope.decl(metadata !30159), !dbg !30158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !30162
  %i.do = shl i64 %2, 4, !dbg !30162              ; 3 uses
  %i.dp = icmp ugt i64 %2, 1152921504606846975, !dbg !30162
  br i1 %i.dp, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !30171, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dq = icmp ugt i64 %i.do, %i.ay, !dbg !30175
  br i1 %i.dq, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !30175, !prof !27291

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !30177, !noalias !30178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !30180, !noalias !30184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !30188, !noalias !30184
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !30188, !noalias !30192
  %i.dr = load i64, ptr %i.g, align 8, !dbg !30188, !range !499, !noalias !30184, !noundef !11
  %i.ds = trunc nuw i64 %i.dr to i1, !dbg !30193
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !30194
  %i.du = load i64, ptr %i.dt, align 8, !dbg !30194, !range !3414, !noalias !30184, !noundef !11 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !30194 ; 2 uses
  br i1 %i.ds, label %bb.ax, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !30193, !prof !54

bb.ax:                                            ; preds = %bb.aw
  %i.dw = load i64, ptr %i.dv, align 8, !dbg !30195, !noalias !30184
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.du, i64 %i.dw) #40, !dbg !30196, !noalias !30192
  unreachable, !dbg !30196

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.aw
  %i.dx = load ptr, ptr %i.dv, align 8, !dbg !30197, !noalias !30184, !nonnull !11, !noundef !11
  %i.dy = icmp ule i64 %2, %i.du, !dbg !30198
  call void @llvm.assume(i1 %i.dy), !dbg !30200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !30202, !noalias !30184
  store i64 %i.du, ptr %i.i, align 8, !dbg !30203, !noalias !30184
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !30203
  store ptr %i.dx, ptr %i.dz, align 8, !dbg !30203, !noalias !30184
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !30203
  store i64 0, ptr %i.ea, align 8, !dbg !30203, !noalias !30184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !30204, !noalias !30184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !dbg !30204, !noalias !30178
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsE11extend_withCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.h)
          to label %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.ay, !dbg !30205, !noalias !30192

bb.ay:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.i) #39
          to label %common.resume unwind label %bb.az, !dbg !30206, !noalias !30192

bb.az:                                            ; preds = %bb.ay
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !30207, !noalias !30192
  unreachable, !dbg !30207

_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !30208, !noalias !30184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !30209, !noalias !30210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !30206, !noalias !30184
  br i1 %5, label %bb.bx, label %bb.ba, !dbg !30211

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.do, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !30213, !noalias !30178
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !30213
  store i64 %2, ptr %i.ed, align 8, !dbg !30213, !noalias !30178
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !30213
  store ptr @95, ptr %i.ee, align 16, !dbg !30213, !noalias !30178
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !30213
  store i64 43, ptr %i.ef, align 8, !dbg !30213, !noalias !30178
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !30213
  store i64 %.sroa.03.038.i, ptr %i.eg, align 16, !dbg !30213, !noalias !30178
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !30213
  store i64 %i.ay, ptr %i.eh, align 8, !dbg !30213, !noalias !30178
  store i64 26, ptr %i.m, align 16, !dbg !30213, !noalias !30178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !30214, !noalias !30178
  store ptr %i.m, ptr %i.l, align 8, !dbg !30214, !noalias !30178
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !30214
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !30214, !noalias !30178
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @91, ptr noundef nonnull %i.l), !dbg !30217, !noalias !30159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !30223, !noalias !30178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !30223, !noalias !30178
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !30223
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !30224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !30228
  br label %bb.ch, !dbg !30229

bb.ba:                                            ; preds = %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !30230
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !30230
  %.val16.i = load ptr, ptr %i.ei, align 8, !dbg !30230, !noalias !30178 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !30230
  %.val17.i = load i64, ptr %i.ej, align 8, !dbg !30230, !noalias !30178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !30231, !noalias !30235
  store i64 0, ptr %i.f, align 8, !dbg !30239, !noalias !30235
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !30239 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ek, align 8, !dbg !30239, !noalias !30235
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !30239 ; 3 uses
  store i64 0, ptr %i.el, align 8, !dbg !30239, !noalias !30235
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.do, i8 noundef 0)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !30242, !noalias !30244

.loopexit.i.i:                                    ; preds = %bb.bh
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp.i.i:                           ; preds = %bb.bi, %bb.bf, %bb.be, %bb.bc, %bb.ba
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bp, !dbg !30245, !noalias !30246

bb.bc:                                            ; preds = %bb.ba
  %i.em = load ptr, ptr %i.ek, align 8, !dbg !30247, !noalias !30235, !nonnull !11, !noundef !11
  %i.en = load i64, ptr %i.el, align 8, !dbg !30260, !noalias !30235, !noundef !11
  %i.eo = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.em, i64 noundef %i.en)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !30261, !noalias !30246 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %.not.i.i = icmp eq ptr %i.eo, null, !dbg !30262
  br i1 %.not.i.i, label %bb.bf, label %bb.be, !dbg !30265

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !30266, !noalias !30235
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eo)
          to label %bb.bm unwind label %.loopexit.split-lp.i.i, !dbg !30266, !noalias !30246

bb.bf:                                            ; preds = %bb.bd
  %i.ep = load ptr, ptr %i.ek, align 8, !dbg !30273, !noalias !30235, !nonnull !11, !noundef !11 ; 2 uses
  %i.eq = load i64, ptr %i.el, align 8, !dbg !30285, !noalias !30235, !noundef !11 ; 2 uses
  %i.er = and i64 %i.eq, 15, !dbg !30286
  %i.es = and i64 %i.eq, -16, !dbg !30289         ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es, !dbg !30290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !30293, !noalias !30235
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !30295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !30304, !noalias !30306
  store ptr %i.ep, ptr %i.c, align 8, !dbg !30310, !alias.scope !30312, !noalias !30316
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !30310
  store i64 %i.es, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !30310, !alias.scope !30312, !noalias !30316
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !30310
  store ptr %i.et, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !30310, !alias.scope !30312, !noalias !30316
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !30310
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !30310, !alias.scope !30312, !noalias !30316
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !30310
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !30310, !alias.scope !30312, !noalias !30316
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bg unwind label %.loopexit.split-lp.i.i, !dbg !30317, !noalias !30246

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !30319, !noalias !30306
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ex = load i64, ptr %i.ev, align 8, !dbg !30320, !alias.scope !30329, !noalias !30336, !noundef !11 ; 2 uses
  %i.ey = load i64, ptr %i.ew, align 8, !dbg !30340, !alias.scope !30329, !noalias !30336, !noundef !11
  %i.ez = icmp ult i64 %i.ex, %i.ey, !dbg !30320
  br i1 %i.ez, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !30320

.lr.ph.i.i.i:                                     ; preds = %bb.bg
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bh, !dbg !30320

bb.bh:                                            ; preds = %bb.bj, %.lr.ph.i.i.i
  %i.fb = phi i64 [ %i.ex, %.lr.ph.i.i.i ], [ %i.fl, %bb.bj ] ; 3 uses
  %i.fc = add nuw i64 %i.fb, 1, !dbg !30341
  store i64 %i.fc, ptr %i.ev, align 8, !dbg !30341, !alias.scope !30329, !noalias !30336
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !30342, !alias.scope !30329, !noalias !30336, !nonnull !11, !noundef !11
  %i.fd = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fa, i64 noundef %i.fb)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !30343, !noalias !30246 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bh
  %i.fe = extractvalue { ptr, i64 } %i.fd, 1, !dbg !30344
  %i.ff = icmp eq i64 %i.fe, 16, !dbg !30345
  br i1 %i.ff, label %bb.bj, label %bb.bi, !dbg !30345

bb.bi:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !30356, !noalias !30246

.noexc6.i.i:                                      ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %.noexc.i.i
  %i.fg = extractvalue { ptr, i64 } %i.fd, 0, !dbg !30344 ; 4 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.fb, !dbg !30357 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.fg, align 1, !dbg !30360, !alias.scope !30362, !noalias !30366
  %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 4, !dbg !30360
  %.sroa.4.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i.i, align 1, !dbg !30360, !alias.scope !30362, !noalias !30366
  %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8, !dbg !30360
  %.sroa.4.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i.i, align 1, !dbg !30360, !alias.scope !30362, !noalias !30366
  %i.fi = call i32 @llvm.bswap.i32(i32 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !30373
  %i.fj = call i32 @llvm.bswap.i32(i32 %.sroa.4.sroa.4.0.copyload.i.i.i.i.i), !dbg !30380
  %i.fk = call i64 @llvm.bswap.i64(i64 %.sroa.4.sroa.5.0.copyload.i.i.i.i.i), !dbg !30385
  store i32 %i.fi, ptr %i.fh, align 8, !dbg !30390, !noalias !30366
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 4, !dbg !30390
  store i32 %i.fj, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 4, !dbg !30390, !noalias !30366
  %.sroa.5.0..sroa_idx.i.i3.i.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8, !dbg !30390
  store i64 %i.fk, ptr %.sroa.5.0..sroa_idx.i.i3.i.i.i, align 8, !dbg !30390, !noalias !30366
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !30845, !alias.scope !30703, !noalias !30718
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !30845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !30845, !noalias !30718
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !30852

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !30854, !noalias !30718
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !30855

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v) #39
          to label %common.resume unwind label %bb.ao, !dbg !30857, !noalias !30703

bb.x:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !30860
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !30861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !30870, !noalias !30708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !30871, !noalias !30708
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !dbg !30872, !alias.scope !30876, !noalias !30708
  call fastcc void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.u, i64 noundef %.sroa.0.0.i.i), !dbg !30879, !noalias !30731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !30882, !noalias !30708
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !30883
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !30883, !noalias !30708, !nonnull !11, !noundef !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !30901
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !30901, !noalias !30708, !noundef !11
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !30902   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !30911, !noalias !30708
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !30915, !noalias !30703

bb.y:                                             ; preds = %bb.x
  %i.ck = load i8, ptr %i.q, align 16, !dbg !30916, !range !25810, !noalias !30708, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !30916
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !30919
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !30919, !noalias !30708 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !30920

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2, !dbg !30921
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !30922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !30922, !noalias !30708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !30921, !noalias !30708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !30926, !noalias !30708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !30922, !noalias !30708
  store i8 %i.ck, ptr %i.o, align 16, !dbg !30922, !noalias !30708
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !30922
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !30922, !noalias !30708
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBc_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.o)
          to label %bb.an unwind label %bb.w, !dbg !30922, !noalias !30703

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !30926, !noalias !30708
  switch i8 %i.cm, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !30927

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !30930, !noalias !30708
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !30932, !alias.scope !30706, !noalias !30725, !noundef !11 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !30939
  br i1 %i.co, label %.invoke.i, label %bb.ad, !dbg !30939, !prof !54

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !30945, !noalias !30708
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !30946, !alias.scope !30706, !noalias !30725, !noundef !11 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !30952
  br i1 %i.cq, label %.invoke.i, label %bb.aj, !dbg !30952, !prof !54

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !30956, !alias.scope !30706, !noalias !30725, !nonnull !11, !noundef !11
  %i.cs = add i64 %i.cn, -8, !dbg !30965
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !30966
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ae unwind label %bb.w, !dbg !30930, !noalias !30703

bb.ae:                                            ; preds = %bb.ad
  %i.cu = load i64, ptr %i.t, align 8, !dbg !30972, !range !475, !noalias !30708, !noundef !11
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !30972
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !30975

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !dbg !30976, !noalias !30718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !30977, !noalias !30708
  br label %bb.ai, !dbg !30978

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !30977, !noalias !30708
  br label %bb.ah, !dbg !30980

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !30981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !30982, !noalias !30718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !30857, !noalias !30708
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !30787

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v), !dbg !30857, !noalias !30703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !30857, !noalias !30708
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !30983

bb.aj:                                            ; preds = %bb.ac
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !30985, !alias.scope !30706, !noalias !30725, !nonnull !11, !noundef !11
  %i.cx = add i64 %i.cp, -8, !dbg !30994
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !30995
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ak unwind label %bb.w, !dbg !30945, !noalias !30703

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cz = phi i64 [ %i.cn, %bb.ab ], [ %i.cp, %bb.ac ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.w, !dbg !31000, !noalias !30703

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.db = load i64, ptr %i.s, align 8, !dbg !31004, !range !475, !noalias !30708, !noundef !11
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !31004
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !31006

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !31007, !noalias !30718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !31008, !noalias !30708
  br label %bb.ai, !dbg !30978

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !31008, !noalias !30708
  br label %bb.ah, !dbg !31009

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !31010, !noalias !30708
  %.sroa.050.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !31011, !noalias !30708
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !31011
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !31011, !noalias !30708
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 9, !dbg !31011
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 9, !dbg !31012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !31011, !noalias !30718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !31018, !noalias !30708
  store i64 %.sroa.050.0.copyload.i, ptr %i.ao, align 8, !dbg !31012, !alias.scope !30703, !noalias !30718
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31012
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !31012, !alias.scope !30703, !noalias !30718
  br label %bb.ai, !dbg !31019

bb.ao:                                            ; preds = %bb.w
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !31021, !noalias !30703
  unreachable, !dbg !31021

common.resume:                                    ; preds = %bb.ci, %bb.cd, %bb.aw, %.body.i, %bb.bu, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gs, %bb.cd ], [ %i.cd, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fw, %bb.bu ], [ %i.dy, %bb.aw ], [ %i.he, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !31022

bb.ap:                                            ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !31023 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !31032
  %i.df = and i64 %i.de, 3, !dbg !31042
  %i.dg = icmp eq i64 %i.df, 0, !dbg !31043
  br i1 %i.dg, label %bb.ar, label %bb.aq, !dbg !31043

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !31044, !noalias !30731
  unreachable, !dbg !31044

bb.ar:                                            ; preds = %bb.ap
  %i.dh = add nsw i64 %i.ay, -8, !dbg !31046
  %i.di = lshr exact i64 %i.dh, 4, !dbg !31047
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31048
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !31049, !noalias !30744
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !30983

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.ao, align 8, !dbg !31054
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !30787

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !30787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !30787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !30787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !30787
  br label %bb.cb, !dbg !30788

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !31054 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !30787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !30787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !30787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !30787
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !31054
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !30788

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !31055
  call void @llvm.experimental.noalias.scope.decl(metadata !31056), !dbg !31055
  call void @llvm.experimental.noalias.scope.decl(metadata !31059), !dbg !31055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !31061
  %i.dl = shl i64 %2, 4, !dbg !31061              ; 3 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !31061
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !31070, !prof !54

bb.at:                                            ; preds = %bb.as
  %i.dn = icmp ugt i64 %i.dl, %i.ay, !dbg !31074
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !31074, !prof !27291

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !31076, !noalias !31077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !31078, !noalias !31083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !31087, !noalias !31083
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16), !dbg !31087, !noalias !31083
  %i.do = load i64, ptr %i.g, align 8, !dbg !31087, !range !499, !noalias !31083, !noundef !11
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !31093
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !31094
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !31094, !range !3414, !noalias !31083, !noundef !11 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !31094 ; 2 uses
  br i1 %i.dp, label %bb.av, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !31093, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !31095, !noalias !31083
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !31096, !noalias !31083
  unreachable, !dbg !31096

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.au
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !31097, !noalias !31083, !nonnull !11, !noundef !11
  %i.dv = icmp ule i64 %2, %i.dr, !dbg !31098
  call void @llvm.assume(i1 %i.dv), !dbg !31100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !31102, !noalias !31083
  store i64 %i.dr, ptr %i.i, align 8, !dbg !31103, !noalias !31083
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !31103
  store ptr %i.du, ptr %i.dw, align 8, !dbg !31103, !noalias !31083
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !31103
  store i64 0, ptr %i.dx, align 8, !dbg !31103, !noalias !31083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !31104, !noalias !31083
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !dbg !31104, !noalias !31077
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE11extend_withCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.h)
          to label %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.aw, !dbg !31106, !noalias !31083

bb.aw:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.i) #39
          to label %common.resume unwind label %bb.ax, !dbg !31107, !noalias !31083

bb.ax:                                            ; preds = %bb.aw
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !31108, !noalias !31083
  unreachable, !dbg !31108

_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !31109, !noalias !31083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !31110, !noalias !31111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !31107, !noalias !31083
  br i1 %5, label %bb.bw, label %bb.ay, !dbg !31112

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !31114, !noalias !31077
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !31114
  store i64 %2, ptr %i.ea, align 8, !dbg !31114, !noalias !31077
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !31114
  store ptr @96, ptr %i.eb, align 16, !dbg !31114, !noalias !31077
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !31114
  store i64 40, ptr %i.ec, align 8, !dbg !31114, !noalias !31077
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !31114
  store i64 %.sroa.03.038.i, ptr %i.ed, align 16, !dbg !31114, !noalias !31077
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !31114
  store i64 %i.ay, ptr %i.ee, align 8, !dbg !31114, !noalias !31077
  store i64 26, ptr %i.m, align 16, !dbg !31114, !noalias !31077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !31115, !noalias !31077
  store ptr %i.m, ptr %i.l, align 8, !dbg !31115, !noalias !31077
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !31115
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !31115, !noalias !31077
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @91, ptr noundef nonnull %i.l), !dbg !31118, !noalias !31077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !31124, !noalias !31077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !31124, !noalias !31077
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !31124
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !31125, !noalias !31059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !31129
  br label %bb.cf, !dbg !31130

bb.ay:                                            ; preds = %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !31131
  %i.ef = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !31131
  %.val16.i = load ptr, ptr %i.ef, align 8, !dbg !31131, !noalias !31077 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !31131
  %.val17.i = load i64, ptr %i.eg, align 8, !dbg !31131, !noalias !31077
  call void @llvm.experimental.noalias.scope.decl(metadata !31132), !dbg !31131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !31135, !noalias !31139
  store i64 0, ptr %i.f, align 8, !dbg !31141, !noalias !31139
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !31141 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.eh, align 8, !dbg !31141, !noalias !31139
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !31141 ; 3 uses
  store i64 0, ptr %i.ei, align 8, !dbg !31141, !noalias !31139
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !31144, !noalias !31139

.loopexit.i.i:                                    ; preds = %bb.bg
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %bb.bh, %bb.be, %bb.bd, %bb.bb, %bb.ay
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bo, !dbg !31146, !noalias !31139

bb.ba:                                            ; preds = %bb.ay
  %i.ej = load ptr, ptr %i.eh, align 8, !dbg !31147, !noalias !31139, !nonnull !11, !noundef !11 ; 2 uses
  %i.ek = load i64, ptr %i.ei, align 8, !dbg !31160, !noalias !31139, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31161), !dbg !31164
  call void @llvm.experimental.noalias.scope.decl(metadata !31165), !dbg !31164
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !31167, !alias.scope !31170, !noalias !31173, !nonnull !11, !noundef !11
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !31167
  %.val1.i.i.i.i = load i64, ptr %i.el, align 8, !dbg !31167, !alias.scope !31170, !noalias !31173, !noundef !11 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ba), !dbg !31175 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !31177 ; 2 uses
  %i.en = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !31182
  call void @llvm.experimental.noalias.scope.decl(metadata !31183), !dbg !31186
  %i.eo = icmp ugt i64 %i.ek, %i.en, !dbg !31187
  br i1 %i.eo, label %bb.bd, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !31187

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ba
  %i.ep = icmp eq i64 %i.ek, 1, !dbg !31189
  br i1 %i.ep, label %bb.bc, label %bb.bb, !dbg !31189

bb.bb:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.ej, i64 noundef range(i64 0, -9223372036854775808) %i.ek, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef range(i64 0, -9223372036854775808) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !31190, !noalias !31139

bb.bc:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.eq = load i8, ptr %i.em, align 1, !dbg !31192, !noalias !31193, !noundef !11
  store i8 %i.eq, ptr %i.ej, align 1, !dbg !31195, !alias.scope !31196, !noalias !31197
  br label %bb.be, !dbg !31198

bb.bd:                                            ; preds = %bb.ba
  store i64 %.val1.i.i.i.i, ptr %i.bb, align 8, !dbg !31199, !alias.scope !31200, !noalias !31201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !31202, !noalias !31139
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bl unwind label %.loopexit.split-lp.i.i, !dbg !31202, !noalias !31139

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.er = add i64 %i.ek, %i.ba, !dbg !31209
  store i64 %i.er, ptr %i.bb, align 8, !dbg !31199, !alias.scope !31200, !noalias !31201
  %i.es = load ptr, ptr %i.eh, align 8, !dbg !31210, !noalias !31139, !nonnull !11, !noundef !11 ; 2 uses
  %i.et = load i64, ptr %i.ei, align 8, !dbg !31222, !noalias !31139, !noundef !11 ; 2 uses
  %i.eu = and i64 %i.et, 15, !dbg !31223
  %i.ev = and i64 %i.et, -16, !dbg !31226         ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ev, !dbg !31227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !31230, !noalias !31139
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !31232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !31241, !noalias !31244
  store ptr %i.es, ptr %i.c, align 8, !dbg !31248, !alias.scope !31250, !noalias !31254
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !31248
  store i64 %i.ev, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !31248, !alias.scope !31250, !noalias !31254
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !31248
  store ptr %i.ew, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !31248, !alias.scope !31250, !noalias !31254
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !31248
  store i64 %i.eu, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !31248, !alias.scope !31250, !noalias !31254
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !31248
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !31248, !alias.scope !31250, !noalias !31254
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2o_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bf unwind label %.loopexit.split-lp.i.i, !dbg !31255, !noalias !31139

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !31258, !noalias !31244
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.fa = load i64, ptr %i.ey, align 8, !dbg !31259, !alias.scope !31270, !noalias !31277, !noundef !11 ; 2 uses
  %i.fb = load i64, ptr %i.ez, align 8, !dbg !31281, !alias.scope !31270, !noalias !31277, !noundef !11
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !31259
  br i1 %i.fc, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !31259

.lr.ph.i.i.i:                                     ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bg, !dbg !31259

bb.bg:                                            ; preds = %bb.bi, %.lr.ph.i.i.i
  %i.fe = phi i64 [ %i.fa, %.lr.ph.i.i.i ], [ %i.fm, %bb.bi ] ; 3 uses
  %i.ff = add nuw i64 %i.fe, 1, !dbg !31282
  store i64 %i.ff, ptr %i.ey, align 8, !dbg !31282, !alias.scope !31270, !noalias !31277
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !31284, !alias.scope !31270, !noalias !31277, !nonnull !11, !noundef !11
  %i.fg = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fd, i64 noundef %i.fe)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !31285, !noalias !31139 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.bg
  %i.fh = extractvalue { ptr, i64 } %i.fg, 1, !dbg !31286
  %i.fi = icmp eq i64 %i.fh, 16, !dbg !31287
  br i1 %i.fi, label %bb.bi, label %bb.bh, !dbg !31287

bb.bh:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31827
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !31827, !alias.scope !31685, !noalias !31700
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !31827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !31827, !noalias !31700
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !31834

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !31836, !noalias !31700
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !31837

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v) #39
          to label %common.resume unwind label %bb.aq, !dbg !31839, !noalias !31685

bb.z:                                             ; preds = %.thread.i
  %i.ch = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !31842
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ch, i64 %2), !dbg !31843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !31852, !noalias !31690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !31853, !noalias !31690
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !dbg !31854, !alias.scope !31856, !noalias !31690
  call fastcc void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.u, i64 noundef %.sroa.0.0.i.i), !dbg !31859, !noalias !31713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !31862, !noalias !31690
  %i.ci = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !31863
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !31863, !noalias !31690, !nonnull !11, !noundef !11 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !31881
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !31881, !noalias !31690, !noundef !11
  %i.cm = shl nuw nsw i64 %i.cl, 4, !dbg !31882   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !31889, !noalias !31690
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !31893, !noalias !31685

bb.aa:                                            ; preds = %bb.z
  %i.cn = load i8, ptr %i.q, align 16, !dbg !31894, !range !25810, !noalias !31690, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.cn, 9, !dbg !31894
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !31897
  %i.cp = load i8, ptr %i.co, align 1, !dbg !31897, !noalias !31690 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !31898

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2, !dbg !31899
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !31900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !31900, !noalias !31690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !31899, !noalias !31690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !31904, !noalias !31690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !31900, !noalias !31690
  store i8 %i.cn, ptr %i.o, align 16, !dbg !31900, !noalias !31690
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !31900
  store i8 %i.cp, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !31900, !noalias !31690
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBc_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.o)
          to label %bb.ap unwind label %bb.y, !dbg !31900, !noalias !31685

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !31904, !noalias !31690
  switch i8 %i.cp, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !31905

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !31908, !noalias !31690
  %i.cq = load i64, ptr %i.bj, align 8, !dbg !31910, !alias.scope !31688, !noalias !31707, !noundef !11 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 8, !dbg !31917
  br i1 %i.cr, label %.invoke.i, label %bb.af, !dbg !31917, !prof !54

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !31923, !noalias !31690
  %i.cs = load i64, ptr %i.bj, align 8, !dbg !31924, !alias.scope !31688, !noalias !31707, !noundef !11 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 8, !dbg !31930
  br i1 %i.ct, label %.invoke.i, label %bb.al, !dbg !31930, !prof !54

bb.af:                                            ; preds = %bb.ad
  %i.cu = load ptr, ptr %i.bx, align 8, !dbg !31934, !alias.scope !31688, !noalias !31707, !nonnull !11, !noundef !11
  %i.cv = add i64 %i.cq, -8, !dbg !31943
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8, !dbg !31944
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef %i.cv, ptr noalias noundef nonnull %i.cj, i64 noundef %i.cm)
          to label %bb.ag unwind label %bb.y, !dbg !31908, !noalias !31685

bb.ag:                                            ; preds = %bb.af
  %i.cx = load i64, ptr %i.t, align 8, !dbg !31950, !range !475, !noalias !31690, !noundef !11
  %.not144.i = icmp eq i64 %i.cx, 18, !dbg !31950
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !31953

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !dbg !31954, !noalias !31700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !31955, !noalias !31690
  br label %bb.ak, !dbg !31956

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !31955, !noalias !31690
  br label %bb.aj, !dbg !31958

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !31960, !noalias !31700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !31839, !noalias !31690
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !31769

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v), !dbg !31839, !noalias !31685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !31839, !noalias !31690
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !31961

bb.al:                                            ; preds = %bb.ae
  %i.cz = load ptr, ptr %i.bx, align 8, !dbg !31963, !alias.scope !31688, !noalias !31707, !nonnull !11, !noundef !11
  %i.da = add i64 %i.cs, -8, !dbg !31972
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8, !dbg !31973
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef %i.da, ptr noalias noundef nonnull %i.cj, i64 noundef %i.cm)
          to label %bb.am unwind label %bb.y, !dbg !31923, !noalias !31685

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.dc = phi i64 [ %i.cq, %bb.ad ], [ %i.cs, %bb.ae ] ; 2 uses
  %i.dd = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.dc, i64 noundef %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd) #40
          to label %.cont.i unwind label %bb.y, !dbg !31978, !noalias !31685

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.de = load i64, ptr %i.s, align 8, !dbg !31982, !range !475, !noalias !31690, !noundef !11
  %.not145.i = icmp eq i64 %i.de, 18, !dbg !31982
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !31984

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !31985, !noalias !31700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !31986, !noalias !31690
  br label %bb.ak, !dbg !31956

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !31986, !noalias !31690
  br label %bb.aj, !dbg !31987

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !31988, !noalias !31690
  %.sroa.050.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !31989, !noalias !31690
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !31989
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !31989, !noalias !31690
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 9, !dbg !31989
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 9, !dbg !31990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !31989, !noalias !31700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !31996, !noalias !31690
  store i64 %.sroa.050.0.copyload.i, ptr %i.ao, align 8, !dbg !31990, !alias.scope !31685, !noalias !31700
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31990
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !31990, !alias.scope !31685, !noalias !31700
  br label %bb.ak, !dbg !31997

bb.aq:                                            ; preds = %bb.y
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !31999, !noalias !31685
  unreachable, !dbg !31999

common.resume:                                    ; preds = %bb.ck, %bb.cf, %bb.ay, %.body.i, %bb.bv, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.gl, %bb.cf ], [ %i.cg, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.ft, %bb.bv ], [ %i.eb, %bb.ay ], [ %i.gx, %bb.ck ]
  resume { ptr, i32 } %common.resume.op, !dbg !32000

bb.ar:                                            ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8, !dbg !32001 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64, !dbg !32010
  %i.di = and i64 %i.dh, 3, !dbg !32017
  %i.dj = icmp eq i64 %i.di, 0, !dbg !32018
  br i1 %i.dj, label %bb.at, label %bb.as, !dbg !32018

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !32019, !noalias !31713
  unreachable, !dbg !32019

bb.at:                                            ; preds = %bb.ar
  %i.dk = add nsw i64 %i.ay, -8, !dbg !32021
  %i.dl = lshr exact i64 %i.dk, 4, !dbg !32022
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !32023
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dm, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dg, i64 noundef %i.dl) #45, !dbg !32024, !noalias !31726
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !31961

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.ao, align 8, !dbg !32029
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !31769

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !31769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !31769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !31769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !31769
  br label %bb.cd, !dbg !31770

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dn = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !32029 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !31769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !31769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !31769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !31769
  %.not132 = icmp eq i64 %i.dn, 18, !dbg !32029
  br i1 %.not132, label %bb.cd, label %bb.cc, !dbg !31770

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !32030
  call void @llvm.experimental.noalias.scope.decl(metadata !32031), !dbg !32030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !32034
  %i.do = shl i64 %2, 4, !dbg !32034              ; 3 uses
  %i.dp = icmp ugt i64 %2, 1152921504606846975, !dbg !32034
  br i1 %i.dp, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !32043, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dq = icmp ugt i64 %i.do, %i.ay, !dbg !32047
  br i1 %i.dq, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !32047, !prof !27291

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !32049, !noalias !32050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !32052, !noalias !32056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !32060, !noalias !32056
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16), !dbg !32060, !noalias !32064
  %i.dr = load i64, ptr %i.g, align 8, !dbg !32060, !range !499, !noalias !32056, !noundef !11
  %i.ds = trunc nuw i64 %i.dr to i1, !dbg !32065
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !32066
  %i.du = load i64, ptr %i.dt, align 8, !dbg !32066, !range !3414, !noalias !32056, !noundef !11 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !32066 ; 2 uses
  br i1 %i.ds, label %bb.ax, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !32065, !prof !54

bb.ax:                                            ; preds = %bb.aw
  %i.dw = load i64, ptr %i.dv, align 8, !dbg !32067, !noalias !32056
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.du, i64 %i.dw) #40, !dbg !32068, !noalias !32064
  unreachable, !dbg !32068

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.aw
  %i.dx = load ptr, ptr %i.dv, align 8, !dbg !32069, !noalias !32056, !nonnull !11, !noundef !11
  %i.dy = icmp ule i64 %2, %i.du, !dbg !32070
  call void @llvm.assume(i1 %i.dy), !dbg !32072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !32074, !noalias !32056
  store i64 %i.du, ptr %i.i, align 8, !dbg !32075, !noalias !32056
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !32075
  store ptr %i.dx, ptr %i.dz, align 8, !dbg !32075, !noalias !32056
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !32075
  store i64 0, ptr %i.ea, align 8, !dbg !32075, !noalias !32056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !32076, !noalias !32056
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !dbg !32076, !noalias !32050
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE11extend_withCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.h)
          to label %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.ay, !dbg !32077, !noalias !32064

bb.ay:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.i) #39
          to label %common.resume unwind label %bb.az, !dbg !32078, !noalias !32064

bb.az:                                            ; preds = %bb.ay
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !32079, !noalias !32064
  unreachable, !dbg !32079

_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !32080, !noalias !32056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !32081, !noalias !32082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !32078, !noalias !32056
  br i1 %5, label %bb.bx, label %bb.ba, !dbg !32083

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.do, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !32085, !noalias !32050
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !32085
  store i64 %2, ptr %i.ed, align 8, !dbg !32085, !noalias !32050
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !32085
  store ptr @96, ptr %i.ee, align 16, !dbg !32085, !noalias !32050
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !32085
  store i64 40, ptr %i.ef, align 8, !dbg !32085, !noalias !32050
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !32085
  store i64 %.sroa.03.038.i, ptr %i.eg, align 16, !dbg !32085, !noalias !32050
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !32085
  store i64 %i.ay, ptr %i.eh, align 8, !dbg !32085, !noalias !32050
  store i64 26, ptr %i.m, align 16, !dbg !32085, !noalias !32050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !32086, !noalias !32050
  store ptr %i.m, ptr %i.l, align 8, !dbg !32086, !noalias !32050
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !32086
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !32086, !noalias !32050
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @91, ptr noundef nonnull %i.l), !dbg !32089, !noalias !32031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !32095, !noalias !32050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !32095, !noalias !32050
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !32095
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !32096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !32100
  br label %bb.ch, !dbg !32101

bb.ba:                                            ; preds = %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !32102
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !32102
  %.val16.i = load ptr, ptr %i.ei, align 8, !dbg !32102, !noalias !32050 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !32102
  %.val17.i = load i64, ptr %i.ej, align 8, !dbg !32102, !noalias !32050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !32103, !noalias !32107
  store i64 0, ptr %i.f, align 8, !dbg !32111, !noalias !32107
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !32111 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ek, align 8, !dbg !32111, !noalias !32107
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !32111 ; 3 uses
  store i64 0, ptr %i.el, align 8, !dbg !32111, !noalias !32107
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.do, i8 noundef 0)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !32114, !noalias !32116

.loopexit.i.i:                                    ; preds = %bb.bh
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp.i.i:                           ; preds = %bb.bi, %bb.bf, %bb.be, %bb.bc, %bb.ba
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bp, !dbg !32117, !noalias !32118

bb.bc:                                            ; preds = %bb.ba
  %i.em = load ptr, ptr %i.ek, align 8, !dbg !32119, !noalias !32107, !nonnull !11, !noundef !11
  %i.en = load i64, ptr %i.el, align 8, !dbg !32132, !noalias !32107, !noundef !11
  %i.eo = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.em, i64 noundef %i.en)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !32133, !noalias !32118 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %.not.i.i = icmp eq ptr %i.eo, null, !dbg !32134
  br i1 %.not.i.i, label %bb.bf, label %bb.be, !dbg !32137

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !32138, !noalias !32107
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eo)
          to label %bb.bm unwind label %.loopexit.split-lp.i.i, !dbg !32138, !noalias !32118

bb.bf:                                            ; preds = %bb.bd
  %i.ep = load ptr, ptr %i.ek, align 8, !dbg !32145, !noalias !32107, !nonnull !11, !noundef !11 ; 2 uses
  %i.eq = load i64, ptr %i.el, align 8, !dbg !32157, !noalias !32107, !noundef !11 ; 2 uses
  %i.er = and i64 %i.eq, 15, !dbg !32158
  %i.es = and i64 %i.eq, -16, !dbg !32161         ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es, !dbg !32162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !32165, !noalias !32107
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !32167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !32176, !noalias !32178
  store ptr %i.ep, ptr %i.c, align 8, !dbg !32182, !alias.scope !32184, !noalias !32188
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !32182
  store i64 %i.es, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !32182, !alias.scope !32184, !noalias !32188
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !32182
  store ptr %i.et, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !32182, !alias.scope !32184, !noalias !32188
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !32182
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !32182, !alias.scope !32184, !noalias !32188
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !32182
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !32182, !alias.scope !32184, !noalias !32188
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2o_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bg unwind label %.loopexit.split-lp.i.i, !dbg !32189, !noalias !32118

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !32191, !noalias !32178
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ex = load i64, ptr %i.ev, align 8, !dbg !32192, !alias.scope !32201, !noalias !32208, !noundef !11 ; 2 uses
  %i.ey = load i64, ptr %i.ew, align 8, !dbg !32212, !alias.scope !32201, !noalias !32208, !noundef !11
  %i.ez = icmp ult i64 %i.ex, %i.ey, !dbg !32192
  br i1 %i.ez, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !32192

.lr.ph.i.i.i:                                     ; preds = %bb.bg
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bh, !dbg !32192

bb.bh:                                            ; preds = %bb.bj, %.lr.ph.i.i.i
  %i.fb = phi i64 [ %i.ex, %.lr.ph.i.i.i ], [ %i.fj, %bb.bj ] ; 3 uses
  %i.fc = add nuw i64 %i.fb, 1, !dbg !32213
  store i64 %i.fc, ptr %i.ev, align 8, !dbg !32213, !alias.scope !32201, !noalias !32208
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !32214, !alias.scope !32201, !noalias !32208, !nonnull !11, !noundef !11
  %i.fd = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fa, i64 noundef %i.fb)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !32215, !noalias !32118 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bh
  %i.fe = extractvalue { ptr, i64 } %i.fd, 1, !dbg !32216
  %i.ff = icmp eq i64 %i.fe, 16, !dbg !32217
  br i1 %i.ff, label %bb.bj, label %bb.bi, !dbg !32217

bb.bi:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !32228, !noalias !32118

.noexc6.i.i:                                      ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %.noexc.i.i
  %i.fg = extractvalue { ptr, i64 } %i.fd, 0, !dbg !32216 ; 2 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.fb, !dbg !32229
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.fg, align 1, !dbg !32232, !alias.scope !32234, !noalias !32238
  %i.fi = call i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !32245
  store i128 %i.fi, ptr %i.fh, align 4, !dbg !32251, !noalias !32238
  %i.fj = load i64, ptr %i.ev, align 8, !dbg !32192, !alias.scope !32201, !noalias !32208, !noundef !11 ; 2 uses
  %i.fk = load i64, ptr %i.ew, align 8, !dbg !32212, !alias.scope !32201, !noalias !32208, !noundef !11
  %i.fl = icmp ult i64 %i.fj, %i.fk, !dbg !32192
  br i1 %i.fl, label %bb.bh, label %.loopexit12.i.i, !dbg !32192

.loopexit12.i.i:                                  ; preds = %bb.bj, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !32252, !noalias !32107
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bk, !dbg !32253, !noalias !32118

end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !34462
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !34462, !noalias !34326
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !34463
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !34463, !alias.scope !34321, !noalias !34336
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !34463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !34463, !noalias !34336
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !34470

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !34472, !noalias !34336
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !34473

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !34475, !noalias !34321

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !34478
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !34479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !34488, !noalias !34326
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !34489
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !34492
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !34492, !noalias !34326, !nonnull !11, !noundef !11 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !34510
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !34510, !noalias !34326, !noundef !11
  %i.cg = shl nuw nsw i64 %i.cf, 3, !dbg !34511   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !34520, !noalias !34326
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !34524, !noalias !34321

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !34525, !range !25810, !noalias !34326, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !34525
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !34528
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !34528, !noalias !34326 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !34529

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !34530
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !34531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !34531, !noalias !34326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !34530, !noalias !34326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !34535, !noalias !34326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !34531, !noalias !34326
  store i8 %i.ch, ptr %i.m, align 16, !dbg !34531, !noalias !34326
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !34531
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !34531, !noalias !34326
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !34531, !noalias !34321

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !34535, !noalias !34326
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !34536

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !34539, !noalias !34326
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !34541, !alias.scope !34324, !noalias !34343, !noundef !11 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !34548
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !34548, !prof !54

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !34554, !noalias !34326
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !34555, !alias.scope !34324, !noalias !34343, !noundef !11 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !34561
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !34561, !prof !54

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !34565, !alias.scope !34324, !noalias !34343, !nonnull !11, !noundef !11
  %i.cp = add i64 %i.ck, -8, !dbg !34574
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !34575
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !34539, !noalias !34321

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !34581, !range !475, !noalias !34326, !noundef !11
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !34581
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !34584

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !34585, !noalias !34336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !34586, !noalias !34326
  br label %bb.ai, !dbg !34587

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !34586, !noalias !34326
  br label %bb.ah, !dbg !34589

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !34590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !34591, !noalias !34336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !34475, !noalias !34326
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !34405

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !34475, !noalias !34321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !34475, !noalias !34326
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !34592

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !34594, !alias.scope !34324, !noalias !34343, !nonnull !11, !noundef !11
  %i.cu = add i64 %i.cm, -8, !dbg !34603
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !34604
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !34554, !noalias !34321

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !34609, !noalias !34321

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !34613, !range !475, !noalias !34326, !noundef !11
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !34613
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !34615

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !34616, !noalias !34336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !34617, !noalias !34326
  br label %bb.ai, !dbg !34587

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !34617, !noalias !34326
  br label %bb.ah, !dbg !34618

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !34619, !noalias !34326
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !34620, !noalias !34326
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !34620
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !34620, !noalias !34326
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !34620
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !34621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !34620, !noalias !34336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !34627, !noalias !34326
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !34621, !alias.scope !34321, !noalias !34336
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !34621
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !34621, !alias.scope !34321, !noalias !34336
  br label %bb.ai, !dbg !34628

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !34630, !noalias !34321
  unreachable, !dbg !34630

common.resume:                                    ; preds = %bb.cg, %bb.cb, %.body.i, %bb.bs, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.cb ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fo, %bb.bs ], [ %i.gr, %bb.cg ]
  resume { ptr, i32 } %common.resume.op, !dbg !34631

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !34632 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !34641
  %i.dc = and i64 %i.db, 7, !dbg !34651
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !34652
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !34652

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !34653, !noalias !34349
  unreachable, !dbg !34653

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !34655
  %i.df = lshr exact i64 %i.de, 3, !dbg !34656
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !34657
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !34658, !noalias !34362
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !34592

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !34663
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !34405

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !34405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !34405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !34405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !34405
  br label %bb.bz, !dbg !34406

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !34663 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !34405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !34405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !34405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !34405
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !34663
  br i1 %.not132, label %bb.bz, label %bb.by, !dbg !34406

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !34664
  call void @llvm.experimental.noalias.scope.decl(metadata !34665), !dbg !34664
  call void @llvm.experimental.noalias.scope.decl(metadata !34668), !dbg !34664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !34670
  %i.di = shl i64 %2, 3, !dbg !34670              ; 7 uses
  %i.dj = icmp ugt i64 %2, 2305843009213693951, !dbg !34670
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !34679, !prof !54

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !34683
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !34683, !prof !27291

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !34685, !noalias !34686
  call void @llvm.experimental.noalias.scope.decl(metadata !34687), !dbg !34690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !34693, !noalias !34701
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !34693, !noalias !34701
  %i.dl = load i64, ptr %i.g, align 8, !dbg !34693, !range !499, !noalias !34701, !noundef !11
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !34702
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !34703
  %i.do = load i64, ptr %i.dn, align 8, !dbg !34703, !range !3414, !noalias !34701, !noundef !11 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !34703 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !34702, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !34704, !noalias !34701
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !34705, !noalias !34701
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !34707, !noalias !34701, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !34708, !noalias !34701
  store i64 %i.do, ptr %i.i, align 8, !dbg !34709, !alias.scope !34687, !noalias !34686
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !34709
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !34709, !alias.scope !34687, !noalias !34686
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !34709
  store i64 %2, ptr %i.dt, align 8, !dbg !34709, !alias.scope !34687, !noalias !34686
  br i1 %5, label %bb.bu, label %bb.aw, !dbg !34710

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !34712, !noalias !34686
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !34712
  store i64 %2, ptr %i.du, align 8, !dbg !34712, !noalias !34686
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !34712
  store ptr @98, ptr %i.dv, align 16, !dbg !34712, !noalias !34686
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !34712
  store i64 3, ptr %i.dw, align 8, !dbg !34712, !noalias !34686
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !34712
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !34712, !noalias !34686
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !34712
  store i64 %i.av, ptr %i.dy, align 8, !dbg !34712, !noalias !34686
  store i64 26, ptr %i.k, align 16, !dbg !34712, !noalias !34686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !34713, !noalias !34686
  store ptr %i.k, ptr %i.j, align 8, !dbg !34713, !noalias !34686
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !34713
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !34713, !noalias !34686
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !34716, !noalias !34686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !34722, !noalias !34686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !34722, !noalias !34686
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !34722
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !34723, !noalias !34668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !34727
  br label %bb.cd, !dbg !34728

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !34729
  call void @llvm.experimental.noalias.scope.decl(metadata !34730), !dbg !34729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !34733, !noalias !34737
  store i64 0, ptr %i.f, align 8, !dbg !34739, !noalias !34737
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !34739 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !34739, !noalias !34737
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !34739 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !34739, !noalias !34737
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !34742, !noalias !34737

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i:                           ; preds = %bb.bf, %bb.bc, %bb.bb, %bb.az, %bb.aw
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bm, !dbg !34744, !noalias !34737

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !34745, !noalias !34737, !nonnull !11, !noundef !11 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !34758, !noalias !34737, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34759), !dbg !34762
  call void @llvm.experimental.noalias.scope.decl(metadata !34763), !dbg !34762
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !34765, !alias.scope !34768, !noalias !34771, !nonnull !11, !noundef !11
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !34765
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !34765, !alias.scope !34768, !noalias !34771, !noundef !11 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !34773 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !34775 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !34780
  call void @llvm.experimental.noalias.scope.decl(metadata !34781), !dbg !34784
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !34785
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !34785

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !34787
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !34787

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !34788, !noalias !34737

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !34790, !noalias !34791, !noundef !11
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !34793, !alias.scope !34794, !noalias !34795
  br label %bb.bc, !dbg !34796

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !34797, !alias.scope !34798, !noalias !34799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !34800, !noalias !34737
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !34800, !noalias !34737

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !34807
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !34797, !alias.scope !34798, !noalias !34799
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !34808, !noalias !34737, !nonnull !11, !noundef !11 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !34820, !noalias !34737, !noundef !11 ; 2 uses
  %i.em = and i64 %i.el, 7, !dbg !34821
  %i.en = and i64 %i.el, -8, !dbg !34824          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !34825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !34828, !noalias !34737
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %2, !dbg !34830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !34839, !noalias !34842
  store ptr %i.ek, ptr %i.c, align 8, !dbg !34846, !alias.scope !34848, !noalias !34852
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !34846
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !34846, !alias.scope !34848, !noalias !34852
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !34846
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !34846, !alias.scope !34848, !noalias !34852
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !34846
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !34846, !alias.scope !34848, !noalias !34852
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !34846
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !34846, !alias.scope !34848, !noalias !34852
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutdEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !34853, !noalias !34737

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !34856, !noalias !34842
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !34857, !alias.scope !34868, !noalias !34875, !noundef !11 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !34879, !alias.scope !34868, !noalias !34875, !noundef !11
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !34857
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !34857

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !34857

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fe, %bb.bg ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !34880
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !34880, !alias.scope !34868, !noalias !34875
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !34882, !alias.scope !34868, !noalias !34875, !nonnull !11, !noundef !11
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !34883, !noalias !34737 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !34884
  %i.fa = icmp eq i64 %i.ez, 8, !dbg !34885
  br i1 %i.fa, label %bb.bg, label %bb.bf, !dbg !34885

bb.bf:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !34898, !noalias !34737

.noexc8.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc7.i.i
  %i.fb = extractvalue { ptr, i64 } %i.ey, 0, !dbg !34884 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !34899
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fb, align 1, !dbg !34904, !alias.scope !34906, !noalias !34909
  %i.fd = call i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !34917
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !34930, !noalias !34931
  %i.fe = load i64, ptr %i.eq, align 8, !dbg !34857, !alias.scope !34868, !noalias !34875, !noundef !11 ; 2 uses
  %i.ff = load i64, ptr %i.er, align 8, !dbg !34879, !alias.scope !34868, !noalias !34875, !noundef !11
  %i.fg = icmp ult i64 %i.fe, %i.ff, !dbg !34857
  br i1 %i.fg, label %bb.be, label %.loopexit15.i.i, !dbg !34857

.loopexit15.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !34932, !noalias !34737
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bh, !dbg !34933, !noalias !34737

bb.bh:                                            ; preds = %.loopexit15.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !34935, !noalias !34737

end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !35407, !noalias !35271
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !35407
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !35407, !noalias !35271
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !35408
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !35408, !alias.scope !35266, !noalias !35281
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !35408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !35408, !noalias !35281
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !35415

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !35417, !noalias !35281
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !35418

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !35420, !noalias !35266

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !35423
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !35424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !35433, !noalias !35271
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !35434
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !35437
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !35437, !noalias !35271, !nonnull !11, !noundef !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !35455
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !35455, !noalias !35271, !noundef !11
  %i.cj = shl nuw nsw i64 %i.ci, 3, !dbg !35456   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !35463, !noalias !35271
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !35467, !noalias !35266

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !35468, !range !25810, !noalias !35271, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !35468
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !35471
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !35471, !noalias !35271 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !35472

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !35473
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !35474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !35474, !noalias !35271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !35473, !noalias !35271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !35478, !noalias !35271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !35474, !noalias !35271
  store i8 %i.ck, ptr %i.m, align 16, !dbg !35474, !noalias !35271
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !35474
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !35474, !noalias !35271
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !35474, !noalias !35266

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !35478, !noalias !35271
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !35479

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !35482, !noalias !35271
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !35484, !alias.scope !35269, !noalias !35288, !noundef !11 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !35491
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !35491, !prof !54

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !35497, !noalias !35271
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !35498, !alias.scope !35269, !noalias !35288, !noundef !11 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !35504
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !35504, !prof !54

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !35508, !alias.scope !35269, !noalias !35288, !nonnull !11, !noundef !11
  %i.cs = add i64 %i.cn, -8, !dbg !35517
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !35518
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !35482, !noalias !35266

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !35524, !range !475, !noalias !35271, !noundef !11
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !35524
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !35527

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !35528, !noalias !35281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !35529, !noalias !35271
  br label %bb.ak, !dbg !35530

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !35529, !noalias !35271
  br label %bb.aj, !dbg !35532

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !35533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !35534, !noalias !35281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !35420, !noalias !35271
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !35350

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !35420, !noalias !35266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !35420, !noalias !35271
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !35535

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !35537, !alias.scope !35269, !noalias !35288, !nonnull !11, !noundef !11
  %i.cx = add i64 %i.cp, -8, !dbg !35546
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !35547
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !35497, !noalias !35266

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !35552, !noalias !35266

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !35556, !range !475, !noalias !35271, !noundef !11
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !35556
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !35558

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !35559, !noalias !35281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !35560, !noalias !35271
  br label %bb.ak, !dbg !35530

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !35560, !noalias !35271
  br label %bb.aj, !dbg !35561

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !35562, !noalias !35271
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !35563, !noalias !35271
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !35563
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !35563, !noalias !35271
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !35563
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !35564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !35563, !noalias !35281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !35570, !noalias !35271
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !35564, !alias.scope !35266, !noalias !35281
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !35564
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !35564, !alias.scope !35266, !noalias !35281
  br label %bb.ak, !dbg !35571

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !35573, !noalias !35266
  unreachable, !dbg !35573

common.resume:                                    ; preds = %bb.ci, %bb.cd, %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fy, %bb.cd ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bt ], [ %i.gk, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !35574

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !35575 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !35584
  %i.df = and i64 %i.de, 7, !dbg !35591
  %i.dg = icmp eq i64 %i.df, 0, !dbg !35592
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !35592

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !35593, !noalias !35294
  unreachable, !dbg !35593

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !35595
  %i.di = lshr exact i64 %i.dh, 3, !dbg !35596
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !35597
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !35598, !noalias !35307
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !35535

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !35603
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !35350

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !35350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !35350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !35350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !35350
  br label %bb.cb, !dbg !35351

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !35603 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !35350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !35350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !35350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !35350
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !35603
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !35351

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !35604
  call void @llvm.experimental.noalias.scope.decl(metadata !35605), !dbg !35604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !35608
  %i.dl = shl i64 %2, 3, !dbg !35608              ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !35608
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !35617, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !35621
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !35621, !prof !27291

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !35623, !noalias !35624
  call void @llvm.experimental.noalias.scope.decl(metadata !35626), !dbg !35629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !35632, !noalias !35636
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !35632, !noalias !35637
  %i.do = load i64, ptr %i.g, align 8, !dbg !35632, !range !499, !noalias !35636, !noundef !11
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !35638
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !35639
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !35639, !range !3414, !noalias !35636, !noundef !11 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !35639 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !35638, !prof !54

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !35640, !noalias !35636
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !35641, !noalias !35637
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !35642, !noalias !35636, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !35643, !noalias !35636
  store i64 %i.dr, ptr %i.i, align 8, !dbg !35644, !alias.scope !35626, !noalias !35624
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !35644
  store ptr %i.du, ptr %i.dv, align 8, !dbg !35644, !alias.scope !35626, !noalias !35624
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !35644
  store i64 %2, ptr %i.dw, align 8, !dbg !35644, !alias.scope !35626, !noalias !35624
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !35645

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !35647, !noalias !35624
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !35647
  store i64 %2, ptr %i.dx, align 8, !dbg !35647, !noalias !35624
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !35647
  store ptr @98, ptr %i.dy, align 16, !dbg !35647, !noalias !35624
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !35647
  store i64 3, ptr %i.dz, align 8, !dbg !35647, !noalias !35624
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !35647
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !35647, !noalias !35624
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !35647
  store i64 %i.av, ptr %i.eb, align 8, !dbg !35647, !noalias !35624
  store i64 26, ptr %i.k, align 16, !dbg !35647, !noalias !35624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !35648, !noalias !35624
  store ptr %i.k, ptr %i.j, align 8, !dbg !35648, !noalias !35624
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !35648
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !35648, !noalias !35624
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !35651, !noalias !35605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !35657, !noalias !35624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !35657, !noalias !35624
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !35657
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !35658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !35662
  br label %bb.cf, !dbg !35663

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !35664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !35665, !noalias !35669
  store i64 0, ptr %i.f, align 8, !dbg !35673, !noalias !35669
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !35673 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !35673, !noalias !35669
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !35673 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !35673, !noalias !35669
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !35676, !noalias !35678

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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bn, !dbg !35679, !noalias !35680

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !35681, !noalias !35669, !nonnull !11, !noundef !11
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !35694, !noalias !35669, !noundef !11
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !35695, !noalias !35680 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !35696
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !35699

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !35700, !noalias !35669
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !35700, !noalias !35680

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !35707, !noalias !35669, !nonnull !11, !noundef !11 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !35719, !noalias !35669, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !35720
  %i.ek = and i64 %i.ei, -8, !dbg !35723          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !35724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !35727, !noalias !35669
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !35729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !35738, !noalias !35740
  store ptr %i.eh, ptr %i.c, align 8, !dbg !35744, !alias.scope !35746, !noalias !35750
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !35744
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !35744, !alias.scope !35746, !noalias !35750
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !35744
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !35744, !alias.scope !35746, !noalias !35750
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !35744
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !35744, !alias.scope !35746, !noalias !35750
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !35744
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !35744, !alias.scope !35746, !noalias !35750
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutdEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !35751, !noalias !35680

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !35753, !noalias !35740
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !35754, !alias.scope !35763, !noalias !35770, !noundef !11 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !35774, !alias.scope !35763, !noalias !35770, !noundef !11
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !35754
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !35754

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !35754

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !35775
  store i64 %i.eu, ptr %i.en, align 8, !dbg !35775, !alias.scope !35763, !noalias !35770
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !35776, !alias.scope !35763, !noalias !35770, !nonnull !11, !noundef !11
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !35777, !noalias !35680 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !35778
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !35779
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !35779

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !35790, !noalias !35680

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !35778 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !35791
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !35794, !alias.scope !35796, !noalias !35799
  %i.fa = call i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !35807
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !35814, !noalias !35815
  %i.fb = load i64, ptr %i.en, align 8, !dbg !35754, !alias.scope !35763, !noalias !35770, !noundef !11 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !35774, !alias.scope !35763, !noalias !35770, !noundef !11
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !35754
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !35754

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !35816, !noalias !35669
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bi, !dbg !35817, !noalias !35680

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bj, !dbg !35819, !noalias !35680

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !35817, !noalias !35680
  unreachable, !dbg !35817

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !35821 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bp unwind label %bb.bo, !dbg !35822, !noalias !35605

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !35825, !noalias !35826
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !35825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !35825, !noalias !35826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !35827, !noalias !35669
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bl, !dbg !35828, !noalias !35680

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !36248
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !36248, !noalias !36112
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !36249
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !36249, !alias.scope !36107, !noalias !36122
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !36249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !36249, !noalias !36122
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !36256

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !36258, !noalias !36122
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !36259

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !36261, !noalias !36107

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !36264
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !36265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !36274, !noalias !36112
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !36275
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !36278
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !36278, !noalias !36112, !nonnull !11, !noundef !11 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !36296
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !36296, !noalias !36112, !noundef !11
  %i.cg = shl nuw nsw i64 %i.cf, 2, !dbg !36297   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !36306, !noalias !36112
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !36310, !noalias !36107

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !36311, !range !25810, !noalias !36112, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !36311
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !36314
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !36314, !noalias !36112 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !36315

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !36316
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !36317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !36317, !noalias !36112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !36316, !noalias !36112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !36321, !noalias !36112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !36317, !noalias !36112
  store i8 %i.ch, ptr %i.m, align 16, !dbg !36317, !noalias !36112
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !36317
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !36317, !noalias !36112
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !36317, !noalias !36107

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !36321, !noalias !36112
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !36322

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !36325, !noalias !36112
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !36327, !alias.scope !36110, !noalias !36129, !noundef !11 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !36334
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !36334, !prof !54

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !36340, !noalias !36112
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !36341, !alias.scope !36110, !noalias !36129, !noundef !11 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !36347
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !36347, !prof !54

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !36351, !alias.scope !36110, !noalias !36129, !nonnull !11, !noundef !11
  %i.cp = add i64 %i.ck, -8, !dbg !36360
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !36361
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !36325, !noalias !36107

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !36367, !range !475, !noalias !36112, !noundef !11
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !36367
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !36370

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !36371, !noalias !36122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !36372, !noalias !36112
  br label %bb.ai, !dbg !36373

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !36372, !noalias !36112
  br label %bb.ah, !dbg !36375

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !36376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !36377, !noalias !36122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !36261, !noalias !36112
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !36191

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !36261, !noalias !36107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !36261, !noalias !36112
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !36378

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !36380, !alias.scope !36110, !noalias !36129, !nonnull !11, !noundef !11
  %i.cu = add i64 %i.cm, -8, !dbg !36389
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !36390
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !36340, !noalias !36107

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !36395, !noalias !36107

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !36399, !range !475, !noalias !36112, !noundef !11
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !36399
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !36401

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !36402, !noalias !36122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !36403, !noalias !36112
  br label %bb.ai, !dbg !36373

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !36403, !noalias !36112
  br label %bb.ah, !dbg !36404

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !36405, !noalias !36112
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !36406, !noalias !36112
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !36406
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !36406, !noalias !36112
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !36406
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !36407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !36406, !noalias !36122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !36413, !noalias !36112
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !36407, !alias.scope !36107, !noalias !36122
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !36407
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !36407, !alias.scope !36107, !noalias !36122
  br label %bb.ai, !dbg !36414

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !36416, !noalias !36107
  unreachable, !dbg !36416

common.resume:                                    ; preds = %bb.cf, %bb.ca, %.body.i, %bb.br, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ge, %bb.ca ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fn, %bb.br ], [ %i.gq, %bb.cf ]
  resume { ptr, i32 } %common.resume.op, !dbg !36417

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !36418 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !36427
  %i.dc = and i64 %i.db, 3, !dbg !36437
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !36438
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !36438

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !36439, !noalias !36135
  unreachable, !dbg !36439

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !36441
  %i.df = lshr exact i64 %i.de, 2, !dbg !36442
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !36443
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !36444, !noalias !36148
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !36378

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !36449
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !36191

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !36191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !36191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !36191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !36191
  br label %bb.by, !dbg !36192

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !36449 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !36191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !36191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !36191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !36191
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !36449
  br i1 %.not132, label %bb.by, label %bb.bx, !dbg !36192

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !36450
  call void @llvm.experimental.noalias.scope.decl(metadata !36451), !dbg !36450
  call void @llvm.experimental.noalias.scope.decl(metadata !36454), !dbg !36450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !36456
  %i.di = shl i64 %2, 2, !dbg !36456              ; 7 uses
  %i.dj = icmp ugt i64 %2, 4611686018427387903, !dbg !36456
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !36465, !prof !54

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !36469
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !36469, !prof !27291

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !36471, !noalias !36472
  call void @llvm.experimental.noalias.scope.decl(metadata !36473), !dbg !36476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !36479, !noalias !36486
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !36479, !noalias !36486
  %i.dl = load i64, ptr %i.g, align 8, !dbg !36479, !range !499, !noalias !36486, !noundef !11
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !36487
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !36488
  %i.do = load i64, ptr %i.dn, align 8, !dbg !36488, !range !3414, !noalias !36486, !noundef !11 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !36488 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !36487, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !36489, !noalias !36486
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !36490, !noalias !36486
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !36492, !noalias !36486, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !36493, !noalias !36486
  store i64 %i.do, ptr %i.i, align 8, !dbg !36494, !alias.scope !36473, !noalias !36472
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !36494
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !36494, !alias.scope !36473, !noalias !36472
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !36494
  store i64 %2, ptr %i.dt, align 8, !dbg !36494, !alias.scope !36473, !noalias !36472
  br i1 %5, label %bb.bt, label %bb.aw, !dbg !36495

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !36497, !noalias !36472
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !36497
  store i64 %2, ptr %i.du, align 8, !dbg !36497, !noalias !36472
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !36497
  store ptr @99, ptr %i.dv, align 16, !dbg !36497, !noalias !36472
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !36497
  store i64 3, ptr %i.dw, align 8, !dbg !36497, !noalias !36472
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !36497
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !36497, !noalias !36472
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !36497
  store i64 %i.av, ptr %i.dy, align 8, !dbg !36497, !noalias !36472
  store i64 26, ptr %i.k, align 16, !dbg !36497, !noalias !36472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !36498, !noalias !36472
  store ptr %i.k, ptr %i.j, align 8, !dbg !36498, !noalias !36472
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !36498
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !36498, !noalias !36472
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !36501, !noalias !36472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !36507, !noalias !36472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !36507, !noalias !36472
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !36507
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !36508, !noalias !36454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !36512
  br label %bb.cc, !dbg !36513

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !36514
  call void @llvm.experimental.noalias.scope.decl(metadata !36515), !dbg !36514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !36518, !noalias !36522
  store i64 0, ptr %i.f, align 8, !dbg !36524, !noalias !36522
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !36524 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !36524, !noalias !36522
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !36524 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !36524, !noalias !36522
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !36527, !noalias !36522

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i:                           ; preds = %.critedge.i.i.i.i.i, %bb.bc, %bb.bb, %bb.az, %bb.aw
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bl, !dbg !36529, !noalias !36522

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !36530, !noalias !36522, !nonnull !11, !noundef !11 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !36543, !noalias !36522, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36544), !dbg !36547
  call void @llvm.experimental.noalias.scope.decl(metadata !36548), !dbg !36547
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !36550, !alias.scope !36553, !noalias !36556, !nonnull !11, !noundef !11
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !36550
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !36550, !alias.scope !36553, !noalias !36556, !noundef !11 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !36558 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !36560 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !36565
  call void @llvm.experimental.noalias.scope.decl(metadata !36566), !dbg !36569
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !36570
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !36570

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !36572
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !36572

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !36573, !noalias !36522

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !36575, !noalias !36576, !noundef !11
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !36578, !alias.scope !36579, !noalias !36580
  br label %bb.bc, !dbg !36581

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !36582, !alias.scope !36583, !noalias !36584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !36585, !noalias !36522
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bi unwind label %.loopexit.split-lp.i.i, !dbg !36585, !noalias !36522

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !36592
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !36582, !alias.scope !36583, !noalias !36584
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !36593, !noalias !36522, !nonnull !11, !noundef !11 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !36605, !noalias !36522, !noundef !11 ; 2 uses
  %i.em = and i64 %i.el, 3, !dbg !36606
  %i.en = and i64 %i.el, -4, !dbg !36609          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !36610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !36613, !noalias !36522
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %2, !dbg !36615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !36624, !noalias !36627
  store ptr %i.ek, ptr %i.c, align 8, !dbg !36631, !alias.scope !36633, !noalias !36637
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !36631
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !36631, !alias.scope !36633, !noalias !36637
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !36631
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !36631, !alias.scope !36633, !noalias !36637
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !36631
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !36631, !alias.scope !36633, !noalias !36637
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !36631
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !36631, !alias.scope !36633, !noalias !36637
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !36638, !noalias !36522

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !36641, !noalias !36627
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !36642, !alias.scope !36653, !noalias !36660, !noundef !11 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !36664, !alias.scope !36653, !noalias !36660, !noundef !11
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !36642
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !36642

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !36642

bb.be:                                            ; preds = %bb.bf, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fd, %bb.bf ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !36665
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !36665, !alias.scope !36653, !noalias !36660
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !36667, !alias.scope !36653, !noalias !36660, !nonnull !11, !noundef !11
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !36668, !noalias !36522 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !36669
  %.not.i.i.i.i.i = icmp eq i64 %i.ez, 4, !dbg !36670
  br i1 %.not.i.i.i.i.i, label %bb.bf, label %.critedge.i.i.i.i.i, !dbg !36670

.critedge.i.i.i.i.i:                              ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !36684, !noalias !36522

.noexc8.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bf:                                            ; preds = %.noexc7.i.i
  %i.fa = extractvalue { ptr, i64 } %i.ey, 0, !dbg !36669 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !36685
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fa, align 1, !dbg !36690, !alias.scope !36693, !noalias !36696
  %i.fc = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !36703
  store i32 %i.fc, ptr %i.fb, align 4, !dbg !36719, !noalias !36696
  %i.fd = load i64, ptr %i.eq, align 8, !dbg !36642, !alias.scope !36653, !noalias !36660, !noundef !11 ; 2 uses
  %i.fe = load i64, ptr %i.er, align 8, !dbg !36664, !alias.scope !36653, !noalias !36660, !noundef !11
  %i.ff = icmp ult i64 %i.fd, %i.fe, !dbg !36642
  br i1 %i.ff, label %bb.be, label %.loopexit15.i.i, !dbg !36642

.loopexit15.i.i:                                  ; preds = %bb.bf, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !36720, !noalias !36522
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bg, !dbg !36721, !noalias !36522

bb.bg:                                            ; preds = %.loopexit15.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bh, !dbg !36723, !noalias !36522

end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !37195, !noalias !37059
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !37195
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !37195, !noalias !37059
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !37196
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !37196, !alias.scope !37054, !noalias !37069
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !37196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !37196, !noalias !37069
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !37203

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !37205, !noalias !37069
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !37206

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !37208, !noalias !37054

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !37211
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !37212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !37221, !noalias !37059
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !37222
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !37225
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !37225, !noalias !37059, !nonnull !11, !noundef !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !37243
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !37243, !noalias !37059, !noundef !11
  %i.cj = shl nuw nsw i64 %i.ci, 2, !dbg !37244   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !37251, !noalias !37059
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !37255, !noalias !37054

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !37256, !range !25810, !noalias !37059, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !37256
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !37259
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !37259, !noalias !37059 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !37260

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !37261
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !37262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !37262, !noalias !37059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !37261, !noalias !37059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !37266, !noalias !37059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !37262, !noalias !37059
  store i8 %i.ck, ptr %i.m, align 16, !dbg !37262, !noalias !37059
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !37262
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !37262, !noalias !37059
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !37262, !noalias !37054

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !37266, !noalias !37059
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !37267

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !37270, !noalias !37059
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !37272, !alias.scope !37057, !noalias !37076, !noundef !11 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !37279
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !37279, !prof !54

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !37285, !noalias !37059
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !37286, !alias.scope !37057, !noalias !37076, !noundef !11 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !37292
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !37292, !prof !54

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !37296, !alias.scope !37057, !noalias !37076, !nonnull !11, !noundef !11
  %i.cs = add i64 %i.cn, -8, !dbg !37305
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !37306
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !37270, !noalias !37054

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !37312, !range !475, !noalias !37059, !noundef !11
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !37312
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !37315

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !37316, !noalias !37069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !37317, !noalias !37059
  br label %bb.ak, !dbg !37318

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !37317, !noalias !37059
  br label %bb.aj, !dbg !37320

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !37321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !37322, !noalias !37069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !37208, !noalias !37059
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !37138

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !37208, !noalias !37054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !37208, !noalias !37059
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !37323

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !37325, !alias.scope !37057, !noalias !37076, !nonnull !11, !noundef !11
  %i.cx = add i64 %i.cp, -8, !dbg !37334
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !37335
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !37285, !noalias !37054

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !37340, !noalias !37054

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !37344, !range !475, !noalias !37059, !noundef !11
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !37344
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !37346

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !37347, !noalias !37069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !37348, !noalias !37059
  br label %bb.ak, !dbg !37318

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !37348, !noalias !37059
  br label %bb.aj, !dbg !37349

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !37350, !noalias !37059
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !37351, !noalias !37059
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !37351
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !37351, !noalias !37059
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !37351
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !37352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !37351, !noalias !37069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !37358, !noalias !37059
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !37352, !alias.scope !37054, !noalias !37069
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !37352
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !37352, !alias.scope !37054, !noalias !37069
  br label %bb.ak, !dbg !37359

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !37361, !noalias !37054
  unreachable, !dbg !37361

common.resume:                                    ; preds = %bb.ch, %bb.cc, %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fx, %bb.cc ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fk, %bb.bs ], [ %i.gj, %bb.ch ]
  resume { ptr, i32 } %common.resume.op, !dbg !37362

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !37363 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !37372
  %i.df = and i64 %i.de, 3, !dbg !37379
  %i.dg = icmp eq i64 %i.df, 0, !dbg !37380
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !37380

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !37381, !noalias !37082
  unreachable, !dbg !37381

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !37383
  %i.di = lshr exact i64 %i.dh, 2, !dbg !37384
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !37385
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !37386, !noalias !37095
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !37323

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !37391
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !37138

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !37138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !37138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !37138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !37138
  br label %bb.ca, !dbg !37139

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !37391 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !37138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !37138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !37138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !37138
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !37391
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !37139

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !37392
  call void @llvm.experimental.noalias.scope.decl(metadata !37393), !dbg !37392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !37396
  %i.dl = shl i64 %2, 2, !dbg !37396              ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !37396
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !37405, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !37409
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !37409, !prof !27291

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !37411, !noalias !37412
  call void @llvm.experimental.noalias.scope.decl(metadata !37414), !dbg !37417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !37420, !noalias !37424
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !37420, !noalias !37425
  %i.do = load i64, ptr %i.g, align 8, !dbg !37420, !range !499, !noalias !37424, !noundef !11
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !37426
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !37427
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !37427, !range !3414, !noalias !37424, !noundef !11 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !37427 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !37426, !prof !54

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !37428, !noalias !37424
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !37429, !noalias !37425
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !37430, !noalias !37424, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !37431, !noalias !37424
  store i64 %i.dr, ptr %i.i, align 8, !dbg !37432, !alias.scope !37414, !noalias !37412
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !37432
  store ptr %i.du, ptr %i.dv, align 8, !dbg !37432, !alias.scope !37414, !noalias !37412
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !37432
  store i64 %2, ptr %i.dw, align 8, !dbg !37432, !alias.scope !37414, !noalias !37412
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !37433

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !37435, !noalias !37412
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !37435
  store i64 %2, ptr %i.dx, align 8, !dbg !37435, !noalias !37412
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !37435
  store ptr @99, ptr %i.dy, align 16, !dbg !37435, !noalias !37412
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !37435
  store i64 3, ptr %i.dz, align 8, !dbg !37435, !noalias !37412
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !37435
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !37435, !noalias !37412
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !37435
  store i64 %i.av, ptr %i.eb, align 8, !dbg !37435, !noalias !37412
  store i64 26, ptr %i.k, align 16, !dbg !37435, !noalias !37412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !37436, !noalias !37412
  store ptr %i.k, ptr %i.j, align 8, !dbg !37436, !noalias !37412
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !37436
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !37436, !noalias !37412
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !37439, !noalias !37393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !37445, !noalias !37412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !37445, !noalias !37412
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !37445
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !37446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !37450
  br label %bb.ce, !dbg !37451

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !37452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !37453, !noalias !37457
  store i64 0, ptr %i.f, align 8, !dbg !37461, !noalias !37457
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !37461 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !37461, !noalias !37457
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !37461 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !37461, !noalias !37457
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !37464, !noalias !37466

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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bm, !dbg !37467, !noalias !37468

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !37469, !noalias !37457, !nonnull !11, !noundef !11
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !37482, !noalias !37457, !noundef !11
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !37483, !noalias !37468 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !37484
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !37487

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !37488, !noalias !37457
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !37488, !noalias !37468

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !37495, !noalias !37457, !nonnull !11, !noundef !11 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !37507, !noalias !37457, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !37508
  %i.ek = and i64 %i.ei, -4, !dbg !37511          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !37512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !37515, !noalias !37457
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !37517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !37526, !noalias !37528
  store ptr %i.eh, ptr %i.c, align 8, !dbg !37532, !alias.scope !37534, !noalias !37538
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !37532
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !37532, !alias.scope !37534, !noalias !37538
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !37532
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !37532, !alias.scope !37534, !noalias !37538
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !37532
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !37532, !alias.scope !37534, !noalias !37538
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !37532
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !37532, !alias.scope !37534, !noalias !37538
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !37539, !noalias !37468

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !37541, !noalias !37528
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !37542, !alias.scope !37551, !noalias !37558, !noundef !11 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !37562, !alias.scope !37551, !noalias !37558, !noundef !11
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !37542
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !37542

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !37542

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !37563
  store i64 %i.eu, ptr %i.en, align 8, !dbg !37563, !alias.scope !37551, !noalias !37558
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !37564, !alias.scope !37551, !noalias !37558, !nonnull !11, !noundef !11
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !37565, !noalias !37468 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !37566
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !37567
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !37567

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !37578, !noalias !37468

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !37566 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !37579
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !37582, !alias.scope !37584, !noalias !37587
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !37594
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !37601, !noalias !37587
  %i.fa = load i64, ptr %i.en, align 8, !dbg !37542, !alias.scope !37551, !noalias !37558, !noundef !11 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !37562, !alias.scope !37551, !noalias !37558, !noundef !11
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !37542
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !37542

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !37602, !noalias !37457
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bh, !dbg !37603, !noalias !37468

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !37605, !noalias !37468

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !37603, !noalias !37468
  unreachable, !dbg !37603

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !37607 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bo unwind label %bb.bn, !dbg !37608, !noalias !37393

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !37611, !noalias !37612
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !37611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !37611, !noalias !37612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !37613, !noalias !37457
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bk, !dbg !37614, !noalias !37468

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !39099
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !39099, !noalias !38963
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !39100
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !39100, !alias.scope !38958, !noalias !38973
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !39100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !39100, !noalias !38973
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !39107

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !39109, !noalias !38973
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !39110

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !39112, !noalias !38958

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !39115
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !39116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !39125, !noalias !38963
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !39126
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !39129
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !39129, !noalias !38963, !nonnull !11, !noundef !11 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !39147
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !39147, !noalias !38963, !noundef !11
  %i.cg = shl nuw nsw i64 %i.cf, 2, !dbg !39148   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !39157, !noalias !38963
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !39161, !noalias !38958

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !39162, !range !25810, !noalias !38963, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !39162
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !39165
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !39165, !noalias !38963 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !39166

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !39167
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !39168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !39168, !noalias !38963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !39167, !noalias !38963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !39172, !noalias !38963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !39168, !noalias !38963
  store i8 %i.ch, ptr %i.m, align 16, !dbg !39168, !noalias !38963
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !39168
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !39168, !noalias !38963
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !39168, !noalias !38958

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !39172, !noalias !38963
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !39173

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !39176, !noalias !38963
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !39178, !alias.scope !38961, !noalias !38980, !noundef !11 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !39185
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !39185, !prof !54

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !39191, !noalias !38963
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !39192, !alias.scope !38961, !noalias !38980, !noundef !11 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !39198
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !39198, !prof !54

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !39202, !alias.scope !38961, !noalias !38980, !nonnull !11, !noundef !11
  %i.cp = add i64 %i.ck, -8, !dbg !39211
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !39212
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !39176, !noalias !38958

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !39218, !range !475, !noalias !38963, !noundef !11
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !39218
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !39221

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !39222, !noalias !38973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !39223, !noalias !38963
  br label %bb.ai, !dbg !39224

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !39223, !noalias !38963
  br label %bb.ah, !dbg !39226

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !39227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !39228, !noalias !38973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !39112, !noalias !38963
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !39042

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !39112, !noalias !38958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !39112, !noalias !38963
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !39229

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !39231, !alias.scope !38961, !noalias !38980, !nonnull !11, !noundef !11
  %i.cu = add i64 %i.cm, -8, !dbg !39240
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !39241
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !39191, !noalias !38958

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !39246, !noalias !38958

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !39250, !range !475, !noalias !38963, !noundef !11
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !39250
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !39252

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !39253, !noalias !38973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !39254, !noalias !38963
  br label %bb.ai, !dbg !39224

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !39254, !noalias !38963
  br label %bb.ah, !dbg !39255

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !39256, !noalias !38963
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !39257, !noalias !38963
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !39257
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !39257, !noalias !38963
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !39257
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !39258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !39257, !noalias !38973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !39264, !noalias !38963
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !39258, !alias.scope !38958, !noalias !38973
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !39258
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !39258, !alias.scope !38958, !noalias !38973
  br label %bb.ai, !dbg !39265

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !39267, !noalias !38958
  unreachable, !dbg !39267

common.resume:                                    ; preds = %bb.cf, %bb.ca, %.body.i, %bb.br, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ge, %bb.ca ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fn, %bb.br ], [ %i.gq, %bb.cf ]
  resume { ptr, i32 } %common.resume.op, !dbg !39268

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !39269 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !39278
  %i.dc = and i64 %i.db, 3, !dbg !39288
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !39289
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !39289

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !39290, !noalias !38986
  unreachable, !dbg !39290

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !39292
  %i.df = lshr exact i64 %i.de, 2, !dbg !39293
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !39294
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !39295, !noalias !38999
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !39229

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !39300
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !39042

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !39042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !39042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !39042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !39042
  br label %bb.by, !dbg !39043

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !39300 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !39042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !39042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !39042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !39042
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !39300
  br i1 %.not132, label %bb.by, label %bb.bx, !dbg !39043

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !39301
  call void @llvm.experimental.noalias.scope.decl(metadata !39302), !dbg !39301
  call void @llvm.experimental.noalias.scope.decl(metadata !39305), !dbg !39301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !39307
  %i.di = shl i64 %2, 2, !dbg !39307              ; 7 uses
  %i.dj = icmp ugt i64 %2, 4611686018427387903, !dbg !39307
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !39316, !prof !54

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !39320
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !39320, !prof !27291

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !39322, !noalias !39323
  call void @llvm.experimental.noalias.scope.decl(metadata !39324), !dbg !39327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !39330, !noalias !39337
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !39330, !noalias !39337
  %i.dl = load i64, ptr %i.g, align 8, !dbg !39330, !range !499, !noalias !39337, !noundef !11
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !39338
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !39339
  %i.do = load i64, ptr %i.dn, align 8, !dbg !39339, !range !3414, !noalias !39337, !noundef !11 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !39339 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !39338, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !39340, !noalias !39337
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !39341, !noalias !39337
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !39343, !noalias !39337, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !39344, !noalias !39337
  store i64 %i.do, ptr %i.i, align 8, !dbg !39345, !alias.scope !39324, !noalias !39323
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !39345
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !39345, !alias.scope !39324, !noalias !39323
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !39345
  store i64 %2, ptr %i.dt, align 8, !dbg !39345, !alias.scope !39324, !noalias !39323
  br i1 %5, label %bb.bt, label %bb.aw, !dbg !39346

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !39348, !noalias !39323
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !39348
  store i64 %2, ptr %i.du, align 8, !dbg !39348, !noalias !39323
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !39348
  store ptr @101, ptr %i.dv, align 16, !dbg !39348, !noalias !39323
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !39348
  store i64 3, ptr %i.dw, align 8, !dbg !39348, !noalias !39323
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !39348
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !39348, !noalias !39323
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !39348
  store i64 %i.av, ptr %i.dy, align 8, !dbg !39348, !noalias !39323
  store i64 26, ptr %i.k, align 16, !dbg !39348, !noalias !39323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !39349, !noalias !39323
  store ptr %i.k, ptr %i.j, align 8, !dbg !39349, !noalias !39323
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !39349
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !39349, !noalias !39323
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !39352, !noalias !39323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !39358, !noalias !39323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !39358, !noalias !39323
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !39358
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !39359, !noalias !39305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !39363
  br label %bb.cc, !dbg !39364

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !39365
  call void @llvm.experimental.noalias.scope.decl(metadata !39366), !dbg !39365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !39369, !noalias !39373
  store i64 0, ptr %i.f, align 8, !dbg !39375, !noalias !39373
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !39375 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !39375, !noalias !39373
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !39375 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !39375, !noalias !39373
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !39378, !noalias !39373

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i:                           ; preds = %.critedge.i.i.i.i.i, %bb.bc, %bb.bb, %bb.az, %bb.aw
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bl, !dbg !39380, !noalias !39373

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !39381, !noalias !39373, !nonnull !11, !noundef !11 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !39394, !noalias !39373, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39395), !dbg !39398
  call void @llvm.experimental.noalias.scope.decl(metadata !39399), !dbg !39398
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !39401, !alias.scope !39404, !noalias !39407, !nonnull !11, !noundef !11
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !39401
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !39401, !alias.scope !39404, !noalias !39407, !noundef !11 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !39409 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !39411 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !39416
  call void @llvm.experimental.noalias.scope.decl(metadata !39417), !dbg !39420
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !39421
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !39421

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !39423
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !39423

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !39424, !noalias !39373

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !39426, !noalias !39427, !noundef !11
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !39429, !alias.scope !39430, !noalias !39431
  br label %bb.bc, !dbg !39432

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !39433, !alias.scope !39434, !noalias !39435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !39436, !noalias !39373
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bi unwind label %.loopexit.split-lp.i.i, !dbg !39436, !noalias !39373

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !39443
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !39433, !alias.scope !39434, !noalias !39435
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !39444, !noalias !39373, !nonnull !11, !noundef !11 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !39456, !noalias !39373, !noundef !11 ; 2 uses
  %i.em = and i64 %i.el, 3, !dbg !39457
  %i.en = and i64 %i.el, -4, !dbg !39460          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !39461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !39464, !noalias !39373
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %2, !dbg !39466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !39475, !noalias !39478
  store ptr %i.ek, ptr %i.c, align 8, !dbg !39482, !alias.scope !39484, !noalias !39488
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !39482
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !39482, !alias.scope !39484, !noalias !39488
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !39482
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !39482, !alias.scope !39484, !noalias !39488
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !39482
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !39482, !alias.scope !39484, !noalias !39488
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !39482
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !39482, !alias.scope !39484, !noalias !39488
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutlEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !39489, !noalias !39373

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !39492, !noalias !39478
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !39493, !alias.scope !39504, !noalias !39511, !noundef !11 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !39515, !alias.scope !39504, !noalias !39511, !noundef !11
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !39493
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !39493

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !39493

bb.be:                                            ; preds = %bb.bf, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fd, %bb.bf ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !39516
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !39516, !alias.scope !39504, !noalias !39511
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !39518, !alias.scope !39504, !noalias !39511, !nonnull !11, !noundef !11
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !39519, !noalias !39373 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !39520
  %.not.i.i.i.i.i = icmp eq i64 %i.ez, 4, !dbg !39521
  br i1 %.not.i.i.i.i.i, label %bb.bf, label %.critedge.i.i.i.i.i, !dbg !39521

.critedge.i.i.i.i.i:                              ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !39532, !noalias !39373

.noexc8.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bf:                                            ; preds = %.noexc7.i.i
  %i.fa = extractvalue { ptr, i64 } %i.ey, 0, !dbg !39520 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !39533
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fa, align 1, !dbg !39538, !alias.scope !39540, !noalias !39543
  %i.fc = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !39550
  store i32 %i.fc, ptr %i.fb, align 4, !dbg !39563, !noalias !39543
  %i.fd = load i64, ptr %i.eq, align 8, !dbg !39493, !alias.scope !39504, !noalias !39511, !noundef !11 ; 2 uses
  %i.fe = load i64, ptr %i.er, align 8, !dbg !39515, !alias.scope !39504, !noalias !39511, !noundef !11
  %i.ff = icmp ult i64 %i.fd, %i.fe, !dbg !39493
  br i1 %i.ff, label %bb.be, label %.loopexit15.i.i, !dbg !39493

.loopexit15.i.i:                                  ; preds = %bb.bf, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !39564, !noalias !39373
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bg, !dbg !39565, !noalias !39373

bb.bg:                                            ; preds = %.loopexit15.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bh, !dbg !39567, !noalias !39373

end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !40039, !noalias !39903
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !40039
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !40039, !noalias !39903
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !40040
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !40040, !alias.scope !39898, !noalias !39913
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !40040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !40040, !noalias !39913
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !40047

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !40049, !noalias !39913
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !40050

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !40052, !noalias !39898

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !40055
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !40056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !40065, !noalias !39903
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !40066
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !40069
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !40069, !noalias !39903, !nonnull !11, !noundef !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !40087
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !40087, !noalias !39903, !noundef !11
  %i.cj = shl nuw nsw i64 %i.ci, 2, !dbg !40088   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !40095, !noalias !39903
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !40099, !noalias !39898

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !40100, !range !25810, !noalias !39903, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !40100
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !40103
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !40103, !noalias !39903 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !40104

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !40105
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !40106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !40106, !noalias !39903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !40105, !noalias !39903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !40110, !noalias !39903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !40106, !noalias !39903
  store i8 %i.ck, ptr %i.m, align 16, !dbg !40106, !noalias !39903
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !40106
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !40106, !noalias !39903
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !40106, !noalias !39898

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !40110, !noalias !39903
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !40111

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !40114, !noalias !39903
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !40116, !alias.scope !39901, !noalias !39920, !noundef !11 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !40123
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !40123, !prof !54

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !40129, !noalias !39903
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !40130, !alias.scope !39901, !noalias !39920, !noundef !11 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !40136
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !40136, !prof !54

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !40140, !alias.scope !39901, !noalias !39920, !nonnull !11, !noundef !11
  %i.cs = add i64 %i.cn, -8, !dbg !40149
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !40150
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !40114, !noalias !39898

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !40156, !range !475, !noalias !39903, !noundef !11
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !40156
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !40159

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !40160, !noalias !39913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !40161, !noalias !39903
  br label %bb.ak, !dbg !40162

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !40161, !noalias !39903
  br label %bb.aj, !dbg !40164

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !40165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !40166, !noalias !39913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !40052, !noalias !39903
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !39982

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !40052, !noalias !39898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !40052, !noalias !39903
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !40167

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !40169, !alias.scope !39901, !noalias !39920, !nonnull !11, !noundef !11
  %i.cx = add i64 %i.cp, -8, !dbg !40178
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !40179
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !40129, !noalias !39898

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !40184, !noalias !39898

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !40188, !range !475, !noalias !39903, !noundef !11
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !40188
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !40190

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !40191, !noalias !39913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !40192, !noalias !39903
  br label %bb.ak, !dbg !40162

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !40192, !noalias !39903
  br label %bb.aj, !dbg !40193

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !40194, !noalias !39903
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !40195, !noalias !39903
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !40195
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !40195, !noalias !39903
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !40195
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !40196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !40195, !noalias !39913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !40202, !noalias !39903
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !40196, !alias.scope !39898, !noalias !39913
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !40196
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !40196, !alias.scope !39898, !noalias !39913
  br label %bb.ak, !dbg !40203

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !40205, !noalias !39898
  unreachable, !dbg !40205

common.resume:                                    ; preds = %bb.ch, %bb.cc, %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fx, %bb.cc ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fk, %bb.bs ], [ %i.gj, %bb.ch ]
  resume { ptr, i32 } %common.resume.op, !dbg !40206

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !40207 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !40216
  %i.df = and i64 %i.de, 3, !dbg !40223
  %i.dg = icmp eq i64 %i.df, 0, !dbg !40224
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !40224

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !40225, !noalias !39926
  unreachable, !dbg !40225

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !40227
  %i.di = lshr exact i64 %i.dh, 2, !dbg !40228
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !40229
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !40230, !noalias !39939
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !40167

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !40235
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !39982

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !39982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !39982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !39982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !39982
  br label %bb.ca, !dbg !39983

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !40235 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !39982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !39982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !39982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !39982
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !40235
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !39983

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !40236
  call void @llvm.experimental.noalias.scope.decl(metadata !40237), !dbg !40236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !40240
  %i.dl = shl i64 %2, 2, !dbg !40240              ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !40240
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !40249, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !40253
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !40253, !prof !27291

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !40255, !noalias !40256
  call void @llvm.experimental.noalias.scope.decl(metadata !40258), !dbg !40261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !40264, !noalias !40268
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !40264, !noalias !40269
  %i.do = load i64, ptr %i.g, align 8, !dbg !40264, !range !499, !noalias !40268, !noundef !11
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !40270
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !40271
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !40271, !range !3414, !noalias !40268, !noundef !11 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !40271 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !40270, !prof !54

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !40272, !noalias !40268
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !40273, !noalias !40269
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !40274, !noalias !40268, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !40275, !noalias !40268
  store i64 %i.dr, ptr %i.i, align 8, !dbg !40276, !alias.scope !40258, !noalias !40256
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !40276
  store ptr %i.du, ptr %i.dv, align 8, !dbg !40276, !alias.scope !40258, !noalias !40256
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !40276
  store i64 %2, ptr %i.dw, align 8, !dbg !40276, !alias.scope !40258, !noalias !40256
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !40277

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !40279, !noalias !40256
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !40279
  store i64 %2, ptr %i.dx, align 8, !dbg !40279, !noalias !40256
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !40279
  store ptr @101, ptr %i.dy, align 16, !dbg !40279, !noalias !40256
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !40279
  store i64 3, ptr %i.dz, align 8, !dbg !40279, !noalias !40256
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !40279
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !40279, !noalias !40256
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !40279
  store i64 %i.av, ptr %i.eb, align 8, !dbg !40279, !noalias !40256
  store i64 26, ptr %i.k, align 16, !dbg !40279, !noalias !40256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !40280, !noalias !40256
  store ptr %i.k, ptr %i.j, align 8, !dbg !40280, !noalias !40256
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !40280
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !40280, !noalias !40256
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !40283, !noalias !40237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !40289, !noalias !40256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !40289, !noalias !40256
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !40289
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !40290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !40294
  br label %bb.ce, !dbg !40295

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !40296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !40297, !noalias !40301
  store i64 0, ptr %i.f, align 8, !dbg !40305, !noalias !40301
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !40305 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !40305, !noalias !40301
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !40305 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !40305, !noalias !40301
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !40308, !noalias !40310

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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bm, !dbg !40311, !noalias !40312

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !40313, !noalias !40301, !nonnull !11, !noundef !11
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !40326, !noalias !40301, !noundef !11
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !40327, !noalias !40312 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !40328
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !40331

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !40332, !noalias !40301
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !40332, !noalias !40312

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !40339, !noalias !40301, !nonnull !11, !noundef !11 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !40351, !noalias !40301, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !40352
  %i.ek = and i64 %i.ei, -4, !dbg !40355          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !40356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !40359, !noalias !40301
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !40361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !40370, !noalias !40372
  store ptr %i.eh, ptr %i.c, align 8, !dbg !40376, !alias.scope !40378, !noalias !40382
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !40376
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !40376, !alias.scope !40378, !noalias !40382
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !40376
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !40376, !alias.scope !40378, !noalias !40382
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !40376
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !40376, !alias.scope !40378, !noalias !40382
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !40376
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !40376, !alias.scope !40378, !noalias !40382
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutlEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !40383, !noalias !40312

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !40385, !noalias !40372
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !40386, !alias.scope !40395, !noalias !40402, !noundef !11 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !40406, !alias.scope !40395, !noalias !40402, !noundef !11
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !40386
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !40386

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !40386

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !40407
  store i64 %i.eu, ptr %i.en, align 8, !dbg !40407, !alias.scope !40395, !noalias !40402
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !40408, !alias.scope !40395, !noalias !40402, !nonnull !11, !noundef !11
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !40409, !noalias !40312 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !40410
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !40411
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !40411

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !40422, !noalias !40312

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !40410 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !40423
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !40426, !alias.scope !40428, !noalias !40431
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !40438
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !40445, !noalias !40431
  %i.fa = load i64, ptr %i.en, align 8, !dbg !40386, !alias.scope !40395, !noalias !40402, !noundef !11 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !40406, !alias.scope !40395, !noalias !40402, !noundef !11
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !40386
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !40386

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !40446, !noalias !40301
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bh, !dbg !40447, !noalias !40312

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !40449, !noalias !40312

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !40447, !noalias !40312
  unreachable, !dbg !40447

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !40451 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bo unwind label %bb.bn, !dbg !40452, !noalias !40237

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !40455, !noalias !40456
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !40455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !40455, !noalias !40456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !40457, !noalias !40301
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bk, !dbg !40458, !noalias !40312

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_9
begin_hunk_10_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !40878
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !40878, !noalias !40742
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !40879
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !40879, !alias.scope !40737, !noalias !40752
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !40879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !40879, !noalias !40752
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !40886

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !40888, !noalias !40752
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !40889

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !40891, !noalias !40737

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !40894
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !40895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !40904, !noalias !40742
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !40905
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !40908
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !40908, !noalias !40742, !nonnull !11, !noundef !11 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !40926
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !40926, !noalias !40742, !noundef !11
  %i.cg = shl nuw nsw i64 %i.cf, 2, !dbg !40927   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !40936, !noalias !40742
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !40940, !noalias !40737

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !40941, !range !25810, !noalias !40742, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !40941
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !40944
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !40944, !noalias !40742 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !40945

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !40946
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !40947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !40947, !noalias !40742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !40946, !noalias !40742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !40951, !noalias !40742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !40947, !noalias !40742
  store i8 %i.ch, ptr %i.m, align 16, !dbg !40947, !noalias !40742
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !40947
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !40947, !noalias !40742
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !40947, !noalias !40737

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !40951, !noalias !40742
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !40952

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !40955, !noalias !40742
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !40957, !alias.scope !40740, !noalias !40759, !noundef !11 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !40964
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !40964, !prof !54

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !40970, !noalias !40742
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !40971, !alias.scope !40740, !noalias !40759, !noundef !11 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !40977
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !40977, !prof !54

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !40981, !alias.scope !40740, !noalias !40759, !nonnull !11, !noundef !11
  %i.cp = add i64 %i.ck, -8, !dbg !40990
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !40991
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !40955, !noalias !40737

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !40997, !range !475, !noalias !40742, !noundef !11
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !40997
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !41000

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !41001, !noalias !40752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41002, !noalias !40742
  br label %bb.ai, !dbg !41003

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41002, !noalias !40742
  br label %bb.ah, !dbg !41005

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !41006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !41007, !noalias !40752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !40891, !noalias !40742
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !40821

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !40891, !noalias !40737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !40891, !noalias !40742
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !41008

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !41010, !alias.scope !40740, !noalias !40759, !nonnull !11, !noundef !11
  %i.cu = add i64 %i.cm, -8, !dbg !41019
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !41020
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !40970, !noalias !40737

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !41025, !noalias !40737

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !41029, !range !475, !noalias !40742, !noundef !11
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !41029
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !41031

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !41032, !noalias !40752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41033, !noalias !40742
  br label %bb.ai, !dbg !41003

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41033, !noalias !40742
  br label %bb.ah, !dbg !41034

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !41035, !noalias !40742
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !41036, !noalias !40742
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !41036
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !41036, !noalias !40742
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !41036
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !41037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !41036, !noalias !40752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41043, !noalias !40742
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !41037, !alias.scope !40737, !noalias !40752
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !41037
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !41037, !alias.scope !40737, !noalias !40752
  br label %bb.ai, !dbg !41044

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !41046, !noalias !40737
  unreachable, !dbg !41046

common.resume:                                    ; preds = %bb.cf, %bb.ca, %.body.i, %bb.br, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ge, %bb.ca ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fn, %bb.br ], [ %i.gq, %bb.cf ]
  resume { ptr, i32 } %common.resume.op, !dbg !41047

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !41048 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !41057
  %i.dc = and i64 %i.db, 3, !dbg !41067
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !41068
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !41068

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !41069, !noalias !40765
  unreachable, !dbg !41069

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !41071
  %i.df = lshr exact i64 %i.de, 2, !dbg !41072
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !41073
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !41074, !noalias !40778
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !41008

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !41079
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !40821

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !40821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !40821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !40821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !40821
  br label %bb.by, !dbg !40822

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !41079 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !40821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !40821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !40821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !40821
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !41079
  br i1 %.not132, label %bb.by, label %bb.bx, !dbg !40822

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !41080
  call void @llvm.experimental.noalias.scope.decl(metadata !41081), !dbg !41080
  call void @llvm.experimental.noalias.scope.decl(metadata !41084), !dbg !41080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !41086
  %i.di = shl i64 %2, 2, !dbg !41086              ; 7 uses
  %i.dj = icmp ugt i64 %2, 4611686018427387903, !dbg !41086
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !41095, !prof !54

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !41099
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !41099, !prof !27291

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !41101, !noalias !41102
  call void @llvm.experimental.noalias.scope.decl(metadata !41103), !dbg !41106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !41109, !noalias !41116
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !41109, !noalias !41116
  %i.dl = load i64, ptr %i.g, align 8, !dbg !41109, !range !499, !noalias !41116, !noundef !11
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !41117
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !41118
  %i.do = load i64, ptr %i.dn, align 8, !dbg !41118, !range !3414, !noalias !41116, !noundef !11 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !41118 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !41117, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !41119, !noalias !41116
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !41120, !noalias !41116
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !41122, !noalias !41116, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !41123, !noalias !41116
  store i64 %i.do, ptr %i.i, align 8, !dbg !41124, !alias.scope !41103, !noalias !41102
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !41124
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !41124, !alias.scope !41103, !noalias !41102
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !41124
  store i64 %2, ptr %i.dt, align 8, !dbg !41124, !alias.scope !41103, !noalias !41102
  br i1 %5, label %bb.bt, label %bb.aw, !dbg !41125

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !41127, !noalias !41102
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !41127
  store i64 %2, ptr %i.du, align 8, !dbg !41127, !noalias !41102
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !41127
  store ptr @102, ptr %i.dv, align 16, !dbg !41127, !noalias !41102
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !41127
  store i64 3, ptr %i.dw, align 8, !dbg !41127, !noalias !41102
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !41127
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !41127, !noalias !41102
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !41127
  store i64 %i.av, ptr %i.dy, align 8, !dbg !41127, !noalias !41102
  store i64 26, ptr %i.k, align 16, !dbg !41127, !noalias !41102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !41128, !noalias !41102
  store ptr %i.k, ptr %i.j, align 8, !dbg !41128, !noalias !41102
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !41128
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !41128, !noalias !41102
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !41131, !noalias !41102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !41137, !noalias !41102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !41137, !noalias !41102
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !41137
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !41138, !noalias !41084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41142
  br label %bb.cc, !dbg !41143

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !41144
  call void @llvm.experimental.noalias.scope.decl(metadata !41145), !dbg !41144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !41148, !noalias !41152
  store i64 0, ptr %i.f, align 8, !dbg !41154, !noalias !41152
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !41154 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !41154, !noalias !41152
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !41154 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !41154, !noalias !41152
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !41157, !noalias !41152

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i:                           ; preds = %.critedge.i.i.i.i.i, %bb.bc, %bb.bb, %bb.az, %bb.aw
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bl, !dbg !41159, !noalias !41152

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !41160, !noalias !41152, !nonnull !11, !noundef !11 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !41173, !noalias !41152, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41174), !dbg !41177
  call void @llvm.experimental.noalias.scope.decl(metadata !41178), !dbg !41177
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !41180, !alias.scope !41183, !noalias !41186, !nonnull !11, !noundef !11
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !41180
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !41180, !alias.scope !41183, !noalias !41186, !noundef !11 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !41188 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !41190 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !41195
  call void @llvm.experimental.noalias.scope.decl(metadata !41196), !dbg !41199
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !41200
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !41200

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !41202
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !41202

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !41203, !noalias !41152

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !41205, !noalias !41206, !noundef !11
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !41208, !alias.scope !41209, !noalias !41210
  br label %bb.bc, !dbg !41211

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !41212, !alias.scope !41213, !noalias !41214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !41215, !noalias !41152
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bi unwind label %.loopexit.split-lp.i.i, !dbg !41215, !noalias !41152

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !41222
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !41212, !alias.scope !41213, !noalias !41214
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !41223, !noalias !41152, !nonnull !11, !noundef !11 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !41235, !noalias !41152, !noundef !11 ; 2 uses
  %i.em = and i64 %i.el, 3, !dbg !41236
  %i.en = and i64 %i.el, -4, !dbg !41239          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !41240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !41243, !noalias !41152
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %2, !dbg !41245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !41254, !noalias !41257
  store ptr %i.ek, ptr %i.c, align 8, !dbg !41261, !alias.scope !41263, !noalias !41267
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !41261
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !41261, !alias.scope !41263, !noalias !41267
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !41261
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !41261, !alias.scope !41263, !noalias !41267
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !41261
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !41261, !alias.scope !41263, !noalias !41267
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !41261
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !41261, !alias.scope !41263, !noalias !41267
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !41268, !noalias !41152

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41271, !noalias !41257
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !41272, !alias.scope !41283, !noalias !41290, !noundef !11 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !41294, !alias.scope !41283, !noalias !41290, !noundef !11
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !41272
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !41272

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !41272

bb.be:                                            ; preds = %bb.bf, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fd, %bb.bf ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !41295
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !41295, !alias.scope !41283, !noalias !41290
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !41297, !alias.scope !41283, !noalias !41290, !nonnull !11, !noundef !11
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !41298, !noalias !41152 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !41299
  %.not.i.i.i.i.i = icmp eq i64 %i.ez, 4, !dbg !41300
  br i1 %.not.i.i.i.i.i, label %bb.bf, label %.critedge.i.i.i.i.i, !dbg !41300

.critedge.i.i.i.i.i:                              ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !41311, !noalias !41152

.noexc8.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bf:                                            ; preds = %.noexc7.i.i
  %i.fa = extractvalue { ptr, i64 } %i.ey, 0, !dbg !41299 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !41312
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fa, align 1, !dbg !41317, !alias.scope !41319, !noalias !41322
  %i.fc = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !41329
  store i32 %i.fc, ptr %i.fb, align 4, !dbg !41340, !noalias !41322
  %i.fd = load i64, ptr %i.eq, align 8, !dbg !41272, !alias.scope !41283, !noalias !41290, !noundef !11 ; 2 uses
  %i.fe = load i64, ptr %i.er, align 8, !dbg !41294, !alias.scope !41283, !noalias !41290, !noundef !11
  %i.ff = icmp ult i64 %i.fd, %i.fe, !dbg !41272
  br i1 %i.ff, label %bb.be, label %.loopexit15.i.i, !dbg !41272

.loopexit15.i.i:                                  ; preds = %bb.bf, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !41341, !noalias !41152
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bg, !dbg !41342, !noalias !41152

bb.bg:                                            ; preds = %.loopexit15.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bh, !dbg !41344, !noalias !41152

end_hunk_10
begin_hunk_11_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !41814, !noalias !41678
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !41814
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !41814, !noalias !41678
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !41815
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !41815, !alias.scope !41673, !noalias !41688
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !41815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !41815, !noalias !41688
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !41822

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !41824, !noalias !41688
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !41825

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !41827, !noalias !41673

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !41830
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !41831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !41840, !noalias !41678
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !41841
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !41844
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !41844, !noalias !41678, !nonnull !11, !noundef !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !41862
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !41862, !noalias !41678, !noundef !11
  %i.cj = shl nuw nsw i64 %i.ci, 2, !dbg !41863   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !41870, !noalias !41678
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !41874, !noalias !41673

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !41875, !range !25810, !noalias !41678, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !41875
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !41878
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !41878, !noalias !41678 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !41879

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !41880
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !41881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !41881, !noalias !41678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !41880, !noalias !41678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !41885, !noalias !41678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !41881, !noalias !41678
  store i8 %i.ck, ptr %i.m, align 16, !dbg !41881, !noalias !41678
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !41881
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !41881, !noalias !41678
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !41881, !noalias !41673

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !41885, !noalias !41678
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !41886

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !41889, !noalias !41678
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !41891, !alias.scope !41676, !noalias !41695, !noundef !11 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !41898
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !41898, !prof !54

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !41904, !noalias !41678
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !41905, !alias.scope !41676, !noalias !41695, !noundef !11 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !41911
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !41911, !prof !54

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !41915, !alias.scope !41676, !noalias !41695, !nonnull !11, !noundef !11
  %i.cs = add i64 %i.cn, -8, !dbg !41924
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !41925
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !41889, !noalias !41673

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !41931, !range !475, !noalias !41678, !noundef !11
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !41931
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !41934

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !41935, !noalias !41688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41936, !noalias !41678
  br label %bb.ak, !dbg !41937

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41936, !noalias !41678
  br label %bb.aj, !dbg !41939

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !41940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !41941, !noalias !41688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !41827, !noalias !41678
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !41757

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !41827, !noalias !41673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !41827, !noalias !41678
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !41942

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !41944, !alias.scope !41676, !noalias !41695, !nonnull !11, !noundef !11
  %i.cx = add i64 %i.cp, -8, !dbg !41953
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !41954
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !41904, !noalias !41673

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !41959, !noalias !41673

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !41963, !range !475, !noalias !41678, !noundef !11
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !41963
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !41965

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !41966, !noalias !41688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41967, !noalias !41678
  br label %bb.ak, !dbg !41937

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41967, !noalias !41678
  br label %bb.aj, !dbg !41968

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !41969, !noalias !41678
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !41970, !noalias !41678
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !41970
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !41970, !noalias !41678
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !41970
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !41971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !41970, !noalias !41688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41977, !noalias !41678
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !41971, !alias.scope !41673, !noalias !41688
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !41971
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !41971, !alias.scope !41673, !noalias !41688
  br label %bb.ak, !dbg !41978

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !41980, !noalias !41673
  unreachable, !dbg !41980

common.resume:                                    ; preds = %bb.ch, %bb.cc, %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fx, %bb.cc ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fk, %bb.bs ], [ %i.gj, %bb.ch ]
  resume { ptr, i32 } %common.resume.op, !dbg !41981

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !41982 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !41991
  %i.df = and i64 %i.de, 3, !dbg !41998
  %i.dg = icmp eq i64 %i.df, 0, !dbg !41999
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !41999

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !42000, !noalias !41701
  unreachable, !dbg !42000

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !42002
  %i.di = lshr exact i64 %i.dh, 2, !dbg !42003
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !42004
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !42005, !noalias !41714
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !41942

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !42010
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !41757

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !41757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !41757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !41757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !41757
  br label %bb.ca, !dbg !41758

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !42010 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !41757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !41757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !41757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !41757
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !42010
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !41758

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !42011
  call void @llvm.experimental.noalias.scope.decl(metadata !42012), !dbg !42011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !42015
  %i.dl = shl i64 %2, 2, !dbg !42015              ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !42015
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !42024, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !42028
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !42028, !prof !27291

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !42030, !noalias !42031
  call void @llvm.experimental.noalias.scope.decl(metadata !42033), !dbg !42036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !42039, !noalias !42043
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !42039, !noalias !42044
  %i.do = load i64, ptr %i.g, align 8, !dbg !42039, !range !499, !noalias !42043, !noundef !11
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !42045
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !42046
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !42046, !range !3414, !noalias !42043, !noundef !11 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !42046 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !42045, !prof !54

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !42047, !noalias !42043
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !42048, !noalias !42044
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !42049, !noalias !42043, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !42050, !noalias !42043
  store i64 %i.dr, ptr %i.i, align 8, !dbg !42051, !alias.scope !42033, !noalias !42031
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !42051
  store ptr %i.du, ptr %i.dv, align 8, !dbg !42051, !alias.scope !42033, !noalias !42031
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !42051
  store i64 %2, ptr %i.dw, align 8, !dbg !42051, !alias.scope !42033, !noalias !42031
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !42052

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !42054, !noalias !42031
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !42054
  store i64 %2, ptr %i.dx, align 8, !dbg !42054, !noalias !42031
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !42054
  store ptr @102, ptr %i.dy, align 16, !dbg !42054, !noalias !42031
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !42054
  store i64 3, ptr %i.dz, align 8, !dbg !42054, !noalias !42031
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !42054
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !42054, !noalias !42031
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !42054
  store i64 %i.av, ptr %i.eb, align 8, !dbg !42054, !noalias !42031
  store i64 26, ptr %i.k, align 16, !dbg !42054, !noalias !42031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !42055, !noalias !42031
  store ptr %i.k, ptr %i.j, align 8, !dbg !42055, !noalias !42031
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !42055
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !42055, !noalias !42031
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !42058, !noalias !42012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !42064, !noalias !42031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !42064, !noalias !42031
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !42064
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !42065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !42069
  br label %bb.ce, !dbg !42070

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !42071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !42072, !noalias !42076
  store i64 0, ptr %i.f, align 8, !dbg !42080, !noalias !42076
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !42080 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !42080, !noalias !42076
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !42080 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !42080, !noalias !42076
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !42083, !noalias !42085

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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bm, !dbg !42086, !noalias !42087

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !42088, !noalias !42076, !nonnull !11, !noundef !11
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !42101, !noalias !42076, !noundef !11
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !42102, !noalias !42087 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !42103
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !42106

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !42107, !noalias !42076
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !42107, !noalias !42087

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !42114, !noalias !42076, !nonnull !11, !noundef !11 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !42126, !noalias !42076, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !42127
  %i.ek = and i64 %i.ei, -4, !dbg !42130          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !42131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !42134, !noalias !42076
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !42136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !42145, !noalias !42147
  store ptr %i.eh, ptr %i.c, align 8, !dbg !42151, !alias.scope !42153, !noalias !42157
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !42151
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !42151, !alias.scope !42153, !noalias !42157
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !42151
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !42151, !alias.scope !42153, !noalias !42157
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !42151
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !42151, !alias.scope !42153, !noalias !42157
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !42151
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !42151, !alias.scope !42153, !noalias !42157
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !42158, !noalias !42087

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !42160, !noalias !42147
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !42161, !alias.scope !42170, !noalias !42177, !noundef !11 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !42181, !alias.scope !42170, !noalias !42177, !noundef !11
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !42161
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !42161

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !42161

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !42182
  store i64 %i.eu, ptr %i.en, align 8, !dbg !42182, !alias.scope !42170, !noalias !42177
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !42183, !alias.scope !42170, !noalias !42177, !nonnull !11, !noundef !11
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !42184, !noalias !42087 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !42185
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !42186
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !42186

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !42197, !noalias !42087

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !42185 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !42198
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !42201, !alias.scope !42203, !noalias !42206
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !42213
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !42219, !noalias !42206
  %i.fa = load i64, ptr %i.en, align 8, !dbg !42161, !alias.scope !42170, !noalias !42177, !noundef !11 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !42181, !alias.scope !42170, !noalias !42177, !noundef !11
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !42161
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !42161

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !42220, !noalias !42076
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bh, !dbg !42221, !noalias !42087

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !42223, !noalias !42087

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !42221, !noalias !42087
  unreachable, !dbg !42221

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !42225 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bo unwind label %bb.bn, !dbg !42226, !noalias !42012

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !42229, !noalias !42230
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !42229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !42229, !noalias !42230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !42231, !noalias !42076
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bk, !dbg !42232, !noalias !42087

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_11
begin_hunk_12_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !42652
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !42652, !noalias !42516
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !42653
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !42653, !alias.scope !42511, !noalias !42526
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !42653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !42653, !noalias !42526
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !42660

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !42662, !noalias !42526
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !42663

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !42665, !noalias !42511

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !42668
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !42669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !42678, !noalias !42516
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !42679
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !42682
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !42682, !noalias !42516, !nonnull !11, !noundef !11 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !42700
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !42700, !noalias !42516, !noundef !11
  %i.cg = shl nuw nsw i64 %i.cf, 4, !dbg !42701   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !42710, !noalias !42516
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !42714, !noalias !42511

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !42715, !range !25810, !noalias !42516, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !42715
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !42718
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !42718, !noalias !42516 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !42719

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !42720
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !42721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !42721, !noalias !42516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !42720, !noalias !42516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !42725, !noalias !42516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !42721, !noalias !42516
  store i8 %i.ch, ptr %i.m, align 16, !dbg !42721, !noalias !42516
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !42721
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !42721, !noalias !42516
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !42721, !noalias !42511

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !42725, !noalias !42516
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !42726

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !42729, !noalias !42516
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !42731, !alias.scope !42514, !noalias !42533, !noundef !11 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !42738
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !42738, !prof !54

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !42744, !noalias !42516
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !42745, !alias.scope !42514, !noalias !42533, !noundef !11 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !42751
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !42751, !prof !54

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !42755, !alias.scope !42514, !noalias !42533, !nonnull !11, !noundef !11
  %i.cp = add i64 %i.ck, -8, !dbg !42764
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !42765
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !42729, !noalias !42511

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !42771, !range !475, !noalias !42516, !noundef !11
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !42771
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !42774

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !42775, !noalias !42526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !42776, !noalias !42516
  br label %bb.ai, !dbg !42777

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !42776, !noalias !42516
  br label %bb.ah, !dbg !42779

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !42780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !42781, !noalias !42526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !42665, !noalias !42516
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !42595

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !42665, !noalias !42511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !42665, !noalias !42516
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !42782

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !42784, !alias.scope !42514, !noalias !42533, !nonnull !11, !noundef !11
  %i.cu = add i64 %i.cm, -8, !dbg !42793
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !42794
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !42744, !noalias !42511

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !42799, !noalias !42511

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !42803, !range !475, !noalias !42516, !noundef !11
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !42803
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !42805

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !42806, !noalias !42526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !42807, !noalias !42516
  br label %bb.ai, !dbg !42777

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !42807, !noalias !42516
  br label %bb.ah, !dbg !42808

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !42809, !noalias !42516
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !42810, !noalias !42516
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !42810
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !42810, !noalias !42516
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !42810
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !42811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !42810, !noalias !42526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !42817, !noalias !42516
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !42811, !alias.scope !42511, !noalias !42526
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !42811
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !42811, !alias.scope !42511, !noalias !42526
  br label %bb.ai, !dbg !42818

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !42820, !noalias !42511
  unreachable, !dbg !42820

common.resume:                                    ; preds = %bb.cg, %bb.cb, %.body.i, %bb.bs, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.cb ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fo, %bb.bs ], [ %i.gr, %bb.cg ]
  resume { ptr, i32 } %common.resume.op, !dbg !42821

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !42822 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !42831
  %i.dc = and i64 %i.db, 15, !dbg !42841
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !42842
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !42842

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !42843, !noalias !42539
  unreachable, !dbg !42843

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !42845
  %i.df = lshr exact i64 %i.de, 4, !dbg !42846
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !42847
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_innNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !42848, !noalias !42552
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !42782

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !42853
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !42595

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !42595
  br label %bb.bz, !dbg !42596

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !42853 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !42595
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !42853
  br i1 %.not132, label %bb.bz, label %bb.by, !dbg !42596

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !42854
  call void @llvm.experimental.noalias.scope.decl(metadata !42855), !dbg !42854
  call void @llvm.experimental.noalias.scope.decl(metadata !42858), !dbg !42854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !42860
  %i.di = shl i64 %2, 4, !dbg !42860              ; 7 uses
  %i.dj = icmp ugt i64 %2, 1152921504606846975, !dbg !42860
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !42869, !prof !54

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !42873
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !42873, !prof !27291

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !42875, !noalias !42876
  call void @llvm.experimental.noalias.scope.decl(metadata !42877), !dbg !42880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !42883, !noalias !42890
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !42883, !noalias !42890
  %i.dl = load i64, ptr %i.g, align 8, !dbg !42883, !range !499, !noalias !42890, !noundef !11
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !42891
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !42892
  %i.do = load i64, ptr %i.dn, align 8, !dbg !42892, !range !3414, !noalias !42890, !noundef !11 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !42892 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !42891, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !42893, !noalias !42890
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !42894, !noalias !42890
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !42896, !noalias !42890, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !42897, !noalias !42890
  store i64 %i.do, ptr %i.i, align 8, !dbg !42898, !alias.scope !42877, !noalias !42876
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !42898
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !42898, !alias.scope !42877, !noalias !42876
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !42898
  store i64 %2, ptr %i.dt, align 8, !dbg !42898, !alias.scope !42877, !noalias !42876
  br i1 %5, label %bb.bu, label %bb.aw, !dbg !42899

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !42901, !noalias !42876
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !42901
  store i64 %2, ptr %i.du, align 8, !dbg !42901, !noalias !42876
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !42901
  store ptr @103, ptr %i.dv, align 16, !dbg !42901, !noalias !42876
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !42901
  store i64 4, ptr %i.dw, align 8, !dbg !42901, !noalias !42876
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !42901
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !42901, !noalias !42876
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !42901
  store i64 %i.av, ptr %i.dy, align 8, !dbg !42901, !noalias !42876
  store i64 26, ptr %i.k, align 16, !dbg !42901, !noalias !42876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !42902, !noalias !42876
  store ptr %i.k, ptr %i.j, align 8, !dbg !42902, !noalias !42876
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !42902
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !42902, !noalias !42876
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !42905, !noalias !42876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !42911, !noalias !42876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !42911, !noalias !42876
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !42911
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !42912, !noalias !42858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !42916
  br label %bb.cd, !dbg !42917

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !42918
  call void @llvm.experimental.noalias.scope.decl(metadata !42919), !dbg !42918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !42922, !noalias !42926
  store i64 0, ptr %i.f, align 8, !dbg !42928, !noalias !42926
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !42928 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !42928, !noalias !42926
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !42928 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !42928, !noalias !42926
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !42931, !noalias !42926

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i:                           ; preds = %bb.bf, %bb.bc, %bb.bb, %bb.az, %bb.aw
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bm, !dbg !42933, !noalias !42926

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !42934, !noalias !42926, !nonnull !11, !noundef !11 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !42947, !noalias !42926, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42948), !dbg !42951
  call void @llvm.experimental.noalias.scope.decl(metadata !42952), !dbg !42951
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !42954, !alias.scope !42957, !noalias !42960, !nonnull !11, !noundef !11
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !42954
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !42954, !alias.scope !42957, !noalias !42960, !noundef !11 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !42962 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !42964 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !42969
  call void @llvm.experimental.noalias.scope.decl(metadata !42970), !dbg !42973
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !42974
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !42974

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !42976
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !42976

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !42977, !noalias !42926

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !42979, !noalias !42980, !noundef !11
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !42982, !alias.scope !42983, !noalias !42984
  br label %bb.bc, !dbg !42985

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !42986, !alias.scope !42987, !noalias !42988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !42989, !noalias !42926
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !42989, !noalias !42926

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !42996
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !42986, !alias.scope !42987, !noalias !42988
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !42997, !noalias !42926, !nonnull !11, !noundef !11 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !43009, !noalias !42926, !noundef !11 ; 2 uses
  %i.em = and i64 %i.el, 15, !dbg !43010
  %i.en = and i64 %i.el, -16, !dbg !43013         ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !43014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !43017, !noalias !42926
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %2, !dbg !43019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !43028, !noalias !43031
  store ptr %i.ek, ptr %i.c, align 8, !dbg !43035, !alias.scope !43037, !noalias !43041
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !43035
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !43035, !alias.scope !43037, !noalias !43041
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !43035
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !43035, !alias.scope !43037, !noalias !43041
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !43035
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !43035, !alias.scope !43037, !noalias !43041
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !43035
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !43035, !alias.scope !43037, !noalias !43041
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutnEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !43042, !noalias !42926

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !43045, !noalias !43031
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !43046, !alias.scope !43057, !noalias !43064, !noundef !11 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !43068, !alias.scope !43057, !noalias !43064, !noundef !11
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !43046
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !43046

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !43046

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fe, %bb.bg ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !43069
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !43069, !alias.scope !43057, !noalias !43064
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !43071, !alias.scope !43057, !noalias !43064, !nonnull !11, !noundef !11
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !43072, !noalias !42926 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !43073
  %i.fa = icmp eq i64 %i.ez, 16, !dbg !43074
  br i1 %i.fa, label %bb.bg, label %bb.bf, !dbg !43074

bb.bf:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !43085, !noalias !42926

.noexc8.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc7.i.i
  %i.fb = extractvalue { ptr, i64 } %i.ey, 0, !dbg !43073 ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !43086
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.fb, align 1, !dbg !43091, !alias.scope !43093, !noalias !43097
  %i.fd = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !43104
  store i128 %i.fd, ptr %i.fc, align 16, !dbg !43118, !noalias !43097
  %i.fe = load i64, ptr %i.eq, align 8, !dbg !43046, !alias.scope !43057, !noalias !43064, !noundef !11 ; 2 uses
  %i.ff = load i64, ptr %i.er, align 8, !dbg !43068, !alias.scope !43057, !noalias !43064, !noundef !11
  %i.fg = icmp ult i64 %i.fe, %i.ff, !dbg !43046
  br i1 %i.fg, label %bb.be, label %.loopexit15.i.i, !dbg !43046

.loopexit15.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !43119, !noalias !42926
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bh, !dbg !43120, !noalias !42926

bb.bh:                                            ; preds = %.loopexit15.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !43122, !noalias !42926

end_hunk_12
begin_hunk_13_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !43594, !noalias !43458
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !43594
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !43594, !noalias !43458
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !43595
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !43595, !alias.scope !43453, !noalias !43468
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !43595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !43595, !noalias !43468
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !43602

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !43604, !noalias !43468
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !43605

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !43607, !noalias !43453

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !43610
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !43611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !43620, !noalias !43458
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !43621
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !43624
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !43624, !noalias !43458, !nonnull !11, !noundef !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !43642
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !43642, !noalias !43458, !noundef !11
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !43643   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !43650, !noalias !43458
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !43654, !noalias !43453

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !43655, !range !25810, !noalias !43458, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !43655
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !43658
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !43658, !noalias !43458 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !43659

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !43660
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !43661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !43661, !noalias !43458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !43660, !noalias !43458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !43665, !noalias !43458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !43661, !noalias !43458
  store i8 %i.ck, ptr %i.m, align 16, !dbg !43661, !noalias !43458
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !43661
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !43661, !noalias !43458
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !43661, !noalias !43453

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !43665, !noalias !43458
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !43666

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !43669, !noalias !43458
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !43671, !alias.scope !43456, !noalias !43475, !noundef !11 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !43678
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !43678, !prof !54

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !43684, !noalias !43458
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !43685, !alias.scope !43456, !noalias !43475, !noundef !11 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !43691
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !43691, !prof !54

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !43695, !alias.scope !43456, !noalias !43475, !nonnull !11, !noundef !11
  %i.cs = add i64 %i.cn, -8, !dbg !43704
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !43705
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !43669, !noalias !43453

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !43711, !range !475, !noalias !43458, !noundef !11
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !43711
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !43714

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !43715, !noalias !43468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !43716, !noalias !43458
  br label %bb.ak, !dbg !43717

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !43716, !noalias !43458
  br label %bb.aj, !dbg !43719

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !43720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !43721, !noalias !43468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !43607, !noalias !43458
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !43537

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !43607, !noalias !43453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !43607, !noalias !43458
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !43722

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !43724, !alias.scope !43456, !noalias !43475, !nonnull !11, !noundef !11
  %i.cx = add i64 %i.cp, -8, !dbg !43733
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !43734
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !43684, !noalias !43453

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !43739, !noalias !43453

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !43743, !range !475, !noalias !43458, !noundef !11
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !43743
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !43745

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !43746, !noalias !43468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !43747, !noalias !43458
  br label %bb.ak, !dbg !43717

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !43747, !noalias !43458
  br label %bb.aj, !dbg !43748

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !43749, !noalias !43458
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !43750, !noalias !43458
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !43750
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !43750, !noalias !43458
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !43750
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !43751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !43750, !noalias !43468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !43757, !noalias !43458
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !43751, !alias.scope !43453, !noalias !43468
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !43751
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !43751, !alias.scope !43453, !noalias !43468
  br label %bb.ak, !dbg !43758

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !43760, !noalias !43453
  unreachable, !dbg !43760

common.resume:                                    ; preds = %bb.ci, %bb.cd, %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fy, %bb.cd ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bt ], [ %i.gk, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !43761

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !43762 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !43771
  %i.df = and i64 %i.de, 15, !dbg !43778
  %i.dg = icmp eq i64 %i.df, 0, !dbg !43779
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !43779

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !43780, !noalias !43481
  unreachable, !dbg !43780

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !43782
  %i.di = lshr exact i64 %i.dh, 4, !dbg !43783
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !43784
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_innNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !43785, !noalias !43494
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !43722

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !43790
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !43537

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !43537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !43537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !43537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !43537
  br label %bb.cb, !dbg !43538

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !43790 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !43537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !43537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !43537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !43537
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !43790
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !43538

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !43791
  call void @llvm.experimental.noalias.scope.decl(metadata !43792), !dbg !43791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !43795
  %i.dl = shl i64 %2, 4, !dbg !43795              ; 4 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !43795
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !43804, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !43808
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !43808, !prof !27291

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !43810, !noalias !43811
  call void @llvm.experimental.noalias.scope.decl(metadata !43813), !dbg !43816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !43819, !noalias !43823
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !43819, !noalias !43824
  %i.do = load i64, ptr %i.g, align 8, !dbg !43819, !range !499, !noalias !43823, !noundef !11
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !43825
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !43826
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !43826, !range !3414, !noalias !43823, !noundef !11 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !43826 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !43825, !prof !54

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !43827, !noalias !43823
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !43828, !noalias !43824
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !43829, !noalias !43823, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !43830, !noalias !43823
  store i64 %i.dr, ptr %i.i, align 8, !dbg !43831, !alias.scope !43813, !noalias !43811
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !43831
  store ptr %i.du, ptr %i.dv, align 8, !dbg !43831, !alias.scope !43813, !noalias !43811
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !43831
  store i64 %2, ptr %i.dw, align 8, !dbg !43831, !alias.scope !43813, !noalias !43811
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !43832

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !43834, !noalias !43811
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !43834
  store i64 %2, ptr %i.dx, align 8, !dbg !43834, !noalias !43811
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !43834
  store ptr @103, ptr %i.dy, align 16, !dbg !43834, !noalias !43811
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !43834
  store i64 4, ptr %i.dz, align 8, !dbg !43834, !noalias !43811
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !43834
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !43834, !noalias !43811
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !43834
  store i64 %i.av, ptr %i.eb, align 8, !dbg !43834, !noalias !43811
  store i64 26, ptr %i.k, align 16, !dbg !43834, !noalias !43811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !43835, !noalias !43811
  store ptr %i.k, ptr %i.j, align 8, !dbg !43835, !noalias !43811
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !43835
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !43835, !noalias !43811
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !43838, !noalias !43792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !43844, !noalias !43811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !43844, !noalias !43811
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !43844
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !43845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !43849
  br label %bb.cf, !dbg !43850

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !43851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !43852, !noalias !43856
  store i64 0, ptr %i.f, align 8, !dbg !43860, !noalias !43856
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !43860 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !43860, !noalias !43856
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !43860 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !43860, !noalias !43856
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !43863, !noalias !43865

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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bn, !dbg !43866, !noalias !43867

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !43868, !noalias !43856, !nonnull !11, !noundef !11
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !43881, !noalias !43856, !noundef !11
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !43882, !noalias !43867 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !43883
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !43886

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !43887, !noalias !43856
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !43887, !noalias !43867

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !43894, !noalias !43856, !nonnull !11, !noundef !11 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !43906, !noalias !43856, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 15, !dbg !43907
  %i.ek = and i64 %i.ei, -16, !dbg !43910         ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !43911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !43914, !noalias !43856
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %2, !dbg !43916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !43925, !noalias !43927
  store ptr %i.eh, ptr %i.c, align 8, !dbg !43931, !alias.scope !43933, !noalias !43937
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !43931
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !43931, !alias.scope !43933, !noalias !43937
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !43931
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !43931, !alias.scope !43933, !noalias !43937
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !43931
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !43931, !alias.scope !43933, !noalias !43937
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !43931
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !43931, !alias.scope !43933, !noalias !43937
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutnEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !43938, !noalias !43867

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !43940, !noalias !43927
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !43941, !alias.scope !43950, !noalias !43957, !noundef !11 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !43961, !alias.scope !43950, !noalias !43957, !noundef !11
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !43941
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !43941

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !43941

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !43962
  store i64 %i.eu, ptr %i.en, align 8, !dbg !43962, !alias.scope !43950, !noalias !43957
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !43963, !alias.scope !43950, !noalias !43957, !nonnull !11, !noundef !11
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !43964, !noalias !43867 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !43965
  %i.ex = icmp eq i64 %i.ew, 16, !dbg !43966
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !43966

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !43977, !noalias !43867

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !43965 ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !43978
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.ey, align 1, !dbg !43981, !alias.scope !43983, !noalias !43987
  %i.fa = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !43994
  store i128 %i.fa, ptr %i.ez, align 16, !dbg !44001, !noalias !43987
  %i.fb = load i64, ptr %i.en, align 8, !dbg !43941, !alias.scope !43950, !noalias !43957, !noundef !11 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !43961, !alias.scope !43950, !noalias !43957, !noundef !11
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !43941
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !43941

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !44002, !noalias !43856
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bi, !dbg !44003, !noalias !43867

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bj, !dbg !44005, !noalias !43867

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !44003, !noalias !43867
  unreachable, !dbg !44003

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !44007 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bp unwind label %bb.bo, !dbg !44008, !noalias !43792

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !44011, !noalias !44012
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !44011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !44011, !noalias !44012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !44013, !noalias !43856
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bl, !dbg !44014, !noalias !43867

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_13
begin_hunk_14_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !44434
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !44434, !noalias !44298
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !44435
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !44435, !alias.scope !44293, !noalias !44308
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !44435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !44435, !noalias !44308
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !44442

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !44444, !noalias !44308
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !44445

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !44447, !noalias !44293

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !44450
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !44451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !44460, !noalias !44298
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !44461
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !44464
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !44464, !noalias !44298, !nonnull !11, !noundef !11 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !44482
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !44482, !noalias !44298, !noundef !11
  %i.cg = shl nuw nsw i64 %i.cf, 4, !dbg !44483   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !44492, !noalias !44298
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !44496, !noalias !44293

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !44497, !range !25810, !noalias !44298, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !44497
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !44500
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !44500, !noalias !44298 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !44501

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !44502
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !44503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !44503, !noalias !44298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !44502, !noalias !44298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !44507, !noalias !44298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !44503, !noalias !44298
  store i8 %i.ch, ptr %i.m, align 16, !dbg !44503, !noalias !44298
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !44503
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !44503, !noalias !44298
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !44503, !noalias !44293

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !44507, !noalias !44298
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !44508

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !44511, !noalias !44298
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !44513, !alias.scope !44296, !noalias !44315, !noundef !11 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !44520
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !44520, !prof !54

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !44526, !noalias !44298
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !44527, !alias.scope !44296, !noalias !44315, !noundef !11 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !44533
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !44533, !prof !54

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !44537, !alias.scope !44296, !noalias !44315, !nonnull !11, !noundef !11
  %i.cp = add i64 %i.ck, -8, !dbg !44546
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !44547
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !44511, !noalias !44293

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !44553, !range !475, !noalias !44298, !noundef !11
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !44553
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !44556

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !44557, !noalias !44308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !44558, !noalias !44298
  br label %bb.ai, !dbg !44559

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !44558, !noalias !44298
  br label %bb.ah, !dbg !44561

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !44562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !44563, !noalias !44308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !44447, !noalias !44298
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !44377

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !44447, !noalias !44293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !44447, !noalias !44298
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !44564

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !44566, !alias.scope !44296, !noalias !44315, !nonnull !11, !noundef !11
  %i.cu = add i64 %i.cm, -8, !dbg !44575
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !44576
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !44526, !noalias !44293

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !44581, !noalias !44293

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !44585, !range !475, !noalias !44298, !noundef !11
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !44585
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !44587

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !44588, !noalias !44308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !44589, !noalias !44298
  br label %bb.ai, !dbg !44559

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !44589, !noalias !44298
  br label %bb.ah, !dbg !44590

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !44591, !noalias !44298
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !44592, !noalias !44298
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !44592
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !44592, !noalias !44298
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !44592
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !44593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !44592, !noalias !44308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !44599, !noalias !44298
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !44593, !alias.scope !44293, !noalias !44308
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !44593
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !44593, !alias.scope !44293, !noalias !44308
  br label %bb.ai, !dbg !44600

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !44602, !noalias !44293
  unreachable, !dbg !44602

common.resume:                                    ; preds = %bb.cg, %bb.cb, %.body.i, %bb.bs, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.cb ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fo, %bb.bs ], [ %i.gr, %bb.cg ]
  resume { ptr, i32 } %common.resume.op, !dbg !44603

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !44604 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !44613
  %i.dc = and i64 %i.db, 15, !dbg !44623
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !44624
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !44624

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !44625, !noalias !44321
  unreachable, !dbg !44625

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !44627
  %i.df = lshr exact i64 %i.de, 4, !dbg !44628
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !44629
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inoNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !44630, !noalias !44334
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !44564

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !44635
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !44377

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !44377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !44377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !44377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !44377
  br label %bb.bz, !dbg !44378

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !44635 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !44377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !44377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !44377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !44377
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !44635
  br i1 %.not132, label %bb.bz, label %bb.by, !dbg !44378

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !44636
  call void @llvm.experimental.noalias.scope.decl(metadata !44637), !dbg !44636
  call void @llvm.experimental.noalias.scope.decl(metadata !44640), !dbg !44636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !44642
  %i.di = shl i64 %2, 4, !dbg !44642              ; 7 uses
  %i.dj = icmp ugt i64 %2, 1152921504606846975, !dbg !44642
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !44651, !prof !54

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !44655
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !44655, !prof !27291

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !44657, !noalias !44658
  call void @llvm.experimental.noalias.scope.decl(metadata !44659), !dbg !44662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !44665, !noalias !44672
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !44665, !noalias !44672
  %i.dl = load i64, ptr %i.g, align 8, !dbg !44665, !range !499, !noalias !44672, !noundef !11
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !44673
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !44674
  %i.do = load i64, ptr %i.dn, align 8, !dbg !44674, !range !3414, !noalias !44672, !noundef !11 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !44674 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !44673, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !44675, !noalias !44672
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !44676, !noalias !44672
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !44678, !noalias !44672, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !44679, !noalias !44672
  store i64 %i.do, ptr %i.i, align 8, !dbg !44680, !alias.scope !44659, !noalias !44658
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !44680
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !44680, !alias.scope !44659, !noalias !44658
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !44680
  store i64 %2, ptr %i.dt, align 8, !dbg !44680, !alias.scope !44659, !noalias !44658
  br i1 %5, label %bb.bu, label %bb.aw, !dbg !44681

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !44683, !noalias !44658
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !44683
  store i64 %2, ptr %i.du, align 8, !dbg !44683, !noalias !44658
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !44683
  store ptr @104, ptr %i.dv, align 16, !dbg !44683, !noalias !44658
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !44683
  store i64 4, ptr %i.dw, align 8, !dbg !44683, !noalias !44658
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !44683
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !44683, !noalias !44658
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !44683
  store i64 %i.av, ptr %i.dy, align 8, !dbg !44683, !noalias !44658
  store i64 26, ptr %i.k, align 16, !dbg !44683, !noalias !44658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !44684, !noalias !44658
  store ptr %i.k, ptr %i.j, align 8, !dbg !44684, !noalias !44658
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !44684
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !44684, !noalias !44658
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !44687, !noalias !44658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !44693, !noalias !44658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !44693, !noalias !44658
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !44693
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !44694, !noalias !44640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !44698
  br label %bb.cd, !dbg !44699

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !44700
  call void @llvm.experimental.noalias.scope.decl(metadata !44701), !dbg !44700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !44704, !noalias !44708
  store i64 0, ptr %i.f, align 8, !dbg !44710, !noalias !44708
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !44710 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !44710, !noalias !44708
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !44710 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !44710, !noalias !44708
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !44713, !noalias !44708

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i:                           ; preds = %bb.bf, %bb.bc, %bb.bb, %bb.az, %bb.aw
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bm, !dbg !44715, !noalias !44708

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !44716, !noalias !44708, !nonnull !11, !noundef !11 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !44729, !noalias !44708, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44730), !dbg !44733
  call void @llvm.experimental.noalias.scope.decl(metadata !44734), !dbg !44733
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !44736, !alias.scope !44739, !noalias !44742, !nonnull !11, !noundef !11
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !44736
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !44736, !alias.scope !44739, !noalias !44742, !noundef !11 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !44744 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !44746 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !44751
  call void @llvm.experimental.noalias.scope.decl(metadata !44752), !dbg !44755
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !44756
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !44756

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !44758
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !44758

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !44759, !noalias !44708

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !44761, !noalias !44762, !noundef !11
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !44764, !alias.scope !44765, !noalias !44766
  br label %bb.bc, !dbg !44767

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !44768, !alias.scope !44769, !noalias !44770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !44771, !noalias !44708
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !44771, !noalias !44708

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !44778
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !44768, !alias.scope !44769, !noalias !44770
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !44779, !noalias !44708, !nonnull !11, !noundef !11 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !44791, !noalias !44708, !noundef !11 ; 2 uses
  %i.em = and i64 %i.el, 15, !dbg !44792
  %i.en = and i64 %i.el, -16, !dbg !44795         ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !44796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !44799, !noalias !44708
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %2, !dbg !44801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !44810, !noalias !44813
  store ptr %i.ek, ptr %i.c, align 8, !dbg !44817, !alias.scope !44819, !noalias !44823
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !44817
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !44817, !alias.scope !44819, !noalias !44823
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !44817
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !44817, !alias.scope !44819, !noalias !44823
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !44817
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !44817, !alias.scope !44819, !noalias !44823
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !44817
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !44817, !alias.scope !44819, !noalias !44823
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !44824, !noalias !44708

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !44827, !noalias !44813
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !44828, !alias.scope !44839, !noalias !44846, !noundef !11 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !44850, !alias.scope !44839, !noalias !44846, !noundef !11
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !44828
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !44828

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !44828

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fe, %bb.bg ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !44851
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !44851, !alias.scope !44839, !noalias !44846
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !44853, !alias.scope !44839, !noalias !44846, !nonnull !11, !noundef !11
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !44854, !noalias !44708 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !44855
  %i.fa = icmp eq i64 %i.ez, 16, !dbg !44856
  br i1 %i.fa, label %bb.bg, label %bb.bf, !dbg !44856

bb.bf:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !44867, !noalias !44708

.noexc8.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc7.i.i
  %i.fb = extractvalue { ptr, i64 } %i.ey, 0, !dbg !44855 ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !44868
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.fb, align 1, !dbg !44873, !alias.scope !44875, !noalias !44879
  %i.fd = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !44886
  store i128 %i.fd, ptr %i.fc, align 16, !dbg !44897, !noalias !44879
  %i.fe = load i64, ptr %i.eq, align 8, !dbg !44828, !alias.scope !44839, !noalias !44846, !noundef !11 ; 2 uses
  %i.ff = load i64, ptr %i.er, align 8, !dbg !44850, !alias.scope !44839, !noalias !44846, !noundef !11
  %i.fg = icmp ult i64 %i.fe, %i.ff, !dbg !44828
  br i1 %i.fg, label %bb.be, label %.loopexit15.i.i, !dbg !44828

.loopexit15.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !44898, !noalias !44708
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bh, !dbg !44899, !noalias !44708

bb.bh:                                            ; preds = %.loopexit15.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !44901, !noalias !44708

end_hunk_14
begin_hunk_15_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !45373, !noalias !45237
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !45373
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !45373, !noalias !45237
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !45374
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !45374, !alias.scope !45232, !noalias !45247
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !45374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !45374, !noalias !45247
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !45381

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !45383, !noalias !45247
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !45384

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !45386, !noalias !45232

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !45389
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !45390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !45399, !noalias !45237
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !45400
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !45403
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !45403, !noalias !45237, !nonnull !11, !noundef !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !45421
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !45421, !noalias !45237, !noundef !11
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !45422   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !45429, !noalias !45237
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !45433, !noalias !45232

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !45434, !range !25810, !noalias !45237, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !45434
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !45437
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !45437, !noalias !45237 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !45438

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !45439
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !45440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !45440, !noalias !45237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !45439, !noalias !45237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !45444, !noalias !45237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !45440, !noalias !45237
  store i8 %i.ck, ptr %i.m, align 16, !dbg !45440, !noalias !45237
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !45440
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !45440, !noalias !45237
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !45440, !noalias !45232

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !45444, !noalias !45237
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !45445

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !45448, !noalias !45237
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !45450, !alias.scope !45235, !noalias !45254, !noundef !11 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !45457
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !45457, !prof !54

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !45463, !noalias !45237
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !45464, !alias.scope !45235, !noalias !45254, !noundef !11 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !45470
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !45470, !prof !54

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !45474, !alias.scope !45235, !noalias !45254, !nonnull !11, !noundef !11
  %i.cs = add i64 %i.cn, -8, !dbg !45483
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !45484
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !45448, !noalias !45232

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !45490, !range !475, !noalias !45237, !noundef !11
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !45490
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !45493

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !45494, !noalias !45247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !45495, !noalias !45237
  br label %bb.ak, !dbg !45496

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !45495, !noalias !45237
  br label %bb.aj, !dbg !45498

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !45499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !45500, !noalias !45247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !45386, !noalias !45237
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !45316

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !45386, !noalias !45232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !45386, !noalias !45237
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !45501

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !45503, !alias.scope !45235, !noalias !45254, !nonnull !11, !noundef !11
  %i.cx = add i64 %i.cp, -8, !dbg !45512
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !45513
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !45463, !noalias !45232

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !45518, !noalias !45232

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !45522, !range !475, !noalias !45237, !noundef !11
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !45522
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !45524

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !45525, !noalias !45247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !45526, !noalias !45237
  br label %bb.ak, !dbg !45496

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !45526, !noalias !45237
  br label %bb.aj, !dbg !45527

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !45528, !noalias !45237
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !45529, !noalias !45237
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !45529
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !45529, !noalias !45237
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !45529
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !45530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !45529, !noalias !45247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !45536, !noalias !45237
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !45530, !alias.scope !45232, !noalias !45247
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !45530
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !45530, !alias.scope !45232, !noalias !45247
  br label %bb.ak, !dbg !45537

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !45539, !noalias !45232
  unreachable, !dbg !45539

common.resume:                                    ; preds = %bb.ci, %bb.cd, %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fy, %bb.cd ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bt ], [ %i.gk, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !45540

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !45541 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !45550
  %i.df = and i64 %i.de, 15, !dbg !45557
  %i.dg = icmp eq i64 %i.df, 0, !dbg !45558
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !45558

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !45559, !noalias !45260
  unreachable, !dbg !45559

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !45561
  %i.di = lshr exact i64 %i.dh, 4, !dbg !45562
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !45563
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inoNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !45564, !noalias !45273
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !45501

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !45569
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !45316

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !45316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !45316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !45316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !45316
  br label %bb.cb, !dbg !45317

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !45569 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !45316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !45316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !45316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !45316
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !45569
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !45317

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !45570
  call void @llvm.experimental.noalias.scope.decl(metadata !45571), !dbg !45570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !45574
  %i.dl = shl i64 %2, 4, !dbg !45574              ; 4 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !45574
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !45583, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !45587
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !45587, !prof !27291

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !45589, !noalias !45590
  call void @llvm.experimental.noalias.scope.decl(metadata !45592), !dbg !45595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !45598, !noalias !45602
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !45598, !noalias !45603
  %i.do = load i64, ptr %i.g, align 8, !dbg !45598, !range !499, !noalias !45602, !noundef !11
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !45604
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !45605
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !45605, !range !3414, !noalias !45602, !noundef !11 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !45605 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !45604, !prof !54

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !45606, !noalias !45602
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !45607, !noalias !45603
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !45608, !noalias !45602, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !45609, !noalias !45602
  store i64 %i.dr, ptr %i.i, align 8, !dbg !45610, !alias.scope !45592, !noalias !45590
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !45610
  store ptr %i.du, ptr %i.dv, align 8, !dbg !45610, !alias.scope !45592, !noalias !45590
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !45610
  store i64 %2, ptr %i.dw, align 8, !dbg !45610, !alias.scope !45592, !noalias !45590
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !45611

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !45613, !noalias !45590
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !45613
  store i64 %2, ptr %i.dx, align 8, !dbg !45613, !noalias !45590
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !45613
  store ptr @104, ptr %i.dy, align 16, !dbg !45613, !noalias !45590
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !45613
  store i64 4, ptr %i.dz, align 8, !dbg !45613, !noalias !45590
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !45613
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !45613, !noalias !45590
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !45613
  store i64 %i.av, ptr %i.eb, align 8, !dbg !45613, !noalias !45590
  store i64 26, ptr %i.k, align 16, !dbg !45613, !noalias !45590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !45614, !noalias !45590
  store ptr %i.k, ptr %i.j, align 8, !dbg !45614, !noalias !45590
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !45614
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !45614, !noalias !45590
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !45617, !noalias !45571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !45623, !noalias !45590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !45623, !noalias !45590
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !45623
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !45624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !45628
  br label %bb.cf, !dbg !45629

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !45630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !45631, !noalias !45635
  store i64 0, ptr %i.f, align 8, !dbg !45639, !noalias !45635
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !45639 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !45639, !noalias !45635
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !45639 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !45639, !noalias !45635
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !45642, !noalias !45644

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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bn, !dbg !45645, !noalias !45646

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !45647, !noalias !45635, !nonnull !11, !noundef !11
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !45660, !noalias !45635, !noundef !11
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !45661, !noalias !45646 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !45662
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !45665

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !45666, !noalias !45635
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !45666, !noalias !45646

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !45673, !noalias !45635, !nonnull !11, !noundef !11 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !45685, !noalias !45635, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 15, !dbg !45686
  %i.ek = and i64 %i.ei, -16, !dbg !45689         ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !45690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !45693, !noalias !45635
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %2, !dbg !45695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !45704, !noalias !45706
  store ptr %i.eh, ptr %i.c, align 8, !dbg !45710, !alias.scope !45712, !noalias !45716
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !45710
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !45710, !alias.scope !45712, !noalias !45716
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !45710
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !45710, !alias.scope !45712, !noalias !45716
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !45710
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !45710, !alias.scope !45712, !noalias !45716
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !45710
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !45710, !alias.scope !45712, !noalias !45716
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !45717, !noalias !45646

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !45719, !noalias !45706
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !45720, !alias.scope !45729, !noalias !45736, !noundef !11 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !45740, !alias.scope !45729, !noalias !45736, !noundef !11
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !45720
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !45720

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !45720

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !45741
  store i64 %i.eu, ptr %i.en, align 8, !dbg !45741, !alias.scope !45729, !noalias !45736
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !45742, !alias.scope !45729, !noalias !45736, !nonnull !11, !noundef !11
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !45743, !noalias !45646 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !45744
  %i.ex = icmp eq i64 %i.ew, 16, !dbg !45745
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !45745

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !45756, !noalias !45646

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !45744 ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !45757
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.ey, align 1, !dbg !45760, !alias.scope !45762, !noalias !45766
  %i.fa = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !45773
  store i128 %i.fa, ptr %i.ez, align 16, !dbg !45779, !noalias !45766
  %i.fb = load i64, ptr %i.en, align 8, !dbg !45720, !alias.scope !45729, !noalias !45736, !noundef !11 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !45740, !alias.scope !45729, !noalias !45736, !noundef !11
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !45720
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !45720

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !45780, !noalias !45635
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bi, !dbg !45781, !noalias !45646

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bj, !dbg !45783, !noalias !45646

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !45781, !noalias !45646
  unreachable, !dbg !45781

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !45785 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bp unwind label %bb.bo, !dbg !45786, !noalias !45571

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !45789, !noalias !45790
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !45789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !45789, !noalias !45790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !45791, !noalias !45635
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bl, !dbg !45792, !noalias !45646

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_15
begin_hunk_16_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !49768
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !49768, !noalias !49632
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !49769
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !49769, !alias.scope !49627, !noalias !49642
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !49769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !49769, !noalias !49642
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !49776

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !49778, !noalias !49642
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !49779

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !49781, !noalias !49627

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !49784
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !49785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !49794, !noalias !49632
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !49795
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !49798
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !49798, !noalias !49632, !nonnull !11, !noundef !11 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !49816
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !49816, !noalias !49632, !noundef !11
  %i.cg = shl nuw nsw i64 %i.cf, 3, !dbg !49817   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !49826, !noalias !49632
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !49830, !noalias !49627

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !49831, !range !25810, !noalias !49632, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !49831
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !49834
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !49834, !noalias !49632 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !49835

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !49836
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !49837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !49837, !noalias !49632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !49836, !noalias !49632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !49841, !noalias !49632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !49837, !noalias !49632
  store i8 %i.ch, ptr %i.m, align 16, !dbg !49837, !noalias !49632
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !49837
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !49837, !noalias !49632
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !49837, !noalias !49627

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !49841, !noalias !49632
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !49842

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !49845, !noalias !49632
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !49847, !alias.scope !49630, !noalias !49649, !noundef !11 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !49854
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !49854, !prof !54

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !49860, !noalias !49632
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !49861, !alias.scope !49630, !noalias !49649, !noundef !11 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !49867
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !49867, !prof !54

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !49871, !alias.scope !49630, !noalias !49649, !nonnull !11, !noundef !11
  %i.cp = add i64 %i.ck, -8, !dbg !49880
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !49881
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !49845, !noalias !49627

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !49887, !range !475, !noalias !49632, !noundef !11
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !49887
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !49890

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !49891, !noalias !49642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !49892, !noalias !49632
  br label %bb.ai, !dbg !49893

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !49892, !noalias !49632
  br label %bb.ah, !dbg !49895

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !49896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !49897, !noalias !49642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !49781, !noalias !49632
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !49711

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !49781, !noalias !49627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !49781, !noalias !49632
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !49898

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !49900, !alias.scope !49630, !noalias !49649, !nonnull !11, !noundef !11
  %i.cu = add i64 %i.cm, -8, !dbg !49909
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !49910
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !49860, !noalias !49627

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !49915, !noalias !49627

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !49919, !range !475, !noalias !49632, !noundef !11
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !49919
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !49921

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !49922, !noalias !49642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !49923, !noalias !49632
  br label %bb.ai, !dbg !49893

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !49923, !noalias !49632
  br label %bb.ah, !dbg !49924

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !49925, !noalias !49632
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !49926, !noalias !49632
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !49926
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !49926, !noalias !49632
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !49926
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !49927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !49926, !noalias !49642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !49933, !noalias !49632
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !49927, !alias.scope !49627, !noalias !49642
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !49927
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !49927, !alias.scope !49627, !noalias !49642
  br label %bb.ai, !dbg !49934

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !49936, !noalias !49627
  unreachable, !dbg !49936

common.resume:                                    ; preds = %bb.cg, %bb.cb, %.body.i, %bb.bs, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.cb ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fo, %bb.bs ], [ %i.gr, %bb.cg ]
  resume { ptr, i32 } %common.resume.op, !dbg !49937

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !49938 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !49947
  %i.dc = and i64 %i.db, 7, !dbg !49957
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !49958
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !49958

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !49959, !noalias !49655
  unreachable, !dbg !49959

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !49961
  %i.df = lshr exact i64 %i.de, 3, !dbg !49962
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !49963
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inxNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !49964, !noalias !49668
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !49898

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !49969
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !49711

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !49711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !49711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !49711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !49711
  br label %bb.bz, !dbg !49712

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !49969 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !49711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !49711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !49711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !49711
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !49969
  br i1 %.not132, label %bb.bz, label %bb.by, !dbg !49712

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !49970
  call void @llvm.experimental.noalias.scope.decl(metadata !49971), !dbg !49970
  call void @llvm.experimental.noalias.scope.decl(metadata !49974), !dbg !49970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !49976
  %i.di = shl i64 %2, 3, !dbg !49976              ; 7 uses
  %i.dj = icmp ugt i64 %2, 2305843009213693951, !dbg !49976
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !49985, !prof !54

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !49989
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !49989, !prof !27291

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !49991, !noalias !49992
  call void @llvm.experimental.noalias.scope.decl(metadata !49993), !dbg !49996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !49999, !noalias !50006
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !49999, !noalias !50006
  %i.dl = load i64, ptr %i.g, align 8, !dbg !49999, !range !499, !noalias !50006, !noundef !11
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !50007
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !50008
  %i.do = load i64, ptr %i.dn, align 8, !dbg !50008, !range !3414, !noalias !50006, !noundef !11 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !50008 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !50007, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !50009, !noalias !50006
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !50010, !noalias !50006
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !50012, !noalias !50006, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !50013, !noalias !50006
  store i64 %i.do, ptr %i.i, align 8, !dbg !50014, !alias.scope !49993, !noalias !49992
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !50014
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !50014, !alias.scope !49993, !noalias !49992
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !50014
  store i64 %2, ptr %i.dt, align 8, !dbg !50014, !alias.scope !49993, !noalias !49992
  br i1 %5, label %bb.bu, label %bb.aw, !dbg !50015

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !50017, !noalias !49992
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !50017
  store i64 %2, ptr %i.du, align 8, !dbg !50017, !noalias !49992
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !50017
  store ptr @107, ptr %i.dv, align 16, !dbg !50017, !noalias !49992
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !50017
  store i64 3, ptr %i.dw, align 8, !dbg !50017, !noalias !49992
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !50017
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !50017, !noalias !49992
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !50017
  store i64 %i.av, ptr %i.dy, align 8, !dbg !50017, !noalias !49992
  store i64 26, ptr %i.k, align 16, !dbg !50017, !noalias !49992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !50018, !noalias !49992
  store ptr %i.k, ptr %i.j, align 8, !dbg !50018, !noalias !49992
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !50018
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !50018, !noalias !49992
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !50021, !noalias !49992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !50027, !noalias !49992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !50027, !noalias !49992
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !50027
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !50028, !noalias !49974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !50032
  br label %bb.cd, !dbg !50033

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !50034
  call void @llvm.experimental.noalias.scope.decl(metadata !50035), !dbg !50034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !50038, !noalias !50042
  store i64 0, ptr %i.f, align 8, !dbg !50044, !noalias !50042
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50044 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !50044, !noalias !50042
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !50044 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !50044, !noalias !50042
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !50047, !noalias !50042

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i:                           ; preds = %bb.bf, %bb.bc, %bb.bb, %bb.az, %bb.aw
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bm, !dbg !50049, !noalias !50042

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !50050, !noalias !50042, !nonnull !11, !noundef !11 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !50063, !noalias !50042, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50064), !dbg !50067
  call void @llvm.experimental.noalias.scope.decl(metadata !50068), !dbg !50067
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !50070, !alias.scope !50073, !noalias !50076, !nonnull !11, !noundef !11
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !50070
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !50070, !alias.scope !50073, !noalias !50076, !noundef !11 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !50078 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !50080 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !50085
  call void @llvm.experimental.noalias.scope.decl(metadata !50086), !dbg !50089
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !50090
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !50090

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !50092
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !50092

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !50093, !noalias !50042

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !50095, !noalias !50096, !noundef !11
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !50098, !alias.scope !50099, !noalias !50100
  br label %bb.bc, !dbg !50101

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !50102, !alias.scope !50103, !noalias !50104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !50105, !noalias !50042
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !50105, !noalias !50042

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !50112
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !50102, !alias.scope !50103, !noalias !50104
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !50113, !noalias !50042, !nonnull !11, !noundef !11 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !50125, !noalias !50042, !noundef !11 ; 2 uses
  %i.em = and i64 %i.el, 7, !dbg !50126
  %i.en = and i64 %i.el, -8, !dbg !50129          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !50130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !50133, !noalias !50042
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %2, !dbg !50135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !50144, !noalias !50147
  store ptr %i.ek, ptr %i.c, align 8, !dbg !50151, !alias.scope !50153, !noalias !50157
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !50151
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !50151, !alias.scope !50153, !noalias !50157
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !50151
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !50151, !alias.scope !50153, !noalias !50157
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !50151
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !50151, !alias.scope !50153, !noalias !50157
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !50151
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !50151, !alias.scope !50153, !noalias !50157
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutxEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !50158, !noalias !50042

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !50161, !noalias !50147
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !50162, !alias.scope !50173, !noalias !50180, !noundef !11 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !50184, !alias.scope !50173, !noalias !50180, !noundef !11
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !50162
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !50162

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !50162

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fe, %bb.bg ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !50185
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !50185, !alias.scope !50173, !noalias !50180
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !50187, !alias.scope !50173, !noalias !50180, !nonnull !11, !noundef !11
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !50188, !noalias !50042 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !50189
  %i.fa = icmp eq i64 %i.ez, 8, !dbg !50190
  br i1 %i.fa, label %bb.bg, label %bb.bf, !dbg !50190

bb.bf:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !50201, !noalias !50042

.noexc8.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc7.i.i
  %i.fb = extractvalue { ptr, i64 } %i.ey, 0, !dbg !50189 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !50202
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fb, align 1, !dbg !50207, !alias.scope !50209, !noalias !50212
  %i.fd = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !50220
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !50233, !noalias !50234
  %i.fe = load i64, ptr %i.eq, align 8, !dbg !50162, !alias.scope !50173, !noalias !50180, !noundef !11 ; 2 uses
  %i.ff = load i64, ptr %i.er, align 8, !dbg !50184, !alias.scope !50173, !noalias !50180, !noundef !11
  %i.fg = icmp ult i64 %i.fe, %i.ff, !dbg !50162
  br i1 %i.fg, label %bb.be, label %.loopexit15.i.i, !dbg !50162

.loopexit15.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !50235, !noalias !50042
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bh, !dbg !50236, !noalias !50042

bb.bh:                                            ; preds = %.loopexit15.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !50238, !noalias !50042

end_hunk_16
begin_hunk_17_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !50710, !noalias !50574
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !50710
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !50710, !noalias !50574
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !50711
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !50711, !alias.scope !50569, !noalias !50584
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !50711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !50711, !noalias !50584
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !50718

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !50720, !noalias !50584
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !50721

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !50723, !noalias !50569

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !50726
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !50727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !50736, !noalias !50574
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !50737
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !50740
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !50740, !noalias !50574, !nonnull !11, !noundef !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !50758
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !50758, !noalias !50574, !noundef !11
  %i.cj = shl nuw nsw i64 %i.ci, 3, !dbg !50759   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !50766, !noalias !50574
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !50770, !noalias !50569

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !50771, !range !25810, !noalias !50574, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !50771
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !50774
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !50774, !noalias !50574 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !50775

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !50776
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !50777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !50777, !noalias !50574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !50776, !noalias !50574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !50781, !noalias !50574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !50777, !noalias !50574
  store i8 %i.ck, ptr %i.m, align 16, !dbg !50777, !noalias !50574
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !50777
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !50777, !noalias !50574
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !50777, !noalias !50569

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !50781, !noalias !50574
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !50782

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !50785, !noalias !50574
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !50787, !alias.scope !50572, !noalias !50591, !noundef !11 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !50794
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !50794, !prof !54

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !50800, !noalias !50574
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !50801, !alias.scope !50572, !noalias !50591, !noundef !11 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !50807
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !50807, !prof !54

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !50811, !alias.scope !50572, !noalias !50591, !nonnull !11, !noundef !11
  %i.cs = add i64 %i.cn, -8, !dbg !50820
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !50821
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !50785, !noalias !50569

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !50827, !range !475, !noalias !50574, !noundef !11
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !50827
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !50830

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !50831, !noalias !50584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !50832, !noalias !50574
  br label %bb.ak, !dbg !50833

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !50832, !noalias !50574
  br label %bb.aj, !dbg !50835

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !50836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !50837, !noalias !50584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !50723, !noalias !50574
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !50653

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !50723, !noalias !50569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !50723, !noalias !50574
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !50838

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !50840, !alias.scope !50572, !noalias !50591, !nonnull !11, !noundef !11
  %i.cx = add i64 %i.cp, -8, !dbg !50849
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !50850
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !50800, !noalias !50569

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !50855, !noalias !50569

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !50859, !range !475, !noalias !50574, !noundef !11
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !50859
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !50861

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !50862, !noalias !50584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !50863, !noalias !50574
  br label %bb.ak, !dbg !50833

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !50863, !noalias !50574
  br label %bb.aj, !dbg !50864

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !50865, !noalias !50574
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !50866, !noalias !50574
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !50866
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !50866, !noalias !50574
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !50866
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !50867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !50866, !noalias !50584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !50873, !noalias !50574
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !50867, !alias.scope !50569, !noalias !50584
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !50867
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !50867, !alias.scope !50569, !noalias !50584
  br label %bb.ak, !dbg !50874

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !50876, !noalias !50569
  unreachable, !dbg !50876

common.resume:                                    ; preds = %bb.ci, %bb.cd, %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fy, %bb.cd ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bt ], [ %i.gk, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !50877

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !50878 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !50887
  %i.df = and i64 %i.de, 7, !dbg !50894
  %i.dg = icmp eq i64 %i.df, 0, !dbg !50895
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !50895

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !50896, !noalias !50597
  unreachable, !dbg !50896

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !50898
  %i.di = lshr exact i64 %i.dh, 3, !dbg !50899
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !50900
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inxNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !50901, !noalias !50610
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !50838

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !50906
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !50653

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !50653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !50653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !50653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !50653
  br label %bb.cb, !dbg !50654

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !50906 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !50653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !50653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !50653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !50653
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !50906
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !50654

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !50907
  call void @llvm.experimental.noalias.scope.decl(metadata !50908), !dbg !50907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !50911
  %i.dl = shl i64 %2, 3, !dbg !50911              ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !50911
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !50920, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !50924
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !50924, !prof !27291

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !50926, !noalias !50927
  call void @llvm.experimental.noalias.scope.decl(metadata !50929), !dbg !50932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !50935, !noalias !50939
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !50935, !noalias !50940
  %i.do = load i64, ptr %i.g, align 8, !dbg !50935, !range !499, !noalias !50939, !noundef !11
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !50941
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !50942
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !50942, !range !3414, !noalias !50939, !noundef !11 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !50942 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !50941, !prof !54

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !50943, !noalias !50939
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !50944, !noalias !50940
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !50945, !noalias !50939, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !50946, !noalias !50939
  store i64 %i.dr, ptr %i.i, align 8, !dbg !50947, !alias.scope !50929, !noalias !50927
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !50947
  store ptr %i.du, ptr %i.dv, align 8, !dbg !50947, !alias.scope !50929, !noalias !50927
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !50947
  store i64 %2, ptr %i.dw, align 8, !dbg !50947, !alias.scope !50929, !noalias !50927
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !50948

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !50950, !noalias !50927
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !50950
  store i64 %2, ptr %i.dx, align 8, !dbg !50950, !noalias !50927
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !50950
  store ptr @107, ptr %i.dy, align 16, !dbg !50950, !noalias !50927
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !50950
  store i64 3, ptr %i.dz, align 8, !dbg !50950, !noalias !50927
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !50950
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !50950, !noalias !50927
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !50950
  store i64 %i.av, ptr %i.eb, align 8, !dbg !50950, !noalias !50927
  store i64 26, ptr %i.k, align 16, !dbg !50950, !noalias !50927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !50951, !noalias !50927
  store ptr %i.k, ptr %i.j, align 8, !dbg !50951, !noalias !50927
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !50951
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !50951, !noalias !50927
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !50954, !noalias !50908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !50960, !noalias !50927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !50960, !noalias !50927
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !50960
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !50961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !50965
  br label %bb.cf, !dbg !50966

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !50967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !50968, !noalias !50972
  store i64 0, ptr %i.f, align 8, !dbg !50976, !noalias !50972
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50976 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !50976, !noalias !50972
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !50976 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !50976, !noalias !50972
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !50979, !noalias !50981

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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bn, !dbg !50982, !noalias !50983

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !50984, !noalias !50972, !nonnull !11, !noundef !11
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !50997, !noalias !50972, !noundef !11
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !50998, !noalias !50983 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !50999
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !51002

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !51003, !noalias !50972
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !51003, !noalias !50983

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !51010, !noalias !50972, !nonnull !11, !noundef !11 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !51022, !noalias !50972, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !51023
  %i.ek = and i64 %i.ei, -8, !dbg !51026          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !51027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !51030, !noalias !50972
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !51032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !51041, !noalias !51043
  store ptr %i.eh, ptr %i.c, align 8, !dbg !51047, !alias.scope !51049, !noalias !51053
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !51047
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !51047, !alias.scope !51049, !noalias !51053
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !51047
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !51047, !alias.scope !51049, !noalias !51053
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !51047
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !51047, !alias.scope !51049, !noalias !51053
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !51047
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !51047, !alias.scope !51049, !noalias !51053
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutxEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !51054, !noalias !50983

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !51056, !noalias !51043
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !51057, !alias.scope !51066, !noalias !51073, !noundef !11 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !51077, !alias.scope !51066, !noalias !51073, !noundef !11
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !51057
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !51057

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !51057

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !51078
  store i64 %i.eu, ptr %i.en, align 8, !dbg !51078, !alias.scope !51066, !noalias !51073
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !51079, !alias.scope !51066, !noalias !51073, !nonnull !11, !noundef !11
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !51080, !noalias !50983 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !51081
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !51082
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !51082

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !51093, !noalias !50983

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !51081 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !51094
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !51097, !alias.scope !51099, !noalias !51102
  %i.fa = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !51110
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !51117, !noalias !51118
  %i.fb = load i64, ptr %i.en, align 8, !dbg !51057, !alias.scope !51066, !noalias !51073, !noundef !11 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !51077, !alias.scope !51066, !noalias !51073, !noundef !11
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !51057
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !51057

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !51119, !noalias !50972
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bi, !dbg !51120, !noalias !50983

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bj, !dbg !51122, !noalias !50983

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !51120, !noalias !50983
  unreachable, !dbg !51120

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !51124 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bp unwind label %bb.bo, !dbg !51125, !noalias !50908

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !51128, !noalias !51129
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !51128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !51128, !noalias !51129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !51130, !noalias !50972
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bl, !dbg !51131, !noalias !50983

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_17
begin_hunk_18_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !51551
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !51551, !noalias !51415
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !51552
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !51552, !alias.scope !51410, !noalias !51425
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !51552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !51552, !noalias !51425
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !51559

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !51561, !noalias !51425
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !51562

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !51564, !noalias !51410

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !51567
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !51568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !51577, !noalias !51415
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !51578
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !51581
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !51581, !noalias !51415, !nonnull !11, !noundef !11 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !51599
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !51599, !noalias !51415, !noundef !11
  %i.cg = shl nuw nsw i64 %i.cf, 3, !dbg !51600   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !51609, !noalias !51415
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !51613, !noalias !51410

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !51614, !range !25810, !noalias !51415, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !51614
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !51617
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !51617, !noalias !51415 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !51618

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !51619
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !51620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !51620, !noalias !51415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !51619, !noalias !51415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !51624, !noalias !51415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !51620, !noalias !51415
  store i8 %i.ch, ptr %i.m, align 16, !dbg !51620, !noalias !51415
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !51620
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !51620, !noalias !51415
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !51620, !noalias !51410

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !51624, !noalias !51415
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !51625

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !51628, !noalias !51415
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !51630, !alias.scope !51413, !noalias !51432, !noundef !11 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !51637
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !51637, !prof !54

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !51643, !noalias !51415
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !51644, !alias.scope !51413, !noalias !51432, !noundef !11 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !51650
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !51650, !prof !54

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !51654, !alias.scope !51413, !noalias !51432, !nonnull !11, !noundef !11
  %i.cp = add i64 %i.ck, -8, !dbg !51663
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !51664
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !51628, !noalias !51410

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !51670, !range !475, !noalias !51415, !noundef !11
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !51670
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !51673

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !51674, !noalias !51425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !51675, !noalias !51415
  br label %bb.ai, !dbg !51676

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !51675, !noalias !51415
  br label %bb.ah, !dbg !51678

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !51679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !51680, !noalias !51425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !51564, !noalias !51415
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !51494

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !51564, !noalias !51410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !51564, !noalias !51415
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !51681

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !51683, !alias.scope !51413, !noalias !51432, !nonnull !11, !noundef !11
  %i.cu = add i64 %i.cm, -8, !dbg !51692
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !51693
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !51643, !noalias !51410

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !51698, !noalias !51410

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !51702, !range !475, !noalias !51415, !noundef !11
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !51702
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !51704

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !51705, !noalias !51425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !51706, !noalias !51415
  br label %bb.ai, !dbg !51676

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !51706, !noalias !51415
  br label %bb.ah, !dbg !51707

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !51708, !noalias !51415
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !51709, !noalias !51415
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !51709
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !51709, !noalias !51415
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !51709
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !51710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !51709, !noalias !51425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !51716, !noalias !51415
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !51710, !alias.scope !51410, !noalias !51425
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !51710
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !51710, !alias.scope !51410, !noalias !51425
  br label %bb.ai, !dbg !51717

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !51719, !noalias !51410
  unreachable, !dbg !51719

common.resume:                                    ; preds = %bb.cg, %bb.cb, %.body.i, %bb.bs, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.cb ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fo, %bb.bs ], [ %i.gr, %bb.cg ]
  resume { ptr, i32 } %common.resume.op, !dbg !51720

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !51721 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !51730
  %i.dc = and i64 %i.db, 7, !dbg !51740
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !51741
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !51741

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !51742, !noalias !51438
  unreachable, !dbg !51742

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !51744
  %i.df = lshr exact i64 %i.de, 3, !dbg !51745
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !51746
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inyNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !51747, !noalias !51451
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !51681

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !51752
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !51494

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !51494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !51494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !51494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !51494
  br label %bb.bz, !dbg !51495

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !51752 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !51494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !51494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !51494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !51494
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !51752
  br i1 %.not132, label %bb.bz, label %bb.by, !dbg !51495

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !51753
  call void @llvm.experimental.noalias.scope.decl(metadata !51754), !dbg !51753
  call void @llvm.experimental.noalias.scope.decl(metadata !51757), !dbg !51753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !51759
  %i.di = shl i64 %2, 3, !dbg !51759              ; 7 uses
  %i.dj = icmp ugt i64 %2, 2305843009213693951, !dbg !51759
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !51768, !prof !54

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !51772
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !51772, !prof !27291

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !51774, !noalias !51775
  call void @llvm.experimental.noalias.scope.decl(metadata !51776), !dbg !51779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !51782, !noalias !51789
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !51782, !noalias !51789
  %i.dl = load i64, ptr %i.g, align 8, !dbg !51782, !range !499, !noalias !51789, !noundef !11
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !51790
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !51791
  %i.do = load i64, ptr %i.dn, align 8, !dbg !51791, !range !3414, !noalias !51789, !noundef !11 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !51791 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !51790, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !51792, !noalias !51789
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !51793, !noalias !51789
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !51795, !noalias !51789, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !51796, !noalias !51789
  store i64 %i.do, ptr %i.i, align 8, !dbg !51797, !alias.scope !51776, !noalias !51775
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !51797
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !51797, !alias.scope !51776, !noalias !51775
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !51797
  store i64 %2, ptr %i.dt, align 8, !dbg !51797, !alias.scope !51776, !noalias !51775
  br i1 %5, label %bb.bu, label %bb.aw, !dbg !51798

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !51800, !noalias !51775
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !51800
  store i64 %2, ptr %i.du, align 8, !dbg !51800, !noalias !51775
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !51800
  store ptr @108, ptr %i.dv, align 16, !dbg !51800, !noalias !51775
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !51800
  store i64 3, ptr %i.dw, align 8, !dbg !51800, !noalias !51775
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !51800
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !51800, !noalias !51775
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !51800
  store i64 %i.av, ptr %i.dy, align 8, !dbg !51800, !noalias !51775
  store i64 26, ptr %i.k, align 16, !dbg !51800, !noalias !51775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !51801, !noalias !51775
  store ptr %i.k, ptr %i.j, align 8, !dbg !51801, !noalias !51775
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !51801
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !51801, !noalias !51775
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !51804, !noalias !51775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !51810, !noalias !51775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !51810, !noalias !51775
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !51810
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !51811, !noalias !51757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !51815
  br label %bb.cd, !dbg !51816

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !51817
  call void @llvm.experimental.noalias.scope.decl(metadata !51818), !dbg !51817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !51821, !noalias !51825
  store i64 0, ptr %i.f, align 8, !dbg !51827, !noalias !51825
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !51827 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !51827, !noalias !51825
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !51827 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !51827, !noalias !51825
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !51830, !noalias !51825

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i:                           ; preds = %bb.bf, %bb.bc, %bb.bb, %bb.az, %bb.aw
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bm, !dbg !51832, !noalias !51825

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !51833, !noalias !51825, !nonnull !11, !noundef !11 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !51846, !noalias !51825, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51847), !dbg !51850
  call void @llvm.experimental.noalias.scope.decl(metadata !51851), !dbg !51850
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !51853, !alias.scope !51856, !noalias !51859, !nonnull !11, !noundef !11
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !51853
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !51853, !alias.scope !51856, !noalias !51859, !noundef !11 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !51861 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !51863 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !51868
  call void @llvm.experimental.noalias.scope.decl(metadata !51869), !dbg !51872
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !51873
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !51873

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !51875
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !51875

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !51876, !noalias !51825

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !51878, !noalias !51879, !noundef !11
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !51881, !alias.scope !51882, !noalias !51883
  br label %bb.bc, !dbg !51884

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !51885, !alias.scope !51886, !noalias !51887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !51888, !noalias !51825
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !51888, !noalias !51825

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !51895
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !51885, !alias.scope !51886, !noalias !51887
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !51896, !noalias !51825, !nonnull !11, !noundef !11 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !51908, !noalias !51825, !noundef !11 ; 2 uses
  %i.em = and i64 %i.el, 7, !dbg !51909
  %i.en = and i64 %i.el, -8, !dbg !51912          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !51913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !51916, !noalias !51825
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %2, !dbg !51918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !51927, !noalias !51930
  store ptr %i.ek, ptr %i.c, align 8, !dbg !51934, !alias.scope !51936, !noalias !51940
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !51934
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !51934, !alias.scope !51936, !noalias !51940
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !51934
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !51934, !alias.scope !51936, !noalias !51940
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !51934
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !51934, !alias.scope !51936, !noalias !51940
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !51934
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !51934, !alias.scope !51936, !noalias !51940
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !51941, !noalias !51825

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !51944, !noalias !51930
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !51945, !alias.scope !51956, !noalias !51963, !noundef !11 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !51967, !alias.scope !51956, !noalias !51963, !noundef !11
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !51945
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !51945

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !51945

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fe, %bb.bg ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !51968
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !51968, !alias.scope !51956, !noalias !51963
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !51970, !alias.scope !51956, !noalias !51963, !nonnull !11, !noundef !11
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !51971, !noalias !51825 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !51972
  %i.fa = icmp eq i64 %i.ez, 8, !dbg !51973
  br i1 %i.fa, label %bb.bg, label %bb.bf, !dbg !51973

bb.bf:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !51984, !noalias !51825

.noexc8.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc7.i.i
  %i.fb = extractvalue { ptr, i64 } %i.ey, 0, !dbg !51972 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !51985
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fb, align 1, !dbg !51990, !alias.scope !51992, !noalias !51995
  %i.fd = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !52003
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !52014, !noalias !52015
  %i.fe = load i64, ptr %i.eq, align 8, !dbg !51945, !alias.scope !51956, !noalias !51963, !noundef !11 ; 2 uses
  %i.ff = load i64, ptr %i.er, align 8, !dbg !51967, !alias.scope !51956, !noalias !51963, !noundef !11
  %i.fg = icmp ult i64 %i.fe, %i.ff, !dbg !51945
  br i1 %i.fg, label %bb.be, label %.loopexit15.i.i, !dbg !51945

.loopexit15.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !52016, !noalias !51825
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bh, !dbg !52017, !noalias !51825

bb.bh:                                            ; preds = %.loopexit15.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !52019, !noalias !51825

end_hunk_18
begin_hunk_19_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !52491, !noalias !52355
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !52491
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !52491, !noalias !52355
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !52492
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !52492, !alias.scope !52350, !noalias !52365
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !52492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !52492, !noalias !52365
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !52499

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !52501, !noalias !52365
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !52502

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !52504, !noalias !52350

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !52507
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !52508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !52517, !noalias !52355
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !52518
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !52521
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !52521, !noalias !52355, !nonnull !11, !noundef !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !52539
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !52539, !noalias !52355, !noundef !11
  %i.cj = shl nuw nsw i64 %i.ci, 3, !dbg !52540   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !52547, !noalias !52355
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !52551, !noalias !52350

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !52552, !range !25810, !noalias !52355, !noundef !11 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !52552
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !52555
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !52555, !noalias !52355 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !52556

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !52557
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !52558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !52558, !noalias !52355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !52557, !noalias !52355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !52562, !noalias !52355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !52558, !noalias !52355
  store i8 %i.ck, ptr %i.m, align 16, !dbg !52558, !noalias !52355
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !52558
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !52558, !noalias !52355
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !52558, !noalias !52350

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !52562, !noalias !52355
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !52563

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !52566, !noalias !52355
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !52568, !alias.scope !52353, !noalias !52372, !noundef !11 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !52575
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !52575, !prof !54

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !52581, !noalias !52355
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !52582, !alias.scope !52353, !noalias !52372, !noundef !11 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !52588
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !52588, !prof !54

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !52592, !alias.scope !52353, !noalias !52372, !nonnull !11, !noundef !11
  %i.cs = add i64 %i.cn, -8, !dbg !52601
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !52602
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !52566, !noalias !52350

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !52608, !range !475, !noalias !52355, !noundef !11
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !52608
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !52611

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !52612, !noalias !52365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !52613, !noalias !52355
  br label %bb.ak, !dbg !52614

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !52613, !noalias !52355
  br label %bb.aj, !dbg !52616

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !52617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !52618, !noalias !52365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !52504, !noalias !52355
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !52434

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !52504, !noalias !52350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !52504, !noalias !52355
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !52619

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !52621, !alias.scope !52353, !noalias !52372, !nonnull !11, !noundef !11
  %i.cx = add i64 %i.cp, -8, !dbg !52630
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !52631
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !52581, !noalias !52350

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !52636, !noalias !52350

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !52640, !range !475, !noalias !52355, !noundef !11
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !52640
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !52642

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !52643, !noalias !52365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !52644, !noalias !52355
  br label %bb.ak, !dbg !52614

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !52644, !noalias !52355
  br label %bb.aj, !dbg !52645

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !52646, !noalias !52355
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !52647, !noalias !52355
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !52647
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !52647, !noalias !52355
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !52647
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !52648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !52647, !noalias !52365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !52654, !noalias !52355
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !52648, !alias.scope !52350, !noalias !52365
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !52648
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !52648, !alias.scope !52350, !noalias !52365
  br label %bb.ak, !dbg !52655

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !52657, !noalias !52350
  unreachable, !dbg !52657

common.resume:                                    ; preds = %bb.ci, %bb.cd, %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fy, %bb.cd ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bt ], [ %i.gk, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !52658

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !52659 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !52668
  %i.df = and i64 %i.de, 7, !dbg !52675
  %i.dg = icmp eq i64 %i.df, 0, !dbg !52676
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !52676

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !52677, !noalias !52378
  unreachable, !dbg !52677

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !52679
  %i.di = lshr exact i64 %i.dh, 3, !dbg !52680
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !52681
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inyNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !52682, !noalias !52391
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !52619

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !52687
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !52434

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !52434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !52434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !52434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !52434
  br label %bb.cb, !dbg !52435

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !52687 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !52434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !52434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !52434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !52434
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !52687
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !52435

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !52688
  call void @llvm.experimental.noalias.scope.decl(metadata !52689), !dbg !52688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !52692
  %i.dl = shl i64 %2, 3, !dbg !52692              ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !52692
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !52701, !prof !54

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !52705
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !52705, !prof !27291

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !52707, !noalias !52708
  call void @llvm.experimental.noalias.scope.decl(metadata !52710), !dbg !52713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !52716, !noalias !52720
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !52716, !noalias !52721
  %i.do = load i64, ptr %i.g, align 8, !dbg !52716, !range !499, !noalias !52720, !noundef !11
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !52722
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !52723
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !52723, !range !3414, !noalias !52720, !noundef !11 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !52723 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !52722, !prof !54

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !52724, !noalias !52720
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !52725, !noalias !52721
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !52726, !noalias !52720, !nonnull !11, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !52727, !noalias !52720
  store i64 %i.dr, ptr %i.i, align 8, !dbg !52728, !alias.scope !52710, !noalias !52708
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !52728
  store ptr %i.du, ptr %i.dv, align 8, !dbg !52728, !alias.scope !52710, !noalias !52708
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !52728
  store i64 %2, ptr %i.dw, align 8, !dbg !52728, !alias.scope !52710, !noalias !52708
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !52729

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !52731, !noalias !52708
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !52731
  store i64 %2, ptr %i.dx, align 8, !dbg !52731, !noalias !52708
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !52731
  store ptr @108, ptr %i.dy, align 16, !dbg !52731, !noalias !52708
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !52731
  store i64 3, ptr %i.dz, align 8, !dbg !52731, !noalias !52708
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !52731
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !52731, !noalias !52708
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !52731
  store i64 %i.av, ptr %i.eb, align 8, !dbg !52731, !noalias !52708
  store i64 26, ptr %i.k, align 16, !dbg !52731, !noalias !52708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !52732, !noalias !52708
  store ptr %i.k, ptr %i.j, align 8, !dbg !52732, !noalias !52708
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !52732
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !52732, !noalias !52708
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !52735, !noalias !52689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !52741, !noalias !52708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !52741, !noalias !52708
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !52741
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !52742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !52746
  br label %bb.cf, !dbg !52747

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !52748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !52749, !noalias !52753
  store i64 0, ptr %i.f, align 8, !dbg !52757, !noalias !52753
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !52757 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !52757, !noalias !52753
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !52757 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !52757, !noalias !52753
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !52760, !noalias !52762

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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.bn, !dbg !52763, !noalias !52764

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !52765, !noalias !52753, !nonnull !11, !noundef !11
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !52778, !noalias !52753, !noundef !11
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !52779, !noalias !52764 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !52780
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !52783

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !52784, !noalias !52753
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !52784, !noalias !52764

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !52791, !noalias !52753, !nonnull !11, !noundef !11 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !52803, !noalias !52753, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !52804
  %i.ek = and i64 %i.ei, -8, !dbg !52807          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !52808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !52811, !noalias !52753
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !52813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !52822, !noalias !52824
  store ptr %i.eh, ptr %i.c, align 8, !dbg !52828, !alias.scope !52830, !noalias !52834
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !52828
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !52828, !alias.scope !52830, !noalias !52834
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !52828
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !52828, !alias.scope !52830, !noalias !52834
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !52828
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !52828, !alias.scope !52830, !noalias !52834
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !52828
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !52828, !alias.scope !52830, !noalias !52834
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !52835, !noalias !52764

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !52837, !noalias !52824
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !52838, !alias.scope !52847, !noalias !52854, !noundef !11 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !52858, !alias.scope !52847, !noalias !52854, !noundef !11
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !52838
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !52838

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !52838

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !52859
  store i64 %i.eu, ptr %i.en, align 8, !dbg !52859, !alias.scope !52847, !noalias !52854
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !52860, !alias.scope !52847, !noalias !52854, !nonnull !11, !noundef !11
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !52861, !noalias !52764 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !52862
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !52863
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !52863

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !52874, !noalias !52764

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !52862 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !52875
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !52878, !alias.scope !52880, !noalias !52883
  %i.fa = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !52891
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !52897, !noalias !52898
  %i.fb = load i64, ptr %i.en, align 8, !dbg !52838, !alias.scope !52847, !noalias !52854, !noundef !11 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !52858, !alias.scope !52847, !noalias !52854, !noundef !11
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !52838
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !52838

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !52899, !noalias !52753
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bi, !dbg !52900, !noalias !52764

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bj, !dbg !52902, !noalias !52764

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !52900, !noalias !52764
  unreachable, !dbg !52900

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !52904 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bp unwind label %bb.bo, !dbg !52905, !noalias !52689

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !52908, !noalias !52909
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !52908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !52908, !noalias !52909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !52910, !noalias !52753
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bl, !dbg !52911, !noalias !52764

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_19
